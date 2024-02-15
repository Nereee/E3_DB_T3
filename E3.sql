-- DROP DATABASE E3;
CREATE DATABASE E3 COLLATE = utf8_general_ci;

USE E3;


CREATE TABLE zinema (
    id_zinema smallint auto_increment,
    email varchar(50),
    helbidea varchar(50),
    probintzia varchar (50),
    herria varchar (50),
    zinema_izena varchar(50),
    ordutegia varchar(20),
    telefonoa int,
    primary key (id_zinema)
);



CREATE TABLE aretoa (
    id_aretoa smallint auto_increment,
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
    saioaren_eguna date,
    ordutegia time,
    id_aretoa smallint,
    id_filma smallint,
    id_zinema smallint,
    primary key (id_saioa)
);


CREATE TABLE erosketa (
    id_erosketa smallint auto_increment,
    deskontua smallint,
    erosketa_eguna date,
    kantitatea smallint,
    faktura double,
    NAN varchar(9),
    non enum('Online','Fisiko') not null,
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

Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, ordutegia, telefonoa) values ('elorrietazinema@gmail.com', 'Lehendakari Aguirre Kalea 170', 'Bizkaia', 'Bilbo', 'Elorrieta Zinema', '17:00-23:00', 688610622);
Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, ordutegia, telefonoa) values ('yelmomegapark@gmail.com', 'Megapark Etorbidea', 'Bizkaia', 'Barakaldo', 'Yelmo Cines Megapark', '17:00-23:00', 654412710);
Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, ordutegia, telefonoa) values ('maxcinesa@gmail.com', 'C/Kareaga', 'Bizkaia', 'Barakaldo', 'Cinesa Max Center', '17:00-23:00', 669420107);
Insert into ZINEMA (email, helbidea, probintzia, herria, zinema_izena, ordutegia, telefonoa) values ('arteayelmo@gmail.com', 'Peruri auzoa 33', 'Bizkaia', 'Leioa', 'Yelmo Cines Artea', '17:00-23:00', 677716665);

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
Insert into FILMA (film_izena, generoa, iraupena) values ('Million Dollar Baby', 'Drama', 133);

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

# Larunbata
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 4, 13, 1);

# Igandea

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 4, 13, 1);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 1, 1, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 2, 5, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 3, 9, 1);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 4, 13, 1);

/*2 ZINEMA*/

# Larunbata

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 4, 14, 2);

# Igandea

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 4, 14, 2);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 1, 2, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 2, 6, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 3, 10, 2);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 4, 14, 2);

/*3 ZINEMA*/

# Larunbata

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 4, 15, 3);

# Igandea

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 4, 15, 3);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 1, 3, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 2, 7, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 3, 11, 3);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 4, 15, 3);

/*4 ZINEMA*/

# Larunbata

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '17:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '19:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '21:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-10', '23:00', 4, 16, 4);

# Igandea

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '17:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '19:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '21:00', 4, 16, 4);

Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 1, 4, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 2, 8, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 3, 12, 4);
Insert into SAIOA (saioaren_eguna, ordutegia, id_aretoa, id_filma, id_zinema) values ('2024-02-11', '23:00', 4, 16, 4);

-- BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*BEZEROA*

Insert into BEZEROA (NAN, bezero_izena, abizena, sexua, erabiltzailea, pasahitza) values ('79582125L', 'Aitor', 'Mentxaka', 'G','amen','12345');
Insert into BEZEROA (NAN, bezero_izena, abizena, sexua, erabiltzailea, pasahitza) values ('79745123K', 'Unai', 'Souto', 'G','usou','12345');
Insert into BEZEROA (NAN, bezero_izena, abizena, sexua, erabiltzailea, pasahitza) values ('79963569P', 'Iker', 'Cortes', 'G','icor','12345');
Insert into BEZEROA (NAN, bezero_izena, abizena, sexua, erabiltzailea, pasahitza) values ('79145122T', 'Irune', 'Casquet', 'E','icas','12345');

-- ZERRENDAK SORTZEKO KONTSULTAK


#1. Iaz diru gehien aportatu duten filmen zerrenda osoa dimentsio desberdinak erabiliz aztertzeko

Insert into EROSKETA (deskontua, erosketa_eguna, kantitatea, faktura, NAN) values (1, '2023-02-09', 5, 5.5, '79963569P');
Insert into EROSKETA (deskontua, erosketa_eguna, kantitatea, faktura, NAN) values (2, '2023-02-10', 2, 5.5, '79582125L');

Insert into SARRERA (id_erosketa, id_saioa) values (1, 1);
Insert into SARRERA (id_erosketa, id_saioa) values (2, 4);

SELECT f.film_izena, SUM(e.faktura) AS 'Diru Totala'
FROM filma f inner join saioa s using (id_filma)
inner join sarrera sa using (id_saioa)
            inner join erosketa e using (id_erosketa)
            where e.erosketa_eguna like '2023%'
            group by f.film_izena
            order by SUM(e.faktura) desc;


#2. Film gehien ikusi dituzten erabiltzaileak

SELECT b.bezero_izena, COUNT(e.id_erosketa) as 'Erositako pelikulak'
from bezeroa b left join erosketa e using (NAN)
left join sarrera s using (id_erosketa)
                group by b.bezero_izena
                order by (e.id_erosketa) desc
                limit 5;
           

#3. Bezero gutxien dituen zinema, bezero-kopurua adierazita.

SELECT z.zinema_izena, COUNT(b.NAN) as 'Bezero kopurua'
from bezeroa b inner join erosketa e using (NAN)
inner join sarrera sa using (id_erosketa)
                inner join saioa s using (id_saioa)
                inner join zinema z using (id_zinema)
                group by b.NAN
                order by 'Bezero kopurua' desc;


#4.Zineman areto gehien dituzten zineek proiektatutako filmen batez besteko iraupena.

SELECT z.zinema_izena, AVG(f.iraupena)
from zinema z inner join saioa sa using (id_zinema)
inner join filma f using (id_filma)
            group by z.zinema_izena
            order by AVG(f.iraupena);


#5.Film genero bakoitzeko, estadistikak.

SELECT generoa, film_izena, iraupena
from filma;


#6.Drama generoan gehien ikusten diren pelikulen ordena

SELECT f.film_izena, COUNT(f.id_filma) as 'Ikusitako kopurua'
from filma f inner join saioa s using (id_filma)
inner join sarrera sa using (id_saioa)
            where f.generoa = 'Drama'
            group by f.film_izena
            order by 'Ikusitako kopurua' desc;


#7.Asteburu osoan zehar gehien emititzen den pelikula azkenengo saioan.
select filma.film_izena, count(saioa.id_saioa) as emisio_kopurua
from saioa
join filma on saioa.id_filma = filma.id_filma
where id_saioa = (select MAX(id_saioa)
                  from saioa
                  where ordutegia = '23:00')
group by filma.film_izena
order by emisio_kopurua desc;

-- ARETO ZBK
SELECT zinema_izena, COUNT(id_aretoa) AS areto_zbk
FROM zinema INNER JOIN aretoa ON zinema.id_zinema = aretoa.id_zinema
GROUP BY zinema_izena;