SELECT 
    mo.id_movimiento,
    CONCAT(p.nombre, ' ', p.medida) AS pieza,
    p.tipo,
    CASE 
        WHEN mo.tipo_movimiento = 'entrada' THEN 'Entrada al almacén'
        WHEN mo.tipo_movimiento = 'salida' THEN 'Salida por venta/instalación'
    END AS tipo_movimiento,
    mo.cantidad,
    DATE_FORMAT(mo.fecha, '%d/%m/%Y') AS fecha,
    CONCAT('Movimiento de ', mo.cantidad, ' pieza(s)') AS descripcion
FROM movimientos mo
JOIN piezas p ON mo.id_pieza = p.id_pieza
ORDER BY mo.fecha DESC;