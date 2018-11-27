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
-- Table structure for table `negotiationsresponse_tdr1z4`
--

DROP TABLE IF EXISTS `negotiationsresponse_tdr1z4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiationsresponse_tdr1z4` (
  `idnegotiationsresponse` int(11) NOT NULL AUTO_INCREMENT,
  `idnegotiations` int(11) NOT NULL,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int(11) DEFAULT NULL,
  `maxamount` int(11) DEFAULT NULL,
  `Discount` int(11) NOT NULL DEFAULT '0',
  `ShoppingallowedDates` varchar(512) DEFAULT NULL,
  `advanceNeed` int(11) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `negotiationsresponse` int(1) NOT NULL DEFAULT '0',
  `respondedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notificationid` int(11) NOT NULL,
  PRIMARY KEY (`idnegotiationsresponse`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse_tdr1z4`
--

LOCK TABLES `negotiationsresponse_tdr1z4` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse_tdr1z4` DISABLE KEYS */;
INSERT INTO `negotiationsresponse_tdr1z4` VALUES (1,13,'+918179442558','merchant_82','tdr1z4',80,8000,58,'dumy',8000,'ghh',1,'2018-10-11 01:21:50',17),(2,13,'+918179442558','merchant_82','tdr1z4',80,8000,58,'dumy',1000,'ghh',1,'2018-10-11 12:02:17',17),(3,16,'+918179442558','merchant_82','tdr1z4',90,800,10,'dumy',8000,'gh',1,'2018-10-11 21:08:21',25),(4,16,'+918179442558','merchant_82','tdr1z4',90,800,10,'dumy',8000,'gh',1,'2018-10-11 21:11:41',25),(5,15,'+918179442558','merchant_82','tdr1z4',80,5888,58,'dumy',50000,'vh',1,'2018-10-12 09:08:18',22);
/*!40000 ALTER TABLE `negotiationsresponse_tdr1z4` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:43
