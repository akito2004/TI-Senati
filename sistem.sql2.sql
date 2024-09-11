-------PAUL ANDRS------
--Crear una nueva base de datos
--paso 01
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

--paso 02
CREATE USER USUARIO_VENTA IDENTIFIED BY "654321"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

--paso 03
ALTER USER USUARIO_MATRICULA QUOTA UNLIMITED ON USERS;
--paso 04
GRANT CREATE SESSION TO USUARIO_VENTA;

--paso 05
GRANT "RESOURCE" TO USUARIO_VENTA;

--paso 06
ALTER USER USUARIO_VENTA DEFAULT ROLE "RESOURCE";

GRANT DBA TO USUARIO_VENTA;
