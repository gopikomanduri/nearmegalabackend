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
-- Table structure for table `negotiationsresponse_ts5ejh`
--

DROP TABLE IF EXISTS `negotiationsresponse_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiationsresponse_ts5ejh` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse_ts5ejh`
--

LOCK TABLES `negotiationsresponse_ts5ejh` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse_ts5ejh` DISABLE KEYS */;
INSERT INTO `negotiationsresponse_ts5ejh` VALUES (1,2,'+918200785387','','',300,500,25,'dumy',50,'ggg',1,'2018-10-11 00:22:40',2),(2,2,'+918200785387','','',300,500,25,'dumy',20,'ggg',1,'2018-10-11 00:24:51',2),(3,2,'+918200785387','','',7000,8000,50,'from: 11-9-2018, to: 27-9-2018',0,'50',3,'2018-10-11 00:26:59',2),(4,2,'+918200785387','merchant_81','ts5ejh',300,500,25,'dumy',0,'ggg',1,'2018-10-11 00:30:39',2),(5,3,'+918200785387','merchant_83','ts5ejh',3000,5000,15,'dumy',2000,'abcd',1,'2018-10-11 23:14:13',3),(6,4,'+918200785387','merchant_83','ts5ejh',50000,100000,35,'dumy',500,'fhhf',1,'2018-10-11 23:14:37',3),(7,3,'+918200785387','merchant_83','ts5ejh',3000,5000,15,'dumy',900,'abcd',1,'2018-10-13 11:44:23',3),(8,7,'+918200785387','merchant_83','ts5ejh',650,1250,12,'dumy',400,'hellllllllo',1,'2018-10-13 11:53:36',5);
/*!40000 ALTER TABLE `negotiationsresponse_ts5ejh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:37
