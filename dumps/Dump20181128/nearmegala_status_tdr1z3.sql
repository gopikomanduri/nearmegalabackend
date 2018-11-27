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
-- Table structure for table `status_tdr1z3`
--

DROP TABLE IF EXISTS `status_tdr1z3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_tdr1z3` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `idnotification` int(11) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int(11) NOT NULL DEFAULT '1',
  `bringcharges` int(11) NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int(11) NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int(11) NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int(11) NOT NULL,
  `flat` int(11) NOT NULL,
  `ispercentage` int(11) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_tdr1z3`
--

LOCK TABLES `status_tdr1z3` WRITE;
/*!40000 ALTER TABLE `status_tdr1z3` DISABLE KEYS */;
INSERT INTO `status_tdr1z3` VALUES (1,15,'2018-09-21','2018-09-26','8179442558',1,0,'+918179442558',10,'tdr1z3',NULL,0,'2018-10-01','pants',25,0,0),(2,15,'2018-09-25','2018-09-26','+918179442',1,0,'+918179442558',10,'tdr1z3',NULL,0,'2018-09-26','i can give for 10%',25,0,0);
/*!40000 ALTER TABLE `status_tdr1z3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:36
