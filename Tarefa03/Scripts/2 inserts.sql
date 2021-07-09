
INSERT INTO departamento(
    descricao, cod_gerente)
    VALUES
    ('depart1', NULL),('depart2', NULL),('depart3', NULL),
    ('depart4', NULL),('depart5', NULL);

INSERT INTO Funcionario(
    nome, sexo, dt_nasc, salario, cod_depto)
    VALUES
    ('Alberto', 'm', '1968-03-22', 5630, 1),
    ('Batista', 'm', '1970-04-24', 6800, 2),
    ('Carla', 'f', '1983-05-12', 12800, 3),
    ('Diana', 'f', '1995-06-12', 4590, 4),
    ('Elder', 'm', '1984-07-19', 5800, 5),
    ('Alberto2', 'm', '1968-03-22', 5600, 5),
    ('Batista2', 'm', '1970-04-24', 6800, 4),
    ('Carl2', 'f', '1983-05-12', 12000, 5),
    ('Diana2', 'f', '1995-06-12', 4500, 5),
    ('Elder2', 'm', '1984-07-19', 5800, 1),
    ('Alberto3', 'm', '1968-03-22', 5600, 1),
    ('Batista3', 'm', '1970-04-24', 6820, 2),
    ('Carla3', 'f', '1983-05-12', 12000, 3),
    ('Diana3', 'f', '1995-06-12', 4500, 4),
    ('Elder3', 'm', '1984-07-19', 5820, 5),
    ('Alberto4', 'm', '1968-03-22', 5600, 3),
    ('Batista4', 'm', '1970-04-24', 6700, 4),
    ('Carl4', 'f', '1983-05-12', 12500, 2),
    ('Diana4', 'f', '1995-06-12', 4500, 1),
    ('Elder4', 'm', '1984-07-19', 5800, 4);


 update departamento
 set cod_gerente = 10
 where codigo = 1;
 
 update departamento
 set cod_gerente = 18
 where codigo = 2;
 
 update departamento
 set cod_gerente = 3
 where codigo = 3;

 update departamento
 set cod_gerente = 7
 where codigo = 4;
 
  update departamento
 set cod_gerente = 8
 where codigo = 5;