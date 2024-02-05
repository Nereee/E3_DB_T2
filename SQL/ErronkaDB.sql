drop database db_zinema;

create database if not exists db_zinema
collate utf8mb4_spanish2_ci;
use db_zinema;

create table zinema (
Idzinema int auto_increment primary key,
Izena varchar(50) not null,
helbidea varchar(50) not null,
kontaktua varchar(50) not null,
deskribapena varchar(500)
);

/*HACER UN TIKET POR CADA SITIO DONDE COMPRES ENTRADA*/

create table filma(
Idfilma int auto_increment primary key,
Izenburua varchar(30) not null,
Sinopsia varchar (500),
Iraupena int not null,
generoa varchar(20) not null,
prezioa double,
zuzendari varchar(20)
);

create table bezeroa(
NAN varchar(20) primary key,
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
deskontua int,
preziotot double not null,
NAN varchar(20),
foreign key (NAN) references bezeroa (NAN) on delete cascade on update cascade
);

create table aretoa (
izena varchar (40) not null,
idaretoa int,
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


/* Taulen ordena, script onetan zuzena. Beste fichero bat datubasea esportatzeko-. Foreign key constraitekin sortu "izen tecnicoa aplikatzeko, fk erlazio orretan, on update eta on delete erabaki, kasakada ere adibidez. Formularioa erantzun"*/