/* Pedro foi contratado como desenvolvedor de software de uma empresa. Em seu primeiro dia de trabalho ele se
deparou com o DER (Diagrama Entidade-Relacionamento), que representa os dados de um sistema de controle de malotes.
Foi solicitado a Pedro relatório para o sistema contendo os seguintes dados: o nome de todos os funcionárioos que
enviaram os malotes, o código dos malotes enviados, a descrição de seus conteúdos e a situação dos maiores.
Para a geração do relatório, Pedro tem que fazer uma consulta utilizando o comando SELECT da linguagem SQL.*/

SELECT nome, codigo_malote, descricao, situacao_malote
FROM malotes m INNER JOIN conteudos c ON m.codigo_conteudo = c.codigo_conteudo
               INNER JOIN funcionarios f ON m.matricula = f.matricula