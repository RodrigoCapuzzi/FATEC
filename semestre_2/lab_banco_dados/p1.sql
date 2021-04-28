-- Nome: Rodrigo Sanches Dias
-- Curso ADS Noturno

-- P1 de Laboratorio de Banco de Dados

--1-Crie a estrutura das tabelas, usando as entidades do modelo, preste atenção nas PKs e FKs (2,0)
--2-Insira registros em Todas as tabelas (1,0) 
--Obs.: Vou fazer a 1 e a 2 sequencialmente. À medida que vou criando as tabelas, vou inserindo os registros.

--Criando a tabela pedidos
create table TB_PEDIDO (
  codigoPedido numeric primary key
, codigoCliente numeric
, codigoEntregador numeric
, dataPedido date
, status numeric
, total float);

--Criando a sequencia para fazer a numeração automatica dos pedidos
create sequence sq_pedido;

--inserindo alguns registros na tabela
insert into TB_PEDIDO (codigoPedido, codigoCliente, codigoEntregador, dataPedido, status, total)
values(sq_pedido.nextval, 2, 1, date '2021-04-02', 1, 38.1);

insert into TB_PEDIDO (codigoPedido, codigoCliente, codigoEntregador, dataPedido, status, total)
values(sq_pedido.nextval, 3, 1, date '2021-04-03', 1, 55.3);

insert into TB_PEDIDO (codigoPedido, codigoCliente, codigoEntregador, dataPedido, status, total)
values(sq_pedido.nextval, 2, 4, date '2021-04-05', 2, 31.9);

insert into TB_PEDIDO (codigoPedido, codigoCliente, codigoEntregador, dataPedido, status, total)
values(sq_pedido.nextval, 1, 3, date '2021-04-12', 3, 45.8);

--Criando a tabela clientes
create table TB_CLIENTE (codigoCliente numeric primary key, nome varchar(70) not null, endereco varchar(50) , telefone varchar(15));

--Numeração automática de clientes
create sequence sq_cliente;

--Inserindo registros
insert into TB_CLIENTE (codigoCliente, nome, endereco, telefone)
values(sq_cliente.nextval, 'Maria Antonia', 'Rua José Alves 55', '(11) 22349993');

insert into TB_CLIENTE (codigoCliente, nome, endereco, telefone)
values(sq_cliente.nextval, 'Rodrigo Sanches', 'Rua Tres Lagoas 91', '(11) 22343409');

insert into TB_CLIENTE (codigoCliente, nome, endereco, telefone)
values(sq_cliente.nextval, 'Wilson Aparecido', 'Av do Oratorio 1778', '(11) 21437623');

insert into TB_CLIENTE (codigoCliente, nome, endereco, telefone)
values(sq_cliente.nextval, 'Gustavo Lins', 'Alameda São Lucas 675', '(11) 28769765');

--Criando a tabela entregador
create table TB_ENTREGADOR (codigoEntregador numeric primary key, nome varchar(70) not null, telefone varchar(15), comissao float);

--Sequencia automatica de numeração dos entregadores
create sequence sq_entregador;

--inserindo registros
insert into TB_ENTREGADOR (codigoEntregador, nome, telefone, comissao)
values(sq_entregador.nextval, 'Igor Novaes', '(11) 22124852', 9.2);

insert into TB_ENTREGADOR (codigoEntregador, nome, telefone, comissao)
values(sq_entregador.nextval, 'Camila Filho', '(11) 22125679', 4.2);

insert into TB_ENTREGADOR (codigoEntregador, nome, telefone, comissao)
values(sq_entregador.nextval, 'Fabiano Tavares', '(11) 22345456', 7.9);

insert into TB_ENTREGADOR (codigoEntregador, nome, telefone, comissao)
values(sq_entregador.nextval, 'Juliano Silva', '(11) 23217090', 6.7);

--Criando a tabela produto
--Observação: Aqui estou usando o padrão que a professora Rita ensinou na aula de Banco de Dados, com o nome das tabelas sempre em maiusculo e no singular
create table TB_PRODUTO (codigoProduto numeric primary key, nome varchar(70) not null, valorUnitario float);

--Sequencia automatica de produtos
create sequence sq_produto;

--Inserindo registros
insert into TB_PRODUTO (codigoProduto, nome, valorUnitario)
values(sq_produto.nextval, 'Marinara', 39.9);

insert into TB_PRODUTO (codigoProduto, nome, valorUnitario)
values(sq_produto.nextval, 'Margherita', 29.5);

insert into TB_PRODUTO (codigoProduto, nome, valorUnitario)
values(sq_produto.nextval, 'Napoli', 35.5);

insert into TB_PRODUTO (codigoProduto, nome, valorUnitario)
values(sq_produto.nextval, 'Diavola', 45.9);

insert into TB_PRODUTO (codigoProduto, nome, valorUnitario)
values(sq_produto.nextval, 'Margherita di Bufala', 40.9);

--Criando tabela de ingredientes da pizza
create table TB_INGREDIENTE (codigoIngrediente numeric primary key, nome varchar(70) not null, peso float, valor float);

--Numeração automatica desses ingredientes
create sequence sq_ingrediente;

--Inserindo registros
insert into TB_INGREDIENTE (codigoIngrediente, nome, peso, valor)
values(sq_produto.nextval, 'Pomodoro', 0.2, 2.5);

insert into TB_INGREDIENTE (codigoIngrediente, nome, peso, valor)
values(sq_produto.nextval, 'Aglio', 0.4, 3.8);

insert into TB_INGREDIENTE (codigoIngrediente, nome, peso, valor)
values(sq_produto.nextval, 'Origano', 0.9, 6.4);

