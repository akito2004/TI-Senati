---EJERCICIO 16
--USO DE INNER  JOIN
---CLAUSUAL HAVING
SELECT APELLIDO_PATERNO, COUNT(*)AS CANTIDAD FROM PERSONA
GROUP BY APELLIDO_PATERNO;
HAVING COUNT(*) >=  2

;


SELECT * FROM PERSONA P;
INNER JOIN GENEROS G ON P.ID_GENEROS = G.ID_GENEROS;


-Ejercicio 17 JOINS
--Uso de INNER JOIN
SELECT * FROM PERSONA p
inner join genero g on p.id_genero = g.id_genero;

--Ejercicio 18 JOINS
--Uso de LEFT JOIN
SELECT * FROM genero g;
left join persona p on p.id_genero = g.id_genero;

--Ejercicio 19 JOINS
--Uso de RIGHT JOIN
SELECT * FROM persona P;
right join estado_civil ec on p.id_estado_civil= ec.id_estado_civil;