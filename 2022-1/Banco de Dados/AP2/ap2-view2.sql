CREATE VIEW 
    itens_por_fornecedor
AS SELECT 
    a.nome as bebida,
    a.descricao as categoria,
    d.nome_forn as nome_fornecedor
FROM 
    bebidas a
INNER JOIN
    compras_has_bebidas b
ON
    a.id_bebida = b.id_bebida
INNER JOIN
    compras c
ON
    c.id_compras = b.id_compra
INNER JOIN
    fornecedores d
ON
    d.id_forn = c.id_forn