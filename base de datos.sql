CREATE VIEW facturas_detalle AS
SELECT 
    f.id_factura,
    c.nombre AS cliente,
    e.nombre AS empleado,
    s.nombre AS sucursal,
    f.total
FROM factura f
JOIN pedido p ON f.id_pedido = p.id_pedido
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN empleado e ON p.id_empleado = e.id_empleado
JOIN sucursal s ON p.id_sucursal = s.id_sucursal;
CREATE VIEW detalle_factura_detalle AS
SELECT 
    df.id_factura,
    p.nombre AS producto,
    df.cantidad,
    df.precio_unitario
FROM detalle_factura df
JOIN producto p ON df.id_producto = p.id_producto;