-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema revendedora_jogos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema revendedora_jogos
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `revendedora_jogos`;
DROP DATABASE IF EXISTS `revendedora_jogos`;
CREATE SCHEMA IF NOT EXISTS `revendedora_jogos` DEFAULT CHARACTER SET utf8 ;
USE `revendedora_jogos` ;

-- -----------------------------------------------------
-- Table `revendedora_jogos`.`site`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`site` (
  `CNPJ` VARCHAR(14) NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `trading_name` VARCHAR(30) NOT NULL,
  `company_name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CNPJ`),
  UNIQUE INDEX `CNPJ_UNIQUE` (`CNPJ` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`person` (
  `id_person` INT NOT NULL AUTO_INCREMENT,
  `phone_number` VARCHAR(20) NOT NULL,
  `name` VARCHAR(60) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `birth_date` DATE NOT NULL,
  `CNPJ` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`id_person`),
  INDEX `fk_person_site_idx` (`CNPJ` ASC) VISIBLE,
  UNIQUE INDEX `id_person_UNIQUE` (`id_person` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  CONSTRAINT `fk_person_site`
    FOREIGN KEY (`CNPJ`)
    REFERENCES `revendedora_jogos`.`site` (`CNPJ`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`employee` (
  `id_employee` INT NOT NULL AUTO_INCREMENT,
  `salary` DECIMAL(8,2) NOT NULL,
  `role` VARCHAR(20) NOT NULL,
  `id_person` INT NOT NULL,
  PRIMARY KEY (`id_employee`),
  INDEX `fk_employee_person1_idx` (`id_person` ASC) VISIBLE,
  CONSTRAINT `fk_employee_person1`
    FOREIGN KEY (`id_person`)
    REFERENCES `revendedora_jogos`.`person` (`id_person`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`game_genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`game_genre` (
  `id_genre` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_genre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`midia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`midia` (
  `id` INT AUTO_INCREMENT,
  `audiovisual` BLOB,
  `product_id_product` INT NOT NULL,
  `site_CNPJ` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`id`, `product_id_product`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_midia_product1_idx` (`product_id_product` ASC) VISIBLE,
  INDEX `fk_midia_site1_idx` (`site_CNPJ` ASC) VISIBLE,
  CONSTRAINT `fk_midia_product1`
    FOREIGN KEY (`product_id_product`)
    REFERENCES `revendedora_jogos`.`product` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_midia_site1`
    FOREIGN KEY (`site_CNPJ`)
    REFERENCES `revendedora_jogos`.`site` (`CNPJ`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



-- -----------------------------------------------------
-- Table `revendedora_jogos`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`product` (
  `id_product` INT AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(200) NOT NULL,
  `id_genre` INT NOT NULL,
  PRIMARY KEY (`id_product`),
  INDEX `fk_product_game_genre1_idx` (`id_genre` ASC) VISIBLE,
  CONSTRAINT `fk_product_game_genre1`
    FOREIGN KEY (`id_genre`)
    REFERENCES `revendedora_jogos`.`game_genre` (`id_genre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`items_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`items_order` (
  `id_order` INT NOT NULL,
  `id_items_order` INT AUTO_INCREMENT,
  `product_value` DECIMAL(8,2) NOT NULL,
  `product_id` INT NOT NULL,
  PRIMARY KEY (`id_items_order`, `id_order`),
  INDEX `id_order_idx` (`id_order` ASC) VISIBLE,
  INDEX `fk_items_order_product1_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `id_order`
    FOREIGN KEY (`id_order`)
    REFERENCES `revendedora_jogos`.`order` (`id_order`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_items_order_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `revendedora_jogos`.`product` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`order` (
  `id_order` INT AUTO_INCREMENT,
  `date_order` DATETIME NOT NULL,
  `value` VARCHAR(45) NOT NULL,
  `id_client` MEDIUMINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_order`),
  INDEX `fk_shopping_cart_order1_idx` (`id_client` ASC) VISIBLE,
  INDEX `fk_order_client1_idx` (`id_client` ASC) VISIBLE,
  CONSTRAINT `fk_order_client1`
    FOREIGN KEY (`id_client`)
    REFERENCES `revendedora_jogos`.`client` (`id_client`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`client` (
  `id_client` MEDIUMINT UNSIGNED AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `id_person` INT NOT NULL,
  PRIMARY KEY (`id_client`),
  INDEX `fk_client_person1_idx` (`id_person` ASC) VISIBLE,
  UNIQUE INDEX `id_client_UNIQUE` (`id_client` ASC) VISIBLE,
  CONSTRAINT `fk_client_person1`
    FOREIGN KEY (`id_person`)
    REFERENCES `revendedora_jogos`.`person` (`id_person`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`bank_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`bank_details` (
  `id` INT AUTO_INCREMENT,
  `agency` INT NOT NULL,
  `account_num` INT NOT NULL,
  `payment_type` INT NOT NULL,
  `bank_name` VARCHAR(45) NOT NULL,
  `id_person` INT NOT NULL, 
  UNIQUE INDEX `agency_UNIQUE` (`agency` ASC) VISIBLE,
  UNIQUE INDEX `account_num_UNIQUE` (`account_num` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_bank_details_person1`
    FOREIGN KEY (`id_person`)
    REFERENCES `revendedora_jogos`.`person` (`id_person`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`payment_method`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`payment_method` (
	`id` INT AUTO_INCREMENT,
  `code` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `id_order` INT NOT NULL,
  INDEX `fk_payment_method_shopping_cart1_idx` (`id_order` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_payment_method_shopping_cart1`
    FOREIGN KEY (`id_order`)
    REFERENCES `revendedora_jogos`.`order` (`id_order`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora_jogos`.`payment_employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `revendedora_jogos`.`payment_employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `amount` DECIMAL(8,2) NOT NULL,
  `discount` DECIMAL(8,2) NOT NULL,
  `payday` DATE NOT NULL,
  `id_employee` INT NOT NULL,
  INDEX `fk_payment_employee_employee1_idx` (`id_employee` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_payment_employee_employee1`
    FOREIGN KEY (`id_employee`)
    REFERENCES `revendedora_jogos`.`employee` (`id_employee`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


/*
Linguagem de Manipulação de Dados (DML - do inglês Data Manipulation Language):

Inserir ao menos 6 registros em cada uma das tabelas do banco de dados.
Criar 5 instruções de atualização de registros em diferentes tabelas.
Criar 5 instruções de exclusão de registros em diferentes tabelas.
*/

USE revendedora_jogos;

-- 1 INSERT EM SITE
INSERT INTO site(CNPJ, address, trading_name, company_name, phone_number, email)
	VALUES("949852000120", "Avenida Magalhães Freitas 2840", "NexusGLTDA", "Nexus Game", "41999999999", "nexus.games@gmail.com");

-- 10 INSERTS EM PERSON
INSERT INTO person(phone_number, name, email, birth_date, CNPJ)
	VALUES("41998889999", "Carlos Machado", "carlos.machado@gmail.com", "1989-08-10", "949852000120"),
    ("41998887799", "Pedro Silva", "pedro44@gmail.com", "2000-04-02", "949852000120"),
    ("41998885599", "Matheus Henrique", "henmathe@gmail.com", "1999-09-28", "949852000120"),
    ("41998886699", "João Paulo", "jpnss245@gmail.com", "1990-08-10", "949852000120"),
    ("41778889999", "Gabriela Silva", "gabs8979@gmail.com", "2003-08-09", "949852000120"),
    ("415588876599", "Luciana Mendes", "luciana.men4@gmail.com", "2001-12-10", "949852000120"),
    ("41558845699", "Pedro Pascal", "pascalthepedro@outlook.com", "1920-04-12", "949852000120"),
    ("415588613999", "Julio César", "grandeimperador@gmail.com", "1950-01-01", "949852000120"),
    ("415581239999", "Tulho Maravilha", "tulhomaravilha@gmail.com", "2000-10-10", "949852000120"),
    ("415576589999", "Jorge Ben Jor", "jorge.ben.jor@gmail.com", "1939-03-22", "949852000120");
    
    

-- 6 INSERTS EM CLIENTE
INSERT INTO client(id_person, username, password)
	VALUES("1","carlos_m_12", "crl21452"),
    ("2","silva.pedro", "pedro123"),
    ("3","mat_corsair", "matresar215"),
    ("4","jp_nss123", "joao123456"),
    ("5","gabss_2412", "gab123"),
    ("6","luc_123", "123lucluc");
    
-- 6 INSERTS EM EMPLOYEE 
INSERT INTO employee(salary, role, id_person)
	VALUES(2000, "Dev-Site", "7"),
	(2000, "Dev-Site", "8"),
	(2000, "Dev-Site", "9"),
	(1350, "SAC", "10");


-- 6 INSERTS EM GAME_GENRE
INSERT INTO game_genre(name, id_genre)
	VALUES("Tiro", "1"),
    ("Sobrevivência", "2"),
    ("Ação", "3"),
    ("Aventura", "4"),
    ("Terror", "5"),
    ("Suspense", "6");


-- 10 INSERTS EM PRODUCT
INSERT INTO product(name, description, id_genre)
	VALUES("Grand Theft Auto 1", "Jogo de Tiro em Terceira Pessoa", "1"),
    ("Grand Theft Auto 2", "Jogo de Tiro em Terceira Pessoa", "1"),
    ("Grand Theft Auto 3", "Jogo de Tiro em Terceira Pessoa", "1"),
    ("Grand Theft Auto 4", "Jogo de Tiro em Terceira Pessoa", "1"),
    ("Grand Theft Auto 5","Jogo de Tiro em Terceira Pessoa", "1"),
    ("Minecraft", "Jogo De Sobrevivência", "2"),
    ("Halo Infinite", "Jogo de Tiro em Primeira Pessoa", "1"),
    ("Don't Starve Together", "Jogo de Sobrevivência", "2"),
    ("Red Dead Redemption", "Jogo de Tiro em Terceira Pessoa", "1"),
    ("Red Dead Redemption 2", "Jogo de Tiro em Terceira Pessoa", "1");
    
    
-- 7 INSERTS MIDIA
INSERT INTO midia(product_id_product, site_CNPJ)
	VALUES("1", 949852000120),
    ("2", 949852000120),
    ("2", 949852000120),
    ("5", 949852000120),
    ("3", 949852000120),
    ("4", 949852000120),
    ("5", 949852000120);

-- 6 INSERTS ORDER
INSERT INTO `order`(date_order, value, id_client)
	VALUES("2023-10-12", "55", 4),
	("2023-08-08", "50", 6),
	("2023-09-13", "50", 6),
	("2023-01-09", "500", 2),
	("2023-06-22", "33", 5),
	("2023-08-09", "235", 1);

-- 6 INSERTS ITEMS_ORDER
INSERT INTO items_order(id_order, product_value, product_id)
	VALUES("1", "320", "5"),
			("2", "100", "1"),
            ("3", "50", "2"),
            ("4", "125", "3"),
            ("5", "33", "4"),
            ("6", "89", "6");
    


    
-- 6 INSERTS BANK_DETAILS
-- 7, 8, 9, 10 --
-- payment types(HIPOTETICOS) 1-pix 2-boleto 3-conta corrente
INSERT INTO `bank_details`(agency, `account_num`, payment_type, bank_name, id_person)
	VALUES (260, 101234567, 2, 'nubank', 7),
			(001, 101234568, 3, 'banco do brasil', '9'),
			(237, 101234569, 1, 'banco bradesco', '8' ),
            (033, 101234560, 3, 'banco santander', '1'),
            (104, 101234571, 1, 'caixa economica', '2'),
            (232, 00728922, 2, 'banco do yudi', '3');
            



-- 6 INSERTS EM PAYMENT_EMPLOYEE
INSERT INTO `payment_employee`(date, amount, discount, payday, id_employee)
	VALUES('2023-10-05', 2000.00, 470.00, "2023-01-01", '1'),
			('2020-08-05', 2000.00, 470.00, "2023-01-01", '2'),
            ('2022-11-05', 2000.00, 470.00, "2023-01-01", '3'),
            ('2023-08-05', 2000.00, 470.00, "2023-01-01", '4'),
            ('2022-09-05', 2000.00, 470.00, "2023-02-01", '4'),
            ('2023-11-05', 1350.00, 470.00, "2023-02-01", '3');
            


-- 6 INSERTS EM PAYMENT_METHOD
INSERT INTO `payment_method`(`code`, `name`, id_order)
	VALUES( 01, "PIX", "1"),
    (02, "Boleto", "3"),
    (03, "Cartão de Crédito", "2"),
    (03, "Cartão de Crédito", "4"),
    ("01", "PIX", "5"),
    ("01", "PIX", "6");


-- ATUALIZAÇÃO DE REGISTROS --
-- Criar 5 instruções de atualização de registros em diferentes tabelas 

UPDATE person
SET phone_number = '41 998874960', email = 'pedroPK44@gmail.com'
WHERE id_person = 2;

UPDATE employee
SET salary = '3250.57', role = 'Dev-Site Pleno'
WHERE id_employee = 1;

UPDATE client
SET username = 'carloba_12'
WHERE id_client = 12;

UPDATE bank_details
SET payment_type = 1
WHERE agency = '003';

UPDATE person
SET name = 'Caio Júlio Cesar'
WHERE id_person = 8;


-- DELETAR REGISTROS --
-- Criar 5 instruções de exclusão de registros em diferentes tabelas.

-- 1
DELETE FROM revendedora_jogos.payment_employee WHERE id = 1; 

-- 2
DELETE FROM revendedora_jogos.game_genre WHERE id_genre = 6;

-- 3
DELETE FROM revendedora_jogos.midia WHERE id = 2;

-- 4
DELETE FROM revendedora_jogos.bank_details WHERE id = 6;

-- 5
DELETE FROM revendedora_jogos.product WHERE id_product = 10;
