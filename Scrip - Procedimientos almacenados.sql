//Crea un procedimiento para la consulta de clientes

CREATE PROCEDURE muestra_clientes()

SELECT * 
FROM clientes
WHERE POBLACIÓN='MADRID';

//Crea un procedimiento almacenado para actualizar datos

CREATE PROCEDURE Actualiza_Productos(N_PRECIO INT,CODIGO VARCHAR(4))

UPDATE productos SET PRECIO = N_PRECIO
WHERE CÓDIGOARTÍCULO=CODIGO;

//Procedimiento para calcular la edad

DELIMITER $$
CREATE PROCEDURE calcula_edad(agno_nacimiento INT)
	BEGIN
    	DECLARE agno_nacimiento INT DEFAULT 2016;
        DECLARE edad INT;
        SET edad = agno_actual-agno_nacimiento;
        
    
    
    END;$$
    
DELIMITER ;

//Crea un trigger que revisa precios

DELIMITER $$
CREATE TRIGGER revisa_preci BEFORE UPDATE ON productos FOR EACH ROW

	BEGIN
    	IF(NEW.PRECIO<0)THEN
        	SET NEW.PRECIO=0;
        ELSEIF(NEW.PRECIO>1000)THEN
        	SET NEW.PRECIO=1000;
        END IF;
    
    
    END;$$
DELIMITER ;


