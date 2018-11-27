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
-- Table structure for table `ad_tdr26y`
--

DROP TABLE IF EXISTS `ad_tdr26y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr26y` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr26y`
--

LOCK TABLES `ad_tdr26y` WRITE;
/*!40000 ALTER TABLE `ad_tdr26y` DISABLE KEYS */;
INSERT INTO `ad_tdr26y` VALUES (1,'merchant_0',1,31,8,2018,31,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535698844/merchant_0/qqhkztsnfvrt8ztiqqko.jpg','hosur ','12:30:47 2018-08-31','gopi','shop name'),(2,'merchant_0',1,31,8,2018,31,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535701379/merchant_0/fdrplzqrntcbh5agzkko.jpg','gjii','13:13:02 2018-08-31','gopi','shop name'),(3,'merchant_0',1,31,8,2018,31,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535702640/merchant_0/otivamfozrcem5hgbcky.jpg','gh','13:34:03 2018-08-31','venu','shop name'),(4,'merchant_0',1,31,8,2018,31,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535721794/merchant_0/wmo70xt6ehlv7vyprgv6.jpg','','18:53:17 2018-08-31','test','shop name');
/*!40000 ALTER TABLE `ad_tdr26y` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:35
