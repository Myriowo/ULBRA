
CREATE TABLE cidades
(
    idcid SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    UF CHAR(2) NOT NULL
);

CREATE TABLE disciplinas
(
    iddisc SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE cursos
(
    idcurso SERIAL NOT NULL PRIMARY KEY,
    nomecurso VARCHAR(100) NOT NULL,
    valorcredito INT NOT NULL
);

CREATE TABLE professores
(
    idprof SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    endereco VARCHAR(100),
    idcid INT NOT NULL,
        CONSTRAINT cidades FOREIGN KEY (idcid) REFERENCES cidades (idcid)
);

CREATE TABLE alunos
(
    idaluno SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(50) NOT NULL,
    endereco VARCHAR(100),
    idcid INT NOT NULL,
        CONSTRAINT cidades FOREIGN KEY (idcid) REFERENCES cidades (idcid)
);

CREATE TABLE turmas
(
    idturma SERIAL NOT NULL PRIMARY KEY,
    idprof INT NOT NULL,
    sala INT NOT NULL,
    capacidade INT NOT NULL,
    idcurso INT NOT NULL,
        CONSTRAINT cursos      FOREIGN KEY (idcurso) REFERENCES cursos (idcurso),
        CONSTRAINT professores FOREIGN KEY (idprof)  REFERENCES professores (idprof)
);

CREATE TABLE turdiscs
(
    idturma INT NOT NULL,
    iddisc INT NOT NULL,
        CONSTRAINT turmas       FOREIGN KEY (idturma) REFERENCES turmas (idturma),
        CONSTRAINT disciplinas  FOREIGN KEY (iddisc)  REFERENCES disciplinas (iddisc)
);

CREATE TABLE matriculas
(
    data_matricula DATE NOT NULL,
    idturma INT NOT NULL,
    idaluno INT NOT NULL,
    iddisc INT NOT NULL,
        CONSTRAINT alunos      FOREIGN KEY (idaluno)  REFERENCES alunos (idaluno),
        CONSTRAINT disciplinas FOREIGN KEY (iddisc)   REFERENCES disciplinas (iddisc),
        CONSTRAINT turmas      FOREIGN KEY (idturma)  REFERENCES turmas (idturma)
);


INSERT INTO cursos (idcurso, nomecurso, valorcredito)
VALUES
(123, 'ADS', 25),
(124, 'Enfermagem', 15),
(125, 'Medicina', 58),
(126, 'Design Gráfico',22);


INSERT INTO cidades(idcid, nome, UF)
VALUES
(111, 'Torres', 'RS'),
(112, 'Passo de Torres', 'SC');


INSERT INTO alunos(idaluno, nome, telefone, idcid)
VALUES
(43,'Maria','99823457',111),
(78,'Felipe','8948572',112);


INSERT INTO professores(idprof,nome,cpf,email,idcid)
VALUES
(0985,'Cristina Lima','338.080.500-98','cristina.lima@email.com',111),
(0856,'Fernando Rodrigues','292.930.660-25','f.rodrigues@email.com',112);

INSERT INTO disciplinas(iddisc, nome)
VALUES
(008, 'Layout'),
(007, 'Cores'),
(020, 'Anatomia'),
(056, 'Fundamento de Banco de Dados');


INSERT INTO turmas(idturma,idprof,sala,capacidade,idcurso)
VALUES 
(25,0985,01,25,125),
(70,0856,02,30,126);


INSERT INTO turdiscs(idturma,iddisc)
VALUES
(25,020),
(70,007);

INSERT INTO matriculas(data_matricula, idaluno, iddisc,idturma)
VALUES
('2019-01-01',43,007,70),
('2019-10-05',78,020,25);
