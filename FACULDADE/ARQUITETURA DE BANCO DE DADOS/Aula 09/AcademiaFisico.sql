-- MySQL Workbench Forward Engineering
-- -----------------------------------------
-- Schema gym
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `gym` ;

-- -----------------------------------------------------
-- Schema gym
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gym` DEFAULT CHARACTER SET utf8 ;
USE `gym` ;

-- -----------------------------------------------------
-- Table `gym`.`person`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`person` ;

CREATE TABLE IF NOT EXISTS `gym`.`person` (
  `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(256) NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  `rg` VARCHAR(11) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(15) NOT NULL,
  `birth_date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (`cpf`) ,
  UNIQUE (`email`)
);


-- -----------------------------------------------------
-- Table `gym`.`client`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`client` ;

CREATE TABLE IF NOT EXISTS `gym`.`client` (
  `id` MEDIUMINT UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL,
  `gympass` TINYINT NOT NULL,
  `status` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`id`) REFERENCES `gym`.`person` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`employee` ;

CREATE TABLE IF NOT EXISTS `gym`.`employee` (
  `id` MEDIUMINT UNSIGNED NOT NULL,
  `carrier` VARCHAR(50) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `pay` DECIMAL(10,2) NOT NULL,
  `hourly` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`id`) REFERENCES `gym`.`person` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`workout_plan`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`workout_plan` ;

CREATE TABLE IF NOT EXISTS `gym`.`workout_plan` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL,
  `status` TINYINT NOT NULL,
  `client_id` MEDIUMINT UNSIGNED NOT NULL,
  `employee_id` MEDIUMINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (`id` ) ,
    FOREIGN KEY (`client_id`) REFERENCES `gym`.`client` (`id`),
    FOREIGN KEY (`employee_id`) REFERENCES `gym`.`employee` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`branch`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`branch` ;

CREATE TABLE IF NOT EXISTS `gym`.`branch` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cnpj` VARCHAR(14) NOT NULL,
  `corporate_name` VARCHAR(256) NOT NULL,
  `fantasy_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX (`cnpj` ASC) 
);


-- -----------------------------------------------------
-- Table `gym`.`equipament`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`equipament` ;

CREATE TABLE IF NOT EXISTS `gym`.`equipament` (
  `id` SMALLINT(5) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` VARCHAR(512) NULL,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`branch_has_equipament`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`branch_has_equipament` ;

CREATE TABLE IF NOT EXISTS `gym`.`branch_has_equipament` (
	`branch_id` TINYINT UNSIGNED NOT NULL,
	`equipament_id` SMALLINT(5) NOT NULL,
	PRIMARY KEY (`branch_id`, `equipament_id`),
    FOREIGN KEY (`branch_id`) REFERENCES `gym`.`branch` (`id`),
    FOREIGN KEY (`equipament_id`) REFERENCES `gym`.`equipament` (`id`)
);

-- -----------------------------------------------------
-- Table `gym`.`exercise`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`exercise` ;

CREATE TABLE IF NOT EXISTS `gym`.`exercise` (
  `id` SMALLINT(5) NOT NULL AUTO_INCREMENT,
  `equipament_id` SMALLINT(5) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`equipament_id`) REFERENCES `gym`.`equipament` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`plan_exercices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`plan_exercices` ;

CREATE TABLE IF NOT EXISTS `gym`.`plan_exercices` (
  `sets` BIT(1) NOT NULL,
  `reps` TINYINT(3) NOT NULL,
  `load` SMALLINT(4) NULL,
  `workout_plan_id` INT NOT NULL,
  `exercise_id` SMALLINT(5) NOT NULL,
  PRIMARY KEY (`sets`),
    FOREIGN KEY (`workout_plan_id`) REFERENCES `gym`.`workout_plan` (`id`),
    FOREIGN KEY (`exercise_id`) REFERENCES `gym`.`exercise` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`bank_account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`bank_account` ;

CREATE TABLE IF NOT EXISTS `gym`.`bank_account` (
  `bank` SMALLINT(4) ZEROFILL NOT NULL,
  `agency` MEDIUMINT(6) NOT NULL,
  `number` MEDIUMINT(6) ZEROFILL NOT NULL,
  `employee_id` MEDIUMINT UNSIGNED NOT NULL,
    FOREIGN KEY (`employee_id`) REFERENCES `gym`.`employee` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`phone`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`phone` ;

CREATE TABLE IF NOT EXISTS `gym`.`phone` (
  `country_code` TINYINT(3) NOT NULL,
  `area_code` SMALLINT NOT NULL,
  `number` INT NOT NULL,
  `branch_id` TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (`branch_id`) REFERENCES `gym`.`branch` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`check_in`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`check_in` ;

CREATE TABLE IF NOT EXISTS `gym`.`check_in` (
  `entry_datetime` DATETIME NOT NULL,
  `exit_datetime` DATETIME NULL,
  `person_id` MEDIUMINT UNSIGNED NOT NULL,
  `branch_id` TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (`person_id`) REFERENCES `gym`.`person` (`id`),
    FOREIGN KEY (`branch_id`) REFERENCES `gym`.`branch` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`billing`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`billing` ;

CREATE TABLE IF NOT EXISTS `gym`.`billing` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` MEDIUMINT UNSIGNED NOT NULL,
  `branch_id` TINYINT UNSIGNED NOT NULL,
  `billing_datetime` DATETIME NOT NULL,
  `value` DECIMAL(8,2) UNSIGNED NOT NULL,
  `in_cash` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`client_id`) REFERENCES `gym`.`client` (`id`),
    FOREIGN KEY (`branch_id`) REFERENCES `gym`.`branch` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`billing_form`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`billing_form` ;

CREATE TABLE IF NOT EXISTS `gym`.`billing_form` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`billing_has_form`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`billing_has_form` ;

CREATE TABLE IF NOT EXISTS `gym`.`billing_has_form` (
  `billing_id` INT UNSIGNED NOT NULL,
  `billing_form_id` INT NOT NULL,
  `value` DECIMAL(8,2) UNSIGNED NOT NULL,
  `installment` TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (`billing_id`) REFERENCES `gym`.`billing` (`id`),
    FOREIGN KEY (`billing_form_id`) REFERENCES `gym`.`billing_form` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`payment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`payment` ;

CREATE TABLE IF NOT EXISTS `gym`.`payment` (
  `employee_id` MEDIUMINT UNSIGNED NOT NULL,
  `payment_datetime` DATETIME NOT NULL,
  `value` DECIMAL(10,2) UNSIGNED NOT NULL,
  `reference_month` DATETIME NOT NULL,
  `branch_id` TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (`employee_id`) REFERENCES `gym`.`employee` (`id`),
    FOREIGN KEY (`branch_id`) REFERENCES `gym`.`branch` (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`work_schedule`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`work_schedule` ;

CREATE TABLE IF NOT EXISTS `gym`.`work_schedule` (
  `id` TINYINT NOT NULL AUTO_INCREMENT,
  `entry_time` TIME NOT NULL,
  `exit_time` TIME NOT NULL,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `gym`.`employee_schedule`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gym`.`employee_schedule` ;

CREATE TABLE IF NOT EXISTS `gym`.`employee_schedule` (
	`employee_id` MEDIUMINT UNSIGNED NOT NULL,
	`work_schedule_id` TINYINT NOT NULL,
	`active` TINYINT NOT NULL,
	`start_date` DATE NOT NULL,
    FOREIGN KEY (`employee_id`) REFERENCES `gym`.`employee` (`id`),
    FOREIGN KEY (`work_schedule_id`) REFERENCES `gym`.`work_schedule` (`id`)
);
