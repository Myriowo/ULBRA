/* Faça um SQL para exibir o nome do aluno, o código do curso, o nome do curso, o nome do professor da turma e a data que ele se matriculou. 
Apresentar somente para alunos que tenham se matriculado entre semestre 1 de 2019, considere que as matrículas iniciam em janeiro. 
Postar arquivo alunos-matriculados.sql */

SELECT A.nome as Aluno, M.data_matricula as data_matricula, C.nomecurso as Curso
FROM alunos A INNER JOIN matriculas M  ON A.idaluno = M.idaluno
              INNER JOIN disciplinas D ON D.iddisc = M.iddisc
              INNER JOIN turdiscs TD   ON TD.iddisc = M.iddisc
              INNER JOIN turmas T      ON T.idturma = TD.idturma
              INNER JOIN cursos C      ON C.idcurso = T.idcurso

SELECT * FROM turdiscs
