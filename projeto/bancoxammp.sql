create database Exercicioss;
use Exercicioss;

CREATE TABLE Exercicioss (
    id INT  AUTO_INCREMENT PRIMARY KEY,
    condicao_saude VARCHAR(50),
    tipo_exercicio VARCHAR(50),
    descricao VARCHAR(255),
    video_link TEXT
);



INSERT INTO Exercicioss (condicao_saude, tipo_exercicio, descricao, video_link)
VALUES
('Artrose no Joelho', 'Exercícios Aeróbicos', 'Caminhada (curtas e frequentes)', 'https://www.youtube.com/watch?v=8CE4ijWlQ18'),
('Artrose no Joelho', 'Exercícios Aeróbicos', 'Ciclismo (preferencialmente em bicicletas ergométricas)', 'https://www.youtube.com/watch?v=D41qsrTkBgM'),
('Artrose no Joelho', 'Exercícios Aeróbicos', 'Natação e hidroginástica', 'https://www.youtube.com/watch?v=oumzMyqK-2I'),
('Artrose no Joelho', 'Exercícios de Fortalecimento', 'Agachamento parcial', 'https://www.youtube.com/watch?v=n8_JcYAN7eU'),
('Artrose no Joelho', 'Exercícios de Fortalecimento', 'Levantamento de perna reta', 'https://www.youtube.com/watch?v=oumzMyqK-2I'),
('Artrose no Joelho', 'Exercícios de Fortalecimento', 'Flexões de perna (isquiotibiais)', 'https://www.youtube.com/watch?v=oumzMyqK-2I'),
('Artrose no Joelho', 'Exercícios de Fortalecimento', 'Extensões de perna na cadeira', 'https://www.youtube.com/watch?v=oumzMyqK-2I'),
('Artrose no Joelho', 'Exercícios de Flexibilidade e Alongamento', 'Alongamentos de isquiotibiais', 'https://www.youtube.com/watch?v=oumzMyqK-2I'),
('Artrose no Joelho', 'Exercícios de Flexibilidade e Alongamento', 'Alongamentos de quadríceps', 'https://www.youtube.com/watch?v=oumzMyqK-2I'),
('Artrose no Joelho', 'Exercícios de Flexibilidade e Alongamento', 'Alongamento do tendão de Aquiles e panturrilha', 'https://www.youtube.com/watch?v=oumzMyqK-2I'),
('Artrose no Joelho', 'Exercícios de Equilíbrio', 'Apoio unilateral (ficar em um pé só)', 'https://www.youtube.com/watch?v=oumzMyqK-2I'),
('Artrose no Joelho', 'Exercícios de Equilíbrio', 'Tai Chi', 'https://www.youtube.com/watch?v=Ev6yE55kYGw'),
('Artrite (mãos, ombro, joelho)', 'Exercícios para Mãos e Dedos', 'Esticar e empurrar a palma da mão', 'https://www.youtube.com/watch?v=rrZgg2Txqkc'),
('Artrite (mãos, ombro, joelho)', 'Exercícios para Mãos e Dedos', 'Abrir e fechar os dedos', 'https://www.youtube.com/watch?v=rrZgg2Txqkc'),
('Artrite (mãos, ombro, joelho)', 'Exercícios para Ombro', 'Levantar os braços para frente e para o lado', 'https://www.youtube.com/watch?v=rrZgg2Txqkc'),
('Artrite (mãos, ombro, joelho)', 'Exercícios para Joelho', 'Dobrar um joelho em direção ao peito', 'https://www.youtube.com/watch?v=rrZgg2Txqkc'),
('Artrite (mãos, ombro, joelho)', 'Exercícios para Joelho', 'Levantar uma perna esticada', 'https://www.youtube.com/watch?v=rrZgg2Txqkc'),
('Hipertensão', 'Exercícios Aeróbicos', 'Caminhada', 'https://www.youtube.com/watch?v=YqvdAr3H86k'),
('Hipertensão', 'Exercícios Aeróbicos', 'Corrida', 'https://www.youtube.com/watch?v=YqvdAr3H86k'),
('Hipertensão', 'Exercícios Aeróbicos', 'Natação', 'https://www.youtube.com/watch?v=YqvdAr3H86k'),
('Hipertensão', 'Exercícios Aeróbicos', 'Bicicleta', 'https://www.youtube.com/watch?v=YqvdAr3H86k'),
('Hipertensão', 'Exercícios Aeróbicos', 'Hidroginástica', 'https://www.youtube.com/watch?v=YqvdAr3H86k'),
('Diabetes', 'Exercícios Aeróbicos', 'Caminhada', 'https://www.youtube.com/watch?v=2N2sc1vOQzM'),
('Diabetes', 'Exercícios Aeróbicos', 'Corrida', 'https://www.youtube.com/watch?v=2N2sc1vOQzM'),
('Diabetes', 'Exercícios Aeróbicos', 'Bicicleta', 'https://www.youtube.com/watch?v=2N2sc1vOQzM'),
('Diabetes', 'Exercícios Aeróbicos', 'Natação', 'https://www.youtube.com/watch?v=2N2sc1vOQzM'),
('Diabetes', 'Exercícios Anaeróbicos', 'Musculação', 'https://www.youtube.com/watch?v=2N2sc1vOQzM'),
('Dor Lombar', 'Exercícios de Mobilidade e Fortalecimento', 'Mobilidade de coluna', 'https://www.youtube.com/watch?v=GzpGvwW2grY'),
('Dor Lombar', 'Exercícios de Mobilidade e Fortalecimento', 'Rotação de coluna', 'https://www.youtube.com/watch?v=GzpGvwW2grY'),
('Dor Lombar', 'Exercícios de Mobilidade e Fortalecimento', 'Extensão de tronco', 'https://www.youtube.com/watch?v=GzpGvwW2grY'),
('Dor Lombar', 'Exercícios de Mobilidade e Fortalecimento', 'Super-homem', 'https://www.youtube.com/watch?v=GzpGvwW2grY'),
('Dor Lombar', 'Exercícios de Mobilidade e Fortalecimento', 'Prancha', 'https://www.youtube.com/watch?v=GzpGvwW2grY'),
('Dor Lombar', 'Exercícios de Mobilidade e Fortalecimento', 'Elevação de quadril (pélvica)', 'https://www.youtube.com/watch?v=GzpGvwW2grY'),
('Dor Lombar', 'Exercícios de Mobilidade e Fortalecimento', 'Perdigueiro', 'https://www.youtube.com/watch?v=GzpGvwW2grY'),
('Dislipidemia', 'Exercícios Aeróbicos', 'Natação', 'https://www.youtube.com/watch?v=NHpYxfk8j8I'),
('Dislipidemia', 'Exercícios Aeróbicos', 'Corrida', 'https://www.youtube.com/watch?v=NHpYxfk8j8I'),
('Dislipidemia', 'Exercícios Aeróbicos', 'Caminhada', 'https://www.youtube.com/watch?v=NHpYxfk8j8I'),
('Dislipidemia', 'Exercícios Aeróbicos', 'Hidroginástica', 'https://www.youtube.com/watch?v=NHpYxfk8j8I'),
('Dislipidemia', 'Exercícios Aeróbicos', 'Bicicleta', 'https://www.youtube.com/watch?v=NHpYxfk8j8I'),
('Outros Exercícios Gerais', 'Pilates', 'Exercícios de pilates variados', 'https://www.youtube.com/watch?v=tbFSyWeg0c4'),
('Outros Exercícios Gerais', 'Yoga', 'Exercícios de yoga variados', 'https://www.youtube.com/watch?v=tbFSyWeg0c4'),
('Outros Exercícios Gerais', 'Dançaterapia', 'Dançaterapia', 'https://www.youtube.com/watch?v=tbFSyWeg0c4'),
('Outros Exercícios Gerais', 'Pular corda', 'Pular corda', 'https://www.youtube.com/watch?v=tbFSyWeg0c4'),
('Outros Exercícios Gerais', 'Jump', 'Jump', 'https://www.youtube.com/watch?v=tbFSyWeg0c4')
