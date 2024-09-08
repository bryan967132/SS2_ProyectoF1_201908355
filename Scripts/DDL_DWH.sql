-- Tabla Cliente
CREATE TABLE Cliente (
    Codigo INT PRIMARY KEY,
    Nombre NVARCHAR(128),
    Direccion NVARCHAR(1024),
    Numero INT,
    Tipo NVARCHAR(16)
);

-- Tabla Producto
CREATE TABLE Producto (
    Codigo INT PRIMARY KEY,
    Nombre NVARCHAR(256),
    Marca NVARCHAR(256),
    Categoria NVARCHAR(32)
);

-- Tabla Proveedor
CREATE TABLE Proveedor (
    Codigo INT PRIMARY KEY,
    Nombre NVARCHAR(512),
    Direccion NVARCHAR(1024),
    Numero INT,
    Web NVARCHAR(16)
);

-- Tabla Sucursal
CREATE TABLE Sucursal (
    Codigo INT PRIMARY KEY,
    Nombre NVARCHAR(32),
    Direccion NVARCHAR(1024),
    Region NVARCHAR(32),
    Departamento NVARCHAR(32)
);

-- Tabla Vendedor
CREATE TABLE Vendedor (
    Codigo INT PRIMARY KEY,
    Nombre NVARCHAR(128),
    Vacacionista INT
);

-- Tabla Compra
CREATE TABLE Compra (
    Id INT PRIMARY KEY,
    Fecha DATE,
    Unidades INT,
    CostoUnitario FLOAT,
    CodProveedor INT FOREIGN KEY REFERENCES Proveedor(Codigo),
    CodProducto INT FOREIGN KEY REFERENCES Producto(Codigo),
    CodSucursal INT FOREIGN KEY REFERENCES Sucursal(Codigo)
);

-- Tabla Venta
CREATE TABLE Venta (
    Id INT PRIMARY KEY,
    Fecha DATE,
    Unidades INT,
    PrecioUnitario FLOAT,
    CodCliente INT FOREIGN KEY REFERENCES Cliente(Codigo),
    CodVendedor INT FOREIGN KEY REFERENCES Vendedor(Codigo),
    CodProducto INT FOREIGN KEY REFERENCES Producto(Codigo),
    CodSucursal INT FOREIGN KEY REFERENCES Sucursal(Codigo)
);