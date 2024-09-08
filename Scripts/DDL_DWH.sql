-- Tabla Cliente
CREATE TABLE Cliente (
    Codigo NVARCHAR(64) PRIMARY KEY,
    Nombre NVARCHAR(128),
    Direccion NVARCHAR(1024),
    Numero INT,
    Tipo NVARCHAR(16)
);

-- Tabla Producto
CREATE TABLE Producto (
    Codigo NVARCHAR(64) PRIMARY KEY,
    Nombre NVARCHAR(256),
    Marca NVARCHAR(256),
    Categoria NVARCHAR(32)
);

-- Tabla Proveedor
CREATE TABLE Proveedor (
    Codigo NVARCHAR(64) PRIMARY KEY,
    Nombre NVARCHAR(512),
    Direccion NVARCHAR(1024),
    Numero INT,
    Web NVARCHAR(16)
);

-- Tabla Sucursal
CREATE TABLE Sucursal (
    Codigo NVARCHAR(64) PRIMARY KEY,
    Nombre NVARCHAR(32),
    Direccion NVARCHAR(1024),
    Region NVARCHAR(32),
    Departamento NVARCHAR(32)
);

-- Tabla Vendedor
CREATE TABLE Vendedor (
    Codigo NVARCHAR(64) PRIMARY KEY,
    Nombre NVARCHAR(128),
    Vacacionista INT
);

-- Tabla Compra
CREATE TABLE Compra (
    Fecha DATE,
    Unidades INT,
    CostoUnitario FLOAT,
    CodProveedor NVARCHAR(64) FOREIGN KEY REFERENCES Proveedor(Codigo),
    CodProducto NVARCHAR(64) FOREIGN KEY REFERENCES Producto(Codigo),
    CodSucursal NVARCHAR(64) FOREIGN KEY REFERENCES Sucursal(Codigo)
);

-- Tabla Venta
CREATE TABLE Venta (
    Fecha DATE,
    Unidades INT,
    PrecioUnitario FLOAT,
    CodCliente NVARCHAR(64) FOREIGN KEY REFERENCES Cliente(Codigo),
    CodVendedor NVARCHAR(64) FOREIGN KEY REFERENCES Vendedor(Codigo),
    CodProducto NVARCHAR(64) FOREIGN KEY REFERENCES Producto(Codigo),
    CodSucursal NVARCHAR(64) FOREIGN KEY REFERENCES Sucursal(Codigo)
);