insert into TB_INGREDIENTE (codigoIngrediente, nome, peso, valor)
values(sq_produto.nextval, 'Olio EVO', 0.1, 6.7);

insert into TB_INGREDIENTE (codigoIngrediente, nome, peso, valor)
values(sq_produto.nextval, 'Mozzarella fior di latte', 0.05, 10.1);

insert into TB_INGREDIENTE (codigoIngrediente, nome, peso, valor)
values(sq_produto.nextval, 'Alici', 0.1, 9.4);

insert into TB_INGREDIENTE (codigoIngrediente, nome, peso, valor)
values(sq_produto.nextval, 'Capperi', 0.1, 8.3);

insert into TB_INGREDIENTE (codigoIngrediente, nome, peso, valor)
values(sq_produto.nextval, 'Ventricina', 0.1, 2.7);

--Criando tabela item
create table TB_ITEM (codigoItem numeric primary key, codigoPedido numeric, codigoProduto numeric, quantidade numeric, valorUnitario float, valorTotal float);

--Sequencia automatica de itens
create sequence sq_item;

--Regsitros:
insert into TB_ITEM (codigoItem, codigoPedido, codigoProduto, quantidade, valorUnitario, valorTotal)
values (sq_item.nextval, 2, 1, 2, 39.9, 39.9);

insert into TB_ITEM (codigoItem, codigoPedido, codigoProduto, quantidade, valorUnitario, valorTotal)
values(sq_item.nextval, 2, 2, 3, 31, 62);

insert into TB_ITEM (codigoItem, codigoPedido, codigoProduto, quantidade, valorUnitario, valorTotal)
values(sq_item.nextval, 2, 2, 4, 30, 90);

insert into TB_ITEM (codigoItem, codigoPedido, codigoProduto, quantidade, valorUnitario, valorTotal)
values(sq_item.nextval, 4, 1, 1, 28, 28);

insert into TB_ITEM (codigoItem, codigoPedido, codigoProduto, quantidade, valorUnitario, valorTotal)
values(sq_item.nextval, 2, 1, 5, 28, 28);

--Criando tabela de ingredientes extras
--Observe que o padrão de se colocar TB_ na frente da criação das tabelas também foi algo ensinado pela professora rita nas aulas de BD
--e o nome das colunas sempre começando com minusculo e, caso precisar de mais um nome, adicionar o segundo nome com a primeira maiuscula, sem espaço e sem hifen
create table TB_INGREDIENTE_EXTRA (valorExtra float);

insert into TB_INGREDIENTE_EXTRA (valorExtra)
values(2.1);

insert into TB_INGREDIENTE_EXTRA (valorExtra)
values(5.3);

insert into TB_INGREDIENTE_EXTRA (valorExtra)
values(3.4);

insert into TB_INGREDIENTE_EXTRA (valorExtra)
values(4.7);

--Aqui estou alterando as tables e adicionando as constraints na tabela do tipo chave estrangeira.
alter table TB_PEDIDO add constraints ID_CLIENTE_FK FOREIGN KEY(codigoCliente) references TB_CLIENTE(codigoCliente);
alter table TB_PEDIDO add constraints ID_ENTREGADOR_FK FOREIGN KEY(codigoEntregador) references TB_ENTREGADOR(codigoEntregador);
alter table TB_ITEM add constraints ID_PRODUTO_FK FOREIGN KEY(codigoProduto) references TB_PRODUTO(codigoProduto);
alter table TB_ITEM add constraints ID_PEDIDO_FK FOREIGN KEY(codigoPedido) references TB_PEDIDO(codigoPedido);

--3-Selecione o total de todos os pedidos, e a media dos pedidos agrupados pelo codigo do cliente (1,0)
--Abaixo pensei de fazer um join com a tabela cliente e trazer o nome, ao inves de apresentar só o código, mas como não estava pedindo no enunciado, preferi não fazer.

SELECT CODIGOCLIENTE, SUM(TOTAL) AS VALOR_TOTAL_GASTO, AVG(TOTAL) AS TICKET_MEDIO
FROM TB_PEDIDO
GROUP BY CODIGOCLIENTE;

-- 4-Utilizando o inner join liste o nome do cliente, 
--nome do entregador, codigo do pedido, total do pedido ordenado pela data do pedido (1,0)

SELECT C.NOME as NOME_DO_CLIENTE, E.NOME AS NOME_DO_ENTREGADOR, P.CODIGOPEDIDO, P.TOTAL
FROM TB_PEDIDO P INNER JOIN TB_CLIENTE C
ON P.CODIGOCLIENTE = C.CODIGOCLIENTE
INNER JOIN TB_ENTREGADOR E
ON E.CODIGOENTREGADOR = P. CODIGOENTREGADOR
ORDER BY DATAPEDIDO;

-- 5-Usando o Join liste todos os produtos contidos nos itens e exiba nome do produto, qtd e valor unitario (1,0)

SELECT DISTINCT P.NOME, I.QUANTIDADE, P.VALORUNITARIO
FROM TB_PRODUTO P JOIN TB_ITEM I
ON P.CODIGOPRODUTO = I.CODIGOPRODUTO;

-- 6-Usando o EXCEPT ou LEFT JOIN mostre todos os produtos que ainda não foram pedidos (1,0)

SELECT NOME
FROM TB_PRODUTO
WHERE CODIGOPRODUTO IN (
SELECT CODIGOPRODUTO
FROM TB_PRODUTO
MINUS
SELECT CODIGOPRODUTO
FROM TB_ITEM);
