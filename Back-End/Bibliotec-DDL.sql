--CREATE DATABASE Bibliotec;

USE Bibliotec;

ALTER TABLE Usuario
ALTER COLUMN UsuarioID INT NOT NULL;

ALTER TABLE Usuario
ADD PRIMARY KEY (UsuarioID);

DROP TABLE Curso;

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

ALTER TABLE Curso
ALTER COLUMN CursoID INT NOT NULL;

ALTER TABLE Curso
ADD PRIMARY KEY (CursoID);

CREATE TABLE Curso(
	CursoID INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	Nome VARCHAR(100),
	Periodo CHAR(1)
);

CREATE TABLE Categoria(
	CategoriaID INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	Nome VARCHAR(100)
);

CREATE TABLE Livro(
	LivroID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(100),
	Escritor VARCHAR(100),
	Editora VARCHAR(100),
	Descrição TEXT,
	Idioma VARCHAR(100),
	Imagem VARCHAR (100),
	Reservado BIT,
	Ativo BIT
);

ALTER TABLE Livro
ADD Nome varchar(100);

CREATE TABLE LivroCategoria (
	LivroCategoriaID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	LivroID INT,
	CategoriaID INT,

	--Criando a FK
	FOREIGN KEY (LivroID)
	REFERENCES Livro(LivroID),

	FOREIGN KEY (CategoriaID)
	REFERENCES Categoria(CategoriaID),
);

CREATE TABLE UsuarioCurso (
	UsuarioCurso INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	UsuarioID INT,
	CursoID INT,

	FOREIGN KEY (UsuarioID)
	REFERENCES Usuario(UsuarioID),
	
	FOREIGN KEY (CursoID)
	REFERENCES Curso(CursoID),
);

CREATE TABLE LivroReserva (
	LivroReservaID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	UsuarioID INT,
	LivroID INT,
	DtRserva DATE,
	DtDevolução DATE,
	[Status] INT,

	FOREIGN KEY (UsuarioID)
	REFERENCES Usuario(UsuarioID),

	FOREIGN KEY (LivroID)
	REFERENCES Livro(LivroID),
);


CREATE TABLE LivroFavorito (
	LivroFavoritoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	UsuarioID INT,
	LivroID INT,

	FOREIGN KEY (UsuarioID)
	REFERENCES Usuario(UsuarioID),

	FOREIGN KEY (LivroID)
	REFERENCES Livro(LivroID),
);

-- =Adicionando novas colunas0--
--ALTER TABLE LivroReserva
--ADD [Status] INT;

--ALTER TABLE LivroReserva ALTER COLUMN [Status] varchar(200);
--ALTER TABLE LivroReserva ALTER COLUMN [Status] int;
