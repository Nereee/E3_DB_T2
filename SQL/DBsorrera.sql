drop database db_e3zinema;

create database if not exists db_e3zinema
collate utf8mb4_spanish2_ci;
use db_zinema;

create table ZINEMA(
Idzinema int auto_increment primary key,
Izena varchar(50) not null,
Kalea varchar(50) not null,
Zenbakia varchar(5),
PostaKodea varchar(5) not null,
Herria varchar(50) not null,
Kontaktua varchar(12),
Deskribapena varchar(10000)
);

/*HACER UN TIKET POR CADA SITIO DONDE COMPRES ENTRADA*/

create table FILMA(
Idfilma int auto_increment primary key,
Izenburua varchar(30) not null,
Iraupena int not null,
Generoa varchar(20) not null,
Prezioa double,
Zuzendaria varchar(20),
Sinopsia varchar (100000)
);

create table BEZEROA(
NAN varchar(9) primary key,
Erabiltzailea varchar(10) unique not null, 
Izena varchar(20) not null,
Abizena varchar(30) not null,
J_data date not null,
Mail varchar(50) not null unique,
Generoa enum("E","G","N", "O"),
Pasahitza varchar (50) not null
);

create table EROSKETA(
IdErosketa int auto_increment primary key,
Jatorria int not null,
Deskontua float,
PrezioTot double not null,
NAN varchar(9),
foreign key (NAN) references BEZEROA (NAN) on delete cascade on update cascade
);

create table ARETOA(
IdAretoa int,
Izena varchar (40) not null,
IdZinema int,
primary key (IdZinema, idAretoa),
foreign key (IdZinema) references ZINEMA (IdZinema)  on delete cascade on update cascade
);


create table SAIOA(
IdSaioa int auto_increment primary key,
Ordu_Data varchar(5) not null,
S_Data date not null,
IdFilma int,
IdAretoa int,
IdZinema int,
foreign key (IdZinema, IdAretoa) references ARETOA (IdZinema, IdAretoa) on delete cascade on update cascade,
foreign key (IdFilma) references FILMA (IdFilma) on delete cascade on update cascade
);


create table SARRERA (
IdSarrera int auto_increment primary key,
IdSaioa int,
Prezioa double not null,
IdErosketa int,
foreign key (IdSaioa) references SAIOA (IdSaioa) on delete cascade on update cascade,
foreign key (IdErosketa) references EROSKETA (IdErosketa) on delete cascade on update cascade
); 


