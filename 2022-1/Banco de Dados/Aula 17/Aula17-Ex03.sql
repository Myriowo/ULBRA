-- 3. Criar a tabela e inserir os registros
CREATE TABLE PESSOA_FISICA
(
num_pessoa_pf INT NOT NULL PRIMARY KEY,
nom_pessoa VARCHAR(100),
num_cpf VARCHAR(40),
num_documento_identidade INT,
nom_orgao_emissor_doc_ident CHAR(10),
dat_nascimento DATE,
idt_sexo CHAR(1),
cod_estado_civil INT
);

START TRANSACTION;
INSERT INTO PESSOA_FISICA
VALUES
(78360,'Roberto Marcondes','99911122233',19999888,'SSP','1988-03-15','M',1),
(78361,'Julio Meirelles','99811233134',18888999,'SSP','1975-02-17','M',1),
(78362,'Maria Rita Amadeu','99711333235',17777888,'SSP','1980-12-23','F',1);

-- 4. Confirme as inserções realizadas no Exercício 3.
COMMIT;

-- 5. Altere o estado civil da pessoa física com código 78361 para 2
START TRANSACTION;
UPDATE PESSOA_FISICA
SET cod_estado_civil = '2'
WHERE num_pessoa_pf = 78361;

-- 6. Consulte a alteração realizada no Exercício 5
SELECT * FROM PESSOA_FISICA;

-- 7. Desfaça a operação do Exercício 5.
ROLLBACK;

-- 8. Consulte novamente o registro da tabela PESSOA_FISICA cujo código da pessoa seja igual a 78361
SELECT * FROM PESSOA_FISICA WHERE num_pessoa_pf = 78361;

-- 9. Qual foi o resultado da operação realizada no Exercício 8? Justifique
-- Os dados continuam os mesmos que estavam salvos antes das alterações. 

-- 10. Reafaça o exercício 5 e confirme a alteração
START TRANSACTION;
UPDATE PESSOA_FISICA
SET cod_estado_civil = '2'
WHERE num_pessoa_pf = 78361;
COMMIT;

SELECT * FROM PESSOA_FISICA;