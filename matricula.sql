---PAUL ANDRES
--Crear una tabla
CREATE TABLE persona(
    id_persona int primary key,
    nombre VARCHAR2(50) not null,
    apellido_materno VARCHAR2(50) not null,
    apellido_paterno VARCHAR2(50) not null,
    fecha_nacimiento DATE,
    celular VARCHAR2(20) not null,
    correo VARCHAR2(50),
    direccion VARCHAR2(250),
    id_genero int,
    fecha_actializacion DATE,
    fecha_registro DATE,
    id_usuario_actializacion int,
    id_usuario_registro int
);


--CREANDO UN TRIGGER 
CREATE SEQUENCE SQ_PERSONA
MINVALUE 10
START WITH 10
INCREMENT BY 1;


CREATE TRIGGER TRG_PERSONA
BEFORE INSERT ON PERSONA
FOR EACH ROW
BEGIN
   SELECT SQ_PERSONA.NEXTVAL INTO :NEW.ID_PERSONA FROM DUAL;
END;

CREATE TRIGGER TRG_GENERO
BEFORE INSERT ON GENERO
FOR EACH ROW
BEGIN
   SELECT SQ_GENERO.NEXTVAL INTO :NEW.ID_GENERO FROM DUAL;
END;

CREATE TRIGGER TRG_ESTADO_CIVIL
BEFORE INSERT ON ESTADO_CIVIL
FOR EACH ROW
BEGIN
   SELECT SQ_ESCTADO_CIVIL.NEXTVAL INTO :NEW.ID_ESTADO_CIVIL FROM DUAL;
END;

CREATE TRIGGER TRG_PERSONA_CELULAR
BEFORE INSERT ON PERSONA_CELU
FOR EACH ROW
BEGIN
   SELECT SQ_PERSONA.NEXTVAL INTO :NEW.ID_PERSONA FROM DUAL;
END;

CREATE TABLE genero (
    id_genero int PRIMARY key,
    nombre VARCHAR2(50) NOT NULL,
    sigla VARCHAR2(5),
    estado VARCHAR2(1),
    orden int
)


ALTER TABLE persona 
ADD CONSTRAINT FK_id_genero 
    FOREIGN KEY (id_genero)
    REFERENCES genero (id_genero);
 
 
 CREATE TABLE tipo_documento (
    id_tipo_documento int PRIMARY key,
    nombre VARCHAR2(50) NOT NULL,
    sigla VARCHAR2(5),
    estado VARCHAR2(1),
    orden int
)


CREATE TABLE persona_documento (
    id_persona_documento int PRIMARY key,
    id_persona int,
    id_tipo_documento int,
    numero_documento VARCHAR2(20) not null unique,
    estado VARCHAR2(1)
)

ALTER TABLE persona_documento 
ADD CONSTRAINT FK_id_persona
    FOREIGN KEY (id_persona)
    REFERENCES persona (id_persona)
ADD CONSTRAINT FK_id_tipo_documento
    FOREIGN KEY (id_tipo_documento)
    REFERENCES tipo_documento (id_tipo_documento);
    
 ALTER TABLE persona
ADD id_estado_civil int;


CREATE TABLE estado_civil (
    id_estado_civil int PRIMARY key,
    nombre VARCHAR2(50) NOT NULL,
    sigla VARCHAR2(5),
    estado VARCHAR2(1),
    orden int
)


CREATE TABLE persona_celular (
    id_persona_celular int PRIMARY key,
    id_persona int,
    numero_celular VARCHAR2(20),
    estado VARCHAR2(1)
)
CREATE TABLE persona_celular (
    id_persona_celular int PRIMARY key,
    id_persona int,
    numero_celular VARCHAR2(20),
    estado VARCHAR2(1)
)

CREATE TABLE  ALUMNO(
ID_ALUMNO INT PRIMARY KEY,




ALTER TABLE persona 
ADD CONSTRAINT FK_ID_ESTADO_CIVIL
    FOREIGN KEY (id_estado_civil)
    REFERENCES estado_civil (id_estado_civil);
    
ALTER TABLE persona 
ADD CONSTRAINT FK_ID_ESTADO_CIVIL
    FOREIGN KEY (id_estado_civil)
    REFERENCES estado_civil (id_estado_civil);
    
alter table persona
drop CONSTRAINT FK_ID_GENERO;

INSERT INTO tipo_documento 
(ID_TIPO_DOCUMENTO,NOMBRE,SIGLA,ESTADO,ORDEN)
VALUES
(2,'Passaporte', 'P', 1, 2);

SELECT * FROM estado_civil;
SELECT * FROM genero;
SELECT * FROM tipo_documento;

INNNER JOIN _FUSIONAR TABLAS 