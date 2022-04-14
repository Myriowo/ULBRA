/* Faça um SQL para saber qual o titulo do filme que tem o maior número de locações.*/
SELECT COUNT(f.id) as quantos, f.titulo as filme
FROM filmes_por_locacoes fl INNER JOIN filmes f ON fl.filmes_id = f.id
                            INNER JOIN locacoes l ON fl.locacoes_id = l.id
GROUP BY f.titulo
ORDER BY quantos DESC
LIMIT 1