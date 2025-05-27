CREATE TABLE pesquisadores
(
    cod INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE artigos
(
    cod INT NOT NULL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    pag_inicial INT NOT NULL,
    pag_final INT NOT NULL,
    cod_periodico INT NOT NULL,
    titulo_periodico VARCHAR(100) NOT NULL,
    editora VARCHAR(100),
    cod_pesquisador INT NOT NULL
        CONSTRAINT pesquisadores  FOREIGN KEY (cod_pesquisador)  REFERENCES pesquisadores(cod)
);

---Listar o artigo com código 1234.

SELECT cod
FROM artigos
WHERE cod like '1234%';

---Listar os artigos da editora Saraiva.

SELECT editora
FROM artigos
WHERE editora = 'Saraiva';

---Listar os pesquisadores onde o nome inicia com João.

SELECT nome
FROM pesquisadores
WHERE nome like 'joão%';