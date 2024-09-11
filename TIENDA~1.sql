
CREATE TABLE INSTRUMENTO(
   ID_INSTRUMENTO INT PRIMARY KEY,
   ID_CATERGORIA INT,
   ID_MARCA INT,
   NOMBRE_INSTRUMENTO VARCHAR2(100),
   DECRIPCION_INSTRUMENTO VARCHAR2(100),
   PRECIO VARCHAR2(1000),
   CANTIDAD VARCHAR2(100),
   STOCK VARCHAR(100),
   IMAGEN VARCHAR(100),
   FECHA_CREACION VARCHAR(100),
   FECHA_ACTUALIZACION VARCHAR(100),
   USUARIO_CREACION VARCHAR (100),
   USUARIO_ACTUALIZACION VARCHAR(100)
   
);

CREATE TABLE CATEGORIA{
ID_CATEGORIA INT PRIMARY KEY,
NOMBRE_CATEGORIA VARCHAR(100),
DECRIPCION_CATEGORIA VARCHAR(100)
};

CREATE TABLE MARCA{
ID_MARCA INT PRIMARY KEY,
NOMBRE_MARCA VARCHAR(100),
DECRIPCION_MARCA VARCHAR(100),
};