CREATE TABLE fornecedores
(
  ID INT NOT NULL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  status VARCHAR(50) DEFAULT 'Vazio',
  cidade VARCHAR(50) NOT NULL
  );
  
 CREATE TABLE pecas
  (
    ID INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cor VARCHAR(50) NOT NULL,
    peso VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL
    );
    
    CREATE TABLE instituicoes
    (
      ID INT NOT NULL PRIMARY KEY,
      nome VARCHAR(50) NOT NULL
      );
    
    CREATE TABLE projetos
    (
      ID INT NOT NULL PRIMARY KEY,
      nome VARCHAR(50) NOT NULL,
      cidade VARCHAR(50) NOT NULL,
      Icod INT NOT NULL,
      	CONSTRAINT instituicoes FOREIGN KEY (Icod)  REFERENCES instituicoes (ID)
      );
      
      CREATE TABLE fornecimentos
      (
        ID INT NOT NULL PRIMARY KEY,
        ID_peca INT NOT NULL,
        ID_forn INT NOT NULL,
        ID_proj INT NOT NULL, 
        qtd VARCHAR(20) NOT NULL,
        	CONSTRAINT fornecimentos_pecas_fk           FOREIGN KEY (ID_peca)   REFERENCES pecas (ID),
        	CONSTRAINT fornecimentos_projetos_fk        FOREIGN KEY (ID_proj)   REFERENCES projetos(ID),
        	CONSTRAINT fornecimentos_fornecedores_fk    FOREIGN KEY (ID_forn)   REFERENCES fornecedores(ID)
        );