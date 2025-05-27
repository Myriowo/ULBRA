/* Faça um SQL para exibir quantos filmes há para cada categoria */
SELECT COUNT(f.id) as quantos, c.nome as categoria
FROM filmes f INNER JOIN categorias c ON f.categorias_id = c.id
GROUP BY f.categorias_id
ORDER BY quantos DESC