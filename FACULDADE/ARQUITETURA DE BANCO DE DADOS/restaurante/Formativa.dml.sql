USE restaurante;

-- 1. Inserir um registro de produto nas comandas 5, 6, 10 e 12.
INSERT INTO restaurante.registro(data_hora,valor_produto, quantidade, id_comanda, id_garcom, id_produto)
	VALUES('2023-10-06 09:58:32',18, 2, 5, 7, 4),
    ('2023-10-06 09:58:32', 45, 1, 6, 5, 12),
    ('2023-10-06 09:58:32', 7, 1, 10, 7, 1),
    ('2023-10-06 09:58:32', 7, 3, 12, 6, 2);


-- 2. Atualizar o valor do produto 8 para R$ 12,00.
UPDATE restaurante.produto 
SET 
    valor = 12
WHERE
    id = 8;
    
    
-- 3. Atualizar a quantidade (mudar para 3) do produto 2, registrado na comanda 2, pelo garçom com 5.
UPDATE restaurante.registro 
SET 
    quantidade = 3
WHERE
    id_comanda = 2 AND id_garcom = 5
        AND id_produto = 2;

    
-- 4. Excluir o registro do produto 19 na comanda  2.
DELETE FROM restaurante.registro 
WHERE
    id_produto = 19 AND id_comanda = 2;

-- 5. Inserir os ingredientes necessários para preparação do produto 4 ("Caipirinha de Limão") e vincular esses ingredientes.
INSERT INTO restaurante.ingrediente(id, nome, quantidade, unidade)
	VALUES(4, 'Caipirinha de Limão', '12', '5');
    
    
    
-- Atividades Operadores

-- 1. Selecionar as pessoas que nasceram depois de "1990-01-01",  ordenadas por nome em ordem alfabética.
SELECT 
    nome
FROM
    restaurante.pessoa
WHERE
    data_nasc BETWEEN '1990-01-01' AND '2023-10-6';

-- 2. Selecionar as comandas cujo valor seja maior do que R$ 100,00, ordenadas do maior para o menor valor.
SELECT 
    valor_total
FROM
    restaurante.comanda
WHERE
    valor_total > 100
ORDER BY valor_total ASC;

-- 3. Selecionar as comandas registradas entre "2022-02-01" e "2022-09-02", ordenadas por data de criação.
SELECT 
    *
FROM
    restaurante.comanda
WHERE
    data_criacao BETWEEN '2022-02-01' AND '2022-09-02';

-- 4. Atualizar o valor do produto 10, aumentando 10%.
UPDATE restaurante.produto
SET valor = valor * 1.10
WHERE id = 10;

-- 5. Atualizar o valor do produto 7, aumentando R$ 2,30.
UPDATE restaurante.produto
SET valor = 2.30
WHERE id = 7;

-- 6. Atualizar o valor dos produtos com valor maior que 40 reais, dando um desconto de 12%.
UPDATE restaurante.produto
SET valor = valor * (12/100)
WHERE valor > 40;

-- 7. Inserir o pagamento referente ao valor da comanda 1;
INSERT INTO restaurante.pagamento(valor, data_hora, id_cliente)
VALUES(194, '2023-09-01 00:00:00', 1);

-- 8. Selecionar os registros que não estão ligados a nenhum pagamento de comissão.
SELECT * FROM restaurante.registro;

-- 9. Selecionar todas as pessoas cuja antepenúltima letra do nome é igual a "T".
SELECT * FROM restaurante.cliente 
WHERE nome;


-- 1. Consultar valor máximo, mínimo e médio dos produtos cadastrados (Nomear os campos como Máximo, Mínimo e Média).
SELECT MAX(valor) AS 'Máximo', MIN(valor) AS 'Mínimo', AVG(valor) AS 'Média' FROM restaurante.produto;

-- 2. Consultar número de registros de cada um dos garçons.
SELECT id_garcom, COUNT(id_garcom) FROM restaurante.registro
GROUP BY id_garcom;

-- 3. Os valor total dos registros de cada garçom que efetuou mais do que 3 registros.
SELECT id_garcom, SUM(quantidade * valor_produto) FROM restaurante.registro
GROUP BY id_garcom;

-- 4. Consultar o valor total e o número de comandas já registradas.
SELECT id, SUM(valor_total), COUNT(id) FROM restaurante.comanda
GROUP BY id;

-- 5. Consultar as comandas que não possuem registro de produtos.
SELECT * FROM restaurante.comanda
WHERE num_items = 0;

-- 6. Consultar o id dos garçons que registraram mais do que R$ 120,00.
SELECT id_garcom, SUM(valor_produto) FROM restaurante.registro
WHERE id_garcom = 5 OR id_garcom = 7
GROUP BY id_garcom;

-- 7. Consultar o valor total gasto e o número de comandas de cada um dos clientes.
SELECT id_cliente, COUNT(*), SUM(valor_total) FROM restaurante.comanda
GROUP BY id_cliente;

-- 8. Consultar os valores distintos de produtos no banco de dados.
SELECT valor, COUNT(*) FROM restaurante.produto
GROUP BY id;

-- 9. Atualizar a quantidade disponível de cada um dos produtos diminuindo a quantidade dos produtos registrados.


-- 10. Selecionar o valor médio das comandas e o valor médio dos produtos consumidos.
SELECT SUM(valor_total / COUNT(*)), SUM(valor_total/SUM(num_items)) FROM restaurante.comanda
GROUP BY id;



