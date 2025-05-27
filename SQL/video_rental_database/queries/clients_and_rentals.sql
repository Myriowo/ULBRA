/* Faça um SQL para exibir o nome de todos os clientes e se houver locação, mostrar quais os filmes que eles (cada um) tem locado.*/
SELECT c.prenome as nome, f.titulo as filme
FROM clientes c LEFT JOIN locacoes l ON c.id = l.clientes_id
                LEFT JOIN filmes_por_locacoes fl ON l.id = fl.locacoes_id
                LEFT JOIN filmes f ON f.id = fl.filmes_id
GROUP BY c.prenome