CREATE DATABASE Estudiantes;

CREATE TABLE datos (
    estudiante_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    ciudad VARCHAR(100)
);

INSERT INTO datos VALUES (1, 'juan', 23, 'lima'),
                          (2, 'ronal', 24, 'puno'),
                          (3, 'jose', 26, 'arequipa');

CREATE TABLE cursos (
    cursos_id INT PRIMARY KEY,
    cursos_nombre VARCHAR(100),
    creditos INT
);

INSERT INTO cursos VALUES (101, 'matemática', 5),
                           (102, 'lenguaje', 4),
                           (103, 'física', 3),
                           (104, 'química', 2);

CREATE TABLE Matriculas (
    matriculas_id INT PRIMARY KEY,
    estudiantes_id INT,
    curso_id INT,
    matricula_FECHA DATE,
    FOREIGN KEY(estudiantes_id) REFERENCES datos(estudiante_id),
    FOREIGN KEY(curso_id) REFERENCES cursos(cursos_id)
);
INSERT INTO Matriculas values(1,1,101,'2024_01_10')
	INSERT INTO Matriculas values(2,2,102,'2024_02_11')
	INSERT INTO Matriculas values(3,3,103,'2024_03_12')
	INSERT INTO Matriculas values(4,4,104,'2024_04_13')

	SELECT * FROM  datos WHERE estudiante_id <18;
	SELECT * FROM  datos WHERE nombre= 'juan';
SELECT * FROM  datos;
SELECT * FROM  cursos;
SELECT * FROM  matriculas;


/* agregar datos*/
update datos SET  ciudad = 'lampa' where nombre='juan';

select nombre, edad, cursos_nombre FROM datos, cursos
select ciudad from  datos
select edad from datos

delete FROM  cursos
where  nombre =' danile';


SELECT datos.nombre AS estudiante_nombre, Cursos.Curso_Nombre AS Cursos_nombre
from datos
INNER JOIN Matriculas ON datos.estudiantes_id = Matriculas.estudiante_id

INNER JOIN Cursos ON Matriculas.Curso_id = Cursos.Curso_id;
where c.curso_nombre


select  nombre , edad , curso_nombre, creditos from datos , cursos
update cursos SET cursos_nombre='geometria' where cursos_id = 102

select ciudad from datos
select edad from datos


