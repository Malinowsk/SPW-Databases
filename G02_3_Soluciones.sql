                    ---------------------------------------------------------------------------------
                    --                                                                             --
                    --                                                                             --
                    --                  S    E    C    C    I    O    N        B                   --
                    --                                                                             --
                    --                                                                             --
                    ---------------------------------------------------------------------------------

--Regla del Negocio 1
CREATE OR REPLACE FUNCTION TRFN_G02_RN1() RETURNS TRIGGER AS $$
  begin
      if( exists (
          SELECT 1 FROM g02_movimiento m1
            JOIN g02_movimiento m2 on m2.moneda = m1.moneda
            WHERE m1.bloque < m2.bloque and m1.fecha > m2.fecha and m1.moneda = new.moneda
            GROUP BY m1.moneda
    ))then
        raise exception 'El numero de bloque y la fecha de movimiento no son consistentes en el blockchain';
      end if;
  return new;
  end; $$ language 'plpgsql';


CREATE TRIGGER TR_G02_MOVIMIENTO_RN1 AFTER INSERT ON G02_MOVIMIENTO FOR EACH ROW EXECUTE FUNCTION  TRFN_G02_RN1();

/*
    Tuplas para probar la restricción :

    Estas no cumplen la restriccion:
    INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'ADA', '2020-05-08','D', 0.5 , 3226.130653, 5, 'Direccion_ADA');
    INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (6, 'ADA', '2020-05-01','E', 0.5 , 3226.130653, 6, 'Direccion_ADA');

    Esta sí cumple y la inserta correctamente:
    INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'ADA', '2020-05-21','D', 0.5 , 3226.130653, 5, 'Direccion_ADA');
*/

-------------------------------------------------------------------------------------------------------------------------------------------
--Regla del Negocio 2
CREATE OR REPLACE FUNCTION TRFN_G02_RN2() RETURNS TRIGGER AS $$
DECLARE
    saldo_minimo decimal(20,10);
    moneda_a_verificar varchar(10);
    saldo_a_verificar decimal(20,10);
BEGIN
    IF (new.tipo='Compra') THEN
        SELECT m.moneda_o INTO moneda_a_verificar FROM G02_MERCADO m WHERE m.nombre=new.mercado;
    ELSE
        SELECT m.moneda_d INTO moneda_a_verificar FROM G02_MERCADO m WHERE m.nombre=new.mercado;
    END IF;

    SELECT b.saldo INTO saldo_a_verificar FROM G02_BILLETERA b WHERE (b.id_usuario=new.id_usuario and b.moneda=moneda_a_verificar);

    SELECT SUM(o.cantidad) INTO saldo_minimo FROM G02_MERCADO m JOIN G02_ORDEN o ON m.nombre=o.mercado
        WHERE (o.id_usuario=new.id_usuario AND m.moneda_o=moneda_a_verificar AND o.tipo='Compra' AND o.estado='Nueva');
    IF(saldo_a_verificar < saldo_minimo) THEN
        raise exception 'No hay suficiente saldo para realizar la orden';
    ELSE
        saldo_minimo=saldo_minimo + ( SELECT SUM(o.cantidad*o.valor) FROM G02_MERCADO m JOIN G02_ORDEN o ON m.nombre=o.mercado
                                        WHERE (o.id_usuario=new.id_usuario AND m.moneda_d=moneda_a_verificar AND o.tipo='Venta' AND o.estado='Nueva') );
        IF(saldo_a_verificar < saldo_minimo) THEN
           raise exception 'No hay suficiente saldo para realizar la orden';
        END IF;
    END IF;
    return new;
END $$
LANGUAGE 'plpgsql';

CREATE TRIGGER TR_G02_ORDEN_RN2 AFTER INSERT ON G02_ORDEN FOR EACH ROW EXECUTE FUNCTION  TRFN_G02_RN2();

