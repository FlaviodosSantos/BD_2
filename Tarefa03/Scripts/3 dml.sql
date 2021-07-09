
-- 1. Faça uma consulta que selecione o nome dos funcionários que recebem 
--    salários superiores aos salários pagos no departamento 5.

select nome from funcionario 
where salario > (
	SELECT max(salario)
	from funcionario
	where cod_depto = 5)
order by cod_depto;


-- colsulta onde retorna os maiores salarios de cada departamento

select codigo, nome, salario, cod_depto from funcionario 
where salario = (
	SELECT max(salario)
	from funcionario
	where cod_depto = 1) 
	and cod_depto = 1
	
	union
	select codigo, nome, salario,cod_depto from funcionario 
	where(salario = (
	SELECT max(salario)
	from funcionario
	where cod_depto = 2) 
	and cod_depto = 2)

	union
	select codigo, nome, salario,cod_depto from funcionario 
	where(salario = (
	SELECT max(salario)
	from funcionario
	where cod_depto = 3) 
	and cod_depto = 3)
	
	union
	select codigo, nome, salario,cod_depto from funcionario 
	where(salario = (
	SELECT max(salario)
	from funcionario
	where cod_depto = 4) 
	and cod_depto = 4)
	
	union
	select codigo, nome, salario,cod_depto from funcionario 
	where(salario = (
	SELECT max(salario)
	from funcionario
	where cod_depto = 5) 
	and cod_depto = 5)

order by cod_depto;