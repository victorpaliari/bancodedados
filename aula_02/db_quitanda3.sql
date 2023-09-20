SELECT * FROM tb_produtos 
WHERE Preco IN (5,2,8) ORDER BY Nome ASC;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 5 AND 15; -- SELECIONA UM INTERVALO

SELECT * FROM tb_produtos WHERE Nome LIKE '%a'; -- PALAVRAS COM A NO FINAL

SELECT * FROM tb_produtos WHERE Nome LIKE 'm%'; -- PALAVRAS QUE COME�AM COM M

SELECT * FROM tb_produtos WHERE Nome LIKE '%n';

SELECT COUNT (*) 'N�mero de linhas' FROM tb_produtos; -- CONTA TODAS AS LINHAS DA TABELA

SELECT SUM(Preco) 'Soma dos pre�os' FROM tb_produtos

SELECT AVG(Preco) 'M�dia dos pre�os' FROM tb_produtos




