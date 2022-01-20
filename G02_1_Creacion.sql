CREATE TABLE G02_MERCADO(
	nombre varchar(20) NOT NULL,
	moneda_o varchar(10) NOT NULL,
	moneda_d varchar(10) NOT NULL,
	precio_mercado numeric(20,10) NOT NULL,
    CONSTRAINT PK_G02_MERCADO PRIMARY KEY (nombre)
);

CREATE TABLE G02_ORDEN(
    id bigserial NOT NULL,
    mercado varchar(20) NOT NULL,
    id_usuario int NOT NULL ,
    tipo char(10) NOT NULL ,
    fecha_creacion timestamp NOT NULL ,
    fecha_ejec timestamp,
    valor decimal(20,10) NOT NULL ,
    cantidad decimal(20,10) NOT NULL ,
    estado char(10) NOT NULL ,
    CONSTRAINT PK_G02_ORDEN PRIMARY KEY (id)
);

CREATE TABLE G02_COMPOSICIONORDEN(
    id_o bigint NOT NULL ,
    id_d bigint NOT NULL ,
    cantidad  numeric(20,10) NOT NULL ,
    CONSTRAINT PK_G02_COMPOSICIONORDEN PRIMARY KEY (id_o,id_d)
);

CREATE TABLE G02_MONEDA(
	moneda varchar(10) NOT NULL ,
	nombre varchar(80) NOT NULL ,
	descripcion varchar(2048) NOT NULL ,
	alta timestamp NOT NULL ,
	estado char(1) NOT NULL ,
	fiat char(1) NOT NULL ,
	CONSTRAINT PK_G02_MONEDA PRIMARY KEY (moneda)
);

CREATE TABLE G02_RELMONEDA(
	moneda varchar(10) NOT NULL ,
	monedaf varchar(10) NOT NULL ,
	fecha timestamp NOT NULL ,
	valor numeric(20,10) NOT NULL ,
	CONSTRAINT PK_G02_RELMONEDA PRIMARY KEY (moneda,monedaf,fecha)
);

CREATE TABLE G02_USUARIO (
    id_usuario int NOT NULL ,
    apellido varchar(40) NOT NULL ,
    nombre varchar(40) NOT NULL ,
    fecha_alta date NOT NULL ,
    estado char(10) NOT NULL ,
    email varchar(120) NOT NULL ,
    password varchar(120) NOT NULL ,
    telefono int NOT NULL ,
    id_pais int NOT NULL ,
    CONSTRAINT PK_G02_USUARIO PRIMARY KEY (id_usuario)
);

CREATE TABLE G02_PAIS (
    id_pais int NOT NULL,
    nombre varchar(40) NOT NULL,
    cod_telef int NOT NULL,
    CONSTRAINT PK_G02_PAIS PRIMARY KEY (id_pais)
);

CREATE TABLE G02_BILLETERA(
    id_usuario int NOT NULL,
    moneda varchar(10) NOT NULL ,
    saldo decimal(20,10) NOT NULL ,
    CONSTRAINT PK_G02_BILLETERA PRIMARY KEY (id_usuario,moneda)
);

CREATE TABLE G02_MOVIMIENTO(
    id_usuario int NOT NULL ,
    moneda varchar(10) NOT NULL ,
    fecha timestamp NOT NULL ,
    tipo char(1) NOT NULL ,
    comision decimal(20,10) NOT NULL ,
    valor decimal(20,10) NOT NULL ,
    bloque int ,
    direccion varchar(100) ,
    CONSTRAINT PK_G02_MOVIMIENTO PRIMARY KEY (id_usuario,moneda,fecha)
);

ALTER TABLE G02_MERCADO
    ADD CONSTRAINT FK_G02_MERCADO_MONEDAO FOREIGN KEY (moneda_o)
        REFERENCES G02_MONEDA(moneda);

ALTER TABLE G02_MERCADO
    ADD CONSTRAINT FK_G02_MERCADO_MONEDAD FOREIGN KEY (moneda_d)
        REFERENCES G02_MONEDA(moneda);

ALTER TABLE G02_ORDEN
    ADD CONSTRAINT FK_G02_ORDEN_MERCADO FOREIGN KEY (mercado)
        REFERENCES G02_MERCADO(nombre);

ALTER TABLE G02_ORDEN
    ADD CONSTRAINT FK_G02_ORDEN_USUARIO FOREIGN KEY (id_usuario)
        REFERENCES G02_USUARIO(id_usuario);

ALTER TABLE G02_COMPOSICIONORDEN
    ADD CONSTRAINT FK_G02_COMPOSICIONORDEN_ORDENO FOREIGN KEY (id_o)
        REFERENCES G02_ORDEN(id);

ALTER TABLE G02_COMPOSICIONORDEN
    ADD CONSTRAINT FK_G02_COMPOSICIONORDEN_ORDEND FOREIGN KEY (id_d)
        REFERENCES G02_ORDEN(id);


ALTER TABLE G02_RELMONEDA
	ADD CONSTRAINT FK_G02_RELMONEDA_MONEDA FOREIGN KEY (moneda)
		REFERENCES G02_MONEDA(moneda);

ALTER TABLE G02_RELMONEDA
	ADD CONSTRAINT FK_G02_RELMONEDA_MONEDAF FOREIGN KEY (monedaf)
		REFERENCES G02_MONEDA(moneda);


ALTER TABLE G02_USUARIO
    ADD CONSTRAINT FK_G02_USUARIO_PAIS FOREIGN KEY (id_pais)
        REFERENCES G02_PAIS(id_pais);

ALTER TABLE G02_BILLETERA
    ADD CONSTRAINT FK_G02_BILLETERA_USUARIO FOREIGN KEY (id_usuario)
        REFERENCES G02_USUARIO(id_usuario);

ALTER TABLE G02_BILLETERA
    ADD CONSTRAINT FK_G02_BILLETERA_MONEDA FOREIGN KEY (moneda)
        REFERENCES G02_MONEDA(moneda);

ALTER TABLE G02_MOVIMIENTO
    ADD CONSTRAINT FK_G02_MOVIMIENTO_BILLETERA FOREIGN KEY (id_usuario,moneda)
        REFERENCES G02_BILLETERA(id_usuario, moneda);
