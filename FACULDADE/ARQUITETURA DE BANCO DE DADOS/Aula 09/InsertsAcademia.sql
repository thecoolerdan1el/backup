-- inserts branch
INSERT INTO `gym`.`branch`
	VALUES  (null, '13413413456789', 'Smart Fit ltda', 'Smart Fit Portão'),
			(null, '51234123512331', 'Smart Fit ltda', 'Smart Fit Centro'),
            (null, '23412312351234', 'Smart Fit ltda', 'Smart Fit Agua Verde'),
            (null, '73463456464355', 'Smart Fit ltda', 'Smart Fit Fazendinha'),
            (null, '13457471335734', 'Smart Fit ltda', 'Smart Fit Palladium'),
            (null, '76354667354522', 'Smart Fit ltda', 'Smart Fit Curitiba');

-- inserts person

INSERT INTO `gym`.`person` 
	VALUES (null, 'Antônio dos Santos', '01010112221', '01010112221','antonio.santos@gmail.com', '41998989898', '1992-01-01'),
		   (null, 'Augusto Marques', '01010101122', '01010101122','augusto.marques@gmail.com', '41998989898', '1997-11-17'),
		   (null, 'Angela Silva', '01010101123', '01010101123','angela.silva@gmail.com', '41997979797', '1993-12-22'),
		   (null, 'Andrei de Andrade', '01010101124', '01010101124','andrei.andrade@gmail.com', '41996969696', '1981-05-29'),
		   (null, 'Bianca Montenegro', '01010101125', '01010101125','bianca.montenegro@gmail.com', '41995959595', '2000-02-13'),
		   (null, 'Bárbara Correa', '01010101126', '01010101126','barbara.correa@gmail.com', '41994949494', '2000-10-02'),
		   (null, 'Caio Matos', '01010101127', '01010101127','caio.matos@gmail.com', '41993939393', '2000-07-08'),
		   (null, 'Carla Antunes', '01010101128', '01010101128','carla.antunes@gmail.com', '41992929292', '1982-04-14'),
		   (null, 'David da Silva', '01010101129', '01010101129','david.silva@gmail.com', '41991919191', '1997-08-15'),
		   (null, 'Evandro Marques', '01010101110', '01010101110','evandro.marques@gmail.com', '41990909090', '2000-09-19'),
		   (null, 'Eliane de Jesus', '01010101111', '01010101111','eliane.jesus@gmail.com', '41998899889', '1986-04-9'),
		   (null, 'Fabrício Cordeiro', '01010101112', '01010101112','fabricio.cordeiro@gmail.com', '41997799779', '1997-06-11'),
		   (null, 'Fernanda de Deus', '01010101113', '01010101113','fernanda.deus@gmail.com', '41996699696', '2000-10-16');


-- inserts client
INSERT INTO `gym`.`client`
	VALUES (1, now(), 1, 1),(2, now(), 0, 1),(4, now(), 1, 0),(5, now(), 0, 1),
			(6, now(), 1, 0),(8, now(), 0, 1),(9, now(), 1, 1),(12, now(), 0, 1);

-- inserts employee
INSERT INTO `gym`.`employee`
	VALUES (2, 'Personal Trainer', now(), 2500, 1),(3, 'Recepcionista', now(), 1700, 1),
			(5, 'Administrador(a)', now(), 2900, 0),(7, 'Faxineira(a)', now(), 1200, 1),
            (8, 'Personal Trainer', now(), 1900, 0),(10, 'Recepcionista', now(), 1700, 1),
            (11, 'Gerente', now(), 3200, 1),(13, 'Personal Trainer', now(), 2700, 1);


-- insert work_schedule
INSERT INTO `gym`.`work_schedule`
	VALUES (null, '06:00', '09:00'), (null, '09:00', '12:00'), (null, '09:00', '12:00'), (null, '12:00', '15:00'),
		   (null, '15:00', '18:00'), (null, '18:00', '21:00'), (null, '21:00', '23:00'), (null, '09:00', '13:00'),
           (null, '08:00', '12:00'),(null, '13:00', '17:00'),(null, '08:00', '17:00');

-- insert employee_schedule
-- employee personal -> 2, 8, 13
-- employee admin -> 5
-- employee gerente -> 11
-- employee recepcionista -> 3
-- employee faxineira -> 7

INSERT INTO `gym`.`employee_schedule` 
	VALUES (2, 1, 1, '2023-01-05'),  (2, 4, 1, '2023-02-05'), (2, 2, 0, '2023-03-05'), 
			(8, 2, 1, '2023-05-05'), (8, 7, 1, '2023-05-05'), (2, 6, 0, '2023-05-05'), 
            (13, 3, 1, '2023-06-05'), (13, 5, 1, '2023-06-05');

