create table tbRevisao_02(
Cod_Aluno int primary key identity(1,1),
Nome_Aluno varchar(50) not null,
Email_Aluno varchar(50) not null
)

insert into tbRevisao_02 
values('Eu', 'eu@eu.com.br')

insert into tbRevisao_02 
values('Tu', 'Tu@tu.com.br')

insert into tbRevisao_02 
values('Ele', 'ele@ele.com.br')

select * from tbRevisao_02