//Me calcula el valor del precio mas el iva para todos los articulos
SELECT NOMBREARTÍCULO,SECCIÓN,PRECIO, PRECIO*1.21 AS "+ IVA"
FROM productos;


//Me rodendea a solo los dos primeros campos despues de la coma
SELECT NOMBREARTÍCULO,SECCIÓN,PRECIO, ROUND(PRECIO*1.21, 2) AS "+ IVA"
FROM productos;


//Me muestra la fecha actual y me calcula la diferencia en dias desde la fecha de inicio hasta la actual
SELECT NOMBREARTÍCULO,SECCIÓN,PRECIO, FECHA, NOW() AS "DÍA DE HOY", DATEDIFF(NOW(),FECHA) AS "DIAS DE DIFERENCIA"
FROM productos;