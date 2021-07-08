--scripts para o Postgresql

--- postgress não aceita INT AUTO_INCREMENT, usa-se SERIAL

CREATE TABLE funcionario (
	codigo SERIAL,  
	nome varchar(15) NOT NULL,
	sexo char(1) DEFAULT NULL,
	dt_nasc date DEFAULT NULL,
	salario decimal(10,2) DEFAULT NULL,
	cod_depto int DEFAULT NULL,
	PRIMARY KEY (codigo)	
);

CREATE TABLE departamento (
  codigo SERIAL NOT NULL ,
  descricao varchar(25) NOT NULL,
  cod_gerente int DEFAULT NULL,
  PRIMARY KEY (codigo),
  FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo) 
	on delete set null on update cascade
);

ALTER TABLE funcionario 
ADD CONSTRAINT func_depto_FK FOREIGN KEY (cod_depto) 
REFERENCES departamento(codigo) on delete set null on update cascade;

CREATE TABLE projeto (
  codigo SERIAL,
  descricao varchar DEFAULT NULL,
  cod_depto int DEFAULT NULL,
  cod_responsavel int DEFAULT NULL,
  data_inicio date DEFAULT NULL,
  data_fim date DEFAULT NULL,
  PRIMARY KEY (codigo),
  foreign key (cod_depto) references departamento(codigo) on delete set null,
  foreign key (cod_responsavel) references funcionario(codigo) on delete set null
);

CREATE TABLE atividade (
  codigo SERIAL,
  descricao varchar(45) DEFAULT NULL,
  cod_responsavel int DEFAULT NULL,
  data_inicio date DEFAULT NULL,
  data_fim date DEFAULT NULL,
  PRIMARY KEY (codigo),
  foreign key (cod_responsavel) references funcionario(codigo) on delete set null
);

CREATE TABLE atividadeProjeto (
  cod_projeto int NOT NULL,
  cod_atividade int NOT NULL,
  PRIMARY KEY (cod_projeto, cod_atividade),
  foreign key (cod_atividade) references atividade(codigo),
  foreign key (cod_projeto) references projeto(codigo)
);
