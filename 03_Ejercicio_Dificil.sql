-- 1. Crear tabla "Productos"
CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre TEXT,
    precio DECIMAL
);

-- 2. Insertar al menos cinco registros en "Productos"
INSERT INTO Productos (id, nombre, precio) VALUES
    (1, 'Producto1', 20.50),
    (2, 'Producto2', 35.75),
    (3, 'Producto3', 15.00),
    (4, 'Producto4', 50.25),
    (5, 'Producto5', 10.99);

-- 3. Actualizar el precio de un producto
UPDATE Productos SET precio = 25.00 WHERE id = 3;

-- 4. Eliminar un producto
DELETE FROM Productos WHERE id = 4;

-- 5. Consultar nombres de usuarios con nombres de productos comprados (INNER JOIN con Productos)
SELECT Usuarios.nombre AS nombre_usuario, Productos.nombre AS nombre_producto
FROM Usuarios
INNER JOIN Pedidos ON Usuarios.id = Pedidos.cliente_id
INNER JOIN Productos ON Pedidos.producto_id = Productos.id;
