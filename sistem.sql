--PAUL ANDRES
--crear una tabla
create table persona{
  id_persona int primary key,
  nombre varchar(50) not null,
  apellido_materno varchar2(50) not null,
  apelido_paterno varchar2(50) not null,
  fecha_nacimineto date
  celular varchar(50),
  correo varchar(250),
  id_genero int,
  fecha_registro date,
  fecha_actualizacion date,
  id_usuario_actualizacion int,
  id_usuario_registro int
  };