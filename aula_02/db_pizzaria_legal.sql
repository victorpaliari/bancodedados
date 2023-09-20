CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT IDENTITY(1,1),
	tamanho VARCHAR(255) NOT NULL,
	tipo VARCHAR(255) NOT NULL, 
	PRIMARY KEY(id)
);

--DROP TABLE tb_categorias;

INSERT INTO tb_categorias(tamanho, tipo)
VALUES
('Grande', 'Padrão'),
('Extra-Grande', 'Vegetariana'),
('Grande', 'Vegetariana'),
('Grande', 'Padrão'),
('Grande', 'Vegetariana');

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	id BIGINT IDENTITY(1,1),
	nome VARCHAR(255) NOT NULL,
	sabor VARCHAR(255) NOT NULL,
	preco DECIMAL(6,2),
	borda VARCHAR(255) NOT NULL,
	id_categorias BIGINT, 
	PRIMARY KEY(id),
	FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

--DROP TABLE tb_pizzas;

INSERT INTO tb_pizzas(nome, sabor, borda, preco, id_categorias)
VALUES
('Nutella', 'Chocolate com avelã', 'Doce', 70.00, 1),
('Frango-Chique', 'Frango com Catupiry', 'Sem borda', 60.00, 2),
('Camarão', 'Mussarela com Camarão', 'Mussarela', 80.00, 3),
('Floresta Negra', 'Chocolate com Morango', 'Coco', 40.00, 4),
('Peperoni', 'Mussarela com Calabresa', 'Padrão', 50.00, 5);


INSERT INTO tb_pizzas(nome, sabor, borda, preco, id_categorias)
VALUES
('Leite ninho', 'Chocolate branco', 'Doce', 70.00, 1),
('Quatro Queijos', 'Gorgonzola, Mussarela, Catupiry e Parmesão', 'Salgada', 40.00, 1),
('Churros', 'Doce de leite', 'Doce', 70.00, 2);

SELECT * FROM tb_pizzas;

SELECT tb_pizzas.id, nome, sabor, preco, borda, tamanho, tipo 
FROM tb_categorias INNER JOIN tb_pizzas
ON tb_categorias.id = tb_pizzas.id_categorias;

 SELECT * FROM tb_pizzas WHERE preco > 45.00;
 SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

 SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';
