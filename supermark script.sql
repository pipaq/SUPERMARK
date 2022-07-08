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
-- Table `supermark`.`producto`
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
-- Table `supermark`.`domicilio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermark`.`domicilio` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(25) NULL DEFAULT NULL,
  `numero` INT UNSIGNED NULL DEFAULT NULL,
  `piso` INT NULL DEFAULT NULL,
  `departamento` VARCHAR(5) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `supermark`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supermark`.`usuario` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NULL DEFAULT NULL,
  `apellido` VARCHAR(30) NULL DEFAULT NULL,
  `dni` MEDIUMTEXT NULL DEFAULT NULL,
  `fecha_nacimiento` DATE NULL DEFAULT NULL,
  `id_domicilio` INT UNSIGNED NOT NULL,
  `contrasenia` VARCHAR(10) NULL DEFAULT NULL,
  `tipo` ENUM('0', '1') NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_domicilio` (`id_domicilio` ASC) VISIBLE,
  CONSTRAINT `usuario_ibfk_1`
    FOREIGN KEY (`id_domicilio`)
    REFERENCES `supermark`.`domicilio` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `supermark`.`pago`
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
-- Table `supermark`.`comprobante`
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
-- Table `supermark`.`carrito`
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
