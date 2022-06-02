-- 3. Faça um trigger para alterar o estoque de um produto quando ocorrer quaisquer alterações
-- na tabela orcamentos_produtos. Também irá alterar o estoque, quando um item na tabela
-- orcamentos_produtos for cancelado. Isso ocorre quando o campo Orp_status recebe o valor de 2.

DELIMITER //
 CREATE TRIGGER tr_alt_estoque AFTER UPDATE ON orcamentos_produtos
 FOR EACH ROW
 
 BEGIN
 
 IF orp_status = 2 
 THEN
 UPDATE orp_qtd 
 SET 