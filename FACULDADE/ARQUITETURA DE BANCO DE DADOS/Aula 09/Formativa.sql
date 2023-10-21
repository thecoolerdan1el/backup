USE gym;

INSERT INTO gym.person
	VALUES(NULL, 'Pedro Silva', '890123254', '11111711', 'pedrosilva@gmail.com', '41999568323'),
    (NULL, 'Julio Ballestrin', '12388856786', '15111111', 'ballestrinj@gmail.com', '419239145');
    
INSERT INTO gym.person
	VALUES ('3', 'Jorge Pedro', '12312856786', '12512315', 'jorge2123@gmail.com', '4190847645');

INSERT INTO gym.person
	VALUES('4', 'Daniel Lima', '312356823', '9412445', 'daniel5@gmail.com', '124125345');
    
INSERT INTO gym.person
	VALUES('5', 'Fábio Castro', '78678378527', '9412445', 'fabinho@gmail.com', '665412315'),
    ('6', 'Pedro Paulo', '7867282', '9412445','pedropaulo@hotmail.com', '1235123632'),
    ('7', 'Marcelo Albuquerque', '9887165948', '9412445', 'marcelo@pucpr.edu.br', '125677643'),
    ('8', 'Livia Sales', '78372786', '886378823', 'livia.sales@gmail.com', '9097124125'),
    ('9', 'Leandro Lima', '37867897', '458929374', 'leandrolima@outlook.com', '9835823941'),
    ('10', 'Gabriel Bruno', '7837178', '4464118611', 'gabrielbrunbrun@gmail.com', '1215456345'),
    ('11', 'Ian Fagundes', '96732675', '6549164178', 'fagundes@gmail.com', '23557456345'),
    ('12', 'Carlos Eduardo', '223165616', '41656576156', 'carlosedu@gmail.com', '532676573');
    
	
INSERT INTO gym.client
	VALUES('1', '2023-09-22 10:14:09', TRUE, TRUE);

INSERT INTO gym.client
	VALUES('2', '2023-09-22 10:14:09', TRUE, TRUE),
    ('3', '2023-09-13 12:13:00', FALSE, FALSE),
    ('4', '2023-07-15 09:00:00', TRUE, TRUE),
    ('5', '2023-09-10 12:00:13', TRUE, FALSE),
    ('6', '2023-08-24 15:12:12', FALSE, FALSE),
    ('7', '2023-09-22 16:00:00', TRUE, TRUE);

INSERT INTO gym.employee
	VALUES('2', 'Mensalista', '2023-09-22 10:15:24', '2500.00', FALSE);
    
INSERT INTO gym.branch
	VALUES('15428988000132', 'Smart Fit', 'Smart Fit Batel');

INSERT INTO gym.equipment
	VALUES('1', '15428988000132', 'Mesa Flexora', 'Flexiona as Pernas'),
	('2', '15428988000132', 'Leg-Press', 'Pressiona as Pernas'),
	('3', '15428988000132', 'Mesa Extensora', 'Aumenta as Pernas'),
	('4', '15428988000132', 'Mesa Abductora', 'Fortalecimento de Glúteo'),
	('5', '15428988000132', 'Mesa Aductora', 'Fortalecimento do Interior da Coxa');
        
    
INSERT INTO gym.exercise
	VALUES(NULL, '1', 'Mesa Flexora', 'Pernas'),
    (NULL, '2', 'Leg-Press', 'Pernas'),
    (NULL, '3', 'Mesa Extensora', 'Pernas'),
    (NULL, '4', 'Mesa Abuctora', 'Pernas'),
    (NULL, '5', 'Mesa Aductora', 'Pernas');
    

INSERT INTO gym.workout_plan
	VALUES(NULL, '2023-09-22 10:28:30', TRUE, '1', '2');
    
INSERT INTO gym.plan_exercices
	VALUES( 1, '40', '2', '2', '6');
    
INSERT INTO gym.check_in
	VALUES('2023-09-22 10:31:00', '2023-09-22 12:00:00', '1', '15428988000132'),
    ('2023-09-23 12:30:00', '2023-09-22 14:00:00', '1', '15428988000132'),
    ('2023-09-24 12:30:00', '2023-09-22 15:00:00', '1', '15428988000132'),
    ('2023-09-25 11:25:00', '2023-09-22 14:00:00', '1', '15428988000132'),
    ('2023-09-26 12:00:00', '2023-09-22 15:00:00', '1', '15428988000132'),
    ('2023-09-27 13:00:00', '2023-09-22 14:00:00', '1', '15428988000132'),
    ('2023-09-28 12:30:00', '2023-09-22 15:00:00', '1', '15428988000132');
    
SELECT * FROM gym.exercise;

UPDATE person
	SET name = 'Jorge Amado'
    WHERE id = 1;
    
SELECT 'Jorge' FROM gym.person;
SELECT entry_datetime FROM gym.check_in WHERE '10:00:00' AND '14:00:00';
SELECT 'João' FROM gym.person;

DELETE FROM gym.check_in WHERE entry_datetime= '2023-09-28 12:30:00'

