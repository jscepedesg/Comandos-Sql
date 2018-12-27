//Agrega campos a una tabla ya echa

ALTER TABLE prueba ADD COLUMN poblacion VARCHAR(20);

//Elimina un campo de una tabla

ALTER TABLE prueba DROP COLUMN poblacion;

//Modifica una caracteristica de un campo de la tabla

ALTER TABLE prueba ALTER COLUMN codigo TINYINT;

// Modifica un valor predefinido

ALTER TABLE prueba ALTER codigo SET DEFAULT 'Deconocido';

//Elimanar el Valor por defecto

ALTER TABLE prueba ALTER codigo DROP DEFAULT;

