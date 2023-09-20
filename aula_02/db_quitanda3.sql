SELECT * FROM tb_produtos 
WHERE Preco IN (5,2,8) ORDER BY Nome ASC;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 5 AND 15; -- SELECIONA UM INTERVALO

SELECT * FROM tb_produtos WHERE Nome LIKE '%a'; -- PALAVRAS COM A NO FINAL

SELECT * FROM tb_produtos WHERE Nome LIKE 'm%'; -- PALAVRAS QUE COMEÇAM COM M

SELECT * FROM tb_produtos WHERE Nome LIKE '%n';

SELECT COUNT (*) 'Número de linhas' FROM tb_produtos; -- CONTA TODAS AS LINHAS DA TABELA

SELECT SUM(Preco) 'Soma dos preços' FROM tb_produtos

SELECT AVG(Preco) 'Média dos preços' FROM tb_produtos




