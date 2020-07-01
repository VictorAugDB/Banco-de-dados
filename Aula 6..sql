alter table pessoas
add column profissao varchar(10); #Adiciona a coluna profissão a tabela pessoas

select * from pessoas; #Após a tabela ser renomeada esse comando não funciona mais, pois não existe mais tabela pessoas

select * from gafanhotos; #Esse comando irá funcionar, pois a tabela pessoas agora se chama gafanhotos

desc pessoas;

desc gafanhotos;

alter table gafanhotos
drop column codigo;

alter table pessoas
drop column profissao; #remover a coluna profissão da tabela pessoas, se existir

alter table pessoas
add column profissao varchar(10) after nome;  #Adiciona coluna profissão a tabela pessoas depois da coluna nome

alter table pessoas
add codigo int first; #A coluna código é criada e colocada antes de todas as colunas.

alter table pessoas
modify profissao varchar(20); #Altera o tipo da coluna profissão para um varchar de 20 caracteres

alter table pessoas
change column profissao prof varchar(20); #Altera o nome da coluna profissão para prof

alter table pessoas
rename to gafanhotos; #Renomeia a tabela pessoas para gafanhotos

create table if not exists cursos(
nome varchar(30) not null unique, #unique não é primary key.
descricao text,
carga int unsigned, #unsigned signica sem sinal, economiza 1 byte para cada registro cadastrado.
totalaulas int unsigned,
ano year default '2020'
) default charset = utf8mb4; #Cria a tabela cursos se não existir.

select * from cursos;

alter table cursos
add column idcurso int first; #Foi colocado o add column, porém pode-se colocar somente add.

alter table cursos
drop column idcurso;

alter table cursos
add primary key (idcurso); #transformar uma coluna em uma primary key

drop table cursos;

desc cursos;

#Teste:

create table if not exists teste(
	id int,
    nome varchar(20),
    idade int
);

insert into teste value
(1, 'Pedro', '22'),
(2, 'Maria', '21'),
(3, 'Lucas', '19');

select * from teste;

drop table if exists teste;
