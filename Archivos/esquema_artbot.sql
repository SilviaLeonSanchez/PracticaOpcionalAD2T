
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema artbot
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `artbot` ;

-- -----------------------------------------------------
-- Schema artbot
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `artbot` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `artbot` ;

-- -----------------------------------------------------
-- Table `artbot`.`artwork_kinds`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `artbot`.`artwork_kinds` ;

CREATE TABLE IF NOT EXISTS `artbot`.`artwork_kinds` (
  `artwork_kind_id` VARCHAR(45) NOT NULL,
  `artwork_kind_name` VARCHAR(45) NOT NULL,
  `artwork_kind_description` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`artwork_kind_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artbot`.`authors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `artbot`.`authors` ;

CREATE TABLE IF NOT EXISTS `artbot`.`authors` (
  `author_id` VARCHAR(45) NOT NULL,
  `author_name` VARCHAR(45) NOT NULL,
  `author_birth_year` VARCHAR(45) NULL DEFAULT NULL,
  `author_death_year` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`author_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artbot`.`techniques`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `artbot`.`techniques` ;

CREATE TABLE IF NOT EXISTS `artbot`.`techniques` (
  `technique_id` VARCHAR(45) NOT NULL,
  `technique_name` VARCHAR(45) NOT NULL,
  `technique_description` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`technique_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artbot`.`materials`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `artbot`.`materials` ;

CREATE TABLE IF NOT EXISTS `artbot`.`materials` (
  `material_id` VARCHAR(45) NOT NULL,
  `material_name` VARCHAR(45) NOT NULL,
  `material_description` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`material_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artbot`.`artworks`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `artbot`.`artworks` ;

CREATE TABLE IF NOT EXISTS `artbot`.`artworks` (
  `artwork_id` VARCHAR(45) NOT NULL,
  `artwork_name` VARCHAR(45) NOT NULL,
  `artwork_year` VARCHAR(45) NULL DEFAULT NULL,
  `author_id` VARCHAR(45) NOT NULL,
  `technique_id` VARCHAR(45) NULL DEFAULT NULL,
  `material_id` VARCHAR(45) NULL DEFAULT NULL,
  `artwork_kind_id` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`artwork_id`),
  INDEX `fk_artworks_1_idx` (`author_id` ASC) VISIBLE,
  INDEX `fk_artworks_2_idx` (`technique_id` ASC) VISIBLE,
  INDEX `fk_artworks_3_idx` (`material_id` ASC) VISIBLE,
  INDEX `fk_artworks_4_idx` (`artwork_kind_id` ASC) VISIBLE,
  CONSTRAINT `fk_artworks_1`
    FOREIGN KEY (`author_id`)
    REFERENCES `artbot`.`authors` (`author_id`),
  CONSTRAINT `fk_artworks_2`
    FOREIGN KEY (`technique_id`)
    REFERENCES `artbot`.`techniques` (`technique_id`),
  CONSTRAINT `fk_artworks_3`
    FOREIGN KEY (`material_id`)
    REFERENCES `artbot`.`materials` (`material_id`),
  CONSTRAINT `fk_artworks_4`
    FOREIGN KEY (`artwork_kind_id`)
    REFERENCES `artbot`.`artwork_kinds` (`artwork_kind_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
