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
INSERT INTO client(id_person, username, password, id_order)
	VALUES("1","carlos_m_12", "crl21452", "1"),
    ("2","silva.pedro", "pedro123", "2"),
    ("3","mat_corsair", "matresar215", "3"),
    ("4","jp_nss123", "joao123456", "4"),
    ("5","gabss_2412", "gab123", "5"),
    ("6","luc_123", "123lucluc", "6");
    
-- 6 INSERTS EM EMPLOYEE
INSERT INTO employee(salary, role, id_person)
	VALUES(2000, "Dev-Site", "7"),
	(2000, "Dev-Site", "8"),
	(2000, "Dev-Site", "9"),
	(1350, "SAC", "10");
    
-- 6 INSERTS ORDER
INSERT INTO `order`(date_order, value, id_client)
	VALUES("2023-10-12", "55", "4"),
	("2023-08-08", "50", "6"),
	("2023-09-13", "50", "6"),
	("2023-05-22", "350", "8"),
	("2023-01-09", "500", "2"),
	("2023-06-22", "33", "5"),
	("2023-08-09", "235", "1"),
	("2023-12-12", "350", "9"),
	("2023-12-10", "50", "3"),
	("2023-07-12", "120", "2"),
	("2023-03-05", "1000", "7");

		
		