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



CREATE TABLE generos (
    id_genero int PRIMARY key,
    nombre VARCHAR2(50) NOT NULL,
    sigla VARCHAR2(5),
    estado VARCHAR2(1),
    orden int
)



create table venta (
id_venta int primary key,
id_cliente int,
id_metodo_pago int,
id_empleado int,
monto_total decimal (10, 2),
fecha_venta date,
estado_venta varchar(100),
fecha_creacion varchar(100),
fecha_actualizacion varchar(100),
usuario_creacion varchar(100),
usuario_atualizacion varchar(100)
);
       
create table metodo_pago(
id_metodo_pago int primary key,
id_venta int,
nombre varchar (100),
estado varchar(1)
);

CREATE TABLE CATEGORIA (
  ID_CATEGORIA INT PRIMARY KEY,
  NOMBRE_CATEGORIA VARCHAR(100),
  DESCRIPCION_CATEGORIA VARCHAR(100)
);

create table detalle_venta(
id_detalle_venta int primary key,
id_venta int,
id_instrumento int,
cantidad decimal(10, 2),
precio_unitario decimal(10, 2)
)
create table empleado(
id_empleado int primary key,
id_persona int,
id_turno int,
cargo varchar(100),
fecha_creacion varchar(100),
fecha_actualizacion varchar(100),
usuario_creacion varchar(100),
usuario_atualizacion varchar(100)
)
 

 CREATE TABLE MARCA (
  ID_MARCA INT PRIMARY KEY,
  NOMBRE_MARCA VARCHAR(100),
  DESCRIPCION_MARCA VARCHAR(100)
);

create table detalle_pedido(
  id_detalle_pedido int primary key,
  id_pedido int,
  id_instrumento int,
  cantidad varchar(100),
  estado varchar(1)
);

create table pedido_accesorio(
  id_pedido_accesorio int primary key,
  id_detalle_pedido int,
  nombre varchar(100),
  marca varchar(100)
);

create table pedido_instrumento(
  id_pedido_instrumento int primary key,
  id_detalle_pedido int,
  nombre varchar(100),
  marca varchar(100),
  estado varchar(1)
);

create table proveedor(
  id_proveedor int primary key,
  nombre_proveedor varchar(100),
  descripcion_proveedor varchar(100)
);

create table pedido(
  id_pedido int primary key,
  id_proveedor int
);

CREATE TABLE descuento (
  id_descuento INT PRIMARY KEY,
  id_instrumento INT,
  id_venta INT,
  descuento VARCHAR(100),
  fecha_descuento DATE
);


CREATE TABLE persona (
  id_persona INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido_paterno VARCHAR(100) NOT NULL,
  apellido_materno VARCHAR(100) NOT NULL,
  documento VARCHAR(100) NOT NULL,
  fecha_nacimiento DATE,
  correo VARCHAR(100),
  telefono VARCHAR(100),
  genero VARCHAR(108),
  fecha_creacion VARCHAR(100),
  fecha_actualizacion VARCHAR(100),
  usuario_creacion VARCHAR(100),
  usuario_atualizacion VARCHAR(100)
);

CREATE TABLE cliente (
  id_cliente INT PRIMARY KEY,
  id_persona INT,
  id_venta INT
);






create table turno (
  id_turno int primary key,
  id_empleado int,
  nombre varchar(100),
  hora_inicio varchar(100),
  hora_fin varchar(100)
);

create table salario (
  id_salario int primary key,
  id_empleado int,
  monto_pago decimal(10, 2),
  fecha_pago date
);




----

CREATE TRIGGER TRG_PERSONA
BEFORE INSERT ON PERSONA
FOR EACH ROW
BEGIN
   SELECT SQ_PERSONA.NEXTVAL INTO :NEW.ID_PERSONA FROM DUAL;
END;

ALTER USER USUARIO_VENTA quota unlimited on VENTA;

GRANT CREATE TABLE TO USUARIO_VENTA;

GRANT ALL PRIVILEGES TO USUARIO_VENTA;



---
--ejercicio 01
---de 5 tablas usar  la funcion  count(*) ---cata
SELECT * FROM  PERSONA;---LISTAR TODOS LOS DATOS
SELECT NOMBRE , APELLIDO_MATERNO, APELLIDO_PATERNO FROM PERSONA;
SELECT COUNT(*)AS  CANTIDAD_PERSONA FROM PERSONA;


SELECT * FROM persona;
SELECT id_persona,correo,genero FROM persona;
SELECT COUNT(*)AS  TIPO_DOCUMENTO FROM persona;

SELECT 
NOMBRE,
APELLIDO_MATERNO AS MATERNO,
APELLIDO_PATERNO AS PATERNO
FROM PERSONA;
SELECT COUNT (*) AS CANTIDAD_PERSONA FROM PERSONA;

SELECT * FROM  instrumento;---LISTAR TODOS LOS DATOS
SELECT NOMBRE_INSTRUMENTO , PRECIO,STOCK FROM INSTRUMENTO;
SELECT COUNT(*)AS  CANTIDAD_DOCUEMNTOS  FROM instrumento;


SELECT * FROM  ESTADO_CIVIL;---LISTAR TODOS LOS DATOS
SELECT NOMBRE , sigla FROM estado_civil;
SELECT COUNT(*)AS  CANTIDAD_NOMBRES  FROM ESTADO_CIVIL;

SELECT * FROM  GENERO;---LISTAR TODOS LOS DATOS
SELECT NOMBRE , sigla FROM genero;
SELECT COUNT(*)AS  CANTIDAD_GENEROS  FROM genero;


--EJERCICIO 02

---USO DE LA CLAUSULA WHERE