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
    d.id_bebidas = c.id_bebidas