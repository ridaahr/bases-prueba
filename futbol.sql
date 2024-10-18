DROP DATABASE IF EXISTS futbol;
CREATE DATABASE futbol;
USE futbol;

CREATE TABLE equipo (
  id INT PRIMARY KEY,
  nombre VARCHAR(100),
  ciudad VARCHAR(100)
);

CREATE TABLE jugador (
  dni VARCHAR(15) PRIMARY KEY,
  nombre VARCHAR(100),
  nacionalidad VARCHAR(100),
  dorsal INT,
  altura FLOAT,
  id_equipo INT,
  FOREIGN KEY (id_equipo) REFERENCES equipo(id)
);

INSERT INTO equipo VALUES 
(1, 'FC BARCELONA', 'Barcelona'),
(2, 'REAL MADRID', 'Madrid');

INSERT INTO jugador VALUES
('12345678A', 'Álvaro Morata', 'España', 9, 1.80, 1),
('87654321B', 'Phil Foden', 'Inglaterra', 2, 1.92, 1),
('12341234C', 'Toni Kroos', 'Alemania', 9, 1.75, 2),
('56785678D', 'Dani Carvajal', 'España', 33, 1.83, 2);

