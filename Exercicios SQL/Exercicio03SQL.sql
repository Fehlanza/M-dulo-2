CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
id BIGINT auto_increment, 
nome VARCHAR(255),
matricula INT, 
idade INT,
serie INT,
nota_portugues INT,
primary key (id)
);

SELECT * FROM tb_estudantes; 
INSERT INTO tb_estudantes(nome, matricula, idade, serie, nota_portugues) VALUES ("Camila", 982, 12, 3, 7);