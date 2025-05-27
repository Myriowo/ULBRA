CREATE TABLE colaboradores
(
    matricula INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(25) NOT NULL
);

CREATE TABLE equipes
(
    COD INT NOT NULL PRIMARY KEY,
    cod_coordenador INT NOT NULL,
    colaborador_1 VARCHAR(50),
    colaborador_2 VARCHAR(50),
    colaborador_3 VARCHAR(50),
        CONSTRAINT colaboradores  FOREIGN KEY (cod_coordenador)  REFERENCES colaboradores(matricula)
);

CREATE TABLE projetos
(
    ID INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(225) NOT NULL,
    horas INT NOT NULL,
    cod_equipe INT NOT NULL,
    tipo_proj INT NOT NULL,
        CONSTRAINT equipes  FOREIGN KEY (cod_equipe)  REFERENCES equipes(COD)   
);

CREATE TABLE participantes_projeto
(
    id_projeto INT NOT NULL PRIMARY KEY,
    matricula_colaborador INT NOT NULL,
        CONSTRAINT projetos  FOREIGN KEY (matricula_colaborador)  REFERENCES colaboradores(matricula)
);

CREATE TABLE projetos_sociais
(
    ID INT NOT NULL PRIMARY KEY,
    publico_beneficiario VARCHAR(225) NOT NULL,
    id_projeto INT NOT NULL,
        CONSTRAINT projetos  FOREIGN KEY (id_projeto)  REFERENCES projetos(ID)
);


CREATE TABLE melhorias_de_processo
(
    ID INT NOT NULL PRIMARY KEY,
    resultados_esperados VARCHAR(225) NOT NULL,
    id_projeto INT NOT NULL,
        CONSTRAINT projetos  FOREIGN KEY (id_projeto)  REFERENCES projetos(ID)
);

CREATE TABLE comentarios
(
    ID INT NOT NULL PRIMARY KEY,
    id_projeto INT NOT NULL,
    matricula_colaborador INT NOT NULL,
    data_comment DATE NOT NULL,
    horario TIME NOT NULL,
        CONSTRAINT projetos  FOREIGN KEY (id_projeto)              REFERENCES projetos(ID),
                             FOREIGN KEY (matricula_colaborador)   REFERENCES colaboradores(matricula)    
);