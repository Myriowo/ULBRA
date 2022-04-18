/* 4 - a. Estão sendo estudados aumentos nos preços dos livros. Escreva o comando SQL que retorna uma listagem contendo o titulo dos livros, e mais três colunas: 
uma contendo os preços dos livros acrescidos de 10% (deve ser chamada de ‘Opção_1’), a segunda contendo os preços acrescidos de 15% (deve ser chamada de ‘Opção_2’) 
e a terceira contendo os preços dos livros acrescidos de 20% (deve ser chamada de ‘Opção_3’). Somente devem ser considerados livros que já tenham sido lançados. */
SELECT titulo, preco, preco + ((preco) * 10)/100) AS opcao_1, preco * 1.10 AS opcao_10, preco * 1.15 AS opcao_15, preco * 1.20 AS opcao_20
FROM Livros
WHERE lancamento IS NOT NULL AND lancamento < CURRENT_DATE

/*c. Escreva o comando que apresente uma listagem dos nomes dos autores e do seu ano e mês de nascimento, para os autores brasileiros e que tem livros ainda não lançados. 
A listagem deve estar ordenada em ordem crescente de nome.*/
SELECT a.nome, year(l.data_nascimento) as ano, month(l.data_nascimento_ as mes
FROM Autores A INNER JOIN Autores_has_Livros AL ON A.matricula = AL.matricula
			   INNER JOIN Livros L ON AL.idLivro = L.idLivro 
WHERE a.nacionalidade LIKE UPPER('%brasil%') AND l.lancamento is null AND l.lancamento > CURRENT_DATE
ORDER BY a.nome ASC

