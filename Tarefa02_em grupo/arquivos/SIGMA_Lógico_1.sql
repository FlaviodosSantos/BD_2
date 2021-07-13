/* SIGMA_L�gico_1: */

CREATE TABLE usuario (
    cpf CHAR,
    user_name VARCHAR,
    login VARCHAR,
    id INTEGER PRIMARY KEY,
    matricula CHAR,
    nome VARCHAR,
    password VARCHAR
);

CREATE TABLE grupo (
    id INTEGER PRIMARY KEY,
    nome VARCHAR,
    descricao VARCHAR
);

CREATE TABLE permissao (
    id INTEGER PRIMARY KEY,
    tipo VARCHAR,
    descricao VARCHAR
);

CREATE TABLE pertence (
    fk_grupo_id INTEGER,
    fk_usuario_id INTEGER
);

CREATE TABLE tem (
    fk_grupo_id INTEGER,
    fk_permissao_id INTEGER
);

CREATE TABLE tem (
    fk_permissao_id INTEGER,
    fk_usuario_id INTEGER
);
 
ALTER TABLE pertence ADD CONSTRAINT FK_pertence_1
    FOREIGN KEY (fk_grupo_id)
    REFERENCES grupo (id)
    ON DELETE RESTRICT;
 
ALTER TABLE pertence ADD CONSTRAINT FK_pertence_2
    FOREIGN KEY (fk_usuario_id)
    REFERENCES usuario (id)
    ON DELETE SET NULL;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_1
    FOREIGN KEY (fk_grupo_id)
    REFERENCES grupo (id)
    ON DELETE SET NULL;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_2
    FOREIGN KEY (fk_permissao_id)
    REFERENCES permissao (id)
    ON DELETE SET NULL;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_1
    FOREIGN KEY (fk_permissao_id)
    REFERENCES permissao (id)
    ON DELETE SET NULL;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_2
    FOREIGN KEY (fk_usuario_id)
    REFERENCES usuario (id)
    ON DELETE SET NULL;

