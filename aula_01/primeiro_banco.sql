CREATE DATABASE db_quitanda;

USE db_quitanda;
CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	DataValidade DATE,
	Preco DECIMAL NOT NULL,
	PRIMARY KEY (Id)
);


INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES 
('Laranja', 20, '2023-09-18', 8.00);

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES 
('Maçã', 10, '2023-09-18', 15.25),
('Couve', 35, '2023-09-18', 5.00),
('Banana', 25, '2023-09-18', 16)

;

SELECT * FROM tb_produtos WHERE Id = 1;

SELECT Nome, Quantidade, Preco FROM tb_produtos WHERE Nome = 'Banana';

SELECT * FROM tb_produtos WHERE Id = 1 OR Id = 2 OR Id = 3;

SELECT * FROM tb_produtos WHERE Preco > 4 AND Preco < 10;

ALTER TABLE tb_produtos ALTER COLUMN Preco DECIMAL(6,2);

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES 
('Milho', 20, '2023-09-18', 10.25);

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ADD Descricao VARCHAR(255);
UPDATE tb_produtos SET Descricao = 'Maçã Verde' WHERE Id = 7;

DELETE FROM tb_produtos WHERE Id = 5;

-- esse select tem os nomes das colunas tratados -- 

SELECT Nome as 'Nome do produto', Descricao as 'Descrição' FROM tb_produtos;

