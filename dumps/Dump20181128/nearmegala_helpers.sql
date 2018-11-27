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
-- Table structure for table `helpers`
--

DROP TABLE IF EXISTS `helpers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpers` (
  `idcounters` int(11) NOT NULL AUTO_INCREMENT,
  `counterid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL DEFAULT '0000',
  `merchantid` varchar(45) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closedon` datetime DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`idcounters`,`counterid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpers`
--

LOCK TABLES `helpers` WRITE;
/*!40000 ALTER TABLE `helpers` DISABLE KEYS */;
INSERT INTO `helpers` VALUES (16,'merchant_277_1_helper','0000','merchant_277','2018-11-14 16:57:15',NULL,2),(17,'merchant_277_2_helper','0000','merchant_277','2018-11-14 16:57:15',NULL,2),(18,'merchant_290_1_helper','0000','merchant_290','2018-11-14 22:06:18',NULL,2),(19,'merchant_290_2_helper','0000','merchant_290','2018-11-14 22:06:18',NULL,2),(20,'merchant_295_1_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(21,'merchant_295_2_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(22,'merchant_295_3_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(23,'merchant_295_4_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(24,'merchant_295_5_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(25,'merchant_295_6_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(26,'merchant_295_7_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(27,'merchant_295_8_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(28,'merchant_295_9_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(29,'merchant_295_10_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(30,'merchant_295_11_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(31,'merchant_295_12_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(32,'merchant_295_13_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(33,'merchant_295_14_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(34,'merchant_295_15_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(35,'merchant_295_16_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(36,'merchant_295_17_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(37,'merchant_295_18_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(38,'merchant_295_19_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(39,'merchant_295_20_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(40,'merchant_295_21_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(41,'merchant_295_22_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(42,'merchant_295_23_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(43,'merchant_295_24_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(44,'merchant_295_25_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(45,'merchant_295_26_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(46,'merchant_295_27_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(47,'merchant_295_28_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(48,'merchant_295_29_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(49,'merchant_295_30_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(50,'merchant_295_31_helper','0000','merchant_295','2018-11-15 12:48:21',NULL,2),(51,'merchant_298_1_helper','0000','merchant_298','2018-11-16 09:32:19',NULL,2),(52,'merchant_298_2_helper','0000','merchant_298','2018-11-16 09:32:19',NULL,2),(53,'merchant_307_1_helper','0000','merchant_307','2018-11-16 23:50:04',NULL,2),(54,'merchant_307_2_helper','0000','merchant_307','2018-11-16 23:50:04',NULL,2),(55,'merchant_290_1_helper','0000','merchant_290','2018-11-19 00:17:39',NULL,2),(56,'merchant_290_2_helper','0000','merchant_290','2018-11-19 00:17:39',NULL,2),(57,'-1_1_helper','0000','-1','2018-11-22 00:43:00',NULL,2),(58,'-1_2_helper','0000','-1','2018-11-22 00:43:00',NULL,2),(59,'-1_3_helper','0000','-1','2018-11-22 00:43:00',NULL,2),(60,'-1_4_helper','0000','-1','2018-11-22 00:43:20',NULL,2),(61,'-1_5_helper','0000','-1','2018-11-22 00:43:20',NULL,2),(62,'-1_6_helper','0000','-1','2018-11-22 00:43:20',NULL,2);
/*!40000 ALTER TABLE `helpers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:44
