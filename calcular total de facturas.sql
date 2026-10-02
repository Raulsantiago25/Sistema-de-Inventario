DELIMITER $$

CREATE TRIGGER calcular_total_factura_update
AFTER UPDATE ON detalle_factura
FOR EACH ROW
BEGIN
    UPDATE factura
    SET total = (
        SELECT IFNULL(SUM(cantidad * precio_unitario),0)
        FROM detalle_factura
        WHERE id_factura = NEW.id_factura
    )
    WHERE id_factura = NEW.id_factura;
END $$

DELIMITER ;
