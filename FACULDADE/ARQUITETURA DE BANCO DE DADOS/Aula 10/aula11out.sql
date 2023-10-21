USE restaurante;

-- Recuperar todas as pessoas que são clientes

SELECT * FROM restaurante.pessoa
INNER JOIN restaurante.cliente ON cliente.id = pessoa.id;

-- Recuperar todas as pessoas, se for cliente recuperar dados de cliente também

SELECT * FROM restaurante.pessoa
LEFT JOIN restaurante.cliente ON cliente.id = pessoa.id;

-- Todos os clientes que são pessoas (somente pessoas que são cliente)

SELECT * FROM restaurante.pessoa
RIGHT JOIN restaurante.cliente ON cliente.id = pessoa.id;

-- Recuperar todos os pagamentos de funcionário (tabela pagamento_funcionário)que estão associados ao registro de produtos nas comandas (tabelas registro)

SELECT * FROM restaurante.pagamento_funcionario
INNER JOIN restaurante.registro ON pagamento_funcionario.id = registro.id_comissao;


-- Recuperar todos os registros de produto que não foram pagos

SELECT * FROM restaurante.pagamento_funcionario
LEFT JOIN restaurante.registro ON pagamento_funcionario.id = registro.id_comissao
WHERE pagamento_funcionario.id IS NULL;

-- Recuperar todos os pagamentos de funcionários, se estiverem relacionados a registro, retornar os dados de registro também 
SELECT * FROM restaurante.pagamento_funcionario
LEFT JOIN restaurante.registro ON pagamento_funcionario.id = registro.id_comissao;

-- FULL JOIN
(SELECT * FROM restaurante.pagamento_funcionario
RIGHT JOIN restaurante.registro ON pagamento_funcionario.id = registro.id_comissao)
UNION
(SELECT * FROM restaurante.pagamento_funcionario
LEFT JOIN restaurante.registro ON pagamento_funcionario.id = registro.id_comissao);