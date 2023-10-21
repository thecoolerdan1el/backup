-- Selecionar todos os aparelhos de cada filial.
SELECT `main_branch`.`id`, `branch_equipment`.`branch_id`, `equipament`.*
FROM `gym`.`branch` AS `main_branch`
LEFT JOIN `gym`.`branch_has_equipament` AS `branch_equipment` ON `main_branch`.`id` = `branch_equipment`.`branch_id`
INNER JOIN `gym`.`equipament` AS `equipament` ON `branch_equipment`.`branch_id` = `equipament`.`id`;


-- Selecionar todas as fichas de treino de cada cliente.
SELECT `plan`.`id`, `client`.`id`
FROM `gym`.`workout_plan` AS `plan`
LEFT JOIN `gym`.`client` AS `client` ON `plan`.`id` = `client`.`id`;

-- Selecionar todos os pagamentos de cada um dos funcionários (Mostrando os dados de funcionário, pessoa e pagamento).
SELECT `payment`.`employee_id`, `employee`.`id`
FROM `gym`.`payment` AS `payment`
LEFT JOIN `gym`.`employee` AS `employee` ON `payment`.`employee_id` = `employee`.`id`;

-- Selecionar a quantidade de fichas de cada cliente (Mostrando os dados pessoais de cada cliente).
SELECT `plan`.`id`, `client`.*
FROM `gym`.`workout_plan` AS `plan`
LEFT JOIN `gym`.`client` AS `client` ON `plan`.`id` = `client`.`id`;

-- Selecionar a quantidade de equipamentos de cada academia.
SELECT `equipment`.`id`, `branch`.`branch_id`
FROM `gym`.`equipament` AS `equipment`
LEFT JOIN `gym`.`branch_has_equipament` AS `branch` ON `equipment`.`id` = `branch`.`branch_id`;

-- 7 Selecionar todos os funcionários que já realizaram o registro de alguma ficha de treino (mostrar també, dados pessoas do funcionário).
SELECT `employee`.`id`, `plan`.`id`, `person`.*
FROM `gym`.`employee` AS `employee`
LEFT JOIN `gym`.`workout_plan` AS `plan` ON `employee`.`id` = `plan`.`id`
LEFT JOIN `gym`.`person` AS `person` ON `employee`.`id` = `person`.`id`;

-- 8 Selecionar todas as fichas de treino de 2023.
SELECT * FROM `gym`.`workout_plan`
	WHERE `created_at` BETWEEN '2023-01-01' AND '2023-12-31';

-- 9 Selecionar a quantidade mensal de fichas de treino.
SELECT * FROM `gym`.`workout_plan`;
	
    
-- 10 Selecionar a quantidade de checkins realizados em cada filial.
SELECT `check_in`.`branch_id`, `branch`.`id`
FROM `gym`.`check_in` AS `check_in`
INNER JOIN `gym`.`branch` AS `branch` ON `check_in`.`branch_id` = `branch`.`id`;