/*
    Tuplas para probar la restricción:

    Estas no cumplen la restriccion:
    INSERT INTO G02_ORDEN (id, mercado, id_usuario, tipo, fecha_creacion, valor, cantidad, estado) VALUES (101, 'BTC_USDT', 1, 'Compra', '2020-06-01',11000, 0.14427894, 'Nueva');
    INSERT INTO G02_ORDEN (id, mercado, id_usuario, tipo, fecha_creacion, valor, cantidad, estado) VALUES (102, 'BTC_USDT', 1, 'Compra', '2020-06-01',11000, 1, 'Nueva');

    Pero si se le aumenta el saldo del Bitcoin al usuario 1:
    UPDATE G02_BILLETERA SET saldo=1 WHERE (id_usuario=1 and moneda='BTC');

    La primera tupla si cumple hace, la segunda no.
*/

-------------------------------------------------------------------------------------------------------------------------------------------
--Regla del negocio 3
CREATE OR REPLACE FUNCTION TRFN_G02_RN3() RETURNS TRIGGER AS $$
DECLARE
    saldo_minimo decimal(20,10);
    saldo_a_verificar decimal(20,10);
BEGIN
    SELECT b.saldo INTO saldo_a_verificar FROM G02_BILLETERA b WHERE (b.id_usuario=new.id_usuario and b.moneda=new.moneda);
    IF(saldo_a_verificar < new.valor) THEN
        raise exception 'No hay suficiente saldo para realizar la extraccion';
    ELSE
        saldo_a_verificar= saldo_a_verificar - new.valor;
        SELECT SUM(o.cantidad) INTO saldo_minimo FROM G02_MERCADO m JOIN G02_ORDEN o ON m.nombre=o.mercado
            WHERE (o.id_usuario=new.id_usuario AND m.moneda_o=new.moneda AND o.tipo='Compra' AND o.estado='Nueva');
        IF(saldo_a_verificar < saldo_minimo) THEN
            raise exception 'No hay suficiente saldo para realizar la extraccion';
        ELSE
            saldo_minimo=saldo_minimo + ( SELECT SUM(o.cantidad*o.valor) FROM G02_MERCADO m JOIN G02_ORDEN o ON m.nombre=o.mercado
                                            WHERE (o.id_usuario=new.id_usuario AND m.moneda_d=new.moneda AND o.tipo='Venta' AND o.estado='Nueva') );
            IF(saldo_a_verificar < saldo_minimo) THEN
               raise exception 'No hay suficiente saldo para realizar la extraccion';
            END IF;
        END IF;
    END IF;
    return new;
END $$
LANGUAGE 'plpgsql';

CREATE TRIGGER TR_G02_MOVIMIENTO_RN3 AFTER INSERT ON G02_MOVIMIENTO FOR EACH ROW WHEN(new.tipo='E') EXECUTE FUNCTION  TRFN_G02_RN3();

/*
    Tuplas para probar la restricción:

    Estas no cumplen la restriccion:
    INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'BTC', '2020-06-01','E', 0.5 ,0.145003969, 11, 'Direccion_BTC');
    INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'BTC', '2020-06-02','E', 0.5 ,0.9, 12, 'Direccion_BTC');

    Si se le aumenta el saldo del Bitcoin al usuario 1:
    UPDATE G02_BILLETERA SET saldo=1 WHERE (id_usuario=1 and moneda='BTC');

    La primera tupla cumple, mientras que la segunda no.
*/

-------------------------------------------------------------------------------------------------------------------------------------------
--Regla del negocio 4
ALTER TABLE G02_MOVIMIENTO
   ADD CONSTRAINT CK_G02_MOVIMIENTO_RN4
       CHECK ( (bloque IS NOT NULL AND direccion IS NOT NULL) OR (bloque IS NULL AND direccion IS NULL) );

