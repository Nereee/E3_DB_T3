DROP DATABASE E3;
CREATE DATABASE E3 COLLATE = utf8_general_ci;

USE E3;

CREATE TABLE zinema (
    id_zinema smallint auto_increment,
    email varchar(50),
    helbidea varchar(50),
    probintzia varchar (50),
    herria varchar (50),
    zinema_izena varchar(20),
    areto_zbk smallint,
    ordutegia varchar(20),
    telefonoa int,
    primary key (id_zinema)
);
select *
from zinema;

Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, areto_zbk, ordutegia, telefonoa) values ('elorrietazinema@gmail.com', 'Lehendakari Aguirre Kalea 170', 'Bizkaia', 'Bilbo', 'Elorrieta Zinema', 3, '17:00-23:00', 688610622);
Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, areto_zbk, ordutegia, telefonoa) values ('yelmomegapark@gmail.com', 'Megapark Etorbidea', 'Bizkaia', 'Barakaldo', 'Yelmo Cines Megapark', 3, '17:00-23:00', 654412710);
Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, areto_zbk, ordutegia, telefonoa) values ('maxcinesa@gmail.com', 'C/Kareaga', 'Bizkaia', 'Barakaldo', 'Cinesa Max Center', 3, '16:00-23:00', 669420107);
Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, areto_zbk, ordutegia, telefonoa) values ('arteayelmo@gmail.com', 'Peruri auzoa 33', 'Bizkaia', 'Leioa', 'Yelmo Cines Artea', 3, '16:00-23:00', 677716665);

CREATE TABLE aretoa (
    id_aretoa smallint,
    id_zinema smallint,
    primary key (id_aretoa)
);
/*
select *
from aretoa;
Insert into ARETOA values (); */

CREATE TABLE filma (
    id_filma smallint auto_increment,
    film_izena varchar(50),
    generoa enum('Drama', 'Komedia', 'Zi-Fi', 'Beldurra') not null,
    iraupena smallint,
    primary key (id_filma)
);
select *
from filma;
Insert into FILMA (film_izena, generoa, iraupena) values ('Handia', 'Drama', 116);
Insert into FILMA (film_izena, generoa, iraupena) values ('La lista de Schindler', 'Drama', 197);
Insert into FILMA (film_izena, generoa, iraupena) values ('Cadena Perpetua', 'Drama', 142);
Insert into FILMA (film_izena, generoa,  iraupena) values ('Million Dollar Baby', 'Drama', 133);

Insert into FILMA (film_izena, generoa, iraupena) values ('2001: Odisea en el espacio', 'Zi-Fi', 142);
Insert into FILMA (film_izena, generoa, iraupena) values ('La novia de Frankenstein', 'Zi-Fi', 75);
Insert into FILMA (film_izena, generoa, iraupena) values ('El Planeta de los Simios', 'Zi-Fi', 115);
Insert into FILMA (film_izena, generoa, iraupena) values ('Alien, el octavo pasajero', 'Zi-Fi', 117);

Insert into FILMA (film_izena, generoa, iraupena) values ('Scary Movie', 'Komedia', 90);
Insert into FILMA (film_izena, generoa, iraupena) values ('El gran Lebowski', 'Komedia', 115);
Insert into FILMA (film_izena, generoa, iraupena) values ('La vida de Brian', 'Komedia', 94);
Insert into FILMA (film_izena, generoa, iraupena) values ('Aterriza como puedas', 'Komedia', 88);

Insert into FILMA (film_izena, generoa, iraupena) values ('Psicosis', 'Beldurra', 109);
Insert into FILMA (film_izena, generoa, iraupena) values ('El resplandor', 'Beldurra', 146);
Insert into FILMA (film_izena, generoa, iraupena) values ('Dracula', 'Beldurra', 155);
Insert into FILMA (film_izena, generoa, iraupena) values ('Cisne negro', 'Beldurra', 110);

CREATE TABLE saioa (
    id_saioa smallint auto_increment,
    saioaren_eguna date,
    ordutegia varchar(20),
    id_aretoa smallint,
    id_filma smallint,
    id_zinema smallint,
    primary key (id_saioa)
);
select *
from saioa;
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 2, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 3, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 4, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 2, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 3, 1, 1);


Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 1, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 1, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 1, 4);


CREATE TABLE erosketa (
    id_erosketa smallint auto_increment,
    deskontua varchar(10),
    erosketa_eguna date,
    kantitatea smallint,
    factura double,
    NAN varchar(9),
    primary key (id_erosketa)
);

CREATE TABLE bezeroa (
    NAN varchar(9),
    bezero_izena varchar(20),
    abizena varchar(20),
    sexua enum('Emakumea', 'Gizona') not null,
    primary key (NAN)
);

CREATE TABLE sarrera (
    id_sarrera smallint auto_increment,
    id_erosketa smallint,
    id_saioa smallint,
    primary key (id_sarrera, id_erosketa)
);

-- ALTER TABLE (Foreign Key)

ALTER TABLE ARETOA
ADD 
FOREIGN KEY (id_zinema) REFERENCES ZINEMA(Id_zinema);

ALTER TABLE SAIOA
ADD 
FOREIGN KEY (id_filma) REFERENCES FILMA(Id_filma),
ADD 
FOREIGN KEY (id_aretoa) REFERENCES ARETOA(id_aretoa),
ADD 
FOREIGN KEY (id_zinema) REFERENCES ZINEMA(Id_zinema);

ALTER TABLE SARRERA
ADD 
FOREIGN KEY (id_erosketa) REFERENCES EROSKETA(id_erosketa),
ADD 
FOREIGN KEY (id_saioa) REFERENCES SAIOA(id_saioa);

ALTER TABLE EROSKETA
ADD 
FOREIGN KEY (NAN) REFERENCES BEZEROA(NAN);

-- ALTER TABLE (Konfigurazioak)
