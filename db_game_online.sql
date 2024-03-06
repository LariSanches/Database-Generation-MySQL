CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

-- Criação da tabela tb_classes
CREATE TABLE tb_classes (
    classe_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50),
    descricao_classe VARCHAR(255)
);

CREATE TABLE tb_personagens (
    personagem_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(50),
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(classe_id)
);

INSERT INTO tb_classes (nome_classe, descricao_classe) VALUES
('Guerreiro', 'Um combatente corpo a corpo resistente'),
('Mago', 'Um usuário de magia poderoso'),
('Arqueiro', 'Um especialista em combate à distância'),
('Cavaleiro', 'Um guerreiro montado com grande habilidade'),
('Ladrão', 'Um mestre em furtividade e agilidade');

INSERT INTO tb_personagens (nome_personagem, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Aragorn', 15, 2500, 1800, 1),
('Gandalf', 20, 3000, 2000, 2),
('Legolas', 18, 2800, 1500, 3),
('Eowyn', 12, 2000, 1200, 4),
('Frodo', 10, 1500, 1000, 5),
('Gimli', 16, 2700, 1900, 1),
('Boromir', 14, 2200, 1600, 1),
('Samwise', 11, 1800, 1100, 5);

select * from tb_classes;

select * from tb_personagens;


SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%c%';

-- INNER JOIN entre tb_personagens e tb_classes
SELECT p.*, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.classe_id;

-- INNER JOIN com filtro por classe específica (por exemplo, Arqueiros)
SELECT p.*, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.classe_id
WHERE c.nome_classe = 'Arqueiro';

update tb_personagens set nome_personagem = "Conan" where personagem_id = 7;