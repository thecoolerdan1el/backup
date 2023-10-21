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

            
