--Nome: Rodrigo Sanches Dias
--Curso: ADS Noturno

-- Recuperação de Laboratório de Banco de Dados

-- 1 - crie o script das tabelas, não esqueça de definidir as PKs e FKs

CREATE TABLE tb_paciente (
codigoPaciente numeric primary key,
nome varchar(100),
email varchar(100),
idade numeric,
sexo varchar(2),
telefone varchar(30)
);

CREATE SEQUENCE codigoPaciente_seq;

CREATE TABLE tb_medico(
codigoMedico numeric primary key,
nomeMedico varchar(100),
CRM numeric,
emailMedico varchar(100),
telefoneMedico varchar(30));

CREATE SEQUENCE codigoMedico_seq;

CREATE TABLE tb_consulta (
codigoConsulta numeric primary key,
dataConsulta date,
obsConsulta varchar(100),
horaConsulta timestamp,
statusConsulta varchar(50),
codigoPaciente numeric,
codigoMedico numeric,
foreign key (codigoPaciente) references tb_paciente(codigoPaciente),
foreign key (codigoMedico) references tb_medico(codigoMedico));

CREATE SEQUENCE codigoConsulta_seq;

CREATE TABLE tb_receita (
codigoReceita numeric primary key,
dataReceita date,
obsReceita varchar(100),
horaReceita timestamp,
statusReceita varchar(50),
codigoConsulta numeric,
foreign key (codigoConsulta) references tb_consulta(codigoConsulta));

CREATE SEQUENCE codigoReceita_seq;

-- 2 - Insira registros em todas as tabelas

insert into tb_paciente (codigoPaciente,
nome,
email,
idade,
sexo,
telefone)
values
(codigoPaciente_seq.nextval, 'Rodrigo', 'rodrigo.sanchesdias@gmail.com', 22, 'M', '11968558128');

insert into tb_medico(
codigoMedico,
nomeMedico,
CRM,
emailMedico,
telefoneMedico)
values
(codigoMedico_seq.nextval,
'Jose',
20543,
'jose@medicos.com.br',
'11999999999');

insert into tb_consulta (
codigoConsulta,
dataConsulta,
obsConsulta,
horaConsulta,
statusConsulta,
codigoPaciente,
codigoMedico)
values(
codigoConsulta_seq.nextval,
date '2021-01-01', 
'ok',
timestamp '2021-01-01 17:55:01',
'Ok',
1,
1);

insert into
tb_receita (
codigoReceita,
dataReceita,
obsReceita,
horaReceita,
statusReceita,
codigoConsulta)
values
(codigoReceita_seq.nextval, date '2021-01-01', 'Receita ok', timestamp '2021-01-01 21:22:23', 'Ok', 2);

-- Vendo se os registros entraram certo: 

select *
from tb_medico;

select *
from tb_consulta;

select *
from tb_paciente;

select *
from tb_receita;

-- 3 - Faça uma consulta usando JOIN, trazendo os dados das consultas com os dados dos clientes e dos medicos
select *
from tb_consulta c
join tb_paciente p
on p.codigoPaciente = c.codigoPaciente
join tb_medico m
on m.codigoMedico = c.codigoMedico

-- 4 - Faça uma consultarcom nome e telefone dos Pacientes e dos Medicos usando UNION
select p.nome, p.telefone
from tb_paciente p
union
select m.nomeMedico, m.telefoneMedico
from tb_medico m

-- 5 - Agrupe os dados e traga a informação do total de consultas por medicos 
select codigoMedico, count(codigoMedico) as quantidadeConsulta
from tb_consulta
group by codigoMedico
