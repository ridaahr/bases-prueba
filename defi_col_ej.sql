DROP DATABASE IF EXISTS ejercicios;
CREATE DATABASE ejercicios;
USE ejercicios;

CREATE TABLE ej1 (
  a INT,
  b DATE,
  c VARCHAR(5)
);

-- EJERCICIO 1
-- INSERTAR:
-- 1. valores en a, b y c
-- 2. valores en orden b, c, a
-- 3. valores en c y b
-- 4. valor en b

INSERT INTO ej1 VALUES (1, '2024-10-08', 'prime');
INSERT INTO ej1 (b, c, a) VALUES ('2024-10-09', 'segun', 2);
INSERT INTO ej1 (c, b) VALUES ('terce', '2024-10-11');
INSERT INTO ej1 (b) VALUES ('2024-10-12');

-- EJERCICIO 2
CREATE TABLE ej2 (
  a INT NOT NULL,
  b INT NOT NULL DEFAULT 0,
  c VARCHAR(5),
  d VARCHAR (5) DEFAULT 'Hola'
);

-- INSERTAR 
-- 1. valores en a, b, d
-- 2. valores en a, b, c
-- 3. valores en c, a y default en b
-- 4. valor en a con default en b, d
-- 5. valor en a con NULL en d

INSERT INTO ej2 (a, b, d) VALUES (1, 2, 'ey');
INSERT INTO ej2 (a, b, c) VALUES (1, 2, 'wola');
INSERT INTO ej2 (c, a, d) VALUES ('asd', 4, NULL);
INSERT INTO ej2 (a) VALUES (21);
INSERT INTO ej2 (a, d) VALUES (12, NULL);

-- EJERCICIO 3
CREATE TABLE ej3 (
  a INT AUTO_INCREMENT PRIMARY KEY,
  b VARCHAR(5) UNIQUE KEY COMMENT 'Columna importante',
  c VARCHAR(5) DEFAULT 'hola'
);

INSERT INTO ej3 (b, c) VALUES
  ('papap', 'prueb'),
  ('batma', 'cosa');

INSERT INTO ej3 VALUES
  (5, 'bla', 'pepe');

INSERT INTO ej3 (b, c) VALUES
  ('otra', 'mas');

SELECT * FROM ej3;


