-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema szkola_jezykowa_pop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema szkola_jezykowa_pop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `szkola_jezykowa_pop` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `szkola_jezykowa_pop` ;

-- -----------------------------------------------------
-- Table `szkola_jezykowa_pop`.`Nauczyciel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `szkola_jezykowa_pop`.`Nauczyciel` (
  `idNauczyciel` INT NOT NULL AUTO_INCREMENT,
  `Imie` VARCHAR(45) NULL,
  `Nazwisko` VARCHAR(45) NULL,
  `PESEL` VARCHAR(11) NULL,
  `e_mail` VARCHAR(45) NULL,
  `Nr_telefonu` VARCHAR(9) NULL,
  PRIMARY KEY (`idNauczyciel`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `szkola_jezykowa_pop`.`Przedmiot`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `szkola_jezykowa_pop`.`Przedmiot` (
  `idPrzedmiot` INT NOT NULL AUTO_INCREMENT,
  `Przedmiot` VARCHAR(45) NULL,
  `Stopien_zaawansowania` VARCHAR(45) NULL,
  PRIMARY KEY (`idPrzedmiot`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `szkola_jezykowa_pop`.`Kurs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `szkola_jezykowa_pop`.`Kurs` (
  `idKurs` INT NOT NULL AUTO_INCREMENT,
  `Nauczyciel_idNauczyciel` INT NOT NULL,
  `Data_rozpoczecia` DATE NULL,
  `Data_zakonczenia` DATE NULL,
  `Przedmiot_idPrzedmiot` INT NOT NULL,
  PRIMARY KEY (`idKurs`),
  INDEX `fk_Kurs_Nauczyciel1_idx` (`Nauczyciel_idNauczyciel` ASC) VISIBLE,
  INDEX `fk_Kurs_Przedmiot1_idx` (`Przedmiot_idPrzedmiot` ASC) VISIBLE,
  CONSTRAINT `fk_Kurs_Nauczyciel1`
    FOREIGN KEY (`Nauczyciel_idNauczyciel`)
    REFERENCES `szkola_jezykowa_pop`.`Nauczyciel` (`idNauczyciel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Kurs_Przedmiot1`
    FOREIGN KEY (`Przedmiot_idPrzedmiot`)
    REFERENCES `szkola_jezykowa_pop`.`Przedmiot` (`idPrzedmiot`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `szkola_jezykowa_pop`.`Klasa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `szkola_jezykowa_pop`.`Klasa` (
  `idKlasa` INT NOT NULL AUTO_INCREMENT,
  `Kurs_idKurs` INT NOT NULL,
  `Oznaczenie` CHAR(3) NULL,
  `Wielkosc_klasy` INT NULL,
  PRIMARY KEY (`idKlasa`),
  INDEX `fk_Klasa_Zajecia1_idx` (`Kurs_idKurs` ASC) VISIBLE,
  CONSTRAINT `fk_Klasa_Zajecia1`
    FOREIGN KEY (`Kurs_idKurs`)
    REFERENCES `szkola_jezykowa_pop`.`Kurs` (`idKurs`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `szkola_jezykowa_pop`.`Uczen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `szkola_jezykowa_pop`.`Uczen` (
  `idUczen` INT NOT NULL AUTO_INCREMENT,
  `Klasa_idKlasa` INT NOT NULL,
  `Imie` VARCHAR(45) NULL,
  `Nazwisko` VARCHAR(45) NULL,
  `PESEL` VARCHAR(11) NULL,
  `e_mail` VARCHAR(45) NULL,
  `Nr_telefonu` VARCHAR(9) NULL,
  PRIMARY KEY (`idUczen`),
  INDEX `fk_Uczen_Klasa_idx` (`Klasa_idKlasa` ASC) VISIBLE,
  CONSTRAINT `fk_Uczen_Klasa`
    FOREIGN KEY (`Klasa_idKlasa`)
    REFERENCES `szkola_jezykowa_pop`.`Klasa` (`idKlasa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `szkola_jezykowa_pop`.`Ocena`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `szkola_jezykowa_pop`.`Ocena` (
  `idOcena` INT NOT NULL AUTO_INCREMENT,
  `Uczen_idUczen` INT NOT NULL,
  `Nauczyciel_idNauczyciel` INT NOT NULL,
  `Powod` VARCHAR(30) NULL,
  `Ocena` INT NULL,
  `Poprawiona_Ocena` INT NULL,
  `Uwagi` VARCHAR(100) NULL,
  PRIMARY KEY (`idOcena`),
  INDEX `fk_Ocena_Uczen1_idx` (`Uczen_idUczen` ASC) VISIBLE,
  INDEX `fk_Ocena_Nauczyciel1_idx` (`Nauczyciel_idNauczyciel` ASC) VISIBLE,
  CONSTRAINT `fk_Ocena_Uczen1`
    FOREIGN KEY (`Uczen_idUczen`)
    REFERENCES `szkola_jezykowa_pop`.`Uczen` (`idUczen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ocena_Nauczyciel1`
    FOREIGN KEY (`Nauczyciel_idNauczyciel`)
    REFERENCES `szkola_jezykowa_pop`.`Nauczyciel` (`idNauczyciel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `szkola_jezykowa_pop`.`Zajecia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `szkola_jezykowa_pop`.`Zajecia` (
  `idZajecia` INT NOT NULL,
  `Kurs_idKurs` INT NOT NULL AUTO_INCREMENT,
  `Data_zajec` DATETIME NULL,
  `Nr_sali` INT NULL,
  INDEX `fk_Zajecia_Kurs1_idx` (`Kurs_idKurs` ASC) VISIBLE,
  PRIMARY KEY (`idZajecia`),
  CONSTRAINT `fk_Zajecia_Kurs1`
    FOREIGN KEY (`Kurs_idKurs`)
    REFERENCES `szkola_jezykowa_pop`.`Kurs` (`idKurs`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `szkola_jezykowa_pop`.`Obecnosc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `szkola_jezykowa_pop`.`Obecnosc` (
  `idObecnosc` INT NOT NULL AUTO_INCREMENT,
  `Obecnosc` BIT NULL,
  `Uczen_idUczen` INT NOT NULL,
  `Zajecia_idZajecia` INT NOT NULL,
  PRIMARY KEY (`idObecnosc`),
  INDEX `fk_Obecnosc_Uczen1_idx` (`Uczen_idUczen` ASC) VISIBLE,
  INDEX `fk_Obecnosc_Zajecia1_idx` (`Zajecia_idZajecia` ASC) VISIBLE,
  CONSTRAINT `fk_Obecnosc_Uczen1`
    FOREIGN KEY (`Uczen_idUczen`)
    REFERENCES `szkola_jezykowa_pop`.`Uczen` (`idUczen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Obecnosc_Zajecia1`
    FOREIGN KEY (`Zajecia_idZajecia`)
    REFERENCES `szkola_jezykowa_pop`.`Zajecia` (`idZajecia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
