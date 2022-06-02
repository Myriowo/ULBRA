DELIMITER $$ 
CREATE TRIGGER atualiza_quantidade AFTER INSERT ON vendas_has_bebidas
FOR EACH ROW
BEGIN
    UPDATE estoque SET estoque.qtd = qtd - NEW.qtd
    WHERE estoque.id_bebida = NEW.id_bebida;
END $$