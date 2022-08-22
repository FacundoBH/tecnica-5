1)CREATE DATABASE TP77
  CHARACTER SET DEFAULT
  COLLATE DEFAULT;

CREATE TABLE tiendas (
  id                int(20) NOT NULL PRIMARY KEY,
  nombre_comercial  varchar(20) NOT NULL,
  tipo              int NOT NULL,
  direccion         varchar(20) NOT NULL,
  cp                int(20) NOT NULL,
  poblacion         int NOT NULL,
  lat               float(20) NOT NULL,
  ing               float(20) NOT NULL
) ENGINE = InnoDB;

2)a) SELECT 
  `tiendas`.`id`,
  `tiendas`.`nombre_comercial`,
  `tiendas`.`tipo`,
  `tiendas`.`direccion`,
  `tiendas`.`cp`,
  `tiendas`.`poblacion`,
  `tiendas`.`lat`,
  `tiendas`.`ing`
FROM
  `tiendas`
WHERE
  `tiendas`.`direccion` LIKE `%castello%`
b) SELECT 
  `tiendas`.`id`,
  `tiendas`.`nombre_comercial`,
  `tiendas`.`tipo`,
  `tiendas`.`direccion`,
  `tiendas`.`cp`,
  `tiendas`.`poblacion`,
  `tiendas`.`lat`,
  `tiendas`.`ing`
FROM
  `tiendas`
WHERE
  `tiendas`.`cp` = `7600` AND 
  `tiendas`.`poblacion` = `1`
c)SELECT 
  `tiendas`.`id`,
  `tiendas`.`nombre_comercial`,
  `tiendas`.`tipo`,
  `tiendas`.`direccion`,
  `tiendas`.`cp`,
  `tiendas`.`poblacion`,
  `tiendas`.`lat`,
  `tiendas`.`ing`
FROM
  `tiendas`
WHERE
  `tiendas`.`tipo` = 1
d) SELECT MAX(`tiendas`.`latitud`) AS mayor_latitud FROM `tiendas`;

e) SELECT MIN(`tiendas`.`longitud`) AS menor_longitud FROM `tiendas`;

3/a)UPDATE `tiendas`
  SET   `tiendas`.`nombre_comercial` ='Ochoa'
  WHERE  `tiendas`.`id` ='8';

b)UPDATE `tiendas`
  SET   `tiendas`.`lat` ='-38.00001'
  WHERE  `tiendas`.`nombre_comercial` ='wallace';

c)UPDATE `tiendas`
  SET   `tiendas`.`nombre_comercial` ='EEM 22'
  WHERE  `tiendas`.`id` ='9';
