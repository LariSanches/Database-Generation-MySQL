CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255),
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255),
    descricao_produto VARCHAR(255),
    preco DECIMAL(10, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

select * from tb_categorias;

select * from tb_produtos;

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Medicamentos', 'Produtos para tratamento de doenças e condições de saúde'),
('Cosméticos', 'Produtos de cuidados pessoais e estéticos'),
('Higiene', 'Produtos para higiene pessoal e cuidados diários'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Bem-estar', 'Produtos para o bem-estar e saúde geral');


INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, categoria_id) VALUES
('Paracetamol', 'Analgésico e antipirético', 10.50, 1),
('Shampoo Anticaspa', 'Controle da caspa e limpeza do couro cabeludo', 15.80, 3),
('Multivitamínico', 'Suplemento vitamínico de A a Z', 25.00, 4),
('Protetor Solar FPS 50', 'Proteção contra os raios UV', 35.90, 5),
('Creme Hidratante Corporal', 'Hidratação profunda para a pele', 20.00, 2),
('Fio Dental', 'Higiene bucal para remoção de placa', 4.50, 3),
('Umidificador de Ar', 'Umidificador que ajuda a aumentar a umidade do ar', 120.00, 5),
('Omeprazol', 'Medicamento utilizado para tratar úlceras gástricas, e condições relacionadas ao estômago.', 15.00, 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.*, c.nome_categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.*, c.nome_categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id 
WHERE c.nome_categoria = 'Cosméticos';