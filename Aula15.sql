use cadastro;
describe gafanhotos;
alter table gafanhotos add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso); /*Transforma a coluna cursopreferido em uma chave estrangeira,
 essa chave está referenciada na chave primária de cursos.*/
 
 update gafanhotos set cursopreferido = '6' where id = '1';
 #Demais updates feitos pelo select de forma automática, foram colocados os valores nos campos
 #clicado em Aplly e o workbench fez o trabalho de criar os updates e executalos.
 
 delete from cursos where idcurso = '6'; #Erro de Integridade referencial.
 
 delete from cursos where idcurso = '28'; #Deleta, pois cursopreferido não aponta para o curso com id = 28;
 
 Select nome, cursopreferido from gafanhotos;
 
 select nome, ano from cursos;
 
 select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
 from gafanhotos join cursos; #cada aluno junto com todos os cursos, não mostra somente uma vez, ou seja, existem 30 cursos ele mostra os 30 cursos pra cada aluno.
 
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome; #Será como no join porém filtrado, por curso preferido, mostrando somente uma vez o curso, de quem tiver um cursopreferido,
#no caso de não haver um cursopreferido estabelecido não será mostrado no join.

select g.nome, c.nome, c.ano
from gafanhotos as g join cursos as c
on c.idcurso = g.cursopreferido; #utilizando as(apelido de coluna).

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido; #Ele mostra os gafanhotos independente de terem ou não ou cursopreferido, pois está dando preferência a gafanhotos.
#obs: pode ser usado também como somente left join, ele irá considerar um left outer join, o mesmo para o right join.

select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido; #Neste são mostrados somente quem tem um curso preferido, e também cursos que não são preferidos por ninguém, pois está dando preferência a cursos.
 
 select * from gafanhotos;
 select * from cursos;