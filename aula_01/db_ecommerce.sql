CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(

	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Tipo VARCHAR(255) NOT NULL,
	Quantidade VARCHAR(50) NOT NULL,
	Peso VARCHAR(50) NOT NULL,
	Valor DECIMAL(6,2) NOT NULL,
	PRIMARY KEY (Id)
);

INSERT INTO tb_produtos
(Nome, Tipo, Quantidade, Peso, Valor)
VALUES 
('Parafuso', 'Ferramenta', 'Saco c/ 50un', '20g', 2.0),
('Frigideira', 'Utensílios Domésticos', '1un', '300g', 90.00),
('Bolacha', 'Comida', '1 saco', '500g', 7.00),
('Vassoura', 'Utensílios Domésticos', '1un', '300g', 18.00),
('Capa de celular', 'Acessórios', '1un', '20g', 40.00),
('Caixa de som', 'Eletrônicos', '1un', '2kg', 540.00),
('Roteador de Wifi', 'Eletrônicos', '1un', '300g', 510.00),
('TV QLED 60 Polegadas', 'Eletro-Eletrônicos', '1un', '9kg', 4.200)
;


SELECT * FROM tb_produtos

SELECT * FROM tb_produtos WHERE Valor > 500.00;
SELECT * FROM tb_produtos WHERE Valor < 500.00;

UPDATE tb_produtos SET Valor = 900.00 WHERE Id = 6;
UPDATE tb_produtos SET Tipo = 'Perecíveis' WHERE Id = 3;
UPDATE tb_produtos SET Valor = 4200.00 WHERE Id = 8;
UPDATE tb_produtos SET Valor = 90.00 WHERE Id = 4;


