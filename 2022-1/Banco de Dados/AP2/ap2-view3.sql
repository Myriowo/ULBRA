CREATE VIEW 
    itens_por_estoque
AS SELECT
    a.qtd as quantidade,
    b.nome as bebida
FROM 
    estoque a
INNER JOIN
    bebidas b
ON
    b.id_bebida = a.id_bebida