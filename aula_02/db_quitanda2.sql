SELECT * FROM tb_produtos 
WHERE Preco IN (5,2,8) ORDER BY Nome ASC;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 5 AND 15; -- SELECIONA UM INTERVALO

SELECT * FROM tb_produtos WHERE Nome LIKE '%a'; -- PALAVRAS COM A NO FINAL

SELECT * FROM tb_produtos WHERE Nome LIKE 'm%'; -- PALAVRAS QUE COMEÇAM COM M

SELECT * FROM tb_produtos WHERE Nome LIKE '%n';

SELECT COUNT (*) 'Número de linhas' FROM tb_produtos; -- CONTA TODAS AS LINHAS DA TABELA

SELECT SUM(Preco) 'Soma dos preços' FROM tb_produtos

SELECT AVG(Preco) 'Média dos preços' FROM tb_produtos

SELECT MIN(Preco) FROM tb_produtos;

-- RELACIONAMENTO ENTRE TABELAS

CREATE TABLE tb_categorias(

	Id BIGINT IDENTITY(1,1),
	Descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)

);

SELECT * FROM tb_categorias;

-- Insere dados na tabela tb_categoriasINSERT INTO tb_categorias (Descricao)VALUES ('Frutas');INSERT INTO tb_categorias (Descricao)VALUES ('Verduras');INSERT INTO tb_categorias (Descricao)VALUES ('Legumes');INSERT INTO tb_categorias (Descricao)VALUES ('Temperos');INSERT INTO tb_categorias (Descricao)VALUES ('Ovos');INSERT INTO tb_categorias (Descricao)VALUES ('outros');

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

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)VALUES 
('Abacate', 45, '2023-09-19', 5.25, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)VALUES 
('Maçã', 1000, '2022-03-07', 1.99, 1),('Banana', 1300, '2022-03-08', 5.00, 1),('Batata doce', 2000, '2022-03-09', 10.00, 3),('Alface', 300, '2022-03-10', 7.00, 2),('Cebola', 1020, '2022-03-08', 5.00, 3),('Ovo Branco', 1000, '2022-03-07', 15.00, 5),('Agrião', 1500, '2022-03-06', 3.00, 2),('Cenoura', 1800, '2022-03-09', 3.50, 3),('Pimenta', 1100, '2022-03-15', 10.00, 4),('Alecrim', 130, '2022-03-10', 5.00, 4),('Manga', 200, '2022-03-07', 5.49, 1),('Laranja', 3000, '2022-03-13', 10.00, 1);


-- INNER JOIN => FAZ A LIGAÇÃO DAS TABELAS QUE POSSUEM RELAÇÃO
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id;

-- LEFT JOIN => 
SELECT * FROM tb_produtos LEFT JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id;


SELECT tb_produtos.Id, nome, quantidade, dtvalidade, preco, categoria_id,
Descricao FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id;

INSERT INTO tb_produtos (nome, quantidade, preco)VALUES 
('Panela', 1118, 150.80);

SELECT tb_produtos.Id, nome, quantidade, dtvalidade, preco, categoria_id,
Descricao FROM tb_produtos LEFT JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id
WHERE nome LIKE '%a';

