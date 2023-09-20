CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
------------------------------------------------------
CREATE TABLE tb_classes(
	
	id BIGINT IDENTITY(1,1),
	nome VARCHAR(255) NOT NULL,
	acao VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes(nome, acao)
VALUES
('Mario', 'Correr'),
('Luigi', 'Andar'),
('Yosh', 'Pular'),
('Princesa', 'Gritar'),
('Vilão', 'Roubar');

-------------------------------------------------------
CREATE TABLE tb_personagens(
	
	id BIGINT IDENTITY(1,1),
	cor VARCHAR(255) NOT NULL,
	tipo VARCHAR(255) NOT NULL,
	poder VARCHAR(255) NOT NULL,
	ataque INT,
	defesa INT,
	especial VARCHAR(255) NOT NULL,
	arma VARCHAR(255) NOT NULL,
	fraqueza VARCHAR(255) NOT NULL,
	PRIMARY KEY(id),
	id_classes BIGINT,
	FOREIGN KEY (id_classes) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens
(cor, tipo, poder, ataque, defesa, especial, arma, fraqueza, id_classes)
VALUES
('Vermelho', 'Humano', 'Fogo', 2883, 2977, 'Aumentar de Tamanho', 'Bola de Fogo', 'Tartaruga', 1),
('Verde', 'Humano', 'Gelo', 2393, 2087, 'Velocidade', 'Sopro', 'Sol', 2),
('Verde', 'Animal', 'Voar', 1060, 1090, 'Invisibilidade', 'Cuspe', 'Plantas', 3),
('Rosa', 'Humano', 'Inteligência', 2093, 2060, 'Cabelo Matador', 'Cabelo', 'Vilão', 4),
('Branco', 'Animal', 'Explosão', 1103, 1930, 'Tamanho', 'Míssel', 'Mario', 5),
('Amarelo', 'Animal', 'Ondas', 2020,1090, 'Tsunami', 'Água', 'Yosh', 5),
('Azul', 'Animal', 'Terra', 2940, 1123, 'Terremoto', 'Arco', 'Luigi', 3),
('Verde', 'Humano', 'Gelo', 2393, 2087, 'Velocidade', 'Sopro', 'Sol', 2);


--DROP TABLE tb_personagens;

-- PODER DE ATAQUE MAIOR QUE 2000.00
SELECT * FROM tb_personagens WHERE ataque > 2000.00

-- PODER DE DEFESA ENTRE 1000.00 E 2000.00
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000.00 AND 2000.00;

-- PERSONAGENS COM LETRA C NO NOME
SELECT * FROM tb_classes WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.id_classes;

SELECT * FROM tb_personagens WHERE id = 1;

SELECT * FROM tb_personagens;
-------------------------------------------------------
