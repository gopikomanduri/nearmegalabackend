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
-- Table structure for table `ad_ts5ejh`
--

DROP TABLE IF EXISTS `ad_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_ts5ejh` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_ts5ejh`
--

LOCK TABLES `ad_ts5ejh` WRITE;
/*!40000 ALTER TABLE `ad_ts5ejh` DISABLE KEYS */;
INSERT INTO `ad_ts5ejh` VALUES (1,'merchant_70',1,12,10,2018,1,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538417490/merchant_70/jt44nwhczejy9adrkckp.jpg','test','23:41:34 2018-10-01','qwert','shop name'),(2,'merchant_81',1,27,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539026837/merchant_81/ultdavbrybvvvprjymln.jpg','test','00:57:20 2018-10-09','556643','shop name'),(3,'merchant_83',1,27,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539279524/merchant_83/njwurx8lxcqe7uviw8m8.jpg','nice offer','23:08:46 2018-10-11','sdfghj','shop name'),(4,'merchant_83',1,27,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539411548/merchant_83/earsinmp6fvdmkf5amkh.jpg','geg','11:49:13 2018-10-13','999888','shop name'),(5,'merchant_83',1,14,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539411629/merchant_83/yz6uhwdyblalwcnszk2g.jpg','offer dec','11:50:32 2018-10-13','123456','shop name'),(6,'merchant_83',1,27,10,2018,16,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539630980/merchant_83/j5vybe9kifzgcm1py4up.jpg','hello','00:46:24 2018-10-16','qwerty','shop name'),(7,'merchant_83',1,20,10,2018,16,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539632832/merchant_83/j5bgjcigxnhldggzsodj.jpg','hello2','01:17:17 2018-10-16','asdfgh','shop name'),(8,'merchant_83',1,27,10,2018,27,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540663264/merchant_83/hlsr7w74iwgqtrebvsms.jpg','test','23:31:06 2018-10-27','987654','shop name'),(9,'merchant_83',1,31,10,2018,27,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540663861/merchant_83/mxnimvzesby4nzzakluu.jpg','jchch','23:41:03 2018-10-27','355353','shop name'),(10,'merchant_83',1,27,10,2018,27,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540663979/merchant_83/mrzv6a4eshazi259c9l2.jpg','hchc','23:43:02 2018-10-27','445556','shop name'),(11,'merchant_83',1,27,10,2018,27,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540664285/merchant_83/er404dwodgpxaxptwpye.jpg','bcbcv','23:48:07 2018-10-27','chhchc','shop name'),(12,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540833746/merchant_147/mbedkgdznze4iufsdhst.jpg','','22:52:28 2018-10-29','','shop name');
/*!40000 ALTER TABLE `ad_ts5ejh` ENABLE KEYS */;
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
