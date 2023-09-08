
CREATE DATABASE Comentarios;



USE Comentarios;


CREATE TABLE Artigos (
    ArtigoID INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Conteudo TEXT,
    DataPublicacao DATE
);


CREATE TABLE Comentarios (
    ComentarioID INT PRIMARY KEY,
    ArtigoID INT,
    Autor VARCHAR(50),
    Texto TEXT,
    DataComentario DATE,
    FOREIGN KEY (ArtigoID) REFERENCES Artigos_diego(ArtigoID)
);


INSERT INTO Artigos (ArtigoID, Titulo, Conteudo, DataPublicacao)
VALUES
    (1, 'IA vão dominar o mundo?', 'Vamos dissertar um pouco sobre como é possível que IA´s dominem o planeta', '2019-04-30'),
    (2, 'Por que tomar café de manhã?', 'Basicamente vamos mostrar por que tomar café de manhã, mais abaixo você verá o motivo', '2014-08-11'),
    (3, 'Leitura e Conhecimento', 'Saiba como ler traz maiores conhecimentos', '2016-05-10'),
    (4, 'Política', 'Meios para se informa', '2022-05-10'),
    (5, 'Açaí', 'Benefícios e Gostosuras', '2020-12-10');

INSERT INTO Comentarios (ComentarioID, ArtigoID, Autor, Texto, DataComentario)
VALUES
    (1, 1, 'Carlos', 'Dá um medo  quando se pensa nisso.', '2021-04-10'),
    (2, 1, 'Individuo Bom', 'Café é vida!', '2022-12-19'),
    (3, 2, 'Bolota', 'é verdade, tento manter uma boa rotina de leitura sempre que posso', '2023-09-10'),
    (4, 3, 'FAZUELI', 'Assunto é chato, mas é importante.', '2025-07-12'),
    (5, 4, 'Perlinha', 'Açai supremacy >>>', '2022-12-12');
    
    

 SELECT * FROM Artigos;
 
 SELECT * FROM Comentarios;

DROP TABLE Comentarios;

