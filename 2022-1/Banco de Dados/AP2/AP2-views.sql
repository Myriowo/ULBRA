CREATE VIEW 
    itens_por_fornecedores
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
;
    
    
CREATE VIEW 
    itens_comprados 
AS SELECT 
    b.nome_cliente as cliente,
    a.data_venda as data,
    c.qtd as quantidade,
    d.nome as bebida
FROM 
    vendas a
INNER JOIN
    clientes b
ON
    b.id_cliente = a.id_cliente
INNER JOIN
    vendas_has_bebidas c
ON
    c.id_venda = a.id_vendas
INNER JOIN
    bebidas d
ON
    d.id_bebida = c.id_bebida
;    
 
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
 