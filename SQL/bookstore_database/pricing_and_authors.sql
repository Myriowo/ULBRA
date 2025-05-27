/* a. Monte um comando para excluir da tabela de livros aqueles que possuem o código maior ou igual a 2, que possuem o preço maior que 50,00 e que já foram lançados.*/
DELETE FROM Livros
SELECT * 
FROM Livros
WHERE idLivro >= 2 AND preco > 50 AND lancamento IS NOT NULL AND lancamento < CURRENT_DATE

/* b. Escreva o comando que selecionas as colunas NOME, CPF e ENDEREÇO, da tabela AUTOR, para aqueles que possuem a palabra 'JOÃO' no nome.*/
SELECT nome, cpf, endereco
FROM Autores
WHERE nome LIKE '%joao%';

/* c. Excluir o livro cujo título é 'BANCO DE DADOS DISTRIBUÍDO' ou 'BANCOS DE DADOS DISTRIBUÍDOS'. Somente essas duas opções devem ser consideradas. */
DELETE FROM Livros
WHERE titulo LIKE '%Bancos de Dados Distribuído%';

/* d. Selecione o NOME e o CPF de todos os autores que nasceram após 01 de janeiro de 1990. */
SELECT nome, cpf
FROM Autores
WHERE data_nascimento > '1990-01-01';

/* e. Selecione a matrícula e o nome dos autores que possuem RIO DE JANEIRO no seu endereço. */
SELECT matricula, nome
FROM Autores
WHERE endereco LIKE '%Rio de Janeiro%';

/* f. Atualize para zero o preço de todos os livros onde a data de lançamento for nula ou onde seu preço atual for inferior a 55.00. */
UPDATE Livros
SET preco = 0
WHERE lancamento IS NULL OR preco < 55;

/* g. Exclua todos os livros onde o assunto for diferente de 'S', 'P' ou 'B'. */
DELETE FROM Livros
WHERE idAssunto NOT NAME 'S' OR 'P' OR 'B';

/* h. Escreva o comando para contar quantos são os autores cadastrados na tabela AUTORES. */
SELECT COUNT(*) as Autores_Cadastrados
FROM Autores

/* i. Escreva o comando que apresenta qual o número médio de autores de cada livro. Você deve utilizar, novamente, a tabela AUTOR_LIVRO. */
SELECT AVG(quantos) AS medias_autores
FROM
(
SELECT idLivro, COUNT(matricula) AS quantos
FROM Autores_has_Livros
GROUP BY idLivro
)
AS consulta

/* j. Apresente o comando SQL para gerar uma listagem dos códigos dos livros que possuem ao menos dois autores. */
SELECT idLivro, COUNT(matricula) as qt
FROM Autores_has_Livros
HAVING qt >= 2

/* k. Escreva o comando para apresentar o preço médio dos livros por código de editora. Considere somente aqueles que custam mais de 45. */

/* l. Apresente o preço máximo, o preço mínimo e o preço médio dos livros cujos assuntos são 'S' ou 'P' ou 'B', para cada código de editora. */
SELECT MAX(preco) as Maximo, MIN(preco) as Minimo, AVG(preco) as Medio
FROM Livros
WHERE idAssunto in('B','P','S')

/* m. Altere o comando do exercício anterior para só considerar os livros que já foram lançados (data de lançamento inferior a data atual) e cujo o preço máximo é inferior a 100. */


