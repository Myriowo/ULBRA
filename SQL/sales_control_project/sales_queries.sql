/* SQL Joins
clientes (id, nome)
produtos (id, descricao, valor_unit)
notas (id, data_emissao, id_cliente)
notas_itens (id, id_nota, id_produto, quantidade, val_unit)

1. FUS que retorne quais notas foram emitidas no mês de set de 2021:*/

SELECT * -- COUNT(*) CONTA QUANTOS ITENS TEM
FROM notas
WHERE data BETWEEN '2021-09-01' AND '2021-09-30'
-- Ordenadas pelas notas mais recentes:
ORDER BY data DESC  
/* Sempre o último comando do SELECT, exceto quando tiver LIMIT
   Somente um ORDER BY, porem pode ordenar mais de um campo!
   DESC = Descendente 
   ASC  = Ascendente  */
-- Também mostre o cliente em cada nota:
SELECT id, data_emissao, id_cliente, c.nome 
FROM notas N INNER JOIN clientes C ON N.id_cliente = C.id
WHERE data BETWEEN '2021-09-01' AND '2021-09-30'
ORDER BY data DESC 

/* 2. FUS que retorne quais produtos foram comprados no natal do ano passado.
Mostre o nome dos produtos e o valor que eles foram comprados: */

SELECT P.descricao as produto, I.quantidade, I.valor_unit as valor_na_epoca
FROM notas_itens I INNER JOIN notas N    ON I.id_nota = N.id
                   INNER JOIN produtos P ON P.id = I.id_produto
WHERE n.data_emissao LIKE '2020-12-25'
-- Filtrar valor unitario pra acima de 500
    AND I.valor_unit >= 500
-- Filtrar por valores que tenham valor maior que o valor atual
    AND I.valor_unit > P.valor_unit 

/* 1- onde está a inf que diz que o produto foi comprado por alguem em alguma data?
 notas e notas_itens
2- como eu faço pra descobrir o tempo que um prod. foi comprado?
notas(data_emissao)
3- onde guarda o nome de cada produto?
produtos(descricao)
4- eu tenho 2 val_uni.. qual eu devo usar? qual me mostra a inf. de compra?
val_unit do produtos mostra o valor unitario 
val_unit de notas_itens mostra o valor total da compra
*/

 /* 3.FUS que mostre quais os dois clientes que mais compraram produtos:
 GROUP BY: agrupar */

 SELECT id_cliente, count(ID) as quantos 
 FROM notas
 GROUP BY id_cliente 
 ORDER BY quantos DESC
 LIMIT 2

/* Quais são os produtos mais vendidos? */

SELECT id_produto, SUM(quantidade) as quantidade_total
FROM notas_itens
GROUP BY id_produto
ORDER BY quantidade DESC
