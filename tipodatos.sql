DROP DATABASE IF EXISTS tipo_datos;
CREATE DATABASE tipo_datos;
USE tipo_datos;

CREATE TABLE TiposDatos (
  flotante FLOAT(5,2),
  decimales DECIMAL(7,3),
  codigo CHAR(4),
  texto TEXT,
  dia DATE,
  momento DATETIME,
  hora TIME,
  color ENUM('Rojo', 'Verde', 'Azul')
);

INSERT INTO TiposDatos VALUES
(123.54, 1235.672, 'abcd', 'prueba para los tipos de datos', '2024-10-04', '2024-10-04 12:00:35', '12:00:39', 'Verde');
INSERT INTO TiposDatos (flotante, decimales) VALUES (12.42, 123.54);
