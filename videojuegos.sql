DROP DATABASE IF EXISTS videojuegos;
CREATE DATABASE videojuegos;
use videojuegos;

CREATE TABLE desarrollador (
  nombre VARCHAR(100) PRIMARY KEY
);

CREATE TABLE juego (
  id INT PRIMARY KEY,
  nombre VARCHAR(100),
  fk_desarrollador VARCHAR(100),
  FOREIGN KEY (fk_desarrollador) REFERENCES desarrollador(nombre) ON DELETE CASCADE
);

CREATE TABLE personaje (
  nombre VARCHAR(100) PRIMARY KEY,
  vida FLOAT,
  fk_juego INT,
  FOREIGN KEY (fk_juego) REFERENCES juego(id) ON DELETE SET NULL
);

INSERT INTO desarrollador VALUES ('Buggy Soft');
INSERT INTO juego VALUES
  (0, 'Las aventuras del capitán Salami', 'Buggy Soft'),
  (1, 'Las aventuras del capitán Salami - Vegan ed.', 'Buggy Soft');
INSERT INTO personaje VALUES
  ('Cap. Salami', 10.0, 0),
  ('Señor cuchiller', 10.0, 0),
  ('Cap. Seitán', 10.0, 1),
  ('Señor Cucharilla', 10.0, 1);

SELECT * FROM personaje;
SELECT * FROM juego;
SELECT * FROM desarrollador;

-- DELETE FROM juego WHERE id=0;
DELETE FROM desarrollador WHERE nombre='Buggy Soft';
SELECT * FROM juego;
SELECT * FROM personaje;
