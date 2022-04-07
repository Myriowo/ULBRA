/* Faça um SQL para listar qual a turma que tem mais alunos matriculados. Postar arquivo turma-com-mais-alunos-matriculados.sql */

SELECT COUNT(M.idaluno) as qtd_alunos, t.idturma as turma
FROM matriculas M INNER JOIN alunos A ON M.idaluno = A.idaluno
                  INNER JOIN turmas T ON M.idturma = T.idturma
GROUP BY M.idaluno, t.idturma
ORDER BY M.idaluno DESC