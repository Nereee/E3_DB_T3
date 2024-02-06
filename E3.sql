DROP DATABASE E3;
CREATE DATABASE E3 COLLATE = utf8_general_ci;
USE E3;

CREATE TABLE zinema (
    id_zinema smallint auto_increment,
    email varchar(50),
    helbidea varchar(50),
    zinema_izena varchar(20),
    areto_zbk smallint,
    ordutegia varchar(20),
    telefonoa int,
    primary key (id_zinema)
);

CREATE TABLE aretoa (
    id_aretoa smallint auto_increment,
    id_zinema smallint,
    primary key (id_aretoa)
);

CREATE TABLE filma (
    id_filma smallint auto_increment,
    film_izena varchar(50),
    generoa enum('Drama', 'Komedia', 'Zi-Fi', 'Beldurra') not null,
    prezioa double,
    iraupena varchar(20),
    primary key (id_filma)
);

CREATE TABLE saioa (
    id_saioa smallint auto_increment,
    saioaren_eguna date,
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
