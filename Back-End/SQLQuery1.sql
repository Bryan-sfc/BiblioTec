---------------------DML---------------------
--Inserir dados/valores na tabela categoria:

INSERT INTO Categoria
(Nome)
VALUES
('Drama'),
('Comédia');

INSERT INTO Curso (
Nome,
Periodo
)VALUES
('Multimidia','M'),
('Multimidia','T'),
('Multimidia','I'),
('Desenvolvimento de Sistemas','M'),
('Desenvolvimento de Sistemas','T'),
('Desenvolvimento de Sistemas','I'),
('Jogos Digitais','T'),
('Redes','T'),
('Redes','M');

INSERT INTO Usuario(
Nome,
DtNascimento,
Email,
Senha,
Contato,
[Admin],
[Status]
)VALUES
('Bryan','04/02/2008','éobraia2009@gmail.com','******','11 94002-8922','1','1'),
('Larissa','16/12/2007','larilinda@gmail.com','******','11 91234-1234','1','1'),
('ZecaPagodinho','06/09/1502','zecadopagode@gmail.com','*******','11 97842-6782','1','1');


INSERT INTO Livro(
Nome,
Escritor,
Editora,
Descrição,
Idioma,
Imagem,
Reservado,
Ativo
)VALUES
('As Mil Partes do Meu Coração','Colleen','Record','a','Português','Foto1.png',0,1),
('Gibi turma Da Monica','Mauricio de Sousa','Brasil','Guerra no bairro','Português','Foto1.png',0,1),
('Diario de uma Banana','Tomas Shelb','TVcultura','Bananão','Hebraico','Foto1.png',0,1);


INSERT INTO LivroCategoria(
LivroID,
Categoria
)VALUES
(1,10),
(2,9),
(3,13)
;

INSERT INTO LivroReserva (
UsuarioID,
LivroID
)VALUES 
(1,3),
(2,7),
(3,9);

INSERT INTO LivroFavorito (
UsuarioID,
LivroID
)VALUES
(2,2),(1,3),(3,1);


INSERT INTO UsuarioCurso(
UsuarioID,
CursoID
)VALUES
(2,5),(3,3),(1,4);

DELETE FROM Livro;
DBCC CHECKIDENT('Livro', RESEED, 0);

UPDATE LivroReserva
SET 
	DtReserva = '10/10/2024',
	DtDevolução = '20/10/2024',
	Status = 3
WHERE LivroReservaID = 11;

--DQL:
SELECT*FROM Categoria; 


SELECT*FROM Usuario;
SELECT*FROM Livro;
SELECT*FROM LivroCategoria;
SELECT*FROM LivroFavorito;
SELECT*FROM LivroReserva;
SELECT*FROM UsuarioCurso;

