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
-- Table structure for table `negotations_ts5ejh`
--

DROP TABLE IF EXISTS `negotations_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotations_ts5ejh` (
  `idnegotations` int(11) NOT NULL AUTO_INCREMENT,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int(4) NOT NULL,
  `maxamount` int(11) NOT NULL,
  `DiscountExpectation` int(3) NOT NULL,
  `ShoppingProbableDates` varchar(45) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `delivered` int(1) NOT NULL DEFAULT '0',
  `adnotification` int(11) NOT NULL,
  PRIMARY KEY (`idnegotations`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations_ts5ejh`
--

LOCK TABLES `negotations_ts5ejh` WRITE;
/*!40000 ALTER TABLE `negotations_ts5ejh` DISABLE KEYS */;
INSERT INTO `negotations_ts5ejh` VALUES (1,'+918200785387','merchant_70','ts5ejh',33,321,65,'from: 8-9-2018, to: 8-9-2018','ffgg',0,1),(2,'+918200785387','merchant_81','ts5ejh',300,500,25,'from: 9-9-2018, to: 18-9-2018','ggg',0,2),(3,'+918200785387','merchant_83','ts5ejh',3000,5000,15,'from: 11-9-2018, to: 12-9-2018','abcd',0,3),(4,'+918200785387','merchant_83','ts5ejh',50000,100000,35,'from: 12-9-2018, to: 27-9-2018','fhhf',0,3),(5,'+918200785387','merchant_81','ts5ejh',3000,5000,15,'from: 13-9-2018, to: 27-9-2018','hello',0,2),(6,'+918200785387','merchant_81','ts5ejh',16000,24000,60,'from: 3-9-2018, to: 6-9-2018','hrlli',0,2),(7,'+918200785387','merchant_83','ts5ejh',650,1250,12,'from: 13-9-2018, to: 27-9-2018','hellllllllo',0,5),(8,'+918179442558','merchant_81','ts5ejh',1,5000,25,'from: 18-9-2018, to: 20-9-2018','fuu',0,2);
/*!40000 ALTER TABLE `negotations_ts5ejh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:38
