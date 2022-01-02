-- MySQL dump 10.13  Distrib 8.0.24, for Linux (x86_64)
--
-- Host: localhost    Database: nearmegala
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Merchant_categories`
--

DROP TABLE IF EXISTS `Merchant_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Merchant_categories` (
  `MerchantID` varchar(20) NOT NULL,
  `selectedCategories` bigint DEFAULT NULL,
  PRIMARY KEY (`MerchantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Merchant_categories`
--

LOCK TABLES `Merchant_categories` WRITE;
/*!40000 ALTER TABLE `Merchant_categories` DISABLE KEYS */;
INSERT INTO `Merchant_categories` VALUES ('merchant_1',53245),('merchant_110',16911433728),('merchant_111',11111111),('merchant_112',2818572288),('merchant_113',8587818496),('merchant_114',33554432),('merchant_115',7516192768),('merchant_116',17146314752),('merchant_117',11408506880),('merchant_118',117833728),('merchant_119',117833736),('merchant_120',4697620480),('merchant_121',31),('merchant_122',17045651456),('merchant_124',1),('merchant_125',16911433759),('merchant_126',75501653),('merchant_127',11452547072),('merchant_128',11453202432),('merchant_133',2),('merchant_135',6845104215),('merchant_136',85),('merchant_137',7072),('merchant_138',2),('merchant_144',NULL),('merchant_145',124),('merchant_147',15032385539),('merchant_148',16106127391),('merchant_149',501),('merchant_150',1009),('merchant_152',4161),('merchant_153',49),('merchant_154',1),('merchant_155',5),('merchant_156',84),('merchant_157',1024),('merchant_158',128895),('merchant_159',256),('merchant_163',3616669685);
/*!40000 ALTER TABLE `Merchant_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Merchant_slots`
--

DROP TABLE IF EXISTS `Merchant_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Merchant_slots` (
  `EPOCHID` int NOT NULL AUTO_INCREMENT,
  `FromEpoHash` varchar(20) NOT NULL,
  `ToEpoHash` varchar(20) NOT NULL,
  `CURTOKEN` varchar(20) NOT NULL,
  `MAXTOKEN` int NOT NULL,
  PRIMARY KEY (`EPOCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Merchant_slots`
--

LOCK TABLES `Merchant_slots` WRITE;
/*!40000 ALTER TABLE `Merchant_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `Merchant_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_104_Slots`
--

DROP TABLE IF EXISTS `User_104_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_104_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_104_Slots`
--

