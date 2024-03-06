CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255),
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_cursos (
    curso_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(255),
    descricao_curso VARCHAR(255),
    preco DECIMAL(10, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Programação', 'Cursos relacionados à programação de software'),
('Design', 'Cursos relacionados à design gráfico e web'),
('Administrativo', 'Cursos relacionados à administração e empreendedorismo'),
('Idiomas', 'Cursos de línguas estrangeiras'),
('Fotografia', 'Cursos relacionados à fotografia');

INSERT INTO tb_cursos (nome_curso, descricao_curso, preco, categoria_id) VALUES
('Curso de Java Avançado', 'Aprenda programação avançada em Java', 799.00, 1),
('Curso de Photoshop', 'Domine as técnicas avançadas de edição de imagem', 699.00, 2),
('Curso de Administração Financeira', 'Aprenda a gerenciar suas finanças de forma eficaz', 899.00, 3),
('Curso de Inglês Intermediário', 'Aprimore suas habilidades no idioma inglês', 599.00, 4),
('Curso de Fotografia Digital', 'Aprenda os fundamentos da fotografia digital', 299.00, 5),
('Curso de Python para Iniciantes', 'Introdução à programação em Python', 499.00, 1),
('Curso de Espanhol básico', 'Aprimore suas habilidades no idioma espanhol', 399.00, 4),
('Curso de Marketing Digital', 'Conceitos e estratégias para marketing online', 899.00, 3);

select * from tb_categorias;

select * from tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT c.*, cat.nome_categoria 
FROM tb_cursos c 
INNER JOIN tb_categorias cat ON c.categoria_id = cat.categoria_id;

SELECT c.*, cat.nome_categoria 
FROM tb_cursos c 
INNER JOIN tb_categorias cat ON c.categoria_id = cat.categoria_id 
WHERE cat.nome_categoria = 'Programação';