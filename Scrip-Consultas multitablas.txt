//Me devuelve una consulta con la unio de dos tablas, con el mismo tipo de campos y mismo tipo de dato, pero pueden tener diferentes
tipos de nombres para las columnas

SELECT *
FROM productos
WHERE SECCIÓN='DEPORTES' UNION 
SELECT *
FROM productosnuevos
WHERE SECCIÓN='DEPORTES DE RIESGO';

//Me devuelve una consulta con la unio de dos tablas, con la misma cantidad de campos y mismo tipo de dato, pero pueden tener diferentes
tipos de nombres para las columnas, si hay registros que se repiten me devuelve todas 

SELECT *
FROM productos
WHERE SECCIÓN='DEPORTES' UNION ALL
SELECT *
FROM productosnuevos
WHERE SECCIÓN='DEPORTES DE RIESGO';

//Me devulve la union de las dos tablas que estan relacionadas

SELECT * 
FROM CLIENTES INNER JOIN PEDIDOS 
ON CLIENTES.[CÓDIGO CLIENTE]=PEDIDOS.[CÓDIGO CLIENTE];

//Me devuelve la union de las dos tablas mas, las intancias de la tabla 1

SELECT * 
FROM CLIENTES LEFT JOIN PEDIDOS 
ON CLIENTES.[CÓDIGO CLIENTE]=PEDIDOS.[CÓDIGO CLIENTE];

