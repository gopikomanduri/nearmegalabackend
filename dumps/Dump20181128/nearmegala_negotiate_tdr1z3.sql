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
-- Table structure for table `negotiate_tdr1z3`
--

DROP TABLE IF EXISTS `negotiate_tdr1z3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1z3` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1z3`
--

LOCK TABLES `negotiate_tdr1z3` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1z3` DISABLE KEYS */;
INSERT INTO `negotiate_tdr1z3` VALUES (1,279,'tdr1z3',1,50),(2,280,'tdr1z3',0,0),(3,281,'tdr1z3',1,8000),(4,282,'tdr1z3',0,0),(5,283,'tdr1z3',1,80000),(6,284,'tdr1z3',1,5000),(7,285,'tdr1z3',0,0),(8,286,'tdr1z3',0,0),(9,287,'tdr1z3',1,6000),(10,288,'tdr1z3',1,100),(11,289,'tdr1z3',0,0),(12,290,'tdr1z3',0,0),(13,291,'tdr1z3',0,0),(14,292,'tdr1z3',0,0),(15,293,'tdr1z3',0,0),(16,294,'tdr1z3',0,0),(17,295,'tdr1z3',0,0),(18,296,'tdr1z3',0,0),(19,297,'tdr1z3',0,0),(20,298,'tdr1z3',0,0),(21,299,'tdr1z3',1,8000),(22,300,'tdr1z3',1,8000),(23,301,'tdr1z3',1,5000),(24,302,'tdr1z3',0,0),(25,303,'tdr1z3',0,0),(26,304,'tdr1z3',0,0),(27,305,'tdr1z3',0,0),(28,306,'tdr1z3',0,0),(29,307,'tdr1z3',0,0),(30,308,'tdr1z3',0,0),(31,309,'tdr1z3',0,0),(32,310,'tdr1z3',0,0),(33,311,'tdr1z3',1,5555),(34,312,'tdr1z3',1,8000),(35,313,'tdr1z3',1,6565),(36,314,'tdr1z3',1,2555),(37,315,'tdr1z3',1,600),(38,316,'tdr1z3',1,80000),(39,317,'tdr1z3',1,5000),(40,318,'tdr1z3',1,5000),(41,319,'tdr1z3',1,5000),(42,320,'tdr1z3',1,8000),(43,321,'tdr1z3',0,0),(44,322,'tdr1z3',1,8000),(45,323,'tdr1z3',1,2896),(46,324,'tdr1z3',1,8000),(47,325,'tdr1z3',0,0),(48,326,'tdr1z3',1,8522),(49,327,'tdr1z3',1,1000),(50,328,'tdr1z3',1,8000),(51,329,'tdr1z3',0,0),(52,330,'tdr1z3',1,80000),(53,331,'tdr1z3',0,0),(54,332,'tdr1z3',0,0),(55,333,'tdr1z3',0,0),(56,334,'tdr1z3',0,0),(57,335,'tdr1z3',0,0),(58,336,'tdr1z3',0,0),(59,337,'tdr1z3',0,0),(60,338,'tdr1z3',0,0),(61,339,'tdr1z3',0,0),(62,340,'tdr1z3',0,0),(63,341,'tdr1z3',0,0),(64,342,'tdr1z3',0,0),(65,343,'tdr1z3',0,0),(66,344,'tdr1z3',0,0),(67,345,'tdr1z3',0,0),(68,346,'tdr1z3',0,0),(69,347,'tdr1z3',0,0),(70,348,'tdr1z3',0,0),(71,349,'tdr1z3',0,0),(72,351,'tdr1z3',0,0),(73,352,'tdr1z3',0,0),(74,353,'tdr1z3',0,0),(75,354,'tdr1z3',0,0),(76,355,'tdr1z3',0,0),(77,356,'tdr1z3',0,0),(78,357,'tdr1z3',0,0),(79,358,'tdr1z3',0,0),(80,359,'tdr1z3',0,0),(81,360,'tdr1z3',0,0),(82,361,'tdr1z3',0,0);
/*!40000 ALTER TABLE `negotiate_tdr1z3` ENABLE KEYS */;
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
