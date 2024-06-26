create database  tienda

create table clientes (
id_cliente int PRIMARY KEY,
nombre varchar(100),
ciudad varchar (100),
);
create table pedidos(
id_pedidos INT PRIMARY KEY,
id_cliente INT  FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
 fecha_pedido date,
 total DECIMAL (10,2)
 );
 INSERT INTO Clientes (id_cliente, nombre, ciudad) VALUES
(1, 'Juan Pérez', 'Madrid'),
(2, 'María García', 'Barcelona'),
(3, 'Carlos Rodríguez', 'Valencia'),
(4, 'Ana López', 'Sevilla'),
(5, 'Pedro Sánchez', 'Bilbao'),
(6, 'Sofía Martínez', 'Zaragoza'),
(7, 'Luis González', 'Málaga'),
(8, 'Isabel Díaz', 'Alicante'),
(9, 'Francisco Jiménez', 'Córdoba'),
(10, 'Elena Morales', 'Granada');
INSERT INTO Pedidos (id_pedidos, id_cliente, fecha_pedido, total) VALUES
(1, 1, '2022-01-01', 100.00),
(2, 2, '2022-01-15', 50.00),
(3, 3, '2022-02-01', 200.00),
(4, 1, '2022-03-01', 150.00),
(5, 4, '2022-04-01', 80.00),
(6, 2, '2022-05-01', 120.00),
(7, 3, '2022-06-01', 250.00),
(8, 1, '2022-07-01', 180.00),
(9, 5, '2022-08-01', 60.00),
(10, 4, '2022-09-01', 220.00);

select * from clientes
select * from pedidos


-->1.	Obtén una lista de todos los clientes y sus pedidos. Incluye clientes que no tienen pedidos.
SELECT c.id_cliente, c.nombre, c.ciudad, p.id_pedidos, p.fecha_pedido, p.total
FROM Clientes c
LEFT JOIN Pedidos p ON c.id_cliente = p.id_cliente
ORDER BY c.id_cliente;

-->2.	Obtén una lista de todos los pedidos junto con la información del cliente que hizo el pedido.
SELECT p.id_pedidos, p.fecha_pedido, p.total, c.id_cliente, c.nombre, c.ciudad
FROM Pedidos p
INNER JOIN Clientes c ON p.id_cliente = c.id_cliente
ORDER BY p.id_pedidos;

-->3.	Encuentra la cantidad total de dinero gastado por cada cliente.
SELECT c.id_cliente, c.nombre, SUM(p.total) AS total_gastado
FROM Pedidos p
INNER JOIN Clientes c ON p.id_cliente = c.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY total_gastado DESC;
-->4.	Encuentra todos los clientes que no han hecho ningún pedido.
SELECT *
FROM Clientes c
LEFT JOIN Pedidos p ON c.id_cliente = p.id_cliente
WHERE p.id_cliente IS NULL;
