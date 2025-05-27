INSERT INTO Editoras (ideditora, nome)
VALUES
('1', 'Mirandela Editora'),
('2', 'Editora Via-Norte'),
('3', 'Editora Ilhas Tijucas'),
('4', 'Maria Jose Editora');

INSERT INTO Assuntos (idAssunto, descricao)
VALUES
('B', 'Banco de Dados'),
('P', 'Programação'),
('R', 'Redes'),
('S', 'Sistemas Operacionais');

INSERT INTO Livros (idlivro, titulo, preco, lancamento, ideditora, idAssunto)
VALUES
('1', 'Bancos de Dados para a WEB', '31.20', '1999-01-10', '1', 'B'),
('2', 'Programando em Linguagem C', '30.00', '1997-10-01', '1', 'P'),
('3', 'Programando em Linguagem C++', '111.50', '1998-11-01', '3', 'P'),
('4', 'Bancos de Dados na Bioinformática', '48.00', '0000-00-00', '2', 'B'),
('5', 'Redes de Computadores', '42.00', '1996-09-01', '2', 'R');

INSERT INTO Autores (matricula, nome, cpf, endereco, data_nascimento, nacionalidade)
VALUES
('1', 'Roberta Del Gato', '94203073014', 'Rua das Flores, Rio de Janeiro', '1982-03-10', 'Brasileira'),
('2', 'Ricardo Yago Brito', '52025550405', 'Travessa da Fraternidade, São Paulo', '1977-02-04', 'Brasileiro'),
('3', 'Elaine Lívia Moura', '69168679220', 'Avenida Marginal, Manaus', '1988-02-11', 'Portuguesa'),
('4', 'Carlos Eduardo Lima', '13423294221', 'Ramal Macário, Brasília', '1961-01-19', 'Polonês'),
('5', 'Isabela da Rocha', '62321040211', 'Rua São Pedro, Torres', '1958-03-15', 'Brasileira');

INSERT INTO Autores_has_Livros (matricula, idLivro)
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(2, 4),
(3, 4),
(4, 4),
(5, 5),
(2, 5),
(3, 5),
(4, 5); 

UPDATE Livros
SET lancamento = null
WHERE idLivro 
IN(4,5)