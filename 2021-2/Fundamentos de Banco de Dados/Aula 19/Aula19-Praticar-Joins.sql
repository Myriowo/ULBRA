
/* Neste cenário criaremos uma loja que entrega seus produtos por transportadora própria */

CREATE TABLE produtos
(
    id SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor_unit FLOAT NOT NULL,
    descricao VARCHAR(100)
);

CREATE TABLE cidades
(
    id SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    UF CHAR(2) NOT NULL   
);

CREATE TABLE transportes
(
    id SERIAL NOT NULL PRIMARY KEY,
    placa VARCHAR(50) NOT NULL,
    ano CHAR(4) NOT NULL,
    descricao VARCHAR(100)
);

CREATE TABLE motoristas
(
    id SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(50) NOT NULL
); 

CREATE TABLE clientes
(
    id SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_cidade INT NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(50)
);

CREATE TABLE compras
(
    id SERIAL NOT NULL PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    valor_total FLOAT NOT NULL,
    data_compra DATE NOT NULL
);

CREATE TABLE entregas
(
    id SERIAL NOT NULL PRIMARY KEY,
    id_compra INT NOT NULL, 
    id_cliente INT NOT NULL,
    id_cidade INT NOT NULL,
    id_motorista INT NOT NULL,  
    id_transporte INT NOT NULL,
    id_produto INT,
    data_entrega DATE,
        CONSTRAINT compras      FOREIGN KEY (id_compra)     REFERENCES compras(id),
        CONSTRAINT clientes     FOREIGN KEY (id_cliente)    REFERENCES clientes(id),
        CONSTRAINT cidades      FOREIGN KEY (id_cidade)     REFERENCES cidades(id),
        CONSTRAINT motoristas   FOREIGN KEY (id_motorista)  REFERENCES motoristas(id),
        CONSTRAINT transportes  FOREIGN KEY (id_transporte) REFERENCES transportes(id),
        CONSTRAINT produtos     FOREIGN KEY (id_produto)    REFERENCES produtos(id)
);

INSERT INTO clientes (nome, id, id_cidade)

VALUES
('Fernanda', 123, 31),
('João', 124, 31),
('Henrique', 125, 33),
('Maria', 126, 32);

INSERT INTO produtos (nome, valor_unit, id)

VALUES
('Leite longa vida cx/10', 23.00, 23),
('Chocolate amargo cx/100', 56.00, 24),
('Arroz da terra 5kg cx/10', 89.00, 25),
('Suco de laranja 2l cx/200', 200.00, 26);

INSERT INTO cidades (nome, UF, id)

VALUES
('Passo de torres', 'SC', 31),
('Torres', 'RS', 32),
('Brasilia', 'DF', 33),
('Mogi das Cruzes', 'SP', 34);

INSERT INTO motoristas (nome, id, telefone)

VALUES 
('Rogério', 001, '(82) 2361-7153'),
('Felipe', 002, '(34) 3632-9767'),
('Marta', 003, '(82) 3849-4456'),
('Joana', 004, '(61) 2435-3242');

INSERT INTO transportes (descricao, placa, id, ano)

VALUES
('Mercedes-Benz Axor 2546', 'MWU2557', 552, '2020'),
('DAF XF 105', 'KFE8333', 553, '2010'),
('Scania R500', 'KAR1100', 554, '2005');

INSERT INTO compras (id, id_cliente, data_compra, valor_total, id_produto, quantidade)

VALUES 
(2378, 123, '2021-09-10', 800.00, 26, 4),
(2356, 124, '2020-01-04', 345.00, 23, 23),
(2567, 125, '2019-12-12', 56.00, 24, 1),
(2876, 126, '2021-10-05', 267.00, 25, 3);

INSERT INTO entregas (id, id_compra, id_cliente, id_motorista, id_transporte, id_cidade, data_entrega)

VALUES
(007689, 2356, 124, 002, 552, 31, '2020-10-04'),
(008596, 2876, 126, 002, 552, 32, '2021-11-05'),
(094862, 2567, 125, 004, 554, 33, '2019-12-12'),
(038495, 2378, 123, 001, 553, 31, '2021-10-10');


-- contar quantas entregas foram feitas por qual motorista na cidade de passo de torres

SELECT M.nome as motorista, COUNT(E.id) as entregas
FROM entregas E INNER JOIN motoristas M ON E.id_motorista = M.id 
                INNER JOIN cidades C ON E.id_cidade = C.id
WHERE C.nome LIKE 'Passo de torres'
GROUP BY E.id, M.nome
ORDER BY entregas DESC

-- descobrir que clientes compraram x item em tal periodo

SELECT C.nome as cliente, P. nome as produto, COUNT(S.quantidade) as quantidade_compradas
FROM compras S INNER JOIN clientes C ON S.id_cliente = C.id
               INNER JOIN produtos P ON S.id_produto = P.id  
WHERE S.data_compra BETWEEN '2020-01-01' AND '2021-11-05'
GROUP BY P.id, C.nome, S.quantidade, S.data_compra
ORDER BY s.data_compra DESC 