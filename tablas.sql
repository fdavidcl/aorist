CREATE TABLE anunciante_contratos(
  ID                        NUMBER(38)          PRIMARY KEY,
  ANUNCIANTE_ID             NUMBER(38)          FOREIGN KEY REFERENCES anunciantes(ID),
  IMPORTE                   BINARY_FLOAT,
  FECHA                     DATE,
  DESCRIPCION               VARCHAR2(255),
  DURACION                  DATE
);

CREATE TABLE anunciantes(
 ID                         NUMBER(38)          PRIMARY KEY,
 NOMBRE                     VARCHAR2(255),
 WEB                        VARCHAR2(255),
 FISCALES                   VARCHAR2(255),
 DISABLED                   NUMBER(1)
);

CREATE TABLE anunciantes_audiences(
  ID                        NUMBER(38)          PRIMARY KEY,
  AUDIENCE_ID               NUMBER(38)          FOREIGN KEY REFERENCES audiences(ID),
  ANUNCIANTE_ID             NUMBER(38)          FOREIGN KEY REFERENCES anunciantes(ID)  
);

CREATE TABLE anuncio_allocations(
  ID                        NUMBER(38)          PRIMARY KEY,
  ANUNCIO_ID                NUMBER(38)          FOREIGN KEY REFERENCES anuncios(ID),
  ESPACIO_ID                NUMBER(38)          FOREIGN KEY REFERENCES espacios(ID)
);

CREATE TABLE anuncios(
  ID                        NUMBER(38)          PRIMARY KEY,
  ANUNCIANTE_ID             NUMBER(38)          FOREIGN KEY REFERENCES anunciantes(ID),
  CONTENIDO                 CLOB,
  URL                       VARCHAR2(255)
);

CREATE TABLE audiences(
 ID                         NUMBER(38)          PRIMARY KEY,
 NOMBRE                     VARCHAR2(255),
 DESCRIPCION                VARCHAR2(255)
);

CREATE TABLE audiences_medios(
  ID                        NUMBER(38)          PRIMARY KEY,
  AUDIENCE_ID               NUMBER(38)          FOREIGN KEY REFERENCES audiences(ID),
  MEDIO_ID                  NUMBER(38)          FOREIGN KEY REFERENCES medios(ID)
);

CREATE TABLE cobros(
  ID				        NUMBER(38)          PRIMARY KEY,
  ANUNCIANTE_CONTRATO_ID 	NUMBER(38)          FOREIGN KEY REFERENCES anunciantes(ID),
  IMPORTE					BINARY_FLOAT,
  FECHA						DATE
);

CREATE TABLE espacios(
  ID                        NUMBER(38)          PRIMARY KEY,
  MEDIO_ID                  NUMBER(38)          FOREIGN KEY REFERENCES medios(ID),
  MULTIMEDIA                NUMBER(1),
  ENLACE                    NUMBER(1),
  ANCHO                     NUMBER(38),
  ALTO                      NUMBER(38)
);

CREATE TABLE medio_contratos(
  ID                        NUMBER(38)          PRIMARY KEY,
  MEDIO_ID                  NUMBER(38)          FOREIGN KEY REFERENCES medios(ID),
  IMPORTE                   BINARY_FLOAT,
  FECHA                     DATE,
  DESCRIPCION               VARCHAR2(255),
  DURACION                  DATE
);

CREATE TABLE medios(
  ID                        NUMBER(38)          PRIMARY KEY,
  NOMBRE                    VARCHAR2(255),
  WEB                       VARCHAR2(255),
  FISCALES                  VARCHAR2(255),
  DISABLED                  NUMBER(1)
);

CREATE TABLE pagos(
  ID                        NUMBER(38)          PRIMARY KEY,
  MEDIO_CONTRATO_ID         NUMBER(38)          FOREIGN KEY REFERENCES medios(ID),
  IMPORTE                   BINARY_FLOAT,
  FECHA                     DATE
);
