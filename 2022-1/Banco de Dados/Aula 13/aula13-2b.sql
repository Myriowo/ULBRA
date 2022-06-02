-- Crie as Stored Procedures: 
-- b) exclua um produto de um orçamento;

DELIMITER //
CREATE PROCEDURE sp_delete_orcp 
(
prd_codigo INT,
orc_codigo INT,
orp_valor FLOAT,
orp_qtd INT,
orp_status INT 
)

BEGIN 

DELETE FROM orcamentos_produtos
WHERE ID=prd_codigo;

END //

DELIMITER ;