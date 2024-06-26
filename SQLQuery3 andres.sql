use tienda
go

create table ventas (
id_ventas INT PRIMARY KEY,
id_producto INT FOREIGN KEY (id_producto) references  producto(id_producto),
cantidad INT,
fecha_venta date
);
create table producto(
id_producto INT PRIMARY KEY,
nombre_producto varchar (100),
precio decimal (10,2)
);

INSERT INTO ventas (id_ventas, id_producto, cantidad, fecha_venta) VALUES
(1, 1, 2, '2022-01-01'),
(2, 3, 1, '2022-01-05'),
(3, 2, 3, '2022-01-10'),
(4, 1, 1, '2022-01-12'),
(5, 4, 2, '2022-01-15'),
(6, 5, 1, '2022-01-18'),
(7, 2, 2, '2022-01-20'),
(8, 3, 3, '2022-01-22'),
(9, 1, 2, '2022-01-25'),
(10, 4, 1, '2022-01-28');

INSERT INTO producto (id_producto, nombre_producto, precio) VALUES
(1, 'Televisor LED', 500.00),
(2, 'Laptop HP', 800.00),
(3, 'Smartphone Samsung', 300.00),
(4, 'Tablet Apple', 400.00),
(5, 'Impresora Epson', 150.00),
(6, 'Monitor Gaming', 250.00),
(7, 'Auriculares Sony', 50.00),
(8, 'Mouse Wireless', 20.00),
(9, 'Teclado Mecánico', 80.00),
(10, 'Parlante Bluetooth', 100.00);

  select * from producto
select * from ventas


-->1.	Calcula el total de ventas (cantidad * precio) por producto.
Open in Editor
Edit
Copy code

SELECT 
  p.nombre_producto, 
  SUM(v.cantidad * p.precio) AS total_ventas
FROM 
  ventas v 
  INNER JOIN producto p ON v.id_producto = p.id_producto
GROUP BY 
  p.nombre_producto
ORDER BY 
  total_ventas DESC;

  -->2.	Encuentra el producto más vendido (por cantidad).
  SELECT 
  p.nombre_producto, 
  SUM(v.cantidad) AS cantidad_vendida
FROM 
  ventas v 
  INNER JOIN producto p ON v.id_producto = p.id_producto
GROUP BY 
  p.nombre_producto
ORDER BY 
  cantidad_vendida DESC

LIMIT 1;

-->3.	Encuentra el mes con mayores ventas.
SELECT MONTH(v.fecha) AS mes,
  SUM(v.cantidad * p.precio) AS total_ventas
FROM 
  ventas v 
  INNER JOIN producto p ON v.id_producto = p.id_producto
GROUP BY 
  mes
ORDER BY 
  total_ventas DESC
LIMIT 1;

-->4.	Calcula el ingreso total generado por cada producto en el año 2023.
SELECT 
  p.nombre_producto,
  SUM(v.cantidad * p.precio) AS ingreso_total
FROM 
  ventas v 
  INNER JOIN producto p ON v.id_producto = p.id_producto
WHERE 
  YEAR(v.fecha_venta) = 2022
GROUP BY 
  p.nombre_producto
ORDER BY 
  ingreso_total DESC;