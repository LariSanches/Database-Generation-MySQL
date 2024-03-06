CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255),
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(255),
    ingredientes TEXT,
    preco DECIMAL(10,2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

select * from tb_categorias;

select * from tb_pizzas;

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Tradicionais', 'Pizzas com os sabores clássicos'),
("Especiais", 'Pizzas exclusivas desenvolvidas pela pizzaria'),
('Veganas', 'Pizzas sem ingredientes de origem animal'),
('Doces', 'Pizzas com recheios doces'),
('Temporadas', 'Pizzas sazonais');

INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, categoria_id) VALUES
('Mussarela', 'Pizza tradicional com queijo mussarela derretido.', 35.00, 1),
('Calabresa', 'Pizza com fatias de calabresa e cebola.', 45.00, 1),
('Margherita', 'Pizza clássica italiana com molho de tomate, mussarela, manjericão e tomate.', 55.00, 1),
('Brigadeiro', 'Pizza doce com cobertura de brigadeiro e granulado.', 35.00, 4),
('Romeu e Julieta', 'Pizza doce com cobertura de goiabada e queijo.', 45.00, 4),
('Pizza Veg', 'Pizza vegana com molho de tomate, palmito, cogumelos e manjericão.', 35.00, 3),
('Quatro Queijos', 'Pizza com uma combinação gorgonzola, mussarela, catupiry e provolone.', 45.00, 2),
('Especial da Casa', 'Pizza especial de filé mingnon, catupiry e alho frito', 90.00, 2);

INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, categoria_id) VALUES
('Natalina', 'Pizza especial de Natal com cobertura de peru, molho de cranberry e queijo brie.', 90.00, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT p.*, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.*, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Doces';