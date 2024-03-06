CREATE DATABASE  db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255),
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100),
    descricao_produto VARCHAR(255),
    preco DECIMAL(10, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);


INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Carnes', 'Produtos de origem animal, como carne bovina, suína, ovina, etc.'),
('Legumes', 'Vegetais de raízes comestíveis, como cenoura, batata, etc.'),
('Frutas', 'Frutas frescas e suculentas, como maçã, banana, etc.'),
('Laticínios', 'Produtos lácteos, como leite, queijo, iogurte, etc.'),
('Aves', 'Aves de diversas espécies, como frango, peru, pato, etc.');

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, categoria_id) VALUES
('Picanha', 'Corte nobre de carne bovina', 80.00, 1),
('Tomate', 'Fruto comestível utilizado em saladas e preparações culinárias', 3.50, 2),
('Maçã Gala', 'Fruta doce e suculenta', 2.00, 3),
('Queijo Mussarela', 'Queijo de sabor suave e textura macia', 15.00, 4),
('Peito de Frango', 'Parte do frango sem osso e com baixo teor de gordura', 10.00, 5),
('Alcatra', 'Corte de carne bovina macio e saboroso', 60.00, 1),
('Abacaxi', 'Fruta tropical doce e ácida', 4.50, 3),
('Leite Integral', 'Leite com teor completo de gordura', 4.00, 4);

select * from tb_categorias;

select * from tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.*, c.nome_categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.*, c.nome_categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id 
WHERE c.nome_categoria IN ('Aves', 'Frutas');