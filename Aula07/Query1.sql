create table tb_produtos_02(
	Cod_Produto int primary key identity,
	Nome_Produto varchar(100) not null,
	Descricao_Produto varchar(200) not null,
	Preco_Produto decimal(10,2) not null,
	Quantidade_Produto int not null,
	Categoria_Produto varchar(11) not null,
	Foto_Produto varchar(max) not null
);

insert into tb_produtos_02 values(
'Celular Samsung',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
1200,
20,
'Celular',
'~/images/celular1.jpg'
)

insert into tb_produtos_02 values(
'Celular Motorola',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
2200,
18,
'Celular',
'~/images/celular2.jpg'
)

insert into tb_produtos_02 values(
'Celular Apple',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
6600,
320,
'Celular',
'~/images/celular3.jpg'
)

insert into tb_produtos_02 values(
'Horizon Zero Dawn',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
320,
100,
'Game',
'~/images/game1.jpg'
)

insert into tb_produtos_02 values(
'Street Fighter V',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
299,
20,
'Game',
'~/images/game2.jpg'
)

insert into tb_produtos_02 values(
'The Last of Us',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
259,
89,
'Game',
'~/images/game3.png'
)

insert into tb_produtos_02 values(
'Notebook HP',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
3200,
110,
'Notebook',
'~/images/note1.jpg'
)

insert into tb_produtos_02 values(
'Notebook Lenovo',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
3899,
79,
'Notebook',
'~/images/note2.jpg'
)

insert into tb_produtos_02 values(
'Notebook Acer',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
2599,
19,
'Notebook',
'~/images/note3.jpg'
)

insert into tb_produtos_02 values(
'Panela com botões',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
150,
20,
'Utensílio',
'~/images/panela1.jpg'
)

insert into tb_produtos_02 values(
'Panela de pressão',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
179,
28,
'Utensílio',
'~/images/panela2.jpg'
)

insert into tb_produtos_02 values(
'Jogo de panelas',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
139,
25,
'Utensílio',
'~/images/panela3.jpg'
)

insert into tb_produtos_02 values(
'TV Smart de 50 polegadas Samsung',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
2899,
25,
'Eletrônicos',
'~/images/tv1.jpg'
)

insert into tb_produtos_02 values(
'TV Flat Screen',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
4789,
67,
'Eletrônicos',
'~/images/tv2.jpg'
)

insert into tb_produtos_02 values(
'TV 4k Samsung',
'Lorem Ipsum dolor sit amet sustent fernand invocatio LuLu',
5679,
38,
'Eletrônicos',
'~/images/tv3.jpg'
)

select * from tb_produtos_02