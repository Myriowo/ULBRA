CREATE VIEW filmes_locados_view AS 
SELECT f.titulo as filme, l.data_retirada as data_retirada
FROM filmes f LEFT JOIN filmes_por_locacoes fl ON fl.filmes_id = f.id
                            LEFT JOIN locacoes l ON fl.locacoes_id = l.id
 
/*Lista dos filmes locados:*/
SELECT *
FROM filmes_locados_view
WHERE data_retirada IS NOT NULL

/*Lista dos filmes não locados:*/
SELECT *
FROM filmes_locados_view
WHERE l.data_retirada IS NULL