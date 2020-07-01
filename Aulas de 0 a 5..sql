create table pessoas (
	id int not null auto_increment,
	nome varchar(30) NOT NULL,
    nascimento date,
    sexo enum('M', 'F'),
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) DEFAULT 'Brasil',
    primary key(id)
)DEFAULT CHARSET = utf8mb4;



INSERT INTO pessoas 
(id, nome, sexo, peso, altura, nacionalidade, nascimento)
VALUES
(DEFAULT, 'Ana', 'F', '50.2', '1.75', 'França', '1996-06-15'),
(DEFAULT, 'Pedro', 'M', '89.2', '1.79', 'Portugal', '1992-02-27'),
(DEFAULT, 'Maria', 'F', '66.2', '1.75', 'Alemanha', '1978-11-18');

select * from pessoas;

desc pessoas;

create database cadastro
default character set utf8mb4
default collate utf8mb4_general_ci;