/*
    Tuplas para probar la restricción:

    Insertado:
    INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'ADA', '2020-05-15','D', 0.5 , 3226.130653, NULL, 'Direccion_ADA');
    INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'ADA', '2020-05-15','D', 0.5 , 3226.130653, NULL, NULL);
*/

-------------------------------------------------------------------------------------------------------------------------------------------

                    ---------------------------------------------------------------------------------
                    --                                                                             --
                    --                                                                             --
                    --                  S    E    C    C    I    O    N        C                   --
                    --                                                                             --
                    --                                                                             --
                    ---------------------------------------------------------------------------------

--1.a
CREATE OR REPLACE FUNCTION FN_G02_precio_mercado(mercado_a_ver varchar(20)) RETURNS decimal(20,10) as $$
BEGIN
    return (SELECT m.precio_mercado FROM g02_mercado m WHERE m.nombre = mercado_a_ver);
END $$
LANGUAGE 'plpgsql';

/* 2.a ya se encuentra en el script G02_2_Carga.sql, que lo usamos para mantener actualizado el precio de mercado
--2.a
CREATE OR REPLACE FUNCTION TRFN_G02_precio_mercado() RETURNS TRIGGER AS $$
DECLARE
    veinte_por_ciento_compra decimal(20,10);
    veinte_por_ciento_venta decimal(20,10);
    cant_compra int;
    cant_venta int;
    precio_compra decimal(20,10);
    precio_venta decimal(20,10);
BEGIN
    SELECT SUM(ord.cantidad)*0.2 INTO veinte_por_ciento_compra FROM g02_orden ord WHERE (ord.mercado= new.mercado AND ord.tipo='Compra' AND ord.estado='Nueva');
    SELECT SUM(ord.cantidad)*0.2 INTO veinte_por_ciento_venta FROM g02_orden ord WHERE (ord.mercado= new.mercado AND ord.tipo='Venta' AND ord.estado='Nueva');

    SELECT count(*)+1 into cant_compra FROM FN_G02_ordenes_acum(new.mercado, 'Compra') o WHERE (o.cantidad_acum <= veinte_por_ciento_compra) ;
    SELECT count(*)+1 into cant_venta FROM FN_G02_ordenes_acum(new.mercado, 'Venta') o WHERE (o.cantidad_acum <= veinte_por_ciento_venta);

    SELECT AVG(o.valor_total) INTO precio_compra FROM (SELECT valor_total FROM FN_G02_ordenes_acum(new.mercado, 'Compra')  LIMIT cant_compra) o;
    SELECT AVG(o.valor_total) INTO precio_venta FROM (SELECT valor_total FROM FN_G02_ordenes_acum(new.mercado, 'Venta') LIMIT cant_venta) o;

    IF (precio_compra IS NOT NULL AND precio_venta IS NOT NULL) THEN --significa que hay ordenes de ambos tipos
        UPDATE g02_mercado SET precio_mercado= (precio_compra+precio_venta)/2 WHERE (nombre= new.mercado);
    ELSIF(precio_compra IS NOT NULL) THEN --significa que no hay ordenes nuevas de tipo venta
        UPDATE g02_mercado SET precio_mercado= (precio_compra) WHERE (nombre= new.mercado);
    ELSIF(precio_venta IS NOT NULL) THEN --significa que no hay ordenes nuevas de tipo compra
        UPDATE g02_mercado SET precio_mercado= (precio_venta) WHERE (nombre= new.mercado);
    END IF;

    RETURN new;
END $$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION FN_G02_ordenes_acum(mercado_act varchar(20), tipo_act char(10))
RETURNS TABLE (
    valor_total decimal(20,10),
    cantidad_acum decimal(20,10)
)
LANGUAGE 'plpgsql'
as $$
DECLARE
    suma_cant decimal(20,10);
    tupla record;
BEGIN
    suma_cant=0;
    IF (tipo_act='Compra') THEN
        for tupla in (SELECT o.valor, o.cantidad
                        FROM g02_orden o
                        WHERE (o.mercado = mercado_act AND o.tipo = tipo_act AND o.estado='Nueva')
                        ORDER BY o.valor
                    ) LOOP
                        valor_total := tupla.valor * tupla.cantidad;
                        cantidad_acum := suma_cant + tupla.cantidad;
                        suma_cant := cantidad_acum;
                    return next;
            end loop;
    ELSE
        for tupla in (SELECT o.valor, o.cantidad
                        FROM g02_orden o
                        WHERE (o.mercado = mercado_act AND o.tipo = tipo_act AND o.estado='Nueva')
                        ORDER BY o.valor DESC
                    ) LOOP
                        valor_total := tupla.valor * tupla.cantidad;
                        cantidad_acum := suma_cant + tupla.cantidad;
                        suma_cant := cantidad_acum;
                    return next;
            end loop;
    END IF;
END $$;

CREATE TRIGGER TR_G02_precio_mercado_update AFTER UPDATE OF estado ON G02_ORDEN FOR EACH ROW EXECUTE FUNCTION TRFN_G02_precio_mercado();
CREATE TRIGGER TR_G02_precio_mercado_insert AFTER INSERT ON G02_ORDEN FOR EACH ROW WHEN (new.estado='Nueva') EXECUTE FUNCTION TRFN_G02_precio_mercado();
*/
/*
    Tuplas para probar el servicio:

    select fn_G02_precio_mercado('BTC_USDT');
*/

