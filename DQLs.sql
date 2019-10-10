/* Mostrar dados*/
SELECT * FROM aluno;

SELECT * FROM materia;

/* Mostrar dados específicos de um aluno pelo Id*/
SELECT * FROM aluno WHERE IdAluno = 2;

/* Mostrar dados em uma "busca" Com LIKE -- % entre as aspas*/
SELECT * FROM aluno WHERE Nome LIKE '%Santos%';

/* Ordenar por Nome do aluno de forma ascendente*/
SELECT * FROM Aluno ORDER BY Nome ASC;

/* Ordenar por Nome do aluno de forma decrescente*/
SELECT * FROM Aluno ORDER BY Nome DESC;


/*Juntamos as 3 tabelos usando INNER JOIN*/
SELECT  * FROM trabalho

INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria 
INNER JOIN aluno   ON aluno.IdAluno = trabalho.IdAluno




/*Juntamos as 3 tabelos usando INNER JOIN*/

--Deixamos somente os dados que nos interessam no momento
SELECT  
	aluno.Nome,
	aluno.Ra,
	aluno.Idade,
	materia.Materia,
	trabalho.Nota
FROM trabalho

INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria 
INNER JOIN aluno   ON aluno.IdAluno = trabalho.IdAluno

/* TRUNCATE - Apaga todos os registros uma tabela*/
TRUNCATE TABLE trabalho;



/* Utilizamos a função anativa COUNT ] 
para retornar o número de registros 
na minha tabela */

/* Usamos o Alias "AS" para nomear a coluno */

SELECT COUNT(*)  AS total_registros FROM aluno;

/* Pegamos a idade maxima dos alunos */
SELECT MAX(Idade) AS idade_maxima FROM aluno;

/* Pegamos a idade mínima dos alunos */
SELECT MIN(Idade) AS idade_minima FROM aluno;

/* Pegamos a média de Idade dos alunos */
SELECT AVG(Idade) AS media_de_idade FROM aluno;

/* Somamos as idades */
SELECT SUM(Idade) AS soma_de_idades FROM aluno;

/* Juntamos todas funções em uma única consulta */
SELECT
	Count(*)   AS total,
	MAX(Idade) AS idade_maxima,
	MIN(Idade) AS idade_minima,
	AVG(Idade) AS media_idade,
	SUM(Idade) AS soma_idade
FROM aluno;

/* SUBSTRING */
--Pegamos parte de uma string
SELECT SUBSTRING(Nome , 0, 3) AS inicial FROM aluno;

/* UPPER */
--Deixar tudo em maiúsculo
SELECT UPPER(Nome) AS Nome FROM aluno;

/* LOWER */
SELECT LOWER(Nome) AS Nome From aluno;