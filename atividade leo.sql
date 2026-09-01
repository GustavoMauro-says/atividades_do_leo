CREATE DATABASE cinestream2;

USE cinestream2;

CREATE TABLE Filme (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_lancamento INT NOT NULL,
    duracao_minutos INT NOT NULL
);

CREATE TABLE Diretor (
    id_diretor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    plano VARCHAR(50) NOT NULL
);

CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_genero VARCHAR(50) NOT NULL
);

INSERT INTO Filme (titulo, ano_lancamento, duracao_minutos) VALUES
('Titanic', 1997, 195),
('Avatar', 2009, 162),
('Matrix', 1999, 136),
('Toy Story', 1995, 81),
('Jurassic Park', 1993, 127),
('O Rei Leao', 1994, 88),
('Interestelar', 2014, 169),
('Gladiador', 2000, 155),
('Homem Aranha', 2002, 121),
('Vingadores Ultimato', 2019, 181);

INSERT INTO Diretor (nome, nacionalidade, data_nascimento) VALUES
('James Cameron', 'Canadense', '1954-08-16'),
('Christopher Nolan', 'Britanico', '1970-07-30'),
('Steven Spielberg', 'Americano', '1946-12-18'),
('George Lucas', 'Americano', '1944-05-14'),
('Peter Jackson', 'Neozelandes', '1961-10-31'),
('Quentin Tarantino', 'Americano', '1963-03-27'),
('Martin Scorsese', 'Americano', '1942-11-17'),
('Tim Burton', 'Americano', '1958-08-25'),
('Robert Zemeckis', 'Americano', '1952-05-14'),
('Jon Favreau', 'Americano', '1966-10-19');

INSERT INTO Usuario (nome_completo, email, plano) VALUES
('Gustavo Silva', 'gustavo@email.com', 'Premium'),
('Joao Santos', 'joao@email.com', 'Basico'),
('Maria Oliveira', 'maria@email.com', 'Premium'),
('Pedro Souza', 'pedro@email.com', 'Basico'),
('Ana Costa', 'ana@email.com', 'Premium'),
('Lucas Pereira', 'lucas@email.com', 'Basico'),
('Julia Alves', 'julia@email.com', 'Premium'),
('Carlos Lima', 'carlos@email.com', 'Basico'),
('Beatriz Rocha', 'beatriz@email.com', 'Premium'),
('Rafael Martins', 'rafael@email.com', 'Basico');

INSERT INTO Categoria (nome_genero) VALUES
('Terror'),
('Comedia'),
('Sci-Fi'),
('Acao'),
('Drama'),
('Romance'),
('Aventura'),
('Animacao'),
('Suspense'),
('Fantasia');

SELECT * FROM Filme;
SELECT * FROM Diretor;
SELECT * FROM Usuario;
SELECT * FROM Categoria;