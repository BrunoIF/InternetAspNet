create table tb_usuario_02(
	Id_usuario int primary key identity(1,1),
	Nome_usuario nvarchar(50) not null,
	email_usuario nvarchar(50) not null,
	tel_usuario nvarchar(20) not null
)

sp_help tb_usuario_02

insert into tb_usuario_02 values
('Israel','icajaijr@gmail.com','123456789')

insert into tb_usuario_02 values
('Jos�','josegames@gmail.com','987654321')

insert into tb_usuario_02 values
('Carlos','carlosseg@gmail.com','456321789')

insert into tb_usuario_02 values
('M�bio','mabiofing@gmail.com','321654789')

select * from tb_usuario_02