-------------------------------------------------------------------------------------------------------------------------------------------
--(1/2)b
CREATE OR REPLACE PROCEDURE PR_G02_ejecutar_orden(id_ejecutante int, valor_maximo decimal(20,10), tipo_orden char(10), mercado_orden varchar(20)) LANGUAGE 'plpgsql' as $$
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
        SELECT MAX(o.id) INTO id_orden_ejecutar FROM g02_orden o; --para sacar el id de la orden insertada previamente
        FOR tupla_actual IN (SELECT * FROM g02_orden O WHERE(o.mercado= mercado_orden AND o.tipo='Venta' AND o.estado='Nueva') ORDER BY o.valor DESC) LOOP
            IF(tupla_actual.cantidad<= valor_restante)THEN --alcanza para adquirir la orden entera
                valor_restante:= valor_restante-tupla_actual.cantidad;
                total_acumulado:= total_acumulado + tupla_actual.valor*tupla_actual.cantidad;
                INSERT INTO g02_composicionorden(id_o, id_d, cantidad) VALUES (id_orden_ejecutar, tupla_actual.id, tupla_actual.cantidad);
                --movimientos usuario publicador
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_origen,CURRENT_TIMESTAMP, 'S', 0.05, tupla_actual.cantidad);
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_destino,CURRENT_TIMESTAMP, 'R', 0, tupla_actual.valor*tupla_actual.cantidad);

                UPDATE g02_orden SET estado='Ejecutada' WHERE (id= tupla_actual.id);
            ELSE --si no alcanza, se corta
                EXIT;
            END IF;
        end loop;
        IF (total_acumulado>0) THEN
            UPDATE g02_orden SET valor= (total_acumulado/(valor_maximo-valor_restante)), cantidad= (valor_maximo-valor_restante)  WHERE (id= id_orden_ejecutar);
            --movimientos usuario ejecutante
            INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (id_ejecutante, moneda_origen,CURRENT_TIMESTAMP, 'R', 0, valor_maximo-valor_restante);
            INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (id_ejecutante, moneda_destino,CURRENT_TIMESTAMP, 'S', 0.05, total_acumulado);
        ELSE --no logro adquirir ninguna orden
            DELETE FROM g02_orden WHERE id=id_orden_ejecutar;
        END IF;
    ELSE --cuando es tipo Venta. ganas origen, perdes destino
        INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion, fecha_ejec, valor, cantidad, estado) VALUES (mercado_orden, id_ejecutante, 'Venta', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, valor_maximo, 1, 'Ejecutada');
        SELECT MAX(o.id) INTO id_orden_ejecutar FROM g02_orden o;
        FOR tupla_actual IN (SELECT * INTO tupla_actual FROM g02_orden O WHERE(o.mercado= mercado_orden AND o.tipo='Compra' AND o.estado='Nueva') ORDER BY o.valor ASC) LOOP
            IF((tupla_actual.cantidad * tupla_actual.valor) <= valor_restante)THEN
                valor_restante:= valor_restante - tupla_actual.cantidad * tupla_actual.valor;
                total_acumulado:= total_acumulado + tupla_actual.cantidad;
                INSERT INTO g02_composicionorden(id_o, id_d, cantidad) VALUES (id_orden_ejecutar, tupla_actual.id, tupla_actual.cantidad);
                --movimientos usuario publicador
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_origen,CURRENT_TIMESTAMP, 'R', 0, tupla_actual.cantidad);
                INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (tupla_actual.id_usuario, moneda_destino,CURRENT_TIMESTAMP, 'S', 0.05, tupla_actual.valor*tupla_actual.cantidad);

                UPDATE g02_orden SET estado='Ejecutada' WHERE (id= tupla_actual.id);
            ELSE --si no alcanza, se corta
                EXIT;
            END IF;
        end loop;
        IF (total_acumulado>0) THEN
            UPDATE g02_orden SET valor= (valor_maximo-valor_restante)/total_acumulado, cantidad=total_acumulado WHERE (id= id_orden_ejecutar);
            --movimientos usuario ejecutante
            INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (id_ejecutante, moneda_origen,CURRENT_TIMESTAMP, 'S', 0.05, total_acumulado);
            INSERT INTO g02_movimiento(id_usuario, moneda, fecha, tipo, comision, valor) VALUES (id_ejecutante, moneda_destino,CURRENT_TIMESTAMP, 'R', 0, valor_maximo-valor_restante);
        ELSE
            DELETE FROM g02_orden WHERE id=id_orden_ejecutar;
        END IF;
    END IF;
