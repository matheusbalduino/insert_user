create database insertuser;
use insertuser;

create table users(
	id					int					auto_increment primary key,
    nome				varchar(100)		not null,
	sexo				char(1)				not null,
    dataNiver			varchar(20)			not null,
    carteira			varchar(50)			not null,
    fixo				varchar(20)			not null,
    celular				varchar(20)			not null,
	email 				varchar(150)		not null,
    endereco			varchar(400)		not null
);

select * from users;