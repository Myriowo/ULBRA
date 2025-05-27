/* Faça um SQL para selecionar os alunos que não moram na cidade onde estudam. Considerando que a cidade onde estudam é Torres. 
Exibir o código, o nome do aluno e a cidade onde ele mora. 
Postar arquivo cidade-onde-estuda-mas-nao-mora.sql */

SELECT A.nome as Aluno, C.idcid as Codigo_cidade, C.nome as Cidade
FROM alunos A INNER JOIN cidades C ON A.idcid = C.idcid            
WHERE A.idcid != 111
