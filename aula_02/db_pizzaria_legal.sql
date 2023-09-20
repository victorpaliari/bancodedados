CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT IDENTITY(1,1),
	sabor VARCHAR(255) NOT NULL,
	tamanho VARCHAR(255) NOT NULL,
	tipo VARCHAR(255) NOT NULL, 
	PRIMARY KEY(id)
);

DROP TABLE tb_categorias;

INSERT INTO tb_categorias(sabor, tamanho, tipo)
VALUES
('Doce', 'Grande', 'Padrão'),
('Salgada', 'Extra-Grande', 'Vegetariana'),
('Salgada', 'Grande', 'Vegetariana'),
('Salgada', 'Grande', 'Padrão'),
('Doce', 'Grande', 'Vegetariana');

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	id BIGINT IDENTITY(1,1),
	nome VARCHAR(255) NOT NULL,
	sabor VARCHAR(255) NOT NULL,
	preco DECIMAL(6,2),
	borda VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
	id_categorias BIGINT, 
	FOREIGN KEY (id_categorias) REFERENCES id_categorias(id)
);

INSERT INTO tb_pizzas(nome, sabor, borda, preco)
VALUES
('Nutella', 'Chocolate com avelã', 'Doce', 70.00),
('Frango-Chique', 'Frango com Catupiry', 'Sem borda', 60.00),
('Camarão', 'Mussarela com Camarão', 'Mussarela', 80.00),
('Chocolate com Morango', 'Broto', 40.00),
('Peperoni', 'Padrão', 50.00);



