SELECT 
    p.nombre AS pieza,
    p.tipo,
    p.medida,
    CONCAT('$', FORMAT(p.precio_costo, 2)) AS precio,
    GROUP_CONCAT(
        CONCAT(m.nombre_modelo, ' ', m.anio_modelo, ' (', ma.nombre_marca, ')') 
        SEPARATOR ', '
    ) AS compatible_con
FROM compatibilidad c
JOIN piezas p ON c.id_pieza = p.id_pieza
JOIN modelos m ON c.id_modelo = m.id_modelo
JOIN marcas ma ON m.id_marca = ma.id_marca
GROUP BY p.id_pieza;