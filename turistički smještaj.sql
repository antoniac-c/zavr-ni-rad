drop database if exists tur;
create database tur;
use tur;

create table iznajmljivac(
sifra int not null primary key auto_increment,
ime varchar (50)not null,
prezime varchar (50) not null,
email varchar (50)
);

create table apartman (
sifra int not null primary key auto_increment,
naziv varchar (50)not null,
mjesto varchar (50),
cijena decimal (18,2) not null,
kategorizacija varchar (50),
iznajmljivac int not null
);

create table gost (
sifra int not null primary key auto_increment ,
ime varchar (50) not null,
prezime varchar (50) not null,
oib varchar (11),
datumdolaska datetime not null,
datumodlaska datetime not null
);

create table apartman_gost (
gost int not null,
apartman int not null
);

alter table apartman add foreign key (iznajmljivac) references iznajmljivac (sifra);
alter table apartman_gost add foreign key (gost) references gost (sifra);
alter table apartman_gost add foreign key (apartman) references apartman (sifra);
