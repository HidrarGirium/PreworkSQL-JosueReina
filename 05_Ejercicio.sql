-- 1. Crear tabla "Clientes"
CREATE TABLE Clientes (
    id INT,
    nombre TEXT
);

-- 2. Insertar cliente con id=1 y nombre='John'
INSERT INTO Clientes (id, nombre) VALUES (1, 'John');

-- 3. Actualizar nombre del cliente con id=1 a 'John Doe'
UPDATE Clientes SET nombre = 'John Doe' WHERE id = 1;

-- 4. Eliminar cliente con id=1
DELETE FROM Clientes WHERE id = 1;

-- 5. Leer todos los clientes
SELECT * FROM Clientes;

-- 6. Crear tabla "Pedidos"
CREATE TABLE Pedidos (
    id INT,
    cliente_id INT
);

-- 7. Insertar pedido con id=1 y cliente_id=1
INSERT INTO Pedidos (id, cliente_id) VALUES (1, 1);

-- 8. Actualizar cliente_id del pedido con id=1 a 2
UPDATE Pedidos SET cliente_id = 2 WHERE id = 1;

-- 9. Eliminar pedido con id=1
DELETE FROM Pedidos WHERE id = 1;

-- 10. Leer todos los pedidos
SELECT * FROM Pedidos;

-- 11. Crear tabla "Productos"
CREATE TABLE Productos (
    id INT,
    nombre TEXT
);

-- 12. Insertar producto con id=1 y nombre='Camisa'
INSERT INTO Productos (id, nombre) VALUES (1, 'Camisa');

-- 13. Actualizar nombre del producto con id=1 a 'Pantalón'
UPDATE Productos SET nombre = 'Pantalón' WHERE id = 1;

-- 14. Eliminar producto con id=1
DELETE FROM Productos WHERE id = 1;

-- 15. Leer todos los productos
SELECT * FROM Productos;

-- 16. Crear tabla "DetallesPedido"
CREATE TABLE DetallesPedido (
    pedido_id INT,
    producto_id INT
);

-- 17. Insertar detalle de pedido con pedido_id=1 y producto_id=1
INSERT INTO DetallesPedido (pedido_id, producto_id) VALUES (1, 1);

-- 18. Actualizar producto_id del detalle de pedido con pedido_id=1 a 2
UPDATE DetallesPedido SET producto_id = 2 WHERE pedido_id = 1;

-- 19. Eliminar detalle de pedido con pedido_id=1
DELETE FROM DetallesPedido WHERE pedido_id = 1;

-- 20. Leer todos los detalles de pedido
SELECT * FROM DetallesPedido;

-- 21. Consulta para obtener todos los clientes y sus pedidos correspondientes (INNER JOIN)
SELECT Usuarios.*, Pedidos.*
FROM Usuarios
INNER JOIN Pedidos ON Usuarios.id = Pedidos.cliente_id;

-- 22. Consulta para obtener todos los clientes y sus pedidos correspondientes (LEFT JOIN)
SELECT Usuarios.*, Pedidos.*
FROM Usuarios
LEFT JOIN Pedidos ON Usuarios.id = Pedidos.cliente_id;

-- 23. Consulta para obtener todos los productos y los detalles de pedido correspondientes (INNER JOIN)
SELECT Productos.*, DetallesPedido.*
FROM Productos
INNER JOIN DetallesPedido ON Productos.id = DetallesPedido.producto_id;

-- 24. Consulta para obtener todos los productos y los detalles de pedido correspondientes (LEFT JOIN)
SELECT Productos.*, DetallesPedido.*
FROM Productos
LEFT JOIN DetallesPedido ON Productos.id = DetallesPedido.producto_id;

-- Ejercicios 5

-- 25. Agregar nueva columna "telefono" de tipo cadena de texto en la tabla "Clientes"
ALTER TABLE Clientes ADD COLUMN telefono TEXT;

-- 26. Modificar tipo de datos de la columna "telefono" a entero en la tabla "Clientes"
ALTER TABLE Clientes ALTER COLUMN telefono TYPE INT USING telefono::INT;

-- 27. Eliminar columna "telefono" de la tabla "Clientes"
ALTER TABLE Clientes DROP COLUMN telefono;

-- 28. Cambiar nombre de la tabla "Clientes" a "Usuarios"
ALTER TABLE Clientes RENAME TO Usuarios;

-- 29. Cambiar nombre de la columna "nombre" en la tabla "Usuarios" a "nombre_completo"
ALTER TABLE Usuarios RENAME COLUMN nombre TO nombre_completo;

-- 30. Agregar restricción de clave primaria a la columna "id" en la tabla "Usuarios"
ALTER TABLE Usuarios ADD PRIMARY KEY (id);
