DELIMITER $$ 
CREATE TRIGGER estornar_estoque BEFORE DELETE ON vendas_has_bebidas
FOR EACH ROW
BEGIN
    UPDATE estoque SET estoque.qtd = qtd + OLD.qtd
    WHERE estoque.id_bebida = OLD.id_bebida;
END $$