CREATE DATABASE mofles_kupra;
USE mofles_kupra;
CREATE TABLE marcas (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nombre_marca VARCHAR(50) NOT NULL
);
CREATE TABLE modelos (
    id_modelo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_modelo VARCHAR(50) NOT NULL,
    anio_modelo INT NOT NULL,
    id_marca INT,
    FOREIGN KEY (id_marca) REFERENCES marcas(id_marca)
);
CREATE TABLE piezas (
    id_pieza INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    descripcion TEXT,
    medida VARCHAR(50),
    precio_costo DECIMAL(10,2),
    cantidad_stock INT
);
CREATE TABLE compatibilidad (
    id_compatibilidad INT AUTO_INCREMENT PRIMARY KEY,
    id_pieza INT,
    id_modelo INT,
    FOREIGN KEY (id_pieza) REFERENCES piezas(id_pieza),
    FOREIGN KEY (id_modelo) REFERENCES modelos(id_modelo)
);
CREATE TABLE movimientos (
    id_movimiento INT AUTO_INCREMENT PRIMARY KEY,
    id_pieza INT,
    tipo_movimiento VARCHAR(10), -- entrada o salida
    cantidad INT,
    fecha DATE,
    FOREIGN KEY (id_pieza) REFERENCES piezas(id_pieza)
);