END $$;

CREATE OR REPLACE FUNCTION TRFN_G02_update_billetera() RETURNS TRIGGER AS $$
BEGIN
    IF (new.tipo='S' OR new.tipo='D') THEN
        UPDATE g02_billetera SET saldo= (saldo + new.valor - new.valor * new.comision) WHERE (id_usuario= new.id_usuario AND moneda= new.moneda);
    ELSE
        UPDATE g02_billetera SET saldo= (saldo - new.valor) WHERE (id_usuario= new.id_usuario AND moneda= new.moneda);
    end if;
    RETURN new;
END $$
LANGUAGE 'plpgsql';

CREATE TRIGGER TR_G02_insert_movimiento AFTER INSERT ON g02_movimiento FOR EACH ROW EXECUTE FUNCTION TRFN_G02_update_billetera();
/*
    Tuplas para probar el servicio:

    ponemos más bitcoins para el usuario 1
    UPDATE g02_billetera SET saldo=2 WHERE (id_usuario=1 and moneda='BTC');

    vende 0,3 bitcoin al mejor precio
    call PR_G02_ejecutar_orden(1, 0.3, 'Compra', 'BTC_USDT');

    se pueden ver las ordenes ejecutadas y los cambios en composicion orden
    SELECT * FROM G02_ORDEN WHERE mercado='BTC_USDT' order by valor;
    select * from g02_composicionorden;
*/

-------------------------------------------------------------------------------------------------------------------------------------------
--1.c
CREATE OR REPLACE FUNCTION FN_G02_ordenes_de_una_fecha(mercado_x varchar(20), fecha_x date)
RETURNS TABLE (fecha_creacion_orden timestamp,
    tipo_orden char(10),
    estado_orden char(10)
    )
