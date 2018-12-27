//Crea una tabla con dos campor

CREATE TABLE prueba
(
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

//ejemplo 2

CREATE TABLE prueba
(nombre VARCHAR(20),
 apellido VARCHAR(20),
 edad TINYINT,
 fecha_de_nacimiento DATE
);

//Crea una tabla con un campo  auto numerico, con llave primaria

CREATE TABLE prueba
(
  id_alumno INT AUTO_INCREMENT,
  nombre VARCHAR(20),
  apellido VARCHAR(20),
  edad TINYINT,
  fecha DATE,
  PRIMARY KEY (id_alumno)
);

//Elimina tablas o bases de datos

DROP TABLE prueba;