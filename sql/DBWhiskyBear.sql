CREATE DATABASE IF NOT EXISTS whiskyB_inventario;
USE whiskyB_inventario;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    contraseña VARCHAR(255) NOT NULL,
    rol ENUM('admin','vendedor') NOT NULL DEFAULT 'vendedor',
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO usuarios (nombre_usuario, contraseña, rol) 
VALUES ('admin', 'admin123', 'admin');

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    imagen VARCHAR(255), 
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,      
    nombre VARCHAR(100) NOT NULL,            
    telefono VARCHAR(20),                  
    correo VARCHAR(100) UNIQUE,              
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    ultima_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imagen BLOB,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    categoria ENUM('Cerveza', 'Whisky', 'Vino', 'Ron', 'Vodka', 'Tequila', 'Ginebra', 'Brandy', 'Champagne', 'Otros') NOT NULL
);





