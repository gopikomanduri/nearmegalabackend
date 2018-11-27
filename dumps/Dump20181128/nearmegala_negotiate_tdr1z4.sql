CREATE DATABASE  IF NOT EXISTS `nearmegala` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `nearmegala`;
-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: nearmegala
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `negotiate_tdr1z4`
--

DROP TABLE IF EXISTS `negotiate_tdr1z4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1z4` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1z4`
--

LOCK TABLES `negotiate_tdr1z4` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1z4` DISABLE KEYS */;
INSERT INTO `negotiate_tdr1z4` VALUES (1,5,'tdr1z4',1,5523),(2,6,'tdr1z4',1,8000),(3,7,'tdr1z4',1,8566),(4,8,'tdr1z4',1,6000),(5,9,'tdr1z4',1,9000),(6,10,'tdr1z4',1,85556),(7,11,'tdr1z4',1,800),(8,12,'tdr1z4',1,800),(9,13,'tdr1z4',0,0),(10,14,'tdr1z4',1,800),(11,15,'tdr1z4',1,8000),(12,16,'tdr1z4',1,6000),(13,17,'tdr1z4',1,5888),(14,18,'tdr1z4',1,8000),(15,19,'tdr1z4',1,6000),(16,20,'tdr1z4',1,6000),(17,21,'tdr1z4',1,8050),(18,22,'tdr1z4',1,8000),(19,23,'tdr1z4',0,0),(20,24,'tdr1z4',1,800),(21,25,'tdr1z4',1,80),(22,26,'tdr1z4',0,0),(23,27,'tdr1z4',1,2525),(24,28,'tdr1z4',1,200000);
/*!40000 ALTER TABLE `negotiate_tdr1z4` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:40