-- insert equipament
INSERT INTO `gym`.`equipament`
	VALUES (null, 'Cadeira abdutor', 'Equipamento membros inferiores'),
			(null, 'Cadeira adutora', 'Equipamento membros inferiores'),
            (null, 'Cadeira extensora', 'Equipamento membros inferiores'),
            (null, 'Cadeira flexora', 'Equipamento membros inferiores'),
            (null, 'Leg Press 90', 'Equipamento membros inferiores'),
            (null, 'Leg Press 45', 'Equipamento membros inferiores'),
            (null, 'Smith', 'Equipamento membros inferiores e superiores'),
            (null, 'Alteres', 'Alteres para exercícios livres'),
            (null, 'Barra grande', 'Barra para exercícios livres'),
            (null, 'Barra pequena', 'Barra para exercícios livres'),
            (null, 'Banco reto supino', 'Equipamento membros superiores'),
            (null, 'Voador', 'Equipamento membros superiores'),
            (null, 'Supino inclinado supino', 'Equipamento membros superiores'),
            (null, 'Supino declinado supino', 'Equipamento membros superiores'),
            (null, 'Supino reto Máquina', 'Equipamento membros superiores'),
            (null, 'Supino inclinado Máquina', 'Equipamento membros superiores'),
            (null, 'Cross Over', 'Equipamento membros superiores'),
            (null, 'Bicicleta', 'Equipamento aquecimento'),
            (null, 'Cross', 'Equipamento aquecimento'),
            (null, 'Esteira', 'Equipamento aquecimento'),
            (null, 'Colchonete', 'Colchonete exercícios no chão'),
            (null, 'Rosca Scott', 'Equipamento membros superiores'),
            (null, 'Pulldown', 'Equipamento membros superiores');
            
-- insert branch_equipament
INSERT INTO `gym`.`branch_has_equipament` 
	VALUES (1, 1),(1, 2),(1, 3),(1, 4),(1, 5),(1, 6),(1, 7),(1, 8),(1, 9),(1, 10),(1, 11),(1, 12),(1, 13),(1, 14),(1, 15),(1, 16),(1, 17),(1, 18),(1, 19),(1, 20),(1, 21),(1, 22),
			(2, 1),(2, 2),(2, 3),(2, 4),(2, 5),(2, 6),(2, 7),(2, 8),(2, 9),(2, 10),(2, 11),(2, 12),(2, 13),(2, 14),(2, 15),(2, 16),(2, 17),(2, 18),(2, 19),(2, 20),(2, 21),(2, 22),
            (3, 1),(3, 2),(3, 3),(3, 4),(3, 5),(3, 6),(3, 7),(3, 8),(3, 9),(3, 10),(3, 11),(3, 12),(3, 13),(3, 14),(3, 15),(3, 16),(3, 17),(3, 18),(3, 19),(3, 20),(3, 21),(3, 22),
            (4, 1),(4, 2),(4, 3),(4, 4),(4, 5),(4, 6),(4, 7),(4, 8),(4, 9),(4, 10),(4, 11),(4, 12),(4, 13),(4, 14),(4, 15),(4, 16),(4, 17),(4, 18),(4, 19),(4, 20),(4, 21),(4, 22),
            (5, 1),(5, 2),(5, 3),(5, 4),(5, 5),(5, 6),(5, 7),(5, 8),(5, 9),(5, 10),(5, 11),(5, 12),(5, 13),(5, 14),(5, 15),(5, 16),(5, 17),(5, 18),(5, 19),(5, 20),(5, 21),(5, 22),
            (6, 1),(6, 2),(6, 3),(6, 4),(6, 5),(6, 6),(6, 7),(6, 8),(6, 9),(6, 10),(6, 11),(6, 12),(6, 13),(6, 14),(6, 15),(6, 16),(6, 17),(6, 18),(6, 19),(6, 20),(6, 21),(6, 22);
            

INSERT INTO `gym`.`exercise`
	VALUES (null, 1, "Interno Coxas", 'Inferiores'),
    (null, 2, "Interno Coxas", 'Inferiores'),
    (null, 3, "Frontal Coxas", 'Inferiores');
    
-- insert workout_plan
-- clients -> 1,2,4,5,6,8,9,12
-- employee -> 2, 8, 13

INSERT INTO `gym`.`workout_plan`
	VALUES (null, '2023-01-10 18:30:00', 1, 1, 8),(null, '2023-01-15 17:30:00', 1, 2, 2),(null, '2023-01-09 12:20:00', 1, 4, 13),
    (null, '2023-02-05 09:25:00', 1, 5, 13),	(null, '2023-02-10 18:30:00', 1, 6, 8),(null, '2023-02-10 18:30:00', 1, 1, 2),
    (null, '2023-02-10 13:30:00', 1, 8, 8),(null, '2023-03-10 09:30:00', 1, 2, 13),(null, '2023-03-10 13:30:00', 1, 8, 13),
    (null, '2023-03-10 14:30:00', 1, 9, 8),(null, '2023-04-10 10:30:00', 1, 12, 2),(null, '2023-04-10 08:30:00', 1, 6, 2),
    (null, '2023-04-10 15:30:00', 1, 12, 8),(null, '2023-05-10 11:30:00', 1, 4, 8),(null, '2023-05-10 14:30:00', 1, 2, 2),
    (null, '2023-05-10 16:30:00', 1, 1, 13),(null, '2023-06-10 13:30:00', 1, 9, 8),(null, '2023-06-10 17:30:00', 1, 12, 2);


-- inserts billing