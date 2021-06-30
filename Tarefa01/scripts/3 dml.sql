-- 1) Encontre os nomes de todos os empregados que trabalham 
--    para a Companhia Soft Sell.

SELECT nome_empregado
FROM trabalha AS t
INNER JOIN empregado AS e
ON t.cod_empregado = e.cod_empregado
INNER JOIN companhia AS c
ON t.cod_companhia = c.cod_companhia
WHERE c.nome_companhia = 'Soft Sell'

-- 2) Encontre todos os nomes das cidades dos empregados que 
--    trabalham na Soft Sell.

SELECT e.cidade
FROM trabalha AS t
INNER JOIN empregado AS e
ON t.cod_empregado = e.cod_empregado
INNER JOIN companhia AS c
ON t.cod_companhia = c.cod_companhia
WHERE c.nome_companhia = 'Soft Sell'

-- 3) Encontre os nomes, endereço e cidade da residência de 
--    todos os empregados da Soft Sell que ganham mais de 
--    dez mil reais.

SELECT e.nome_empregado, e.rua, e.cidade
FROM trabalha t
INNER JOIN empregado e
ON t.cod_empregado = e.cod_empregado
INNER JOIN companhia c
ON t.cod_companhia = c.cod_companhia
WHERE c.nome_companhia = 'Soft Sell' 
	AND e.salario > 10000 

-- 4) Encontre os nomes de todos os empregados, no banco de 
--    dados, que moram na mesma cidade da companhia em que 
--    trabalham.

SELECT e.nome_empregado
FROM trabalha t
INNER JOIN empregado e
ON t.cod_empregado = e.cod_empregado
INNER JOIN companhia c
ON t.cod_companhia = c.cod_companhia
WHERE c.cidade_companhia = e.cidade 

-- 5) Encontre os nomes de todos os empregados que moram na 
--    mesma cidade e rua de seu gerente.
 ### encontra o nome dos gerentes
(SELECT e.nome_empregado
FROM trabalha t
INNER JOIN empregado e
ON t.cod_empregado = e.cod_empregado
INNER JOIN companhia c
ON t.cod_companhia = c.cod_companhia
INNER JOIN gerente g
ON g.cod_empregado = e.cod_empregado)

-- 6) Encontre os nomes de todos os empregados, no banco de 
--    dados, que não trabalham para a Soft Sell.

SELECT nome_empregado
FROM trabalha AS t
INNER JOIN empregado AS e
ON t.cod_empregado = e.cod_empregado
INNER JOIN companhia AS c
ON t.cod_companhia = c.cod_companhia
WHERE c.nome_companhia != 'Soft Sell'
