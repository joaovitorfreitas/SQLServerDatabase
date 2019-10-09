/* Inserir dado de um aluno */
INSERT INTO aluno (Nome, Ra, Idade) VALUES ('Bruna', 'R124', 22);

/* Inserir dado na tabela materia*/
INSERT INTO materia(Materia) VALUES ('Português');

INSERT INTO trabalho(Nota, IdMateria, IdAluno) VALUES (9.4, 1, 2);

/* Alterar dado(s) */
UPDATE aluno SET 
Nome = 'Alef White',
Idade = 20
Where IdAluno = 1;

/* Excluir dado */

DELETE FROM materia WHERE IdMateria = 2;  