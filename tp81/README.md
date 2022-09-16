Escribir el enunciado de cada punto – presentarlo en un archivo .txt
a)
CREATE TABLE MARCAS (
IdMarca SMALLINT NOT NULL DEFAULT 1,
NombreMarca CHAR(10) NOT NULL,
NombreCiudad CHAR(60) NOT NULL,
PRIMARY KEY (idMarca))
b)
CREATE TABLE COCHES (
codcoche SMALLINT NOT NULL,
nombre CHAR(15) NOT NULL,
modelo CHAR(10),
PRIMARY KEY (codcoche))
c)
CREATE TABLE MARCO (
IdMarca SMALLINT NOT NULL,
codcoche SMALLINT NOT NULL,
PRIMARY KEY (cifm,codcoche),
FOREIGN KEY (cifm) REFERENCES MARCA,
FOREIGN KEY (codcoche) REFERENCES COCHE)
d)
INSERT INTO MARCAS VALUES (1,'vw','Mar del Plata')
INSERT INTO MARCAS VALUES (2,'renault','Rosario')
INSERT INTO MARCAS VALUES (3,'fiat','Cordoba')
INSERT INTO MARCAS VALUES (4,'ford','Neuquen')
e)
SELECT * FROM MARCAS
f)
SELECT nombre, ciudad FROM MARCAS
g)
select nombre,ciudad from MARCAS where IdMarca = 2
h)
select NombreMarca,ciudad from marca
where ciudad = 'Neuquen'
i)
select nombre,ciudad
from marcas
where ciudad LIKE 'S%'
j)
update marcas
set ciudad = 'Nuequen'
where ciudad = 'Jujuy'
