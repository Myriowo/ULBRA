
-- Listar todas as consultas com nome do médico, nome do paciente, data e hora.

SELECT 
M.nome as medico, p.nome as paciente, c.data, c.hora

FROM Medicos M INNER JOIN Consultas C ON M.id = C.id_medico -- ON É A RELAÇÃO ENTRE ELES.
                INNER JOIN pacientes P ON P.id = C.id_paciente;
                


-- Quais medicamentos a Dr. Julia utilizou nas suas consultas do mês de
-- outubro de 2021. O código da Dr. Júlia é 3999

SELECT
M.nome as Medico, B.nome as Medicamento

FROM Prescricao P INNER JOIN Consultas C ON C.id = P.id_consulta --    
                  INNER JOIN Medicos M ON M.id = C.id_medico
                  INNER JOIN Medicamentos B ON B.id = P.id_meds
                
WHERE M.id = 3999 AND C.data BETWEEN '2021/10/01' AND '2021/10/30';

