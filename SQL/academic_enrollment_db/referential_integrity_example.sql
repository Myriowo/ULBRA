/* Explique o conceito Integridade Referencial. De um exemplo SQL DDL para ilustrar melhor a sua explicação, usando a modelagem relacional (“Academico”). 
Postar arquivo questao-sobre-int-ref.sql */

/* Integridade Referencial visa garantir a não corrupção dos dados, não permitindo que um registro "filho" exista sem um registro "pai". A tentativa de exclusão ou alteração
da chave primária de um registro "pai" é chamada de violação de chave estrangeira. 
*/

CREATE TABLE cidades
(
    idcid SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    UF CHAR(2) NOT NULL
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

/* Na tabela PROFESSORES declaramos um relacionamento com a tabela CIDADES pela FOREIGN KEY (chave estrangeira) 'idcid'. 
Se tentarmos excluir o registro correspondente a alguma cidade, essa operação não vai ser permitida, 
pois há registros na tabela PROFESSORES que dependem da existência do registro que estamos tentando excluir.
*/