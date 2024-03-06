CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Ferramentas', 'Produtos utilizados para execução de trabalhos manuais ou mecânicos'),
('Elétrica', 'Produtos relacionados à instalação e manutenção elétrica'),
('Hidráulica', 'Produtos relacionados à instalação e manutenção hidráulica'),
('Acabamento', 'Produtos utilizados para acabamento de construções'),
('Madeiras', 'Produtos feitos de madeira para construção e acabamento');

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, categoria_id) VALUES
('Martelo', 'Ferramenta para bater ou retirar pregos', 15.90, 1),
('Fio Elétrico 2.5mm', 'Cabo flexível para instalações elétricas', 120.00, 2),
('Torneira', 'Dispositivo para regular ou interromper o fluxo de água', 35.50, 3),
('Tinta Acrílica Branca', 'Tinta para pintura de ambientes internos', 89.90, 4),
('Vigota de Madeira', 'Elemento estrutural de madeira para construção', 55.00, 5),
('Serra Circular', 'Ferramenta elétrica para corte de materiais', 180.00, 1),
('Conexão PVC 25mm', 'Conexão para tubulação de água', 3.20, 3),
('Rejunte Cerâmico', 'Material para preencher juntas entre cerâmicas', 12.75, 4);

select * from tb_categorias;

select * from tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.*, c.nome_categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.*, c.nome_categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id 
WHERE c.nome_categoria = 'Hidráulica';