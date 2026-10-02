DELIMITER $$

CREATE PROCEDURE insertar_piezas()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 80 DO
        INSERT INTO piezas (nombre, tipo, descripcion, medida, precio_costo, cantidad_stock)
        VALUES (
            CONCAT('Pieza ', i),
            ELT(1 + (i % 5), 'Silenciador','Tubo','Catalizador','Punta','Resonador'),
            CONCAT('Descripción de pieza ', i),
            CONCAT(2 + (i % 3), ' pulgadas'),
            200 + (i * 15),
            5 + (i % 20)
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL insertar_piezas();
DELIMITER $$

CREATE PROCEDURE insertar_compatibilidad()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 80 DO
        INSERT INTO compatibilidad (id_pieza, id_modelo)
        VALUES 
        (i, (i % 50) + 1),
        (i, ((i+5) % 50) + 1),
        (i, ((i+10) % 50) + 1);
        
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL insertar_compatibilidad();