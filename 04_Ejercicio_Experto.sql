-- 1. Crear tabla "Pedidos"
CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    id_usuario INT,
    id_producto INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

-- 2. Insertar al menos tres registros en "Pedidos"
INSERT INTO Pedidos (id, id_usuario, id_producto) VALUES
    (1, 1, 2),
    (2, 2, 4),
    (3, 3, 1);

-- 3. Consultar nombres de usuarios y nombres de productos comprados (incluidos los que no han realizado ningún pedido)
SELECT Usuarios.nombre AS nombre_usuario, COALESCE(Productos.nombre, 'Ningún pedido') AS nombre_producto
FROM Usuarios
LEFT JOIN Pedidos ON Usuarios.id = Pedidos.id_usuario
LEFT JOIN Productos ON Pedidos.id_producto = Productos.id;

-- 4. Consultar nombres de usuarios que han realizado o no un pedido (utilizando LEFT JOIN)
SELECT Usuarios.nombre AS nombre_usuario
FROM Usuarios
LEFT JOIN Pedidos ON Usuarios.id = Pedidos.id_usuario;

-- 5. Agregar columna "cantidad" a la tabla "Pedidos" y actualizar registros existentes
ALTER TABLE Pedidos ADD COLUMN cantidad INT;

-- Actualizar registros existentes con un valor para la columna "cantidad"
UPDATE Pedidos SET cantidad = 2 WHERE id = 1;
UPDATE Pedidos SET cantidad = 3 WHERE id = 2;
UPDATE Pedidos SET cantidad = 1 WHERE id = 3;
