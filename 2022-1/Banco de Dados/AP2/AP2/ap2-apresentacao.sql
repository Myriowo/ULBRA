-- Triggers --

DELIMITER $$ 
CREATE TRIGGER cancelar_venda BEFORE DELETE ON vendas
FOR EACH ROW
BEGIN
    DELETE FROM vendas_has_bebidas WHERE id_venda = OLD.id_vendas;
END $$


DELIMITER $$ 
CREATE TRIGGER estornar_estoque BEFORE DELETE ON vendas_has_bebidas
FOR EACH ROW
BEGIN
    UPDATE estoque SET estoque.qtd = qtd + OLD.qtd
    WHERE estoque.id_bebida = OLD.id_bebida;
END $$


DELETE FROM vendas WHERE id_vendas = '1';

--

DELIMITER $$ 
CREATE TRIGGER atualiza_quantidade AFTER INSERT ON vendas_has_bebidas
FOR EACH ROW
BEGIN
    UPDATE estoque SET estoque.qtd = qtd - NEW.qtd
    WHERE estoque.id_bebida = NEW.id_bebida;
END $$

INSERT INTO vendas_has_bebidas (id_venda, id_bebida, qtd, valor_total)
VALUES 
(5,2,1,5);

-- Stored Procedures --  

DELIMITER $$
CREATE PROCEDURE consulta_estoque (nome_bebida VARCHAR(50))
BEGIN
    SELECT 
        a.id_bebida,
        b.nome,
        a.qtd
    FROM
        estoque a
    INNER JOIN
        bebidas b
    ON
        a.id_bebida = b.id_bebida
    WHERE
        b.nome = nome_bebida;
END $$

CALL consulta_estoque ('Vodka Balalaika');

--

DELIMITER $$
CREATE PROCEDURE consulta_idade (nome_cli VARCHAR(100))
BEGIN
    SELECT
        nome_cliente,
        TIMESTAMPDIFF(YEAR, data_nasc, NOW()) AS idade
    FROM
        clientes
    WHERE
        nome_cliente = nome_cli;
END $$

CALL consulta_idade ('Sophia Allana Ferreira');

--

DELIMITER $$
CREATE PROCEDURE atualizar_valor_prod (valor_novo FLOAT, nome_bebida VARCHAR(50))
BEGIN
    UPDATE
        bebidas
    SET
        valor_unit = valor_novo
    WHERE
        nome = nome_bebida;
END $$

CALL atualizar_valor_prod (30, 'Vodka Balalaika');

--

DELIMITER $$
CREATE PROCEDURE compras_por_data (data_min DATE)
BEGIN
    SELECT 
        a.id_compras,
        b.nome_forn,
        a.data_compra,
        a.valor_total
    FROM
        compras a
    INNER JOIN
        fornecedores b
    ON
        b.id_forn = a.id_forn
    WHERE
        data_compra > data_min;
END $$

CALL compras_por_data ('2022-05-20');

-- Views --

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
    d.id_bebida = c.id_bebida;
    
--

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
    d.id_forn = c.id_forn;
    
--

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
    b.id_bebida = a.id_bebida;