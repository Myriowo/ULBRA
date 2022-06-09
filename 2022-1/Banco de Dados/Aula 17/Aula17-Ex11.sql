-- 11. Exclua da tabela PESSOA_FISICA o registro com código de pessoal igual a 78362
START TRANSACTION;
DELETE FROM PESSOA_FISICA
WHERE num_pessoa_pf = 78362;

-- 12. Desfaça a transação realizada no Exercício 11
ROLLBACK;

SELECT * FROM PESSOA_FISICA;