CREATE DATABASE AulaPratica;

USE AulaPratica;

CREATE TABLE Usuarios (
id INT PRIMARY KEY,
nome VARCHAR(100)
);

CREATE TABLE Produtos (
id INT PRIMARY KEY,
preco FLOAT,
estoque VARCHAR(10)
);

CREATE TABLE Tbl_Antiga (
id INT PRIMARY KEY,
col_nome VARCHAR(50)
);

CREATE TABLE Backup_Sistema (
id INT PRIMARY KEY,
nota_fiscal TEXT,
lixo_digital VARCHAR(50)
);

CREATE TABLE Mensagens (
id INT PRIMARY KEY,
texto VARCHAR(255),
status VARCHAR(20)
);

INSERT INTO Mensagens
VALUES
(1, 'Olá!', 'Lida'),
(2, 'SPAM detectado', 'Spam'),
(3, 'Conta vencida', 'Spam');


ALTER TABLE Usuarios ADD email VARCHAR(100);
ALTER TABLE Usuarios ADD data_cadastro DATE;
ALTER TABLE Usuarios ADD cpf CHAR(11) UNIQUE;
ALTER TABLE Usuarios ADD status VARCHAR(30);
ALTER TABLE Usuarios ADD idade INT;

DESC Usuarios;


ALTER TABLE Produtos MODIFY preco DECIMAL(10,2);
ALTER TABLE Produtos MODIFY estoque INT;
ALTER TABLE Produtos MODIFY id INT NOT NULL;
ALTER TABLE Produtos ADD nome VARCHAR(200);
ALTER TABLE Produtos MODIFY nome VARCHAR(200) DEFAULT 'Sem nome';

DESC Produtos;


ALTER TABLE Tbl_Antiga RENAME COLUMN col_nome TO nome_completo;
ALTER TABLE Tbl_Antiga ADD temp VARCHAR(50);
ALTER TABLE Tbl_Antiga RENAME COLUMN temp TO observacoes;
ALTER TABLE Usuarios RENAME COLUMN id TO id_usuario;

DESC Tbl_Antiga;
DESC Usuarios;


ALTER TABLE Backup_Sistema DROP COLUMN lixo_digital;
ALTER TABLE Backup_Sistema ADD temp_data DATE;
ALTER TABLE Backup_Sistema DROP COLUMN temp_data;
ALTER TABLE Backup_Sistema DROP COLUMN nota_fiscal;

DESC Backup_Sistema;

ALTER TABLE Backup_Sistema DROP COLUMN coluna_que_nao_existe;

ALTER TABLE Usuarios DROP COLUMN idade;

DESC Usuarios;


DELETE FROM Mensagens WHERE id = 1;
DELETE FROM Mensagens WHERE status = 'Spam';

INSERT INTO Mensagens (id, texto, status)
VALUES (4, 'Teste', 'Teste');

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Mensagens WHERE texto = 'Teste';

CREATE TABLE Teste_Delete (
id INT,
texto VARCHAR(100)
);

INSERT INTO Teste_Delete
VALUES
(1, 'Primeiro'),
(2, 'Segundo'),
(3, 'Terceiro');

DELETE FROM Teste_Delete;

SELECT * FROM Teste_Delete;