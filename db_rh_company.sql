CREATE database rh_company;

use rh_company;
CREATE TABLE rh_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
    departamento VARCHAR(255) NOT NULL,
    data_contratacao DATE,
	salario DECIMAL (10,2),
    PRIMARY KEY (id)
);

select * from rh_colaboradores;

INSERT INTO rh_colaboradores(nome, cargo, departamento, data_contratacao, salario) 
VALUES ("Mateus Souza","analista Jr","Financeiro", "2004-04-02", 2800.00);

INSERT INTO rh_colaboradores(nome, cargo, departamento, data_contratacao, salario) 
VALUES ("Ricardo Freitas","analista Senior","Logistica", "2012-08-07", 4900.00);
INSERT INTO rh_colaboradores(nome, cargo, departamento, data_contratacao, salario) 
VALUES ("Clarissa Sanches","analista Pleno","TI", "2018-11-04", 12000.00);
INSERT INTO rh_colaboradores(nome, cargo, departamento, data_contratacao, salario) 
VALUES ("Pricila Silva","analista Jr","RH", "2020-10-25", 2400.00);
INSERT INTO rh_colaboradores(nome, cargo, departamento, data_contratacao, salario) 
VALUES ("Roberto Cardoso","estagiario","Marketing", "2023-12-07", 1500.00);

UPDATE rh_colaboradores SET salario = 3500.00 WHERE Id = 1;

UPDATE rh_colaboradores SET data_contratacao = "2020-03-24" WHERE Id = 1;

UPDATE rh_colaboradores SET salario = 3100.00 WHERE Id = 4;

UPDATE rh_colaboradores SET data_contratacao = "2015-05-14" WHERE Id = 3;

select * from rh_colaboradores;

select * from rh_colaboradores where salario > 2000.00;

select * from rh_colaboradores where salario < 2000.00;