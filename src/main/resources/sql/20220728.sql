-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cruzadacesarpisconti
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cruzadacesarpisconti
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cruzadacesarpisconti` DEFAULT CHARACTER SET latin1 ;
SHOW WARNINGS;
USE `cruzadacesarpisconti` ;

-- -----------------------------------------------------
-- Table `cruzadacesarpisconti`.`pais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cruzadacesarpisconti`.`pais` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cruzadacesarpisconti`.`pais` (
                                                          `idpais` INT NOT NULL AUTO_INCREMENT,
                                                          `descripcion` VARCHAR(200) NOT NULL,
                                                          `estado` VARCHAR(1) NOT NULL COMMENT '\'1: ACTIVO, 0: INACTIVO\'',
                                                          `fecha_registro` DATETIME NOT NULL,
                                                          `usuario_registro` VARCHAR(45) NOT NULL,
                                                          `fecha_modificacion` DATETIME NULL,
                                                          `usuario_modificacion` VARCHAR(45) NULL,
                                                          PRIMARY KEY (`idpais`))
    ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cruzadacesarpisconti`.`cruzada`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cruzadacesarpisconti`.`cruzada` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cruzadacesarpisconti`.`cruzada` (
                                                             `idcruzada` INT NOT NULL AUTO_INCREMENT,
                                                             `descripcion` VARCHAR(200) NOT NULL,
                                                             `fecha_inicial` DATE NOT NULL,
                                                             `fecha_final` DATE NOT NULL,
                                                             `lugar` VARCHAR(200) NOT NULL,
                                                             `horario` VARCHAR(200) NOT NULL,
                                                             `correo` VARCHAR(200) NOT NULL,
                                                             `contacto` INT NOT NULL,
                                                             `idpais` INT NOT NULL,
                                                             `estado` VARCHAR(1) NOT NULL COMMENT '\'1: ACTIVO, 0: INACTIVO\'',
                                                             `fecha_registro` DATETIME NOT NULL,
                                                             `usuario_registro` VARCHAR(45) NOT NULL,
                                                             `fecha_modificacion` DATETIME NULL,
                                                             `usuario_modificacion` VARCHAR(45) NULL,
                                                             PRIMARY KEY (`idcruzada`),
                                                             CONSTRAINT `fk_cruzada_pais`
                                                                 FOREIGN KEY (`idpais`)
                                                                     REFERENCES `cruzadacesarpisconti`.`pais` (`idpais`)
                                                                     ON DELETE NO ACTION
                                                                     ON UPDATE NO ACTION)
    ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_cruzada_pais_idx` ON `cruzadacesarpisconti`.`cruzada` (`idpais` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cruzadacesarpisconti`.`fuente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cruzadacesarpisconti`.`fuente` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cruzadacesarpisconti`.`fuente` (
                                                            `idfuente` INT NOT NULL AUTO_INCREMENT,
                                                            `descripcion` VARCHAR(200) NOT NULL,
                                                            `estado` VARCHAR(1) NOT NULL COMMENT '\'1: ACTIVO, 0: INACTIVO\'',
                                                            `fecha_registro` DATETIME NOT NULL,
                                                            `usuario_registro` VARCHAR(45) NOT NULL,
                                                            `fecha_modificacion` DATETIME NULL,
                                                            `usuario_modificacion` VARCHAR(45) NULL,
                                                            PRIMARY KEY (`idfuente`))
    ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cruzadacesarpisconti`.`cargo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cruzadacesarpisconti`.`cargo` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cruzadacesarpisconti`.`cargo` (
                                                           `idcargo` INT NOT NULL AUTO_INCREMENT,
                                                           `descripcion` VARCHAR(200) NOT NULL,
                                                           `estado` VARCHAR(1) NOT NULL COMMENT '\'1: ACTIVO, 0: INACTIVO\'',
                                                           `fecha_registro` DATETIME NOT NULL,
                                                           `usuario_registro` VARCHAR(45) NOT NULL,
                                                           `fecha_modificacion` DATETIME NULL,
                                                           `usuario_modificacion` VARCHAR(45) NULL,
                                                           PRIMARY KEY (`idcargo`))
    ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cruzadacesarpisconti`.`conferencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cruzadacesarpisconti`.`conferencia` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cruzadacesarpisconti`.`conferencia` (
                                                                 `idconferencia` INT NOT NULL AUTO_INCREMENT,
                                                                 `descripcion` VARCHAR(200) NOT NULL,
                                                                 `fecha_inicial` DATE NOT NULL,
                                                                 `fecha_final` DATE NOT NULL,
                                                                 `lugar` VARCHAR(200) NOT NULL,
                                                                 `horario` VARCHAR(200) NOT NULL,
                                                                 `correo` VARCHAR(200) NOT NULL,
                                                                 `contacto` INT NOT NULL,
                                                                 `idpais` INT NOT NULL,
                                                                 `estado` VARCHAR(1) NOT NULL COMMENT '\'1: ACTIVO, 0: INACTIVO\'',
                                                                 `fecha_registro` DATETIME NOT NULL,
                                                                 `usuario_registro` VARCHAR(45) NOT NULL,
                                                                 `fecha_modificacion` DATETIME NULL,
                                                                 `usuario_modificacion` VARCHAR(45) NULL,
                                                                 PRIMARY KEY (`idconferencia`),
                                                                 CONSTRAINT `fk_cruzada_pais0`
                                                                     FOREIGN KEY (`idpais`)
                                                                         REFERENCES `cruzadacesarpisconti`.`pais` (`idpais`)
                                                                         ON DELETE NO ACTION
                                                                         ON UPDATE NO ACTION)
    ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_cruzada_pais_idx` ON `cruzadacesarpisconti`.`conferencia` (`idpais` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cruzadacesarpisconti`.`registro_conferencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cruzadacesarpisconti`.`registro_conferencia` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cruzadacesarpisconti`.`registro_conferencia` (
                                                                          `idregistro` INT NOT NULL AUTO_INCREMENT,
                                                                          `nombres` VARCHAR(200) NOT NULL,
                                                                          `apellidos` VARCHAR(200) NOT NULL,
                                                                          `correo` VARCHAR(200) NOT NULL,
                                                                          `celular` INT NOT NULL,
                                                                          `edad` INT NULL,
                                                                          `iglesia` VARCHAR(200) NULL,
                                                                          `idconferencia` INT NOT NULL,
                                                                          `idpais` INT NOT NULL,
                                                                          `idcargo` INT NOT NULL,
                                                                          `idfuente` INT NOT NULL,
                                                                          `estado` VARCHAR(1) NOT NULL COMMENT '\'1: ACTIVO, 0: INACTIVO\'',
                                                                          `fecha_registro` DATETIME NOT NULL,
                                                                          `usuario_registro` VARCHAR(45) NOT NULL,
                                                                          `fecha_modificacion` DATETIME NULL,
                                                                          `usuario_modificacion` VARCHAR(45) NULL,
                                                                          PRIMARY KEY (`idregistro`),
                                                                          CONSTRAINT `fk_registro_conferencia_conferencia1`
                                                                              FOREIGN KEY (`idconferencia`)
                                                                                  REFERENCES `cruzadacesarpisconti`.`conferencia` (`idconferencia`)
                                                                                  ON DELETE NO ACTION
                                                                                  ON UPDATE NO ACTION,
                                                                          CONSTRAINT `fk_registro_conferencia_pais1`
                                                                              FOREIGN KEY (`idpais`)
                                                                                  REFERENCES `cruzadacesarpisconti`.`pais` (`idpais`)
                                                                                  ON DELETE NO ACTION
                                                                                  ON UPDATE NO ACTION,
                                                                          CONSTRAINT `fk_registro_conferencia_cargo1`
                                                                              FOREIGN KEY (`idcargo`)
                                                                                  REFERENCES `cruzadacesarpisconti`.`cargo` (`idcargo`)
                                                                                  ON DELETE NO ACTION
                                                                                  ON UPDATE NO ACTION,
                                                                          CONSTRAINT `fk_registro_conferencia_fuente1`
                                                                              FOREIGN KEY (`idfuente`)
                                                                                  REFERENCES `cruzadacesarpisconti`.`fuente` (`idfuente`)
                                                                                  ON DELETE NO ACTION
                                                                                  ON UPDATE NO ACTION)
    ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_registro_conferencia_conferencia1_idx` ON `cruzadacesarpisconti`.`registro_conferencia` (`idconferencia` ASC);

SHOW WARNINGS;
CREATE INDEX `fk_registro_conferencia_pais1_idx` ON `cruzadacesarpisconti`.`registro_conferencia` (`idpais` ASC);

SHOW WARNINGS;
CREATE INDEX `fk_registro_conferencia_cargo1_idx` ON `cruzadacesarpisconti`.`registro_conferencia` (`idcargo` ASC);

SHOW WARNINGS;
CREATE INDEX `fk_registro_conferencia_fuente1_idx` ON `cruzadacesarpisconti`.`registro_conferencia` (`idfuente` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cruzadacesarpisconti`.`enfermo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cruzadacesarpisconti`.`enfermo` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cruzadacesarpisconti`.`enfermo` (
                                                             `idenfermo` INT NOT NULL AUTO_INCREMENT,
                                                             `nombres` VARCHAR(200) NOT NULL,
                                                             `apellidos` VARCHAR(200) NOT NULL,
                                                             `correo` VARCHAR(200) NOT NULL,
                                                             `celular` INT NOT NULL,
                                                             `edad` INT NULL,
                                                             `iglesia` VARCHAR(200) NULL,
                                                             `enfermedad` VARCHAR(200) NOT NULL,
                                                             `anio_enfermedad` INT NOT NULL,
                                                             `foto_diagnostico` BLOB NULL,
                                                             `idcruzada` INT NOT NULL,
                                                             `idpais` INT NOT NULL,
                                                             `idfuente` INT NOT NULL,
                                                             `estado` VARCHAR(1) NOT NULL COMMENT '\'1: ACTIVO, 0: INACTIVO\'',
                                                             `fecha_registro` DATETIME NOT NULL,
                                                             `usuario_registro` VARCHAR(45) NOT NULL,
                                                             `fecha_modificacion` DATETIME NULL,
                                                             `usuario_modificacion` VARCHAR(45) NULL,
                                                             PRIMARY KEY (`idenfermo`),
                                                             CONSTRAINT `fk_enfermo_cruzada1`
                                                                 FOREIGN KEY (`idcruzada`)
                                                                     REFERENCES `cruzadacesarpisconti`.`cruzada` (`idcruzada`)
                                                                     ON DELETE NO ACTION
                                                                     ON UPDATE NO ACTION,
                                                             CONSTRAINT `fk_enfermo_pais1`
                                                                 FOREIGN KEY (`idpais`)
                                                                     REFERENCES `cruzadacesarpisconti`.`pais` (`idpais`)
                                                                     ON DELETE NO ACTION
                                                                     ON UPDATE NO ACTION,
                                                             CONSTRAINT `fk_enfermo_fuente1`
                                                                 FOREIGN KEY (`idfuente`)
                                                                     REFERENCES `cruzadacesarpisconti`.`fuente` (`idfuente`)
                                                                     ON DELETE NO ACTION
                                                                     ON UPDATE NO ACTION)
    ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_enfermo_cruzada1_idx` ON `cruzadacesarpisconti`.`enfermo` (`idcruzada` ASC);

SHOW WARNINGS;
CREATE INDEX `fk_enfermo_pais1_idx` ON `cruzadacesarpisconti`.`enfermo` (`idpais` ASC);

SHOW WARNINGS;
CREATE INDEX `fk_enfermo_fuente1_idx` ON `cruzadacesarpisconti`.`enfermo` (`idfuente` ASC);

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
