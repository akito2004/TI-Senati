CREATE DATABASE escuelita;

CREATE TABLE cursos (
    id_curso INT PRIMARY KEY,
    nombre_curso VARCHAR(100),
    grado_curso INT,
    FOREIGN KEY(grado_curso) REFERENCES grados(id_grado)
);

CREATE TABLE grados (
    id_grado INT PRIMARY KEY,
    nombre_grado VARCHAR(100)

);


INSERT INTO grados (id_grado, nombre_grado) VALUES
(1, 'Primer Grado'),
(2, 'Segundo Grado'),
(3, 'Tercer Grado'),
(4, 'Cuarto Grado'),
(5, 'Quinto Grado');

INSERT INTO cursos (id_curso, nombre_curso, grado_curso) VALUES
(101, 'Matemáticas', 1),
(102, 'Lenguaje', 2),
(103, 'Ciencias Naturales', 3),
(104, 'Historia', 4),
(105, 'Educación Física', 5);

SELECT id_curso, nombre_curso, grado_curso FROM cursos;
SELECT * FROM  grados;
SELECT * FROM  cursos;



UPDATE cursos SET nombre_curso = 'Matemáticas Avanzadas' WHERE id_curso = 101;

DELETE FROM cursos WHERE id_curso = 5;
delete FROM  cursos
