-- Crie as Stored Procedures: 
-- a) Que insira dados na tabela produtos;

DELIMITER //
CREATE PROCEDURE sp_insert_products
(
prd_codigo INT,
prd_descricao VARCHAR(45),
prd_valor FLOAT,
prd_qtd_estoque INT,
prd_falta VARCHAR(45),
prd_status INT
)

BEGIN

INSERT INTO produtos (prd_codigo, prd_descricao, prd_valor, prd_qtd_estoque, prd_falta, prd_status)
VALUES
(sp_prd_codigo, sp_prd_descricao, sp_prd_valor, sp_prd_qtd_estoque, sp_prd_falta, sp_prd_status);

END //

DELIMITER ;

