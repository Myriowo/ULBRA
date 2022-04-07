CREATE TABLE tipos_socio
(
    cod INT NOT NULL PRIMARY KEY,
    descricao TEXT NOT NULL
);

CREATE TABLE socios
(
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    cod_tipo INT NOT NULL,
    descricao_tipo TEXT NOT NULL
        CONSTRAINT tipos_socio  FOREIGN KEY (cod_tipo)        REFERENCES tipos_socio(cod)
                                FOREIGN KEY (descricao_tipo)  REFERENCES tipos_socio(descricao)
);

CREATE TABLE servicos
(
    cod INT NOT NULL PRIMARY KEY,
    mes_referencia DATE NOT NULL,
    valor FLOAT NOT NULL,
    descricao TEXT NOT NULL,
    id_socio INT NOT NULL
        CONSTRAINT socios  FOREIGN KEY (id_socio)  REFERENCES socios(id)
);

---Listar os serviços onde o valor pago é maior que 500. 

SELECT valor
FROM servicos
WHERE valor >500;

---Listar os pedidos onde o mês de referência é janeiro de 2020.

SELECT mes_referencia
FROM servicos
WHERE mes_referencia BETWEEN '2020/01/01' AND '2020/01/31';

---Listar os sócios que moram na rua que tem no nome Barão do Rio Branco.

SELECT endereco
FROM socios
WHERE endereco like '%Barão do Rio Branco%';