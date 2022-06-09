-- 13. Altere o campo data de nascimento da tabela PESSOA_FISICA cujo código da pessoa seja 78362 para 13/01/1998
START TRANSACTION;
UPDATE PESSOA_FISICA
SET dat_nascimento = '1998-01-13'
WHERE num_pessoa_pf = 78362;

SAVEPOINT savepoint1;
SELECT * FROM PESSOA_FISICA;

-- 14. Altere o campo número do RG da tabela PESSOA_FISICA cujo código da pessoa seja 78362 para 13321142
START TRANSACTION;
UPDATE PESSOA_FISICA
SET num_documento_identidade = 13321142
WHERE num_pessoa_pf = 78362;

-- 15. Desfaça as operações realizadas nos exercícios 13 e 14
ROLLBACK;
ROLLBACK TO savepoint1;

-- 16. As transações realizadas nos Exercícios 13 e 14 poderiam ser realizadas em uma única operação? Escreva a instrução para isso e confirme a transação
START TRANSACTION;
UPDATE PESSOA_FISICA AS PF
SET PF.dat_nascimento = '1998-01-13', PF.num_documento_identidade = 13321142
WHERE PF.num_pessoa_pf = 78362;

-- Quando as transações são realizadas individualmente em sequência, eu percebi que não é possível dar ROLLBACK na anterior, somente na mais recente
ROLLBACK;

SELECT * FROM PESSOA_FISICA;
