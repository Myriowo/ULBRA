SET autocommit = false;
-- ou SET autocommit = 0;

START TRANSACTION;
INSERT INTO Assuntos
VALUES 
('A', 'Análise de Sistemas');
COMMIT;

--

START TRANSACTION;
INSERT INTO Assuntos
VALUES 
('D', 'Dundaradundun');
rollback;
COMMIT;

SELECT * FROM Assuntos;