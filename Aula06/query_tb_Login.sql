create table tb_Login_02(
	Cod_Usuario int primary key identity,
	Usuario nvarchar(20) not null,
	Senha nvarchar(20) not null,
	Email nvarchar(30) not null,
	Nome nvarchar(50) not null,
	Departamento nvarchar(13) not null
)

/* Departamentos:
	Administra��o
	Financeiro
	Ger�ncia
	TI
	RH
*/

insert into tb_Login_02
values('Israel','123','israel@gmail.com','Israel Marques','TI')

insert into tb_Login_02
values('Patr�cia','999','pati@gmail.com','Patr�cia Caja�','Financeiro')

insert into tb_Login_02
values('Raphinha','000','amortio@gmail.com','Raphinha Caja�','Administra��o')

select * from tb_Login_02
