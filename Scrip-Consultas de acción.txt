//Actualiza datos en una tabla para una sección en especifico

UPDATE PRODUCTOS 
SET PRECIO = PRECIO+10
WHERE SECCIÓN ='DEPORTES';

//Actaliza datos en una tabla para tipo de datos caracter 

UPDATE PRODUCTOS
SET SECCIÓN = 'DEPORTIVOS'
WHERE SECCIÓN = 'DEPORTES';

//Me crea una copia o una nueva tabla con base en una tabla ya creada en la base de datos para bases de datos sqlserver o access

SELECT * INTO CLIENTES_MADRID
FROM CLIENTES
WHERE POBLACIÓN = 'MADRID' ;


//Me crea una copia o una nueva tabla con base en una tabla ya creada en la base de datos para bases de datos Mysql

CREATE TABLE clientes_madrid 
SELECT * 
FROM clientes
WHERE POBLACIÓN = 'MADRID';

//Elimina datos de una tabla

DELETE FROM CLIENTES
WHERE POBLACIÓN = 'MADRID';


//Anexa o agrega datos a una tabla con base en otra tabla

INSERT INTO CLIENTES
SELECT *
FROM CLIENTES_MADRID;