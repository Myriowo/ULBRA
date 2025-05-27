/* Faça um SQL para exibir os filmes cadastrados e suas respectivas categorias.*/

SELECT f.titulo as filme, c.nome as categoria
FROM filmes f INNER JOIN categorias c ON f.categorias_id = c.id
