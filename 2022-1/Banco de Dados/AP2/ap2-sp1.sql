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

CALL consulta_estoque ('teste');