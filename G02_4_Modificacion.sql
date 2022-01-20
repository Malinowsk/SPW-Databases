CREATE OR REPLACE PROCEDURE PR_G02_ejecutar_orden_v2(id_ejecutante int, valor_maximo decimal(20,10), tipo_orden char(10), mercado_orden varchar(20)) LANGUAGE 'plpgsql' as $$
DECLARE
    valor_restante decimal(20,10); --total de la moneda que va gastando el ejecutante
    total_acumulado decimal(20,10); --total de la moneda que va a recibir el ejecutante
    tupla_actual record;
    id_orden_ejecutar bigint;
    moneda_origen varchar(10);
    moneda_destino varchar(10);
BEGIN
    valor_restante:= valor_maximo;
    total_acumulado:= 0;
    SELECT m.moneda_o INTO moneda_origen FROM g02_mercado m WHERE(m.nombre=mercado_orden);
    SELECT m.moneda_d INTO moneda_destino FROM g02_mercado m WHERE(m.nombre=mercado_orden);

    IF (tipo_orden='Compra') THEN --perdes origen, ganas destino
        INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion, fecha_ejec, valor, cantidad, estado) VALUES (mercado_orden, id_ejecutante, 'Compra', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0, valor_maximo, 'Ejecutada');
        SELECT MAX(o.id) INTO id_orden_ejecutar FROM g02_orden o;
        FOR tupla_actual IN (SELECT * FROM g02_orden O WHERE(o.mercado= mercado_orden AND o.tipo='Venta' AND o.estado='Nueva') ORDER BY o.valor DESC) LOOP
            IF(tupla_actual.cantidad< valor_restante)THEN
                valor_restante:= valor_restante-tupla_actual.cantidad;
                total_acumulado:= total_acumulado + tupla_actual.valor*tupla_actual.cantidad;
                INSERT INTO g02_composicionorden(id_o, id_d, cantidad) VALUES (id_orden_ejecutar, tupla_actual.id, tupla_actual.cantidad);
                --movimientos usuario publicador
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_origen,CURRENT_TIMESTAMP, 'S', 0.05, tupla_actual.cantidad);
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_destino,CURRENT_TIMESTAMP, 'R', 0, tupla_actual.valor*tupla_actual.cantidad);

                UPDATE g02_orden SET estado='Ejecutada' WHERE (id= tupla_actual.id);
            ELSE --la ultima orden que agarra (le alcanza justo o no le alcanza y toma una porción)
                total_acumulado:= total_acumulado + tupla_actual.valor*valor_restante;--dolares que vale un btc por los btc que me quedan = dolares que gano de esa orden
                INSERT INTO g02_composicionorden(id_o, id_d, cantidad) VALUES (id_orden_ejecutar, tupla_actual.id, valor_restante);
                --movimientos usuario publicador
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_origen,CURRENT_TIMESTAMP, 'S', 0.05, valor_restante);
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_destino,CURRENT_TIMESTAMP, 'R', 0, tupla_actual.valor*valor_restante);
                --nueva orden con lo que sobro de la anterior
                INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion, valor, cantidad, estado) VALUES (mercado_orden, tupla_actual.id_usuario, 'Venta', CURRENT_TIMESTAMP, tupla_actual.valor, tupla_actual.cantidad-valor_restante, 'Nueva');

                valor_restante:= 0;
                UPDATE g02_orden SET estado='Ejecutada' WHERE (id= tupla_actual.id); --no cambio la cantidad porque eso se ve reflejado en composicion orden
                EXIT;
            END IF;
        end loop;
        UPDATE g02_orden SET valor= total_acumulado/valor_maximo, cantidad= valor_maximo  WHERE (id= id_orden_ejecutar);
        --movimientos usuario ejecutante
        INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (id_ejecutante, moneda_origen,CURRENT_TIMESTAMP, 'R', 0, valor_maximo);
        INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (id_ejecutante, moneda_destino,CURRENT_TIMESTAMP, 'S', 0.05, total_acumulado);
    ELSE --cuando es tipo Venta. ganas origen, perdes destino
        INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion, fecha_ejec, valor, cantidad, estado) VALUES (mercado_orden, id_ejecutante, 'Venta', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, valor_maximo, 1, 'Ejecutada');
        SELECT MAX(o.id) INTO id_orden_ejecutar FROM g02_orden o;
        FOR tupla_actual IN (SELECT * INTO tupla_actual FROM g02_orden O WHERE(o.mercado= mercado_orden AND o.tipo='Compra' AND o.estado='Nueva') ORDER BY o.valor ASC) LOOP
            IF((tupla_actual.cantidad * tupla_actual.valor) < valor_restante)THEN
                valor_restante:= valor_restante - tupla_actual.cantidad * tupla_actual.valor;
                total_acumulado:= total_acumulado + tupla_actual.cantidad;
                INSERT INTO g02_composicionorden(id_o, id_d, cantidad) VALUES (id_orden_ejecutar, tupla_actual.id, tupla_actual.cantidad);
                --movimientos usuario publicador
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_origen,CURRENT_TIMESTAMP, 'R', 0, tupla_actual.cantidad);
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_destino,CURRENT_TIMESTAMP, 'S', 0.05, tupla_actual.valor*tupla_actual.cantidad);

                UPDATE g02_orden SET estado='Ejecutada' WHERE (id= tupla_actual.id);
            ELSE --la ultima orden que agarra (le alcanza justo o no le alcanza y toma una porción)
                total_acumulado:= total_acumulado + valor_restante/tupla_actual.valor;--los dolares que me quedan sobre lo que vale un btc = cantidad de btc que gano de esa orden
                INSERT INTO g02_composicionorden(id_o, id_d, cantidad) VALUES (id_orden_ejecutar, tupla_actual.id, valor_restante/tupla_actual.valor);
                --movimientos usuario publicador
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_origen,CURRENT_TIMESTAMP, 'S', 0.05, valor_restante);
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_destino,CURRENT_TIMESTAMP, 'R', 0, valor_restante/tupla_actual.valor);
                --nueva orden con lo que sobro de la anterior
                INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion, valor, cantidad, estado) VALUES (mercado_orden, tupla_actual.id_usuario, 'Compra', CURRENT_TIMESTAMP, tupla_actual.valor, tupla_actual.cantidad - valor_restante/tupla_actual.valor, 'Nueva');

                valor_restante:= 0;
                UPDATE g02_orden SET estado='Ejecutada' WHERE (id= tupla_actual.id); --no cambio la cantidad porque eso se ve reflejado en composicion orden
                EXIT;
            END IF;
        end loop;
        UPDATE g02_orden SET valor= valor_maximo/total_acumulado, cantidad=total_acumulado WHERE (id= id_orden_ejecutar);
        --movimientos usuario ejecutante
        INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (id_ejecutante, moneda_origen,CURRENT_TIMESTAMP, 'S', 0.05, total_acumulado);
        INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (id_ejecutante, moneda_destino,CURRENT_TIMESTAMP, 'R', 0, valor_maximo);
    END IF;
END $$;