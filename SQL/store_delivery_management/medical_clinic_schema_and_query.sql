CREATE TABLE cidades
(
    ID serial NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    UF CHAR(2) NOT NULL
);

insert into cidades (nome, uf)
	values
    ('Torres','RS'),
    ('Capão','RS'),
    ('Itapema','SC');
    
    Select * from cidades

CREATE TABLE medicos
(
    ID serial NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    fone VARCHAR(50),
    cidade_id INT NOT NULL,
    CONSTRAINT cidades FOREIGN KEY (cidade_id) REFERENCES cidades(ID)
  		ON DELETE RESTRICT
  		ON UPDATE CASCADE
);

CREATE TABLE pacientes
(
    ID serial NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cidade_id INT NOT NULL,
    CONSTRAINT cidades FOREIGN KEY (cidade_id) REFERENCES cidades(ID)
    	ON DELETE RESTRICT
  		ON UPDATE CASCADE
);

CREATE TABLE consultas
(
    ID serial NOT NULL PRIMARY KEY,
    data_consulta DATE not null,
  	valor float default 0,
    medico_id INT NOT NULL,
    paciente_id INT NOT NULL,
    CONSTRAINT medicos FOREIGN KEY (medico_id) REFERENCES medicos(ID)
  		ON DELETE RESTRICT
  		ON UPDATE CASCADE,
    CONSTRAINT pacientes FOREIGN KEY (paciente_id) REFERENCES pacientes(ID)
    	ON DELETE RESTRICT
  		ON UPDATE CASCADE
);

-- 5 - Todos os médicos que já atenderam algum paciente da cidade de Torres.

SELECT medicos.nome AS medicos_atenderam_torres
FROM consultas INNER JOIN medicos ON consultas.medico_id = medicos.id
               INNER JOIN pacientes ON consultas.paciente_id = pacientes.id
	           INNER JOIN cidades ON pacientes.cidade_id = cidades.id

WHERE cidades.nome = 'Torres'