CREATE TABLE vendedor (
    codigo int identity(1,1),
    vendedor varchar(100),
    telefone varchar(35),
    comissao float
);

ALTER TABLE vendedor
ADD email varchar(255);

ALTER TABLE vendedor
DROP COLUMN email;

DROP TABLE vendedor;
