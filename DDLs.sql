/*	Criar Banco */
	CREATE DATABASE boletim;

/*	Excluir banco */
DROP DATABASE boletim;

/*	Usar o Banco */
USE  boletim;

/* Criar tabela de aluno */
--Note null - server para obrigar o dado ser preenchido
--Identity - serve para auto autoincrementar de 1 em 1
CREATE TABLE aluno (
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL, 
	Nome VARCHAR (100),
	Ra VARCHAR(20),
	Idade INT
);

CREATE TABLE materia(
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR(50) NOT NULL
);
CREATE TABLE trabalho(
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	--Chamamos nossas chaves estrangeiras
	IdMateria INT FOREIGN KEY REFERENCES materia (IdMateria),
	IdAluno   INT FOREIGN KEY REFERENCES aluno (IdAluno)
);


/* Incluir nova coluna */

ALTER TABLE materia ADD teste VARCHAR(2);

/* Excluir Coluna */
ALTER TABLE materia DROP COLUMN teste;


