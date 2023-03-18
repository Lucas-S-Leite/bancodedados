-- create database licao1;
use licao1;

create table alunos(
id_ra int primary key not null,
nome varchar(45),
data_nasc varchar(45),
email varchar(45),
telefone varchar(45)
);

create table disciplina(
id_disciplina int primary key not null,
nome_disciplina varchar(45),
professor varchar(45),
sala varchar(45),
semestre varchar(45)
);


create table notas(
id_disciplina int,
id_ra int,
foreign key (id_disciplina) references disciplina(id_disciplina),
foreign key (id_ra) references alunos(id_ra),
n1 decimal (2,2),
n2 decimal (2,2),
media decimal(2,2)
);
