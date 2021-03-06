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
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counters` (
  `idcounters` int(11) NOT NULL AUTO_INCREMENT,
  `counterid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL DEFAULT '0000',
  `merchantid` varchar(45) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closedon` datetime DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcounters`,`counterid`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES (130,'merchant_277_1','0000','merchant_277','2018-11-14 16:57:14',NULL,1),(131,'merchant_277_2','0000','merchant_277','2018-11-14 16:57:15',NULL,1),(132,'merchant_290_1','0000','merchant_290','2018-11-14 22:06:18',NULL,1),(133,'merchant_290_2','0000','merchant_290','2018-11-14 22:06:18',NULL,1),(134,'merchant_295_1','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(135,'merchant_295_2','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(136,'merchant_295_3','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(137,'merchant_295_4','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(138,'merchant_295_5','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(139,'merchant_295_6','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(140,'merchant_295_7','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(141,'merchant_295_8','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(142,'merchant_295_9','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(143,'merchant_295_10','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(144,'merchant_295_11','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(145,'merchant_295_12','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(146,'merchant_295_13','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(147,'merchant_295_14','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(148,'merchant_295_15','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(149,'merchant_295_16','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(150,'merchant_295_17','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(151,'merchant_295_18','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(152,'merchant_295_19','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(153,'merchant_295_20','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(154,'merchant_295_21','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(155,'merchant_295_22','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(156,'merchant_295_23','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(157,'merchant_295_24','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(158,'merchant_295_25','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(159,'merchant_295_26','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(160,'merchant_295_27','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(161,'merchant_295_28','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(162,'merchant_295_29','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(163,'merchant_295_30','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(164,'merchant_295_31','0000','merchant_295','2018-11-15 12:48:21',NULL,1),(165,'merchant_298_1','0000','merchant_298','2018-11-16 09:32:19',NULL,1),(166,'merchant_298_2','0000','merchant_298','2018-11-16 09:32:19',NULL,1),(167,'merchant_307_1','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(168,'merchant_307_2','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(169,'merchant_307_3','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(170,'merchant_307_4','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(171,'merchant_307_5','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(172,'merchant_290_1','0000','merchant_290','2018-11-19 00:17:38',NULL,1),(173,'merchant_290_2','0000','merchant_290','2018-11-19 00:17:38',NULL,1),(174,'merchant_290_3','0000','merchant_290','2018-11-19 00:39:02',NULL,1),(175,'merchant_290_4','0000','merchant_290','2018-11-19 00:39:02',NULL,1),(176,'-1_1','0000','-1','2018-11-22 00:43:00',NULL,1),(177,'-1_2','0000','-1','2018-11-22 00:43:00',NULL,1),(178,'-1_3','0000','-1','2018-11-22 00:43:00',NULL,1),(179,'-1_4','0000','-1','2018-11-22 00:43:00',NULL,1),(180,'-1_5','0000','-1','2018-11-22 00:43:00',NULL,1),(181,'-1_6','0000','-1','2018-11-22 00:43:00',NULL,1),(182,'-1_7','0000','-1','2018-11-22 00:43:00',NULL,1),(183,'-1_8','0000','-1','2018-11-22 00:43:00',NULL,1),(184,'-1_9','0000','-1','2018-11-22 00:43:00',NULL,1),(185,'-1_10','0000','-1','2018-11-22 00:43:00',NULL,1),(186,'-1_11','0000','-1','2018-11-22 00:43:00',NULL,1),(187,'-1_12','0000','-1','2018-11-22 00:43:00',NULL,1),(188,'-1_13','0000','-1','2018-11-22 00:43:00',NULL,1),(189,'-1_14','0000','-1','2018-11-22 00:43:00',NULL,1),(190,'-1_15','0000','-1','2018-11-22 00:43:00',NULL,1),(191,'-1_16','0000','-1','2018-11-22 00:43:00',NULL,1),(192,'-1_17','0000','-1','2018-11-22 00:43:00',NULL,1),(193,'-1_18','0000','-1','2018-11-22 00:43:00',NULL,1),(194,'-1_19','0000','-1','2018-11-22 00:43:00',NULL,1),(195,'-1_20','0000','-1','2018-11-22 00:43:00',NULL,1),(196,'-1_21','0000','-1','2018-11-22 00:43:00',NULL,1),(197,'-1_22','0000','-1','2018-11-22 00:43:00',NULL,1),(198,'-1_23','0000','-1','2018-11-22 00:43:00',NULL,1),(199,'-1_24','0000','-1','2018-11-22 00:43:00',NULL,1),(200,'-1_25','0000','-1','2018-11-22 00:43:00',NULL,1),(201,'-1_26','0000','-1','2018-11-22 00:43:00',NULL,1),(202,'-1_27','0000','-1','2018-11-22 00:43:00',NULL,1),(203,'-1_28','0000','-1','2018-11-22 00:43:00',NULL,1),(204,'-1_29','0000','-1','2018-11-22 00:43:00',NULL,1),(205,'-1_30','0000','-1','2018-11-22 00:43:00',NULL,1),(206,'-1_31','0000','-1','2018-11-22 00:43:00',NULL,1),(207,'-1_32','0000','-1','2018-11-22 00:43:00',NULL,1),(208,'-1_33','0000','-1','2018-11-22 00:43:00',NULL,1),(209,'-1_34','0000','-1','2018-11-22 00:43:00',NULL,1),(210,'-1_35','0000','-1','2018-11-22 00:43:00',NULL,1),(211,'-1_36','0000','-1','2018-11-22 00:43:00',NULL,1),(212,'-1_37','0000','-1','2018-11-22 00:43:00',NULL,1),(213,'-1_38','0000','-1','2018-11-22 00:43:00',NULL,1),(214,'-1_39','0000','-1','2018-11-22 00:43:00',NULL,1),(215,'-1_40','0000','-1','2018-11-22 00:43:00',NULL,1),(216,'-1_41','0000','-1','2018-11-22 00:43:00',NULL,1),(217,'-1_42','0000','-1','2018-11-22 00:43:00',NULL,1),(218,'-1_43','0000','-1','2018-11-22 00:43:00',NULL,1),(219,'-1_44','0000','-1','2018-11-22 00:43:00',NULL,1),(220,'-1_45','0000','-1','2018-11-22 00:43:00',NULL,1),(221,'-1_46','0000','-1','2018-11-22 00:43:00',NULL,1),(222,'-1_47','0000','-1','2018-11-22 00:43:00',NULL,1),(223,'-1_48','0000','-1','2018-11-22 00:43:00',NULL,1),(224,'-1_49','0000','-1','2018-11-22 00:43:00',NULL,1),(225,'-1_50','0000','-1','2018-11-22 00:43:00',NULL,1),(226,'-1_51','0000','-1','2018-11-22 00:43:19',NULL,1),(227,'-1_52','0000','-1','2018-11-22 00:43:19',NULL,1),(228,'-1_53','0000','-1','2018-11-22 00:43:19',NULL,1),(229,'-1_54','0000','-1','2018-11-22 00:43:19',NULL,1),(230,'-1_55','0000','-1','2018-11-22 00:43:19',NULL,1),(231,'-1_56','0000','-1','2018-11-22 00:43:20',NULL,1),(232,'-1_57','0000','-1','2018-11-22 00:43:20',NULL,1),(233,'-1_58','0000','-1','2018-11-22 00:43:20',NULL,1),(234,'-1_59','0000','-1','2018-11-22 00:43:20',NULL,1),(235,'-1_60','0000','-1','2018-11-22 00:43:20',NULL,1),(236,'-1_61','0000','-1','2018-11-22 00:43:20',NULL,1),(237,'-1_62','0000','-1','2018-11-22 00:43:20',NULL,1),(238,'-1_63','0000','-1','2018-11-22 00:43:20',NULL,1),(239,'-1_64','0000','-1','2018-11-22 00:43:20',NULL,1),(240,'-1_65','0000','-1','2018-11-22 00:43:20',NULL,1),(241,'-1_66','0000','-1','2018-11-22 00:43:20',NULL,1),(242,'-1_67','0000','-1','2018-11-22 00:43:20',NULL,1),(243,'-1_68','0000','-1','2018-11-22 00:43:20',NULL,1),(244,'-1_69','0000','-1','2018-11-22 00:43:20',NULL,1),(245,'-1_70','0000','-1','2018-11-22 00:43:20',NULL,1),(246,'-1_71','0000','-1','2018-11-22 00:43:20',NULL,1),(247,'-1_72','0000','-1','2018-11-22 00:43:20',NULL,1),(248,'-1_73','0000','-1','2018-11-22 00:43:20',NULL,1),(249,'-1_74','0000','-1','2018-11-22 00:43:20',NULL,1),(250,'-1_75','0000','-1','2018-11-22 00:43:20',NULL,1),(251,'-1_76','0000','-1','2018-11-22 00:43:20',NULL,1),(252,'-1_77','0000','-1','2018-11-22 00:43:20',NULL,1),(253,'-1_78','0000','-1','2018-11-22 00:43:20',NULL,1),(254,'-1_79','0000','-1','2018-11-22 00:43:20',NULL,1),(255,'-1_80','0000','-1','2018-11-22 00:43:20',NULL,1),(256,'-1_81','0000','-1','2018-11-22 00:43:20',NULL,1),(257,'-1_82','0000','-1','2018-11-22 00:43:20',NULL,1),(258,'-1_83','0000','-1','2018-11-22 00:43:20',NULL,1),(259,'-1_84','0000','-1','2018-11-22 00:43:20',NULL,1),(260,'-1_85','0000','-1','2018-11-22 00:43:20',NULL,1),(261,'-1_86','0000','-1','2018-11-22 00:43:20',NULL,1),(262,'-1_87','0000','-1','2018-11-22 00:43:20',NULL,1),(263,'-1_88','0000','-1','2018-11-22 00:43:20',NULL,1),(264,'-1_89','0000','-1','2018-11-22 00:43:20',NULL,1),(265,'-1_90','0000','-1','2018-11-22 00:43:20',NULL,1),(266,'-1_91','0000','-1','2018-11-22 00:43:20',NULL,1),(267,'-1_92','0000','-1','2018-11-22 00:43:20',NULL,1),(268,'-1_93','0000','-1','2018-11-22 00:43:20',NULL,1),(269,'-1_94','0000','-1','2018-11-22 00:43:20',NULL,1),(270,'-1_95','0000','-1','2018-11-22 00:43:20',NULL,1),(271,'-1_96','0000','-1','2018-11-22 00:43:20',NULL,1),(272,'-1_97','0000','-1','2018-11-22 00:43:20',NULL,1),(273,'-1_98','0000','-1','2018-11-22 00:43:20',NULL,1),(274,'-1_99','0000','-1','2018-11-22 00:43:20',NULL,1),(275,'-1_100','0000','-1','2018-11-22 00:43:20',NULL,1),(276,'merchant_290_1','0000','merchant_290','2018-11-26 01:00:40',NULL,1),(277,'merchant_290_2','0000','merchant_290','2018-11-26 01:00:40',NULL,1),(278,'merchant_290_3','0000','merchant_290','2018-11-26 01:00:40',NULL,1),(279,'merchant_290_4','0000','merchant_290','2018-11-26 01:00:40',NULL,1),(280,'merchant_290_5','0000','merchant_290','2018-11-26 01:00:40',NULL,1);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:42
