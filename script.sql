CREATE DATABASE techstore_santander;
USE techstore_santander;

-- Tabla usuarios
CREATE TABLE usuarios (
    id_usuario BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE,
    password VARCHAR(255) NOT NULL,
    rol VARCHAR(50) NOT NULL
);

-- Tabla clientes
CREATE TABLE clientes (
    id_cliente BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100)
);

-- Tabla productos
CREATE TABLE productos (
    id_producto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

-- Tabla ventas
CREATE TABLE ventas (
    id_venta BIGINT AUTO_INCREMENT PRIMARY KEY,
    fecha_venta DATETIME NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    id_cliente BIGINT,
    id_usuario BIGINT,
    
    CONSTRAINT fk_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),
        
    CONSTRAINT fk_usuario
        FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario)
);

-- Tabla detalle venta
CREATE TABLE detalle_venta (
    id_detalle BIGINT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    id_venta BIGINT,
    id_producto BIGINT,
    
    CONSTRAINT fk_venta
        FOREIGN KEY (id_venta)
        REFERENCES ventas(id_venta),
        
    CONSTRAINT fk_producto
        FOREIGN KEY (id_producto)
        REFERENCES productos(id_producto)
);

-- INSERTS DE PRUEBA

INSERT INTO usuarios(nombre, correo, password, rol)
VALUES
('Administrador', 'admin@techstore.com', '123456', 'ADMIN'),
('Vendedor', 'vendedor@techstore.com', '123456', 'VENDEDOR');

INSERT INTO clientes(nombre, telefono, correo)
VALUES
('Carlos Perez', '3001234567', 'carlos@gmail.com'),
('Laura Gomez', '3019876543', 'laura@gmail.com');

INSERT INTO productos(nombre, descripcion, precio, stock)
VALUES
('Samsung A55', 'Telefono Samsung gama media', 1800000, 10),
('Mouse Logitech', 'Mouse inalambrico', 95000, 25),
('Audifonos Bluetooth', 'Audifonos gaming', 150000, 15);

INSERT INTO ventas(fecha_venta, total, id_cliente, id_usuario)
VALUES
(NOW(), 1895000, 1, 2);

INSERT INTO detalle_venta(cantidad, subtotal, id_venta, id_producto)
VALUES
(1, 1800000, 1, 1),
(1, 95000, 1, 2);