--Exercicio 2 de Laboratório de Banco de Dados
--Aluno: Rodrigo Sanches Dias
--Curso: ADS Noturno

--Abaixo, estou (re)criando as tabelas vendedor e cliente, 
--conforme trabalhamos em aula
CREATE TABLE vendedores (
    codigo int,
    vendedor varchar(100),
    telefone varchar(35),
    comissao float
);

create table clientes(
codigo numeric primary key,
nome varchar(100) not null,
email varchar(100) not null,
telefone varchar(35) default 'SEM TELEFONE',
cidade varchar(100),
unique(email)
);

--aqui, estou incluindo a coluna idade, que foi criada posteriormente pelo professor.
alter table clientes add idade int;

--Inicializando a instância seq_cliente, que é uma auto-numeração
create sequence seq_clientes;

--Vamos inserir agora 3 registros em cada tabela
INSERT INTO clientes (codigo, nome, email, telefone, idade, cidade)
values (seq_cliente.nextval,'Jose', 'jose@gmail.com','11-94536-8732',17, 'Belo Horizonte');

INSERT INTO clientes (codigo, nome, email, telefone, idade, cidade)
values (seq_cliente.nextval,'Mateus', 'mateus@outlook.com','11-98765-4378',33, 'Sao Paulo');

INSERT INTO clientes (codigo, nome, email, telefone, idade, cidade)
values (seq_cliente.nextval,'Josias', 'josias@terra.com','11-98383-9823',45, 'Curitiba');

--incializando o contador para os vendedores
create sequence seq_vendedores;

--inserindo registros em vendedores
INSERT INTO vendedores (codigo, vendedor, telefone, comissao)
values (seq_vendedores.nextval,'Josue', '11-97352-7283',64);

INSERT INTO vendedores (codigo, vendedor, telefone, comissao)
values (seq_vendedores.nextval,'Salomao', '11-93256-9342',78);

INSERT INTO vendedores (codigo, vendedor, telefone, comissao)
values (seq_vendedores.nextval,'Tadeu', '11-95642-2341',31);


--Aumento de 10% na comissao de todos os vendedores
update vendedores
set comissao = comissao * 1.1 

-- Aumentando 1 na idade quando a cidade for Sao Paulo
update clientes
set idade = idade +1
where cidade = 'Sao Paulo';

--removendo um registro de cada tabela usando a chave
DELETE vendedores
WHERE codigo = 1;

DELETE clientes
WHERE codigo = 21;

commit;
