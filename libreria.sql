DROP DATABASE IF EXISTS libreria;
CREATE DATABASE libreria;
USE libreria;

CREATE TABLE autor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  dni VARCHAR(10) UNIQUE KEY
);

CREATE TABLE tienda (
  cif VARCHAR(10) PRIMARY KEY,
  ubicacion VARCHAR(1000),
  web VARCHAR(100)
);

CREATE TABLE libro (
  isbn VARCHAR(50) PRIMARY KEY,
  titulo VARCHAR(100),
  genero VARCHAR(100) DEFAULT 'Fantasia',
  precio DOUBLE,
  fecha_publicacion INT,
  id_autor INT,
  cif_tienda VARCHAR(10),
  FOREIGN KEY (id_autor) REFERENCES autor (id),
  FOREIGN KEY (cif_tienda) REFERENCES tienda (cif),
  CHECK (precio < 50),
  CHECK (fecha_publicacion > '2014-01-01')
);
