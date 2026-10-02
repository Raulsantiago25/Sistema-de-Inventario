CREATE VIEW pedidos_simple AS
SELECT 
    p.id_pedido,
    c.nombre AS cliente,
    e.nombre AS empleado,
    s.nombre AS sucursal
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN empleado e ON p.id_empleado = e.id_empleado
JOIN sucursal s ON p.id_sucursal = s.id_sucursal;
CREATE VIEW detalle_pedidos_simple AS
SELECT 
    dp.id_pedido,
    pr.nombre AS producto,
    dp.cantidad,
    dp.precio_unitario
FROM detalle_pedido dp
JOIN producto pr ON dp.id_producto = pr.id_producto;