use cadastro;

select carga, count(nome) from cursos
group by carga
order by carga; #O comando group by carga, agrupa todas as cargas, junto com o comando count(nome) irá contar esses grupos de cargas separadamente.

select totaulas, count(*) from cursos
group by totaulas
order by totaulas; # O mesmo porém contanto totaulas.

select * from cursos where totaulas = '12'; #Tirando a prova.

select totaulas, carga, count(*) from cursos where totaulas = '30'
group by carga; #Agrupa todos os cursos com 30 aulas por carga.

select carga, count(nome) from cursos
group by carga having count(nome) > '3'
order by carga; #Mostra sómente os grupos que possuem mais de 3 agrupamentos.

select ano, count(*) from cursos
group by ano having count(ano) >= '5'
order by count(*) desc; #outro exemplo com ano, ordenando pelo count.

select ano, count(*) from cursos
group by ano having totaulas > 30
order by count(*) desc; #Exemplo de erro, acontece pois não foi agrupado por totaulas.

select ano, count(*) from cursos
group by ano having ano > 2013
order by count(*) desc; #Exemplo usando o ano e não o count no having.

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc; #Usando where, pode-se colocar outros campos para limitar o select.
#obs, Pode-se selecionar, filtrar, agrupar, e dizer dentro do agrupamento qual se quer exibir.

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
#Nesse exemplo foi combinado um select no outro. Ou seja é possivel usar um select dentro de outro select.

select profissao, count(*) from gafanhotos
group by profissao; #ex1

select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo
order by sexo; #ex2

select nacionalidade, count(*) from gafanhotos
group by nacionalidade
having count(nacionalidade) >=3; #ex3

select altura, count(*) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);

select * from gafanhotos;