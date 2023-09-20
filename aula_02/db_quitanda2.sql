SELECT * FROM tb_produtos 
WHERE Preco IN (5,2,8) ORDER BY Nome ASC;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 5 AND 15; -- SELECIONA UM INTERVALO

SELECT * FROM tb_produtos WHERE Nome LIKE '%a'; -- PALAVRAS COM A NO FINAL

SELECT * FROM tb_produtos WHERE Nome LIKE 'm%'; -- PALAVRAS QUE COME�AM COM M

SELECT * FROM tb_produtos WHERE Nome LIKE '%n';

SELECT COUNT (*) 'N�mero de linhas' FROM tb_produtos; -- CONTA TODAS AS LINHAS DA TABELA

SELECT SUM(Preco) 'Soma dos pre�os' FROM tb_produtos

SELECT AVG(Preco) 'M�dia dos pre�os' FROM tb_produtos

SELECT MIN(Preco) FROM tb_produtos;

-- RELACIONAMENTO ENTRE TABELAS

CREATE TABLE tb_categorias(

	Id BIGINT IDENTITY(1,1),
	Descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)

);

SELECT * FROM tb_categorias;

-- Insere dados na tabela tb_categorias

CREATE TABLE tb_produtos(

	Id BIGINT IDENTITY(1,1),
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
	dtvalidade DATE,
	preco DECIMAL(6,2),
	PRIMARY KEY(Id),
	categoria_id BIGINT,
	FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)

);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

INSERT INTO tb_produtos 
('Abacate', 45, '2023-09-19', 5.25, 1);

INSERT INTO tb_produtos 
('Ma��', 1000, '2022-03-07', 1.99, 1),


-- INNER JOIN => FAZ A LIGA��O DAS TABELAS QUE POSSUEM RELA��O
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id;

-- LEFT JOIN => 
SELECT * FROM tb_produtos LEFT JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id;


SELECT tb_produtos.Id, nome, quantidade, dtvalidade, preco, categoria_id,
Descricao FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id;

INSERT INTO tb_produtos (nome, quantidade, preco)
('Panela', 1118, 150.80);

SELECT tb_produtos.Id, nome, quantidade, dtvalidade, preco, categoria_id,
Descricao FROM tb_produtos LEFT JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id
WHERE nome LIKE '%a';
