//Crea una tabla con una clave primaria

CREATE TABLE pruebaa 
(
    codigo TINYINT,
    nom VARCHAR(50),
    apell VARCHAR(50),
    PRIMARY KEY(codigo) 
);

//Crea doble llave primaria en una tabla

ALTER TABLE pruebaa ADD PRIMARY KEY(codigo,nom);

//Crea un indice ordinario

CREATE INDEX miindice ON pruebaa(nom);

//Crea un indice unico

CREATE UNIQUE INDEX indice ON pruebaa(apell);

// Crea un indice compuesto 

CREATE UNIQUE INDEX indice ON pruebaa(nom,apell);

//Elimina los indices

DROP INDEX miindice ON pruebaa;





