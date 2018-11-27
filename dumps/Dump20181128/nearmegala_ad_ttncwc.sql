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
-- Table structure for table `ad_ttncwc`
--

DROP TABLE IF EXISTS `ad_ttncwc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_ttncwc` (
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
-- Dumping data for table `ad_ttncwc`
--

LOCK TABLES `ad_ttncwc` WRITE;
/*!40000 ALTER TABLE `ad_ttncwc` DISABLE KEYS */;
INSERT INTO `ad_ttncwc` VALUES (1,'merchant_58',1,23,9,2018,23,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535008495/merchant_58/lmx42gomo0gmmdadudja.jpg','3d wallpapers of your choice only at RS  95/sq ft with installation','12:44:59 2018-08-23','3dwal','shop name'),(2,'merchant_58',1,31,8,2018,23,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535016112/merchant_58/aqbyjo2w7guotqytc7wr.jpg','wallpaper at RS 90/sq ft','14:51:55 2018-08-23','3d2wl','shop name'),(3,'merchant_58',1,24,8,2018,23,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535021632/merchant_58/wglvtrl9ovmnwvct8vu9.png','Cole Haan shoes only in range of RS 3000 to 10000.','16:23:54 2018-08-23','coleh','shop name'),(4,'merchant_69',1,4,9,2018,4,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536053260/merchant_69/des8r9iysfzbizbvo2rg.jpg','bdgh hfhja jshhha jfjd hdh','14:57:54 2018-09-04','bsgg','shop name');
/*!40000 ALTER TABLE `ad_ttncwc` ENABLE KEYS */;
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
