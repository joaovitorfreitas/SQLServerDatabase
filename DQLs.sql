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
