-- Contar registros en todas las tablas y combinar resultados en un solo conjunto
SELECT 'Cliente' AS Tabla, COUNT(*) AS 'Total Registros' FROM Cliente
UNION ALL
SELECT 'Producto', COUNT(*) FROM Producto
UNION ALL
SELECT 'Proveedor', COUNT(*) FROM Proveedor
UNION ALL
SELECT 'Sucursal', COUNT(*) FROM Sucursal
UNION ALL
SELECT 'Vendedor', COUNT(*) FROM Vendedor
UNION ALL
SELECT 'Compra', COUNT(*) FROM Compra
UNION ALL
SELECT 'Venta', COUNT(*) FROM Venta;