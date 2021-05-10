--Nome: Rodrigo Sanches Dias
--Curso: ADS Noturno

--Exercício de Laboratório de Banco de Dados 7

--Criando a tabela clientes:

create table cliente(
codigo numeric primary key,
nome varchar(100) not null,
email varchar(100) not null,
sexo char(1),
    telefone varchar(35) default 'SEM TELEFONE',
    unique(email)
);

create sequence seq_cliente;

insert into cliente (codigo, nome, email, sexo)
values (seq_cliente.nextval, 'Rodrigo', 'rodrigo.capuzzi@gmail.com', 'm');

insert into cliente (codigo, nome, email, sexo)
values (seq_cliente.nextval, 'Alana', 'alana.silva@hotmail.com', 'f');

alter table cliente
add cidade varchar(50) null;

update cliente
set cidade = 'São Paulo'
where nome = 'Rodrigo';

update cliente
set cidade = 'Louveira'
where nome = 'Alana';

insert into cliente (codigo, nome, email, sexo, cidade)
values (seq_cliente.nextval, 'Newton', 'newton.silva@hotmail.com', 'm', 'Campinas');

alter table cliente
add idade numeric;

update cliente
set idade = 29
where nome = 'Alana';

update cliente
set idade = 19
where nome = 'Rodrigo';

update cliente
set idade = 40
where nome = 'Newton';

select *
from cliente

--Tab Pedidos:
create table pedido(
codigo numeric primary key,
valor numeric(18,2),
codigoVendedor numeric,
codigoCliente numeric,
dataPedido date);

create sequence seq_pedido;

insert into pedido (codigo, valor, codigoVendedor, codigoCliente, dataPedido)
values (seq_pedido.nextval, 43, 1, 1, date '2021-03-28');

insert into pedido (codigo, valor, codigoVendedor, codigoCliente, dataPedido)
values (seq_pedido.nextval, 45, 3, 2, date '2021-04-28');

select *
from pedido;


--1-Utilizando a tabela pedido liste o valor quando a data do pedido estiver entre 01/03/2021 e 31/03/2021 use o operador BETWEEN

select *
from pedido 
where dataPedido between date '2021-03-01' and date '2021-03-31';

--2-Liste todos os registros da tabela cliente que contiver a letra A no nome use o operador LIKE

select *
from cliente
where nome like '%a%';

--3-Liste todos os clientes cuja a cidade for SÃO PAULO, CAMPINAS use o operador IN

select *
from cliente
where cidade in ('São Paulo', 'Campinas');

--4-liste todos os clientes que ainda nao fizeram pedidos use o operador NOT IN

select *
from cliente
where codigo not in (select codigoCliente from pedido);

--5-Liste todos os clientes com a idade entre 18 e 30 anos use o operador BETWEEN

select *
from cliente
where idade between 18 and 30;

--6-utilizando o campo DataPedido da tabela Pedido some 7 dias para simular a data de entrega do mesmo

select dataPedido + 7 as DataEntrega
from pedido;
