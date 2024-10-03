CREATE DATABASE Bibliotec;

USE Bibliotec;

--DROP TABLE Curso;  usa-se para dropar a tabela. 

CREATE TABLE Usuario(
	UsuarioID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(100),
	DtNascimento DATE,
	Email VARCHAR(100),
	Senha VARCHAR(20),
	Contato CHAR(14),
	Admin BIT,
	Status BIT
);

ALTER TABLE Usuario
ALTER COLUMN UsuarioID INT NOT NULL;

ALTER TABLE Usuario
ADD PRIMARY KEY (UsuarioID);

CREATE TABLE Curso(
	CursoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(100),
	Periodo CHAR(1)
);

ALTER TABLE Curso
ALTER COLUMN CursoID INT NOT NULL;

ALTER TABLE Curso
ADD PRIMARY KEY (CursoID);