/*
Nome: Rodrigo Sanches Dias
Curso: ADS Noturno
*/

--Antes de iniciar os exercícios, vamos criar e popular as duas tabelas
create table cliente (nome varchar(50), email varchar(50));

--Vamos inserir tres clientes:
insert into cliente (nome, email)
values('Norton', 'norton@norton.com');

insert into cliente (nome, email)
values('Rodrigo', 'rodrigo@gmail.com');

insert into cliente (nome, email)
values('Diego', 'diego@outlook.com');

--Visualizando como ficou a tabela:
select *
from cliente;

create table vendedor (nome varchar(50), email varchar(50));

--Vamos inserir dois vendedores:
insert into vendedor (nome, email)
values('Newton', 'newton@terra.com');

insert into cliente (nome, email)
values('Edson', 'edson@yahoo.com');

--Visualizando como ficou a tabela:
select *
from vendedor;

/*1-Faça o union das tabelas cliente e vendedor extraia os camos nome e email ordernando pelo nome de forma crescente*/

select nome, email
from cliente

union

select nome, email
from vendedor
order by nome;

/*2-Faça o union all das tabelas cliente e vendedor extraia os camos nome e email*/

select nome, email
from cliente

union all

select nome, email
from vendedor;

/*3-Faça o except das tabelas cliente e vendedor extraia os camos nome e email*/
--Observação: Usando o minus, que é a sintaxe do except no PL-SQL

select nome, email
from cliente

minus

select nome, email
from vendedor;

/*4-Faça o intersect das tabelas cliente e vendedor extraia os camos nome e email*/

select nome, email
from cliente

intersect

select nome, email
from vendedor;
