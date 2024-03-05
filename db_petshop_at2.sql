CREATE DATABASE petshop_db;

use petshop_db;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	categoria VARCHAR(255) NOT NULL,
    marca VARCHAR(255),
    preco DECIMAL (6,2),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

select * from tb_produtos;

INSERT INTO tb_produtos(nome, categoria, marca, preco, descricao) 
VALUES ("Ração premium", "alimentação", "Premier", 125.50, "ração 5kg sabor carne");

INSERT INTO tb_produtos(nome, categoria, marca, preco, descricao) 
VALUES ("Coleira", "guias", "Reserva", 45.70, "coleira verde militar 1.5cm tam. p");
INSERT INTO tb_produtos(nome, categoria, marca, preco, descricao) 
VALUES ("Brinquedo osso de pelúcia", "brinquedos", "Chalesco", 23.50, "briquedo de pelucia tam. único");
INSERT INTO tb_produtos(nome, categoria, marca, preco, descricao) 
VALUES ("Areia sanitária", "higiene e limpeza", "Meau", 13.50, "areia sanitária fina 4kg");
INSERT INTO tb_produtos(nome, categoria, marca, preco, descricao) 
VALUES ("Bifinho natural", "alimentação", "Nats", 32.40, "bifinho sabor camomila 300g");
INSERT INTO tb_produtos(nome, categoria, marca, preco, descricao) 
VALUES ("Roupa pós castração", "acessórios", "Pet Med", 85.67, "roupa pós cirurgica azul tam. 05");
INSERT INTO tb_produtos(nome, categoria, marca, preco, descricao) 
VALUES ("Casinha plástico", "casinha e caminhas", "Durahouse", 137.45, "casinha plástico preta e vermelha para cães tam. 04");
INSERT INTO tb_produtos(nome, categoria, marca, preco, descricao) 
VALUES ("Coleira vibra adestramento", "guias", "Petsafe", 502.20, "coleira para adestramento com vibra");

UPDATE tb_produtos SET marca = "Natural Guabi" WHERE Id = 1;
UPDATE tb_produtos SET descricao = "ração natural 15kg sabor salmão e linhaça" WHERE Id = 1;
UPDATE tb_produtos SET nome = "Ração natural" WHERE Id = 1;
UPDATE tb_produtos SET preco = 550.00 WHERE Id = 1;

ALTER TABLE tb_produtos ADD disponibilidade VARCHAR(255);

UPDATE tb_produtos SET disponibilidade = "estoque" WHERE id between 1 and 8;

select * from tb_produtos where preco > 500.00;

select * from tb_produtos where preco < 500.00;
