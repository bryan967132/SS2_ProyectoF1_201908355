# Tablas DWH
### Cliente
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `Codigo NVARCHAR(64)` |
| 2 | `Nombre` | `NVARCHAR(128)` |
| 3 | `Direccion` | `NVARCHAR(1024)` |
| 4 | `Numero` | `INT` |
| 5 | `Tipo` | `NVARCHAR(16)` |
### Producto
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `Codigo NVARCHAR(64)` |
| 2 | `Nombre` | `NVARCHAR(256)` |
| 3 | `Marca` | `NVARCHAR(256)` |
| 4 | `Categoria` | `NVARCHAR(32)` |
### Proveedor
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `Codigo NVARCHAR(64)` |
| 2 | `Nombre` | `NVARCHAR(512)` |
| 3 | `Direccion` | `NVARCHAR(1024)` |
| 4 | `Numero` | `INT` |
| 5 | `Web` | `NVARCHAR(16)` |
### Sucursal
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `Codigo NVARCHAR(64)` |
| 2 | `Nombre` | `NVARCHAR(32)` |
| 3 | `Direccion` | `NVARCHAR(1024)` |
| 4 | `Region` | `NVARCHAR(32)` |
| 5 | `Departamento` | `NVARCHAR(32)` |
### Vendedor
| No | Campo | Tipo |
| - | - | - |
| 1 | `PK` `Codigo` | `Codigo NVARCHAR(64)` |
| 2 | `Nombre` | `NVARCHAR(128)` |
| 3 | `Vacacionista` | `INT` |
### Compra
| No | Campo | Tipo |
| - | - | - |
| 1 | `Fecha` | `Date` |
| 2 | `Unidades` | `INT` |
| 3 | `CostoUnitario` | `FLOAT` |
| 4 | `FK` `CodProveedor` | `NVARCHAR(64)` |
| 5 | `FK` `CodProducto` | `NVARCHAR(64)` |
| 6 | `FK` `CodSucursal` | `NVARCHAR(64)` |
### Venta
| No | Campo | Tipo |
| - | - | - |
| 1 | `Fecha` | `Date` |
| 2 | `Unidades` | `INT` |
| 3 | `PrecioUnitario` | `FLOAT` |
| 4 | `FK` `CodCliente` | `NVARCHAR(64)` |
| 5 | `FK` `CodVendedor` | `NVARCHAR(64)` |
| 6 | `FK` `CodProducto` | `NVARCHAR(64)` |
| 7 | `FK` `CodSucursal` | `NVARCHAR(64)` |