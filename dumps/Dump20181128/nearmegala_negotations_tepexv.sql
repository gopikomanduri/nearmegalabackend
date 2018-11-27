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
-- Table structure for table `negotations_tepexv`
--

DROP TABLE IF EXISTS `negotations_tepexv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotations_tepexv` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations_tepexv`
--

LOCK TABLES `negotations_tepexv` WRITE;
/*!40000 ALTER TABLE `negotations_tepexv` DISABLE KEYS */;
INSERT INTO `negotations_tepexv` VALUES (1,'+918125802142','merchant_90','tepexv',5,9,2,'from: 16-9-2018, to: 27-9-2018','hjjn',0,1),(2,'+919966525464','merchant_97','tepexv',2,5,22,'from: 19-9-2018, to: 19-9-2018','sbjz',0,3);
/*!40000 ALTER TABLE `negotations_tepexv` ENABLE KEYS */;
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
