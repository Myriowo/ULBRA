/* 1. FUS que calcule a média de valor unitário dos produtos vendidos num mês de sua escolha. */

SELECT N.id_produto, AVG(valor_unit) as media_valor_unitario
FROM notas_itens I INNER JOIN notas N ON I.id_nota = N.id
WHERE N.data_emissao BETWEEN '2021-09-01' AND '2021-09-30'
GROUP BY N.id_produto 
ORDER BY media_valor_unitario DESC

/* 2. FUS que mostre os a quantidade de produtos que foram comprados pelos clientes cujo o nome começa com Maria. 
Pode mostrar o nome do produto, o nome da Maria (similar) e a quantidade comprada. Similar porque podem ter várias Marias.*/

SELECT C.nome as cliente, P.descricao as produto, SUM(I.quantidade) as quantidade_produtos
FROM notas N INNER JOIN clientes C    ON N.id_cliente = C.id
             INNER JOIN notas_itens I ON I.id_nota = N.id
             INNER JOIN produtos P    ON I.id_produto = P.id
WHERE 	    C.nome LIKE 'Maria%'
GROUP BY    C.nome, P.descricao
HAVING		SUM(I.quantidade) >1000
ORDER BY 	C.nome ASC


/* 3. Na consulta anterior, acrescente saber qual foi o produto que mais foi comprado.*/

SELECT C.nome as cliente, P.descricao as Produto, SUM(I.quantidade) as quantidade_produtos
FROM notas N INNER JOIN clientes C    ON N.id_cliente = C.id
             INNER JOIN notas_itens I ON I.id_nota = N.id
             INNER JOIN produtos P    ON I.id_produto = P.id
GROUP BY    C.nome, P.descricao
ORDER BY 	quantidade_produtos DESC
LIMIT 1

/* 4. Qual o produto mais caro quem um cliente comprou num determinado período (sua escolha). */

SELECT MAX(P.valor_unit) as max_value, P.descricao  
FROM notas N INNER JOIN notas_itens I ON I.id_nota = N.id
             INNER JOIN produtos P    ON I.id_produto = P.id
WHERE N.data_emissao >= '2020-12-01' AND N.data_emissao <= '2020-12-31'
GROUP BY P.id
ORDER BY max_value DESC
LIMIT 1

/*clientes (id, nome)
produtos (id, descricao, valor_unit)
notas (id, data_emissao, id_cliente)
notas_itens (id, id_nota, id_produto, quantidade, valor_unit)*/
