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
-- Table structure for table `negotations_tdr1z4`
--

DROP TABLE IF EXISTS `negotations_tdr1z4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotations_tdr1z4` (
  `idnegotations` int(11) NOT NULL AUTO_INCREMENT,
  `customercontact` varchar(15) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `geohash` varchar(6) NOT NULL,
  `minamount` int(4) NOT NULL,
  `maxamount` int(11) NOT NULL,
  `DiscountExpectation` int(3) NOT NULL,
  `ShoppingProbableDates` varchar(45) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `delivered` int(1) NOT NULL DEFAULT '0',
  `adnotification` int(11) NOT NULL,
  PRIMARY KEY (`idnegotations`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations_tdr1z4`
--

LOCK TABLES `negotations_tdr1z4` WRITE;
/*!40000 ALTER TABLE `negotations_tdr1z4` DISABLE KEYS */;
INSERT INTO `negotations_tdr1z4` VALUES (1,'+918179442558','merchant_79','tdr1z4',5000,500,55,'555','ghj',0,5),(2,'+918179442558','merchant_79','tdr1z4',8000,80,58,'855','ghh',0,6),(3,'+918179442558','merchant_79','tdr1z4',56666,500,558,'585','ghj',0,7),(4,'+918179442558','merchant_80','tdr1z4',500,60,20,'866','gjhj',0,8),(5,'+918179442558','merchant_80','tdr1z4',500,5000,88,'88','gj',0,9),(6,'+918179442558','merchant_80','tdr1z4',10,800,88,'from: 3-9-2018, to: 26-9-2018','fy',0,10),(7,'+918179442558','merchant_80','tdr1z4',10,50,50,'from: 28-8-2018, to: 29-8-2018','vh',0,10),(8,'+918179442558','merchant_80','tdr1z4',50,1000,58,'from: 18-9-2018, to: 27-9-2018','gh',0,14),(9,'+918179442558','merchant_80','tdr1z4',5000,8000,58,'from: 9-9-2018, to: 10-9-2018','ggh',0,14),(10,'+918179442558','merchant_80','tdr1z4',800,5000,10,'from: 10-9-2018, to: 26-9-2018','cbh',0,15),(11,'+918179442558','merchant_80','tdr1z4',50,2000,88,'from: 18-9-2018, to: 27-9-2018','ggg',0,15),(12,'+918179442558','merchant_80','tdr1z4',99,8888,20,'from: 11-9-2018, to: 27-9-2018','trst',0,16),(13,'+918179442558','merchant_82','tdr1z4',80,8000,58,'from: 11-9-2018, to: 13-9-2018','ghh',0,17),(14,'+918179442558','merchant_82','tdr1z4',5,55,88,'from: 11-9-2018, to: 28-9-2018','gh',0,18),(15,'+918179442558','merchant_82','tdr1z4',80,5888,58,'from: 19-9-2018, to: 28-9-2018','vh',0,22),(16,'+918179442558','merchant_82','tdr1z4',90,800,10,'from: 19-9-2018, to: 27-9-2018','gh',0,25),(17,'+918179442558','merchant_82','tdr1z4',20,2000,25,'from: 13-9-2018, to: 2-10-2018','my ',0,27),(18,'+918179442558','merchant_82','tdr1z4',200000,2000000,15,'from: 13-9-2018, to: 27-9-2018','my details',0,28),(19,'+918179442558','merchant_82','tdr1z4',50,5000,55,'from: 20-9-2018, to: 27-9-2018','ttt',0,28),(20,'+918179442558','merchant_82','tdr1z4',80,50000,52,'from: 13-9-2018, to: 28-9-2018','gjj',0,28);
/*!40000 ALTER TABLE `negotations_tdr1z4` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:41
