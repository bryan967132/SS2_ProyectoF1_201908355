# Tablas DWH
### Cliente
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `INT` |
| 2 | `Nombre` | `NVARCHAR(128)` |
| 3 | `Direccion` | `NVARCHAR(1024)` |
| 4 | `Numero` | `INT` |
| 5 | `Tipo` | `NVARCHAR(16)` |
### Producto
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `INT` |
| 2 | `Nombre` | `NVARCHAR(256)` |
| 3 | `Marca` | `NVARCHAR(256)` |
| 4 | `Categoria` | `NVARCHAR(32)` |
### Proveedor
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `INT` |
| 2 | `Nombre` | `NVARCHAR(512)` |
| 3 | `Direccion` | `NVARCHAR(1024)` |
| 4 | `Numero` | `INT` |
| 5 | `Web` | `NVARCHAR(16)` |
### Sucursal
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `INT` |
| 2 | `Nombre` | `NVARCHAR(32)` |
| 3 | `Direccion` | `NVARCHAR(1024)` |
| 4 | `Region` | `NVARCHAR(32)` |
| 5 | `Departamento` | `NVARCHAR(32)` |
### Vendedor
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `INT` |
| 2 | `Nombre` | `NVARCHAR(128)` |
| 3 | `Vacacionista` | `INT` |
### Compra
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Id` | `INT` |
| 2 | `Fecha` | `Date` |
| 3 | `Unidades` | `INT` |
| 4 | `CostoUnitario` | `FLOAT` |
| 5 | `FK` `CodProveedor` | `INT` |
| 6 | `FK` `CodProducto` | `INT` |
| 7 | `FK` `CodSucursal` | `INT` |
### Venta
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Id` | `INT` |
| 2 | `Fecha` | `Date` |
| 3 | `Unidades` | `INT` |
| 4 | `PrecioUnitario` | `FLOAT` |
| 5 | `FK` `CodCliente` | `INT` |
| 6 | `FK` `CodVendedor` | `INT` |
| 7 | `FK` `CodProducto` | `INT` |
| 8 | `FK` `CodSucursal` | `INT` |