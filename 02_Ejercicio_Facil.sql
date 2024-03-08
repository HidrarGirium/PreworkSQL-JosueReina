-- 1. Crear base de datos "MiBaseDeDatos"
CREATE DATABASE MiBaseDeDatos;

-- 2. Crear tabla "Usuarios"
USE MiBaseDeDatos;
CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombre TEXT,
    edad INT
);

-- 3. Insertar dos registros en "Usuarios"
INSERT INTO Usuarios (id, nombre, edad) VALUES
    (1, 'Usuario1', 25),
    (2, 'Usuario2', 30);

-- 4. Actualizar la edad de un usuario
UPDATE Usuarios SET edad = 28 WHERE id = 1;

-- 5. Eliminar un usuario
DELETE FROM Usuarios WHERE id = 2;

-- 1. Crear tabla "Ciudades"
CREATE TABLE Ciudades (
    id INT PRIMARY KEY,
    nombre TEXT,
    pais TEXT
);

-- 2. Insertar al menos tres registros en "Ciudades"
INSERT INTO Ciudades (id, nombre, pais) VALUES
    (1, 'Ciudad1', 'Pais1'),
    (2, 'Ciudad2', 'Pais2'),
    (3, 'Ciudad3', 'Pais3');

-- 3. Crear foreign key en "Usuarios" que se relacione con "Ciudades"
ALTER TABLE Usuarios
ADD COLUMN ciudad_id INT,
ADD FOREIGN KEY (ciudad_id) REFERENCES Ciudades(id);

-- 4. Consultar nombres de usuarios con nombre de ciudad y país (LEFT JOIN)
SELECT Usuarios.nombre, Ciudades.nombre AS ciudad, Ciudades.pais
FROM Usuarios
LEFT JOIN Ciudades ON Usuarios.ciudad_id = Ciudades.id;

-- 5. Consultar usuarios con ciudad asociada (INNER JOIN)
SELECT Usuarios.nombre, Ciudades.nombre AS ciudad
FROM Usuarios
INNER JOIN Ciudades ON Usuarios.ciudad_id = Ciudades.id
WHERE Usuarios.ciudad_id IS NOT NULL;
