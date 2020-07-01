use cadastro;

select * from cursos
where nome like 'p%';
#Pesquisa nomes que começam com p é um comando case-sensitive
#ou seja funciona com maiúscula e minúscula .

select * from cursos
where nome like '%a'; #Pesquisa todos os nomes que terminam com a letra a.

select * from cursos
where nome like '%a%'; #Pesquisa todos os nomes que tem a letra a.
#obs: %a% não significa no meio e sim se há a letra a numa cadeia de caracteres.
#obs²: Pega também A com acento: Á, porém nem todas as ferramentas sql fazem isso ex:.
update cursos
set nome = 'PáOO'
where idcurso = 9;


select * from cursos
where nome not like '%a%'; #Pesquisa todos os nomes que não tem a letra a.

select * from cursos
where nome like 'PH%P'; #Pesquisa todos os nomes que começam com PH e terminam com P

select * from cursos
where nome like 'PH%P%';
#Pesquisa todos os nomes que começam com PH, tenham um P após o PH e terminam com qualquer coisa.

select * from cursos
where nome like 'PH%P_';
#Pesquisa todos os nomes que começam com PH, termina com P e tenha algo após ele, um único caracter/número.

select * from cursos
where nome like 'p_p%';

select * from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%silva%';

select distinct nacionalidade from gafanhotos
order by nacionalidade; 
#Pesquisa os dados apenas uma vez, ignorando repetições caso
#a string pesquisada seja igual a alguma já enconstrada anteriormente.

select distinct carga from cursos
order by carga; 

select count(*) from cursos; #conta a quantidade de linhas registradas e não os campos.

Select count(*) from cursos
where carga >40; #Conta todos os resgistros de cursos onde a carga é maior que 40.

select max(carga) from cursos; #pegará o registro com maior valor no select no caso carga.

select max(totaulas) from cursos where ano = '2016'; #Pesquisa o maior valor de totaulas para o ano de 2016.

select nome, min(totaulas) from cursos where ano = '2016'; #esquisa o menor valor de totaulas para o ano de 2016.

select sum(totaulas) from cursos where ano = '2016'; #Soma todos os registros de totaulas e mostra no select.

select avg(totaulas) from cursos where ano = '2016';