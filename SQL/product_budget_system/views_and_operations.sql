/* c. Criar UMA view que dê condições dos exercícios abaixo: */
CREATE VIEW orcamentos_view 
AS SELECT
FROM orcamentos o INNER JOIN orcamentos_itens oi ON o.id = oi.id_orc
				  INNER JOIN produtos p ON oi.id_prod = p.id 	

/* 1. Lista de orçamentos por produto. */
SELECT p.nome as Produto, id_prod as ID
FROM orcamentos_view
GROUP BY id_prod, nome

/* 2. Valor total de produtos orçado por período.*/
SELECT SUM(valor_total_item) as total
FROM orcamentos_view
WHERE data_orc BETWEEN '2014-07-01' AND '2014-07-30'

/* 3. Produtos que tem "Computador" no nome e que tem quantidade em estoque. */
SELECT id_orc, data_orc, status_or
FROM orcamentos_view
WHERE nome LIKE 'Computador%' AND p.saldo IS NOT NULL 

/* 4. Os 10 produtos mais orçados no mês de setembro de 2014 e que ainda tem saldo em estoque. Somente os produtos com o valor acima de R$ 500.00.*/
SELECT id_prod, nome, COUNT(id_prod) as quantas_vezes
FROM orcamentos_view
WHERE o.data_orc BETWEEN '2014-09-01' AND '20140-09-30'
AND saldo > 0 AND valor > 500
GROUP BY id_prod, nome
ORDER BY quantas_vezes DESC
LIMIT 10

/* d. Faça uma consulta utilizando a view para acrescentar 20% nos produtos que o saldo em estoque é menor ou igual a 5.*/
SELECT 
FROM
WHERE

/* e. Delete todos os produtos que não foram orçados.*/
DELETE *
FROM produtos p INNER JOIN orcamentos_itens oi ON p.id = oi.id_prod
WHERE p.id NOT IN oi.id_prod

/* f. Explique quando utilizar o GROUP BY, com exemplo SQL.*/
/* Com o Group by podemos agrupar os valores de uma coluna e também realizar cálculos sobre esses valores.*/
SELECT p.nome as produto, oi.id_prod as ID_produto, oi.qtd as quantos
FROM orcamentos_view
WHERE oi.qtd > 2
GROUP BY p.nome
ORDER BY quantos DESC

/* g. Explique quando utilizar o HAVING, com exemplo SQL.*/
/* É usada pra filtrar condições em grupos ou agregações, é frequentemente usada junto com GROUP BY.*/
SELECT colunas, função_agregação()
FROM tabela
WHERE filtro
GROUP BY colunas
HAVING filtro_agrupamento

/* h. Explique quando utilizar o UNION, com exemplo SQL.*/
/* Uma UNION combina duas ou mais SELECT. O resultado de cada SELECT deve possuir o mesmo número de colunas, e o tipo de dado de cada coluna correspondente deve ser compatível.*/
SELECT declaração_1
UNION [ALL}
SELECT declaração_2
UNION [ALL}

/* i. Explique quando utilizar o LEFT JOIN, com um exemplo SQL.*/
/* Retorna todas as linhas da tabela à esquerda, mesmo se não houver nenhuma correspondência na tabela à direita, incluindo os dados NULL.*/
SELECT colunas
FROM tabela_esq
LEFT JOIN tabela_dir
ON tabela_esq.coluna=tabela_dir.coluna;