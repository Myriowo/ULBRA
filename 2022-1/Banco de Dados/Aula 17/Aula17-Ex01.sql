-- 1. Criar a tabela e inserir os registros
CREATE TABLE Pessoas
(
num_pessoa INT NOT NULL PRIMARY KEY,
nome_email VARCHAR(100)
); 

START TRANSACTION;
INSERT INTO Pessoas
VALUES
(78360, 'rst.marcondes@smail.com'),
(78361,'jcc.meirelles@jmail.com'),
(78362,'mjk.amadeus@imail.com');

-- 2. Confirmar as inserções realizadas no Exercício 1
COMMIT;

SELECT * FROM Pessoas;

