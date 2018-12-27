// Lo ordena segun el tipo de dato, "Alfabeticamente".

SELECT * 
FROM productos 
WHERE SECCIÓN = 'DEPORTES' OR SECCIÓN = 'CERÁMICA'
ORDER BY SECCIÓN;

// Lo ordena segun el tipo de dato, "Alfabeticamente" pero de forma decendente.

SELECT * 
FROM productos 
WHERE SECCIÓN = 'DEPORTES' OR SECCIÓN = 'CERÁMICA'
ORDER BY SECCIÓN DESC;

//Ordena según el primer criterio y bajo ese mismo criterio ordena lo que sigue.

SELECT * 
FROM productos 
WHERE SECCIÓN = 'DEPORTES' OR SECCIÓN = 'CERÁMICA' 
ORDER BY SECCIÓN,NOMBREARTÍCULO;