--Atividade 05 de Laboratório de banco de dados (lbd05)
--Nome: Rodrigo Sanches Dias
--Curso: ADS Noturno

--1- Usando as tabelas PEDIDO  e CLIENTE

create table cliente(
codigo numeric primary key,
    nome varchar(100) not null,
email varchar(100) not null,
sexo char(1),
    telefone varchar(35) default 'SEM TELEFONE',
    unique(email)
);

create table pedido(
codigo numeric primary key,
valor numeric(18,2),
codigoVendedor numeric,
codigoCliente numeric,
dataPedido date);

create sequence seq_pedido;

--Primeiro, antes de fazer os joins, vamos inserir alguns valores nas tabelas:

insert into cliente (codigo, nome, email, sexo)
values (1, 'Rodrigo', 'rodrigo.capuzzi@gmail.com', 'm');

insert into pedido (codigo, valor, codigoVendedor, codigoCliente, dataPedido)
values (seq_pedido.nextval, 43, 1, 1, date '2021-03-28');

--agora, vamos visualizá-las para ver como ficou:

select *
from pedido;

select *
from cliente;

--2-Faça o inner join entre as tabelas PEDIDO e CLIENTE, mostrando o codigo do pedido, data do pedido, nome do cliente

SELECT p.codigo, p.dataPedido, c.nome
from pedido p join cliente c
on p.codigoCliente = c.codigo

--3-Faça o LEFT JOIN  entre as tabelas PEDIDO e CLIENTE para mostrar os pedidos que não tem cadastro de cliente

select *
from pedido p
left join cliente c
on p.codigoCliente = c.Codigo

--4-Faça o RIGHT JOIN entre as tabelas PEDIDO e CLIENTE para mostrar os clientes que não tem pedido

select *
from pedido p
right join cliente c
on p.codigoCliente = c.Codigo

--5-Faça uma consulta do plano cartesiano das duas tabelas
--Obs.: Plano Cartesiano = Cross Join

SELECT * 
FROM pedido p CROSS JOIN cliente c
WHERE p.codigoCliente = c.Codigo
