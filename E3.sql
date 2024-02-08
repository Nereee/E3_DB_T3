DROP DATABASE E3;
CREATE DATABASE E3 COLLATE = utf8_general_ci;

USE E3;

CREATE TABLE zinema (
    id_zinema smallint auto_increment,
    email varchar(50),
    helbidea varchar(50),
    probintzia varchar (50),
    herria varchar (50),
    zinema_izena varchar(50),
    areto_zbk smallint,
    ordutegia varchar(20),
    telefonoa int,
    primary key (id_zinema)
);

CREATE TABLE aretoa (
    id_aretoa smallint,
    id_zinema smallint,
    areto_izena varchar(50),
    primary key (id_aretoa, id_zinema)
);

CREATE TABLE filma (
    id_filma smallint auto_increment,
    film_izena varchar(50),
    generoa enum('Drama', 'Komedia', 'Zi-Fi', 'Beldurra') not null,
    iraupena smallint,
    primary key (id_filma)
);

CREATE TABLE saioa (
    id_saioa smallint auto_increment,
    saioaren_eguna enum ('Larunbata','Igandea') not null,
    ordutegia varchar(20),
    id_aretoa smallint,
    id_filma smallint,
    id_zinema smallint,
    primary key (id_saioa)
);

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
    bezero_izena varchar(50),
    abizena varchar(50),
    sexua enum('E', 'G') not null,
    erabiltzailea varchar (20),
    pasahitza smallint,
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

-- ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*ZINEMAK*

Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, areto_zbk, ordutegia, telefonoa) values ('elorrietazinema@gmail.com', 'Lehendakari Aguirre Kalea 170', 'Bizkaia', 'Bilbo', 'Elorrieta Zinema', 4, '17:00-23:00', 688610622);
Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, areto_zbk, ordutegia, telefonoa) values ('yelmomegapark@gmail.com', 'Megapark Etorbidea', 'Bizkaia', 'Barakaldo', 'Yelmo Cines Megapark', 4, '17:00-23:00', 654412710);
Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, areto_zbk, ordutegia, telefonoa) values ('maxcinesa@gmail.com', 'C/Kareaga', 'Bizkaia', 'Barakaldo', 'Cinesa Max Center', 4, '17:00-23:00', 669420107);
Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, areto_zbk, ordutegia, telefonoa) values ('arteayelmo@gmail.com', 'Peruri auzoa 33', 'Bizkaia', 'Leioa', 'Yelmo Cines Artea', 4, '17:00-23:00', 677716665);

-- ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*ARETOAK*

# 1 ZINEMA

Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('1','1','Gorria');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('2','1','Urdina');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('3','1','Berdea');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('4','1','Zuria');

# 2 ZINEMA

Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('1','2','Gorria');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('2','2','Urdina');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('3','2','Berdea');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('4','2','Zuria');

# 3 ZINEMA

Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('1','3','Gorria');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('2','3','Urdina');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('3','3','Berdea');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('4','3','Zuria');

# 4 ZINEMA

Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('1','4','Gorria');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('2','4','Urdina');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('3','4','Berdea');
Insert into ARETOA (id_aretoa,id_zinema,areto_izena) values ('4','4','Zuria');

-- FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*FILMAK*

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

-- SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*SAIOAK*

/*1 ZINEMA*/

# LARUNBATA
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 4, 13, 1);

# IGANDEA

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 4, 13, 1);

/*2 ZINEMA*/

# LARUNBATA

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 4, 14, 2);

# IGANDEA

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 4, 14, 2);

/*3 ZINEMA*/

# LARUNBATA

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 4, 15, 3);

# IGANDEA

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 4, 15, 3);

/*4 ZINEMA*/

# LARUNBATA

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '17:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '19:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '21:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Larunbata', '23:00', 4, 16, 4);

# IGANDEA

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '17:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '19:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '21:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('Igandea', '23:00', 4, 16, 4);

-- BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*

Insert into BEZEROA (NAN, bezero_izena, abizena, sexua, erabiltzailea, pasahitza) values ('79582125L', 'Aitor', 'Mentxaka', 'G','amen','12345');
Insert into BEZEROA (NAN, bezero_izena, abizena, sexua, erabiltzailea, pasahitza) values ('79745123K', 'Unai', 'Souto', 'G','usou','12345');
Insert into BEZEROA (NAN, bezero_izena, abizena, sexua, erabiltzailea, pasahitza) values ('79963569P', 'Iker', 'Cortes', 'G','icor','12345');
Insert into BEZEROA (NAN, bezero_izena, abizena, sexua, erabiltzailea, pasahitza) values ('79145122T', 'Irune', 'Casquet', 'E','icas','12345');


-- ZERRENDAK SORTZEKO KONTSULTAK 

#2. Film gehien ikusi dituzten erabiltzaileak 

SELECT bezero_izena, 
       abizena, 
       COUNT(sarrera.id_sarrera) AS Ikusitako_Filmak
FROM sarrera
JOIN bezeroa ON sarrera.NAN = bezeroa.NAN
GROUP BY bezero_izena, abizena
ORDER BY Ikusitako_Filmak DESC;


#3. Bezero gutxien dituen zinema, bezero-kopurua adierazita.

SELECT zinema.zinema_izena, 
       COUNT(bezeroa.NAN) AS Bezero_Kopurua
FROM zinema
LEFT JOIN saioa ON zinema.id_zinema = saioa.id_zinema
LEFT JOIN sarrera ON saioa.id_saioa = sarrera.id_saioa
LEFT JOIN bezeroa ON sarrera.NAN = bezeroa.NAN
GROUP BY zinema_izena
ORDER BY Bezero_Kopurua ASC;


