-- 4. Faça um trigger para armazenar em uma tabela chamada produtos_atualizados
-- (prd_codigo, prd_qtd_anterior, prd_qtd_atualizada, prd_valor) quando ocorrer quaisquer
-- alterações nos atributos da tabela produtos. No entando, caso a alteração atribua o valor
-- zero para o atributo prd_qtd_estoque, a tabela produtos_em_falta deverá ser alimentada
-- com as mesmas informações da tabela produto, exceto o atributo prd_valor. Além disso,
-- o atributo prd_status do produto atualizado deve ser modificado para NULL e o atributo orp_Status
-- de todos os orcamentos_produtos desse produto deverá ser modificado também para NULL. 

CREATE TABLE produtos_atualizados
(
prd_codigo INT AUTO_INCREMENT NOT NULL,
prd_qtd_anterior INT,
prd_qtd_atualizada INT,
prd_valor FLOAT 
);

DELIMITER //

CREATE TRIGGER tr_prd_att AFTER UPDATE ON produtos
FOR EACH ROW
 
BEGIN
INSERT INTO produtos_atualizados
(prd_codigo INT, prd_qtd_anterior INT, prd_qtd_atualizada INT, prd_valor FLOAT)
VALUES
(
