//Creacion de triggers

CREATE TRIGGER productos_ai 
AFTER INSERT ON productos FOR EACH ROW 
INSERT INTO reg_productos(codigo_articulo,nombre_articulo,precio,insertadi) 
VALUES (NEW.CÓDIGOARTÍCULO, NEW.NOMBREARTÍCULO,NEW.PRECIO,NOW());


// Eliminar el trigger

 DROP TRIGGER productos_ai;



