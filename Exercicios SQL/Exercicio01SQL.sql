CREATE DATABASE db_regeneration2;
USE db_regeneration2;

CREATE TABLE tb_funcionarios2 (
id BIGINT auto_increment, 
nome VARCHAR(255), 
salario DECIMAL(9,2), 
setor VARCHAR(255), 
matricula INT, 
primary key (id)); 

SELECT * FROM tb_funcionarios2; 
INSERT INTO tb_funcionarios2 (nome, salario, setor, matricula) VALUES ("Jacque", 9000.50, "Tecnologia", 02);

UPDATE tb_funcionarios 
SET nome = "Marcelo" 
WHERE id = 2 