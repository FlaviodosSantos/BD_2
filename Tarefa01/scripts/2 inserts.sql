INSERT INTO companhia(
	cod_companhia, CNPJ, nome_companhia, cidade_companhia)
	VALUES
	(1,4568, 'Microsoft','New York'),
	(2,7865, 'Soft Sell', 'Brasilia'),
	(3,9874, 'Unibyte', 'Recife');
	
INSERT INTO empregado(
	cod_empregado, nome_empregado, rua, cidade, salario) 
	VALUES
	(1,'Tarcisio', 'Rua das Flores n.13', 'Blumenal', 10101),
	(2,'Francisco','Av. Augusto Severo n.56', 'Natal', 3500),
	(3,'Tareja', 'Rua Professor Viana n.897', 'Caico', 7200),
	(4,'Marcelo', 'Rua do Peido n.80', 'Currais Novos', 5600),
	(5,'Mercia', 'Av. Virgulino Lampiao n.333', 'Mossoro', 12500);
	(6,'Tarcisio2', 'Rua das Flores n.13', 'Blumenal', 10111),
	(7,'Francisco2','Av. Augusto Severo n.56', 'Natal', 5500),
	(8,'Tareja2', 'Rua Professor Viana n.897', 'Caico', 3200),
	(9,'Marcelo2', 'Rua do Peido n.80', 'Currais Novos', 8600),
	(10,'Mercia2', 'Av. Virgulino Lampiao n.333', 'Mossoro', 12100);

INSERT INTO trabalha
	(cod_empregado, cod_companhia)
	VALUES
	(1,1),(2,1),(3,1),(4,2),(5,2),
	(6,2),(7,2),(8,3),(9,3),(10,3);

INSERT INTO gerente(
	cod_empregado, cod_companhia)
	VALUES
	(1,1),(5,2),(10,3);
