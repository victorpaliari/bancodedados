CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT IDENTITY(1,1),
	nome VARCHAR(255) NOT NULL,
	tipo VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

SELECT * FROm tb_categorias;

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (nome, tipo)
VALUES 
('Dorflex', 'Analgésico');

INSERT INTO tb_categorias (nome, tipo)
VALUES 
('Dipirona', 'Anti-Inflamatório'),
('Álcool em gel', 'Higiene'),
('Neosoro', 'Descongestionante Nasal'),
('Rivotril', 'Ansiolítico');

INSERT INTO tb_categorias (nome, tipo)
VALUES 
('Omeprazol', ' Inibidor de prótons');

--criar uma tabela com chave estrangeira onde a foreign Key indica a chave estrangeira e a References indica a tabela que esta sendo relacionada
CREATE TABLE tb_produtos(
	id BIGINT IDENTITY(1,1),
	quantidade INT,
	dtvalidade DATE,
	preco DECIMAL (6,2),
	PRIMARY KEY(Id),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_produtos
(quantidade, dtvalidade, preco, categoria_id)
VALUES
(120, '2023-09-22', 5.25, 1),
(1000, '2024-03-07', 1.99, 2),
(1300, '2023-03-08', 20.00, 3),
(1020, '2023-03-08', 5.00, 3),
(1100, '2025-03-15', 100.00, 3),
(200, '2023-03-07', 9.00, 2),
(145, '2029-12-20', 20.00, 3),
(135, '2022-11-09', 20.00, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

 SELECT tb_produtos.id,nome, quantidade, dtvalidade, preco, categoria_id
 FROM tb_produtos INNER JOIN tb_categorias
 ON tb_categorias.id = tb_produtos.categoria_id;

 SELECT * FROM tb_produtos WHERE preco > 50.00;
 SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 60.00;

 SELECT * FROM tb_categorias WHERE nome LIKE '%m%';

 SELECT * FROM tb_produtos INNER JOIN tb_categorias 
 ON tb_categorias.id = tb_produtos.categoria_id;

 SELECT * FROM tb_categorias WHERE tipo = 'Higiene';