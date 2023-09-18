CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(

	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Serie VARCHAR(255) NOT NULL,
	Turno VARCHAR(50) NOT NULL,
	Grau VARCHAR(50) NOT NULL,
	Nota1 REAL NOT NULL,
	Nota2 REAL NOT NULL,
	PRIMARY KEY (Id)
);

INSERT INTO tb_estudantes
(Nome, Serie, Turno, Grau, Nota1, Nota2)
VALUES 
('Fernando Dias', '1� S�rie', 'Manh�', 'EM', 9.0, 7.0),
('Vitor Ces�rio', '3� S�rie', 'Tarde','EM', 9.0, 7.0),
('Gabriel Pimentel', '9� Ano', 'Noite','Fund II', 7.0, 10.0),
('Victor Paliari', '3� S�rie', 'Manh�','EM', 9.0, 10.0),
('Samantha Oliveira', '8� Ano', 'Tarde','Fund II', 9.0, 7.0),
('Karina Silva', '3� S�rie', 'Noite','EM', 9.0, 10.0),
('Jo�o Castro', '2� S�rie', 'Tarde','EM', 5.0, 3.0),
('Pedro Sampaio', '7� Ano', 'Manh�','Fund II', 3.0, 1.5)

;


SELECT * FROM tb_estudantes

SELECT * FROM tb_estudantes WHERE Nota1 > 7.0;
SELECT * FROM tb_estudantes WHERE Nota1 <  7.0;
SELECT * FROM tb_estudantes WHERE Nota2 > 7.0;
SELECT * FROM tb_estudantes WHERE Nota2 < 7.0;

UPDATE tb_estudantes SET Nota1 = 9.00 WHERE Id = 6;
UPDATE tb_estudantes SET Nota2 = 8.00 WHERE Id = 6;
UPDATE tb_estudantes SET Nota1 = 10.00 WHERE Id = 1;
UPDATE tb_estudantes SET Nota2 = 10.00 WHERE Id = 1;
UPDATE tb_estudantes SET Nota1 = 10.00 WHERE Id = 2;
UPDATE tb_estudantes SET Nota2 = 5.00 WHERE Id = 2;
UPDATE tb_estudantes SET Nota1 = 9.00 WHERE Id = 3;
UPDATE tb_estudantes SET Nota2 = 10.00 WHERE Id = 3;

