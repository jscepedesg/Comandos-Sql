//Me suma la totalidad de valores del precio por articulo o secci�n  seg�n el campo elegido
SELECT SECCI�N, SUM(PRECIO)
FROM productos
GROUP BY SECCI�N;


//Ordena por el alias que se uso en la consulta
SELECT SECCI�N, SUM(PRECIO) AS Valor_total 
FROM productos 
GROUP BY SECCI�N ORDER BY Valor_total;


// Me cuenta el numero de clientes por poblaci�n 
SELECT POBLACI�N, COUNT(C�DIGOCLIENTE) AS "Numero de clientes"
FROM clientes
GROUP BY POBLACI�N;


//Me muestra el precio mas alto de un producto por seccion que sea igual a confecci�n 
SELECT SECCI�N, MAX(PRECIO) As "PRECIO MAS ALTO"
FROM productos
WHERE SECCI�N="CONFECCI�N"
GROUP BY SECCI�N;