CREATE DATABASE  IF NOT EXISTS `e3_talde3` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `e3_talde3`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: e3_talde3
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aretoa`
--

DROP TABLE IF EXISTS `aretoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aretoa` (
  `id_aretoa` smallint(6) NOT NULL AUTO_INCREMENT,
  `id_zinema` smallint(6) NOT NULL,
  `areto_izena` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_aretoa`,`id_zinema`),
  KEY `id_zinema` (`id_zinema`),
  CONSTRAINT `aretoa_ibfk_1` FOREIGN KEY (`id_zinema`) REFERENCES `zinema` (`id_zinema`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aretoa`
--

LOCK TABLES `aretoa` WRITE;
/*!40000 ALTER TABLE `aretoa` DISABLE KEYS */;
INSERT INTO `aretoa` VALUES (1,1,'Gorria'),(1,2,'Gorria'),(1,3,'Gorria'),(1,4,'Gorria'),(2,1,'Urdina'),(2,2,'Urdina'),(2,3,'Urdina'),(2,4,'Urdina'),(3,1,'Berdea'),(3,2,'Berdea'),(3,3,'Berdea'),(3,4,'Berdea'),(4,1,'Zuria'),(4,2,'Zuria'),(4,3,'Zuria'),(4,4,'Zuria');
/*!40000 ALTER TABLE `aretoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bezeroa`
--

DROP TABLE IF EXISTS `bezeroa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bezeroa` (
  `NAN` varchar(9) NOT NULL,
  `bezero_izena` varchar(50) DEFAULT NULL,
  `abizena` varchar(50) DEFAULT NULL,
  `generoa` enum('E','G','B') NOT NULL,
  `erabiltzailea` varchar(20) DEFAULT NULL,
  `pasahitza` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`NAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bezeroa`
--

LOCK TABLES `bezeroa` WRITE;
/*!40000 ALTER TABLE `bezeroa` DISABLE KEYS */;
INSERT INTO `bezeroa` VALUES ('79145122T','Irune','Casquet','E','icas',12345),('79582125L','Aitor','Mentxaka','G','amen',12345),('79745123K','Unai','Souto','G','usou',12345),('79963569P','Iker','Cortes','G','icor',12345);
/*!40000 ALTER TABLE `bezeroa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erosketa`
--

DROP TABLE IF EXISTS `erosketa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erosketa` (
  `id_erosketa` smallint(6) NOT NULL AUTO_INCREMENT,
  `deskontua` smallint(6) DEFAULT NULL,
  `erosketa_eguna` date DEFAULT NULL,
  `kantitatea` smallint(6) DEFAULT NULL,
  `faktura` double DEFAULT NULL,
  `NAN` varchar(9) DEFAULT NULL,
  `non` enum('Online','Fisiko') NOT NULL,
  PRIMARY KEY (`id_erosketa`),
  KEY `NAN` (`NAN`),
  CONSTRAINT `erosketa_ibfk_1` FOREIGN KEY (`NAN`) REFERENCES `bezeroa` (`NAN`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erosketa`
--

LOCK TABLES `erosketa` WRITE;
/*!40000 ALTER TABLE `erosketa` DISABLE KEYS */;
INSERT INTO `erosketa` VALUES (1,1,'2023-02-09',5,5.5,'79963569P','Online'),(2,2,'2023-02-10',2,5.5,'79582125L','Online');
/*!40000 ALTER TABLE `erosketa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filma`
--

DROP TABLE IF EXISTS `filma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filma` (
  `id_filma` smallint(6) NOT NULL AUTO_INCREMENT,
  `film_izena` varchar(50) DEFAULT NULL,
  `generoa` enum('Drama','Komedia','Zi-Fi','Beldurra') NOT NULL,
  `iraupena` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_filma`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filma`
--

LOCK TABLES `filma` WRITE;
/*!40000 ALTER TABLE `filma` DISABLE KEYS */;
INSERT INTO `filma` VALUES (1,'Handia','Drama',116),(2,'La lista de Schindler','Drama',197),(3,'Cadena Perpetua','Drama',142),(4,'Million Dollar Baby','Drama',133),(5,'2001: Odisea en el espacio','Zi-Fi',142),(6,'La novia de Frankenstein','Zi-Fi',75),(7,'El Planeta de los Simios','Zi-Fi',115),(8,'Alien, el octavo pasajero','Zi-Fi',117),(9,'Scary Movie','Komedia',90),(10,'El gran Lebowski','Komedia',115),(11,'La vida de Brian','Komedia',94),(12,'Aterriza como puedas','Komedia',88),(13,'Psicosis','Beldurra',109),(14,'El resplandor','Beldurra',146),(15,'Dracula','Beldurra',155),(16,'Cisne negro','Beldurra',110);
/*!40000 ALTER TABLE `filma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saioa`
--

DROP TABLE IF EXISTS `saioa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saioa` (
  `id_saioa` smallint(6) NOT NULL AUTO_INCREMENT,
  `saioaren_eguna` date DEFAULT NULL,
  `ordutegia` time DEFAULT NULL,
  `id_aretoa` smallint(6) DEFAULT NULL,
  `id_filma` smallint(6) DEFAULT NULL,
  `id_zinema` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_saioa`),
  KEY `id_filma` (`id_filma`),
  KEY `id_aretoa` (`id_aretoa`,`id_zinema`),
  CONSTRAINT `saioa_ibfk_1` FOREIGN KEY (`id_filma`) REFERENCES `filma` (`id_filma`),
  CONSTRAINT `saioa_ibfk_2` FOREIGN KEY (`id_aretoa`, `id_zinema`) REFERENCES `aretoa` (`id_aretoa`, `id_zinema`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saioa`
--

LOCK TABLES `saioa` WRITE;
/*!40000 ALTER TABLE `saioa` DISABLE KEYS */;
INSERT INTO `saioa` VALUES (1,'2024-02-10','17:00:00',1,1,1),(2,'2024-02-10','17:00:00',2,5,1),(3,'2024-02-10','17:00:00',3,9,1),(4,'2024-02-10','17:00:00',4,13,1),(5,'2024-02-10','19:00:00',1,1,1),(6,'2024-02-10','19:00:00',2,5,1),(7,'2024-02-10','19:00:00',3,9,1),(8,'2024-02-10','19:00:00',4,13,1),(9,'2024-02-10','21:00:00',1,1,1),(10,'2024-02-10','21:00:00',2,5,1),(11,'2024-02-10','21:00:00',3,9,1),(12,'2024-02-10','21:00:00',4,13,1),(13,'2024-02-10','23:00:00',1,1,1),(14,'2024-02-10','23:00:00',2,5,1),(15,'2024-02-10','23:00:00',3,9,1),(16,'2024-02-10','23:00:00',4,13,1),(17,'2024-02-11','17:00:00',1,1,1),(18,'2024-02-11','17:00:00',2,5,1),(19,'2024-02-11','17:00:00',3,9,1),(20,'2024-02-11','17:00:00',4,13,1),(21,'2024-02-11','19:00:00',1,1,1),(22,'2024-02-11','19:00:00',2,5,1),(23,'2024-02-11','19:00:00',3,9,1),(24,'2024-02-11','19:00:00',4,13,1),(25,'2024-02-11','21:00:00',1,1,1),(26,'2024-02-11','21:00:00',2,5,1),(27,'2024-02-11','21:00:00',3,9,1),(28,'2024-02-11','21:00:00',4,13,1),(29,'2024-02-11','23:00:00',1,1,1),(30,'2024-02-11','23:00:00',2,5,1),(31,'2024-02-11','23:00:00',3,9,1),(32,'2024-02-11','23:00:00',4,13,1),(33,'2024-02-10','17:00:00',1,2,2),(34,'2024-02-10','17:00:00',2,6,2),(35,'2024-02-10','17:00:00',3,10,2),(36,'2024-02-10','17:00:00',4,14,2),(37,'2024-02-10','19:00:00',1,2,2),(38,'2024-02-10','19:00:00',2,6,2),(39,'2024-02-10','19:00:00',3,10,2),(40,'2024-02-10','19:00:00',4,14,2),(41,'2024-02-10','21:00:00',1,2,2),(42,'2024-02-10','21:00:00',2,6,2),(43,'2024-02-10','21:00:00',3,10,2),(44,'2024-02-10','21:00:00',4,14,2),(45,'2024-02-10','23:00:00',1,2,2),(46,'2024-02-10','23:00:00',2,6,2),(47,'2024-02-10','23:00:00',3,10,2),(48,'2024-02-10','23:00:00',4,14,2),(49,'2024-02-11','17:00:00',1,2,2),(50,'2024-02-11','17:00:00',2,6,2),(51,'2024-02-11','17:00:00',3,10,2),(52,'2024-02-11','17:00:00',4,14,2),(53,'2024-02-11','19:00:00',1,2,2),(54,'2024-02-11','19:00:00',2,6,2),(55,'2024-02-11','19:00:00',3,10,2),(56,'2024-02-11','19:00:00',4,14,2),(57,'2024-02-11','21:00:00',1,2,2),(58,'2024-02-11','21:00:00',2,6,2),(59,'2024-02-11','21:00:00',3,10,2),(60,'2024-02-11','21:00:00',4,14,2),(61,'2024-02-11','23:00:00',1,2,2),(62,'2024-02-11','23:00:00',2,6,2),(63,'2024-02-11','23:00:00',3,10,2),(64,'2024-02-11','23:00:00',4,14,2),(65,'2024-02-10','17:00:00',1,3,3),(66,'2024-02-10','17:00:00',2,7,3),(67,'2024-02-10','17:00:00',3,11,3),(68,'2024-02-10','17:00:00',4,15,3),(69,'2024-02-10','19:00:00',1,3,3),(70,'2024-02-10','19:00:00',2,7,3),(71,'2024-02-10','19:00:00',3,11,3),(72,'2024-02-10','19:00:00',4,15,3),(73,'2024-02-10','21:00:00',1,3,3),(74,'2024-02-10','21:00:00',2,7,3),(75,'2024-02-10','21:00:00',3,11,3),(76,'2024-02-10','21:00:00',4,15,3),(77,'2024-02-10','23:00:00',1,3,3),(78,'2024-02-10','23:00:00',2,7,3),(79,'2024-02-10','23:00:00',3,11,3),(80,'2024-02-10','23:00:00',4,15,3),(81,'2024-02-11','17:00:00',1,3,3),(82,'2024-02-11','17:00:00',2,7,3),(83,'2024-02-11','17:00:00',3,11,3),(84,'2024-02-11','17:00:00',4,15,3),(85,'2024-02-11','19:00:00',1,3,3),(86,'2024-02-11','19:00:00',2,7,3),(87,'2024-02-11','19:00:00',3,11,3),(88,'2024-02-11','19:00:00',4,15,3),(89,'2024-02-11','21:00:00',1,3,3),(90,'2024-02-11','21:00:00',2,7,3),(91,'2024-02-11','21:00:00',3,11,3),(92,'2024-02-11','21:00:00',4,15,3),(93,'2024-02-11','23:00:00',1,3,3),(94,'2024-02-11','23:00:00',2,7,3),(95,'2024-02-11','23:00:00',3,11,3),(96,'2024-02-11','23:00:00',4,15,3),(97,'2024-02-10','17:00:00',1,4,4),(98,'2024-02-10','17:00:00',2,8,4),(99,'2024-02-10','17:00:00',3,12,4),(100,'2024-02-10','17:00:00',4,16,4),(101,'2024-02-10','19:00:00',1,4,4),(102,'2024-02-10','19:00:00',2,8,4),(103,'2024-02-10','19:00:00',3,12,4),(104,'2024-02-10','19:00:00',4,16,4),(105,'2024-02-10','21:00:00',1,4,4),(106,'2024-02-10','21:00:00',2,8,4),(107,'2024-02-10','21:00:00',3,12,4),(108,'2024-02-10','21:00:00',4,16,4),(109,'2024-02-10','23:00:00',1,4,4),(110,'2024-02-10','23:00:00',2,8,4),(111,'2024-02-10','23:00:00',3,12,4),(112,'2024-02-10','23:00:00',4,16,4),(113,'2024-02-11','17:00:00',1,4,4),(114,'2024-02-11','17:00:00',2,8,4),(115,'2024-02-11','17:00:00',3,12,4),(116,'2024-02-11','17:00:00',4,16,4),(117,'2024-02-11','19:00:00',1,4,4),(118,'2024-02-11','19:00:00',2,8,4),(119,'2024-02-11','19:00:00',3,12,4),(120,'2024-02-11','19:00:00',4,16,4),(121,'2024-02-11','21:00:00',1,4,4),(122,'2024-02-11','21:00:00',2,8,4),(123,'2024-02-11','21:00:00',3,12,4),(124,'2024-02-11','21:00:00',4,16,4),(125,'2024-02-11','23:00:00',1,4,4),(126,'2024-02-11','23:00:00',2,8,4),(127,'2024-02-11','23:00:00',3,12,4),(128,'2024-02-11','23:00:00',4,16,4);
/*!40000 ALTER TABLE `saioa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sarrera`
--

DROP TABLE IF EXISTS `sarrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sarrera` (
  `id_sarrera` smallint(6) NOT NULL AUTO_INCREMENT,
  `id_erosketa` smallint(6) NOT NULL,
  `id_saioa` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_sarrera`,`id_erosketa`),
  KEY `id_erosketa` (`id_erosketa`),
  KEY `id_saioa` (`id_saioa`),
  CONSTRAINT `sarrera_ibfk_1` FOREIGN KEY (`id_erosketa`) REFERENCES `erosketa` (`id_erosketa`),
  CONSTRAINT `sarrera_ibfk_2` FOREIGN KEY (`id_saioa`) REFERENCES `saioa` (`id_saioa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sarrera`
--

LOCK TABLES `sarrera` WRITE;
/*!40000 ALTER TABLE `sarrera` DISABLE KEYS */;
INSERT INTO `sarrera` VALUES (1,1,1),(2,2,4);
/*!40000 ALTER TABLE `sarrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zinema`
--

DROP TABLE IF EXISTS `zinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zinema` (
  `id_zinema` smallint(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `helbidea` varchar(50) DEFAULT NULL,
  `probintzia` varchar(50) DEFAULT NULL,
  `herria` varchar(50) DEFAULT NULL,
  `zinema_izena` varchar(50) DEFAULT NULL,
  `ordutegia` varchar(20) DEFAULT NULL,
  `telefonoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_zinema`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zinema`
--

LOCK TABLES `zinema` WRITE;
/*!40000 ALTER TABLE `zinema` DISABLE KEYS */;
INSERT INTO `zinema` VALUES (1,'elorrietazinema@gmail.com','Lehendakari Aguirre Kalea 170','Bizkaia','Bilbo','Elorrieta Zinema','17:00-23:00',688610622),(2,'yelmomegapark@gmail.com','Megapark Etorbidea','Bizkaia','Barakaldo','Yelmo Cines Megapark','17:00-23:00',654412710),(3,'maxcinesa@gmail.com','C/Kareaga','Bizkaia','Barakaldo','Cinesa Max Center','17:00-23:00',669420107),(4,'arteayelmo@gmail.com','Peruri auzoa 33','Bizkaia','Leioa','Yelmo Cines Artea','17:00-23:00',677716665);
/*!40000 ALTER TABLE `zinema` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16  8:18:49
