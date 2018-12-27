// Lo ordena segun el tipo de dato, "Alfabeticamente".

SELECT * 
FROM productos 
WHERE SECCI�N = 'DEPORTES' OR SECCI�N = 'CER�MICA'
ORDER BY SECCI�N;

// Lo ordena segun el tipo de dato, "Alfabeticamente" pero de forma decendente.

SELECT * 
FROM productos 
WHERE SECCI�N = 'DEPORTES' OR SECCI�N = 'CER�MICA'
ORDER BY SECCI�N DESC;

//Ordena seg�n el primer criterio y bajo ese mismo criterio ordena lo que sigue.

SELECT * 
FROM productos 
WHERE SECCI�N = 'DEPORTES' OR SECCI�N = 'CER�MICA' 
ORDER BY SECCI�N,NOMBREART�CULO;