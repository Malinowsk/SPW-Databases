--CARGA DE PAIS
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (1, 'Argentina', 54);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (2, 'Brazil', 55);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (3, 'Spain', 34);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (4, 'Italy', 39);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (5, 'France', 33);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (6, 'Germany', 49);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (7, 'Russia', 7);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (8, 'Canada', 1);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (9, 'United States', 1);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (10, 'Mexico', 52);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (11, 'United Kingdom', 44);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (12, 'Puerto Rico', 1787);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (13, 'Republica Dominicana', 1809);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (14, 'India', 91);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (15, 'China', 86);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (16, 'Japan', 81);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (17, 'South Africa', 27);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (18, 'Australia', 61);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (19, 'Somalia', 252);
INSERT INTO G02_PAIS (id_pais, nombre, cod_telef) VALUES (20, 'Colombia', 57);

--CARGA DE USUARIO
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (1, 'Rago', 'Juan', '2020-02-29', 'Activo', 'juanrago@gmail.com', 'password', 1112, 1);
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (2, 'Menjoulou', 'Mainque', '2019-05-18', 'Activo', 'mainquemenjoulou@gmail.com', '12345', 1213, 5);
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (3, 'Dambrosio', 'David', '2019-07-9', 'Activo', 'ddambrosio@gmail.com', 'charito', 2727, 18);
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (4, 'Barthes', 'Juan', '2019-08-17', 'Activo', 'mufa@aol.com', 'teamovale', 2728, 5);
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (5, 'Atom', 'Oliver', '2020-01-01', 'Activo', 'captsubaza@gmail.com.jp', 'steeeve', 1414, 16);
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (6, 'Santos', 'Mario', '2019-05-25', 'Activo', 'msantos@hotmail.com.ar', 'fuegotiene', 1279, 1);
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (7, 'Blanco', 'Walter', '2020-04-18', 'Activo', 'heisenberg@gmail.com', 'saymyname', 5252, 9);
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (8, 'Nadal', 'Rafael', '2019-10-10', 'Activo', 'rafaparera@outlook.com', 'futurcalvo', 8681, 3);
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (9, 'Putin', 'Vladimir', '2019-10-17', 'Activo', 'vladielkpo@gmail.com', 'trumpelon', 7777, 7);
INSERT INTO G02_USUARIO (id_usuario, apellido, nombre, fecha_alta, estado, email, password, telefono, id_pais) VALUES (10, 'Francella', 'Guillermo', '2019-02-14', 'Activo', 'pipoargenti@gmail.com', 'boludooo', 2005, 1);

