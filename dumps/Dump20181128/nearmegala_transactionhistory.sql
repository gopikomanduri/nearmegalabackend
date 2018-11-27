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
-- Table structure for table `transactionhistory`
--

DROP TABLE IF EXISTS `transactionhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionhistory` (
  `idtransactionhistory` int(11) NOT NULL AUTO_INCREMENT,
  `merchantid` varchar(128) NOT NULL,
  `usercontact` varchar(45) NOT NULL,
  `transactiontimestamp` varchar(128) NOT NULL,
  `transactionid` varchar(512) NOT NULL,
  `pointstocustomer` int(10) DEFAULT '0',
  `pointstomerchant` int(10) DEFAULT '0',
  PRIMARY KEY (`idtransactionhistory`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionhistory`
--

LOCK TABLES `transactionhistory` WRITE;
/*!40000 ALTER TABLE `transactionhistory` DISABLE KEYS */;
INSERT INTO `transactionhistory` VALUES (1,'\"merchant_17_+918247638529\"','\"+918179442558\"','16:44:20 2018-08-12','\"merchant_17_+918247638529\":\"+918179442558\":\"qrcode\":16:44:20 2018-08-12',0,0),(2,'\"merchant_17_+918247638529\"','\"+918179442558\"','17:44:01 2018-08-12','\"merchant_17_+918247638529\":\"+918179442558\":\"qrcode\":17:44:01 2018-08-12',0,0),(3,'\"merchant_17_+918247638529\"','\"+918179442558\"','17:45:36 2018-08-12','\"merchant_17_+918247638529\":\"+918179442558\":\"qrcode\":17:45:36 2018-08-12',0,0),(4,'\"merchant_17_+918247638529\"','\"+918179442558\"','17:48:50 2018-08-12','\"merchant_17_+918247638529\":\"+918179442558\":\"qrcode\":17:48:50 2018-08-12',0,0),(5,'\"merchant_17_+918247638529\"','\"+918179442558\"','17:50:47 2018-08-12','\"merchant_17_+918247638529\":\"+918179442558\":\"qrcode\":17:50:47 2018-08-12',0,0),(6,'\"merchant_17\"','\"+918179442558\"','18:11:13 2018-08-12','\"merchant_17\":\"+918179442558\":\"wardro\":18:11:13 2018-08-12',0,0),(7,'\"merchant_17\"','\"+918179442558\"','18:12:02 2018-08-12','\"merchant_17\":\"+918179442558\":\"wardro\":18:12:02 2018-08-12',0,0),(8,'merchant_17','+918179442558','18:20:49 2018-08-12','merchant_17:+918179442558:wardro:18:20:49 2018-08-12',10,0),(9,'merchant_17','+918179442558','18:21:18 2018-08-12','merchant_17:+918179442558:wardro:18:21:18 2018-08-12',10,0),(10,'merchant_17','+918179442558','18:24:38 2018-08-12','merchant_17:+918179442558:wardro:18:24:38 2018-08-12',10,0),(11,'merchant_17','+918179442558','18:26:55 2018-08-12','merchant_17:+918179442558:wardro:18:26:55 2018-08-12',10,0),(12,'merchant_17','+918179442558','18:28:50 2018-08-12','merchant_17:+918179442558:wardro:18:28:50 2018-08-12',10,0),(13,'merchant_17','+918179442558','18:32:17 2018-08-12','merchant_17:+918179442558:wardro:18:32:17 2018-08-12',10,0),(14,'merchant_17','+918179442558','18:35:03 2018-08-12','merchant_17:+918179442558:wardro:18:35:03 2018-08-12',10,0),(15,'merchant_17','+918179442558','18:35:52 2018-08-12','merchant_17:+918179442558:wardro:18:35:52 2018-08-12',10,0),(16,'merchant_17','+918179442558','18:36:53 2018-08-12','merchant_17:+918179442558:wardro:18:36:53 2018-08-12',10,0),(17,'merchant_17','+918179442558','18:45:02 2018-08-12','merchant_17:+918179442558:wardro:18:45:02 2018-08-12',10,0),(18,'merchant_17','+918179442558','18:49:45 2018-08-12','merchant_17:+918179442558:wardro:18:49:45 2018-08-12',10,0),(19,'merchant_17','+918179442558','18:53:40 2018-08-12','merchant_17:+918179442558:wardro:18:53:40 2018-08-12',10,0),(20,'merchant_17','+918179442558','19:01:04 2018-08-12','merchant_17:+918179442558:wardro:19:01:04 2018-08-12',10,0),(21,'merchant_17','+918179442558','19:14:51 2018-08-12','merchant_17:+918179442558:wardro:19:14:51 2018-08-12',10,0),(22,'merchant_17','+918179442558','19:16:02 2018-08-12','merchant_17:+918179442558:wardro:19:16:02 2018-08-12',10,0),(23,'merchant_21','+918639613292','06:34:42 2018-08-16','merchant_21:+918639613292:hnshd :06:34:42 2018-08-16',10,0),(24,'merchant_21','+918639613292','06:34:53 2018-08-16','merchant_21:+918639613292:hnshd :06:34:53 2018-08-16',10,0),(25,'merchant_42','+918686091898','14:00:58 2018-08-21','merchant_42:+918686091898::14:00:58 2018-08-21',10,0),(26,'merchant_51','+918179442558','15:28:12 2018-08-22','merchant_51:+918179442558:govrcl:15:28:12 2018-08-22',10,0),(27,'merchant_51','+918179442558','15:33:21 2018-08-22','merchant_51:+918179442558:red:15:33:21 2018-08-22',10,0),(28,'merchant_58','+917065267973','13:03:55 2018-08-23','merchant_58:+917065267973:3dwal:13:03:55 2018-08-23',10,0),(29,'merchant_58','+917065267973','13:04:06 2018-08-23','merchant_58:+917065267973:3dwal:13:04:06 2018-08-23',10,0),(30,'merchant_58','+917065267973','13:04:44 2018-08-23','merchant_58:+917065267973:3dwal:13:04:44 2018-08-23',10,0),(31,'merchant_58','+917065267973','13:05:21 2018-08-23','merchant_58:+917065267973:3dwal:13:05:21 2018-08-23',10,0),(32,'merchant_58','+917065267973','13:09:29 2018-08-23','merchant_58:+917065267973:3dwal:13:09:29 2018-08-23',10,0),(33,'merchant_44','+918179442558','21:00:27 2018-08-24','merchant_44:+918179442558:godse:21:00:27 2018-08-24',10,0),(34,'merchant_44','+918179442558','21:04:59 2018-08-24','merchant_44:+918179442558:godse:21:04:59 2018-08-24',10,0),(35,'merchant_44','+918179442558','21:11:36 2018-08-24','merchant_44:+918179442558:godse:21:11:36 2018-08-24',10,0),(36,'merchant_44','+918179442558','14:07:35 2018-08-25','merchant_44:+918179442558:timeto:14:07:35 2018-08-25',10,0),(37,'merchant_44','+918179442558','20:43:42 2018-08-25','merchant_44:+918179442558:yiu:20:43:42 2018-08-25',10,0);
/*!40000 ALTER TABLE `transactionhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:37
