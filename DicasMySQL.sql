create database cadastro
default character set utf8
default collate utf8_general_ci;

create table `pessoas` (
`id` int not null auto_increment,
`nome` varchar(30) not null,
`nascimento` date,
`sexo` enum('M', 'F'),
`peso` decimal (5,2),
`altura` decimal (3,2),
`nacionalidade` varchar(20) Default 'Brasil',
primary key (id) #indica que é uma chave única (não se repete)
) default charset = utf8;

# insere os valores na mesma ordem da tabela 
insert into pessoas values
(default, 'Cláudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(default, 'Ana', '1985-6-15', 'F', '49.5', '1.65', 'EUA'),
(default, 'Arnon', '1990-2-01', 'M', '55.5', '1.70', 'Brasil');

# descrição detalhada de todos os itens da tabela 
select * from "Persons";

# adiciona uma coluna na última posição da tabela 
alter table pessoas add column profissao varchar(10);

# adiciona uma coluna em uma posição específica na tabela
alter table pessoas add column profissao varchar(10) after nome;
