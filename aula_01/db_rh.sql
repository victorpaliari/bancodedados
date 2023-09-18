CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(

	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
	Turno VARCHAR(50) NOT NULL,
	DataAdmissao DATE,
	Salario DECIMAL(6,2) NOT NULL,
	PRIMARY KEY (Id)
);

INSERT INTO tb_colaboradores
(Nome, Cargo, Turno, DataAdmissao, Salario)
VALUES 
('Fernando', 'Presidente', 'Integral', '2005-02-18', 20.000),
('Vitor', 'Vice-Presidente', 'Manhã', '2010-06-02', 10.000),
('Gabriel', 'Coordenador', 'Tarde', '2014-08-20', 7.000),
('Victor', 'Gerente', 'Manhã', '2019-02-18', 6.000),
('Carlos', 'Vendedor', 'Tarde', '2020-02-18', 4.000)
;

SELECT * FROM tb_colaboradores

SELECT * FROM tb_colaboradores WHERE Salario > 2.000;
SELECT * FROM tb_colaboradores WHERE Salario < 2.000;

ALTER TABLE tb_colaboradores ALTER COLUMN Salario DECIMAL(6,3);

ALTER TABLE tb_colaboradores ALTER COLUMN Salario DECIMAL(6,3);

UPDATE tb_colaboradores SET Salario = 1.900 WHERE Id = 6;
UPDATE tb_colaboradores SET Turno = 'Integral' WHERE Id = 3;
UPDATE tb_colaboradores SET Nome = 'Gabriel Pimentel' WHERE Id = 4;
UPDATE tb_colaboradores SET Cargo = 'Co-Presidente' WHERE Id = 5;
UPDATE tb_colaboradores SET Turno = 'Integral' WHERE Id = 5;







