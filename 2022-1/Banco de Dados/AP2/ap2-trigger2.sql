DELIMITER $$ 
CREATE TRIGGER cancelar_venda BEFORE DELETE ON vendas
FOR EACH ROW
BEGIN
    DELETE FROM vendas_has_bebidas WHERE id_venda = OLD.id_vendas;
END $$