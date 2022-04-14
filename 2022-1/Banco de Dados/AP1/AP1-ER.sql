
CREATE TABLE categorias
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,

);

CREATE TABLE filmes
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(45) NULL DEFAULT NULL,
    titulo VARCHAR(100) NULL DEFAULT NULL,
    qtd_exemplares VARCHAR(45) NULL DEFAULT NULL,
    categorias_id INT NOT NULL,
        CONSTRAINT categorias FOREIGN KEY (categorias_id) REFERENCES categorias (id)
);

CREATE TABLE atores 
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NULL DEFAULT NULL,
    nome_real VARCHAR(45) NULL DEFAULT NULL,
    data_nasc DATE NULL DEFAULT NULL
);

CREATE TABLE clientes
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    prenome VARCHAR(45) NULL DEFAULT NULL,
    sobrenome VARCHAR(45) NULL DEFAULT NULL,
    fone VARCHAR(45) NULL DEFAULT NULL,
    endereco VARCHAR(100) NULL DEFAULT NULL,
    num_associado INT NULL DEFAULT NULL
);

CREATE TABLE locacoes
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_retirada DATE NULL DEFAULT NULL,
    data_entrega DATE NULL DEFAULT NULL,
    clientes_id INT NOT NULL,
        CONSTRAINT clientes FOREIGN KEY (clientes_id) REFERENCES clientes(id)
);

CREATE TABLE filmes_por_locacoes
(
    filmes_id INT NOT NULL,
    locacoes_id INT NOT NULL,
    PRIMARY KEY (filmes_id, locacoes_id),
        CONSTRAINT filmes FOREIGN KEY (filmes_id) REFERENCES filmes(id),
        CONSTRAINT locacoes FOREIGN KEY (locacoesid) REFERENCES locacoes(id)
);

CREATE TABLE atores_por_filmes
(
    atores_id INT NOT NULL,
    filmes_id INT NOT NULL,
    PRIMARY KEY (atores_id, filmes_id),
        CONSTRAINT atores FOREIGN KEY (atores_id) REFERENCES atores(id),
        CONSTRAINT filmes FOREIGN KEY (filmes_id) REFERENCES filmes(id)
);