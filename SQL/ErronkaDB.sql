drop database db_zinema;

create database if not exists db_zinema
collate utf8mb4_spanish2_ci;
use db_zinema;

create table zinema (
Idzinema int auto_increment primary key,
Izena varchar(50) not null,
Kalea varchar(50) not null,
Zenbakia varchar(5),
PostaKodea varchar(5) not null,
Herria varchar(50) not null,
kontaktua varchar(12),
deskribapena varchar(10000)
);

/*HACER UN TIKET POR CADA SITIO DONDE COMPRES ENTRADA*/

create table filma(
Idfilma int auto_increment primary key,
Izenburua varchar(30) not null,
Iraupena int not null,
generoa varchar(20) not null,
prezioa double,
zuzendaria varchar(20),
Sinopsia varchar (100000)
);

create table bezeroa(
NAN varchar(9) primary key,
Izena varchar(20) not null,
abizena varchar(30) not null,
J_data date not null,
mail varchar(50) not null unique,
generoa enum("E","G","N", "O"),
pasahitza varchar (50) not null
);

create table erosketa(
iderosketa int auto_increment primary key,
jatorria int not null,
deskontua float,
preziotot double not null,
NAN varchar(9),
foreign key (NAN) references bezeroa (NAN) on delete cascade on update cascade
);

create table aretoa (
idaretoa int,
izena varchar (40) not null,
zinema int,
primary key (zinema, idaretoa),
foreign key (zinema) references zinema (idzinema)  on delete cascade on update cascade
);


create table saioa(
idsaioa int auto_increment primary key,
S_data date not null,
idfilma int,
idaretoa int,
idzinema int,
foreign key (idzinema, idaretoa) references aretoa (zinema, idaretoa) on delete cascade on update cascade,
foreign key (idfilma) references filma (idfilma) on delete cascade on update cascade
);


create table sarrera (
idsarrera int auto_increment primary key,
idsaioa int,
prezioa double not null,
iderosketa int,
foreign key (idsaioa) references saioa (idsaioa) on delete cascade on update cascade,
foreign key (iderosketa) references erosketa (iderosketa) on delete cascade on update cascade
);
Insert into Bezeroa value("12345678G", "Juan", "Fernandez", 14-2-1999, "juanfernandez@gmail.com","G","1234")
