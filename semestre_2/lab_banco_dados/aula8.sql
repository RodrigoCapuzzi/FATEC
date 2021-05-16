-- Nome: Rodrigo Sanches Dias
-- Curso: Ads Noturno

-- Atividade 08

-- 1-Crie um index na tabela produto(nome)

CREATE INDEX produto_nome
ON produto(nome);

-- 2-Crie um index na tabela cliente(nome,email)

CREATE INDEX cliente_nome_email
ON cliente(nome,email);

-- 3-Crie uma trigger na tabela pedido, cliente, produto para o evento DELETE e UPDATE que guarde na tabela AUDITLOG os dados removidos ou alterados 

create table auditlog(
    nomeTabela varchar(100),
    codigo  numeric,
    dataDelete date
); 

create trigger auditor_pedido
after delete or update on pedido
for each row
begin

    if (DELETING) then
        insert into auditlog(nomeTabela,codigo,dataDelete) values ('pedido', id_seq.nextval, SYSDATE);
    end if;

    if (UPDATING) then
        insert into auditlog(nomeTabela,codigo,dataDelete) values ('pedido', id_seq.nextval, SYSDATE);
    end if;
end;

create trigger auditor_cliente
after delete or update on cliente
for each row
begin

    if (DELETING) then
        insert into auditlog(nomeTabela,codigo,dataDelete) values ('pedido', id_seq.nextval, SYSDATE);
    end if;

    if (UPDATING) then
        insert into auditlog(nomeTabela,codigo,dataDelete) values ('pedido', id_seq.nextval, SYSDATE);
    end if;
end;

create trigger auditor_produto
after delete or update on produto
for each row
begin

    if (DELETING) then
        insert into auditlog(nomeTabela,codigo,dataDelete) values ('pedido', id_seq.nextval, SYSDATE);
    end if;

    if (UPDATING) then
        insert into auditlog(nomeTabela,codigo,dataDelete) values ('pedido', id_seq.nextval, SYSDATE);
    end if;
end;


-- 4- crie uma view chamada vw_comissaoVendedor que calcule a comissao dos vendedores de acordo com o valor total dos pedidos feitos, mostre o codigo do vendedor, nome vendedor, valorComissao

CREATE VIEW vw_comissaoVendedor AS
SELECT
    cd_vendedor,
    nm_vendedor,
    valorTotal*0.1 as valorComissao
FROM
    pedido;
