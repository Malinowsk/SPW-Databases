--Borrado de Triggers:
DROP TRIGGER TR_G02_MOVIMIENTO_RN1 ON g02_movimiento;
DROP TRIGGER TR_G02_ORDEN_RN2 ON g02_orden;
DROP TRIGGER TR_G02_MOVIMIENTO_RN3 ON g02_movimiento;
DROP TRIGGER TR_G02_precio_mercado_insert ON g02_orden;
DROP TRIGGER TR_g02_precio_mercado_update ON g02_orden;
DROP TRIGGER TR_G02_insert_movimiento ON g02_movimiento;
DROP TRIGGER TR_G02_delete_VIEW2 ON g02_view2;
DROP TRIGGER TR_G02_delete_VIEW3 ON g02_view3;

--Borrado de Funciones de Triggers:
DROP FUNCTION TRFN_G02_RN1();
DROP FUNCTION TRFN_G02_RN2();
DROP FUNCTION TRFN_G02_RN3();

DROP FUNCTION TRFN_G02_precio_mercado();
DROP FUNCTION TRFN_G02_update_billetera();

DROP FUNCTION TRFN_G02_delete_VIEW2();
DROP FUNCTION TRFN_G02_delete_VIEW3();

--Borrado vistas
DROP VIEW G02_VIEW3;
DROP VIEW G02_VIEW2;
DROP VIEW G02_VIEW1;

--Borrado Funciones y Procedimientos
DROP FUNCTION FN_G02_precio_mercado(mercado_a_ver varchar(20));
DROP FUNCTION FN_G02_ordenes_acum(mercado_act varchar(20), tipo_act char(10));
DROP FUNCTION FN_g02_ordenes_de_una_fecha(mercado_x varchar, fecha_x date);

DROP PROCEDURE PR_G02_ejecutar_orden(id_ejecutante int, valor_maximo decimal(20,10), tipo_orden char(10), mercado_orden varchar(20));
DROP PROCEDURE PR_G02_ejecutar_orden_v2(id_ejecutante int, valor_maximo decimal(20,10), tipo_orden char(10), mercado_orden varchar(20));

--Borrado de Tablas:
DROP TABLE G02_MERCADO CASCADE ;
DROP TABLE G02_ORDEN CASCADE ;
DROP TABLE G02_COMPOSICIONORDEN CASCADE ;
DROP TABLE G02_MONEDA CASCADE ;
DROP TABLE G02_RELMONEDA CASCADE ;
DROP TABLE G02_USUARIO CASCADE ;
DROP TABLE G02_PAIS CASCADE ;
DROP TABLE G02_BILLETERA CASCADE ;
DROP TABLE G02_MOVIMIENTO CASCADE ;