//Me calcula el valor del precio mas el iva para todos los articulos
SELECT NOMBREART�CULO,SECCI�N,PRECIO, PRECIO*1.21 AS "+ IVA"
FROM productos;


//Me rodendea a solo los dos primeros campos despues de la coma
SELECT NOMBREART�CULO,SECCI�N,PRECIO, ROUND(PRECIO*1.21, 2) AS "+ IVA"
FROM productos;


//Me muestra la fecha actual y me calcula la diferencia en dias desde la fecha de inicio hasta la actual
SELECT NOMBREART�CULO,SECCI�N,PRECIO, FECHA, NOW() AS "D�A DE HOY", DATEDIFF(NOW(),FECHA) AS "DIAS DE DIFERENCIA"
FROM productos;