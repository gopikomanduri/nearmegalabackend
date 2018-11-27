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
-- Table structure for table `ad_tdr1zj`
--

DROP TABLE IF EXISTS `ad_tdr1zj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1zj` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1zj`
--

LOCK TABLES `ad_tdr1zj` WRITE;
/*!40000 ALTER TABLE `ad_tdr1zj` DISABLE KEYS */;
INSERT INTO `ad_tdr1zj` VALUES (1,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534936752/merchant_52/nab8c13mkqn14cscqwf3.jpg','only 30','16:49:14 2018-08-22','cc','shop name'),(2,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534937540/merchant_52/yarmuysekrgpv6rjdyf9.jpg','svnk','17:02:23 2018-08-22','fggg','shop name'),(3,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534937937/merchant_52/og7spzctrjpxci0f0eia.jpg','bkkx','17:08:59 2018-08-22','vh','shop name'),(4,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534940211/merchant_52/isebbjh7fti38qxfaice.jpg','desc','17:46:54 2018-08-22','fnn','shop name'),(5,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534943251/merchant_52/li5fywml4wmigbvuppze.jpg','red cycle','18:37:33 2018-08-22','code','shop name'),(6,'merchant_52',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535184578/merchant_52/dhmtxwduvqruxhgp07wq.jpg','gold scheme in muthoot','13:39:40 2018-08-25','goldnn','shop name');
/*!40000 ALTER TABLE `ad_tdr1zj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:39
