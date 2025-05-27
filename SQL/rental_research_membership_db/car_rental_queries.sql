CREATE TABLE clientes
(
    cpf VARCHAR(14) NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL
);

CREATE TABLE marcas_carro
(
    cod INT NOT NULL PRIMARY KEY,
    marca VARCHAR(50) NOT NULL 
);

CREATE TABLE carros
(
    placa INT NOT NULL PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    cod_marca INT NOT NULL,
    marca VARCHAR(50) NOT NULL,
    ano CHAR(4) NOT NULL,
        CONSTRAINT marcas_carro FOREIGN KEY (cod_marca) REFERENCES marcas_carro(cod),
                                FOREIGN KEY (marca)     REFERENCES marcas_carro(marca)     
);

CREATE TABLE alugueis
(
    cod_registro INT NOT NULL PRIMARY KEY,
    data_aluguel DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    valor VARCHAR(50) NOT NULL,
    cpf_cliente VARCHAR(14) NOT NULL,
    placa_carro INT NOT NULL,
        CONSTRAINT clientes FOREIGN KEY (cpf_cliente) REFERENCES clientes(cpf),
        CONSTRAINT carros   FOREIGN KEY (placa_carro) REFERENCES carros(placa)
);

--- Quais carros foram locados no mês de setembro de 2021.

SELECT 
A.*,
C.*

FROM alugueis A INNER JOIN carros C ON A.placa_carro = C.placa
WHERE A.data_aluguel BETWEEN '2021/09/01' AND '2021/09/30';

--- Quais clientes que tem silva no nome.

SELECT nome
FROM clientes
WHERE nome like '%silva%';

--- Faça uma atualização para acrescentar 20% nos valores dos aluguéis.

UPDATE alugueis SET valor = valor*1.2;