--CARGA DE MONEDA
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('USD', 'Dólar', 'Se denomina dolar a algunas divisas empleadas en varios países del planeta, siendo el dolar estadounidense la referencia mundial y primera denominacion de la moneda', '1792-04-02', 'A', 'Y');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('EUR', 'Euro', 'El Euro es la moneda de curso legal en una parte de los países de la Union Europea', '2002-01-01', 'A', 'Y');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('JPY' , 'Yen', 'El Yen es la unidad monetaria utilizada en Japon y la tercera moneda mas valorada en el mercado de divisas despues del dolar estadounidense y el euro. ', '1871-05-10', 'A', 'Y');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('USDT', 'Tether', 'Es una criptodivisa cuyo valor esta amarrado al del dolar estadounidense.', '2014-06-01', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('DAI', 'Dai', 'Dai mantiene su poder adquisitivo al equiparse con el valor del dolar, ademas de ser un medio de pago para los lugares que aceptan criptomonedas.', '2017-12-25', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('EURT', 'Euro Tether', ' Es la version criptodivisa estable del euro donde el dinero fidusiario se convierte en moneda digital. ', '2017-11-28', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('USDC', 'U.S Dollar Coin', ' Es la primer criptomoneda en entrar en la plataforma de compra-venta mas grande del mundo. Cada token USDC esta respaldado legalmente y al 100% por un único USD guardado en cuentas expuestas a informes públicos regulares de reservas.  .', '2018-01-10', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('YENT', 'Yen Tether', 'Es una criptodivisa estable basada en el yen japones', '2020-01-01', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('BTC', 'Bitcoin', 'Es un protocolo, proyecto de codigo abierto y red peer-to-peer que se utiliza como criptomoneda, sistema de pago y mercancia  ', '2008-03-10', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('ETH', 'Ethereum', ' El ether esta ligado a una plataforma llamada Ethereum y solo puede ser utilizado dentro de ella', '2014-08-25', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('BNB', 'BNB', 'Es la criptomoneda oficial del criptoexchange o casa de cambio Binance, cuyo nombre es un acronimo compuesto de las palabras “binary” y “finance”.', '2017-06-26', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('XRP', 'Ripple', 'Es un proyecto de software libre y un protocolo de pagos que persigue el desarrollo de un sistema de credito basado en el paradigma peer-to-peer. Cada nodo de la red funciona como un sistema de cambio local, de manera que la totalidad del sistema forma un banco mutualista descentralizado.', '2018-06-13', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('BCH', 'Bitcoin Cash', 'Bitcoin Cash es la primera bifurcacion directa de Bitcoin. Esto quiere decir que el codigo original de la primera blockchain y sus transacciones fueron clonadas hasta cierto punto —especificamente, hasta el bloque numero 478.558—. Desde alli, se creo una nueva cadena de bloques con reglas diferentes', '2017-08-13', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('LTC', 'Litecoin', 'Es considerada la “moneda de plata” del ecosistema de las criptomonedas. Es una de las monedas mas importantes del mercado, tanto por su valoracion del mercado como por su aporte a la red Blockchain', '2011-12-31', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('DOT', 'Polkadot', 'Esta diseñado para permitir la transferencia de activos y datos personalizados a traves de cadenas de bloques publicas y privadas.', '2020-07-14', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('LINK', 'Chainlink', ' ChainLink es una plataforma que intenta cerrar la brecha entre los contratos inteligentes en la cadena de bloques y las aplicaciones del mundo real, que a menudo tienden a estar fuera del blockchain. ', '2017-04-07', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('ADA', 'Cardano', ' Cardano una plataforma de transacciones inteligente de codigo abierto que pretende resolver los problemas actuales de la industria criptografica. Ofrece escalabilidad y seguridad bajo una arquitectura diseñada por capas lo que le da al sistema flexibilidad y facilidad de mantenimiento y permite actualizaciones por medio de bifurcaciones blandas.', '2017-12-25', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('TRX', 'TRON', 'Es un protocolo descentralizado basado en blockchain que pretende desarrollar una plataforma de entretenimiento digital. El sistema de la criptomoneda permite al usuario generar y compartir contenido de manera gratuita, libre y descentralizada. ','2020-04-01' , 'A' ,'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('XMR', 'Monero', 'Es una criptomoneda de codigo abierto, que cuenta con un alto nivel de privacidad y descentralización.', '2014-04-12', 'A', 'N');
INSERT INTO G02_MONEDA (moneda, nombre, descripcion, alta, estado, fiat) VALUES ('NEO', 'Neo', 'Hace referencia a uno de los proyectos de criptomonedas que busca transformar las plataformas economicas existentes. Para ello, este proyecto presenta una serie de conceptos, capacidades tecnicas e innovaciones muy interesantes', '2014-02-14', 'A', 'N');

--CARGA DE RELMONEDA (En principio se inserta un valor para cada relación Estable -> Fiat )
INSERT INTO G02_RELMONEDA (moneda, monedaf, fecha, valor) VALUES ('USDT', 'USD', '2020-09-25', 1.001);
INSERT INTO G02_RELMONEDA (moneda, monedaf, fecha, valor) VALUES ('DAI', 'USD', '2020-09-25', 1.0012);
INSERT INTO G02_RELMONEDA (moneda, monedaf, fecha, valor) VALUES ('USDC', 'USD', '2020-09-25', 0.998);
INSERT INTO G02_RELMONEDA (moneda, monedaf, fecha, valor) VALUES ('EURT', 'EUR', '2020-09-25', 1.007);
INSERT INTO G02_RELMONEDA (moneda, monedaf, fecha, valor) VALUES ('YENT', 'JPY', '2020-09-25', 0.99987);

--CARGA DE MERCADO (Por defecto en precio_mercado por ahora irá 0 )

--CARGA DE MONEDAS A ESTABLE
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BTC_USDT', 'BTC', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BTC_DAI', 'BTC', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BTC_USDC', 'BTC', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BTC_EURT', 'BTC', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BTC_YENT', 'BTC', 'YENT', 0);

INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ETH_USDT', 'ETH', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ETH_DAI', 'ETH', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ETH_USDC', 'ETH', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ETH_EURT', 'ETH', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ETH_YENT', 'ETH', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BNB_USDT', 'BNB', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BNB_DAI', 'BNB', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BNB_USDC', 'BNB', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BNB_EURT', 'BNB', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BNB_YENT', 'BNB', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XRP_USDT', 'XRP', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XRP_DAI', 'XRP', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XRP_USDC', 'XRP', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XRP_EURT', 'XRP', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XRP_YENT', 'XRP', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BCH_USDT', 'BCH', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BCH_DAI', 'BCH', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BCH_USDC', 'BCH', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BCH_EURT', 'BCH', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BCH_YENT', 'BCH', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LTC_USDT', 'LTC', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LTC_DAI', 'LTC', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LTC_USDC', 'LTC', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LTC_EURT', 'LTC', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LTC_YENT', 'LTC', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('DOT_USDT', 'DOT', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('DOT_DAI', 'DOT', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('DOT_USDC', 'DOT', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('DOT_EURT', 'DOT', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('DOT_YENT', 'DOT', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LINK_USDT', 'LINK', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LINK_DAI', 'LINK', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LINK_USDC', 'LINK', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LINK_EURT', 'LINK', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LINK_YENT', 'LINK', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ADA_USDT', 'ADA', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ADA_DAI', 'ADA', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ADA_USDC', 'ADA', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ADA_EURT', 'ADA', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ADA_YENT', 'ADA', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('TRX_USDT', 'TRX', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('TRX_DAI', 'TRX', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('TRX_USDC', 'TRX', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('TRX_EURT', 'TRX', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('TRX_YENT', 'TRX', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XMR_USDT', 'XMR', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XMR_DAI', 'XMR', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XMR_USDC', 'XMR', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XMR_EURT', 'XMR', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XMR_YENT', 'XMR', 'YENT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('NEO_USDT', 'NEO', 'USDT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('NEO_DAI', 'NEO', 'DAI', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('NEO_USDC', 'NEO', 'USDC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('NEO_EURT', 'NEO', 'EURT', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('NEO_YENT', 'NEO', 'YENT', 0);

--CARGA DE CRIPTOMONEDAS A BITCOIN
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ETH_BTC', 'ETH', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BNB_BTC', 'BNB', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XRP_BTC', 'XRP', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('BCH_BTC', 'BCH', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LTC_BTC', 'LTC', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('DOT_BTC', 'DOT', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('LINK_BTC', 'LINK', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('ADA_BTC', 'ADA', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('TRX_BTC', 'TRX', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('XMR_BTC', 'XMR', 'BTC', 0);
INSERT INTO G02_MERCADO (nombre, moneda_o, moneda_d, precio_mercado) VALUES ('NEO_BTC', 'NEO', 'BTC', 0);


--CARGA DE BILLETERA
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'USD', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'EUR', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'JPY', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'USDT', 10450);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'DAI', 5346.344);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'EURT', 10596.481);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'USDC', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'YENT', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'BTC', 0.14427895);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'ETH', 0.449);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'BNB', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'XRP', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'BCH', 2.5);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'LTC', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'DOT', 0.559);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'LINK', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'ADA', 3231);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'TRX', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'XMR', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (1, 'NEO', 0);

INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'USD', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'EUR', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'JPY', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'USDT', 7158.25);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'DAI', 8342.265);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'EURT', 5117.574);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'USDC', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'YENT', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'BTC', 0.2183493);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'ETH', 0.854);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'BNB', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'XRP', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'BCH', 9.87);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'LTC', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'DOT', 0.695);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'LINK', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'ADA', 1111);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'TRX', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'XMR', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (2, 'NEO', 0);

INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'USD', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'EUR', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'JPY', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'USDT', 1828.75);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'DAI', 3643.38);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'EURT', 10213);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'USDC', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'YENT', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'BTC', 0.2707924);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'ETH', 0.994);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'BNB', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'XRP', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'BCH', 5.43);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'LTC', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'DOT', 0.169);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'LINK', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'ADA', 9210);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'TRX', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'XMR', 0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (3, 'NEO', 0);

INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'USD',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'EUR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'JPY',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'USDT',1966.475);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'DAI',2706);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'EURT',4092);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'USDC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'YENT',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'BTC',0.71978795);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'ETH',0.05);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'BNB',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'XRP',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'BCH',9.94);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'LTC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'DOT',0.246);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'LINK',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'ADA',3210);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'TRX',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'XMR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (4, 'NEO',0);

INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'USD',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'EUR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'JPY',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'USDT',2191.2);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'DAI',5676);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'EURT',11515.581);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'USDC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'YENT',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'BTC',0.18009595);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'ETH',0.449);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'BNB',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'XRP',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'BCH',2.99);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'LTC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'DOT',0.393);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'LINK',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'ADA',3661);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'TRX',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'XMR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (5, 'NEO',0);

INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'USD',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'EUR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'JPY',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'USDT',7911.75);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'DAI',7592.531);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'EURT',4117.872);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'USDC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'YENT',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'BTC',0.2222002);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'ETH',0.824);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'BNB',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'XRP',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'BCH',9.87);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'LTC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'DOT',0.705);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'LINK',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'ADA',1571);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'TRX',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'XMR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (6, 'NEO',0);

INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'USD',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'EUR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'JPY',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'USDT',1985.5);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'DAI',3761.366);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'EURT',5712);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'USDC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'YENT',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'BTC',0.37389922);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'ETH',0.990);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'BNB',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'XRP',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'BCH',5.66);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'LTC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'DOT',0.170);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'LINK',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'ADA',9250);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'TRX',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'XMR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (7, 'NEO',0);

INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'USD',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'EUR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'JPY',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'USDT',110);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'DAI',5880.797);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'EURT',3306.2);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'USDC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'YENT',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'BTC',0.224122506);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'ETH',0.49);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'BNB',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'XRP',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'BCH',2.69);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'LTC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'DOT',0.5);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'LINK',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'ADA',4350);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'TRX',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'XMR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (8, 'NEO',0);

INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'USD',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'EUR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'JPY',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'USDT',721.2);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'DAI',2240);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'EURT',5712);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'USDC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'YENT',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'BTC',0.521928288);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'ETH',0.78);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'BNB',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'XRP',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'BCH',6);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'LTC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'DOT',0.2);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'LINK',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'ADA',7300);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'TRX',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'XMR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (9, 'NEO',0);

INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'USD',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'EUR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'JPY',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'USDT',2554.15);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'DAI',299.023);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'EURT',678);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'USDC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'YENT',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'BTC',0.33081208);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'ETH',0.042);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'BNB',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'XRP',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'BCH',7);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'LTC',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'DOT',0.07);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'LINK',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'ADA',2600);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'TRX',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'XMR',0);
INSERT INTO G02_BILLETERA (id_usuario, moneda, saldo) VALUES (10, 'NEO',0);


--CARGA DE ORDEN
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion, valor, cantidad, estado) VALUES ('BTC_USDT', 1, 'Compra', '2020-06-01 00:59:32.000700',11000, 0.05, 'Nueva'); --
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion, valor, cantidad, estado) VALUES ('BTC_USDT', 1, 'Venta', '2020-06-01 01:01:34.007700',10450, 0.175, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 1, 'Compra', '2020-06-01 01:10:32.000000',11367, 0.449, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 1, 'Venta', '2020-06-01 01:11:42.000001',11092, 0.482, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 1, 'Compra', '2020-06-02 00:51:32.000700',10617, 0.599, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 1, 'Venta', '2020-06-02 00:55:30.001100',11683, 0.907, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 1, 'Compra', '2020-06-02 00:57:12.000700',0.0214, 2.5, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 1, 'Venta', '2020-06-02 00:59:02.020000',0.02121, 3.65, 'Nueva');--
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 1, 'Compra', '2020-06-03 00:51:52.100700',0.0000023, 3231, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 1, 'Venta', '2020-06-03 00:51:51.515151',0.00000215, 7843, 'Nueva');--

INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 2, 'Compra', '2020-06-03 04:10:32.102300',11464, 0.183 , 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 2, 'Venta', '2020-06-03 04:12:42.112300',10450, 0.685, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 2, 'Compra', '2020-06-04 04:00:32.102300',10046, 0.854, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 2, 'Venta', '2020-06-04 05:10:52.152300',11833, 0.705, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 2, 'Compra', '2020-06-04 05:20:02.052000',10409, 0.695, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 2, 'Venta', '2020-06-04 05:25:51.15000',11077, 0.462, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 2, 'Compra', '2020-06-05 05:10:52.111300',0.0211, 9.87, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 2, 'Venta', '2020-06-05 06:00:22.152300',0.02115, 1.32, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 2, 'Compra', '2020-06-05 06:01:32.142101',0.00000765, 1111, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 2, 'Venta', '2020-06-05 06:05:27.552300',0.0000023, 3231, 'Nueva');

INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 3, 'Compra', '2020-06-06 10:15:10.111111',10360,0.082, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 3, 'Venta', '2020-06-06 10:17:40.101010',10450, 0.175, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 3, 'Compra', '2020-06-06 10:19:10.001210',10249, 0.994, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 3, 'Venta', '2020-06-06 10:20:40.231510',10530, 0.346, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 3, 'Compra', '2020-06-07 10:26:11.111210',10552, 0.169, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 3, 'Venta', '2020-06-07 10:28:01.000210',10213,  0.559, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 3, 'Compra', '2020-06-07 10:31:15.111210',0.02104, 5.43, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 3, 'Venta', '2020-06-07 11:26:51.101210',0.021, 7, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 3, 'Compra', '2020-06-08 10:26:11.111210',0.00000612, 9210, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 3, 'Venta', '2020-06-08 10:29:00.000010',0.00000564, 7410, 'Nueva');

INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 4, 'Compra', '2020-06-08 12:00:00.000000',10043, 0.601 , 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 4, 'Venta', '2020-06-08 12:03:01.800001',11237, 0.175, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 4, 'Compra', '2020-06-09 12:07:10.056000',11288, 0.05, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 4, 'Venta', '2020-06-09 12:10:20.300010',11000, 0.215, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 4, 'Compra', '2020-06-09 12:11:20.323010',11000, 0.246, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 4, 'Venta', '2020-06-09 12:31:22.323010',11000, 0.372, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 4, 'Compra', '2020-06-10 12:11:20.125010',0.021441, 9.94, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 4, 'Venta', '2020-06-10 12:30:50.125211',0.021876, 4, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 4, 'Compra', '2020-06-10 12:34:51.000211',0.00000721, 3210, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 4, 'Venta', '2020-06-10 12:38:51.000000',0.00000685, 4567, 'Nueva');

INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 5, 'Compra', '2020-06-12 14:01:02.100122',12000, 0.08, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 5, 'Venta', '2020-06-20 14:00:52.100112',12450, 0.176, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 5, 'Compra', '2020-06-12 14:03:52.155022',10222, 0.449, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 5, 'Venta', '2020-06-16 14:23:12.0444122',12000, 0.473, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 5, 'Compra', '2020-06-18 14:11:11.100102',10001, 0.393, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 5, 'Venta', '2020-06-14 14:51:12.000155',12033, 0.957, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 5, 'Compra', '2020-06-13 14:10:43.100115',0.0235, 2.99, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 5, 'Venta', '2020-06-17 14:17:57.102231',0.02186, 3.65, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 5, 'Compra', '2020-06-14 14:27:23.102311',0.0000027, 3661, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 5, 'Venta', '2020-06-12 14:13:32.102101',0.00000265, 7663, 'Nueva');

INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 6, 'Compra', '2020-06-14 14:43:33.102500',15344, 0.183 , 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 6, 'Venta', '2020-06-17 15:13:00.102101',11550, 0.685, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 6, 'Compra', '2020-06-12 14:54:32.155505',12246, 0.824, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 6, 'Venta', '2020-06-13 15:23:12.062101',10831, 0.701, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 6, 'Compra', '2020-06-13 15:43:52.165121',11119, 0.705, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 6, 'Venta', '2020-06-15 15:11:11.164201',11344, 0.363, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 6, 'Compra', '2020-06-12 16:23:12.222101',0.0267, 9.87, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 6, 'Venta', '2020-06-14 15:33:22.122131',0.02166, 1.47, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 6, 'Compra', '2020-06-17 16:22:34.001031',0.00000769, 1571, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 6, 'Venta', '2020-06-18 16:55:12.133131',0.0000023, 3200, 'Nueva');

INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 7, 'Compra', '2020-06-13 01:59:32.100701',11160,0.088, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 7, 'Venta', '2020-06-12 02:03:22.022131',10450, 0.190, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 7, 'Compra', '2020-06-12 02:13:32.022122',12333, 0.990, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 7, 'Venta', '2020-06-12 02:22:11.005631',10871, 0.346, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 7, 'Compra', '2020-06-16 02:03:22.022131',10199, 0.170, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 7, 'Venta', '2020-06-18 02:03:20.022131',10200,  0.560, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 7, 'Compra', '2020-06-19 02:23:52.122131',0.02100, 5.66, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 7, 'Venta', '2020-06-20 02:44:12.000151',0.02700, 9, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 7, 'Compra', '2020-06-20 02:54:33.220151',0.00000655, 9250, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 7, 'Venta', '2020-06-20 03:14:02.000101',0.00000567, 7566, 'Nueva');

INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 8, 'Compra', '2020-06-14 08:00:12.000000',10150,0.09, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 8, 'Venta', '2020-06-14 08:02:32.000100',11000, 0.01, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 8, 'Compra', '2020-06-30 08:00:13.000000',10344, 0.490, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 8, 'Venta', '2020-06-30 08:03:19.012000',10751, 0.547, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 8, 'Compra', '2020-06-23 08:01:03.000000',11909, 0.472, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 8, 'Venta', '2020-06-23 08:03:22.020300',12200,  0.271, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 8, 'Compra', '2020-06-14 08:10:10.013051',0.0211, 2.69, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 8, 'Venta', '2020-06-14 08:13:10.115051',0.02401, 5.213, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 8, 'Compra', '2020-06-14 08:15:20.115151',0.00000333, 4350, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 8, 'Venta', '2020-06-14 08:21:56.006091',0.00000907, 999, 'Nueva');

INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 9, 'Compra', '2020-06-17 15:03:10.115051',11000,0.42, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 9, 'Venta', '2020-06-20 15:13:12.555051',12020, 0.06, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 9, 'Compra', '2020-06-29 15:07:19.115221',11814, 0.78, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 9, 'Venta', '2020-06-23 16:03:10.115051',14000, 0.16, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 9, 'Compra', '2020-06-02 15:03:34.578612',10199, 0.170, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 9, 'Venta', '2020-06-03 15:36:50.115051',10200,  0.560, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 9, 'Compra', '2020-06-14 15:22:12.135011',0.02001, 5.16, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 9, 'Venta', '2020-06-15 15:00:00.100051',0.022003, 4.206, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 9, 'Compra', '2020-06-28 15:25:26.222011',0.0000019, 7251, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 9, 'Venta', '2020-06-29 17:03:10.115050',0.00000369, 2543, 'Nueva');

--sección C servicio 2.a, lo copiamos acá para que una vez cargadas las ordenes del usuario 10, ya tengamos los mercados con sus precios actualizados
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
--termina seccion C servicio 2.a

INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 10, 'Compra', '2020-06-02 20:13:10.115051',10099,0.0923, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BTC_USDT', 10, 'Venta', '2020-06-01 21:44:58.102300',11105, 0.23, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 10, 'Compra', '2020-06-10 20:41:32.212310',10321, 0.042, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ETH_DAI', 10, 'Venta', '2020-06-11 21:23:26.102369',13001, 0.023, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 10, 'Compra', '2020-06-23 21:45:47.102300',11199, 0.07, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('DOT_EURT', 10, 'Venta', '2020-06-24 22:52:52.132415',11300,  0.06, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 10, 'Compra', '2020-06-01 20:34:22.222500',0.021, 6.91, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('BCH_BTC', 10, 'Venta', '2020-06-01 21:57:38.161232',0.0272, 8.2, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 10, 'Compra', '2020-06-10 20:00:09.586712',0.0000055, 2502, 'Nueva');
INSERT INTO G02_ORDEN (mercado, id_usuario, tipo, fecha_creacion,  valor, cantidad, estado) VALUES ('ADA_BTC', 10, 'Venta', '2020-06-27 21:11:12.359010',0.00000988, 1566, 'Nueva');

--CARGA DE MOVIMIENTO
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'BTC', '2020-05-01','D', 0.5 ,0.145003969, 1, 'Direccion_BTC');--Año y mes de movimiento -> Mayo de 2020
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'USDT', '2020-05-01','D', 0.5 , 10502.51256, 1, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'ETH', '2020-05-01','D', 0.5 , 0.451256281, 1, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'DAI', '2020-05-01','D', 0.5 , 5373.21005, 1, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'DOT', '2020-05-02','D', 0.5 , 0.561809045, 1, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'EURT', '2020-05-02','D', 0.5 , 10649.72965, 1, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'BCH', '2020-05-02','D', 0.5 , 2.512562814, 1, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (1, 'ADA', '2020-05-03','D', 0.5 , 3247.236181, 1, 'Direccion_ADA');

INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (2, 'BTC', '2020-05-03','D', 0.5 , 0.219446532, 2, 'Direccion_BTC');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (2, 'USDT', '2020-05-03','D', 0.5 , 7194.221106, 2, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (2, 'ETH', '2020-05-04','D', 0.5 , 0.858291457, 2, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (2, 'DAI', '2020-05-04','D', 0.5 , 8384.18593, 2, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (2, 'DOT', '2020-05-04','D', 0.5 , 0.698492462, 2, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (2, 'EURT', '2020-05-05','D', 0.5 , 5143.290452, 2, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (2, 'BCH', '2020-05-05','D', 0.5 , 9.91959799, 2, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (2, 'ADA', '2020-05-05','D', 0.5 , 1116.582815, 2, 'Direccion_ADA');

INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (3, 'BTC', '2020-05-06','D', 0.5 ,0.272153165, 3, 'Direccion_BTC');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (3, 'USDT', '2020-05-06','D', 0.5 , 1837.939698, 3, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (3, 'ETH', '2020-05-06','D', 0.5 ,0.998994974, 3, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (3, 'DAI', '2020-05-07','D', 0.5 , 3661.688442, 3, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (3, 'DOT', '2020-05-07','D', 0.5 ,0.169849246, 3, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (3, 'EURT', '2020-05-07','D', 0.5 , 5737.755779, 3, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (3, 'BCH', '2020-05-08','D', 0.5 , 5.457286432, 3, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (3, 'ADA', '2020-05-08','D', 0.5 , 9256.281407, 3, 'Direccion_ADA');

INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (4, 'BTC', '2020-05-08','D', 0.5 , 0.723404974, 4, 'Direccion_BTC');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (4, 'USDT', '2020-05-09','D', 0.5 , 1976.356784, 4, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (4, 'ETH', '2020-05-09','D', 0.5 , 0.050251256, 4, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (4, 'DAI', '2020-05-09','D', 0.5 , 2719.59799, 4, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (4, 'DOT', '2020-05-10','D', 0.5 ,0.24723618, 4, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (4, 'EURT', '2020-05-10','D', 0.5 , 4112.562814, 4, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (4, 'BCH', '2020-05-10','D', 0.5 , 9.989949749, 4, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (4, 'ADA', '2020-05-10','D', 0.5 , 3226.130653, 4, 'Direccion_ADA');

INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'USDT', '2020-05-11','D', 0.5, 2202.2110552763819095 , 5, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'DAI', '2020-05-12','D', 0.5 , 5704.5226130653266332 , 5, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'EURT', '2020-05-11','D', 0.5, 11573.44824120603 , 5, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'BTC', '2020-05-12','D', 0.5 , 0.18100095477386934673 , 5, 'Direccion_BTC');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'ETH', '2020-05-11','D', 0.5 , 0.45125628140703517588 , 5, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'BCH', '2020-05-12','D', 0.5 , 3.0050251256281407 , 5, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'DOT', '2020-05-12','D', 0.5 , 0.39497487437185929648 , 5, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (5, 'ADA', '2020-05-11','D', 0.5 , 3679.3969849246231156 , 5, 'Direccion_ADA');

INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (6, 'USDT', '2020-05-14','D', 0.5, 7951.5075376884422111 , 6, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (6, 'DAI', '2020-05-14','D', 0.5 , 7630.6844221105527638 , 6, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (6, 'EURT', '2020-05-14','D', 0.5, 4138.5648241206030151 , 6, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (6, 'BTC', '2020-05-14','D', 0.5 , 0.22331678391959798995 , 6, 'Direccion_BTC');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (6, 'ETH', '2020-05-14','D', 0.5 , 0.8281407035175879397 , 6, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (6, 'BCH', '2020-05-14','D', 0.5 , 9.9195979899497487 , 6, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (6, 'DOT', '2020-05-14','D', 0.5 , 0.70854271356783919598 , 6, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (6, 'ADA', '2020-05-14','D', 0.5 , 1578.8944723618090452 , 6, 'Direccion_ADA');

INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (7, 'USDT', '2020-05-15','D', 0.5, 1995.4773869346733668 , 7, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (7, 'DAI', '2020-05-15','D', 0.5 , 3780.2673366834170854 , 7, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (7, 'EURT', '2020-05-15','D', 0.5, 5740.7035175879396985 , 7, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (7, 'BTC', '2020-05-15','D', 0.5 , 0.3757781105527638191 , 7, 'Direccion_BTC');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (7, 'ETH', '2020-05-16','D', 0.5 , 0.99497487437185929648 , 7, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (7, 'BCH', '2020-05-16','D', 0.5 , 5.6884422110552764 , 7, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (7, 'DOT', '2020-05-16','D', 0.5 , 0.1708542713567839196 , 7, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (7, 'ADA', '2020-05-16','D', 0.5 , 9296.4824120603015075 , 7, 'Direccion_ADA');

INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (8, 'USDT', '2020-05-20','D', 0.5, 110.5527638, 8, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (8, 'DAI', '2020-05-20','D', 0.5 , 5910.348744, 8, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (8, 'EURT', '2020-05-20','D', 0.5, 3322.81407, 8, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (8, 'BTC', '2020-05-21','D', 0.5 , 0.225351819, 8, 'Direccion_BTC');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (8, 'ETH', '2020-05-20','D', 0.5 , 0.4924623115577889, 8, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (8, 'BCH', '2020-05-21','D', 0.5 , 2.703517587939698, 8, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (8, 'DOT', '2020-05-21','D', 0.5 , 0.5025125628140703, 8, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (8, 'ADA', '2020-05-21','D', 0.5 , 4371.859296482412, 8, 'Direccion_ADA');

INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (9, 'USDT', '2020-05-22','D', 0.5, 724.8241206, 9, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (9, 'DAI', '2020-05-23','D', 0.5 , 2251.256281, 9, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (9, 'EURT', '2020-05-23','D', 0.5, 5740.703518, 9, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (9, 'BTC', '2020-05-22','D', 0.5 , 0.524551043, 9, 'Direccion_BTC');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (9, 'ETH', '2020-05-23','D', 0.5 , 0.7839195979899497, 9, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (9, 'BCH', '2020-05-22','D', 0.5 , 6.030150753768844, 9, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (9, 'DOT', '2020-05-22','D', 0.5 , 0.20100502512562812, 9, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (9, 'ADA', '2020-05-22','D', 0.5 , 7336.683417085426, 9, 'Direccion_ADA');

INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (10, 'USDT', '2020-05-25','D', 0.5, 2566.984925, 10, 'Direccion_USDT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (10, 'DAI', '2020-05-25','D', 0.5 , 300.5256281, 10, 'Direccion_DAI');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (10, 'EURT', '2020-05-25','D', 0.5, 681.4070352, 10, 'Direccion_EURT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (10, 'BTC', '2020-05-25','D', 0.5 , 0.332474452, 10, 'Direccion_BTC');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (10, 'ETH', '2020-05-26','D', 0.5 , 0.04221105527638191, 10, 'Direccion_ETH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (10, 'BCH', '2020-05-26','D', 0.5 , 7.035175879397, 10, 'Direccion_BCH');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (10, 'DOT', '2020-05-26','D', 0.5 , 0.07035175879397, 10, 'Direccion_DOT');
INSERT INTO G02_MOVIMIENTO (id_usuario, moneda, fecha, tipo, comision, valor, bloque, direccion) VALUES (10, 'ADA', '2020-05-26','D', 0.5 , 2613.0653266331656, 10, 'Direccion_ADA');
