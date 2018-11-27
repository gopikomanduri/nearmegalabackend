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
-- Table structure for table `ad_tdr1z4`
--

DROP TABLE IF EXISTS `ad_tdr1z4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1z4` (
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1z4`
--

LOCK TABLES `ad_tdr1z4` WRITE;
/*!40000 ALTER TABLE `ad_tdr1z4` DISABLE KEYS */;
INSERT INTO `ad_tdr1z4` VALUES (1,'merchant_40',1,21,7,2018,21,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534840511/merchant_40/ofhggtzlweyuo19txg6p.jpg','ghhh','08:35:14 2018-08-21','46566','shop name'),(2,'merchant_42',1,21,7,2018,21,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534859878/merchant_42/ekcpxgcszes5oic2jwat.jpg','','13:58:00 2018-08-21','','shop name'),(3,'merchant_42',1,2018,8,23,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534880664/merchant_42/aj0vckukw6lq8wkwuipc.jpg','valid test','01:14:26 2018-08-22','56748','shop name'),(4,'merchant_42',1,22,7,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534881378/merchant_42/xgewtlxizodbhpaog3lr.jpg','offer desc','01:26:20 2018-08-22','myoffe','shop name'),(5,'merchant_79',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538984312/merchant_79/e8uie4n9yrgdlhoktr1c.jpg','','13:08:34 2018-10-08','','shop name'),(6,'merchant_79',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538985230/merchant_79/zbtu7en9kzvrbq9fztpy.jpg','','13:23:52 2018-10-08','','shop name'),(7,'merchant_79',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538985375/merchant_79/fsetnflcuttwkeffauwn.jpg','','13:26:16 2018-10-08','','shop name'),(8,'merchant_80',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538998005/merchant_80/czlnt99xzfaceq7imc11.jpg','','16:56:46 2018-10-08','','shop name'),(9,'merchant_80',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539016752/merchant_80/d3chd3m0otbqcvm9ex0x.jpg','','22:09:13 2018-10-08','','shop name'),(10,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539025439/merchant_80/jqom3lpoqwlfbkssohwa.jpg','','00:34:01 2018-10-09','','shop name'),(11,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539026984/merchant_80/ubxavzrrh3kyxzaev10y.jpg','','00:59:45 2018-10-09','','shop name'),(12,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539060069/merchant_80/dqljj7sqfu6ggxqz4gcg.jpg','','10:11:11 2018-10-09','','shop name'),(13,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539060150/merchant_80/zcpbg1o2qa6r37mnc8c1.jpg','','10:12:32 2018-10-09','','shop name'),(14,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539070904/merchant_80/r6pzhzhzoxijow4quv66.jpg','','13:11:47 2018-10-09','','shop name'),(15,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539073067/merchant_80/uvuo5pfuyqsurzl4obca.jpg','','13:47:49 2018-10-09','','shop name'),(16,'merchant_80',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539129182/merchant_80/gjtldskqsbupuji1u7f3.jpg','','05:23:04 2018-10-10','','shop name'),(17,'merchant_82',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539161681/merchant_82/seyap6cxlej1rjj18mhf.jpg','','14:24:43 2018-10-10','','shop name'),(18,'merchant_82',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539167281/merchant_82/ba2zzufapdjcnux964p6.jpg','','15:58:03 2018-10-10','','shop name'),(19,'merchant_82',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539169904/merchant_82/za3h42wseiux6ca93ko6.jpg','','16:41:46 2018-10-10','','shop name'),(20,'merchant_82',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539170574/merchant_82/r4qrczuym1prwpwqjz9z.jpg','','16:52:56 2018-10-10','','shop name'),(21,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539239443/merchant_82/qtmgukgjvwmobvethabs.jpg','','12:00:45 2018-10-11','\n','shop name'),(22,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539239501/merchant_82/xiglgxaq5vkutdytgelv.jpg','','12:01:42 2018-10-11','','shop name'),(23,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539239749/merchant_82/to5owy0b8c0vm2z04kyb.jpg','','12:05:51 2018-10-11','','shop name'),(24,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539272122/merchant_82/gandbyzx8b4grpvsgxmh.jpg','','21:05:23 2018-10-11','','shop name'),(25,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539272151/merchant_82/bgnrg6htcn7jzzbc7rh5.jpg','','21:05:52 2018-10-11','','shop name'),(26,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539272164/merchant_82/dah9przsenf1wa4wn4ac.jpg','','21:06:06 2018-10-11','','shop name'),(27,'merchant_82',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539315119/merchant_82/ma7mhnrm4xobdmuvwc3y.jpg','','09:02:01 2018-10-12','','shop name'),(28,'merchant_82',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539315370/merchant_82/b3zmrplfwvqvemyvjxie.jpg','','09:06:11 2018-10-12','','shop name');
/*!40000 ALTER TABLE `ad_tdr1z4` ENABLE KEYS */;
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
