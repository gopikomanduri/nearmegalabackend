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
-- Table structure for table `ad_tepexv`
--

DROP TABLE IF EXISTS `ad_tepexv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tepexv` (
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tepexv`
--

LOCK TABLES `ad_tepexv` WRITE;
/*!40000 ALTER TABLE `ad_tepexv` DISABLE KEYS */;
INSERT INTO `ad_tepexv` VALUES (1,'merchant_90',1,18,10,2018,15,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539627786/merchant_90/eqkpljgyrvniyxlkhr3v.jpg','free ride','23:53:07 2018-10-15','disc','shop name'),(2,'merchant_90',1,12,10,2018,16,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539630144/merchant_90/op0ry7yscoakcw72xhr2.jpg','chyg','00:32:25 2018-10-16','rrfxc','shop name'),(3,'merchant_97',1,21,10,2018,21,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540144020/merchant_97/at4kvmndkg6jis0kicql.jpg','cc','23:17:06 2018-10-21','pp','shop name'),(4,'merchant_125',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540703002/merchant_125/to0d9le5namdutoucngn.jpg','sgsh z','10:33:23 2018-10-28','nsnsb','shop name'),(5,'merchant_143',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540751114/merchant_143/pzlpieivsorfvq8crqtd.jpg','ghhh','23:55:15 2018-10-28','off','shop name'),(6,'merchant_149',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540828800/merchant_149/f0aipwotmeberamaa0ip.jpg','zbzn','21:30:02 2018-10-29','jsjsbx','shop name'),(7,'merchant_149',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540828833/merchant_149/h1uuewub1bucmhbpkpnm.jpg','ffg','21:30:35 2018-10-29','sed','shop name'),(8,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540836182/merchant_147/h7kldg6fvxzbycerztpy.jpg','','23:33:05 2018-10-29','','shop name'),(9,'merchant_149',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540836819/merchant_149/ht0omio77eavucwtxyow.jpg','','23:43:41 2018-10-29','','shop name'),(10,'merchant_255',1,6,11,2018,6,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541526328/merchant_255/utqzfbcrc0cbnhtpb4sf.jpg','hjif','23:15:29 2018-11-06','bjhs','shop name'),(11,'merchant_289',1,13,11,2018,13,11,2018,'http://res.cloudinary.com/locator/image/upload/v1542132684/merchant_289/tvnogipzyerbsy4ygzlx.jpg','xkxk','23:41:25 2018-11-13','jzix','shop name');
/*!40000 ALTER TABLE `ad_tepexv` ENABLE KEYS */;
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
