--1- Faça uma consulta de todos os campos na tabela cliente
select *
from clientes;

--2- Consulte os campos nome e idade da tabela cliente onde o sexo=’F’
select nome, idade
from clientes
where sexo = 'f';

--3- Consulte os campos da tabela de cliente quando o sexo=’F’ e a idade for >=18,
--ordenando pela idade e nome

select *
from clientes
where sexo = 'f' and idade >= 18
order by idade asc, nome;

--4-consulte os campos produto,valor e quantidade da tabela produto e estoque ordenando pela quantidade em estoque decrescente

select produto, valor, quantidade, estoque
from produto
order by estoque desc;

--5- Agrupe os pedidos por vendendor , mostrando o numero de pedidos , total dos pedidos e media dos pedidos.
select vendedor, count(id_pedido) as numero_pedidos, sum(valor_pedido) as valor_total, avg(valor_pedido) as media_pedidos
from pedidos
group by vendedor

--6- Verifique no banco de dados o menor e o maior valor de pedido
select max(valor_pedido) as maior_valor_pedidos, min(valor_pedido) as menor_valor_pedido
from pedidos
