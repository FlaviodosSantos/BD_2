# Tarefa 01

Considere o Banco de Dados descrito abaixo:

 

EMPREGADO(cod_empregado, nome_empregado, rua, cidade, salario)

TRABALHA(cod_empregado, cod_companhia)

COMPANHIA(cod_companhia, CNPJ, nome_companhia, cidade_companhia)

GERENTE(cod_empregado, cod_companhia)

Para cada uma das seguintes consultas dê a expressão em álgebra relacional:

1) Encontre os nomes de todos os empregados que trabalham para a Companhia Soft Sell.

2) Encontre todos os nomes das cidades dos empregados que trabalham na Soft Sell.

3) Encontre os nomes, endereço e cidade da residência de todos os empregados da Soft Sell que ganham mais de dez  mil reais.

4) Encontre os nomes de todos os empregados, no banco de dados, que moram na mesma cidade da companhia em que trabalham.

5) Encontre os nomes de todos os empregados que moram na mesma cidade e rua de seu gerente.

6) Encontre os nomes de todos os empregados, no banco de dados, que não trabalham para a Soft Sell.

7) Crie um script de criação SQL DDL para criar o esquema relacional e insira alguns linhas nas tabelas.

8) Após escrever as consultas em Álgebra Relacional, reescreva em SQL DML e execute no PostgreSQL.

Envie um arquivo pdf com as respostas das questões de 1 a 6. Para as questões 7 e 8, faça scripts .sql, coloque no seu github e mande o link no pdf de resposta.
