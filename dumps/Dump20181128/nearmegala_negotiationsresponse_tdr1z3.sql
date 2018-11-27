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
-- Table structure for table `negotiationsresponse_tdr1z3`
--

DROP TABLE IF EXISTS `negotiationsresponse_tdr1z3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiationsresponse_tdr1z3` (
  `idnegotiationsresponse` int(11) NOT NULL AUTO_INCREMENT,
  `idnegotiations` int(11) NOT NULL,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int(11) DEFAULT NULL,
  `maxamount` int(11) DEFAULT NULL,
  `Discount` int(11) NOT NULL DEFAULT '0',
  `ShoppingallowedDates` varchar(512) DEFAULT NULL,
  `advanceNeed` int(11) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `negotiationsresponse` int(1) NOT NULL DEFAULT '0',
  `respondedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notificationid` int(11) NOT NULL,
  PRIMARY KEY (`idnegotiationsresponse`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse_tdr1z3`
--

LOCK TABLES `negotiationsresponse_tdr1z3` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse_tdr1z3` DISABLE KEYS */;
INSERT INTO `negotiationsresponse_tdr1z3` VALUES (1,6,'+918179442558','merchant_84','tdr1z3',150,2000,21,'dumy',1000,'my',1,'2018-10-12 09:41:52',288),(2,6,'+918179442558','merchant_84','tdr1z3',2000,20000,50,'from: 19-9-2018, to: 27-9-2018',0,'50',3,'2018-10-12 11:28:43',288),(3,7,'+918179442558','merchant_84','tdr1z3',500,5000,20,'dumy',800,'hjj',1,'2018-10-12 21:48:20',299),(4,12,'+918179442558','merchant_84','tdr1z3',50,50000,3,'dumy',1000,'hk',1,'2018-10-13 01:02:23',300),(5,11,'+918179442558','merchant_84','tdr1z3',20,300,25,'dumy',8000,'gh',1,'2018-10-13 01:02:40',300),(6,9,'+918179442558','merchant_84','tdr1z3',80,50000,25,'dumy',5555,'hj',1,'2018-10-13 01:02:52',288),(7,13,'+918179442558','merchant_87','tdr1z3',50,50000,25,'dumy',500,'tt',1,'2018-10-13 21:46:01',311),(8,14,'+918179442558','merchant_88','tdr1z3',2002,5005,25,'dumy',500,'fhhh',1,'2018-10-13 22:30:26',312),(9,15,'+918179442558','merchant_88','tdr1z3',2222,9999,10,'dumy',8888,'yyhu',1,'2018-10-13 22:32:29',313),(10,16,'+918179442558','merchant_88','tdr1z3',200,10000,10,'dumy',500,'cbcv',1,'2018-10-13 22:42:32',314),(11,17,'+918179442558','merchant_89','tdr1z3',500,8000,25,'dumy',5000,'test',1,'2018-10-15 10:33:48',317),(12,17,'+918179442558','merchant_89','tdr1z3',500,8000,25,'dumy',0,'test',1,'2018-10-15 16:08:51',317),(13,17,'+918179442558','merchant_89','tdr1z3',500,8000,25,'dumy',200000,'test',1,'2018-10-17 00:42:54',317),(14,21,'+918179442558','merchant_91','tdr1z3',2896,5000,25,'dumy',8000,'neef',1,'2018-10-17 18:50:21',323),(15,23,'+918179442558','merchant_92','tdr1z3',500,5000,10,'from: 21-9-2018, to: 23-9-2018',0,'10',3,'2018-10-19 19:23:08',326),(16,25,'+918179442558','merchant_92','tdr1z3',10000,20000,25,'dumy',25,'test',1,'2018-10-20 01:22:50',327),(17,26,'+918179442558','merchant_105','tdr1z3',8000,50000,25,'dumy',500,'gj',1,'2018-10-24 17:10:01',328),(18,27,'+918179442558','merchant_105','tdr1z3',2000,50000,20,'from: 28-9-2018, to: 31-9-2018',0,'20',3,'2018-10-27 18:50:05',330),(19,27,'+918179442558','merchant_105','tdr1z3',80000,100000,25,'dumy',88000,'vj',1,'2018-10-27 18:50:46',330);
/*!40000 ALTER TABLE `negotiationsresponse_tdr1z3` ENABLE KEYS */;
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
