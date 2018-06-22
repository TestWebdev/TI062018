-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema michael-testjuin
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `michael-testjuin` ;

-- -----------------------------------------------------
-- Schema michael-testjuin
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `michael-testjuin` DEFAULT CHARACTER SET utf8 ;
USE `michael-testjuin` ;

-- -----------------------------------------------------
-- Table `michael-testjuin`.`author`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `michael-testjuin`.`author` ;

CREATE TABLE IF NOT EXISTS `michael-testjuin`.`author` (
  `idauthor` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thelogin` VARCHAR(80) NOT NULL,
  `thename` VARCHAR(150) NOT NULL,
  `thepwd` CHAR(64) NOT NULL,
  PRIMARY KEY (`idauthor`),
  UNIQUE INDEX `thelogin_UNIQUE` (`thelogin` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `michael-testjuin`.`category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `michael-testjuin`.`category` ;

CREATE TABLE IF NOT EXISTS `michael-testjuin`.`category` (
  `idcategory` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thecategtitle` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idcategory`),
  UNIQUE INDEX `thecategtitle_UNIQUE` (`thecategtitle` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `michael-testjuin`.`article`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `michael-testjuin`.`article` ;

CREATE TABLE IF NOT EXISTS `michael-testjuin`.`article` (
  `idarticle` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` VARCHAR(150) NOT NULL,
  `thetext` TEXT NOT NULL,
  `thedate` TIMESTAMP NULL DEFAULT NOW(),
  `authoridauthor` INT UNSIGNED NOT NULL,
  `categoryidcategory` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idarticle`),
  INDEX `fk_article_author_idx` (`authoridauthor` ASC),
  INDEX `fk_article_category1_idx` (`categoryidcategory` ASC),
  CONSTRAINT `fk_article_author`
    FOREIGN KEY (`authoridauthor`)
    REFERENCES `michael-testjuin`.`author` (`idauthor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_article_category1`
    FOREIGN KEY (`categoryidcategory`)
    REFERENCES `michael-testjuin`.`category` (`idcategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
