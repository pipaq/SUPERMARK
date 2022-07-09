-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema supermark
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema supermark
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `supermark` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `supermark` ;

-- -----------------------------------------------------
-- CREACIÓN DE TABLA PARA PRODUCTOS --
-- -----------------------------------------------------


CREATE TABLE IF NOT EXISTS `supermark`.`producto` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `descripcion` VARCHAR(100) NULL DEFAULT NULL,
  `precio` DOUBLE NULL DEFAULT NULL,
  `stock` INT NULL DEFAULT NULL,
  `vencimiento` DATE NULL DEFAULT NULL,
  `categoria` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 81
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;




-- -----------------------------------------------------
-- -- CREACIÓN DE TABLA PARA USUARIOS SUPERMARK --
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermark`.`usuario` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NULL DEFAULT NULL,
  `apellido` VARCHAR(30) NULL DEFAULT NULL,
  `dni`VARCHAR(15) NULL DEFAULT NULL,
  `contrasenia` VARCHAR(10) NULL DEFAULT NULL,
  `tipo` ENUM('0', '1') NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- -- CREACIÓN DE TABLA PARA FORMAS DE PAGO CON FC Y RTO --
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermark`.`pago` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `forma` ENUM('efectivo', 'transferencia', 'tarjeta', 'otros') NULL DEFAULT NULL,
  `factura` MEDIUMTEXT NULL DEFAULT NULL,
  `remito` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- -- CREACIÓN DE TABLA PARA COMPROBANTES DE COMPRA --
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermark`.`comprobante` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fecha` TIMESTAMP NULL DEFAULT NULL,
  `tipo` CHAR(1) NULL DEFAULT NULL,
  `total` FLOAT NULL DEFAULT NULL,
  `id_cliente` INT UNSIGNED NOT NULL,
  `id_pago` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `cliente_fk` (`id_cliente` ASC) VISIBLE,
  INDEX `pago_fk` (`id_pago` ASC) VISIBLE,
  CONSTRAINT `cliente_fk`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `supermark`.`usuario` (`id`),
  CONSTRAINT `pago_fk`
    FOREIGN KEY (`id_pago`)
    REFERENCES `supermark`.`pago` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- CREACIÓN DE TABLA PARA CARRITOS, ASOCIADOS A LOS PRODUCTOS SELECCIONADOS Y COMPROBANTES DE COMPRA --
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermark`.`carrito` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_producto` INT UNSIGNED NOT NULL,
  `cantidad` INT NULL DEFAULT NULL,
  `descuento` FLOAT NULL DEFAULT NULL,
  `id_comprobante` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_producto` (`id_producto` ASC) VISIBLE,
  INDEX `id_comprobante_fk` (`id_comprobante` ASC) VISIBLE,
  CONSTRAINT `carrito_ibfk_1`
    FOREIGN KEY (`id_producto`)
    REFERENCES `supermark`.`producto` (`id`),
  CONSTRAINT `id_comprobante_fk`
    FOREIGN KEY (`id_comprobante`)
    REFERENCES `supermark`.`comprobante` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 41
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- CREACIÓN DE DATOS PARA TABLA USUARIO.
-- -----------------------------------------------------
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni`,`contrasenia`,`tipo`) VALUES (1,'ana','lopez','22369852',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni`,`contrasenia`,`tipo`) VALUES (2,'carlos ','sanchez','38542008',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni``,`contrasenia`,`tipo`) VALUES (3,'roman','riquelme','36452147',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni`,`contrasenia``tipo`) VALUES (4,'juanito','carrascal','20146662',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni``,`contrasenia`,`tipo`) VALUES (5,'carolina','chocobar','28964733',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni``,`contrasenia`,`tipo`) VALUES (6,'armando','paredes','39999991',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni`,`contrasenia`,`tipo`) VALUES (7,'lisa','simpson','42008743',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni`,`contrasenia`,`tipo`) VALUES (8,'ian','pollera','14182947',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni`,`contrasenia`,`tipo`) VALUES (9,'josefina','rivera','27654321',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni`,`contrasenia`,`tipo`) VALUES (10,'carlos','bianchi','38741369',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni`,`contrasenia`,`tipo`) VALUES (11,'luna','media','25544562',NULL,NULL);
INSERT INTO `` (`id`,`nombre`,`apellido`,`dni`,`contrasenia`,`tipo`) VALUES (12,'luis','spinetta','29877322',NULL,NULL);

-- -----------------------------------------------------
-- CREACIÓN DE DATOS PARA TABLA PAGO.
-- -----------------------------------------------------
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (1,'efectivo','0100100','0200030');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (2,'efectivo','0100101','0200031');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (3,'transferencia','0100102','0200032');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (4,'tarjeta','0100103','0200033');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (5,'transferencia','0100104','0200034');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (6,'transferencia','0100105','0200035');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (7,'efectivo','0100106','0200036');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (8,'tarjeta','0100107','0200037');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (9,'tarjeta','0100108','0200038');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (10,'transferencia','0100109','0200039');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (11,'efectivo','0100110','0200040');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (12,'efectivo','0100111','0200041');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (13,'tarjeta','0100112','0200042');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (14,'tarjeta','0100113','0200043');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (15,'transferencia','0100114','0200044');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (16,'efectivo','0100115','0200045');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (17,'transferencia','0100116','0200046');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (18,'efectivo','0100117','0200047');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (19,'tarjeta','0100118','0200048');
INSERT INTO `` (`id`,`forma`,`factura`,`remito`) VALUES (20,'transferencia','0100119','0200049');

-- -----------------------------------------------------
-- CREACIÓN DE DATOS PARA TABLA PRODUCTO
-- -----------------------------------------------------
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (1,'leche','vaca entera',120,15,'2022-08-29','lacteos');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (2,'leche','marca vaca descremada',123,35,'2022-08-29','lacteos');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (3,'chocolatada','marca vaca ',185,12,'2022-08-22','lacteos');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (4,'galletas','pepitos 118g',230,20,'2024-01-03','galletas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (5,'obleas','opera 55g',130,18,'2023-11-08','galletas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (6,'obleas','opera 92g',160,13,'2023-11-08','galletas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (7,'surtido','terrabusi 400g',360,10,'2022-10-25','galletas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (8,'mini tostadas','twistos jamon iberico 180g',370,3,'2022-10-22','snacks');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (9,'papafritas','lays clasicas 150g',470,20,'2023-03-14','snacks');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (10,'biscochos','don saturn 200g',170,15,'2022-12-28','snacks');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (11,'cheetos','sabor queso clasico 48g',200,5,'2022-12-28','snacks');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (12,'arroz','largo fino molino 1kg',190,12,NULL,'almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (13,'harina de trigo','favorita 1kg',110,23,'2030-02-20','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (14,'azucar','ledesma clasica',260,20,NULL,'almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (15,'aceite','vegetal natura 1litro',490,12,'2023-04-10','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (16,'choclo','cremoso arcor lata',160,16,'2026-10-15','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (17,'sopa crena','knor verduras 60g',250,12,'2023-01-02','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (18,'salsa','pomarola arcor',110,10,'2024-02-01','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (19,'aceituna','descarozadas verde ',190,3,'2023-05-15','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (20,'gelatina','exquisita frutilla 40g',90,22,'2025-12-17','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (21,'picadillo','carne swift ',120,14,'2025-09-01','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (22,'pan rallado','preferido',200,10,'2025-10-05','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (23,'fideos','cabello de angel matarazzo 500g',230,25,NULL,'almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (24,'gelatina','exquisita frambuesa 40g',90,12,'2025-12-17','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (25,'mermelada','damasco 454g',290,7,'2026-10-10','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (26,'edulcorante','liquido Ran ',230,14,'2025-01-28','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (27,'mermelada','ciruela noel',300,10,'2026-04-07','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (28,'sal','celusal 500g',150,30,'2027-10-27','almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (29,'fideos','codito matarazzo',220,14,NULL,'almacen');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (30,'detergente','magistral ultralimon 300ml',300,25,'2029-03-14','limpieza');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (31,'lavandina','ayudin 1l',180,12,'2024-10-23','limpieza');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (32,'esponja','cuadriculada',90,20,NULL,'limpieza');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (33,'antibacterial ','liquido jardin floral crema ',150,12,'2024-10-23','limpieza');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (34,'rollo de cocina','3x50 paÃ±os ',240,25,NULL,'limpieza');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (35,'suavizante','vivere clasico 900ml',330,12,NULL,'limpieza');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (36,'limpiador','cremoso original 250cc',180,14,'2026-07-14','limpieza');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (37,'esponja','virulana ',70,3,'2026-07-14','limpieza');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (38,'paÃ±o','virulana twist x1u',170,4,'2026-07-14','limpieza');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (39,'agua','aquarius pomelo 1.5l',270,20,NULL,'bebidas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (40,'agua','mineral villa del sur 1.5l',200,30,NULL,'bebidas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (41,'jugo','bagio durazno 1l',270,14,NULL,'bebidas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (42,'gaseosa','templita tonica',230,20,NULL,'bebidas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (43,'gaseosa ','pepsi 2.25l',370,18,NULL,'bebidas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (44,'agua','kin sin gas 2l',200,45,NULL,'bebidas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (45,'gaseosa','coca cola 2l',320,30,NULL,'bebidas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (46,'bonobon','chocolate relleno',70,48,'2023-01-05','golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (47,'huevo','kinder sorpresa',300,22,'2024-02-04','golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (48,'bombon','relleno bananita dolca',160,10,'2023-04-28','golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (49,'chocolate','sapito',40,15,'2023-04-03','golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (50,'turron','25g',60,12,'2023-10-04','golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (51,'chicle','beldent frutilla',90,80,NULL,'golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (52,'chicle','beldent menta',90,25,NULL,'golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (53,'chicle','beldent tutti fruti',90,46,NULL,'golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (54,'pastillas','yapa',60,6,NULL,'golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (55,'caramelo','lenguetazo',50,10,NULL,'golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (56,'pastillas','halls mora',80,14,NULL,'golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (57,'pastillas','halls miel',80,12,NULL,'golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (58,'pastillas ','halls menta',80,10,NULL,'golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (59,'mantecol','40g',190,2,'2023-01-14','golosinas');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (60,'pilas','duracell triplea 2u',440,6,NULL,'otros');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (61,'adhesivo','la gotita 2ml',250,4,NULL,'otros');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (62,'maquina de afeitar','gilette',190,10,NULL,'otros');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (63,'maquina de afeitar','femenina',210,14,NULL,'otros');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (64,'naipes','espaÃ±oles ',240,8,NULL,'otros');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (65,'vela','farolito 4u',70,6,NULL,'otros');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (66,'te','la virginia 25u',150,15,NULL,'infusiones');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (67,'te','manzanilla la virginia 25u',180,10,NULL,'infusiones');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (68,'yerba','playadito 500g',450,12,NULL,'infusiones');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (69,'yerba','cachamate 500g',320,20,NULL,'infusiones');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (70,'yerba ','union 500g',420,10,NULL,'infusiones');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (71,'yerba','rosamonte 500g',380,18,NULL,'infusiones');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (72,'cafe','instantaneo suave ',290,20,NULL,'infusiones');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (73,'cafe','dolca 50g',350,25,NULL,'infusiones');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (74,'cafe','dolca suave 50g',350,20,NULL,'infusiones');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (75,'queso','crema milakut 190g',200,10,'2022-08-15','lacteos');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (76,'queso','rallado la serenisima',160,8,'2023-01-05','lacteos');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (77,'yogur','entero milkaut',160,12,'2022-09-14','lacteos');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (78,'crema de leche','la serenisima',220,14,'2022-07-29','lacteos');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (79,'manteca','50g',180,10,'2023-01-01','lacteos');
INSERT INTO `` (`id`,`nombre`,`descripcion`,`precio`,`stock`,`vencimiento`,`categoria`) VALUES (80,'manteca','100g',210,20,'2023-02-01','lacteos');

-- -----------------------------------------------------
-- CREACIÓN DE DATOS PARA TABLA COMPROBANTE
-- -----------------------------------------------------
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (2,'2022-06-29 21:00:00','c',NULL,9,2);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (3,'2022-06-30 09:14:25','c',NULL,2,3);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (4,'2022-06-30 09:32:05','c',NULL,12,4);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (5,'2022-06-30 11:10:02','a',NULL,9,5);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (6,'2022-06-30 14:15:04','a',NULL,4,6);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (7,'2022-06-30 17:35:00','c',NULL,10,7);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (8,'2022-06-30 18:00:00','c',NULL,3,8);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (9,'2022-06-30 18:15:25','c',NULL,5,9);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (10,'2022-06-30 20:20:20','a',NULL,1,10);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (11,'2022-07-01 10:12:00','c',NULL,6,11);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (12,'2022-07-01 12:10:09','c',NULL,7,12);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (13,'2022-07-01 14:10:15','a',NULL,4,13);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (14,'2022-07-01 17:09:04','c',NULL,8,14);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (15,'2022-07-02 15:35:00','c',NULL,12,15);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (16,'2022-07-02 19:01:01','a',NULL,10,16);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (17,'2022-07-03 09:00:02','a',NULL,3,17);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (18,'2022-07-03 10:15:03','c',NULL,11,18);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (19,'2022-07-03 12:03:59','c',NULL,9,19);
INSERT INTO `` (`id`,`fecha`,`tipo`,`total`,`id_cliente`,`id_pago`) VALUES (20,'2022-07-03 15:45:03','c',NULL,6,20);

-- -----------------------------------------------------
-- CREACIÓN DE DATOS PARA TABLA CARRITO
-- -----------------------------------------------------
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (3,32,1,10,2);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (4,36,1,10,2);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (5,35,1,10,2);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (6,30,1,10,2);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (7,31,1,10,2);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (8,51,2,10,2);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (9,43,1,10,2);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (10,22,1,10,3);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (11,24,1,10,3);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (12,18,1,10,3);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (13,6,3,10,4);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (14,9,1,10,4);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (15,11,1,10,4);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (16,79,1,10,5);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (17,71,1,10,5);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (18,49,3,10,5);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (19,41,1,10,5);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (20,42,1,10,5);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (21,50,8,10,6);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (22,53,1,10,6);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (23,58,1,10,6);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (24,63,1,10,7);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (25,68,1,10,7);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (26,64,1,10,8);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (27,42,2,10,8);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (28,40,1,10,8);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (29,47,1,10,8);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (30,55,1,10,9);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (31,53,1,10,9);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (32,47,1,10,9);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (33,67,1,10,10);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (34,71,1,10,10);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (35,73,3,10,10);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (36,75,1,10,10);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (37,29,1,10,11);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (38,38,1,10,12);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (39,42,2,10,12);
INSERT INTO `` (`id`,`id_producto`,`cantidad`,`descuento`,`id_comprobante`) VALUES (40,1,1,10,12);
