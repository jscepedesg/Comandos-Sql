//Realiza una subconsulta que me muestra los articulos que son mayor a la media
SELECT NOMBREARTÍCULO, SECCIÓN
FROM productos
WHERE PRECIO > (SELECT AVG(PRECIO) FROM productos);


//Realiza una subconsulta que me muetra todos los productos que sus precios son mayores a todos los productos de ceramica
SELECT * 
FROM productos
WHERE PRECIO > ALL (SELECT PRECIO
FROM productos
WHERE SECCIÓN = 'CERÁMICA');


//Realiza una subconsulta que me muetra todos los productos que sus precios son mayores a cualquiera de  los productos de Jugueteria
SELECT *
FROM productos
WHERE PRECIO > ANY (SELECT PRECIO
FROM productos
WHERE SECCIÓN = 'JUGUETERÍA');

//
SELECT NOMBREARTÍCULO, PRECIO
FROM PRODUCTOS
WHERE CÓDIGOARTÍCULO IN (SELECT CÓDIGOARTÍCULO
FROM PRODUCTOSPEDIDOS
WHERE UNIDADES > 20);


//
SELECT EMPRESA, POBLACIÓN
FROM CLIENTES
WHERE CÓDIGOCLIENTE NOT IN (SELECT CÓDIGOCLIENTE
FROM PEDIDOS
WHERE FORMADEPAGO= "TARJETA");