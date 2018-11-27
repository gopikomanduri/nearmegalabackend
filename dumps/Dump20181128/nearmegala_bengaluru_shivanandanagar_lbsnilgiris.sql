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
-- Table structure for table `bengaluru_shivanandanagar_lbsnilgiris`
--

DROP TABLE IF EXISTS `bengaluru_shivanandanagar_lbsnilgiris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bengaluru_shivanandanagar_lbsnilgiris` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bengaluru_shivanandanagar_lbsnilgiris`
--

LOCK TABLES `bengaluru_shivanandanagar_lbsnilgiris` WRITE;
/*!40000 ALTER TABLE `bengaluru_shivanandanagar_lbsnilgiris` DISABLE KEYS */;
INSERT INTO `bengaluru_shivanandanagar_lbsnilgiris` VALUES (1,'bengaluru_shivanandanagar_lbsnilgiris_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532232769/pygm8uz9xmbsoekpcbh9.jpg','gopi','karnataka','India','2018-07-22T04:13:02.284916800','1','hno 105 block b','+918179442558');
/*!40000 ALTER TABLE `bengaluru_shivanandanagar_lbsnilgiris` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:41
