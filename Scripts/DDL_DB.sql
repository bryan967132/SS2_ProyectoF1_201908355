-- Tabla Temporal Compra
CREATE TABLE Temp1 (
    -- Compra
    Fecha NVARCHAR(64),
    -- Proveedor
    CodProveedor NVARCHAR(64), --  1
    NombreProveedor NVARCHAR(512), --  2
    DireccionProveedor NVARCHAR(1024), --  3
    NumeroProveedor NVARCHAR(32), --  4
    WebProveedor NVARCHAR(16), --  5
    -- Producto
    CodProducto NVARCHAR(64), -- 1
    NombreProducto NVARCHAR(256), -- 2
    MarcaProducto NVARCHAR(256), -- 3
    Categoria NVARCHAR(32), -- 4
    -- Sucursal
    SodSuSursal NVARCHAR(64), -- 1
    NombreSucursal NVARCHAR(32), -- 2
    DireccionSucursal NVARCHAR(1024), -- 3
    Region NVARCHAR(32), -- 4
    Departamento NVARCHAR(32), -- 5
    -- Compra
    Unidades NVARCHAR(16),
    CostoU NVARCHAR(16)
);

-- Tabla Temporal Venta
CREATE TABLE Temp2 (
    -- Venta
    Fecha NVARCHAR(16),
    -- Cliente
    CodigoCliente NVARCHAR(64), -- 1
    NombreCliente NVARCHAR(128), -- 2
    TipoCliente NVARCHAR(16), -- 3
    DireccionCliente NVARCHAR(1024), -- 4
    NumeroCliente NVARCHAR(32), -- 5
    -- Vendedor
    CodVendedor NVARCHAR(64), -- 1
    NombreVendedor NVARCHAR(128), -- 2
    Vacacionista NVARCHAR(8), -- 3
    -- Producto
    CodProducto NVARCHAR(64), -- 1
    NombreProducto NVARCHAR(256), -- 2
    MarcaProducto NVARCHAR(256), -- 3
    Categoria NVARCHAR(32), -- 4
    -- Sucursal
    SodSuSursal NVARCHAR(64), -- 1
    NombreSucursal NVARCHAR(32), -- 2
    DireccionSucursal NVARCHAR(1024), -- 3
    Region NVARCHAR(32), -- 4
    Departamento NVARCHAR(32), -- 5
    -- Venta
    Unidades NVARCHAR(16),
    PrecioUnitario NVARCHAR(16)
);