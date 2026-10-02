DELIMITER $$

CREATE FUNCTION total_pedidos(p_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(cantidad * precio_unitario)
    INTO total
    FROM detalle_pedido
    WHERE id_pedido = p_id;

    RETURN IFNULL(total,0);
END $$

DELIMITER ;