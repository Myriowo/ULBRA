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

CALL atualizar_valor_prod (2, 'teste');