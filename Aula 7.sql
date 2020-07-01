insert into cursos values
('1', 'HTML4','Curso de HTML5','40', '37','2014'),
('2', 'Algoritmos','Lógica de programação','20', '15','2014'),
('3', 'Photoshop','Dicas de photoshop','10', '08','2014'),
('4', 'PGP','Curso de PHP para iniciantes','40', '20','2010'),
('5', 'Jarva','Introdução à Linguagem Java','10', '29','2000'),
('6', 'MySQL','Banco de Dados MySQL','30', '15','2016'),
('7', 'Word','Curso completo de word','40', '30','2016'),
('8', 'Sapateado','Danças Rítimicas','40', '30','2018'),
('9', 'Cozinha Árabe','Aprenda a fazer kibe','40', '30','2050'),
('10', 'Youtuber','Gerar polêmica e ganhar inscritos','5', '2','2018');

drop table if exists cursos;

select * from cursos;

update cursos
set nome = 'HTML5'
where idcurso = '1'; #Na coluna nome altera a linha para HTML5, onde a linha de idcurso vale 1.

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4'; #Muda a coluna nome e o ano, onde idcurso vale 4

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
Limit 1; #limita a um registro, no caso de haver mais de um
#Muda a coluna nome, a carga e o ano, onde o idcurso vale 5

update cursos
set ano = 2018, carga = 0
where ano = 2050; #Muda a coluna ano, e carga onde o ano vale 2050

delete from cursos
where idcurso = '8'; #Deleta todas as colunas da linha onde o idcurso = 8

delete from cursos
where ano = '2018'
limit 3; #deleta os cursos onde o ano vale 2018 limitando a no máximo 3 deletes

truncate table cursos; #Deleta todos os cadastros inseridos na tabela pelo Insert Into.