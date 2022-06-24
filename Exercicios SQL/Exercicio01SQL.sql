CREATE DATABASE db_rhgeneration;
USE db_rhgeneration;

CREATE TABLE tb_setor(
	id BIGINT auto_increment,
    nome_setor VARCHAR(255),
    PRIMARY KEY(id) );

CREATE TABLE tb_funcionarios(
	id BIGINT auto_increment,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    matricula INT,
    setor_id bigint,
    
    PRIMARY KEY(id),
    FOREIGN KEY (setor_id) REFERENCES tb_setor(id) );

INSERT INTO tb_setor(nome_setor)VALUES("Administração");
INSERT INTO tb_setor(nome_setor)VALUES("Tecnologia");
INSERT INTO tb_setor(nome_setor)VALUES("Financeiro");
SELECT * FROM tb_setor;

INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Wan",20000,1,3);
INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Wellington",15000,2,1);
INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Rosa",23000,3,2);
SELECT * FROM tb_funcionarios;

