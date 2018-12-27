//Me suma la totalidad de valores del precio por articulo o sección  según el campo elegido
SELECT SECCIÓN, SUM(PRECIO)
FROM productos
GROUP BY SECCIÓN;


//Ordena por el alias que se uso en la consulta
SELECT SECCIÓN, SUM(PRECIO) AS Valor_total 
FROM productos 
GROUP BY SECCIÓN ORDER BY Valor_total;


// Me cuenta el numero de clientes por población 
SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS "Numero de clientes"
FROM clientes
GROUP BY POBLACIÓN;


//Me muestra el precio mas alto de un producto por seccion que sea igual a confección 
SELECT SECCIÓN, MAX(PRECIO) As "PRECIO MAS ALTO"
FROM productos
WHERE SECCIÓN="CONFECCIÓN"
GROUP BY SECCIÓN;