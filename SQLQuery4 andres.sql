use tienda
go

create table  eventos(
id_evento INT PRIMARY KEY,
nombre_evento varchar (100),
fecha_inicio date,
fecha_fin date
);


INSERT INTO eventos (id_evento, nombre_evento, fecha_inicio, fecha_fin) VALUES
(1, 'Conferencia de Tecnología', '2023-03-01', '2023-03-15'),
(2, 'Festival de Música', '2023-06-10', '2023-06-20'),
(3, 'Maratón de Running', '2023-04-05', '2023-04-10'),
(4, 'Exposición de Arte', '2023-05-15', '2023-05-25'),
(5, 'Seminario de Marketing', '2023-02-20', '2023-02-28'),
(6, 'Feria de Comida', '2023-07-01', '2023-07-10'),
(7, 'Concierto de Rock', '2023-08-10', '2023-08-15'),
(8, 'Torneo de Fútbol', '2023-09-05', '2023-09-20'),
(9, 'Festival de Cine', '2023-10-10', '2023-10-15'),
(10, 'Congreso de Medicina', '2023-11-15', '2023-11-25');

-->1.	Encuentra todos los eventos que empiezan y terminan en el mismo mes.
SELECT *
FROM eventos
WHERE MONTH(fecha_inicio) = MONTH(fecha_fin);

-->2.	Calcula la duración de cada evento en días.

SELECT 
  nombre_evento,
  DATEDIFF(DAY,fecha_inicio, fecha_fin) +1 AS DuracionEnDias
   from eventos

-->3.	Encuentra todos los eventos que duran más de 10 días.

SELECT *
FROM eventos
WHERE DATEDIFF(DAY,fecha_fin, fecha_inicio) >= 10;





-->4.	Lista todos los eventos que ocurrieron en los últimos 30 días a partir de hoy.

SELECT 
  id_evento, 
  nombre_evento, 
  fecha_inicio, 
  fecha_fin
FROM eventos
WHERE fecha_inicio >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);