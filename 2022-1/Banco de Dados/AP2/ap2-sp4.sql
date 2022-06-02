DELIMITER $$
CREATE PROCEDURE compras_por_data (data_min DATE)
BEGIN
    SELECT 
        a.id_compras,
        b.nome_forn,
        a.data_compra,
        a.valor_total
    FROM
        compras a
    INNER JOIN
        fornecedores b
    ON
        b.id_forn = a.id_forn
    WHERE
        data_compra > data_min;
END $$

CALL compras_por_data ('2022-04-01');