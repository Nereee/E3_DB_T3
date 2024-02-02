CREATE DATABASE E3 COLLATE = utf8_general_ci;
USE E3;

CREATE TABLE zinema (
    id_zinema smallint,
    email varchar(50),
    helbidea varchar(50),
    zinema_izena varchar(20),
    areto_zbk int,
    ordutegia varchar(20),
    telefonoa int,
    primary key (id_zinema)
);

CREATE TABLE aretoa (
    id_aretoa smallint,
    id_zinema smallint,
    primary key (id_aretoa)
);

CREATE TABLE filma (
    id_filma smallint,
    film_izena varchar(50),
    generoa enum('Drama', 'Komedia', 'Zi-Fi', 'Beldurra') not null,
    prezioa double,
    iraupena varchar(20),
    primary key (id_filma)
);

CREATE TABLE saioa (
    id_saioa smallint,
    saioaren_eguna date,
    ordutegia varchar(20),
    id_aretoa smallint,
    id_filma smallint,
    primary key (id_saioa)
);

CREATE TABLE erosketa (
    id_erosketa smallint,
    deskontua varchar(10),
    erosketa_eguna date,
    kantitatea smallint,
    factura double,
    id_bezeroa varchar(9),
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
    id_sarrera smallint,
    id_erosketa smallint,
    id_saioa smallint,
    primary key (id_sarrera)
);

-- ALTER TABLE

ALTER TABLE aretoa
ADD CONSTRAINT fk_zinema
FOREIGN KEY (id_zinema) REFERENCES zinema(id_zinema);

ALTER TABLE saioa
ADD CONSTRAINT fk_aretoa
FOREIGN KEY (id_aretoa) REFERENCES aretoa(id_aretoa);

ALTER TABLE saioa
ADD CONSTRAINT fk_filma
FOREIGN KEY (id_filma) REFERENCES filma(id_filma);

ALTER TABLE sarrera
ADD CONSTRAINT fk_erosketa
FOREIGN KEY (id_erosketa) REFERENCES erosketa(id_erosketa);

ALTER TABLE sarrera
ADD CONSTRAINT fk_saioa
FOREIGN KEY (id_saioa) REFERENCES saioa(id_saioa);

ALTER TABLE erosketa
ADD CONSTRAINT fk_bezeroa
FOREIGN KEY (id_bezeroa) REFERENCES bezeroa(NAN);
