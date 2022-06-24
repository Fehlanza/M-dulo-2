CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT auto_increment,
    classe VARCHAR(255), 
    atributo VARCHAR(255), 
    PRIMARY KEY(id) );
    
CREATE TABLE tb_personagens(
	id BIGINT auto_increment,
    nome VARCHAR(255),
    arma VARCHAR(255),
    poder_de_ataque BIGINT,
    poder_de_defesa BIGINT,
    classes_id BIGINT, 
    
	PRIMARY KEY(id),
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id) );
    
    INSERT INTO tb_classes(classe, atributo)VALUES("Mago", "Inteligente"); 
    INSERT INTO tb_classes(classe, atributo)VALUES("Arqueiro", "Preciso");
    INSERT INTO tb_classes(classe, atributo)VALUES("Cavaleiro", "Velocidade"); 
    INSERT INTO tb_classes(classe, atributo)VALUES("Guerreiro", "Força");
    INSERT INTO tb_classes(classe, atributo)VALUES("Elfo", "Força suprema");
    SELECT * FROM tb_classes;
    -- UPDATE tb_classes SET classe='Feiticeiro' WHERE id=1; 
    
    INSERT INTO tb_personagens(nome, arma, poder_de_ataque, poder_de_defesa, classes_id)VALUES("Jordan","Arco e flecha",3000, 1200, 2);
    INSERT INTO tb_personagens(nome, arma, poder_de_ataque, poder_de_defesa, classes_id)VALUES("Arthur","Espada", 4000, 3000, 3);
    INSERT INTO tb_personagens(nome, arma, poder_de_ataque, poder_de_defesa, classes_id)VALUES("Ale","Magia", 3000, 800, 5);
	INSERT INTO tb_personagens(nome, arma, poder_de_ataque, poder_de_defesa, classes_id)VALUES("Luna","Espada", 4000, 3000, 3);
    INSERT INTO tb_personagens(nome, arma, poder_de_ataque, poder_de_defesa, classes_id)VALUES("Camila","Magia", 2000, 1000, 1);
    INSERT INTO tb_personagens(nome, arma, poder_de_ataque, poder_de_defesa, classes_id)VALUES("Fernanda","Espada", 4000, 3000, 4);
    INSERT INTO tb_personagens(nome, arma, poder_de_ataque, poder_de_defesa, classes_id)VALUES("Leticia","Magia", 3000, 800, 5);
    INSERT INTO tb_personagens(nome, arma, poder_de_ataque, poder_de_defesa, classes_id)VALUES("Rafa","Magia", 1800, 900, 1);
    SELECT * FROM tb_personagens; 
    
    SELECT * FROM tb_personagens WHERE poder_de_ataque > 2000;
    SELECT * FROM tb_personagens WHERE poder_de_defesa > 1000 AND poder_de_defesa < 2000;
    SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; 
    SELECT * FROM tb_classes INNER JOIN tb_personagens;
    
	SELECT tb_personagens.nome, tb_classes.classe FROM tb_personagens INNER JOIN tb_classes 
	ON tb_classes.id = tb_personagens.classes_id;