LANGUAGE 'plpgsql'
as $$
BEGIN
    RETURN QUERY SELECT fecha_creacion, tipo, estado FROM g02_orden WHERE (EXTRACT(year from fecha_x)=EXTRACT(year from fecha_creacion) AND EXTRACT(month from fecha_x)=EXTRACT(month from fecha_creacion) AND EXTRACT(day from fecha_x)=EXTRACT(day from fecha_creacion) AND mercado=mercado_x);
END $$;
/*
    Tuplas para probar el servicio:
    SELECT * FROM FN_G02_ordenes_de_una_fecha('BTC_USDT', '2020-06-01');
    SELECT * FROM FN_G02_ordenes_de_una_fecha('ETH_DAI', '2020-06-06');
 */
-------------------------------------------------------------------------------------------------------------------------------------------

                    ---------------------------------------------------------------------------------
                    --                                                                             --
                    --                                                                             --
                    --                  S    E    C    C    I    O    N        D                   --
                    --                                                                             --
                    --                                                                             --
                    ---------------------------------------------------------------------------------

--1.a
CREATE VIEW G02_VIEW1 AS SELECT * FROM g02_billetera ORDER BY id_usuario, moneda;

/*
    select * from g02_view1; --no precisamos tuplas para ver la vista
*/

--1.b
CREATE OR REPLACE VIEW G02_VIEW2 AS
    (
        SELECT DISTINCT bo.id_usuario, bo.moneda, bo.saldo, bo.saldo*m1.precio_mercado AS valor_en_USDT, bo.saldo*m2.precio_mercado AS valor_en_BTC
            FROM g02_billetera bo JOIN g02_mercado m1 ON (m1.moneda_o= bo.moneda AND m1.moneda_d='USDT') JOIN g02_mercado m2 ON (m2.moneda_o= bo.moneda AND m2.moneda_d='BTC')
        UNION
            SELECT bd.id_usuario, bd.moneda, bd.saldo, 0, bd.saldo/m.precio_mercado
                FROM g02_billetera bd JOIN g02_mercado m ON m.moneda_d= bd.moneda WHERE m.moneda_o='BTC' and m.precio_mercado>0
        UNION
            SELECT id_usuario, moneda, saldo, saldo*fn_g02_precio_mercado('BTC_USDT'), saldo
                FROM g02_billetera WHERE moneda='BTC'
    )
    ORDER BY id_usuario, moneda;

CREATE OR REPLACE FUNCTION TRFN_G02_delete_VIEW2()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM g02_billetera WHERE (id_usuario = OLD.id_usuario AND moneda= OLD.moneda);
    RETURN OLD;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER TR_G02_delete_VIEW2 INSTEAD OF DELETE ON G02_VIEW2 FOR EACH ROW EXECUTE FUNCTION TRFN_G02_delete_VIEW2();

/*
    SELECT * FROM g02_view2;
*/

--1.c
CREATE VIEW G02_VIEW3 AS
        SELECT v.id_usuario, SUM(v.btc) AS Total_USDT
            FROM (SELECT u.*, u.valor_en_BTC*fn_g02_precio_mercado('BTC_USDT') as btc FROM G02_VIEW2 u) v
            GROUP BY v.id_usuario
            ORDER BY SUM(v.btc) DESC
            LIMIT 10;

CREATE OR REPLACE FUNCTION TRFN_G02_delete_VIEW3()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM g02_billetera WHERE (id_usuario = OLD.id_usuario);
    DELETE FROM g02_usuario WHERE (id_usuario = OLD.id_usuario);
    UPDATE g02_orden SET estado='Eliminada' WHERE (id_usuario = OLD.id_usuario);
    RETURN OLD;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER TR_G02_delete_VIEW3 INSTEAD OF DELETE ON G02_VIEW3 FOR EACH ROW EXECUTE FUNCTION TRFN_G02_delete_VIEW3();

/*
    SELECT * FROM g02_view3;
*/
