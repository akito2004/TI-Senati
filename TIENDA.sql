
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

--paso 02
CREATE USER USUARIO_TIENDA IDENTIFIED BY "1234560"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

--paso 03
ALTER USER USUARIO_TIENDA QUOTA UNLIMITED ON USERS;
--paso 04
GRANT CREATE SESSION TO USUARIO_TIENDA;

--paso 05
GRANT "RESOURCE" TO USUARIO_TIENDA;

--paso 06
ALTER USER USUARIO_TIENDA DEFAULT ROLE "RESOURCE";

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