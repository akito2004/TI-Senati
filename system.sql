-----paul andres ---

--- crear una nueva  base de datos

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

--paso 02
CREATE USER USUARIO_MATRICULA IDENTIFIED BY "1234560"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

--paso 03
ALTER USER USUARIO_MATRICULA QUOTA UNLIMITED ON USERS;
--paso 04
GRANT CREATE SESSION TO USUARIO_MATRICULA;

--paso 05
GRANT "RESOURCE" TO USUARIO_MATRICULA;

--paso 06
ALTER USER USUARIO_MATRICULA DEFAULT ROLE "RESOURCE";
