use tienda
go

create table despartamentos(
id_departamentos INT PRIMARY KEY,
nombre_departamentos varchar (100)
);
create table empleados (
id_empleados INT PRIMARY KEY,
nombre varchar (100),
salario DECIMAL (10,2),
id_departamentos INT FOREIGN KEY (id_departamentos) references despartamentos(id_departamentos)
);

insert into despartamentos (id_departamentos, nombre_departamentos)
VALUES
  (1, 'Recursos Humanos'),
  (2, 'Finanzas'),
  (3, 'Marketing'),
  (4, 'Ventas'),
  (5, 'Producción'),
  (6, 'Investigación y Desarrollo'),
  (7, 'Logística'),
  (8, 'Contabilidad'),
  (9, 'Sistemas'),
  (10, 'Gerencia');

  insert into empleados  (id_empleados,nombre,salario,id_departamentos)values

  (1, 'Juan Pérez', 50000.00, 1),
  (2, 'María García', 60000.00, 2),
  (3, 'Carlos Rodríguez', 70000.00, 3),
  (4, 'Ana López', 40000.00, 4),
  (5, 'Pedro Sánchez', 55000.00, 5),
  (6, 'Laura Martínez', 65000.00, 6),
  (7, 'José Luis Gómez', 45000.00, 7),
  (8, 'Sofía Díaz', 58000.00, 8),
  (9, 'Miguel Ángel Hernández', 62000.00, 9),
  (10, 'Elena González', 48000.00, 10);

  select * from empleados
select * from despartamentos



-->1.	Encuentra el nombre y salario de los empleados cuyo salario es mayor que el salario promedio de su departamento.

SELECT e.nombre, e.salario
FROM empleados e
JOIN (
  SELECT id_departamentos, AVG(salario) as salario_promedio
  FROM empleados
  GROUP BY id_departamentos
) as dp ON e.id_departamentos = dp.id_departamentos
WHERE e.salario > dp.salario_promedio;

-->2.	Encuentra el nombre y salario del empleado con el salario más alto en cada departamento.
SELECT e.nombre, e.salario, d.nombre_departamentos
FROM empleados e
JOIN despartamentos d ON e.id_departamentos = d.id_departamentos
WHERE (e.id_departamentos, e.salario) IN (
  SELECT id_departamentos, MAX(salario)
  FROM empleados
  GROUP BY id_departamentos
);

-->3.	Encuentra los departamentos que tienen más de 5 empleados.
SELECT d.nombre_departamentos, COUNT(e.id_empleados) as num_empleados
FROM empleados e
JOIN despartamentos d ON e.id_departamentos = d.id_departamentos
GROUP BY d.nombre_departamentos

HAVING COUNT(e.id_empleados) > 5;

-->4.	Lista los empleados cuyo salario es superior al promedio de toda la empresa.
SELECT e.nombre, e.salario
FROM empleados e
WHERE e.salario > (SELECT AVG(salario) FROM empleados);