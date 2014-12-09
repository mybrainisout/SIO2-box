-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: repertoire
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE IF NOT EXISTS repertoire;
USE repertoire;
--
-- Table structure for table `adresses`
--

DROP TABLE IF EXISTS `adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adresses` (
  `adr_id` int(11) NOT NULL AUTO_INCREMENT,
  `adr_ligne1` varchar(250) NOT NULL,
  `adr_ligne2` varchar(250) NOT NULL,
  `adr_ligne3` varchar(250) NOT NULL,
  `adr_idcpville` int(11) NOT NULL,
  PRIMARY KEY (`adr_id`),
  KEY `FK_ADR_CPVILLE` (`adr_idcpville`),
  CONSTRAINT `FK_ADR_CPVILLE` FOREIGN KEY (`adr_idcpville`) REFERENCES `codepostaux` (`cp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresses`
--

LOCK TABLES `adresses` WRITE;
/*!40000 ALTER TABLE `adresses` DISABLE KEYS */;
INSERT INTO `adresses` VALUES (1,'10 Allée des sapins','','',3),(2,'26 Allée des lauriers','','',4),(3,'152 Avenue Jean-Jaurès','','',2);
/*!40000 ALTER TABLE `adresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codepostaux`
--

DROP TABLE IF EXISTS `codepostaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codepostaux` (
  `cp_id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_code` varchar(5) NOT NULL,
  `cp_ville` varchar(100) NOT NULL,
  PRIMARY KEY (`cp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codepostaux`
--

LOCK TABLES `codepostaux` WRITE;
/*!40000 ALTER TABLE `codepostaux` DISABLE KEYS */;
/*!40000 ALTER TABLE `codepostaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communiquer`
--

DROP TABLE IF EXISTS `communiquer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communiquer` (
  `comm_id` int(11) NOT NULL AUTO_INCREMENT,
  `comm_idpersonne` int(11) NOT NULL,
  `comm_idmcomm` int(11) NOT NULL,
  `comm_valeur` varchar(250) NOT NULL,
  PRIMARY KEY (`comm_id`),
  KEY `FK_COMM_PERSONNE` (`comm_idpersonne`),
  KEY `FK_COMM_MCOMM` (`comm_idmcomm`),
  CONSTRAINT `FK_COMM_MCOMM` FOREIGN KEY (`comm_idmcomm`) REFERENCES `moyenscomm` (`mcomm_id`),
  CONSTRAINT `FK_COMM_PERSONNE` FOREIGN KEY (`comm_idpersonne`) REFERENCES `personnes` (`pers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communiquer`
--

LOCK TABLES `communiquer` WRITE;
/*!40000 ALTER TABLE `communiquer` DISABLE KEYS */;
INSERT INTO `communiquer` VALUES (1,2,3,'daniel@avalone-fr.com'),(2,1,3,'michel@avalone-fr.com'),(3,1,3,'michel@devatom.net'),(4,1,5,'0603457118'),(5,1,4,'0556125971');
/*!40000 ALTER TABLE `communiquer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moyenscomm`
--

DROP TABLE IF EXISTS `moyenscomm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moyenscomm` (
  `mcomm_id` int(11) NOT NULL AUTO_INCREMENT,
  `mcomm_libelle` varchar(250) NOT NULL,
  PRIMARY KEY (`mcomm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moyenscomm`
--

LOCK TABLES `moyenscomm` WRITE;
/*!40000 ALTER TABLE `moyenscomm` DISABLE KEYS */;
INSERT INTO `moyenscomm` VALUES (1,'Fax'),(2,'Pager'),(3,'Email'),(4,'Téléphone'),(5,'Portable');
/*!40000 ALTER TABLE `moyenscomm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnes`
--

DROP TABLE IF EXISTS `personnes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnes` (
  `pers_id` int(11) NOT NULL AUTO_INCREMENT,
  `pers_nom` varchar(100) NOT NULL,
  `pers_prenom` varchar(100) NOT NULL,
  PRIMARY KEY (`pers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnes`
--

LOCK TABLES `personnes` WRITE;
/*!40000 ALTER TABLE `personnes` DISABLE KEYS */;
INSERT INTO `personnes` VALUES (1,'GILLET','Michel'),(2,'PORRO','Daniel'),(3,'BERNADET','Bastien'),(4,'BERTIN','Alexandre'),(5,'CLEMENCEAU','Franck'),(6,'CRASBERCU','Damien'),(7,'EL ACHIRI','Benatia'),(8,'FORT','Pierre-Alexandre'),(9,'GAUTHIER-LAFAYE','Victor'),(10,'LEBARBIER','Guillaume'),(11,'MAHE','Gwenaël'),(12,'PAIRAULT','Marie'),(13,'PAUCANT','Nicolas'),(14,'WILGENBUS','Robin'),(15,'XU','Peter');
/*!40000 ALTER TABLE `personnes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posseder`
--

DROP TABLE IF EXISTS `posseder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posseder` (
  `poss_idposs` int(11) NOT NULL AUTO_INCREMENT,
  `poss_idpersonne` int(11) NOT NULL,
  `poss_idadresse` int(11) NOT NULL,
  `poss_idtypeadresse` int(11) NOT NULL,
  PRIMARY KEY (`poss_idposs`),
  KEY `FK_POSS_PERS` (`poss_idpersonne`),
  KEY `FK_POSS_TYPA` (`poss_idtypeadresse`),
  KEY `FK_POSS_ADR` (`poss_idadresse`),
  CONSTRAINT `FK_POSS_ADR` FOREIGN KEY (`poss_idadresse`) REFERENCES `adresses` (`adr_id`),
  CONSTRAINT `FK_POSS_PERS` FOREIGN KEY (`poss_idpersonne`) REFERENCES `personnes` (`pers_id`),
  CONSTRAINT `FK_POSS_TYPA` FOREIGN KEY (`poss_idtypeadresse`) REFERENCES `typeadresse` (`typa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posseder`
--

LOCK TABLES `posseder` WRITE;
/*!40000 ALTER TABLE `posseder` DISABLE KEYS */;
INSERT INTO `posseder` VALUES (1,2,2,3),(2,1,2,3),(3,1,1,1),(4,1,3,2);
/*!40000 ALTER TABLE `posseder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeadresse`
--

DROP TABLE IF EXISTS `typeadresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeadresse` (
  `typa_id` int(11) NOT NULL AUTO_INCREMENT,
  `typa_libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`typa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeadresse`
--

LOCK TABLES `typeadresse` WRITE;
/*!40000 ALTER TABLE `typeadresse` DISABLE KEYS */;
INSERT INTO `typeadresse` VALUES (1,'Facturation'),(2,'Livraison'),(3,'Professionnelle'),(4,'Personnelle');
/*!40000 ALTER TABLE `typeadresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'repertoire'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-10 10:33:45
