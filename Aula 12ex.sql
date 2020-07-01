use cadastro;

select * from gafanhotos;

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-01-31'
order by nascimento;

select * from gafanhotos
where profissao = 'programador' and sexo = 'M';

select * from gafanhotos
where sexo = 'F' and nome like 'j%' and nacionalidade = 'brasil';

select nome, nacionalidade from gafanhotos
where nome like '%silva%' and nacionalidade != 'brasil' and peso < '100';

select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'brasil';

select altura from gafanhotos
where nacionalidade = 'brasil';

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'brasil' and nascimento between'1990-01-01' and '2000-12-31';

select count(altura) from gafanhotos
where altura > 1.90 and sexo = 'F';
