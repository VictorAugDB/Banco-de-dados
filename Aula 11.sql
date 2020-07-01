use cadastro;

Select * from cursos
order by nome; #Seleciona todos os curso ordenados em ordem alfabética a-z de nome.

Select * from cursos
order by nome asc; #Seleciona todos os curso ordenados em ordem alfabética a-z de nome. (padrão é o asc).

Select * from cursos
order by nome desc; #Seleciona todos os curso ordenados em ordem alfabética inversa z-a de nome.

desc cursos; #Esse desc é de describe o de cima colocado no order by é de descending;

Select nome, carga, ano from cursos
order by nome; #Seleciona somente nome, carga e ano de cursos, ordenados pelo nome de forma ascendente.

Select ano, nome, carga from cursos
order by ano, nome;/*Seleciona somente nome, carga e ano de cursos,
ordenados primeiro pelo ano e posteriormente pelo nome de forma ascendente.*/

Select * from cursos
where ano = 2016
order by nome; #Seleciona todos os cursos onde o ano é 2016 ordenados por nome.

Select nome, carga from cursos
where ano = 2016
order by nome; #Ordena de maneira correta mesmo não selecionando o ano.
#Mostrando que é possível filtrar pelo ano e a linha do ano não aparecer no result-set (resultado da consulta).

Select nome, descricao, ano from cursos
where ano <> 2016
order by ano, nome; #Pode ser colocado um operador relacionais (<=, >=, !=, =, <, >, <>(diferente))
#A ordem faz toda a diferença na exibição dos resultados.

Select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome desc; #Seleciona nome e ano que estão entre 2014 e 2016.

Select nome, descricao, ano from cursos
where ano in (2014, 2016, 2018)
order by ano, nome; #Seleciona nome e ano dos anos 2014, 2016 e 2018.

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30
order by carga, ano; #Podem ser usados operadores lógicos também (and, or, etc).