INSERT INTO atores (id,nome,nome_real,data_nasc)
VALUES
(1,'valeria rodrigues','valeria dos santos rodrigues','1974-10-12'),
(2,'rogerio','roberval da silva','1962-09-23'),
(3,'priscila de oliveira','priscila fernanda matth de oliveira','1992-03-10');

INSERT INTO categorias (id,nome)
VALUES
(1,'Ficção cientifica'),
(2,'Ação'),
(3,'Terror'),
(4,'Romance'),
(5,'Infantil');

INSERT INTO filmes (id,numero,titulo,qtd_exemplares,categorias_id)
VALUES
(1,856,'O problema de Marrie',5,4),
(2,783,'Sua mãe no chuveiro',9,3),
(3,945,'Florzinha Lilia',2,5),
(4,182,'Correndo contra o tempo',NULL,1),
(5,924,'Tiro,Tiro e Explosão',1,2),
(6,285,'Claramente nao foi ela',9,4);

INSERT INTO clientes (id,prenome,sobrenome,fone,endereco,num_associado)
VALUES
(1,'Nathan Marcelo','Moura','(67) 98476-9001','Avenida Afonso Pena 1897',23),
(2,'Isabelle Heloise','Castro','(95) 98183-6763','Avenida dos Imigrantes',65),
(3,'Luis','Fonseca','(83) 98639-3310','Rua Mar de Lincoln',54)
(4,'Ferdinando','JGHDU','(65) 95738-7643','Rua Sim',67);

INSERT INTO locacoes (id,data_retirada,data_entrega,clientes_id)
VALUES
(1,'2021-05-02','2021-05-12',2),
(2,'2021-06-20','2021-06-29',2),
(3,'2021-07-05','2021-07-15',1),
(4,'2021-07-05','2021-07-23',3);

INSERT INTO filmes_por_locacoes (filmes_id,locacoes_id)
VALUES
(5,1),
(3,2),
(6,3),
(2,4);

