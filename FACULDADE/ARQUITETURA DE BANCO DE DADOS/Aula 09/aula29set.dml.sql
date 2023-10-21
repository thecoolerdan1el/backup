-- Todas as pessoas que são clientes (mostrar dados de person e client)

SELECT `P`.*, `C`.*
FROM `gym`.`person` AS `P`
INNER JOIN `gym`.`client` AS `C` ON `P`.`id` = `C`.`id`;

-- Utilizando o WHERE

SELECT `P`.`id`, `P`.`name`, `C`.`status`, `C`.`gympass`
FROM `gym`.`person` AS `P`, `gym`.`client` AS `C` 
WHERE `P`.`id` = `C`.`id`;

-- Utilizando o NATURAL JOIN
SELECT `P`.`id`, `P`.`name`, `C`.`status`, `C`.`gympass`
FROM `gym`.`person` AS `P`
NATURAL JOIN `gym`.`client` AS `C`;


-- Selecionar todas as fichas de treino dos clientes utlizando o WHERE para indicar a coluna de ligação das tabelas
SELECT `P`.`id`, `P`.`name`, `C`.`status`, `C`.`gympass`, `C`.`status`, `W`.*
FROM `gym`.`person` AS `P`, `gym`.`client` AS `C` , `gym`.`workout_plan` AS `W`
WHERE `P`.`id` = `C`.`id` AND `C`.`id` = `W`.`client_id`;


-- Todas as pessoas, se forem clientes mostrar dados de cliente também

SELECT `P`.`id`, `P`.`name`, `C`.`status`, `C`.`gympass`
FROM `gym`.`person` AS `P`
LEFT JOIN `gym`.`client` AS `C` ON `P`.`id` = `C`.`id`;