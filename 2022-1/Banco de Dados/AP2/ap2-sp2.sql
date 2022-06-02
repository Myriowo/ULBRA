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