--DROP DATABASE if exists bd2_t01;--

/*CREATE DATABASE bd2_t01
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE bd2_t01
    IS 'banco de dados para atividades da disciplina BD2 2021.1';
*/
CREATE TABLE empregado(
	cod_empregado CHAR(10) NOT NULL, 
	nome_empregado VARCHAR(50) NOT NULL, 
	rua VARCHAR(50) DEFAULT NULL, 
	cidade VARCHAR(50) DEFAULT NULL, 
	salario DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (cod_empregado)
);

CREATE TABLE companhia(
	cod_companhia CHAR(10) NOT NULL ,
	CNPJ VARCHAR(14) NOT NULL, 
	nome_companhia VARCHAR(50) DEFAULT NULL, 
	cidade_companhia VARCHAR(50) DEFAULT NULL,
	PRIMARY KEY (cod_companhia),
	UNIQUE (CNPJ)
);


CREATE TABLE trabalha(
	cod_empregado CHAR(10) NOT NULL, 
	cod_companhia CHAR(10) NOT NULL ,
	PRIMARY KEY (cod_empregado, cod_companhia),
	FOREIGN KEY (cod_empregado) REFERENCES empregado(cod_empregado),
	FOREIGN KEY (cod_companhia) REFERENCES companhia(cod_companhia)
);

CREATE TABLE gerente(
	cod_empregado CHAR(10) NOT NULL, 
	cod_companhia CHAR(10) NOT NULL,
	PRIMARY KEY (cod_empregado, cod_companhia),
	FOREIGN KEY (cod_empregado) REFERENCES empregado(cod_empregado),
	FOREIGN KEY (cod_companhia) REFERENCES companhia(cod_companhia)
);
	
	