LOCK TABLES `User_104_Slots` WRITE;
/*!40000 ALTER TABLE `User_104_Slots` DISABLE KEYS */;
INSERT INTO `User_104_Slots` VALUES (1,'merchant_1','1621465500',1);
/*!40000 ALTER TABLE `User_104_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_109_Slots`
--

DROP TABLE IF EXISTS `User_109_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_109_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_109_Slots`
--

LOCK TABLES `User_109_Slots` WRITE;
/*!40000 ALTER TABLE `User_109_Slots` DISABLE KEYS */;
INSERT INTO `User_109_Slots` VALUES (1,'merchant_154','1619040300',2);
/*!40000 ALTER TABLE `User_109_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_112_Slots`
--

DROP TABLE IF EXISTS `User_112_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_112_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_112_Slots`
--

LOCK TABLES `User_112_Slots` WRITE;
/*!40000 ALTER TABLE `User_112_Slots` DISABLE KEYS */;
INSERT INTO `User_112_Slots` VALUES (1,'merchant_157','1619636400',1),(2,'merchant_157','1619712000',1);
/*!40000 ALTER TABLE `User_112_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_75_Slots`
--

DROP TABLE IF EXISTS `User_75_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_75_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_75_Slots`
--

LOCK TABLES `User_75_Slots` WRITE;
/*!40000 ALTER TABLE `User_75_Slots` DISABLE KEYS */;
INSERT INTO `User_75_Slots` VALUES (1,'merchant_1','1609848000',2);
/*!40000 ALTER TABLE `User_75_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_77_Slots`
--

DROP TABLE IF EXISTS `User_77_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_77_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_77_Slots`
--

LOCK TABLES `User_77_Slots` WRITE;
/*!40000 ALTER TABLE `User_77_Slots` DISABLE KEYS */;
INSERT INTO `User_77_Slots` VALUES (1,'merchant_126','1609850220',2),(2,'merchant_126','1609965000',2),(3,'merchant_126','1609929000',2),(4,'merchant_126','1609952400',1),(5,'merchant_126','1609943400',1),(6,'merchant_126','1610008200',2),(7,'merchant_126','1610094600',1);
/*!40000 ALTER TABLE `User_77_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_81_Slots`
--

DROP TABLE IF EXISTS `User_81_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_81_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_81_Slots`
--

LOCK TABLES `User_81_Slots` WRITE;
/*!40000 ALTER TABLE `User_81_Slots` DISABLE KEYS */;
INSERT INTO `User_81_Slots` VALUES (1,'merchant_126','1609965000',2),(2,'merchant_126','1609952400',1),(3,'merchant_126','1609943400',1);
/*!40000 ALTER TABLE `User_81_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_93_Slots`
--

DROP TABLE IF EXISTS `User_93_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_93_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_93_Slots`
--

LOCK TABLES `User_93_Slots` WRITE;
/*!40000 ALTER TABLE `User_93_Slots` DISABLE KEYS */;
INSERT INTO `User_93_Slots` VALUES (1,'merchant_136','1611883800',2),(2,'merchant_136','1612223760',2),(3,'merchant_136','1612221720',0),(4,'merchant_136','1612310760',1);
/*!40000 ALTER TABLE `User_93_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_94_Slots`
--

DROP TABLE IF EXISTS `User_94_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_94_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_94_Slots`
--

LOCK TABLES `User_94_Slots` WRITE;
/*!40000 ALTER TABLE `User_94_Slots` DISABLE KEYS */;
INSERT INTO `User_94_Slots` VALUES (1,'merchant_136','1612223760',1);
/*!40000 ALTER TABLE `User_94_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_97_Slots`
--

DROP TABLE IF EXISTS `User_97_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_97_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_97_Slots`
--

LOCK TABLES `User_97_Slots` WRITE;
/*!40000 ALTER TABLE `User_97_Slots` DISABLE KEYS */;
INSERT INTO `User_97_Slots` VALUES (1,'merchant_150','1612915320',2);
/*!40000 ALTER TABLE `User_97_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr1z`
--

DROP TABLE IF EXISTS `ad_tdr1z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_tdr1z` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1z`
--

LOCK TABLES `ad_tdr1z` WRITE;
/*!40000 ALTER TABLE `ad_tdr1z` DISABLE KEYS */;
INSERT INTO `ad_tdr1z` VALUES (1,'merchant_155',536870912,11,5,2021,10,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620611345/merchant_155/xfrnqavunyoak1umjify.jpg','need help on medical','01:49:06 2021-05-10','medica','shop name','','','',12.9707064,77.6697565),(2,'merchant_159',536870912,16,5,2021,15,5,2021,'http://res.cloudinary.com/locator/image/upload/v1621088415/merchant_159/ygqv5ylqzhixvpzhuteq.jpg','need medicine','14:20:16 2021-05-15','Help','shop name','','','',12.970779,77.6697136),(3,'merchant_155',536870912,15,5,2021,15,5,2021,'http://res.cloudinary.com/locator/image/upload/v1621089221/merchant_155/ljul5buvlfngxp0q5nov.jpg','need medicine','14:33:41 2021-05-15','123446','shop name','','','',12.9707355,77.6696825),(4,'merchant_162',536870912,15,5,2021,15,5,2021,'http://res.cloudinary.com/locator/image/upload/v1621089716/merchant_162/jsc3syfhetl6rzygy0ev.jpg','require fruits','14:41:57 2021-05-15','Help','shop name','','','',12.9707567,77.6697066),(5,'merchant_155',536870912,17,5,2021,16,5,2021,'http://res.cloudinary.com/locator/image/upload/v1621174503/merchant_155/irjsrplnm2a7jinmkctn.jpg','need this medicine','14:15:03 2021-05-16','Help','shop name','','','',12.9707296,77.6697009);
/*!40000 ALTER TABLE `ad_tdr1z` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tegb3`
--

DROP TABLE IF EXISTS `ad_tegb3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_tegb3` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tegb3`
--

LOCK TABLES `ad_tegb3` WRITE;
/*!40000 ALTER TABLE `ad_tegb3` DISABLE KEYS */;
INSERT INTO `ad_tegb3` VALUES (1,'merchant_150',49,8,2,2021,7,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612714626/merchant_150/dlhtbnwesiimwacblqxf.jpg','post to other location ','16:17:07 2021-02-07','postto','shop name','','','',21.1702401,72.83106070000001);
/*!40000 ALTER TABLE `ad_tegb3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tegfv`
--

DROP TABLE IF EXISTS `ad_tegfv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_tegfv` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tegfv`
--

LOCK TABLES `ad_tegfv` WRITE;
/*!40000 ALTER TABLE `ad_tegfv` DISABLE KEYS */;
INSERT INTO `ad_tegfv` VALUES (1,'merchant_136',1,27,1,2021,26,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611681183/merchant_136/jfywsuzvtpsm3remtam9.jpg','26.1.21','17:13:07 2021-01-26','postto','shop name','','','',21.6180391,73.0228173),(2,'merchant_136',1,27,1,2021,26,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611685495/merchant_136/vuukjoblzwhybo0gdp3f.jpg','26.1.21','18:24:58 2021-01-26','posted','shop name','','','',21.6180391,73.0228173);
/*!40000 ALTER TABLE `ad_tegfv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_teggj`
--

DROP TABLE IF EXISTS `ad_teggj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_teggj` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_teggj`
--

LOCK TABLES `ad_teggj` WRITE;
/*!40000 ALTER TABLE `ad_teggj` DISABLE KEYS */;
INSERT INTO `ad_teggj` VALUES (1,'merchant_136',1,28,1,2021,27,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611769484/merchant_136/dm229pszbxeftidaewxp.jpg','post to other location','17:44:47 2021-01-27','locat','shop name','','','',21.626656,72.999783),(2,'merchant_136',1,31,1,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612051971/merchant_136/ptqzn3mwgguy0ezhehdh.jpg','31.1.21','00:12:53 2021-01-31','postto','shop name','','','',21.6256105,73.0011191),(3,'merchant_136',1,2,2,2021,1,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612201080/merchant_136/ewe8majrf2c9k6efa36a.jpg','1.feb.21','17:38:03 2021-02-01','poetto','shop name','','','',21.6264236,73.0151984);
/*!40000 ALTER TABLE `ad_teggj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_teggk`
--

DROP TABLE IF EXISTS `ad_teggk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_teggk` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_teggk`
--

LOCK TABLES `ad_teggk` WRITE;
/*!40000 ALTER TABLE `ad_teggk` DISABLE KEYS */;
INSERT INTO `ad_teggk` VALUES (1,'merchant_136',1,16,1,2021,15,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610736156/merchant_136/qiv2gfabmwfmveowk9vn.jpg','apk  test post to other location','18:42:37 2021-01-15','offer ','shop name','','','',21.708919,72.98697849999999),(2,'merchant_136',64,18,1,2021,17,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610900429/merchant_136/lqsibj093nobhqyyym4y.jpg','post to other location 17.1.21Groceries','16:20:31 2021-01-17','offerc','shop name','','','',21.6986646,72.9866543),(3,'merchant_136',1,19,1,2021,19,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611076155/merchant_136/w1ogr22vd8gna7opxsq8.jpg','post to other location soneri mahal','17:09:17 2021-01-19','soneri','shop name','','','',21.6986646,72.9866543),(4,'merchant_137',32,19,1,2021,19,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611077251/merchant_137/yporcftvxydnigtln0v2.jpg','post other 7313','17:27:36 2021-01-19','soneri','shop name','','','',21.6986646,72.9866543);
/*!40000 ALTER TABLE `ad_teggk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_teggt`
--

DROP TABLE IF EXISTS `ad_teggt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_teggt` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_teggt`
--

LOCK TABLES `ad_teggt` WRITE;
/*!40000 ALTER TABLE `ad_teggt` DISABLE KEYS */;
INSERT INTO `ad_teggt` VALUES (1,'merchant_135',8625586176,10,1,2021,10,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610282608/merchant_135/t9gzsiomgnetolhsbvew.jpg','test','12:43:30 2021-01-10','test','shop name','','','',21.70912,72.99947),(2,'merchant_136',5,12,1,2021,11,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610386339/merchant_136/immnzfu4x0b2qn6gpqwl.jpg','new test 11.1.21','17:32:21 2021-01-11','offerr','shop name','','','',21.71013819,72.99953121),(3,'merchant_136',1,14,1,2021,13,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610571244/merchant_136/qs02cfteem5d4aj4iebn.jpg','post to other location 14.11.29','20:54:06 2021-01-13','offer','shop name','','','',21.7227904,73.0367579),(4,'merchant_136',1,16,1,2021,15,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610735260/merchant_136/wifxdlbfiamw0ie2vfla.jpg','apk test 15.1.2021','18:27:42 2021-01-15','offerr','shop name','','','',21.71013819,72.99953121),(5,'merchant_136',1,15,1,2021,15,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610735306/merchant_136/tod9aszqpvfsq0uuhzhc.jpg','apk test 15.1.21 - 1','18:28:28 2021-01-15','off','shop name','','','',21.71013819,72.99953121),(6,'merchant_136',1,16,1,2021,15,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610735703/merchant_136/kgtg0kbs1zfsjvn07rrw.jpg','apk 16.1.21-2','18:35:06 2021-01-15','offer','shop name','','','',21.7227904,73.0367579),(7,'merchant_136',1,16,1,2021,15,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610736471/merchant_136/whxiz7ar4ifjcclpwucu.jpg','apk test 16.1.21 -3','18:47:52 2021-01-15','offfff','shop name','','','',21.71013819,72.99953121),(8,'merchant_135',2097152,16,1,2021,16,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610807885/merchant_135/wb5fqa1lb3qgdxq7es7y.jpg','ncchgkxgkxgkhgdk','14:38:07 2021-01-16','tttttt','shop name','','','',21.70912,72.99947),(9,'merchant_136',1,18,1,2021,17,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610900088/merchant_136/gtar24tepajjq8t1xxoa.jpg','new check 17.1.21','16:14:50 2021-01-17','offerc','shop name','','','',21.71013819,72.99953121),(10,'merchant_136',16,18,1,2021,17,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610900205/merchant_136/rqah6xquzpgnehbgmgmz.jpg','new apk test 17.1.21 - 1 ICE CREAM Negotiation','16:16:47 2021-01-17','offerc','shop name','','','',21.71013819,72.99953121),(11,'merchant_136',1,17,1,2021,17,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610900781/merchant_136/sbh8cmdyxult8nmifgbi.jpg','category 17.1.21','16:26:23 2021-01-17','vegfoo','shop name','','','',21.71013819,72.99953121),(12,'merchant_136',1,18,1,2021,17,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610902909/merchant_136/tvtdrp0zjde0gs98g35t.jpg','post to other location 2nd time','17:01:51 2021-01-17','postto','shop name','','','',21.7227904,73.0367579),(13,'merchant_136',1,19,1,2021,19,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611076068/merchant_136/mvgwdurar0bmvpakstte.jpg','new post to other location','17:07:49 2021-01-19','zadesh','shop name','','','',21.7227904,73.0367579),(14,'merchant_137',32,22,1,2021,21,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611250055/merchant_137/whf21cgglaidk8e6vrl1.jpg','21.1.21 138user','17:27:37 2021-01-21','offerr','shop name','','','',21.7101168,73.0012308),(15,'merchant_135',1,30,1,2021,22,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611347406/merchant_135/wmlmygzjsotycmgenzlg.jpg','gala','20:30:09 2021-01-22','gala','shop name','','','',21.70912,72.99947),(16,'merchant_135',1,24,1,2021,24,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611474498/merchant_135/jdsdm3zbvjteypqpahpv.jpg','test','07:48:20 2021-01-24','test','shop name','','','',21.70912,72.99947),(17,'merchant_136',64,27,1,2021,26,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611681107/merchant_136/n4nzllrqyrwbwp0xuuul.jpg','26\n1\n21','17:11:50 2021-01-26','negoti','shop name','','','',21.71013819,72.99953121),(18,'merchant_136',1,31,1,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612051756/merchant_136/tffzcn2xwgemyenp6ax9.jpg','31.1.21','00:09:17 2021-01-31','negoti','shop name','','','',21.71013819,72.99953121),(19,'merchant_136',1,31,1,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612051825/merchant_136/k9nbdbs2uynps6mxczoo.jpg','31.1.21','00:10:26 2021-01-31','postto','shop name','','','',21.71013819,72.99953121),(20,'merchant_137',32,31,1,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612086859/merchant_137/a6o7zwxj6c2z4jc2wpaa.jpg','31.1.21','09:54:27 2021-01-31','negoti','shop name','','','',21.7101168,73.0012308),(21,'merchant_144',1,27,2,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612100681/merchant_144/p88goztmw06gx2t3dhkh.jpg','yess','13:44:43 2021-01-31','yess','shop name','','','',21.709606666666666,72.99868833333333),(22,'merchant_147',1,31,1,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612104472/merchant_147/kclolsqslqpfao7hagai.jpg','ttttttt','14:47:54 2021-01-31','tttttt','shop name','','','',21.709606666666666,72.99868833333333),(23,'merchant_148',1,31,1,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612105630/merchant_148/xytfra46hlbklgrpt1n5.jpg','tuuuuuuu','15:07:12 2021-01-31','tuuuuu','shop name','','','',21.709606666666666,72.99868833333333),(24,'merchant_148',1,1,2,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612118237/merchant_148/nglqec3iq571g35vcsn6.jpg','chat','18:37:19 2021-01-31','chat','shop name','','','',21.709606666666666,72.99868833333333),(25,'merchant_136',1,2,2,2021,1,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612200912/merchant_136/tnwyadacgood3hahd6ge.jpg','1.feb.21','17:35:16 2021-02-01','negoti','shop name','','','',21.71013819,72.99953121),(26,'merchant_149',5,3,2,2021,2,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612286673/merchant_149/emkkkedhtf6ce3m8vrqr.png','chat 2.2.21','17:24:35 2021-02-02','negoti','shop name','','','',21.70966709,72.9994422),(27,'merchant_148',1,6,2,2021,6,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612593795/merchant_148/eky8oz5r3prrtmifsjtw.jpg','aaaaaa','06:43:17 2021-02-06','aaaaaa','shop name','','','',21.709606666666666,72.99868833333333),(28,'merchant_148',1,6,2,2021,6,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612614710/merchant_148/sbpuy2rrxfetcyo1bayr.jpg','test','12:31:52 2021-02-06','test','shop name','','','',21.7097081,72.999553),(29,'merchant_148',1,7,2,2021,6,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612640799/merchant_148/iycwxdm8exhosh2tw37n.jpg','tttttttttt','19:46:42 2021-02-06','tttttt','shop name','','','',21.709606666666666,72.99868833333333),(30,'merchant_150',1,8,2,2021,7,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612714227/merchant_150/ywcysueockhgowgz3u7y.jpg','negotiate ','16:10:30 2021-02-07','vegi','shop name','','','',21.7097106,72.9995529),(31,'merchant_150',16,8,2,2021,7,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612714265/merchant_150/u1qd4cthndls9aaqshu7.jpg','negotiate ','16:11:15 2021-02-07','ice cr','shop name','','','',21.7097106,72.9995529),(32,'merchant_149',21,7,2,2021,7,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612715149/merchant_149/x2smlkjsukng7cwgimnq.jpg','negotiate 7.2.21','16:25:52 2021-02-07','negoti','shop name','','','',21.70966709,72.9994422),(33,'merchant_147',2147483649,24,3,2021,24,3,2021,'http://res.cloudinary.com/locator/image/upload/v1616610244/merchant_147/rbimwebcnogv2alg61qm.jpg','rest','18:24:06 2021-03-24','tesr','shop name','','','',21.709606666666666,72.99868833333333),(34,'merchant_147',1,25,3,2021,25,3,2021,'http://res.cloudinary.com/locator/image/upload/v1616695267/merchant_147/apg98xyw3qz6wfz3rieg.jpg','test','18:01:10 2021-03-25','test','shop name','','','',21.709606666666666,72.99868833333333),(35,'merchant_149',21,3,4,2021,3,4,2021,'http://res.cloudinary.com/locator/image/upload/v1617468017/merchant_149/whsgsg8rt8xcpjt0kie3.jpg','03.04.21 ','16:40:20 2021-04-03','03.04','shop name','','','',21.70966709,72.9994422),(36,'merchant_149',49,8,4,2021,7,4,2021,'http://res.cloudinary.com/locator/image/upload/v1617814724/merchant_149/yfb9hb6rdembbizksshx.jpg','07.04.21','16:58:49 2021-04-07','Today','shop name','','','',21.70966709,72.9994422),(37,'merchant_149',21,7,4,2021,7,4,2021,'http://res.cloudinary.com/locator/image/upload/v1617817716/merchant_149/cdlmjxe1lxioxeqfvydh.jpg','local offers 07.04.21','17:48:41 2021-04-07','local','shop name','','','',21.70966709,72.9994422),(38,'merchant_149',1,12,4,2021,11,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618127343/merchant_149/zvee06oh6dp8wbi5kqvo.jpg','FB POST 11.4.21','07:49:05 2021-04-11','FB POS','shop name','','','',21.70966709,72.9994422),(39,'merchant_149',1,13,4,2021,12,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618197507/merchant_149/kaqhkxuczfpd8nx51r9v.jpg','FB status post','03:18:28 2021-04-12','FB','shop name','','','',21.70966709,72.9994422),(40,'merchant_153',5,19,4,2021,17,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618688281/merchant_153/svycgxq5attvpg8zoft7.jpg','today 18.04.21','19:38:07 2021-04-17','Offier','shop name','','','',21.71028361,72.99924234),(41,'merchant_153',1,19,4,2021,17,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618688783/merchant_153/jq5dcqebd3i0ziezfxmf.jpg','Today Offer 18.04.21','19:46:26 2021-04-17','offer1','shop name','','','',21.71028361,72.99924234),(42,'merchant_153',32,30,4,2021,20,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618945012/merchant_153/tidrdh9qipe0v4rkjo6o.jpg','New summer collection for Man. Black round neck t-shirt. Buy now and get exciting discount. Hurry up. ','18:56:54 2021-04-20','summer','shop name','','','',21.71028361,72.99924234),(43,'merchant_153',32,30,4,2021,23,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619164857/merchant_153/uotmx4q6nlav7acyxekp.jpg','New Summer CAP Collection. Visit once for more option. ','08:00:59 2021-04-23','Summer','shop name','','','',21.71028361,72.99924234),(44,'merchant_153',32,31,5,2021,30,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619808014/merchant_153/wowmffkv0fhnlm4efa26.jpg','Baby\'s toy. All new collection available. ','18:40:18 2021-04-30','summer','shop name','','','',21.71028361,72.99924234),(45,'merchant_153',32,31,5,2021,12,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620840486/merchant_153/ffhoxfabs3otrpiuykxs.jpg','new travelling bags. Come and grab the discount on bags for limited time offers. ','17:28:08 2021-05-12','summer','shop name','','','',21.71028361,72.99924234);
/*!40000 ALTER TABLE `ad_teggt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_teggv`
--

DROP TABLE IF EXISTS `ad_teggv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_teggv` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_teggv`
--

LOCK TABLES `ad_teggv` WRITE;
/*!40000 ALTER TABLE `ad_teggv` DISABLE KEYS */;
INSERT INTO `ad_teggv` VALUES (1,'merchant_135',1,18,1,2021,17,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610915172/merchant_135/q3dg5ol49ixluyloulq5.jpg','CD tctcfcf','20:26:15 2021-01-17','nnnnnn','shop name','','','',21.785473288711906,73.0277581885457);
/*!40000 ALTER TABLE `ad_teggv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tek3y`
--

DROP TABLE IF EXISTS `ad_tek3y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_tek3y` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tek3y`
--

LOCK TABLES `ad_tek3y` WRITE;
/*!40000 ALTER TABLE `ad_tek3y` DISABLE KEYS */;
INSERT INTO `ad_tek3y` VALUES (1,'merchant_154',1,25,4,2021,25,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619318791/merchant_154/f7qvhnk8ecg5jerrk99q.jpg','ice cream  ? packs available ','02:46:34 2021-04-25','icecrm','shop name','','','',18.616472901776433,73.77809819765389),(2,'merchant_154',1,25,4,2021,25,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619318841/merchant_154/i68fh9zraacba5oldu1y.jpg','all verity of  vegetables ','02:47:25 2021-04-25','vegita','shop name','','','',18.616472901776433,73.77809819765389),(3,'merchant_154',1,30,4,2021,28,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619582045/merchant_154/hlfvlcln9xvej7vbbet5.jpg','ice cream  shop','03:54:09 2021-04-28','icecre','shop name','','','',18.616472901776433,73.77809819765389),(4,'merchant_154',536870912,10,5,2021,10,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620644035/merchant_154/gxarwu2f5zwm8gun0lof.jpg','offering  medical services ','10:53:56 2021-05-10','medica','shop name','','','',18.6163539,73.7780368),(5,'merchant_154',536870912,10,5,2021,10,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620644084/merchant_154/vsypj8bnw3hlq3f3lg6o.jpg','we r offering food ','10:54:45 2021-05-10','food','shop name','','','',18.6163539,73.7780368);
/*!40000 ALTER TABLE `ad_tek3y` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tepex`
--

DROP TABLE IF EXISTS `ad_tepex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_tepex` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tepex`
--

LOCK TABLES `ad_tepex` WRITE;
/*!40000 ALTER TABLE `ad_tepex` DISABLE KEYS */;
INSERT INTO `ad_tepex` VALUES (1,'merchant_1',14352,10,1,2021,9,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610207160/merchant_1/l6umaghhs6xjkiscset7.jpg','off off off ','15:46:02 2021-01-09','medic','shop name','','','',17.5211803,78.39250293),(2,'merchant_1',10960,11,1,2021,10,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610299498/merchant_1/bkbzosaw2djmgu2yd7dr.jpg','off off off off on gap','17:25:00 2021-01-10','gap','shop name','','','',17.5211803,78.39250293),(3,'merchant_1',2415919169,16,1,2021,15,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610690121/merchant_1/mc2ujjpnazcf9zwy2mqe.png','HAIRH','05:55:23 2021-01-15','hair','shop name','','','',17.5211727,78.3925625),(4,'merchant_1',268435537,17,1,2021,15,1,2021,'http://res.cloudinary.com/locator/image/upload/v1610736969/merchant_1/cpk0l9xhzfvjrked2szl.jpg','arts at off rate','18:56:10 2021-01-15','artart','shop name','','','',17.5211803,78.39250293),(5,'merchant_1',1,23,1,2021,23,1,2021,'http://res.cloudinary.com/locator/image/upload/v1611381691/merchant_1/m9ufkdi13t6wytzikj7p.jpg','chi g','06:01:33 2021-01-23','Fun','shop name','','','',17.5211803,78.39250293),(6,'merchant_1',14576,1,2,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612068343/merchant_1/gzy2i5j22kobftczxqh1.jpg','idols for sale sake','04:45:47 2021-01-31','idols','shop name','','','',17.5211803,78.39250293),(7,'merchant_148',1,31,1,2021,31,1,2021,'http://res.cloudinary.com/locator/image/upload/v1612114263/merchant_148/yq7pwlp3a429w99zrpjl.jpg','other','17:31:05 2021-01-31','other','shop name','','','',17.5211622,78.3923992),(8,'merchant_1',15072,1,2,2021,1,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612193780/merchant_1/gskn2zi5vmnorytwdday.jpg','album rap selling','15:36:23 2021-02-01','raprap','shop name','','','',17.5211803,78.39250293),(9,'merchant_1',6800,3,2,2021,3,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612367861/merchant_1/cozmtkkvxdrtfu897zzz.jpg','bike off sale','15:57:43 2021-02-03','bikeb','shop name','','','',17.5211803,78.39250293),(10,'merchant_1',14960,5,2,2021,4,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612458994/merchant_1/cscekmyncezwv2pr4zo1.jpg','albums albums off off','17:16:36 2021-02-04','eminem','shop name','','','',17.5211803,78.39250293),(11,'merchant_1',12400,7,2,2021,7,2,2021,'http://res.cloudinary.com/locator/image/upload/v1612673264/merchant_1/ccdooqsjxnlcjkpi0gpv.jpg','free free free ','04:47:46 2021-02-07','freeco','shop name','','','',17.5211803,78.39250293),(12,'merchant_1',10992,27,3,2021,26,3,2021,'http://res.cloudinary.com/locator/image/upload/v1616775516/merchant_1/krzswjgri1whmmf68mc5.jpg','50% off on laddus','16:18:38 2021-03-26','Laddu','shop name','','','',17.5211189,78.3925736),(13,'merchant_1',2800,29,3,2021,28,3,2021,'http://res.cloudinary.com/locator/image/upload/v1616906336/merchant_1/r6tnzxjs0q7focueelor.jpg','50% off on medicines ','04:38:59 2021-03-28','medic','shop name','','','',17.5209611,78.39240889999999),(14,'merchant_1',128,16,4,2021,2,4,2021,'http://res.cloudinary.com/locator/image/upload/v1617357415/merchant_1/wzoixfpnl7nrd0abiv63.jpg','feet','09:56:57 2021-04-02','outfit','shop name','','','',17.5211803,78.39250293),(15,'merchant_149',501,11,4,2021,11,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618131414/merchant_149/dh57ocnhyd77j9k5e1tf.jpg','ironman ...','08:56:56 2021-04-11','ironm','shop name','','','',17.520833559207773,78.39271601289511),(16,'merchant_149',501,12,4,2021,11,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618131975/merchant_149/fvnsynhwzagric11mx4n.jpg','happy day','09:06:17 2021-04-11','good','shop name','','','',17.5211325,78.3926657),(17,'merchant_1',181,12,4,2021,11,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618132300/merchant_1/gbwomgf6gv3dqocxbp63.jpg','uragaya offer/ pickle sale','09:11:42 2021-04-11','pickle','shop name','','','',17.5211803,78.39250293),(18,'merchant_152',4161,30,4,2021,14,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618407416/merchant_152/xelurwarrqj2v7jwqtjk.jpg','kara boondi','13:36:58 2021-04-14','boondi','shop name','','','',17.51882621,78.39448589),(19,'merchant_1',993,24,4,2021,23,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619151332/merchant_1/mg5wrwm8ofwncpf1re2b.jpg','mango pickle ','04:15:35 2021-04-23','pickle','shop name','','','',17.521134097493082,78.39198678731918),(20,'merchant_1',1,30,4,2021,30,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619789713/merchant_1/vxjqbtr3gkf1ugsuvpzr.jpg','Fresh mango pickle(avakaya)','13:35:15 2021-04-30','pickel','shop name','','','',17.521134097493082,78.39198678731918),(21,'merchant_158',1024,2,5,2021,2,5,2021,'http://res.cloudinary.com/locator/image/upload/v1619979806/merchant_158/d7vvuvnzuhmakh0hn6tr.jpg','For Medical Use, Working Pressure: 200 Kgf/Cm2','18:23:28 2021-05-02','oxygen','shop name','','','',17.520647800720855,78.39282866567373),(22,'merchant_158',1,3,5,2021,2,5,2021,'http://res.cloudinary.com/locator/image/upload/v1619980299/-1/cay1ajqtlhi3efast80z.jpg','For Medical Use, Working Pressure: 200 Kgf/Cm2','18:31:41 2021-05-02','oxygen','shop name','','','',17.520647800720855,78.39282866567373),(23,'merchant_1',536870912,11,5,2021,10,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620651198/merchant_1/ym2z50y1galsqobrbpaw.jpg','need these tablets it is emergency','12:53:19 2021-05-10','emerge','shop name','','','',17.5211309,78.3926048),(24,'merchant_1',536870912,13,5,2021,10,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620672269/merchant_1/kfwq8yybflcjtc8x3hjf.jpg','tablecom, ors, ','18:44:30 2021-05-10','emerge','shop name','','','',17.5211332,78.3926093),(25,'merchant_1',20477,13,5,2021,12,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620843175/merchant_1/ogwwpsf0g2v45vlybl7c.jpg','three pin socket','18:12:57 2021-05-12','socket','shop name','','','',17.5211312,78.3925977),(26,'merchant_1',125,16,5,2021,15,5,2021,'http://res.cloudinary.com/locator/image/upload/v1621090365/merchant_1/x6isanxycpzr8iqjk40f.jpg','pickle made in home','14:52:47 2021-05-15','pickle','shop name','','','',17.521134097493082,78.39198678731918),(27,'merchant_1',536870912,16,5,2021,15,5,2021,'http://res.cloudinary.com/locator/image/upload/v1621090511/merchant_1/yc2e2fe65kiyqn3jrc6w.jpg','need it urgently for my son','14:55:12 2021-05-15','Help','shop name','','','',17.5211242,78.392596),(28,'merchant_1',1,19,5,2021,18,5,2021,'http://res.cloudinary.com/locator/image/upload/v1621364049/merchant_1/qmxni6to31pf3hcm4ze3.jpg','vine g','18:54:10 2021-05-18','funny','shop name','','','',17.521134097493082,78.39198678731918);
/*!40000 ALTER TABLE `ad_tepex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tepg3`
--

DROP TABLE IF EXISTS `ad_tepg3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_tepg3` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tepg3`
--

LOCK TABLES `ad_tepg3` WRITE;
/*!40000 ALTER TABLE `ad_tepg3` DISABLE KEYS */;
INSERT INTO `ad_tepg3` VALUES (1,'merchant_157',536870912,19,5,2021,18,5,2021,'http://res.cloudinary.com/locator/image/upload/v1621362628/merchant_157/kuvnxidkftgb568jhmwz.jpg','test','18:30:30 2021-05-18','Help','shop name','','','',17.4688645,78.459647),(2,'merchant_157',536870912,20,5,2021,19,5,2021,'http://res.cloudinary.com/locator/image/upload/v1621428720/merchant_157/ad7t8uorpnb4o1ujeue8.jpg','covid help test','12:52:02 2021-05-19','Help','shop name','','','',17.4688877,78.4596454);
/*!40000 ALTER TABLE `ad_tepg3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_ts5du`
--

DROP TABLE IF EXISTS `ad_ts5du`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_ts5du` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_ts5du`
--

LOCK TABLES `ad_ts5du` WRITE;
/*!40000 ALTER TABLE `ad_ts5du` DISABLE KEYS */;
INSERT INTO `ad_ts5du` VALUES (1,'merchant_149',5,11,4,2021,11,4,2021,'http://res.cloudinary.com/locator/image/upload/v1618129760/merchant_149/kqcoevp0bryfhn7roxot.jpg','post other location','08:29:22 2021-04-11','post ','shop name','','','',23.0092351,72.635828),(2,'merchant_156',4,23,4,2021,23,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619170042/merchant_156/ipzmqgg17vozhtdbelm4.jpg','test','09:27:24 2021-04-23','test','shop name','','','',23.00020028270935,72.60216102004051),(3,'merchant_156',4,23,4,2021,23,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619170652/merchant_156/jvzdu8shzt6ppjcicklh.jpg','test1','09:37:35 2021-04-23','test1','shop name','','','',23.00020028270935,72.60216102004051),(4,'merchant_156',4,23,4,2021,23,4,2021,'http://res.cloudinary.com/locator/image/upload/v1619170704/merchant_156/l9f0hmyfabrdbwgusfzn.jpg','test2','09:38:26 2021-04-23','test2','shop name','','','',23.00020028270935,72.60216102004051),(5,'merchant_156',4,9,5,2021,9,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620580353/merchant_156/t7vxe9dxz916qufhitvu.jpg','tt','17:12:35 2021-05-09','tt','shop name','','','',23.00020028270935,72.60216102004051);
/*!40000 ALTER TABLE `ad_ts5du` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_ts5dv`
--

DROP TABLE IF EXISTS `ad_ts5dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_ts5dv` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_ts5dv`
--

LOCK TABLES `ad_ts5dv` WRITE;
/*!40000 ALTER TABLE `ad_ts5dv` DISABLE KEYS */;
INSERT INTO `ad_ts5dv` VALUES (1,'merchant_160',536870912,NULL,NULL,NULL,9,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620580569/merchant_160/nvnvfsat7ocylntao69c.jpg','fff','17:16:10 2021-05-09','gf','shop name','','','',23.0017252,72.6574059),(2,'merchant_160',29,NULL,NULL,NULL,9,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620581584/merchant_160/vefmodyj9znjglb0srsm.jpg','tt','17:33:04 2021-05-09','tt','shop name','','','',23.0000929,72.658225),(3,'merchant_160',536870912,29,5,2021,9,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620581962/merchant_160/lr8onuvdl8hyqrfoyylb.jpg','fff','17:39:23 2021-05-09','gg','shop name','','','',23.0001219,72.6578467),(4,'merchant_160',536870912,9,4,2021,9,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620583758/merchant_160/dshbtzc9oyfwonne8qxv.jpg','gg','18:09:19 2021-05-09','gg','shop name','','','',23.0000531,72.6569769),(5,'merchant_160',536870912,31,5,2021,9,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620584038/merchant_160/ebgdbiqi4yj4mdd2bo7l.jpg','ccc','18:13:59 2021-05-09','cf','shop name','','','',23.0001743,72.6577852);
/*!40000 ALTER TABLE `ad_ts5dv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_ts5eh`
--

DROP TABLE IF EXISTS `ad_ts5eh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_ts5eh` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_ts5eh`
--

LOCK TABLES `ad_ts5eh` WRITE;
/*!40000 ALTER TABLE `ad_ts5eh` DISABLE KEYS */;
INSERT INTO `ad_ts5eh` VALUES (1,'merchant_147',1,31,3,2021,31,3,2021,'http://res.cloudinary.com/locator/image/upload/v1617214546/merchant_147/p2viljj5id0ffgcqu1nj.jpg','bbh','18:15:49 2021-03-31','ttt','shop name','','','',23.0285053,72.60027339999999),(2,'merchant_147',1,1,4,2021,31,3,2021,'http://res.cloudinary.com/locator/image/upload/v1617215761/merchant_147/w0qlwnxszztms5kuz5fb.jpg','ffff','18:36:03 2021-03-31','tttt','shop name','','','',23.0285053,72.60027339999999);
/*!40000 ALTER TABLE `ad_ts5eh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_ttncp`
--

DROP TABLE IF EXISTS `ad_ttncp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_ttncp` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_ttncp`
--

LOCK TABLES `ad_ttncp` WRITE;
/*!40000 ALTER TABLE `ad_ttncp` DISABLE KEYS */;
INSERT INTO `ad_ttncp` VALUES (1,'merchant_155',1,12,5,2021,12,5,2021,'http://res.cloudinary.com/locator/image/upload/v1620798822/merchant_155/slqvdw97c2fg4nvtyhw1.jpg','test','05:53:44 2021-05-12','123456','shop name','','','',28.3381968,77.33973139999999);
/*!40000 ALTER TABLE `ad_ttncp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` bigint DEFAULT NULL,
  `ValidTillDate` int DEFAULT NULL,
  `ValidTillMonth` int DEFAULT NULL,
  `ValidTillYear` int DEFAULT NULL,
  `ValidFromDate` int DEFAULT NULL,
  `ValidFromMonth` int DEFAULT NULL,
  `ValidFromYear` int DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  `mindiscount` varchar(10) DEFAULT '0',
  `maxdiscount` varchar(10) DEFAULT '0',
  `discdesc` varchar(512) DEFAULT '0',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bangalore_ffffff_yyyyyy`
--

DROP TABLE IF EXISTS `bangalore_ffffff_yyyyyy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bangalore_ffffff_yyyyyy` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangalore_ffffff_yyyyyy`
--

LOCK TABLES `bangalore_ffffff_yyyyyy` WRITE;
/*!40000 ALTER TABLE `bangalore_ffffff_yyyyyy` DISABLE KEYS */;
/*!40000 ALTER TABLE `bangalore_ffffff_yyyyyy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bengaluru_shivanandanagar_lbsnilgiris`
--

DROP TABLE IF EXISTS `bengaluru_shivanandanagar_lbsnilgiris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bengaluru_shivanandanagar_lbsnilgiris` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bengaluru_shivanandanagar_lbsnilgiris`
--

LOCK TABLES `bengaluru_shivanandanagar_lbsnilgiris` WRITE;
/*!40000 ALTER TABLE `bengaluru_shivanandanagar_lbsnilgiris` DISABLE KEYS */;
/*!40000 ALTER TABLE `bengaluru_shivanandanagar_lbsnilgiris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birthdays`
--

DROP TABLE IF EXISTS `birthdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birthdays` (
  `idBirthdays` int NOT NULL AUTO_INCREMENT,
  `contact` varchar(15) NOT NULL,
  `geohash` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idBirthdays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birthdays`
--

LOCK TABLES `birthdays` WRITE;
/*!40000 ALTER TABLE `birthdays` DISABLE KEYS */;
/*!40000 ALTER TABLE `birthdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `idcategory` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Restaurant VegFood  ','https://res.cloudinary.com/locator/image/upload/v1540743476/categories/vegetarianfood.png'),(2,'Restaurant  NonVeg Food','https://res.cloudinary.com/locator/image/upload/v1540744002/categories/nonvegfood.png'),(3,'Vegetables','https://res.cloudinary.com/locator/image/upload/v1540744412/categories/vegetables.png'),(4,'NonVeg Raw Items','https://res.cloudinary.com/locator/image/upload/v1540745294/categories/nonvegrawitems.jpg'),(5,'Ice Creams','https://res.cloudinary.com/locator/image/upload/v1540747088/categories/icecreams.jpg'),(6,'Coffee shop','https://res.cloudinary.com/locator/image/upload/v1540747255/categories/coffeeshop.jpg'),(7,'Groceries','https://res.cloudinary.com/locator/image/upload/v1540747455/categories/grocery.jpg'),(8,'Men Apparel','https://res.cloudinary.com/locator/image/upload/v1540748297/categories/men_apparel.jpg'),(9,'Women Apparel','https://res.cloudinary.com/locator/image/upload/v1540748822/categories/womenappareal.jpg'),(10,'Child Apparel','https://res.cloudinary.com/locator/image/upload/v1540749280/categories/childapparel.png'),(11,'stationery','https://res.cloudinary.com/locator/image/upload/v1540749438/categories/stationery.jpg'),(12,'Mobile Phones','https://res.cloudinary.com/locator/image/upload/v1540749708/categories/mobiles.jpg'),(13,'Bakery','https://res.cloudinary.com/locator/image/upload/v1540749798/categories/bakery.jpg'),(14,'pendrives','https://res.cloudinary.com/locator/image/upload/v1540749892/categories/pendrives.jpg'),(15,'Electronics','https://res.cloudinary.com/locator/image/upload/v1540750069/categories/electronicitems.png'),(16,'Men accessories','https://res.cloudinary.com/locator/image/upload/v1540750208/categories/menaccessories.jpg'),(17,'Women accessories','https://res.cloudinary.com/locator/image/upload/v1540750349/categories/womenaccessories.jpg'),(18,'Men Saloon','https://res.cloudinary.com/locator/image/upload/v1540750509/categories/mensalon.jpg'),(19,'Men SPA','https://res.cloudinary.com/locator/image/upload/v1540750723/categories/menspa.jpg'),(20,'Women SPA','https://res.cloudinary.com/locator/image/upload/v1540750882/categories/womenspa.jpg'),(21,'Men GYM','https://res.cloudinary.com/locator/image/upload/v1540751152/categories/mengym.jpg'),(22,'Women GYM','https://res.cloudinary.com/locator/image/upload/v1540751311/categories/womengym.jpg'),(23,'Health n Fitness','https://res.cloudinary.com/locator/image/upload/v1540751401/categories/healthandfitness.jpg'),(24,'Plastic goods','https://res.cloudinary.com/locator/image/upload/v1540751569/categories/plasticgoods.jpg'),(25,'Kitchen appliances','https://res.cloudinary.com/locator/image/upload/v1540751664/categories/kitchemaccessories.jpg'),(26,'Hardware','https://res.cloudinary.com/locator/image/upload/v1540751887/categories/hardwareaccessories.jpg'),(27,'Toys','https://res.cloudinary.com/locator/image/upload/v1540752088/toys_tpeume.jpg'),(28,'Pets','https://res.cloudinary.com/locator/image/upload/v1540752276/Pets_lbnynq.jpg'),(29,'Medical/Covid Help','https://res.cloudinary.com/locator/image/upload/v1540752439/medicals_jcpwnq.jpg'),(30,'Diagnostics','https://res.cloudinary.com/locator/image/upload/v1540752548/categories/diagnostics.jpg'),(31,'Novelties ','https://res.cloudinary.com/locator/image/upload/v1540752742/categories/novelties.jpg'),(32,'Sports','https://res.cloudinary.com/locator/image/upload/v1540752835/sports_xlklqf.jpg'),(33,'Institutes','https://res.cloudinary.com/locator/image/upload/v1540752945/educational_v3bv97.jpg'),(34,'women\'s beauty parlour','https://res.cloudinary.com/locator/image/upload/v1540753081/categories/womenbeautyparlour.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cghhhbv_fhujjhv_fhhjj`
--

DROP TABLE IF EXISTS `cghhhbv_fhujjhv_fhhjj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cghhhbv_fhujjhv_fhhjj` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(25) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cghhhbv_fhujjhv_fhhjj`
--

LOCK TABLES `cghhhbv_fhujjhv_fhhjj` WRITE;
/*!40000 ALTER TABLE `cghhhbv_fhujjhv_fhhjj` DISABLE KEYS */;
/*!40000 ALTER TABLE `cghhhbv_fhujjhv_fhhjj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chiokbb_ojhjjaba_xghjnbb`
--

DROP TABLE IF EXISTS `chiokbb_ojhjjaba_xghjnbb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chiokbb_ojhjjaba_xghjnbb` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chiokbb_ojhjjaba_xghjnbb`
--

LOCK TABLES `chiokbb_ojhjjaba_xghjnbb` WRITE;
/*!40000 ALTER TABLE `chiokbb_ojhjjaba_xghjnbb` DISABLE KEYS */;
/*!40000 ALTER TABLE `chiokbb_ojhjjaba_xghjnbb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckcdi_dujcn_dhvvl`
--

DROP TABLE IF EXISTS `ckcdi_dujcn_dhvvl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ckcdi_dujcn_dhvvl` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckcdi_dujcn_dhvvl`
--

LOCK TABLES `ckcdi_dujcn_dhvvl` WRITE;
/*!40000 ALTER TABLE `ckcdi_dujcn_dhvvl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckcdi_dujcn_dhvvl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `MYUSER` varchar(30) NOT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `WEBPAGE` varchar(100) NOT NULL,
  `DATUM` date NOT NULL,
  `SUMMARY` varchar(40) NOT NULL,
  `COMMENTS` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumerFireIDs`
--

DROP TABLE IF EXISTS `consumerFireIDs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumerFireIDs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `consumerID` int NOT NULL,
  `FirebaseInstanceID` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `consumerID` (`consumerID`),
  CONSTRAINT `consumerFireIDs_ibfk_1` FOREIGN KEY (`consumerID`) REFERENCES `consumers` (`idconsumers`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumerFireIDs`
--

LOCK TABLES `consumerFireIDs` WRITE;
/*!40000 ALTER TABLE `consumerFireIDs` DISABLE KEYS */;
INSERT INTO `consumerFireIDs` VALUES (54,102,'f11JnI1USHekPG6odRBHg0:APA91bEYD7W6x9k0N1eGQ6EG2pjRIJreeLutbBDLLfl1ihsK60N5xoBPo5Utey4_2DW-dJSHsHuwD0OW_yj0xvFM4KbzlPG3adWu28AH0vxMo23WPKUy39bEfp6ae0ZcYvkxPh3httNh'),(55,103,'d7rMbivPQnCqtNbjgOmbfo:APA91bHASoloz5Gfzzsoa6YleUjoYmNHAL2JkEwV5QSEmXySIoC9zeAtWjhCQw5kggpw-ULBwd-APlWmLx6-GuduwdbOxT8P-DYP_7OpTu9bE0NaRgTBge4yuGVNy6SnhJFSw79AP9cH'),(56,104,'ctkSOKuXT2KpqM-mQXDtJ_:APA91bEL8mRtBIVKxTAMv44AasV-ajWS9SYdNtttnkndApJf1lNlZ7Ft6UtHZf4cu88io4JaU2GWLWTifC6-XEDS8A1-lqHCfnAuqblDcz4wW7kJY6i5wPpstIjzioNV6sLI6ogA4FXr'),(57,105,'d1OZ1GOaQXCIE5sgLCw-g_:APA91bGs4v0bTPRiyYdTpnhfwlF1rkNizvsARe2_9CALaKLBSbK3ODU4D6nKqDq7esqp3J-dGe9lQlhL1ZkQT9_EJOP3k-B7tlAven3htrsW9ofaIB1wglRsraFXjWpIvHM70-BduoS1'),(59,107,'fKruKqFeTL20piNCZgpgZ1:APA91bG4f3UDhLNusPRWUlP9JQyhXsVAg3ehKdNSpY2mt7PAyNv93QfeE-Yz7p6ZJZjD3QDTnzSrIxT4pV6hd80BiVyO5d7YXfbP53ANMXRSK1Aj76Le08yUwqJv1NzYfMv6Kn57MANG'),(60,108,'dslyHWiFScCSu1GHziYDR4:APA91bEXIHj7reKHoYGGlMGw14Ac-zaUZkB--kMza025NtoqbJxjh81n2wkDpFF582Y160w0LMV6oLEXDSUMHw3w3RBfd4KiFJpyfmGyQIMZ0wfhnoFWTPWYzXNXcDqBlXlNBwEFLA5g'),(61,109,'fPaKDqVBThmcVQJPx-GTBM:APA91bEnZUQM8k89lnTysozQ0KiZaJ3Ln_eCiBFfumV3xSLURCimuzuxoCoaBGKtduhLJu9wa0KxJwsbRBk9QUF7_t8T0iQjjcx22Mqb32Ml4OqDETrZkUBhb4IDZWeUS4QifhDeG9rU'),(62,110,'exHsecVPRU-j_L7_tRdjIJ:APA91bFg0nW0aHW81JgVUEd-sRPrtjLvb4liTnH9LZBeeJ40_oFlyQVCFGB0OOijLO99C5Jl6fVKMqDQ_Fdn4eiKJrJtEmvHxAewCENtusOeb6L6Nzm31DhApynEPUjgfP5Vu8nUB1Ck'),(63,111,'c4a61f-aT2q7TSfVptySZ2:APA91bEpKAFrs1RiF4sT7Xj9Rl44-GX55rOoaA1aDJNHyqKB1J1LHFAd1QC48DXs-cwmql_yZd5wc1J1_eNOC1TRg3mJiDNMt1jVeC4I4mHYPbicdnqixcaDOLnjLOAZYr9gvpS9DB6J'),(64,112,'cMsfCuwaTIKk0a5BOLClul:APA91bElHspoFEo753Oup74s9NngAwiG2w6y3ZJ8bvsy91qdVGIegqbnISEcy5fKU2RhcXRO0Q1UgNTFOyxb1w8TJNgU3ShmGzxCUtwot71PHMyfzHnN-G99UeFqbYgprAd232ELEd2N'),(65,113,'fsTThybFRD64OCxid5MMHt:APA91bHWvhkETRIq5-DhUR-rmT4sO-j1Z7qjkNcn9aNxbhS7Hf2KDI8Ioqjgpu6fsRJR_gohQz73Rx517a4Afhx0hIkZg1M7ugl4B3pp5qp93FMqIQtA_IyZVBOJh1SCP12zAGbxBK3v'),(66,114,'euO7po6KTNiCDyn2Vy1Qo0:APA91bEkrgeuZA2kpVAb5WJZL7qIMhGg-QKeKOFuGzXONGiBe5vKCz871B-5H-qcApPjfTWsTjDL4jr_nYEHcQ0wqzLBEskXcYtQG9S_8llNbra-6JcjMa0us4LM8DMtleXDPiPsx3pZ'),(67,115,'da78z-FxSD2smytSukF3bj:APA91bHPc8kqL-I3U6dcPa7Mx-z-yJ7p91vv1yG4d3mQqsNsqT2ATlcVbrx9GsRVZxrozzZETHDZTycXGyZ3tpGh5J0eYjkM8tthMjjLn-yATufjzu1Dsao2wpfuDlGtdPPH7RkrfBHG'),(68,116,'cB5GUFzsQxur8RHT8C3ruX:APA91bFIxQ7pkCeVyLeL5AqBKs5DVP_m6V61HGrlKqlvxm8JJM3M5erUEcgQZBBFVSHc9QSwM3W7MuEwe2wSWiLf3GayS-H5VcI3rqgBUf-gCzAtmuIqKCfY406MUnqSneYTwU05fB-n'),(69,117,'eJjSabyQSYSnr8Yo-CzPXk:APA91bHVRbliI40g2JPaVCNqGVe1hVJeRX41Q1ki27eLl6-xAyz38SbbpmTSpNssa3jNo587NyreR9oCEPkiHBEVxboj6XjbFsBWJ52QGlfc-qKf3SjsB3F3txG2tehOa0AjrHMn5u5I'),(70,118,'dPWqxDqvSXa9gNot3nWdFz:APA91bHjmHxEqpRnOnlzsPhHHhfo5FvkIGnhbHMYFQtB9yyQlh-XJh0zcAQWiQ6VNxCf0cTyBlsuR0VQnsH7ChPmFf5mbAgidUn-bSOjGF0N2or4FJ8v3BvAnWx6MmUBt-zHTeWAR-8y'),(71,119,'dgDVc55FRdqHfpIDncF6g-:APA91bFu_L1zDiSKeUPjEEFPq3IyIC6OB87kdXa7cqSggZV5P7o3W_pWIH6fQSwQmaf4sWohjdRLy5KFlV_FTZvBVRXmkRPoSc9ecK9yUvKgkD4lktRLyKiiMoDfG7QxhbHBVt9l525E'),(72,120,'dn9MH6BhTpO1PN63pgu1eU:APA91bG5qQu2UzJy6HSGKhLeRBtlvfGVigpOuvFHkJY40Ntbzu-YBGadvXPqs3ZHz2uaKxU2FjbqjhDTf7Q1UcoyD40nylTseqFgDc8xU3TkdqJWWab5L40WXF7ZKYCOjWcp5ptw78aJ'),(73,121,'fUQIj7ucSGymTsUpWrYs69:APA91bGesJOgtGjWUePd0K_4Ja56TDSXAjhG1gzo4Clya1ElbCBN3PM23G82pjQKm_RAJvrHAXiFtGMB_3S4XUQ0Fw1zqyfN4KAOAcIHcxBvX0HOaXedDP3F75A9A6gKfsoLT_5zytw-'),(74,122,'drLLWXV8Q_-t7yw1UBLujk:APA91bHRpZrpTR9UAll2ZE6RF_Kr3QHJj8b3L03tpzNCKUaobSplVn1ZjRPCvxtgaaJoLoTrbwsZD7hfJWMJU4Ai2dmP3qwGFpDObBA5Ty1PralQqJwFqirrZySDnDMPiMS2hcaRYSvG'),(75,123,'djsa-3LcRcOU_pL5MWoBkt:APA91bH4XBf7Gc7UORrzlKANaboAuy-CPnQ_zyGsFpaaZe7Kr4ytQQQ492St77oi617TST3ReEhoiveo1TsN60QwSuBL0qTYWw8VtQXHDhUlAcHC40x_LPBBbupe3szymQj2GqZCdQVK'),(76,124,'ed8yeBWSR66unkZhx4drlV:APA91bEtY8czzkNy1T39-6SSO9JLlpw-K2FXP93ffAntCMnskXAqVS3FY1b7u1x7MdDA2DGcrkbqdFDYJdB1FH9Lt3Xxklmk8D38jIP_oAuCOjRxEjFerQnH6BxD281V7WHnoy63my9n');
/*!40000 ALTER TABLE `consumerFireIDs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumers`
--

DROP TABLE IF EXISTS `consumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumers` (
  `idconsumers` int NOT NULL AUTO_INCREMENT,
  `consumername` varchar(128) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `DOB` date NOT NULL,
  `dpurl` varchar(256) NOT NULL,
  `registeredon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  `sex` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idconsumers`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumers`
--

LOCK TABLES `consumers` WRITE;
/*!40000 ALTER TABLE `consumers` DISABLE KEYS */;
INSERT INTO `consumers` VALUES (102,'mani','+919884296297','1970-01-01','','2021-04-12 04:29:13',NULL,0),(103,'gopi','+918247638529','1970-01-01','','2021-04-12 06:42:20',NULL,0),(104,'Hemanth Maddhuri','+919703848204','1970-01-01','','2021-04-12 18:35:55',NULL,0),(105,'srinu','+917981843908','1970-01-01','','2021-04-14 13:40:59',NULL,0),(107,'Nil','+917069043782','1970-01-01','','2021-04-14 18:21:28',NULL,0),(108,'Mayur jain','+918200785387','1970-01-01','','2021-04-17 19:34:58',NULL,0),(109,'kalyani ','+919959430918','1970-01-01','','2021-04-18 09:01:21',NULL,0),(110,'gopi','+918179442558','1970-01-01','','2021-04-18 09:16:57',NULL,0),(111,'Adi','+919100730068','1970-01-01','','2021-04-18 12:21:30',NULL,0),(112,'Durga','+919440583701','1970-01-01','','2021-04-26 16:22:00',NULL,0),(113,'sai','+918125802142','1970-01-01','','2021-04-30 13:32:46',NULL,0),(114,'Amit kumar Bittu Sein','+919899375368','1970-01-01','','2021-05-05 05:12:16',NULL,0),(115,'sravani','+919959860293','1970-01-01','','2021-05-07 04:30:15',NULL,0),(116,'sailaja','+919620651155','1985-08-27','','2021-05-11 19:29:28',NULL,2),(117,'valli','+919620090003','2021-02-14','','2021-05-12 04:01:01',NULL,2),(118,'vasu','+916361871963','2021-05-12','','2021-05-12 06:13:49',NULL,1),(119,'Kyatham','+919703266680','1979-10-20','','2021-05-12 20:08:03',NULL,1),(120,'kiran','+918465923547','2021-05-14','','2021-05-14 06:34:24',NULL,1),(121,'navinkrishna','+917259260001','1988-12-16','','2021-05-14 06:51:38',NULL,1),(122,'Durga Prasad Subudhi','+918095854707','1989-03-15','','2021-05-14 14:59:49',NULL,1),(123,'murali','+919849124680','1982-11-02','','2021-05-15 14:22:20',NULL,1),(124,'kalyan','+919666445123','1991-05-18','','2021-05-17 08:15:57',NULL,1),(125,'Nilesh Jain','+919904405259','1989-01-11','','2021-05-20 05:45:02',NULL,1);
/*!40000 ALTER TABLE `consumers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cook_subtype`
--

DROP TABLE IF EXISTS `cook_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cook_subtype` (
  `subjobtypeid` int NOT NULL,
  `subjobname` varchar(256) DEFAULT NULL,
  `subjobdescription` varchar(1024) DEFAULT NULL,
  `mandatory` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cook_subtype`
--

LOCK TABLES `cook_subtype` WRITE;
/*!40000 ALTER TABLE `cook_subtype` DISABLE KEYS */;
INSERT INTO `cook_subtype` VALUES (1,'cook_veg','vegetarian food',1),(2,'cook_non_veg','non vegetarian food',1),(3,'cook_south','south indian food',0),(4,'cook_north','north indian food',0),(5,'cook_andhra','Authentic Andhra style',0),(6,'cook_telangana','Authentic Telangana style',0),(7,'cook_chettinad','Authentic Chettinad style',0),(8,'cook_kerala','Authentic Kerala style',0),(9,'cook_bengali','Authentic bengali style',0),(10,'cook_chinese','Chinese  style',0),(11,'cook_continental','Continental  style',0);
/*!40000 ALTER TABLE `cook_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counters` (
  `idcounters` int NOT NULL AUTO_INCREMENT,
  `counterid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL DEFAULT '0000',
  `merchantid` varchar(45) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closedon` datetime DEFAULT NULL,
  `role` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcounters`,`counterid`)
) ENGINE=InnoDB AUTO_INCREMENT=150665 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerpointsavailed`
--

DROP TABLE IF EXISTS `customerpointsavailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerpointsavailed` (
  `idcustomerpointsavailed` int NOT NULL,
  `contact` varchar(45) NOT NULL,
  `pointsused` int NOT NULL DEFAULT '0',
  `goodieselected` int NOT NULL DEFAULT '0',
  `usedon` varchar(128) NOT NULL DEFAULT '""',
  PRIMARY KEY (`idcustomerpointsavailed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpointsavailed`
--

LOCK TABLES `customerpointsavailed` WRITE;
/*!40000 ALTER TABLE `customerpointsavailed` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerpointsavailed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_subtype`
--

DROP TABLE IF EXISTS `delivery_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_subtype` (
  `subjobtypeid` int NOT NULL,
  `subjobname` varchar(256) DEFAULT NULL,
  `subjobdescription` varchar(1024) DEFAULT NULL,
  `mandatory` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_subtype`
--

LOCK TABLES `delivery_subtype` WRITE;
/*!40000 ALTER TABLE `delivery_subtype` DISABLE KEYS */;
INSERT INTO `delivery_subtype` VALUES (1,'food','food delivery',0),(2,'medicine','medicines delivery',0),(3,'groceries','groceries delivery',0),(4,'package','package delivery',0),(5,'liquor','liquor delivery',0);
/*!40000 ALTER TABLE `delivery_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` int NOT NULL AUTO_INCREMENT,
  `education` varchar(128) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'10','upto 10th class'),(2,'12','12th class or intermediate'),(3,'degree','graduation'),(4,'post graduation','post graduation');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_branch`
--

DROP TABLE IF EXISTS `education_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_branch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch` varchar(128) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_branch`
--

LOCK TABLES `education_branch` WRITE;
/*!40000 ALTER TABLE `education_branch` DISABLE KEYS */;
INSERT INTO `education_branch` VALUES (1,'Maths','From Maths background'),(2,'Science','From Science background'),(3,'Commerce','From Commerce background'),(4,'Computers','From Computers background'),(5,'Arts','From Arts background');
/*!40000 ALTER TABLE `education_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `yearofservice` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `perks` int DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fhuuhgg_gghhuu_fgggh`
--

DROP TABLE IF EXISTS `fhuuhgg_gghhuu_fgggh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fhuuhgg_gghhuu_fgggh` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fhuuhgg_gghhuu_fgggh`
--

LOCK TABLES `fhuuhgg_gghhuu_fgggh` WRITE;
/*!40000 ALTER TABLE `fhuuhgg_gghhuu_fgggh` DISABLE KEYS */;
/*!40000 ALTER TABLE `fhuuhgg_gghhuu_fgggh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiis_fuiidv_cjoav`
--

DROP TABLE IF EXISTS `fiis_fuiidv_cjoav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fiis_fuiidv_cjoav` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiis_fuiidv_cjoav`
--

LOCK TABLES `fiis_fuiidv_cjoav` WRITE;
/*!40000 ALTER TABLE `fiis_fuiidv_cjoav` DISABLE KEYS */;
/*!40000 ALTER TABLE `fiis_fuiidv_cjoav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fjjjtt_fyfyu67_gjgu7`
--

DROP TABLE IF EXISTS `fjjjtt_fyfyu67_gjgu7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fjjjtt_fyfyu67_gjgu7` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fjjjtt_fyfyu67_gjgu7`
--

LOCK TABLES `fjjjtt_fyfyu67_gjgu7` WRITE;
/*!40000 ALTER TABLE `fjjjtt_fyfyu67_gjgu7` DISABLE KEYS */;
/*!40000 ALTER TABLE `fjjjtt_fyfyu67_gjgu7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_msg`
--

DROP TABLE IF EXISTS `group_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_msg` (
  `idgroup_msg` int NOT NULL AUTO_INCREMENT,
  `msgowner` varchar(15) NOT NULL,
  `parentmsg` int DEFAULT NULL,
  `date` date NOT NULL,
  `message` varchar(512) NOT NULL,
  `message_imgurl` varchar(256) DEFAULT NULL,
  `sex` varchar(10) NOT NULL DEFAULT 'male',
  `modifiedon` date NOT NULL,
  `rootmsg` int NOT NULL,
  PRIMARY KEY (`idgroup_msg`),
  KEY `FK_PARENTMSG_idx` (`parentmsg`),
  CONSTRAINT `FK_PARENTMSG` FOREIGN KEY (`parentmsg`) REFERENCES `group_msg` (`idgroup_msg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_msg`
--

LOCK TABLES `group_msg` WRITE;
/*!40000 ALTER TABLE `group_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `idgroups` int NOT NULL AUTO_INCREMENT,
  `groupname` varchar(45) NOT NULL,
  `groupdp` varchar(256) NOT NULL,
  `owner` varchar(15) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userscount` int NOT NULL DEFAULT '1',
  `groupdesc` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`idgroups`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpers`
--

DROP TABLE IF EXISTS `helpers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `helpers` (
  `idcounters` int NOT NULL AUTO_INCREMENT,
  `counterid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL DEFAULT '0000',
  `merchantid` varchar(45) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closedon` datetime DEFAULT NULL,
  `role` int NOT NULL DEFAULT '2',
  PRIMARY KEY (`idcounters`,`counterid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpers`
--

LOCK TABLES `helpers` WRITE;
/*!40000 ALTER TABLE `helpers` DISABLE KEYS */;
INSERT INTO `helpers` VALUES (1,'merchant_149_1_helper','0000','merchant_149','2021-02-02 17:33:26',NULL,2);
/*!40000 ALTER TABLE `helpers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jfhi_dihdf_djjvfyok`
--

DROP TABLE IF EXISTS `jfhi_dihdf_djjvfyok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jfhi_dihdf_djjvfyok` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jfhi_dihdf_djjvfyok`
--

LOCK TABLES `jfhi_dihdf_djjvfyok` WRITE;
/*!40000 ALTER TABLE `jfhi_dihdf_djjvfyok` DISABLE KEYS */;
/*!40000 ALTER TABLE `jfhi_dihdf_djjvfyok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tdr1xr`
--

DROP TABLE IF EXISTS `job_tdr1xr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tdr1xr` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tdr1xr`
--

LOCK TABLES `job_tdr1xr` WRITE;
/*!40000 ALTER TABLE `job_tdr1xr` DISABLE KEYS */;
INSERT INTO `job_tdr1xr` VALUES (1,'amit','https://www.google.com/maps/?q=12.9637588,77.6697244','ttt','adithya siogne','thr','Secondary','3','male','29','9871278657','amituee@gmail.com','26-3-2019','5pm','2565','2019-04-04','12.9637588','77.6697244');
/*!40000 ALTER TABLE `job_tdr1xr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tdr1z2`
--

DROP TABLE IF EXISTS `job_tdr1z2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tdr1z2` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tdr1z2`
--

LOCK TABLES `job_tdr1z2` WRITE;
/*!40000 ALTER TABLE `job_tdr1z2` DISABLE KEYS */;
INSERT INTO `job_tdr1z2` VALUES (1,'amit','https://www.google.com/maps/?q=12.9667085,77.6703503','amit','aditya sionage','the the','Secondary','1','male','30','9871278657','amituee@gmail.com','26-3-2019','6pm','20000','2019-04-02','12.9667085','77.6703503'),(2,'amit','https://www.google.com/maps/?q=12.9687078,77.6727993','vgg','aditya signage','the try','Secondary','4','male','29','9871278657','amituee@gmail.com','26-3-2019','6pm','28000','2019-04-02','12.9687078','77.6727993'),(3,'amit','https://www.google.com/maps/?q=12.9687566,77.6727198','the job','Mina bazaar','560093','Secondary','6','male','56','9871278657','amituee@gmail.com','25-3-2019','6 PM','2500','2019-04-02','12.9687566','77.6727198'),(4,'akt','https://www.google.com/maps/?q=12.968726,77.6727922','the job','the. Mina bazaar','yy','Secondary','5','male','29','9871278657','amituee@gmail.com','30-4-2019','5pm','2500','2019-04-02','12.968726','77.6727922'),(5,'aahhh','https://www.google.com/maps/?q=12.968726,77.6727922','thff','aditya s','that is TBD','Secondary','4','male','85','9871278657','amituee@gmail.com','25-3-2019','5pm','3666','2019-04-02','12.968726','77.6727922'),(6,'thgygf','https://www.google.com/maps/?q=12.968726,77.6727922','to decide','the Mina','thffy','Secondary','8','male','65','9871278657','amituee@gmail.com','25-3-2019','5pm','3555','2019-04-02','12.968726','77.6727922'),(7,'ahagg','https://www.google.com/maps/?q=12.968726,77.6727922','jbg','the adiya','tbd','Secondary','9','male','36','9871278657','amituee@gmail.com','24-3-2019','3pm','6665','2019-04-02','12.968726','77.6727922'),(8,'tiwari','https://www.google.com/maps/?q=12.968726,77.6727922','the job','chai point','tbd','Secondary','6','male','25','9871278657','amituee@gmail.com','24-3-2019','1 PM','2580','2019-04-02','12.968726','77.6727922'),(9,'amit','https://www.google.com/maps/?q=12.9687349,77.672788','Amit jobs','amit','567003','Secondary','4','male','29','9871278657','amituee@gmail.com','25-3-2019','4 PM','2500','2019-04-21','12.9687349','77.672788'),(10,'mayur jobs','https://www.google.com/maps/?q=12.9687528,77.6727366','mayur','mayur','567003','Secondary','22','male','36','9871278657','amituee@gmail.com','25-5-2020','6pm','3600','2019-04-21','12.9687528','77.6727366'),(11,'aditya','https://www.google.com/maps/?q=12.9686636,77.6727416','haagag','aditya','567003','Post Graduate','6','male','36','3595555555','amituee@gmail.com','30-3-2019','6pm','5680','2019-04-21','12.9686636','77.6727416'),(12,'yatish','https://www.google.com/maps/?q=12.9686536,77.6727895','yhfggv','yatish','ugfg','Graduate','6','male','35','987265685','amituee@gmail.com','25-6-2019','7pm','2590','2019-04-21','12.9686536','77.6727895'),(13,'yhgg','https://www.google.com/maps/?q=12.9686536,77.6727895','cg','ggf','tgd','Secondary','7','male','25','9874563258','amituee@gmail.com','26-5-2019','8pm','3698','2019-04-21','12.9686536','77.6727895'),(14,'hjgfg','https://www.google.com/maps/?q=12.9686173,77.6727686','ggc','vvg','ggf','Senior secondary','7','male','36','9875542315','amituee@gmail.com','25-3-2019','7pm','6580','2019-04-21','12.9686173','77.6727686'),(15,'know','https://www.google.com/maps/?q=12.9686159,77.6728003','what','the','following','Graduate','9','male','36','9871278657','amituee@gmail.com','24-5-2020','7pm','6589','2019-04-21','12.9686159','77.6728003'),(16,'amit','https://www.google.com/maps/?q=12.9687222,77.6727814','Amit jobs','aditya siogne','567003','Post Graduate','5','male','36','9871278657','amituee@gmail.com','30-3-2019','5 PM','2580','2019-04-22','12.9687222','77.6727814'),(17,'amit','https://www.google.com/maps/?q=12.9687335,77.6727923','Amit to get it done','admit','509674','Post Graduate','6','male','36','9871278657','amituee@gmail.com','31-4-2019','23:50','3500','2019-05-02','12.9687335','77.6727923'),(18,'amit','https://www.google.com/maps/?q=12.9687194,77.6727996','this is amits job','aditya siogne','signed up','Graduate','6','male','58','9871278657','amituee@gmail.com','29-4-2019','17:30','53000','2019-05-11','12.9687194','77.6727996'),(19,'disk','https://www.google.com/maps/?q=12.9687194,77.6727996','Heidi USCGC seceded','due snug','central London England','Post Graduate','6','male','45','9871278657','amituee@gmail.com','28-4-2019','18:0','26000','2019-05-11','12.9687194','77.6727996'),(20,'amit','https://www.google.com/maps/?q=12.9687309,77.6728105','grubby','Geno','Bruno','Post Graduate','9','male','58','9871278657','amituee@gmail.com','30-5-2019','18:0','58000','2019-05-12','12.9687309','77.6728105'),(21,'Brits','https://www.google.com/maps/?q=12.9687309,77.6728105','nerve','book H','hu yG','Graduate','45','male','35','9871278657','amituee@gmail.com','31-5-2019','19:0','54000','2019-05-12','12.9687309','77.6728105'),(22,'day','https://www.google.com/maps/?q=12.9687309,77.6728105','carriage and the same','cabbage','sq QR','Senior secondary','5','male','25','9871278657','amituee@gmail.com','26-5-2019','16:0','42000','2019-05-12','12.9687309','77.6728105'),(23,'amit','https://www.google.com/maps/?q=12.9687004,77.6727867','Amit Kumar to get it back together for your help','aditya','though it was not sure','Post Graduate','6','male','56','9871278657','amituee@gmail.com','28-5-2019','21:2','25000','2019-05-15','12.9687004','77.6727867'),(24,'sumit','https://www.google.com/maps/?q=12.9687056,77.6727906','sumit to get it back together for your help','issues','jujutsu','Graduate','6','male','35','9871278657','amituee@gmail.com','22-5-2019','21:4','35000','2019-05-15','12.9687056','77.6727906'),(25,'mayur ','https://www.google.com/maps/?q=12.9687004,77.6727867','mayur to get back with your friends','Henry','Jericho','Secondary','6','male','26','9871278657','amituee@gmail.com','27-5-2019','21:6','65800','2019-05-15','12.9687004','77.6727867'),(26,'amir','https://www.google.com/maps/?q=12.9686707,77.6728793','Amit is finally','UDP','GHz','Post Graduate','7','male','36','9871278657','amituee@gmail.com','24-5-2019','20:36','25000','2019-05-22','12.9686707','77.6728793'),(27,'amit','https://www.google.com/maps/?q=12.9686914,77.6727846','admit it to your website',' c v raman','876565','Graduate','6','male','28','9871278657','amituee@gmail.com','30-5-2019','18:56','25000','2019-05-27','12.9686914','77.6727846'),(28,'sumit','https://www.google.com/maps/?q=12.9686914,77.6727846','sumit jobs','c v raman','454434','Post Graduate','3','male','35','9871278657','amituee@gmail.com','29-5-2019','22:57','35000','2019-05-27','12.9686914','77.6727846'),(29,'hoping ','https://www.google.com/maps/?q=12.9686914,77.6727846','hoping jobs','c v raman','765432','Senior secondary','9','male','65','9871278657','amituee@gmail.com','31-5-2019','22:59','25000','2019-05-27','12.9686914','77.6727846'),(30,'Amit jobs','https://www.google.com/maps/?q=12.9686647,77.6727788','not jobs','Jesus','HSBC','Post Graduate','1','male','35','9871278657','amituee@gmail.com','12-6-2019','16:39','5600','2019-06-02','12.9686776','77.6727787'),(31,'Jesus','https://www.google.com/maps/?q=12.9687045,77.6727826','UFOs','his','hits to get back from issues','Post Graduate','5','male','36','9871278657','amituee@gmail.com','25-6-2019','17:37','26580','2019-06-24','12.9687045','77.6727826'),(32,'issue this','https://www.google.com/maps/?q=12.9688807,77.6728668','guys','guess','guess that','Graduate','5','male','35','9871278657','amituee@gmail.com','25-6-2019','17:39','26580','2019-06-24','12.9688807','77.6728668'),(33,'LCT','https://www.google.com/maps/?q=12.9686811,77.6727861','guys','guys','his','Post Graduate','12','male','56','9871278657','amituee@gmail.com','25-7-2019','18:30','25000','2019-07-11','12.9686811','77.6727861'),(34,'amit','https://www.google.com/maps/?q=12.9687009,77.6728028','Amit Kumar Gupta','good','senior manager','Post Graduate','5','male','45','9871278657','amituee@gmail.com','23-7-2019','9:0','55000','2019-07-22','12.9687009','77.6728028'),(35,'gopi','https://www.google.com/maps/?q=12.9686897,77.6728063','but 1 hi minute','judge','judge','Post Graduate','7','male','57','987128657','amituee@gmail.com','31-7-2019','6:30','58000','2019-07-25','12.9686897','77.6728063');
/*!40000 ALTER TABLE `job_tdr1z2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tdr1z3`
--

DROP TABLE IF EXISTS `job_tdr1z3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tdr1z3` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tdr1z3`
--

LOCK TABLES `job_tdr1z3` WRITE;
/*!40000 ALTER TABLE `job_tdr1z3` DISABLE KEYS */;
INSERT INTO `job_tdr1z3` VALUES (1,'nearme','https://www.google.com/maps/?q=12.9707729,77.6696652','test','test','test','Secondary','5','male','19','8247638529','gopi.kom','31-2-2019','56','5000','2019-03-30','12.9707729','77.6696652'),(2,'yyuy','https://www.google.com/maps/?q=12.9707725,77.6696921','ghjj','yui','vjk','Secondary','6','male','52','8179442558','cgfhh','31-2-2019','67','10','2019-03-30','12.9707725','77.6696921'),(3,'amit','https://www.google.com/maps/?q=12.9704086,77.6663823','guy ugh','UHF','unit and then delete','Senior secondary','35','male','35','9871278657','amituee@gmail.com','19-7-2019','18:26','25000','2019-07-11','12.9704086','77.6663823'),(4,'gala','https://www.google.com/maps/?q=12.9707917,77.6696419','for testing','adity soigne','test','Senior secondary','0','male','40','8247638529','gopi.komanduri@gmail.com','19-7-2019','4:35','10000','2019-07-17','12.9707917','77.6696419'),(5,'harit','https://www.google.com/maps/?q=12.9715329,77.6666765','habit of the individual and purpose','guys have been able to find ways to get it done','good','Post Graduate','4y','male','28','5642853697','agh@gmail.con','25-7-2019','6:30','2500','2019-07-19','12.9715329','77.6666765'),(6,'HDR','https://www.google.com/maps/?q=12.9704349,77.6663508','UCI','HDR','have','Secondary','4','male','28','9871278657','amituee@gmail.com','22-8-2019','6:30','35000','2019-07-26','12.9704349','77.6663508'),(7,'amit','https://www.google.com/maps/?q=12.9704423,77.6663433','judge just judge','HFCS Ivy\'s','Ivy\'s issue','Senior secondary','5','male','35','9871278657','amituee@gmail.com','15-8-2019','9:0','55000','2019-07-27','12.9704423','77.6663433'),(8,'amit','https://www.google.com/maps/?q=12.9704388,77.666322','admit that you have received','address for your email','units','Senior secondary','5','male','54','9871278657','amituee@gmail.com','15-8-2019','21:0','55000','2019-07-27','12.9704388','77.666322');
/*!40000 ALTER TABLE `job_tdr1z3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tdr1z4`
--

DROP TABLE IF EXISTS `job_tdr1z4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tdr1z4` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  `jobtype` int DEFAULT NULL,
  `isactive` int DEFAULT NULL,
  `employerrating` int DEFAULT NULL,
  `employerid` int DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tdr1z4`
--

LOCK TABLES `job_tdr1z4` WRITE;
/*!40000 ALTER TABLE `job_tdr1z4` DISABLE KEYS */;
INSERT INTO `job_tdr1z4` VALUES (1,'gopi','https://www.google.com/maps/?q=12.9788879,77.6578696','cook','btp','cook','Secondary','2 years','female','30','8247638529','gopi.komanduri@gmail.com','12-10-2019','18:19','5000','2019-10-04','12.9788879','77.6578696',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `job_tdr1z4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tek3tz`
--

DROP TABLE IF EXISTS `job_tek3tz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tek3tz` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tek3tz`
--

LOCK TABLES `job_tek3tz` WRITE;
/*!40000 ALTER TABLE `job_tek3tz` DISABLE KEYS */;
INSERT INTO `job_tek3tz` VALUES (1,'hhh','https://www.google.com/maps/?q=18.5877392,73.7376979','bbbb','hbb','bbbh','Secondary','66hggg','male','5589','884569875','ggvv','7-8-2019','12:57','902599','2019-08-28','18.5877392','73.7376979');
/*!40000 ALTER TABLE `job_tek3tz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tek3y0`
--

DROP TABLE IF EXISTS `job_tek3y0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tek3y0` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tek3y0`
--

LOCK TABLES `job_tek3y0` WRITE;
/*!40000 ALTER TABLE `job_tek3y0` DISABLE KEYS */;
INSERT INTO `job_tek3y0` VALUES (1,'hdhhdh','https://www.google.com/maps/?q=18.5896422,73.7483373','hshshhs','sbhdhdh','bxhjxjd','Post Graduate','0','male','5658565959','7078989898','kanni13@gmail.com','10-9-2019','0:43','7979688686686','2019-09-23','18.5896422','73.7483373');
/*!40000 ALTER TABLE `job_tek3y0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tek3yu`
--

DROP TABLE IF EXISTS `job_tek3yu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tek3yu` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tek3yu`
--

LOCK TABLES `job_tek3yu` WRITE;
/*!40000 ALTER TABLE `job_tek3yu` DISABLE KEYS */;
INSERT INTO `job_tek3yu` VALUES (1,'kkkk','https://www.google.com/maps/?q=18.6165501,73.7759162','hshh','dhhsh','dhhsh','Secondary','hshxhdh','male','595965','4997989684','zvsvbsb@dvdvdv.com','1-8-2019','6:28','8497646464699','2019-08-30','18.6156219','73.7773019');
/*!40000 ALTER TABLE `job_tek3yu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tek3yv`
--

DROP TABLE IF EXISTS `job_tek3yv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tek3yv` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  `jobtype` int DEFAULT NULL,
  `isactive` int DEFAULT NULL,
  `employerrating` int DEFAULT NULL,
  `employerid` int DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tek3yv`
--

LOCK TABLES `job_tek3yv` WRITE;
/*!40000 ALTER TABLE `job_tek3yv` DISABLE KEYS */;
INSERT INTO `job_tek3yv` VALUES (1,'gtfgygg','https://www.google.com/maps/?q=18.6139976,73.7755485','tgg','gg','gg','Secondary','yyygg','male','666669800','596578533','hhh@hh.com','17-9-2019','2:2','5548963211009','2019-10-02','18.6164605','73.778133',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `job_tek3yv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tek3yy`
--

DROP TABLE IF EXISTS `job_tek3yy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tek3yy` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  `jobtype` int DEFAULT NULL,
  `isactive` int DEFAULT NULL,
  `employerrating` int DEFAULT NULL,
  `employerid` int DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tek3yy`
--

LOCK TABLES `job_tek3yy` WRITE;
/*!40000 ALTER TABLE `job_tek3yy` DISABLE KEYS */;
INSERT INTO `job_tek3yy` VALUES (1,'kkk','https://www.google.com/maps/?q=18.6233989,73.7749751','ghhh','ghh','ghh','Secondary','456789864333','female','588095558','8455680878','c@hhhh.com','8-10-2019','0:28','589632480000','2019-10-25','18.6233989','73.7749751',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `job_tek3yy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tepexv`
--

DROP TABLE IF EXISTS `job_tepexv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tepexv` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tepexv`
--

LOCK TABLES `job_tepexv` WRITE;
/*!40000 ALTER TABLE `job_tepexv` DISABLE KEYS */;
INSERT INTO `job_tepexv` VALUES (1,'xdd','https://www.google.com/maps/?q=17.5210868,78.3924973','xfrsjrs','Aditya sogine','cvb','Secondary','cc','male','45','8125802142','xfbt','2-3-2019','12','58','2019-04-02','17.5210868','78.3924973'),(2,'teater','https://www.google.com/maps/?q=17.5211059,78.3925787','tetsv','Mina bazar','dh','Secondary','12','male','12','1234564879','bsjzh@hjam.com','2-3-2019','12','12','2019-04-02','17.5211059','78.3925787'),(3,'jxxkxj','https://www.google.com/maps/?q=17.5211059,78.3925787','dbzh','Aditya sogine','bsbz','Secondary','1','male','12','1567787564','saiiahb@gmaol.com','2-3-2019','12','123','2019-04-02','17.5211059','78.3925787'),(4,'bzx','https://www.google.com/maps/?q=17.5210949,78.3925053','dn','Sri Venkata said nivas','bzbx','Secondary','12','male','76','7979797979','xvbz@gamil.com','2-3-2019','12','56','2019-04-02','17.5210949','78.3925053'),(5,'teate','https://www.google.com/maps/?q=17.5210901,78.3925392','dhdb','zghz','bzbs','Secondary','12','male','7676','6794949644','zhhzb','4-4-2019','12','133','2019-04-02','17.5210901','78.3925392'),(6,'zz','https://www.google.com/maps/?q=17.5209388,78.392626','cc','dd','dd','Secondary','3','male','22','2','chaitanyam.sai@gmail.com','10-4-2019','22:37','25','2019-05-05','17.5209388','78.392626'),(7,'buy sh','https://www.google.com/maps/?q=17.5211716,78.3925478','bz','sh','sb','Secondary','12','male','12','8125802142','chaitanyam.sai@gmail.com','12-4-2019','bdn','445','2019-05-12','17.5211716','78.3925478'),(8,'sai','https://www.google.com/maps/?q=17.5211547,78.3925214','DTP operator','near bumi market','DTP Operator','Secondary','2 years','female','45','8125802142','saihemu111@gmail.com','16-6-2019','23:48','15000','2019-06-16','17.5211547','78.3925214');
/*!40000 ALTER TABLE `job_tepexv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_ts5ehg`
--

DROP TABLE IF EXISTS `job_ts5ehg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_ts5ehg` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_ts5ehg`
--

LOCK TABLES `job_ts5ehg` WRITE;
/*!40000 ALTER TABLE `job_ts5ehg` DISABLE KEYS */;
INSERT INTO `job_ts5ehg` VALUES (1,'hello','https://www.google.com/maps/?q=23.0457092,72.6377272','test','tets','tets','Secondary','12','male','12','1234567890','qwe@g.c','16-5-2019','0:29','12000','2019-05-15','23.0457092','72.6377272');
/*!40000 ALTER TABLE `job_ts5ehg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_ts5ejh`
--

DROP TABLE IF EXISTS `job_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_ts5ejh` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_ts5ejh`
--

LOCK TABLES `job_ts5ejh` WRITE;
/*!40000 ALTER TABLE `job_ts5ejh` DISABLE KEYS */;
INSERT INTO `job_ts5ejh` VALUES (1,'chaintanya','https://www.google.com/maps/?q=23.0508511,72.6452372','android','krishnanagar','senior developer','Senior secondary','5','male','14','1234567890','abc@gmail.com','4-3-2019','5:39','20000','2019-04-02','23.0508511','72.6452372'),(2,'abcd','https://www.google.com/maps/?q=23.0512528,72.6456067','test','test','test','Secondary','test','male','25','1234567890','test@gmail.com','14-5-2019','18:14','2000','2019-05-12','23.0512528','72.6456067'),(3,'mayur','https://www.google.com/maps/?q=23.0512528,72.6456067','nsnz','Bzb','android','Secondary','50','male','28','1234567890','abc@gmail.com','15-5-2019','18:18','30000','2019-05-12','23.0512528','72.6456067'),(4,'chaitamya','https://www.google.com/maps/?q=23.050491,72.6452372','android','mauri plaza','senior developer','Secondary','5 year','male','25','1234568900','abc@gmail.com','14-5-2019','5:39','2000','2019-05-13','23.050491','72.6452372'),(5,'vv','https://www.google.com/maps/?q=23.050491,72.6452372','demo','demo','demo','Secondary','demo','male','25','2222222222','demo@g.c','23-5-2019','5:49','2000','2019-05-13','23.050491','72.6452372'),(6,'mayur','https://www.google.com/maps/?q=23.0504494,72.6448676','hyy','hy','android developer','Post Graduate','2 year','male','25','9904405269','abc@gmail.com','28-9-2019','22:55','25000','2019-09-28','23.0504494','72.6448676');
/*!40000 ALTER TABLE `job_ts5ejh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobmapping`
--

DROP TABLE IF EXISTS `jobmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobmapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employerid` int DEFAULT NULL,
  `employeeid` int DEFAULT NULL,
  `jobtype` int DEFAULT NULL,
  `jobsubtype` int DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobmapping`
--

LOCK TABLES `jobmapping` WRITE;
/*!40000 ALTER TABLE `jobmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `idjobs` int NOT NULL AUTO_INCREMENT,
  `employername` varchar(512) NOT NULL,
  `employerlocationurl` varchar(256) NOT NULL,
  `jobDescription` varchar(256) DEFAULT NULL,
  `locationLandmark` varchar(128) NOT NULL,
  `offeringpost` varchar(64) NOT NULL,
  `educationQualification` varchar(64) DEFAULT NULL,
  `experienceReq` varchar(26) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `ageLimitation` varchar(10) DEFAULT NULL,
  `contact` varchar(16) NOT NULL,
  `emailId` varchar(128) DEFAULT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `shiftTimings` varchar(45) DEFAULT NULL,
  `salary` varchar(45) NOT NULL,
  `postedon` date NOT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lng` varchar(32) DEFAULT NULL,
  `jobtype` int DEFAULT NULL,
  `isactive` int DEFAULT NULL,
  `employerrating` int DEFAULT NULL,
  `employerid` int DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobseeker`
--

DROP TABLE IF EXISTS `jobseeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobseeker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `consumerid` int DEFAULT NULL,
  `isactive` int DEFAULT NULL,
  `jobtype` int DEFAULT NULL,
  `jobsubtype` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobseeker`
--

LOCK TABLES `jobseeker` WRITE;
/*!40000 ALTER TABLE `jobseeker` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobseeker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobtype`
--

DROP TABLE IF EXISTS `jobtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobtype`
--

LOCK TABLES `jobtype` WRITE;
/*!40000 ALTER TABLE `jobtype` DISABLE KEYS */;
INSERT INTO `jobtype` VALUES (1,'part time'),(2,'full time'),(3,'home based (work from home)');
/*!40000 ALTER TABLE `jobtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maid`
--

DROP TABLE IF EXISTS `maid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maid` (
  `subjobtypeid` int NOT NULL,
  `subjobname` varchar(256) DEFAULT NULL,
  `subjobdescription` varchar(1024) DEFAULT NULL,
  `mandatory` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maid`
--

LOCK TABLES `maid` WRITE;
/*!40000 ALTER TABLE `maid` DISABLE KEYS */;
/*!40000 ALTER TABLE `maid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maid_subtype`
--

DROP TABLE IF EXISTS `maid_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maid_subtype` (
  `subjobtypeid` int NOT NULL,
  `subjobname` varchar(256) DEFAULT NULL,
  `subjobdescription` varchar(1024) DEFAULT NULL,
  `mandatory` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maid_subtype`
--

LOCK TABLES `maid_subtype` WRITE;
/*!40000 ALTER TABLE `maid_subtype` DISABLE KEYS */;
INSERT INTO `maid_subtype` VALUES (1,'clothes','washing clothes',0),(2,'utensils','cleaning utensils',0),(3,'house','cleaning house',0),(4,'vehicles','cleaning vehicles',0),(5,'bathroom','cleaning bathroom',0);
/*!40000 ALTER TABLE `maid_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) DEFAULT 'Karnataka',
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL DEFAULT 'CURRENT_TIMESTAMP',
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL DEFAULT '0000000000',
  `MerchantType` int NOT NULL DEFAULT '0',
  `password` varchar(15) NOT NULL DEFAULT '0000',
  `role` int NOT NULL DEFAULT '0',
  `govtid` varchar(128) DEFAULT NULL,
  `govtidimgurl` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (151,'merchant_1','tepex',17.521134097493082,78.39198678731918,'http://res.cloudinary.com/locator/image/upload/v1618252822/k99s2znrvfwklidee3pp.jpg','sai kirana store','','INDIA','2021-04-12T18:40:31.729110','1','888222777191','+919703848204',0,'0000',0,'123407990','http://res.cloudinary.com/locator/image/upload/v1618252822/k99s2znrvfwklidee3pp.jpg'),(152,'merchant_152','tepex',17.51882621,78.39448589,'http://res.cloudinary.com/locator/image/upload/v1618407301/shiibscbnyvvojspgrso.jpg','gayatri swagruha foods','','INDIA','2021-04-14T13:35:07.643165','1','1','+919948085854',0,'1234',0,'58049679185','http://res.cloudinary.com/locator/image/upload/v1618407301/shiibscbnyvvojspgrso.jpg'),(154,'merchant_154','tek3y',18.616472901776433,73.77809819765389,'http://res.cloudinary.com/locator/image/upload/v1618736355/os7lldpvts7vpt1yelfv.jpg','9959430918','','INDIA','2021-04-18T08:59:21.140904','1','22','+919959430918',0,'1224',0,'AMQPM3343N ','http://res.cloudinary.com/locator/image/upload/v1618736355/os7lldpvts7vpt1yelfv.jpg'),(155,'merchant_155','tdr1z',12.971337370309604,77.66842402517796,'http://res.cloudinary.com/locator/image/upload/v1618761070/ccc7j8szjmcpmtak1vrt.jpg','my shop','','INDIA','2021-04-18T15:51:11.497798','1','vjgujk','+918179442558',0,'0000',0,'1244556','http://res.cloudinary.com/locator/image/upload/v1618761064/bumjvkhzi0vwlqvjaotv.jpg'),(156,'merchant_156','ts5du',23.00020028270935,72.60216102004051,'http://res.cloudinary.com/locator/image/upload/v1619163928/bkmhdjdiuhndcksqosxf.jpg','Calvin Store','','INDIA','2021-04-23T07:45:36.909732','1','500','+919904405269',0,'0000',0,'asdfzz122536','http://res.cloudinary.com/locator/image/upload/v1619163928/bkmhdjdiuhndcksqosxf.jpg'),(157,'merchant_157','tepg3',17.46886319,78.4596738,'http://res.cloudinary.com/locator/image/upload/v1619528596/wdiwy0krsu8to18ahcgx.png','Durga01','','INDIA','2021-04-27T13:03:21.529029','1','12','+919440583701',0,'1264',0,'ANYPAN4YOU','http://res.cloudinary.com/locator/image/upload/v1619528596/wdiwy0krsu8to18ahcgx.png'),(158,'merchant_158','tepex',17.520647800720855,78.39282866567373,'http://res.cloudinary.com/locator/image/upload/v1619979492/oezjiydqimbrfwpcnaec.jpg','Sai kumar','','INDIA','2021-05-02T18:18:18.713632','1','321','+919966525464',0,'2580',0,'970384820404','http://res.cloudinary.com/locator/image/upload/v1619979431/n1ygotfjvyizqb9fg8h9.jpg'),(159,'merchant_159','tdr1y',12.984585868884277,77.64406856149434,'http://res.cloudinary.com/locator/image/upload/v1620361586/bwwzootxxox50up9odyj.jpg','Sravani k','','INDIA','2021-05-07T04:26:33.478004','1','52','+919959860293',0,'0205',0,'gmcfb','http://res.cloudinary.com/locator/image/upload/v1620361586/bwwzootxxox50up9odyj.jpg'),(160,'merchant_160','ts5dv',22.9999599,72.6577739,'http://res.cloudinary.com/locator/image/upload/v1620361586/bwwzootxxox50up9odyj.jpg','Mayur jain','','INDIA','2021-05-09T13:25:13.105414','1','ht','+918200785387',0,'0000',0,'asdgg556646467','http://res.cloudinary.com/locator/image/upload/v1620361586/bwwzootxxox50up9odyj.jpg'),(161,'merchant_161','tepez',17.5425847,78.3607483,'http://res.cloudinary.com/locator/image/upload/v1620361586/bwwzootxxox50up9odyj.jpg','kiran','','INDIA','2021-05-14T09:24:47.075386','1','h','+918465923547',0,'0000',0,'123456781011','http://res.cloudinary.com/locator/image/upload/v1620361586/bwwzootxxox50up9odyj.jpg'),(162,'merchant_162','tdr1z',12.9707567,77.6697066,'http://res.cloudinary.com/locator/image/upload/v1620361586/bwwzootxxox50up9odyj.jpg','murali','','INDIA','2021-05-15T14:41:12.850391','1','h','+919849124680',0,'0000',0,'agsjdhv','http://res.cloudinary.com/locator/image/upload/v1620361586/bwwzootxxox50up9odyj.jpg'),(163,'merchant_163','ts5dv',23.0012328,72.6563542,'http://res.cloudinary.com/locator/image/upload/v1621277881/fu6a7ofwjhyoohqpoboj.jpg','The All in one Shop','','INDIA','2021-05-17T18:58:03.025524','1','Shop No 135 ','+919904405259',0,'1234',0,'ATKOJ707R','http://res.cloudinary.com/locator/image/upload/v1621277880/a0r43znl0dipap1wwhnp.jpg');
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_148_token_log`
--

DROP TABLE IF EXISTS `merchant_148_token_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_148_token_log` (
  `TokenID` int NOT NULL,
  `Position` int NOT NULL,
  `FirebaseID` varchar(255) DEFAULT NULL,
  `contact` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TokenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_148_token_log`
--

LOCK TABLES `merchant_148_token_log` WRITE;
/*!40000 ALTER TABLE `merchant_148_token_log` DISABLE KEYS */;
INSERT INTO `merchant_148_token_log` VALUES (1,0,'fOZ4oZ8sQEqR0LMM0YoxW2:APA91bH9H-_fbW1uDKlhoDf57JdhKd4alhRsVuqAAm99eWIm5UOXwBmzoiU_RmcKEbtcMTKQp93TKrLKAseBSS5HFJV0XVgctAblAt7L05OrJd1K4bPprlokliL4g0hGeFS-tG9RT9Nw','+918200785387'),(2,0,'f-eJ9ZffRJ6IcEWQetuQl-:APA91bG9TKsKJzbDP9VM-7hCYBr_Akj4i5GuDZmRvD2fwEC-eJj27FbMt-_DtoDpFpT2roU2lb6cqZT798dHWqwCd5FJB_GybZMa1BaJKkp5DZcIhYoYSERXHytfY3ZgJQ9hmyMwubX2','+919703848204'),(3,0,'f-eJ9ZffRJ6IcEWQetuQl-:APA91bG9TKsKJzbDP9VM-7hCYBr_Akj4i5GuDZmRvD2fwEC-eJj27FbMt-_DtoDpFpT2roU2lb6cqZT798dHWqwCd5FJB_GybZMa1BaJKkp5DZcIhYoYSERXHytfY3ZgJQ9hmyMwubX2','+919703848204'),(4,-5,'fOZ4oZ8sQEqR0LMM0YoxW2:APA91bH9H-_fbW1uDKlhoDf57JdhKd4alhRsVuqAAm99eWIm5UOXwBmzoiU_RmcKEbtcMTKQp93TKrLKAseBSS5HFJV0XVgctAblAt7L05OrJd1K4bPprlokliL4g0hGeFS-tG9RT9Nw','+918200785387'),(5,0,'f-eJ9ZffRJ6IcEWQetuQl-:APA91bG9TKsKJzbDP9VM-7hCYBr_Akj4i5GuDZmRvD2fwEC-eJj27FbMt-_DtoDpFpT2roU2lb6cqZT798dHWqwCd5FJB_GybZMa1BaJKkp5DZcIhYoYSERXHytfY3ZgJQ9hmyMwubX2','+919703848204'),(6,-5,'f-eJ9ZffRJ6IcEWQetuQl-:APA91bG9TKsKJzbDP9VM-7hCYBr_Akj4i5GuDZmRvD2fwEC-eJj27FbMt-_DtoDpFpT2roU2lb6cqZT798dHWqwCd5FJB_GybZMa1BaJKkp5DZcIhYoYSERXHytfY3ZgJQ9hmyMwubX2','+919703848204'),(7,-5,'fOZ4oZ8sQEqR0LMM0YoxW2:APA91bH9H-_fbW1uDKlhoDf57JdhKd4alhRsVuqAAm99eWIm5UOXwBmzoiU_RmcKEbtcMTKQp93TKrLKAseBSS5HFJV0XVgctAblAt7L05OrJd1K4bPprlokliL4g0hGeFS-tG9RT9Nw','+918200785387'),(8,0,'fOZ4oZ8sQEqR0LMM0YoxW2:APA91bH9H-_fbW1uDKlhoDf57JdhKd4alhRsVuqAAm99eWIm5UOXwBmzoiU_RmcKEbtcMTKQp93TKrLKAseBSS5HFJV0XVgctAblAt7L05OrJd1K4bPprlokliL4g0hGeFS-tG9RT9Nw','+918200785387'),(9,2,'f-eJ9ZffRJ6IcEWQetuQl-:APA91bG9TKsKJzbDP9VM-7hCYBr_Akj4i5GuDZmRvD2fwEC-eJj27FbMt-_DtoDpFpT2roU2lb6cqZT798dHWqwCd5FJB_GybZMa1BaJKkp5DZcIhYoYSERXHytfY3ZgJQ9hmyMwubX2','+919703848204'),(11,0,'fOZ4oZ8sQEqR0LMM0YoxW2:APA91bH9H-_fbW1uDKlhoDf57JdhKd4alhRsVuqAAm99eWIm5UOXwBmzoiU_RmcKEbtcMTKQp93TKrLKAseBSS5HFJV0XVgctAblAt7L05OrJd1K4bPprlokliL4g0hGeFS-tG9RT9Nw','+918200785387');
/*!40000 ALTER TABLE `merchant_148_token_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_149_token_log`
--

DROP TABLE IF EXISTS `merchant_149_token_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_149_token_log` (
  `TokenID` int NOT NULL,
  `Position` int NOT NULL,
  `FirebaseID` varchar(255) DEFAULT NULL,
  `contact` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TokenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_149_token_log`
--

LOCK TABLES `merchant_149_token_log` WRITE;
/*!40000 ALTER TABLE `merchant_149_token_log` DISABLE KEYS */;
INSERT INTO `merchant_149_token_log` VALUES (1,-6,'eci9XNiISjaeNQvB7iZ-Ci:APA91bGbWAFgdmKilULfHNQq26-6IZ8k1dU9QtlDKGz-Fb9pD0NfWwBZjU4CF5nbPnH0qql4Jz9PTqXRXG_R2uEWH2XakkaX2fYIHHVAt6orzNnDKnRkF5eH2CMDzVE0pDHrBnGHeQAJ','+919904405259'),(2,0,'cIot2qY4SiK7ogcUMM52Qx:APA91bHuxTDkkvAwR4DsDqdiTZqzs-RgkpQOHiy0-11dNLANV_JFPGeqowuACk2_T9p3fTkg2tEC3DRm1Km7NY382X_OCcyKodZRN12jct0nPfRUqkUrIHoR5fTG90oo8ekxiWajbNZ8','+918320617313'),(3,-5,'eci9XNiISjaeNQvB7iZ-Ci:APA91bGbWAFgdmKilULfHNQq26-6IZ8k1dU9QtlDKGz-Fb9pD0NfWwBZjU4CF5nbPnH0qql4Jz9PTqXRXG_R2uEWH2XakkaX2fYIHHVAt6orzNnDKnRkF5eH2CMDzVE0pDHrBnGHeQAJ','+919904405259'),(4,-5,'cIot2qY4SiK7ogcUMM52Qx:APA91bHuxTDkkvAwR4DsDqdiTZqzs-RgkpQOHiy0-11dNLANV_JFPGeqowuACk2_T9p3fTkg2tEC3DRm1Km7NY382X_OCcyKodZRN12jct0nPfRUqkUrIHoR5fTG90oo8ekxiWajbNZ8','+918320617313'),(5,0,'eci9XNiISjaeNQvB7iZ-Ci:APA91bGbWAFgdmKilULfHNQq26-6IZ8k1dU9QtlDKGz-Fb9pD0NfWwBZjU4CF5nbPnH0qql4Jz9PTqXRXG_R2uEWH2XakkaX2fYIHHVAt6orzNnDKnRkF5eH2CMDzVE0pDHrBnGHeQAJ','+919904405259'),(6,-5,'cIot2qY4SiK7ogcUMM52Qx:APA91bHuxTDkkvAwR4DsDqdiTZqzs-RgkpQOHiy0-11dNLANV_JFPGeqowuACk2_T9p3fTkg2tEC3DRm1Km7NY382X_OCcyKodZRN12jct0nPfRUqkUrIHoR5fTG90oo8ekxiWajbNZ8','+918320617313'),(7,0,'dYjPzCnnTCKdo8Wn7f9RW7:APA91bHrhTqmUGJ7DrDdSERGBCVMpCJKfudHawSG26VOP6X-KRfjTNkuRAibByt9Od3mgePYfTa7MTmO8jngzoTPseqe1Rz5rnzcuWdBfZ01arE6Rj1vy8QT2nfMKvsNYGwLKY-NglCl','+919904405259'),(8,-5,'dYjPzCnnTCKdo8Wn7f9RW7:APA91bHrhTqmUGJ7DrDdSERGBCVMpCJKfudHawSG26VOP6X-KRfjTNkuRAibByt9Od3mgePYfTa7MTmO8jngzoTPseqe1Rz5rnzcuWdBfZ01arE6Rj1vy8QT2nfMKvsNYGwLKY-NglCl','+919904405259'),(9,-5,'dYjPzCnnTCKdo8Wn7f9RW7:APA91bHrhTqmUGJ7DrDdSERGBCVMpCJKfudHawSG26VOP6X-KRfjTNkuRAibByt9Od3mgePYfTa7MTmO8jngzoTPseqe1Rz5rnzcuWdBfZ01arE6Rj1vy8QT2nfMKvsNYGwLKY-NglCl','+919904405259'),(10,1,'dYjPzCnnTCKdo8Wn7f9RW7:APA91bHrhTqmUGJ7DrDdSERGBCVMpCJKfudHawSG26VOP6X-KRfjTNkuRAibByt9Od3mgePYfTa7MTmO8jngzoTPseqe1Rz5rnzcuWdBfZ01arE6Rj1vy8QT2nfMKvsNYGwLKY-NglCl','+919904405259');
/*!40000 ALTER TABLE `merchant_149_token_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_150_slots`
--

DROP TABLE IF EXISTS `merchant_150_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_150_slots` (
  `EPOCHID` int NOT NULL AUTO_INCREMENT,
  `FromEpoHash` varchar(20) NOT NULL,
  `ToEpoHash` varchar(20) NOT NULL,
  `CURTOKEN` varchar(20) NOT NULL,
  `MAXTOKEN` int NOT NULL,
  PRIMARY KEY (`EPOCHID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_150_slots`
--

LOCK TABLES `merchant_150_slots` WRITE;
/*!40000 ALTER TABLE `merchant_150_slots` DISABLE KEYS */;
INSERT INTO `merchant_150_slots` VALUES (1,'1612915320','1612920600','12',10),(2,'1612922400','1612927800','25',25);
/*!40000 ALTER TABLE `merchant_150_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_153_token_log`
--

DROP TABLE IF EXISTS `merchant_153_token_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_153_token_log` (
  `TokenID` int NOT NULL,
  `Position` int NOT NULL,
  `FirebaseID` varchar(255) DEFAULT NULL,
  `contact` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TokenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_153_token_log`
--

LOCK TABLES `merchant_153_token_log` WRITE;
/*!40000 ALTER TABLE `merchant_153_token_log` DISABLE KEYS */;
INSERT INTO `merchant_153_token_log` VALUES (1,1,'eJX3eiW3RFabH9ODO_vQWE:APA91bE4EaT7Idkb-ZBITd6fssuagHuEnePwS7LsMZY23_eoXml6uN-hXNbDnf6BhRjoUwyJsLlKaJzOOMkTxnX-j5MMo5Abn0gvmzsC8BtrFXyJrimlKb-xVRhD4WUtfs-TZDX8X1D-','+919904405259'),(2,-6,'eJX3eiW3RFabH9ODO_vQWE:APA91bE4EaT7Idkb-ZBITd6fssuagHuEnePwS7LsMZY23_eoXml6uN-hXNbDnf6BhRjoUwyJsLlKaJzOOMkTxnX-j5MMo5Abn0gvmzsC8BtrFXyJrimlKb-xVRhD4WUtfs-TZDX8X1D-','+919904405259'),(3,0,'eJX3eiW3RFabH9ODO_vQWE:APA91bE4EaT7Idkb-ZBITd6fssuagHuEnePwS7LsMZY23_eoXml6uN-hXNbDnf6BhRjoUwyJsLlKaJzOOMkTxnX-j5MMo5Abn0gvmzsC8BtrFXyJrimlKb-xVRhD4WUtfs-TZDX8X1D-','+919904405259'),(4,-5,'eJX3eiW3RFabH9ODO_vQWE:APA91bE4EaT7Idkb-ZBITd6fssuagHuEnePwS7LsMZY23_eoXml6uN-hXNbDnf6BhRjoUwyJsLlKaJzOOMkTxnX-j5MMo5Abn0gvmzsC8BtrFXyJrimlKb-xVRhD4WUtfs-TZDX8X1D-','+919904405259'),(5,-5,'eJX3eiW3RFabH9ODO_vQWE:APA91bE4EaT7Idkb-ZBITd6fssuagHuEnePwS7LsMZY23_eoXml6uN-hXNbDnf6BhRjoUwyJsLlKaJzOOMkTxnX-j5MMo5Abn0gvmzsC8BtrFXyJrimlKb-xVRhD4WUtfs-TZDX8X1D-','+919904405259'),(6,0,'eJX3eiW3RFabH9ODO_vQWE:APA91bE4EaT7Idkb-ZBITd6fssuagHuEnePwS7LsMZY23_eoXml6uN-hXNbDnf6BhRjoUwyJsLlKaJzOOMkTxnX-j5MMo5Abn0gvmzsC8BtrFXyJrimlKb-xVRhD4WUtfs-TZDX8X1D-','+919904405259');
/*!40000 ALTER TABLE `merchant_153_token_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_154_slots`
--

DROP TABLE IF EXISTS `merchant_154_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_154_slots` (
  `EPOCHID` int NOT NULL AUTO_INCREMENT,
  `FromEpoHash` varchar(20) NOT NULL,
  `ToEpoHash` varchar(20) NOT NULL,
  `CURTOKEN` varchar(20) NOT NULL,
  `MAXTOKEN` int NOT NULL,
  PRIMARY KEY (`EPOCHID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_154_slots`
--

LOCK TABLES `merchant_154_slots` WRITE;
/*!40000 ALTER TABLE `merchant_154_slots` DISABLE KEYS */;
INSERT INTO `merchant_154_slots` VALUES (1,'1619040300','1619049420','10',8);
/*!40000 ALTER TABLE `merchant_154_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_154_token_log`
--

DROP TABLE IF EXISTS `merchant_154_token_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_154_token_log` (
  `TokenID` int NOT NULL,
  `Position` int NOT NULL,
  `FirebaseID` varchar(255) DEFAULT NULL,
  `contact` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TokenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_154_token_log`
--

LOCK TABLES `merchant_154_token_log` WRITE;
/*!40000 ALTER TABLE `merchant_154_token_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_154_token_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_157_slots`
--

DROP TABLE IF EXISTS `merchant_157_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_157_slots` (
  `EPOCHID` int NOT NULL AUTO_INCREMENT,
  `FromEpoHash` varchar(20) NOT NULL,
  `ToEpoHash` varchar(20) NOT NULL,
  `CURTOKEN` varchar(20) NOT NULL,
  `MAXTOKEN` int NOT NULL,
  PRIMARY KEY (`EPOCHID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_157_slots`
--

LOCK TABLES `merchant_157_slots` WRITE;
/*!40000 ALTER TABLE `merchant_157_slots` DISABLE KEYS */;
INSERT INTO `merchant_157_slots` VALUES (1,'1619636400','1619640000','5',4),(2,'1619712000','1619715600','5',4);
/*!40000 ALTER TABLE `merchant_157_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_157_token_log`
--

DROP TABLE IF EXISTS `merchant_157_token_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_157_token_log` (
  `TokenID` int NOT NULL,
  `Position` int NOT NULL,
  `FirebaseID` varchar(255) DEFAULT NULL,
  `contact` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TokenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_157_token_log`
--

LOCK TABLES `merchant_157_token_log` WRITE;
/*!40000 ALTER TABLE `merchant_157_token_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_157_token_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_1_slots`
--

DROP TABLE IF EXISTS `merchant_1_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_1_slots` (
  `EPOCHID` int NOT NULL AUTO_INCREMENT,
  `FromEpoHash` varchar(20) NOT NULL,
  `ToEpoHash` varchar(20) NOT NULL,
  `CURTOKEN` varchar(20) NOT NULL,
  `MAXTOKEN` int NOT NULL,
  PRIMARY KEY (`EPOCHID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_1_slots`
--

LOCK TABLES `merchant_1_slots` WRITE;
/*!40000 ALTER TABLE `merchant_1_slots` DISABLE KEYS */;
INSERT INTO `merchant_1_slots` VALUES (1,'1621465500','1621467900','2',1);
/*!40000 ALTER TABLE `merchant_1_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_1_token_log`
--

DROP TABLE IF EXISTS `merchant_1_token_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_1_token_log` (
  `TokenID` int NOT NULL,
  `Position` int NOT NULL,
  `FirebaseID` varchar(255) DEFAULT NULL,
  `contact` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TokenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_1_token_log`
--

LOCK TABLES `merchant_1_token_log` WRITE;
/*!40000 ALTER TABLE `merchant_1_token_log` DISABLE KEYS */;
INSERT INTO `merchant_1_token_log` VALUES (1,-6,'cMsfCuwaTIKk0a5BOLClul:APA91bElHspoFEo753Oup74s9NngAwiG2w6y3ZJ8bvsy91qdVGIegqbnISEcy5fKU2RhcXRO0Q1UgNTFOyxb1w8TJNgU3ShmGzxCUtwot71PHMyfzHnN-G99UeFqbYgprAd232ELEd2N','+919440583701'),(2,1,'cMsfCuwaTIKk0a5BOLClul:APA91bElHspoFEo753Oup74s9NngAwiG2w6y3ZJ8bvsy91qdVGIegqbnISEcy5fKU2RhcXRO0Q1UgNTFOyxb1w8TJNgU3ShmGzxCUtwot71PHMyfzHnN-G99UeFqbYgprAd232ELEd2N','+919440583701');
/*!40000 ALTER TABLE `merchant_1_token_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_counters`
--

DROP TABLE IF EXISTS `merchant_counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_counters` (
  `idmerchant_counters` int NOT NULL AUTO_INCREMENT,
  `counterid` int NOT NULL,
  `issuedtoken` int NOT NULL,
  `status` int NOT NULL DEFAULT '2',
  `date` datetime NOT NULL,
  PRIMARY KEY (`idmerchant_counters`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_counters`
--

LOCK TABLES `merchant_counters` WRITE;
/*!40000 ALTER TABLE `merchant_counters` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_geohases_Storage`
--

DROP TABLE IF EXISTS `merchant_geohases_Storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_geohases_Storage` (
  `merchant_geohash` varchar(255) NOT NULL,
  PRIMARY KEY (`merchant_geohash`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_geohases_Storage`
--

LOCK TABLES `merchant_geohases_Storage` WRITE;
/*!40000 ALTER TABLE `merchant_geohases_Storage` DISABLE KEYS */;
INSERT INTO `merchant_geohases_Storage` VALUES ('merchant_125_teggt'),('merchant_125_tshvv'),('merchant_126_teggj'),('merchant_126_teggm'),('merchant_126_teggt'),('merchant_128_teggt'),('merchant_133_tepex'),('merchant_135_teggt'),('merchant_135_teggv'),('merchant_136_tegfv'),('merchant_136_teggj'),('merchant_136_teggk'),('merchant_136_teggt'),('merchant_137_teggk'),('merchant_137_teggt'),('merchant_144_teggt'),('merchant_147_teggt'),('merchant_147_ts5eh'),('merchant_148_teggt'),('merchant_148_tepex'),('merchant_149_teggt'),('merchant_149_tepex'),('merchant_149_ts5du'),('merchant_150_tegb3'),('merchant_150_teggt'),('merchant_152_tepex'),('merchant_153_teggt'),('merchant_154_tek3y'),('merchant_155_tdr1z'),('merchant_155_ttncp'),('merchant_156_ts5du'),('merchant_157_tepg3'),('merchant_158_tepex'),('merchant_159_tdr1z'),('merchant_160_ts5dv'),('merchant_162_tdr1z'),('merchant_1_teper'),('merchant_1_tepex');
/*!40000 ALTER TABLE `merchant_geohases_Storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_token_log`
--

DROP TABLE IF EXISTS `merchant_token_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_token_log` (
  `TokenID` int NOT NULL,
  `Position` int NOT NULL,
  `FirebaseID` varchar(255) DEFAULT NULL,
  `contact` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TokenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_token_log`
--

LOCK TABLES `merchant_token_log` WRITE;
/*!40000 ALTER TABLE `merchant_token_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_token_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchantlatestversion`
--

DROP TABLE IF EXISTS `merchantlatestversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchantlatestversion` (
  `version` int NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantlatestversion`
--

LOCK TABLES `merchantlatestversion` WRITE;
/*!40000 ALTER TABLE `merchantlatestversion` DISABLE KEYS */;
INSERT INTO `merchantlatestversion` VALUES (5);
/*!40000 ALTER TABLE `merchantlatestversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchantpoints`
--

DROP TABLE IF EXISTS `merchantpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchantpoints` (
  `idmerchantpoints` int NOT NULL AUTO_INCREMENT,
  `merchantid` varchar(128) DEFAULT NULL,
  `totalpoints` int DEFAULT NULL,
  `existingpoints` int DEFAULT NULL,
  `lastaddedpointson` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmerchantpoints`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantpoints`
--

LOCK TABLES `merchantpoints` WRITE;
/*!40000 ALTER TABLE `merchantpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchantpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchantpointsavailed`
--

DROP TABLE IF EXISTS `merchantpointsavailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchantpointsavailed` (
  `idmerchantpointsavailed` int NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `pointsused` int DEFAULT '0',
  `usedon` varchar(128) DEFAULT '""',
  PRIMARY KEY (`idmerchantpointsavailed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantpointsavailed`
--

LOCK TABLES `merchantpointsavailed` WRITE;
/*!40000 ALTER TABLE `merchantpointsavailed` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchantpointsavailed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchantreceipts`
--

DROP TABLE IF EXISTS `merchantreceipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchantreceipts` (
  `idmerchantreceipts` int NOT NULL AUTO_INCREMENT,
  `receiptprefix` varchar(45) NOT NULL,
  `receiptnumber` int NOT NULL,
  `receiptsuffix` varchar(45) NOT NULL,
  PRIMARY KEY (`idmerchantreceipts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantreceipts`
--

LOCK TABLES `merchantreceipts` WRITE;
/*!40000 ALTER TABLE `merchantreceipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchantreceipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotations`
--

DROP TABLE IF EXISTS `negotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotations` (
  `idnegotations` int NOT NULL AUTO_INCREMENT,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int NOT NULL,
  `maxamount` int NOT NULL,
  `DiscountExpectation` int NOT NULL,
  `ShoppingProbableDates` varchar(45) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `delivered` int NOT NULL DEFAULT '0',
  `adnotification` int NOT NULL,
  PRIMARY KEY (`idnegotations`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations`
--

LOCK TABLES `negotations` WRITE;
/*!40000 ALTER TABLE `negotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotations_teggt`
--

DROP TABLE IF EXISTS `negotations_teggt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotations_teggt` (
  `idnegotations` int NOT NULL AUTO_INCREMENT,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int NOT NULL,
  `maxamount` int NOT NULL,
  `DiscountExpectation` int NOT NULL,
  `ShoppingProbableDates` varchar(45) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `delivered` int NOT NULL DEFAULT '0',
  `adnotification` int NOT NULL,
  PRIMARY KEY (`idnegotations`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations_teggt`
--

LOCK TABLES `negotations_teggt` WRITE;
/*!40000 ALTER TABLE `negotations_teggt` DISABLE KEYS */;
INSERT INTO `negotations_teggt` VALUES (1,'+919904405259','merchant_128','teggt',111,999,5,'3-1-2021 to 3-1-2021','2.1.21',0,2),(2,'+919904405259','merchant_128','teggt',0,222,2,'3-1-2021 to 3-1-2021','abcdef',0,2),(3,'+919904405259','merchant_128','teggt',0,222,2,'3-1-2021 to 3-1-2021','abcdef',0,2),(4,'+919904405259','merchant_128','teggt',0,111,1,'3-1-2021 to 3-1-2021','My  test',0,2),(5,'+919904405259','merchant_128','teggt',444,555,99,'3-1-2021 to 3-1-2021','sunday fun day',0,2),(6,'+919904405259','merchant_128','teggt',1,5,2,'3-1-2021 to 3-1-2021','positive',0,2),(7,'+919904405259','merchant_126','teggt',99,123,5,'4-1-2021 to 4-1-2021','Chat testing 4.1.21',0,3),(8,'+919904405259','merchant_126','teggt',6,12,15,'4-1-2021 to 5-1-2021','New testing advt',0,4),(9,'+919904405259','merchant_126','teggt',2,12,5,'4-1-2021 to 4-1-2021','advt negative response',0,5),(10,'+919904405259','merchant_126','teggt',10,23,6,'4-1-2021 to 4-1-2021','same advt 2 time negotiate',0,5),(11,'+919904405259','merchant_126','teggt',3,25,5,'4-1-2021 to 4-1-2021','negative response',0,6),(12,'+918320617313','merchant_126','teggt',12,100,5,'5-1-2021 to 5-1-2021','new test 5.1.21',0,14),(13,'+919904405259','merchant_126','teggt',5,50,2,'5-1-2021 to 5-1-2021','new test 5.1.21 @9904405259 user',0,14),(14,'+919904405259','merchant_126','teggt',2,12,5,'6-1-2021 to 6-1-2021','vsyshhs',0,17),(15,'+919904405259','merchant_136','teggt',12,123,5,'11-1-2021 to 11-1-2021','new test 11.1.21',0,2),(16,'+918200785387','merchant_135','teggt',50,100,20,'16-1-2021 to 16-1-2021','nddb',0,8),(17,'+919904405259','merchant_136','teggt',111,111,99,'17-1-2021 to 17-1-2021','testing 17.1.21',0,11),(18,'+919904405259','merchant_136','teggt',105,111,12,'17-1-2021 to 17-1-2021','testing 17.1.21',0,10),(19,'+919904405259','merchant_135','teggt',145,1234,25,'27-1-2021 to 27-1-2021','hdudheis',0,15),(20,'+919904405259','merchant_136','teggt',2,10,5,'27-1-2021 to 27-1-2021','Today deal',0,17),(21,'+919904405259','merchant_136','teggt',7,12,5,'31-1-2021 to 31-1-2021','Negotiate',0,18),(22,'+918320617313','merchant_136','teggt',11,333,11,'31-1-2021 to 31-1-2021','negotiate  Nil',0,18),(23,'+918320617313','merchant_136','teggt',33,99,1,'31-1-2021 to 31-1-2021','2nd other user ',0,18),(24,'+919904405259','merchant_136','teggt',1,11,2,'31-1-2021 to 31-1-2021','New post ',0,18),(25,'+918200785387','merchant_144','teggt',10,100,5,'31-1-2021 to 31-1-2021','test',0,21),(26,'+919904405259','merchant_136','teggt',5,25,25,'1-2-2021 to 1-2-2021','negotiate',0,25),(27,'+918200785387','merchant_148','teggt',8888,9999,88,'7-2-2021 to 7-2-2021','bxbxbd',0,29),(28,'+918320617313','merchant_150','teggt',11,123,25,'7-2-2021 to 8-2-2021','hehe',0,30),(29,'+919904405259','merchant_149','teggt',1,12,2,'7-2-2021 to 7-2-2021','heuhe',0,32),(30,'+919904405259','merchant_149','teggt',2,5,2,'7-2-2021 to 7-2-2021','byh',0,32),(31,'+919904405259','merchant_149','teggt',21,123,25,'7-2-2021 to 7-2-2021','bhg',0,32),(32,'+919904405259','merchant_149','teggt',1,12,5,'7-2-2021 to 7-2-2021','vhhh',0,32),(33,'+919904405259','merchant_149','teggt',555,999,15,'7-4-2021 to 7-4-2021','nego',0,37),(34,'+919904405259','merchant_149','teggt',33,333,2,'7-4-2021 to 7-4-2021','bhh',0,37),(35,'+919904405259','merchant_149','teggt',2,11,2,'12-4-2021 to 12-4-2021','sgsg',0,38),(36,'+919904405259','merchant_153','teggt',1,2,10,'21-4-2021 to 22-4-2021','abc',0,42);
/*!40000 ALTER TABLE `negotations_teggt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotations_tepex`
--

DROP TABLE IF EXISTS `negotations_tepex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotations_tepex` (
  `idnegotations` int NOT NULL AUTO_INCREMENT,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int NOT NULL,
  `maxamount` int NOT NULL,
  `DiscountExpectation` int NOT NULL,
  `ShoppingProbableDates` varchar(45) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `delivered` int NOT NULL DEFAULT '0',
  `adnotification` int NOT NULL,
  PRIMARY KEY (`idnegotations`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations_tepex`
--

LOCK TABLES `negotations_tepex` WRITE;
/*!40000 ALTER TABLE `negotations_tepex` DISABLE KEYS */;
INSERT INTO `negotations_tepex` VALUES (1,'+919703848204','merchant_1','tepex',0,2,15,'19-5-2021 to 19-5-2021','stockings',0,28);
/*!40000 ALTER TABLE `negotations_tepex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate`
--

DROP TABLE IF EXISTS `negotiate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate`
--

LOCK TABLES `negotiate` WRITE;
/*!40000 ALTER TABLE `negotiate` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotiate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr1z`
--

DROP TABLE IF EXISTS `negotiate_tdr1z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_tdr1z` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1z`
--

LOCK TABLES `negotiate_tdr1z` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1z` DISABLE KEYS */;
INSERT INTO `negotiate_tdr1z` VALUES (1,1,'tdr1z',0,0),(2,2,'tdr1z',0,0),(3,3,'tdr1z',0,0),(4,4,'tdr1z',0,0),(5,5,'tdr1z',0,0);
/*!40000 ALTER TABLE `negotiate_tdr1z` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tegb3`
--

DROP TABLE IF EXISTS `negotiate_tegb3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_tegb3` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tegb3`
--

LOCK TABLES `negotiate_tegb3` WRITE;
/*!40000 ALTER TABLE `negotiate_tegb3` DISABLE KEYS */;
INSERT INTO `negotiate_tegb3` VALUES (1,1,'tegb3',0,0);
/*!40000 ALTER TABLE `negotiate_tegb3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tegfv`
--

DROP TABLE IF EXISTS `negotiate_tegfv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_tegfv` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tegfv`
--

LOCK TABLES `negotiate_tegfv` WRITE;
/*!40000 ALTER TABLE `negotiate_tegfv` DISABLE KEYS */;
INSERT INTO `negotiate_tegfv` VALUES (1,1,'tegfv',0,0),(2,2,'tegfv',0,0);
/*!40000 ALTER TABLE `negotiate_tegfv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_teggj`
--

DROP TABLE IF EXISTS `negotiate_teggj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_teggj` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_teggj`
--

LOCK TABLES `negotiate_teggj` WRITE;
/*!40000 ALTER TABLE `negotiate_teggj` DISABLE KEYS */;
INSERT INTO `negotiate_teggj` VALUES (1,1,'teggj',0,0),(2,2,'teggj',0,0),(3,3,'teggj',0,0);
/*!40000 ALTER TABLE `negotiate_teggj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_teggk`
--

DROP TABLE IF EXISTS `negotiate_teggk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_teggk` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_teggk`
--

LOCK TABLES `negotiate_teggk` WRITE;
/*!40000 ALTER TABLE `negotiate_teggk` DISABLE KEYS */;
INSERT INTO `negotiate_teggk` VALUES (1,1,'teggk',0,0),(2,2,'teggk',0,0),(3,3,'teggk',0,0),(4,4,'teggk',0,0);
/*!40000 ALTER TABLE `negotiate_teggk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_teggt`
--

DROP TABLE IF EXISTS `negotiate_teggt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_teggt` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_teggt`
--

LOCK TABLES `negotiate_teggt` WRITE;
/*!40000 ALTER TABLE `negotiate_teggt` DISABLE KEYS */;
INSERT INTO `negotiate_teggt` VALUES (1,1,'teggt',1,0),(2,2,'teggt',1,0),(3,3,'teggt',0,0),(4,4,'teggt',1,0),(5,5,'teggt',0,0),(6,6,'teggt',0,0),(7,7,'teggt',1,0),(8,8,'teggt',1,0),(9,9,'teggt',0,0),(10,10,'teggt',1,0),(11,11,'teggt',1,0),(12,12,'teggt',0,0),(13,13,'teggt',0,0),(14,14,'teggt',1,0),(15,15,'teggt',1,0),(16,16,'teggt',1,0),(17,17,'teggt',1,0),(18,18,'teggt',1,0),(19,19,'teggt',0,0),(20,20,'teggt',1,0),(21,21,'teggt',1,0),(22,22,'teggt',1,0),(23,23,'teggt',1,0),(24,24,'teggt',1,0),(25,25,'teggt',1,0),(26,26,'teggt',1,0),(27,27,'teggt',1,0),(28,28,'teggt',0,0),(29,29,'teggt',1,0),(30,30,'teggt',1,0),(31,31,'teggt',1,0),(32,32,'teggt',1,0),(33,33,'teggt',1,0),(34,34,'teggt',1,0),(35,35,'teggt',1,0),(36,36,'teggt',0,0),(37,37,'teggt',1,0),(38,38,'teggt',1,0),(39,39,'teggt',1,0),(40,40,'teggt',1,0),(41,41,'teggt',1,0),(42,42,'teggt',1,0),(43,43,'teggt',1,0),(44,44,'teggt',1,0),(45,45,'teggt',1,0);
/*!40000 ALTER TABLE `negotiate_teggt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_teggv`
--

DROP TABLE IF EXISTS `negotiate_teggv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_teggv` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_teggv`
--

LOCK TABLES `negotiate_teggv` WRITE;
/*!40000 ALTER TABLE `negotiate_teggv` DISABLE KEYS */;
INSERT INTO `negotiate_teggv` VALUES (1,1,'teggv',0,0);
/*!40000 ALTER TABLE `negotiate_teggv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tek3y`
--

DROP TABLE IF EXISTS `negotiate_tek3y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_tek3y` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tek3y`
--

LOCK TABLES `negotiate_tek3y` WRITE;
/*!40000 ALTER TABLE `negotiate_tek3y` DISABLE KEYS */;
INSERT INTO `negotiate_tek3y` VALUES (1,1,'tek3y',1,0),(2,2,'tek3y',0,0),(3,3,'tek3y',0,0),(4,4,'tek3y',0,0),(5,5,'tek3y',0,0);
/*!40000 ALTER TABLE `negotiate_tek3y` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tepex`
--

DROP TABLE IF EXISTS `negotiate_tepex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_tepex` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tepex`
--

LOCK TABLES `negotiate_tepex` WRITE;
/*!40000 ALTER TABLE `negotiate_tepex` DISABLE KEYS */;
INSERT INTO `negotiate_tepex` VALUES (1,1,'tepex',0,0),(2,2,'tepex',0,0),(3,3,'tepex',0,0),(4,4,'tepex',0,0),(5,5,'tepex',0,0),(6,6,'tepex',0,0),(7,7,'tepex',0,0),(8,8,'tepex',0,0),(9,9,'tepex',0,0),(10,10,'tepex',0,0),(11,11,'tepex',0,0),(12,12,'tepex',0,0),(13,13,'tepex',0,0),(14,14,'tepex',0,0),(15,15,'tepex',0,0),(16,16,'tepex',0,0),(17,17,'tepex',0,0),(18,18,'tepex',0,0),(19,19,'tepex',0,0),(20,20,'tepex',0,0),(21,21,'tepex',0,0),(22,22,'tepex',0,0),(23,23,'tepex',0,0),(24,24,'tepex',0,0),(25,25,'tepex',0,0),(26,26,'tepex',1,0),(27,27,'tepex',0,0),(28,28,'tepex',1,0);
/*!40000 ALTER TABLE `negotiate_tepex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tepg3`
--

DROP TABLE IF EXISTS `negotiate_tepg3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_tepg3` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tepg3`
--

LOCK TABLES `negotiate_tepg3` WRITE;
/*!40000 ALTER TABLE `negotiate_tepg3` DISABLE KEYS */;
INSERT INTO `negotiate_tepg3` VALUES (1,1,'tepg3',0,0),(2,2,'tepg3',0,0);
/*!40000 ALTER TABLE `negotiate_tepg3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_ts5du`
--

DROP TABLE IF EXISTS `negotiate_ts5du`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_ts5du` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_ts5du`
--

LOCK TABLES `negotiate_ts5du` WRITE;
/*!40000 ALTER TABLE `negotiate_ts5du` DISABLE KEYS */;
INSERT INTO `negotiate_ts5du` VALUES (1,1,'ts5du',0,0),(2,2,'ts5du',0,0),(3,3,'ts5du',0,0),(4,4,'ts5du',0,0),(5,5,'ts5du',0,0);
/*!40000 ALTER TABLE `negotiate_ts5du` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_ts5dv`
--

DROP TABLE IF EXISTS `negotiate_ts5dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_ts5dv` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_ts5dv`
--

LOCK TABLES `negotiate_ts5dv` WRITE;
/*!40000 ALTER TABLE `negotiate_ts5dv` DISABLE KEYS */;
INSERT INTO `negotiate_ts5dv` VALUES (1,-1,'ts5dv',0,0),(2,-1,'ts5dv',0,0),(3,-1,'ts5dv',0,0),(4,-1,'ts5dv',0,0),(5,-1,'ts5dv',0,0),(6,-1,'ts5dv',0,0),(7,-1,'ts5dv',0,0),(8,-1,'ts5dv',0,0),(9,-1,'ts5dv',0,0),(10,-1,'ts5dv',0,0),(11,1,'ts5dv',0,0),(12,2,'ts5dv',0,0),(13,3,'ts5dv',0,0),(14,4,'ts5dv',0,0),(15,5,'ts5dv',0,0);
/*!40000 ALTER TABLE `negotiate_ts5dv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_ts5eh`
--

DROP TABLE IF EXISTS `negotiate_ts5eh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_ts5eh` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_ts5eh`
--

LOCK TABLES `negotiate_ts5eh` WRITE;
/*!40000 ALTER TABLE `negotiate_ts5eh` DISABLE KEYS */;
INSERT INTO `negotiate_ts5eh` VALUES (1,1,'ts5eh',0,0),(2,2,'ts5eh',0,0);
/*!40000 ALTER TABLE `negotiate_ts5eh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_ttncp`
--

DROP TABLE IF EXISTS `negotiate_ttncp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_ttncp` (
  `idnegotiate` int NOT NULL AUTO_INCREMENT,
  `adId` int NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int NOT NULL DEFAULT '0',
  `minamount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_ttncp`
--

LOCK TABLES `negotiate_ttncp` WRITE;
/*!40000 ALTER TABLE `negotiate_ttncp` DISABLE KEYS */;
INSERT INTO `negotiate_ttncp` VALUES (1,1,'ttncp',0,0);
/*!40000 ALTER TABLE `negotiate_ttncp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiationsresponse`
--

DROP TABLE IF EXISTS `negotiationsresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiationsresponse` (
  `idnegotiationsresponse` int NOT NULL AUTO_INCREMENT,
  `idnegotiations` int NOT NULL,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int DEFAULT NULL,
  `maxamount` int DEFAULT NULL,
  `Discount` int NOT NULL DEFAULT '0',
  `ShoppingallowedDates` varchar(512) DEFAULT NULL,
  `advanceNeed` int DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `negotiationsresponse` int NOT NULL DEFAULT '0',
  `respondedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notificationid` int NOT NULL,
  `canPostToStatus` int DEFAULT NULL,
  PRIMARY KEY (`idnegotiationsresponse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse`
--

LOCK TABLES `negotiationsresponse` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotiationsresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiationsresponse_teggt`
--

DROP TABLE IF EXISTS `negotiationsresponse_teggt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiationsresponse_teggt` (
  `idnegotiationsresponse` int NOT NULL AUTO_INCREMENT,
  `idnegotiations` int NOT NULL,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int DEFAULT NULL,
  `maxamount` int DEFAULT NULL,
  `Discount` int NOT NULL DEFAULT '0',
  `ShoppingallowedDates` varchar(512) DEFAULT NULL,
  `advanceNeed` int DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `negotiationsresponse` int NOT NULL DEFAULT '0',
  `respondedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notificationid` int NOT NULL,
  `canPostToStatus` int DEFAULT NULL,
  PRIMARY KEY (`idnegotiationsresponse`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse_teggt`
--

LOCK TABLES `negotiationsresponse_teggt` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse_teggt` DISABLE KEYS */;
INSERT INTO `negotiationsresponse_teggt` VALUES (1,1,'+919904405259','merchant_128','teggt',111,999,5,'3-1-2021 to 3-1-2021',1,'2.1.21',1,'2021-01-02 19:06:13',2,0),(2,2,'+919904405259','merchant_128','teggt',0,222,2,'3-1-2021 to 3-1-2021',0,'abcdef',2,'2021-01-02 19:31:49',2,0),(3,4,'+919904405259','merchant_128','teggt',0,111,1,'3-1-2021 to 3-1-2021',0,'My  test',2,'2021-01-02 19:32:04',2,0),(4,3,'+919904405259','merchant_128','teggt',0,222,2,'3-1-2021 to 3-1-2021',0,'abcdef',2,'2021-01-02 19:35:47',2,0),(5,5,'+919904405259','merchant_128','teggt',444,555,99,'3-1-2021 to 3-1-2021',0,'sunday fun day',2,'2021-01-02 19:40:41',2,0),(6,6,'+919904405259','merchant_128','teggt',1,5,2,'3-1-2021 to 3-1-2021',111,'positive',1,'2021-01-02 20:37:19',2,0),(7,7,'+919904405259','merchant_126','teggt',99,123,5,'4-1-2021 to 4-1-2021',0,'Chat testing 4.1.21',2,'2021-01-04 10:27:01',3,1),(8,8,'+919904405259','merchant_126','teggt',6,12,15,'4-1-2021 to 5-1-2021',1100,'New testing advt',1,'2021-01-04 10:27:13',4,0),(9,9,'+919904405259','merchant_126','teggt',2,12,5,'4-1-2021 to 4-1-2021',0,'advt negative response',2,'2021-01-04 10:44:41',5,1),(10,11,'+919904405259','merchant_126','teggt',3,25,5,'4-1-2021 to 4-1-2021',0,'negative response',2,'2021-01-04 10:44:43',6,1),(11,10,'+919904405259','merchant_126','teggt',10,23,6,'4-1-2021 to 4-1-2021',1500,'same advt 2 time negotiate',1,'2021-01-04 11:12:53',5,1),(12,12,'+918320617313','merchant_126','teggt',12,100,5,'5-1-2021 to 5-1-2021',101,'new test 5.1.21',1,'2021-01-05 17:49:08',14,0),(13,13,'+919904405259','merchant_126','teggt',5,50,2,'5-1-2021 to 5-1-2021',0,'new test 5.1.21 @9904405259 user',2,'2021-01-05 17:49:14',14,0),(14,7,'+919904405259','merchant_126','teggt',99,123,5,'4-1-2021 to 4-1-2021',500,'Chat testing 4.1.21',1,'2021-01-06 15:49:55',3,1),(15,14,'+919904405259','merchant_126','teggt',2,12,5,'6-1-2021 to 6-1-2021',1001,'vsyshhs',1,'2021-01-06 15:54:55',17,0),(16,15,'+919904405259','merchant_136','teggt',12,123,5,'11-1-2021 to 11-1-2021',111,'new test 11.1.21',1,'2021-01-11 17:41:54',2,0),(17,16,'+918200785387','merchant_135','teggt',50,100,20,'16-1-2021 to 16-1-2021',500,'nddb',1,'2021-01-16 14:41:14',8,0),(18,17,'+919904405259','merchant_136','teggt',111,111,99,'17-1-2021 to 17-1-2021',1008,'testing 17.1.21',1,'2021-01-17 16:41:36',11,0),(19,18,'+919904405259','merchant_136','teggt',105,111,12,'17-1-2021 to 17-1-2021',0,'testing 17.1.21',2,'2021-01-17 16:41:39',10,1),(20,20,'+919904405259','merchant_136','teggt',2,10,5,'27-1-2021 to 27-1-2021',1,'Today deal',1,'2021-01-27 17:26:26',17,0),(21,18,'+919904405259','merchant_136','teggt',105,111,12,'17-1-2021 to 17-1-2021',0,'testing 17.1.21',2,'2021-01-27 17:26:29',10,1),(22,17,'+919904405259','merchant_136','teggt',111,111,99,'17-1-2021 to 17-1-2021',0,'testing 17.1.21',2,'2021-01-27 17:26:32',11,1),(23,15,'+919904405259','merchant_136','teggt',12,123,5,'11-1-2021 to 11-1-2021',1,'new test 11.1.21',1,'2021-01-27 17:26:39',2,1),(24,21,'+919904405259','merchant_136','teggt',7,12,5,'31-1-2021 to 31-1-2021',0,'Negotiate',2,'2021-01-31 00:42:42',18,0),(25,22,'+918320617313','merchant_136','teggt',11,333,11,'31-1-2021 to 31-1-2021',100,'negotiate  Nil',1,'2021-01-31 00:42:50',18,0),(26,23,'+918320617313','merchant_136','teggt',33,99,1,'31-1-2021 to 31-1-2021',101,'2nd other user ',1,'2021-01-31 00:46:41',18,0),(27,24,'+919904405259','merchant_136','teggt',1,11,2,'31-1-2021 to 31-1-2021',101,'New post ',1,'2021-01-31 04:35:28',18,0),(28,25,'+918200785387','merchant_144','teggt',10,100,5,'31-1-2021 to 31-1-2021',0,'test',2,'2021-01-31 13:46:26',21,1),(29,24,'+919904405259','merchant_136','teggt',1,11,2,'31-1-2021 to 31-1-2021',500,'New post ',1,'2021-02-01 18:04:55',18,1),(30,27,'+918200785387','merchant_148','teggt',8888,9999,88,'7-2-2021 to 7-2-2021',25,'bxbxbd',1,'2021-02-06 19:48:07',29,1),(31,29,'+919904405259','merchant_149','teggt',1,12,2,'7-2-2021 to 7-2-2021',10,'heuhe',1,'2021-02-07 16:40:00',32,0),(32,30,'+919904405259','merchant_149','teggt',2,5,2,'7-2-2021 to 7-2-2021',0,'byh',2,'2021-02-07 16:40:29',32,0),(33,31,'+919904405259','merchant_149','teggt',21,123,25,'7-2-2021 to 7-2-2021',1,'bhg',1,'2021-02-07 17:01:19',32,0),(34,32,'+919904405259','merchant_149','teggt',1,12,5,'7-2-2021 to 7-2-2021',0,'vhhh',2,'2021-02-07 17:02:14',32,0),(35,33,'+919904405259','merchant_149','teggt',555,999,15,'7-4-2021 to 7-4-2021',0,'nego',1,'2021-04-07 17:59:46',37,0),(36,34,'+919904405259','merchant_149','teggt',33,333,2,'7-4-2021 to 7-4-2021',0,'bhh',2,'2021-04-07 18:13:21',37,1),(37,35,'+919904405259','merchant_149','teggt',2,11,2,'12-4-2021 to 12-4-2021',501,'sgsg',1,'2021-04-12 03:19:33',38,0),(38,36,'+919904405259','merchant_153','teggt',1,2,10,'21-4-2021 to 22-4-2021',250,'abc',1,'2021-04-20 19:01:13',42,0);
/*!40000 ALTER TABLE `negotiationsresponse_teggt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiationsresponse_tepex`
--

DROP TABLE IF EXISTS `negotiationsresponse_tepex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiationsresponse_tepex` (
  `idnegotiationsresponse` int NOT NULL AUTO_INCREMENT,
  `idnegotiations` int NOT NULL,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int DEFAULT NULL,
  `maxamount` int DEFAULT NULL,
  `Discount` int NOT NULL DEFAULT '0',
  `ShoppingallowedDates` varchar(512) DEFAULT NULL,
  `advanceNeed` int DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `negotiationsresponse` int NOT NULL DEFAULT '0',
  `respondedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notificationid` int NOT NULL,
  `canPostToStatus` int DEFAULT NULL,
  PRIMARY KEY (`idnegotiationsresponse`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse_tepex`
--

LOCK TABLES `negotiationsresponse_tepex` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse_tepex` DISABLE KEYS */;
INSERT INTO `negotiationsresponse_tepex` VALUES (1,1,'+919703848204','merchant_1','tepex',0,2,15,'19-5-2021 to 19-5-2021',200,'stockings',1,'2021-05-18 19:02:03',28,1);
/*!40000 ALTER TABLE `negotiationsresponse_tepex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offerreach`
--

DROP TABLE IF EXISTS `offerreach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offerreach` (
  `idofferreach` int NOT NULL AUTO_INCREMENT,
  `merchantId` varchar(128) NOT NULL,
  `offercode` varchar(6) NOT NULL,
  `reached` int NOT NULL DEFAULT '0',
  `viewed` int NOT NULL DEFAULT '0',
  `utilized` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idofferreach`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offerreach`
--

LOCK TABLES `offerreach` WRITE;
/*!40000 ALTER TABLE `offerreach` DISABLE KEYS */;
INSERT INTO `offerreach` VALUES (1,'merchant_0','fg',0,0,0),(2,'merchant_0','',0,0,0),(3,'merchant_2','ghhf',1,0,0),(4,'merchant_8','test',5,0,0),(5,'merchant_8','RICE10',3,0,0),(6,'merchant_8','FLAT50',1,0,0),(7,'merchant_2','sareee',0,0,0),(8,'merchant_2','GH h',1,0,0),(9,'merchant_2','we',1,0,0),(10,'merchant_2','good m',0,0,0),(11,'merchant_21','rq',3,0,0),(12,'merchant_2','150off',1,0,0),(13,'merchant_2','sbzb',1,0,0),(14,'merchant_2','godhd',3,0,0),(15,'merchant_2','gmg',3,0,0),(16,'merchant_33','bshs',6,0,0),(17,'merchant_33','ddd',4,0,0),(18,'merchant_19','575767',6,0,0),(19,'merchant_19','555656',3,0,0),(20,'merchant_19','777778',1,0,0),(21,'merchant_33','dh',1,0,0),(22,'merchant_34','om',1,0,0),(23,'merchant_34','bdnd',1,0,0),(24,'merchant_31','dhh',6,0,0),(25,'merchant_31','but',6,0,0),(26,'merchant_19','55565',3,0,0),(27,'merchant_19','7667',4,0,0),(28,'merchant_19','788',6,0,0),(29,'merchant_31','fod',0,0,0),(30,'merchant_31','bug',8,0,0),(31,'merchant_31','maj',4,0,0),(32,'merchant_31','hx',0,0,0),(33,'merchant_31','bz',2,0,0),(34,'merchant_31','Nik',0,0,0),(35,'merchant_21','dummya',2,0,0),(36,'merchant_34','bun',2,0,0),(37,'merchant_35','truth5',17,0,0),(38,'merchant_35','654rty',17,0,0),(39,'merchant_35','higher',17,0,0),(40,'merchant_21','1234',1,0,0),(41,'merchant_21','7654',7,0,0),(42,'merchant_37','waters',16,0,0),(43,'merchant_37','drinkw',16,0,0),(44,'merchant_21','63636',2,0,0),(45,'merchant_21','bzbshs',2,0,0),(46,'merchant_21','test16',1,0,0),(47,'merchant_21','gggggg',2,0,0),(48,'merchant_37','675645',10,0,0),(49,'merchant_21','justad',1,0,0),(50,'merchant_37','pratha',12,0,0),(51,'merchant_37','dahipr',12,0,0),(52,'merchant_37','narasi',10,0,0),(53,'merchant_37','Uyghur',9,0,0),(54,'merchant_38','HDMI h',9,0,0),(55,'merchant_38','Isaiah',9,0,0),(56,'merchant_38','Jerich',8,0,0),(57,'merchant_38','haha u',9,0,0),(58,'merchant_21','demo',2,0,0),(59,'merchant_31','Ch cc',1,0,0),(60,'merchant_21','test',1,0,0),(61,'merchant_38','washin',7,0,0),(62,'merchant_38','HSP HS',5,0,0),(63,'merchant_31','bill',1,0,0),(64,'merchant_38','icy bi',4,0,0),(65,'merchant_38','jurist',4,0,0),(66,'merchant_31','dn',2,0,0),(67,'merchant_21','qwert',0,0,0),(68,'merchant_21','ff',1,0,0),(69,'merchant_21','qwet',1,0,0),(70,'merchant_38','jains',3,0,0),(71,'merchant_21','Testad',2,0,0),(72,'merchant_21','newad',2,0,0),(73,'merchant_21','ad420',2,0,0),(74,'merchant_21','FLAT50',2,0,0),(75,'merchant_21','ttads',1,0,0),(76,'merchant_17','675456',9,0,0),(77,'merchant_17','HD occ',1,0,0),(78,'merchant_38','testad',2,0,0),(79,'merchant_39','FLAT50',2,0,0),(80,'merchant_39','gopiji',2,0,0),(81,'merchant_40','amitji',1,0,0),(82,'merchant_38','yutrfd',0,0,0),(83,'merchant_20','Chaitu',7,0,0),(84,'merchant_20','NewAd',8,0,0),(85,'merchant_31','rubber',3,0,0),(86,'merchant_20','mayur',3,0,0),(87,'merchant_21','zzads',3,0,0),(88,'merchant_40','flat12',3,0,0),(89,'merchant_40','duke50',7,0,0),(90,'merchant_0','fIRSTa',6,0,0),(91,'merchant_0','new60',6,0,0),(92,'merchant_42','sjs',6,0,0),(93,'merchant_44','creed',5,0,0),(94,'merchant_48','mid',5,0,0),(95,'merchant_48','shs',3,0,0),(96,'merchant_48','bzbz',1,0,0),(97,'merchant_48','un fu',5,0,0),(98,'merchant_50','564345',5,0,0),(99,'merchant_50','345675',4,0,0),(100,'merchant_50','teach1',3,0,0),(101,'merchant_50','kicks',0,0,0),(102,'merchant_48','vsvs',3,0,0),(103,'merchant_53','\nPB075',2,0,0),(104,'merchant_0','testy1',1,0,0),(105,'merchant_53','system',2,0,0),(106,'merchant_53','plugs',2,0,0),(107,'merchant_0','50off',1,0,0),(108,'merchant_53','chi',2,0,0),(109,'merchant_50','inbox',1,0,0),(110,'merchant_54','off50',2,0,0),(111,'merchant_50','login',0,0,0),(112,'merchant_50','issues',3,0,0),(113,'merchant_52','test',1,0,0),(114,'merchant_50','sale30',2,0,0),(115,'merchant_50','keep 5',2,0,0),(116,'merchant_57','krisna',2,0,0),(117,'merchant_57','Jagann',2,0,0),(118,'merchant_58','jaggan',5,0,0),(119,'merchant_60','negoti',1,0,0),(120,'merchant_60','jobs++',1,0,0),(121,'merchant_61','abc123',1,0,0),(122,'merchant_61','bhyfe ',1,0,0),(123,'merchant_64','test',0,0,0),(124,'merchant_60','ggff',2,0,0),(125,'merchant_55','flat50',2,0,0),(126,'merchant_75','556',0,0,0),(127,'merchant_64','okkk',0,0,0),(128,'merchant_55','myads',1,0,0),(129,'merchant_82','5644',2,0,0),(130,'merchant_84','123456',1,0,0),(131,'merchant_82','aka 54',0,0,0),(132,'merchant_55','test',0,0,0),(133,'merchant_84','575667',0,0,0),(134,'merchant_55','trghh',0,0,0),(135,'merchant_55','ttr',0,0,0),(136,'merchant_55','y',0,0,0),(137,'merchant_84','576757',0,0,0),(138,'merchant_64','',0,0,0),(139,'merchant_88','txsed',0,0,0),(140,'merchant_64','',0,0,0),(141,'merchant_84','565767',1,0,0),(142,'merchant_55','flat50',2,0,0),(143,'merchant_55','newad',6,0,0),(144,'merchant_55','gmcd',2,0,0),(145,'merchant_55','Testad',1,0,0),(146,'merchant_64','test44',1,0,0),(147,'merchant_55','late50',4,0,0),(148,'merchant_55','off40',4,0,0),(149,'merchant_55','adfar',2,0,0),(150,'merchant_64','testin',1,0,0),(151,'merchant_64','Mayur9',1,0,0),(152,'merchant_89','',0,0,0),(153,'merchant_89','',0,0,0),(154,'merchant_64','tttt44',1,0,0),(155,'merchant_84','tututu',0,0,0),(156,'merchant_84','576768',0,0,0),(157,'merchant_84','',0,0,0),(158,'merchant_64','ffg55',1,0,0),(159,'merchant_89','',0,0,0),(160,'merchant_1','123467',1,0,0),(161,'merchant_91','new50',1,0,0),(162,'merchant_92','cd',1,0,0),(163,'merchant_92','',5,0,0),(164,'merchant_92','test',11,0,0),(165,'merchant_1','trsttd',1,0,0),(166,'merchant_1','ressd',1,0,0),(167,'merchant_1','gh',1,0,0),(168,'merchant_91','test50',1,0,0),(169,'merchant_93','new50',2,0,0),(170,'merchant_94','34566',1,0,0),(171,'merchant_1','565757',0,0,0),(172,'merchant_94','123341',1,0,0),(173,'merchant_94','134566',1,0,0),(174,'merchant_94','33',1,0,0),(175,'merchant_94','22',3,0,0),(176,'merchant_94','22',3,0,0),(177,'merchant_93','testin',2,0,0),(178,'merchant_92','tegsg',0,0,0),(179,'merchant_93','test50',-2,0,0),(180,'merchant_93','new50',2,0,0),(181,'merchant_93','test90',-1,0,0),(182,'merchant_94','12abc',1,0,0),(183,'merchant_94','13579',1,0,0),(184,'merchant_94','123456',1,0,0),(185,'merchant_93','test10',526,0,0),(186,'merchant_93','new10',3,0,0),(187,'merchant_93','test20',-1,0,0),(188,'merchant_93','test30',3,0,0),(189,'merchant_93','test60',2,0,0),(190,'merchant_93','test70',2,0,0),(191,'merchant_94','150220',1,0,0),(192,'merchant_94','1234',1,0,0),(193,'merchant_94','test12',1,0,0),(194,'merchant_93','new10',0,0,0),(195,'merchant_97','test n',41,0,0),(196,'merchant_97','testim',41,0,0),(197,'merchant_93','test',139,0,0),(198,'merchant_97','test',83,0,0),(199,'merchant_97','check ',35,0,0),(200,'merchant_97','1234',-1,0,0),(201,'merchant_97','1234',-1,0,0),(202,'merchant_97','chkimg',36,0,0),(203,'merchant_97','test32',36,0,0),(204,'merchant_97','testin',1431655713,0,0),(205,'merchant_92','tir',3,0,0),(206,'merchant_92','test',11,0,0),(207,'merchant_98','test',2,0,0),(208,'merchant_98','chi',5,0,0),(209,'merchant_97','testdt',36,0,0),(210,'merchant_97','date12',37,0,0),(211,'merchant_97','dttest',37,0,0),(212,'merchant_93','pubg',35,0,0),(213,'merchant_93','tesy',-1,0,0),(214,'merchant_92','tsgs',3,0,0),(215,'merchant_93','test20',-1,0,0),(216,'merchant_97','testin',1431655713,0,0),(217,'merchant_97','date',38,0,0),(218,'merchant_97','April',-1207959553,0,0),(219,'merchant_93','tesr45',35,0,0),(220,'merchant_97','test12',36,0,0),(221,'merchant_97','nego12',36,0,0),(222,'merchant_97','adstes',36,0,0),(223,'merchant_97','fixed',36,0,0),(224,'merchant_93','test50',-2,0,0),(225,'merchant_93','tesy',-1,0,0),(226,'merchant_93','hello',34,0,0),(227,'merchant_93','test90',-1,0,0),(228,'merchant_99','hey50',13,0,0),(229,'merchant_99','testin',13,0,0),(230,'merchant_99','chinna',11,0,0),(231,'merchant_97','testad',54,0,0),(232,'merchant_99','hy',3,0,0),(233,'merchant_97','testin',1431655713,0,0),(234,'merchant_97','tes12',50,0,0),(235,'merchant_97','testin',1431655713,0,0),(236,'merchant_97','tesimg',48,0,0),(237,'merchant_97','datete',47,0,0),(238,'merchant_97','imgts',46,0,0),(239,'merchant_97','April',-1207959553,0,0),(240,'merchant_97','test27',12,0,0),(241,'merchant_97','test28',12,0,0),(242,'merchant_97','test30',11,0,0),(243,'merchant_97','test31',10,0,0),(244,'merchant_100','test36',9,0,0),(245,'merchant_100','test37',8,0,0),(246,'merchant_97','tesing',9,0,0),(247,'merchant_97','test39',8,0,0),(248,'merchant_93','busy50',17,0,0),(249,'merchant_93','dummy',8,0,0),(250,'merchant_93','rrrr',8,0,0),(251,'merchant_93','yrrhrh',8,0,0),(252,'merchant_100','test35',2,0,0),(253,'merchant_97','test40',6,0,0),(254,'merchant_98','post1',2,0,0),(255,'merchant_97','test41',6,0,0),(256,'merchant_98','mypost',2,0,0),(257,'merchant_97','test43',6,0,0),(258,'merchant_97','test44',6,0,0),(259,'merchant_98','post3',2,0,0),(260,'merchant_97','test45',6,0,0),(261,'merchant_98','post4',2,0,0),(262,'merchant_97','test46',6,0,0),(263,'merchant_98','post5',2,0,0),(264,'merchant_97','test47',6,0,0),(265,'merchant_97','test48',6,0,0),(266,'merchant_97','test49',6,0,0),(267,'merchant_98','apo1',2,0,0),(268,'merchant_97','test50',6,0,0),(269,'merchant_98','apo2',2,0,0),(270,'merchant_98','apo4',2,0,0),(271,'merchant_97','test51',6,0,0),(272,'merchant_98','apo5',2,0,0),(273,'merchant_97','test52',6,0,0),(274,'merchant_97','test53',6,0,0),(275,'merchant_97','test54',6,0,0),(276,'merchant_93','oneAd',4,0,0),(277,'merchant_97','test55',6,0,0),(278,'merchant_93','twoAd',5,0,0),(279,'merchant_97','test56',6,0,0),(280,'merchant_97','test57',6,0,0),(281,'merchant_93','threAd',5,0,0),(282,'merchant_97','test58',6,0,0),(283,'merchant_97','test59',6,0,0),(284,'merchant_93','fourAd',5,0,0),(285,'merchant_97','test60',6,0,0),(286,'merchant_93','fiveAd',5,0,0),(287,'merchant_93','1ad',5,0,0),(288,'merchant_93','2 ad',5,0,0),(289,'merchant_93','123456',3,0,0),(290,'merchant_93','67ru',3,0,0),(291,'merchant_102','gro-20',1,0,0),(292,'merchant_102','FL',2,0,0),(293,'merchant_97','postad',2047,0,0),(294,'merchant_97','postad',2047,0,0),(295,'merchant_97','saree',8,0,0),(296,'merchant_102','DHL',1,0,0),(297,'merchant_102','find',1,0,0),(298,'merchant_97','ad123',6,0,0),(299,'merchant_97','SR 222',6,0,0),(300,'merchant_97','PL6666',6,0,0),(301,'merchant_102','do',1,0,0),(302,'merchant_102','or KFC',1,0,0),(303,'merchant_102','levai',1,0,0),(304,'merchant_102','cake t',1,0,0),(305,'merchant_102','SR302',7,0,0),(306,'merchant_102','SR302',7,0,0),(307,'merchant_102','jsjdkd',1,0,0),(308,'merchant_102','fgukjf',1,0,0),(309,'merchant_97','food54',5,0,0),(310,'merchant_102','SR302',7,0,0),(311,'merchant_92','50 Off',2,0,0),(312,'merchant_92','50%Off',3,0,0),(313,'merchant_91','50%off',0,0,0),(314,'merchant_103','50%off',2,0,0),(315,'merchant_97','ads ',3,0,0),(316,'merchant_92','tanker',2,0,0),(317,'merchant_92','ch hmm',3,0,0),(318,'merchant_93','test',139,0,0),(319,'merchant_105','Indian',2,0,0),(320,'merchant_105','DesiAP',5,0,0),(321,'merchant_92','fan',3,0,0),(322,'merchant_92','pwrsta',3,0,0),(323,'merchant_92','hdnd',2,0,0),(324,'merchant_93','test10',526,0,0),(325,'merchant_97','testin',1431655713,0,0),(326,'merchant_97','testng',2,0,0),(327,'merchant_97','test26',2,0,0),(328,'merchant_107','10%',5119,0,0),(329,'merchant_107','7%',4,0,0),(330,'merchant_107','5%',19,0,0),(331,'merchant_107','Rs 50',19,0,0),(332,'merchant_106','test50',2,0,0),(333,'merchant_107','Rs 100',4,0,0),(334,'merchant_107','20 %',11,0,0),(335,'merchant_107','10%',5119,0,0),(336,'merchant_92','',5,0,0),(337,'merchant_92','   ',5,0,0),(338,'merchant_92','123',2,0,0),(339,'merchant_107','......',5,0,0),(340,'merchant_109','5678',11,0,0),(341,'merchant_92','5+4)_;',3,0,0),(342,'merchant_92','vdjfbd',1,0,0),(343,'merchant_109','5678',11,0,0),(344,'merchant_107','? 25%',11,0,0),(345,'merchant_107','1234%',7,0,0),(346,'merchant_107','50+50%',4,0,0),(347,'merchant_93','test50',-2,0,0),(348,'merchant_93','test10',526,0,0),(349,'merchant_92','NOTIME',2,0,0),(350,'merchant_92','NOTIME',2,0,0),(351,'merchant_92','deal ?',1,0,0),(352,'merchant_92','WATCH',1,0,0),(353,'merchant_92','haha',1,0,0),(354,'merchant_92','NANI',1,0,0),(355,'merchant_92','ctg',1,0,0),(356,'merchant_92','coo',1,0,0),(357,'merchant_92','teysvs',1,0,0),(358,'merchant_110',' fcfcf',1,0,0),(359,'merchant_110','rcrc',1,0,0),(360,'merchant_107','off10%',4,0,0),(361,'merchant_107','25%%%%',5,0,1),(362,'merchant_112','25+25%',191,0,0),(363,'merchant_112','10+5%',4,0,0),(364,'merchant_112','25+25%',191,0,0),(365,'merchant_112','5+5%',3,0,0),(366,'merchant_112','2+5?',4,0,0),(367,'merchant_107','off999',4,0,0),(368,'merchant_97','test',83,0,0),(369,'merchant_112',' off99',5,0,0),(370,'merchant_112','  9999',3,0,0),(371,'merchant_113','OFFER',1,0,0),(372,'merchant_107','F @99',6,0,0),(373,'merchant_107','offer',4,0,0),(374,'merchant_113','GOOGLE',2,0,0),(375,'merchant_113','iijj',4,0,0),(376,'merchant_111','50off',86,0,0),(377,'merchant_111','90off',4,0,0),(378,'merchant_111','my90',60,0,0),(379,'merchant_111','test',-1,0,0),(380,'merchant_97','toys',0,0,0),(381,'merchant_112','999%',4,0,0),(382,'merchant_112','122',3,0,0),(383,'merchant_107','offer1',255,0,0),(384,'merchant_107','offer2',255,0,0),(385,'merchant_112','offer1',1,0,0),(386,'merchant_111','test',-1,0,0),(387,'merchant_111','flat60',4,0,0),(388,'merchant_111','newad',4,0,0),(389,'merchant_111','vsvsvs',31,0,0),(390,'merchant_111','bssbvs',0,0,0),(391,'merchant_113','PULSAR',38,0,0),(392,'merchant_113','ce',0,0,0),(393,'merchant_111','bxxbbx',4,0,0),(394,'merchant_111','chch',4,0,0),(395,'merchant_111','cjhchc',4,0,0),(396,'merchant_111','vjjvvj',8,0,0),(397,'merchant_111','vvvvvv',6,0,0),(398,'merchant_111','pppppp',30,0,0),(399,'merchant_111','bxnxbn',13,0,0),(400,'merchant_111','bxbxbz',6,0,0),(401,'merchant_107','Offer1',255,0,0),(402,'merchant_107','offer2',255,0,0),(403,'merchant_111','newnew',45,0,0),(404,'merchant_113','VANAN',0,0,0),(405,'merchant_112','offerr',589871599,0,0),(406,'merchant_113','Eminem',0,0,0),(407,'merchant_113','cunnin',4,0,0),(408,'merchant_113','NICEHE',14,0,0),(409,'merchant_112','offerr',589871599,0,0),(410,'merchant_112','offer ',15,0,0),(411,'merchant_112','offerr',589871599,0,0),(412,'merchant_107','    . ',9,0,0),(413,'merchant_107','2nd',9,0,0),(414,'merchant_112','..',9,0,0),(415,'merchant_107','3rd of',1,0,0),(416,'merchant_107','... ',3,0,0),(417,'merchant_112','50+50',10,0,0),(418,'merchant_112','25+25',10,0,0),(419,'merchant_112','20+20',5,0,0),(420,'merchant_112','10+10',5,0,0),(421,'merchant_107','offerr',10,0,0),(422,'merchant_113','injec',4,0,0),(423,'merchant_119','offer1',2,0,0),(424,'merchant_118','Ofcour',9,0,0),(425,'merchant_108','offer',0,0,0),(426,'merchant_108','catake',0,0,0),(427,'merchant_117','latest',19,0,0),(428,'merchant_117','latest',19,0,0),(429,'merchant_120','hairrr',0,0,0),(430,'merchant_120','offer',0,0,0),(431,'merchant_122','testad',7,0,0),(432,'merchant_122','testin',7,0,0),(433,'merchant_122','newad',7,0,0),(434,'merchant_1','123456',0,0,0),(435,'merchant_120','newnew',0,0,0),(436,'merchant_1','thunde',7,0,0),(437,'merchant_126','2021',8,0,0),(438,'merchant_128','2021',21,0,0),(439,'merchant_1','offer ',7,0,0),(440,'merchant_1','eminme',6,0,0),(441,'merchant_126','test',8,0,0),(442,'merchant_126','Chat',8,0,0),(443,'merchant_126','offer',1276358971,0,0),(444,'merchant_126','offer',1276358971,0,0),(445,'merchant_126','offer',1276358971,0,0),(446,'merchant_126','offer',1276358971,0,0),(447,'merchant_126','offer',1276358971,0,0),(448,'merchant_126','offer',1276358971,0,0),(449,'merchant_126','offer',1276358971,0,0),(450,'merchant_126','offer',1276358971,0,0),(451,'merchant_126','offer',1276358971,0,0),(452,'merchant_126','offer',1276358971,0,0),(453,'merchant_1','medica',4,0,0),(454,'merchant_1','picpic',0,0,0),(455,'merchant_125','others',7,0,0),(456,'merchant_126','offer',1276358971,0,0),(457,'merchant_1','otherl',3,0,0),(458,'merchant_126','offer',1276358971,0,0),(459,'merchant_126','offer',1276358971,0,0),(460,'merchant_126','offer',1276358971,0,0),(461,'merchant_126','offeri',4,0,0),(462,'merchant_126','offerr',13,0,0),(463,'merchant_125','testin',5,0,0),(464,'merchant_126','offerr',13,0,0),(465,'merchant_128','offer ',12,0,0),(466,'merchant_1','aspiri',24,0,0),(467,'merchant_133','vi',2,0,0),(468,'merchant_1','medic',-1,0,0),(469,'merchant_135','test',27,0,0),(470,'merchant_1','gap',74,0,0),(471,'merchant_136','offerr',268435455,0,0),(472,'merchant_136','offer',726224670,0,0),(473,'merchant_1','hair',21,0,0),(474,'merchant_136','offerr',268435455,0,0),(475,'merchant_136','off',16,0,0),(476,'merchant_136','offer',726224670,0,0),(477,'merchant_136','offer ',726224670,0,0),(478,'merchant_136','offfff',9,0,0),(479,'merchant_1','artart',25,0,0),(480,'merchant_135','tttttt',2,0,0),(481,'merchant_136','offerc',-966892182,0,0),(482,'merchant_136','offerc',-966892182,0,0),(483,'merchant_136','offerc',-966892182,0,0),(484,'merchant_136','vegfoo',39,0,0),(485,'merchant_136','postto',-27307,0,0),(486,'merchant_135','nnnnnn',0,0,0),(487,'merchant_136','zadesh',8,0,0),(488,'merchant_136','soneri',3,0,0),(489,'merchant_137','soneri',3,0,0),(490,'merchant_137','offerr',4,0,0),(491,'merchant_135','gala',8,0,0),(492,'merchant_1','Fun',2,0,0),(493,'merchant_135','test',27,0,0),(494,'merchant_136','negoti',116275,0,0),(495,'merchant_136','postto',-27307,0,0),(496,'merchant_136','posted',11,0,0),(497,'merchant_136','locat',5,0,0),(498,'merchant_136','negoti',116275,0,0),(499,'merchant_136','postto',-27307,0,0),(500,'merchant_136','postto',-27307,0,0),(501,'merchant_1','idols',75,0,0),(502,'merchant_137','negoti',6,0,0),(503,'merchant_144','yess',9,0,0),(504,'merchant_147','tttttt',5,0,0),(505,'merchant_148','tuuuuu',6,0,0),(506,'merchant_148','other',2,0,0),(507,'merchant_148','chat',5,0,0),(508,'merchant_1','raprap',47,0,0),(509,'merchant_136','negoti',116275,0,0),(510,'merchant_136','poetto',0,0,0),(511,'merchant_149','negoti',201326591,0,0),(512,'merchant_1','bikeb',29,0,0),(513,'merchant_1','eminem',39,0,0),(514,'merchant_148','aaaaaa',4,0,0),(515,'merchant_148','test',4,0,0),(516,'merchant_148','tttttt',7,0,0),(517,'merchant_1','freeco',7,0,0),(518,'merchant_150','vegi',5,0,0),(519,'merchant_150','ice cr',5,0,0),(520,'merchant_150','postto',0,0,0),(521,'merchant_149','negoti',201326591,0,0),(522,'merchant_147','tesr',4,0,0),(523,'merchant_147','test',2,0,0),(524,'merchant_1','Laddu',28,0,0),(525,'merchant_1','medic',-1,0,0),(526,'merchant_147','ttt',7,0,0),(527,'merchant_147','tttt',2,0,0),(528,'merchant_1','outfit',39,0,0),(529,'merchant_149','03.04',27,0,0),(530,'merchant_149','Today',15,0,0),(531,'merchant_149','local',15,0,0),(532,'merchant_149','FB POS',7,0,0),(533,'merchant_149','post ',0,0,0),(534,'merchant_149','ironm',42,0,0),(535,'merchant_149','good',56,0,0),(536,'merchant_1','pickle',-563719181,0,0),(537,'merchant_149','FB',3,0,0),(538,'merchant_152','boondi',99,0,0),(539,'merchant_153','Offier',18,0,0),(540,'merchant_153','offer1',9,0,0),(541,'merchant_153','summer',-1252698795,0,0),(542,'merchant_1','pickle',-563719181,0,0),(543,'merchant_153','Summer',-1252698795,0,0),(544,'merchant_156','test',1,0,0),(545,'merchant_156','test1',1,0,0),(546,'merchant_156','test2',1,0,0),(547,'merchant_154','icecrm',3,0,0),(548,'merchant_154','vegita',3,0,0),(549,'merchant_154','icecre',3,0,0),(550,'merchant_1','pickel',8,0,0),(551,'merchant_153','summer',-1252698795,0,0),(552,'merchant_158','oxygen',143,0,0),(553,'merchant_158','oxygen',143,0,0),(554,'merchant_156','tt',0,0,0),(555,'merchant_160','gf',0,0,0),(556,'merchant_160','tt',0,0,0),(557,'merchant_160','gg',11,0,0),(558,'merchant_160','gg',11,0,0),(559,'merchant_160','cf',4,0,0),(560,'merchant_155','medica',1,0,0),(561,'merchant_154','medica',0,0,0),(562,'merchant_154','food',0,0,0),(563,'merchant_1','emerge',2,0,0),(564,'merchant_1','emerge',2,0,0),(565,'merchant_155','123456',1,0,0),(566,'merchant_153','summer',-1252698795,0,0),(567,'merchant_1','socket',24,0,0),(568,'merchant_159','Help',5,0,0),(569,'merchant_155','123446',5,0,0),(570,'merchant_162','Help',5,0,0),(571,'merchant_1','pickle',-563719181,0,0),(572,'merchant_1','Help',1,0,0),(573,'merchant_155','Help',0,0,0),(574,'merchant_157','Help',2,0,0),(575,'merchant_1','funny',8,0,0),(576,'merchant_157','Help',2,0,0);
/*!40000 ALTER TABLE `offerreach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_subtype`
--

DROP TABLE IF EXISTS `parking_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking_subtype` (
  `subjobtypeid` int NOT NULL,
  `subjobname` varchar(256) DEFAULT NULL,
  `subjobdescription` varchar(1024) DEFAULT NULL,
  `mandatory` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_subtype`
--

LOCK TABLES `parking_subtype` WRITE;
/*!40000 ALTER TABLE `parking_subtype` DISABLE KEYS */;
INSERT INTO `parking_subtype` VALUES (1,'car_hatchback','hatback car like alto etc parking',0),(2,'car_sedan','sedan car like swift desize etc parking',0),(3,'car_suv','suv car like Innova  etc parking',0),(4,'bike','bike  parking',0);
/*!40000 ALTER TABLE `parking_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pointstable`
--

DROP TABLE IF EXISTS `pointstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pointstable` (
  `idpoints` int NOT NULL,
  `merchantType` int DEFAULT '0',
  `points` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpoints`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pointstable`
--

LOCK TABLES `pointstable` WRITE;
/*!40000 ALTER TABLE `pointstable` DISABLE KEYS */;
/*!40000 ALTER TABLE `pointstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipts` (
  `idreceipts` int NOT NULL AUTO_INCREMENT,
  `contact` varchar(45) NOT NULL,
  `imageurl` varchar(128) NOT NULL,
  `merchantid` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `receiptid` varchar(45) NOT NULL,
  `type` int NOT NULL DEFAULT '1',
  `billamount` varchar(10) DEFAULT '0',
  PRIMARY KEY (`idreceipts`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES (95,'8200785387','http://res.cloudinary.com/locator/image/upload/v1557944902/merchant_21/z8pntl9xkwchfu9bqdqs.pdf','merchant_21','2019-05-15','1',1,'100'),(96,'9871278657','http://res.cloudinary.com/locator/image/upload/v1558032766/merchant_21/kvegwhjkdz0m5xnjhbif.pdf','merchant_21','2019-05-16','2',1,'100'),(97,'9871278657','http://res.cloudinary.com/locator/image/upload/v1558059900/merchant_38/ux4tged3unldwrnsgthl.pdf','merchant_38','2019-05-17','-1',1,'100'),(98,'9966525464','http://res.cloudinary.com/locator/image/upload/v1558161124/merchant_34/mr9ydtkng2jnwcsyamwg.jpg','merchant_34','2019-05-18','0',1,'100'),(99,'9966525464','http://res.cloudinary.com/locator/image/upload/v1558161127/merchant_34/polrhpf9hu7hsapooyts.jpg','merchant_34','2019-05-18','0',1,'100'),(100,'9966525464','http://res.cloudinary.com/locator/image/upload/v1558163263/merchant_34/vr0c3pjjcsf5lzmo8yti.jpg','merchant_34','2019-05-18','0',1,'0'),(101,'9966525464','http://res.cloudinary.com/locator/image/upload/v1558163276/merchant_34/ktbcefi31a8hluzeis2o.jpg','merchant_34','2019-05-18','0',1,'0'),(102,'9966525464','http://res.cloudinary.com/locator/image/upload/v1558163473/merchant_34/w2t6am5pammmxjvqtbo0.jpg','merchant_34','2019-05-18','0',1,'0'),(103,'8125802142','http://res.cloudinary.com/locator/image/upload/v1558163680/merchant_34/edgaodnjkpco8xo4c7hd.jpg','merchant_34','2019-05-18','0',1,'0'),(104,'8125802142','http://res.cloudinary.com/locator/image/upload/v1558163991/merchant_34/pm8eb3rdifetdrbzqnox.jpg','merchant_34','2019-05-18','0',1,'0'),(105,'9871278657','http://res.cloudinary.com/locator/image/upload/v1558290474/merchant_38/z3cxj7chrqyfoj6doid1.pdf','merchant_38','2019-05-19','0',1,'98.0'),(106,'9871278657','http://res.cloudinary.com/locator/image/upload/v1558978475/merchant_38/orongsvzaafh2jwvnay6.pdf','merchant_38','2019-05-27','1',1,'72.0'),(107,'9871278657','http://res.cloudinary.com/locator/image/upload/v1559475723/merchant_50/bxosw1kdzaunrdk7ymnv.pdf','merchant_50','2019-06-02','1',1,'114.0'),(108,'8125802142','http://res.cloudinary.com/locator/image/upload/v1560708567/merchant_53/qncnwybymry1micxaae4.pdf','merchant_53','2019-06-16','1',1,'14.0'),(109,'9871278657','http://res.cloudinary.com/locator/image/upload/v1561399990/merchant_50/c9jhcvgxgqxvyvpbiv9j.pdf','merchant_50','2019-06-24','2',1,'299.0'),(110,'8200785387','http://res.cloudinary.com/locator/image/upload/v1562486113/merchant_55/lrkuhbt69ynalainbpif.pdf','merchant_55','2019-07-07','1',1,'99.0'),(111,'9871278657','http://res.cloudinary.com/locator/image/upload/v1562864102/merchant_50/unqex1efdy0fbh2zttif.pdf','merchant_50','2019-07-11','3',1,'234.0'),(112,'+987127865','http://res.cloudinary.com/locator/image/upload/v1563816509/merchant_57/o3dfmoftrd7wiw7mlrti.pdf','merchant_57','2019-07-22','1',1,'676.0'),(113,'9871278657','http://res.cloudinary.com/locator/image/upload/v1564073542/merchant_57/bzz4sxg6iilngx6chfq1.pdf','merchant_57','2019-07-25','2',1,'265.0'),(114,'9871278657','http://res.cloudinary.com/locator/image/upload/v1564240996/merchant_58/edweaw52flz2ddzxnx7m.pdf','merchant_58','2019-07-27','1',1,'83160.0');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_subtype`
--

DROP TABLE IF EXISTS `sales_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_subtype` (
  `subjobtypeid` int NOT NULL,
  `subjobname` varchar(256) DEFAULT NULL,
  `subjobdescription` varchar(1024) DEFAULT NULL,
  `mandatory` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_subtype`
--

LOCK TABLES `sales_subtype` WRITE;
/*!40000 ALTER TABLE `sales_subtype` DISABLE KEYS */;
INSERT INTO `sales_subtype` VALUES (1,'cloths','sales man at clothes',0),(2,'electronics','sales man at electronics',0),(3,'supermarket','sales man at supermarket',0),(4,'kids','sales man at kids store',0),(5,'medical','sales man at medical store',0);
/*!40000 ALTER TABLE `sales_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seghgv_vhik1rf_bjioawgh`
--

DROP TABLE IF EXISTS `seghgv_vhik1rf_bjioawgh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seghgv_vhik1rf_bjioawgh` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seghgv_vhik1rf_bjioawgh`
--

LOCK TABLES `seghgv_vhik1rf_bjioawgh` WRITE;
/*!40000 ALTER TABLE `seghgv_vhik1rf_bjioawgh` DISABLE KEYS */;
/*!40000 ALTER TABLE `seghgv_vhik1rf_bjioawgh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sfhh_giqiqe_vjiff`
--

DROP TABLE IF EXISTS `sfhh_giqiqe_vjiff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sfhh_giqiqe_vjiff` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sfhh_giqiqe_vjiff`
--

LOCK TABLES `sfhh_giqiqe_vjiff` WRITE;
/*!40000 ALTER TABLE `sfhh_giqiqe_vjiff` DISABLE KEYS */;
/*!40000 ALTER TABLE `sfhh_giqiqe_vjiff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smsids`
--

DROP TABLE IF EXISTS `smsids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smsids` (
  `idsmsid` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idsmsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smsids`
--

LOCK TABLES `smsids` WRITE;
/*!40000 ALTER TABLE `smsids` DISABLE KEYS */;
INSERT INTO `smsids` VALUES (1,'gopi.komanduri','2013',1);
/*!40000 ALTER TABLE `smsids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smsids_org`
--

DROP TABLE IF EXISTS `smsids_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smsids_org` (
  `idsmsid` int NOT NULL DEFAULT '0',
  `userid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `active` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smsids_org`
--

LOCK TABLES `smsids_org` WRITE;
/*!40000 ALTER TABLE `smsids_org` DISABLE KEYS */;
INSERT INTO `smsids_org` VALUES (1,'gopi.komanduri','2013',1),(2,'contactsportzclub','2013',1),(3,'amit','2013',1),(4,'locatorlogs','2013',1);
/*!40000 ALTER TABLE `smsids_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specificmessages`
--

DROP TABLE IF EXISTS `specificmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specificmessages` (
  `idspecificmessages` int NOT NULL AUTO_INCREMENT,
  `merchantId` varchar(45) NOT NULL,
  `consumercontact` varchar(45) NOT NULL,
  `messageurl` varchar(512) NOT NULL,
  PRIMARY KEY (`idspecificmessages`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specificmessages`
--

LOCK TABLES `specificmessages` WRITE;
/*!40000 ALTER TABLE `specificmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `specificmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_tdr1z`
--

DROP TABLE IF EXISTS `status_tdr1z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_tdr1z` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_tdr1z`
--

LOCK TABLES `status_tdr1z` WRITE;
/*!40000 ALTER TABLE `status_tdr1z` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_tdr1z` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_teggt`
--

DROP TABLE IF EXISTS `status_teggt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_teggt` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_teggt`
--

LOCK TABLES `status_teggt` WRITE;
/*!40000 ALTER TABLE `status_teggt` DISABLE KEYS */;
INSERT INTO `status_teggt` VALUES (1,2,'2021-01-03','2021-01-03','8589585585',1,0,'+919904405259',1258,'teggt',NULL,0,'2021-01-03','hfghh',1258,1,0,'http://res.cloudinary.com/locator/image/upload/v1609614154/merchant_128/vpy1pjfok4hfrcwmuugh.jpg',NULL),(2,2,'2021-01-03','2021-01-03','5585865958',1,0,'+919904405259',2222222,'teggt',NULL,0,'2021-01-03','hteghy',2222222,0,0,'http://res.cloudinary.com/locator/image/upload/v1609614154/merchant_128/vpy1pjfok4hfrcwmuugh.jpg',NULL),(3,4,'2021-01-04','2021-01-05','9879879870',1,0,'+919904405259',100,'teggt',NULL,0,'2021-01-05','New testing 4.1.21',100,1,0,'http://res.cloudinary.com/locator/image/upload/v1609756870/merchant_126/bcnn3odsryicsrjtzd2m.jpg',NULL),(4,14,'2021-01-07','2021-01-07','9999999999',1,0,'+918320617313',10,'teggt',NULL,0,'2021-01-05','retest 5.1.21',10,0,0,'http://res.cloudinary.com/locator/image/upload/v1609865569/merchant_126/shrvnxoun2e6bsufjt4e.png',NULL),(5,2,'2021-01-12','2021-01-12','2525252525',1,0,'+919904405259',999,'teggt',NULL,0,'2021-01-12','ABCDEFGHIJKLMPNOpQRSTUVWXYZ',999,1,0,'http://res.cloudinary.com/locator/image/upload/v1610386339/merchant_136/immnzfu4x0b2qn6gpqwl.jpg',NULL),(6,11,'2021-01-17','2021-01-18','1112223334',1,0,'+919904405259',999,'teggt',NULL,0,'2021-01-18','17.1.31',999,1,0,'http://res.cloudinary.com/locator/image/upload/v1610900205/merchant_136/rqah6xquzpgnehbgmgmz.jpg',NULL),(7,11,'2021-01-17','2021-01-17','1998877665',1,0,'+919904405259',25,'teggt',NULL,0,'2021-01-17','Second post',25,0,0,'http://res.cloudinary.com/locator/image/upload/v1610900205/merchant_136/rqah6xquzpgnehbgmgmz.jpg',NULL),(8,8,'2021-01-23','2021-01-30','8484488484',1,0,'+918200785387',58,'teggt',NULL,0,'2021-01-30','fbfbbf',58,0,0,'',NULL),(9,8,'2021-01-23','2021-01-23','8488484848',1,0,'+918200785387',8,'teggt',NULL,0,'2021-01-23','ggrrbtb',8,0,0,'',NULL),(10,8,'2021-01-23','2021-01-23','8454757857',1,0,'+918200785387',5,'teggt',NULL,0,'2021-01-23','bbb',5,0,0,'',NULL),(11,8,'2021-01-23','2021-01-30','7557755555',1,0,'+918200785387',5,'teggt',NULL,0,'2021-01-28','bbbbb',5,0,0,'',NULL),(12,8,'2021-01-23','2021-01-30','7995596544',1,0,'+918200785387',8,'teggt',NULL,0,'2021-01-30','bbb',8,0,0,'',NULL),(13,17,'2021-01-27','2021-01-27','9904440000',1,0,'+919904405259',200,'teggt',NULL,0,'2021-01-27','rfgg',200,1,0,'http://res.cloudinary.com/locator/image/upload/v1611681107/merchant_136/n4nzllrqyrwbwp0xuuul.jpg',NULL),(14,18,'2021-01-31','2021-01-31','1234567890',1,0,'+919904405259',25,'teggt',NULL,0,'2021-01-31','status same user',25,0,0,'http://res.cloudinary.com/locator/image/upload/v1612051756/merchant_136/tffzcn2xwgemyenp6ax9.jpg',NULL),(15,32,'2021-01-07','2021-01-07','0000000000',1,0,'+919904405259',999,'teggt',NULL,0,'2021-01-07','thgg',999,1,0,'http://res.cloudinary.com/locator/image/upload/v1612715149/merchant_149/x2smlkjsukng7cwgimnq.jpg',NULL),(16,32,'2021-01-07','2021-01-07','0000000000',1,0,'+919904405259',11,'teggt',NULL,0,'2021-01-07','bfhh',11,0,0,'http://res.cloudinary.com/locator/image/upload/v1612715149/merchant_149/x2smlkjsukng7cwgimnq.jpg',NULL),(17,32,'2021-01-07','2021-01-09','9999999999',1,0,'+919904405259',25,'teggt',NULL,0,'2021-01-08','ggg',25,0,0,'http://res.cloudinary.com/locator/image/upload/v1612715149/merchant_149/x2smlkjsukng7cwgimnq.jpg',NULL),(18,32,'2021-01-07','2021-01-08','0000000000',1,0,'+919904405259',5,'teggt',NULL,0,'2021-01-07','uhhjhh',5,0,0,'http://res.cloudinary.com/locator/image/upload/v1612715149/merchant_149/x2smlkjsukng7cwgimnq.jpg',NULL),(19,37,'2021-01-07','2021-01-08','9908886611',1,0,'+919904405259',11,'teggt',NULL,0,'2021-01-08','hsvhsh',11,0,0,'http://res.cloudinary.com/locator/image/upload/v1617817716/merchant_149/cdlmjxe1lxioxeqfvydh.jpg',NULL),(20,38,'2021-01-12','2021-01-13','1234567890',1,0,'+919904405259',5,'teggt',NULL,0,'2021-01-13','fv',5,0,0,'http://res.cloudinary.com/locator/image/upload/v1618127343/merchant_149/zvee06oh6dp8wbi5kqvo.jpg',NULL),(21,38,'2021-01-12','2021-01-13','1234567890',1,0,'+919904405259',5,'teggt',NULL,0,'2021-01-13','fv',5,0,0,'http://res.cloudinary.com/locator/image/upload/v1618127343/merchant_149/zvee06oh6dp8wbi5kqvo.jpg',NULL),(22,42,'2021-01-21','2021-01-25','1234567890',1,0,'+919904405259',5,'teggt',NULL,0,'2021-01-22','t-shirts',5,0,0,'http://res.cloudinary.com/locator/image/upload/v1618945012/merchant_153/tidrdh9qipe0v4rkjo6o.jpg',NULL);
/*!40000 ALTER TABLE `status_teggt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_teggt0`
--

DROP TABLE IF EXISTS `status_teggt0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_teggt0` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_teggt0`
--

LOCK TABLES `status_teggt0` WRITE;
/*!40000 ALTER TABLE `status_teggt0` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_teggt0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_tepex`
--

DROP TABLE IF EXISTS `status_tepex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_tepex` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_tepex`
--

LOCK TABLES `status_tepex` WRITE;
/*!40000 ALTER TABLE `status_tepex` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_tepex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_tepez`
--

DROP TABLE IF EXISTS `status_tepez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_tepez` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_tepez`
--

LOCK TABLES `status_tepez` WRITE;
/*!40000 ALTER TABLE `status_tepez` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_tepez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_tepg3`
--

DROP TABLE IF EXISTS `status_tepg3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_tepg3` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_tepg3`
--

LOCK TABLES `status_tepg3` WRITE;
/*!40000 ALTER TABLE `status_tepg3` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_tepg3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_tf2cr`
--

DROP TABLE IF EXISTS `status_tf2cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_tf2cr` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_tf2cr`
--

LOCK TABLES `status_tf2cr` WRITE;
/*!40000 ALTER TABLE `status_tf2cr` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_tf2cr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_ts5dv`
--

DROP TABLE IF EXISTS `status_ts5dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_ts5dv` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_ts5dv`
--

LOCK TABLES `status_ts5dv` WRITE;
/*!40000 ALTER TABLE `status_ts5dv` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_ts5dv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_ttncp`
--

DROP TABLE IF EXISTS `status_ttncp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_ttncp` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `idnotification` int NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int NOT NULL DEFAULT '1',
  `bringcharges` int NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int NOT NULL,
  `flat` int NOT NULL,
  `ispercentage` int NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  `isalreadyJoined` int DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_ttncp`
--

LOCK TABLES `status_ttncp` WRITE;
/*!40000 ALTER TABLE `status_ttncp` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_ttncp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusjoineelist`
--

DROP TABLE IF EXISTS `statusjoineelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statusjoineelist` (
  `idstatusjoineelist` int NOT NULL AUTO_INCREMENT,
  `geohash` varchar(45) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `statusid` int NOT NULL,
  PRIMARY KEY (`idstatusjoineelist`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusjoineelist`
--

LOCK TABLES `statusjoineelist` WRITE;
/*!40000 ALTER TABLE `statusjoineelist` DISABLE KEYS */;
INSERT INTO `statusjoineelist` VALUES (1,'tepexv','+919703848',1),(2,'ts5ejh','+918200785',1),(3,'tepexv','+918125802',1),(4,'tepexv','+919966525',1),(5,'tepexv','+918125802',1),(6,'tepexv','+918125802',1),(7,'tdr1z3','+918179442',3),(8,'tdr1z3','+918179442',3),(9,'tdr1z3','+918179442',3);
/*!40000 ALTER TABLE `statusjoineelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `idsubcategory` int NOT NULL AUTO_INCREMENT,
  `categoryid` int NOT NULL,
  `subcategoryname` varchar(45) NOT NULL,
  PRIMARY KEY (`idsubcategory`),
  KEY `categoryof_idx` (`categoryid`),
  CONSTRAINT `categoryof` FOREIGN KEY (`categoryid`) REFERENCES `category` (`idcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supportedjobs`
--

DROP TABLE IF EXISTS `supportedjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supportedjobs` (
  `jobtypeid` int NOT NULL AUTO_INCREMENT,
  `jobname` varchar(256) DEFAULT NULL,
  `jobdescription` varchar(1024) DEFAULT NULL,
  `jobimg` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`jobtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supportedjobs`
--

LOCK TABLES `supportedjobs` WRITE;
/*!40000 ALTER TABLE `supportedjobs` DISABLE KEYS */;
INSERT INTO `supportedjobs` VALUES (1,'cook','cooking job','https://res.cloudinary.com/locator/image/upload/v1571236466/Jobs/cooking.png'),(2,'maid','house cleaning,utensils cleaning, washing clothes','https://res.cloudinary.com/locator/image/upload/v1571236470/Jobs/maid.png'),(3,'baby sitter','need help to takecare of baby','https://res.cloudinary.com/locator/image/upload/v1571236475/Jobs/baby-sitter.png'),(4,'tutor','An additional hand to help in learning','https://res.cloudinary.com/locator/image/upload/v1571236480/Jobs/tutor.png'),(5,'sales','rockstart sales people','https://res.cloudinary.com/locator/image/upload/v1571236483/Jobs/salesman.png'),(6,'cashier','need a person who can handle cash flow','https://res.cloudinary.com/locator/image/upload/v1571236487/Jobs/cashier.png'),(7,'accountant','need a person who can take care of accounts','https://res.cloudinary.com/locator/image/upload/v1571236501/Jobs/accountant.png'),(8,'helper','need a helper','https://res.cloudinary.com/locator/image/upload/v1571236504/Jobs/helper.png'),(9,'marketing','need a marketing expert','https://res.cloudinary.com/locator/image/upload/v1571236509/Jobs/marketing.png'),(10,'other','any other job type','https://res.cloudinary.com/locator/image/upload/v1571236523/Jobs/other.png'),(11,'delivery','deliver an item from one location to other','https://res.cloudinary.com/locator/image/upload/v1571236519/Jobs/delivery.png'),(12,'parking','parking facility',NULL);
/*!40000 ALTER TABLE `supportedjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supportedsubjobs`
--

DROP TABLE IF EXISTS `supportedsubjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supportedsubjobs` (
  `subjobtypeid` int NOT NULL,
  `subjobname` varchar(256) DEFAULT NULL,
  `subjobdescription` varchar(1024) DEFAULT NULL,
  `mandatory` int DEFAULT '0',
  PRIMARY KEY (`subjobtypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supportedsubjobs`
--

LOCK TABLES `supportedsubjobs` WRITE;
/*!40000 ALTER TABLE `supportedsubjobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `supportedsubjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syjdti_suofgj_xjorehj`
--

DROP TABLE IF EXISTS `syjdti_suofgj_xjorehj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `syjdti_suofgj_xjorehj` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syjdti_suofgj_xjorehj`
--

LOCK TABLES `syjdti_suofgj_xjorehj` WRITE;
/*!40000 ALTER TABLE `syjdti_suofgj_xjorehj` DISABLE KEYS */;
/*!40000 ALTER TABLE `syjdti_suofgj_xjorehj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionhistory`
--

DROP TABLE IF EXISTS `transactionhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactionhistory` (
  `idtransactionhistory` int NOT NULL AUTO_INCREMENT,
  `merchantid` varchar(128) NOT NULL,
  `usercontact` varchar(45) NOT NULL,
  `transactiontimestamp` varchar(128) NOT NULL,
  `transactionid` varchar(512) NOT NULL,
  `pointstocustomer` int DEFAULT '0',
  `pointstomerchant` int DEFAULT '0',
  PRIMARY KEY (`idtransactionhistory`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionhistory`
--

LOCK TABLES `transactionhistory` WRITE;
/*!40000 ALTER TABLE `transactionhistory` DISABLE KEYS */;
INSERT INTO `transactionhistory` VALUES (1,'merchant_107','+919904405259','18:40:32 2020-10-26','merchant_107:+919904405259:25%%%%:18:40:32 2020-10-26',0,0);
/*!40000 ALTER TABLE `transactionhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor_subtype`
--

DROP TABLE IF EXISTS `tutor_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutor_subtype` (
  `subjobtypeid` int NOT NULL,
  `subjobname` varchar(256) DEFAULT NULL,
  `subjobdescription` varchar(1024) DEFAULT NULL,
  `mandatory` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor_subtype`
--

LOCK TABLES `tutor_subtype` WRITE;
/*!40000 ALTER TABLE `tutor_subtype` DISABLE KEYS */;
INSERT INTO `tutor_subtype` VALUES (1,'tutor_english','english coaching',0),(2,'tutor_maths','maths coaching',0),(3,'tutor_secondaryschool','all subjects coaching',0),(4,'tutor_music','music coaching',0),(5,'cricket','cricket coaching',0),(5,'tutor_chess','chess coaching',0),(6,'tutor_Pnysics','physics coaching',0),(8,'tutor_problem_solving','problem solving for IT interviews coaching',0),(7,'tutor_chemistry','chemistry coaching',0),(9,'tutor_software','software related coaching',0);
/*!40000 ALTER TABLE `tutor_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_Slots`
--

DROP TABLE IF EXISTS `user_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_Slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Merchant_id` varchar(20) NOT NULL,
  `selectedSlotEpochHash` varchar(20) NOT NULL,
  `NoofTokens` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_Slots`
--

LOCK TABLES `user_Slots` WRITE;
/*!40000 ALTER TABLE `user_Slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpoints`
--

DROP TABLE IF EXISTS `userpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userpoints` (
  `iduserpoints` int NOT NULL AUTO_INCREMENT,
  `usercontact` varchar(45) NOT NULL,
  `totalpoints` int DEFAULT '0',
  `existingpoints` int DEFAULT '0',
  `lastaddedpointson` varchar(45) DEFAULT '""',
  PRIMARY KEY (`iduserpoints`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpoints`
--

LOCK TABLES `userpoints` WRITE;
/*!40000 ALTER TABLE `userpoints` DISABLE KEYS */;
INSERT INTO `userpoints` VALUES (1,'+919904405259',0,0,'18:40:32 2020-10-26');
/*!40000 ALTER TABLE `userpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewers`
--

DROP TABLE IF EXISTS `viewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewers` (
  `idcounters` int NOT NULL AUTO_INCREMENT,
  `counterid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL DEFAULT '0000',
  `merchantid` varchar(45) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closedon` datetime DEFAULT NULL,
  `role` int NOT NULL DEFAULT '3',
  PRIMARY KEY (`idcounters`,`counterid`)
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewers`
--

LOCK TABLES `viewers` WRITE;
/*!40000 ALTER TABLE `viewers` DISABLE KEYS */;
INSERT INTO `viewers` VALUES (1,'merchant_2_1_viewers','0000','merchant_2','2019-01-14 18:02:45',NULL,3),(514,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:14:32',NULL,3),(515,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:17:50',NULL,3),(516,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:18:20',NULL,3),(517,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:18:30',NULL,3),(518,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:19:00',NULL,3),(519,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:19:21',NULL,3),(520,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:19:41',NULL,3),(521,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:25:53',NULL,3),(522,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:26:40',NULL,3),(523,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:29:24',NULL,3),(524,'merchant_1_1_viewers','0000','merchant_1','2021-01-18 18:32:05',NULL,3),(525,'merchant_1_1_viewers','0000','merchant_1','2021-01-19 03:25:10',NULL,3),(526,'merchant_1_1_viewers','0000','merchant_1','2021-01-20 18:07:07',NULL,3),(527,'merchant_1_1_viewers','0000','merchant_1','2021-01-20 18:09:26',NULL,3),(528,'merchant_1_1_viewers','0000','merchant_1','2021-01-20 18:11:52',NULL,3),(529,'merchant_1_1_viewers','0000','merchant_1','2021-01-20 18:12:31',NULL,3),(530,'merchant_1_1_viewers','0000','merchant_1','2021-01-20 18:13:02',NULL,3),(531,'merchant_1_1_viewers','0000','merchant_1','2021-01-20 18:13:14',NULL,3),(532,'merchant_1_1_viewers','0000','merchant_1','2021-01-20 18:13:31',NULL,3),(533,'merchant_1_1_viewers','0000','merchant_1','2021-01-20 18:14:37',NULL,3),(534,'merchant_1_1_viewers','0000','merchant_1','2021-01-20 18:22:22',NULL,3),(535,'merchant_1_1_viewers','0000','merchant_1','2021-01-21 03:25:10',NULL,3),(536,'merchant_1_1_viewers','0000','merchant_1','2021-01-21 03:25:35',NULL,3),(537,'merchant_1_1_viewers','0000','merchant_1','2021-01-21 17:32:10',NULL,3),(538,'merchant_1_1_viewers','0000','merchant_1','2021-01-21 17:32:23',NULL,3),(539,'merchant_136_1_viewers','0000','merchant_136','2021-01-21 19:02:16',NULL,3),(540,'merchant_135_1_viewers','0000','merchant_135','2021-01-22 20:07:07',NULL,3),(541,'merchant_135_1_viewers','0000','merchant_135','2021-01-22 20:15:30',NULL,3),(542,'merchant_135_1_viewers','0000','merchant_135','2021-01-22 20:15:46',NULL,3),(543,'merchant_1_1_viewers','0000','merchant_1','2021-01-23 07:52:46',NULL,3),(544,'merchant_1_1_viewers','0000','merchant_1','2021-01-23 07:52:52',NULL,3),(545,'merchant_1_1_viewers','0000','merchant_1','2021-01-23 07:53:49',NULL,3),(546,'merchant_1_1_viewers','0000','merchant_1','2021-01-23 07:53:50',NULL,3),(547,'merchant_1_1_viewers','0000','merchant_1','2021-01-23 07:53:58',NULL,3),(548,'merchant_135_1_viewers','0000','merchant_135','2021-01-23 14:46:41',NULL,3),(549,'merchant_135_1_viewers','0000','merchant_135','2021-01-23 14:46:52',NULL,3),(550,'merchant_135_1_viewers','0000','merchant_135','2021-01-24 07:28:12',NULL,3),(551,'merchant_135_1_viewers','0000','merchant_135','2021-01-24 07:28:17',NULL,3),(552,'merchant_135_1_viewers','0000','merchant_135','2021-01-24 07:28:29',NULL,3),(553,'merchant_135_1_viewers','0000','merchant_135','2021-01-24 07:36:58',NULL,3),(554,'merchant_1_1_viewers','0000','merchant_1','2021-01-25 11:00:30',NULL,3),(555,'merchant_1_1_viewers','0000','merchant_1','2021-01-25 11:00:56',NULL,3),(556,'merchant_1_1_viewers','0000','merchant_1','2021-01-25 11:01:03',NULL,3),(557,'merchant_136_1_viewers','0000','merchant_136','2021-01-26 18:27:56',NULL,3),(558,'merchant_136_1_viewers','0000','merchant_136','2021-01-26 18:28:12',NULL,3),(559,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 17:49:37',NULL,3),(560,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 17:49:49',NULL,3),(561,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 17:49:56',NULL,3),(562,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 17:54:23',NULL,3),(563,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 17:54:26',NULL,3),(564,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 17:55:02',NULL,3),(565,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 17:55:04',NULL,3),(566,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 17:55:39',NULL,3),(567,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 18:02:35',NULL,3),(568,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 18:04:30',NULL,3),(569,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 18:27:38',NULL,3),(570,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 18:29:38',NULL,3),(571,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 18:53:52',NULL,3),(572,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 18:54:15',NULL,3),(573,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 18:54:32',NULL,3),(574,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 18:54:33',NULL,3),(575,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 18:54:41',NULL,3),(576,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 18:54:57',NULL,3),(577,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 18:55:30',NULL,3),(578,'merchant_136_1_viewers','0000','merchant_136','2021-01-27 18:56:07',NULL,3),(579,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 18:57:50',NULL,3),(580,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 18:58:09',NULL,3),(581,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 18:58:19',NULL,3),(582,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 18:58:42',NULL,3),(583,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 19:00:26',NULL,3),(584,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 19:00:55',NULL,3),(585,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 19:01:11',NULL,3),(586,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 19:01:42',NULL,3),(587,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 19:03:05',NULL,3),(588,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 19:23:04',NULL,3),(589,'merchant_144_1_viewers','0000','merchant_144','2021-01-27 19:25:40',NULL,3),(590,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 05:03:34',NULL,3),(591,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 05:06:03',NULL,3),(592,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 05:07:42',NULL,3),(593,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 08:51:01',NULL,3),(594,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 08:51:14',NULL,3),(595,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 08:58:23',NULL,3),(596,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 08:58:35',NULL,3),(597,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 08:58:40',NULL,3),(598,'merchant_138_1_viewers','0000','merchant_138','2021-01-31 09:05:23',NULL,3),(599,'merchant_138_1_viewers','0000','merchant_138','2021-01-31 09:05:24',NULL,3),(600,'merchant_144_1_viewers','0000','merchant_144','2021-01-31 09:05:37',NULL,3),(601,'merchant_144_1_viewers','0000','merchant_144','2021-01-31 09:05:49',NULL,3),(602,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:27:07',NULL,3),(603,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:27:24',NULL,3),(604,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:27:42',NULL,3),(605,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:27:51',NULL,3),(606,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:28:23',NULL,3),(607,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:28:53',NULL,3),(608,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:29:02',NULL,3),(609,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:29:26',NULL,3),(610,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:29:56',NULL,3),(611,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:30:49',NULL,3),(612,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:31:00',NULL,3),(613,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:31:21',NULL,3),(614,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:37:53',NULL,3),(615,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:38:10',NULL,3),(616,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 09:38:30',NULL,3),(617,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 10:00:46',NULL,3),(618,'merchant_137_1_viewers','0000','merchant_137','2021-01-31 10:01:06',NULL,3),(619,'merchant_137_1_viewers','0000','merchant_137','2021-01-31 10:01:12',NULL,3),(620,'merchant_137_1_viewers','0000','merchant_137','2021-01-31 10:01:17',NULL,3),(621,'merchant_137_1_viewers','0000','merchant_137','2021-01-31 10:01:26',NULL,3),(622,'merchant_137_1_viewers','0000','merchant_137','2021-01-31 10:01:45',NULL,3),(623,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 10:01:58',NULL,3),(624,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 10:02:15',NULL,3),(625,'merchant_137_1_viewers','0000','merchant_137','2021-01-31 10:03:20',NULL,3),(626,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 10:03:50',NULL,3),(627,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 10:23:54',NULL,3),(628,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 10:31:58',NULL,3),(629,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 10:53:31',NULL,3),(630,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 17:02:47',NULL,3),(631,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 17:02:58',NULL,3),(632,'merchant_136_1_viewers','0000','merchant_136','2021-01-31 18:40:06',NULL,3),(633,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 18:42:40',NULL,3),(634,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 18:43:01',NULL,3),(635,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 18:45:01',NULL,3),(636,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 18:58:59',NULL,3),(637,'merchant_1_1_viewers','0000','merchant_1','2021-01-31 18:59:38',NULL,3),(638,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:01:47',NULL,3),(639,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:02:06',NULL,3),(640,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:02:55',NULL,3),(641,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:03:21',NULL,3),(642,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:24:04',NULL,3),(643,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:24:21',NULL,3),(644,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:35:58',NULL,3),(645,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:36:24',NULL,3),(646,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:57:47',NULL,3),(647,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 19:57:54',NULL,3),(648,'merchant_148_1_viewers','0000','merchant_148','2021-01-31 20:04:11',NULL,3),(649,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 15:38:43',NULL,3),(650,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 15:38:48',NULL,3),(651,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:09:16',NULL,3),(652,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:09:24',NULL,3),(653,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:10:02',NULL,3),(654,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:10:26',NULL,3),(655,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:10:32',NULL,3),(656,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:10:56',NULL,3),(657,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:11:20',NULL,3),(658,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:12:12',NULL,3),(659,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:12:38',NULL,3),(660,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:12:58',NULL,3),(661,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:14:10',NULL,3),(662,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:14:27',NULL,3),(663,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:14:38',NULL,3),(664,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:15:01',NULL,3),(665,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:19:28',NULL,3),(666,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:19:36',NULL,3),(667,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:19:50',NULL,3),(668,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:20:09',NULL,3),(669,'merchant_1_1_viewers','0000','merchant_1','2021-02-01 17:22:21',NULL,3),(670,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:13:39',NULL,3),(671,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:14:00',NULL,3),(672,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:14:30',NULL,3),(673,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:15:30',NULL,3),(674,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:15:40',NULL,3),(675,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:15:47',NULL,3),(676,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:15:56',NULL,3),(677,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:16:03',NULL,3),(678,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:16:10',NULL,3),(679,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:16:35',NULL,3),(680,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:17:01',NULL,3),(681,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:17:13',NULL,3),(682,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:17:33',NULL,3),(683,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:17:51',NULL,3),(684,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:18:14',NULL,3),(685,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:19:09',NULL,3),(686,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:21:31',NULL,3),(687,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:21:53',NULL,3),(688,'merchant_136_1_viewers','0000','merchant_136','2021-02-01 18:22:06',NULL,3),(689,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:50:09',NULL,3),(690,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:50:30',NULL,3),(691,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:50:45',NULL,3),(692,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:50:51',NULL,3),(693,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:50:56',NULL,3),(694,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:51:34',NULL,3),(695,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:52:33',NULL,3),(696,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:52:34',NULL,3),(697,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:52:35',NULL,3),(698,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:52:35',NULL,3),(699,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 02:52:58',NULL,3),(700,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 04:32:40',NULL,3),(701,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 04:39:21',NULL,3),(702,'merchant_1_1_viewers','0000','merchant_1','2021-02-02 04:44:34',NULL,3),(703,'merchant_149_1_viewers','0000','merchant_149','2021-02-02 17:32:27',NULL,3),(704,'merchant_149_1_viewers','0000','merchant_149','2021-02-02 17:32:33',NULL,3),(705,'merchant_149_1_viewers','0000','merchant_149','2021-02-02 17:32:38',NULL,3),(706,'merchant_149_1_viewers','0000','merchant_149','2021-02-02 17:33:05',NULL,3),(707,'merchant_149_1_viewers','0000','merchant_149','2021-02-02 17:33:14',NULL,3),(708,'merchant_149_1_viewers','0000','merchant_149','2021-02-02 17:33:26',NULL,3),(709,'merchant_1_1_viewers','0000','merchant_1','2021-02-03 15:58:30',NULL,3),(710,'merchant_1_1_viewers','0000','merchant_1','2021-02-03 15:59:06',NULL,3),(711,'merchant_1_1_viewers','0000','merchant_1','2021-02-03 15:59:33',NULL,3),(712,'merchant_1_1_viewers','0000','merchant_1','2021-02-03 16:00:06',NULL,3),(713,'merchant_1_1_viewers','0000','merchant_1','2021-02-03 16:27:48',NULL,3),(714,'merchant_1_1_viewers','0000','merchant_1','2021-02-04 17:17:02',NULL,3),(715,'merchant_1_1_viewers','0000','merchant_1','2021-02-04 17:17:13',NULL,3),(716,'merchant_149_1_viewers','0000','merchant_149','2021-02-05 18:21:11',NULL,3),(717,'merchant_149_1_viewers','0000','merchant_149','2021-02-05 18:22:00',NULL,3),(718,'merchant_149_1_viewers','0000','merchant_149','2021-02-05 18:22:13',NULL,3),(719,'merchant_149_1_viewers','0000','merchant_149','2021-02-05 18:22:23',NULL,3),(720,'merchant_148_1_viewers','0000','merchant_148','2021-02-05 20:44:28',NULL,3),(721,'merchant_148_1_viewers','0000','merchant_148','2021-02-06 11:56:13',NULL,3),(722,'merchant_148_1_viewers','0000','merchant_148','2021-02-06 12:32:47',NULL,3),(723,'merchant_148_1_viewers','0000','merchant_148','2021-02-06 19:21:15',NULL,3),(724,'merchant_148_1_viewers','0000','merchant_148','2021-02-06 21:04:30',NULL,3),(725,'merchant_148_1_viewers','0000','merchant_148','2021-02-06 21:08:11',NULL,3),(726,'merchant_1_1_viewers','0000','merchant_1','2021-02-07 04:48:04',NULL,3),(727,'merchant_1_1_viewers','0000','merchant_1','2021-02-07 04:49:15',NULL,3),(728,'merchant_1_1_viewers','0000','merchant_1','2021-02-07 04:51:24',NULL,3),(729,'merchant_1_1_viewers','0000','merchant_1','2021-02-07 04:53:59',NULL,3),(730,'merchant_1_1_viewers','0000','merchant_1','2021-02-07 04:54:01',NULL,3),(731,'merchant_1_1_viewers','0000','merchant_1','2021-02-07 04:55:47',NULL,3),(732,'merchant_149_1_viewers','0000','merchant_149','2021-02-08 18:03:14',NULL,3),(733,'merchant_149_1_viewers','0000','merchant_149','2021-02-08 18:03:42',NULL,3),(734,'merchant_149_1_viewers','0000','merchant_149','2021-02-08 18:03:50',NULL,3),(735,'merchant_149_1_viewers','0000','merchant_149','2021-02-08 18:03:52',NULL,3),(736,'merchant_149_1_viewers','0000','merchant_149','2021-02-08 18:03:56',NULL,3),(737,'merchant_149_1_viewers','0000','merchant_149','2021-02-08 18:04:04',NULL,3),(738,'merchant_149_1_viewers','0000','merchant_149','2021-02-08 18:05:22',NULL,3),(739,'merchant_1_1_viewers','0000','merchant_1','2021-03-26 13:43:25',NULL,3),(740,'merchant_1_1_viewers','0000','merchant_1','2021-03-26 16:06:34',NULL,3),(741,'merchant_1_1_viewers','0000','merchant_1','2021-03-26 16:07:54',NULL,3),(742,'merchant_149_1_viewers','0000','merchant_149','2021-04-10 18:37:52',NULL,3),(743,'merchant_154_1_viewers','0000','merchant_154','2021-04-20 15:58:06',NULL,3),(744,'merchant_154_1_viewers','0000','merchant_154','2021-04-20 15:58:39',NULL,3),(745,'merchant_154_1_viewers','0000','merchant_154','2021-04-20 15:58:40',NULL,3),(746,'merchant_153_1_viewers','0000','merchant_153','2021-04-20 19:12:37',NULL,3),(747,'merchant_153_1_viewers','0000','merchant_153','2021-04-20 19:12:46',NULL,3),(748,'merchant_153_1_viewers','0000','merchant_153','2021-04-20 19:12:55',NULL,3),(749,'merchant_153_1_viewers','0000','merchant_153','2021-04-20 19:13:09',NULL,3),(750,'merchant_153_1_viewers','0000','merchant_153','2021-04-20 19:13:30',NULL,3),(751,'merchant_153_1_viewers','0000','merchant_153','2021-04-20 19:15:13',NULL,3),(752,'merchant_153_1_viewers','0000','merchant_153','2021-04-20 19:18:01',NULL,3),(753,'merchant_153_1_viewers','0000','merchant_153','2021-04-20 19:18:04',NULL,3),(754,'merchant_154_1_viewers','0000','merchant_154','2021-04-21 10:55:38',NULL,3),(755,'merchant_154_1_viewers','0000','merchant_154','2021-04-25 02:48:33',NULL,3),(756,'merchant_157_1_viewers','0000','merchant_157','2021-04-27 13:04:26',NULL,3),(757,'merchant_157_1_viewers','0000','merchant_157','2021-04-27 13:04:48',NULL,3),(758,'merchant_157_1_viewers','0000','merchant_157','2021-04-27 13:04:57',NULL,3),(759,'merchant_157_1_viewers','0000','merchant_157','2021-04-27 13:25:44',NULL,3),(760,'merchant_157_1_viewers','0000','merchant_157','2021-04-27 13:26:11',NULL,3),(761,'merchant_153_1_viewers','0000','merchant_153','2021-04-29 17:34:33',NULL,3),(762,'merchant_153_1_viewers','0000','merchant_153','2021-04-29 17:34:53',NULL,3),(763,'merchant_153_1_viewers','0000','merchant_153','2021-04-29 17:36:44',NULL,3),(764,'merchant_153_1_viewers','0000','merchant_153','2021-04-30 18:37:22',NULL,3),(765,'merchant_153_1_viewers','0000','merchant_153','2021-04-30 18:40:50',NULL,3),(766,'merchant_153_1_viewers','0000','merchant_153','2021-04-30 18:46:04',NULL,3),(767,'merchant_153_1_viewers','0000','merchant_153','2021-05-07 23:50:47',NULL,3),(768,'merchant_153_1_viewers','0000','merchant_153','2021-05-07 23:50:56',NULL,3),(769,'merchant_153_1_viewers','0000','merchant_153','2021-05-07 23:50:59',NULL,3),(770,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:22:34',NULL,3),(771,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:23:53',NULL,3),(772,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:44:00',NULL,3),(773,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:44:08',NULL,3),(774,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:44:13',NULL,3),(775,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:44:23',NULL,3),(776,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:45:32',NULL,3),(777,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:45:33',NULL,3),(778,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:46:11',NULL,3),(779,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:46:41',NULL,3),(780,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:47:07',NULL,3),(781,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:47:46',NULL,3),(782,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:50:16',NULL,3),(783,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:50:59',NULL,3),(784,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:52:51',NULL,3),(785,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:56:13',NULL,3),(786,'merchant_153_1_viewers','0000','merchant_153','2021-05-12 17:56:20',NULL,3),(787,'merchant_1_1_viewers','0000','merchant_1','2021-05-18 17:34:28',NULL,3),(788,'merchant_1_1_viewers','0000','merchant_1','2021-05-18 17:34:38',NULL,3),(789,'merchant_1_1_viewers','0000','merchant_1','2021-05-18 17:35:32',NULL,3),(790,'merchant_1_1_viewers','0000','merchant_1','2021-05-18 17:38:43',NULL,3),(791,'merchant_157_1_viewers','0000','merchant_157','2021-05-18 17:38:58',NULL,3),(792,'merchant_157_1_viewers','0000','merchant_157','2021-05-18 17:39:46',NULL,3);
/*!40000 ALTER TABLE `viewers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vjkass_hjisjed_goonaa`
--

DROP TABLE IF EXISTS `vjkass_hjisjed_goonaa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vjkass_hjisjed_goonaa` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vjkass_hjisjed_goonaa`
--

LOCK TABLES `vjkass_hjisjed_goonaa` WRITE;
/*!40000 ALTER TABLE `vjkass_hjisjed_goonaa` DISABLE KEYS */;
/*!40000 ALTER TABLE `vjkass_hjisjed_goonaa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vkkee_cjjwd_fjasv`
--

DROP TABLE IF EXISTS `vkkee_cjjwd_fjasv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vkkee_cjjwd_fjasv` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vkkee_cjjwd_fjasv`
--

LOCK TABLES `vkkee_cjjwd_fjasv` WRITE;
/*!40000 ALTER TABLE `vkkee_cjjwd_fjasv` DISABLE KEYS */;
/*!40000 ALTER TABLE `vkkee_cjjwd_fjasv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wghh_fyuub_sdhh`
--

DROP TABLE IF EXISTS `wghh_fyuub_sdhh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wghh_fyuub_sdhh` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wghh_fyuub_sdhh`
--

LOCK TABLES `wghh_fyuub_sdhh` WRITE;
/*!40000 ALTER TABLE `wghh_fyuub_sdhh` DISABLE KEYS */;
/*!40000 ALTER TABLE `wghh_fyuub_sdhh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuhff_dghh_dgjj`
--

DROP TABLE IF EXISTS `yuhff_dghh_dgjj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yuhff_dghh_dgjj` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuhff_dghh_dgjj`
--

LOCK TABLES `yuhff_dghh_dgjj` WRITE;
/*!40000 ALTER TABLE `yuhff_dghh_dgjj` DISABLE KEYS */;
/*!40000 ALTER TABLE `yuhff_dghh_dgjj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-22 19:00:07
