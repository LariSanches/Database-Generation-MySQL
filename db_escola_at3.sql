CREATE DATABASE	db_escola;

use db_escola;

CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	data_nascimento date,
    serie VARCHAR(255),
    matricula bigint,
	nota DECIMAL (4,2),
    PRIMARY KEY (id)
);

select * from tb_estudantes;

INSERT INTO tb_estudantes(nome, data_nascimento, serie, matricula, nota) 
VALUES ("Miguel Rodrigues","2014-04-05","qinto ano", 20304050, 7.0);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, matricula, nota) 
VALUES ("Gabriela Proença","2013-08-25"," sexto ano", 25487046, 6.0);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, matricula, nota) 
VALUES ("Gabriela Pereira","2012-03-12"," setimo ano", 78946523, 7.5);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, matricula, nota) 
VALUES ("Vitoria Silva","2013-06-25"," sexto ano", 64357810, 9.0);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, matricula, nota) 
VALUES ("Otávio de Matos","2012-02-07"," setimo ano", 79643854, 5.9);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, matricula, nota) 
VALUES ("Beatriz Silva","2014-12-29"," quinto ano", 89784898, 8.0);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, matricula, nota) 
VALUES ("Ana Fortaleza","2011-07-15"," oitavo ano", 45658575, 7.75);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, matricula, nota) 
VALUES ("Pedro Fonseca","2011-01-10"," oitavo ano", 14749568, 6.40);

UPDATE tb_estudantes SET serie = "quinto ano" WHERE Id = 1;

select * from tb_estudantes where nota > 7.00;
select * from tb_estudantes where nota < 7.00;

UPDATE tb_estudantes SET matricula = 50403020 WHERE Id = 1;

