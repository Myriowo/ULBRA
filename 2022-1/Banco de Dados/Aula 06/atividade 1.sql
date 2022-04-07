CREATE VIEW orcamentos_view 
AS SELECT oi.id_orc, oi.id_prod, data_or, status_or, valor unit, qtd, valor_total_item
FROM orcamentos_itens oi INNER JOIN orcamentos o ON oi.id_orc = o.id
	INNER JOIN produtos p ON oi.id_prod = p.id;


SELECT SUM(valor_total_item) as total
FROM orcamentos_view
WHERE o.data_orc BETWEEN '2014-07-01' AND '20140-07-30'

SELECT *
FROM orcamentos_view
WHERE nome LIKE 'Computador%'

/* 4. Os 10 produtos mais orçados no mês de setembro de 2014 e que ainda tem saldo em estoque. Somente os produtos com o valor acima de R$ 500.00.*/
SELECT id_prod, nome COUNT(id_prod) as quantas_vezes
FROM orcamentos_view
WHERE o.data_orc BETWEEN '2014-07-01' AND '20140-07-30'
AND saldo > 0 AND valor > 500

ORDER BY quantas_vezes DESC
LIMIT 10