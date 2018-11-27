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
-- Table structure for table `negotations_tdr1z3`
--

DROP TABLE IF EXISTS `negotations_tdr1z3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotations_tdr1z3` (
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations_tdr1z3`
--

LOCK TABLES `negotations_tdr1z3` WRITE;
/*!40000 ALTER TABLE `negotations_tdr1z3` DISABLE KEYS */;
INSERT INTO `negotations_tdr1z3` VALUES (1,'+918179442558','merchant_73','tdr1z3',500,20,86,'8985','vhjj',0,283),(2,'+918179442558','merchant_73','tdr1z3',20,8,8,'555','gjh',0,283),(3,'+918179442558','merchant_77','tdr1z3',1000,80,50,'8','gjhj',0,284),(4,'+918179442558','merchant_77','tdr1z3',1000,80,50,'8','gjhj',0,284),(5,'+918179442558','merchant_77','tdr1z3',1000,500,80,'8555','gjj',0,287),(6,'+918179442558','merchant_84','tdr1z3',150,2000,21,'from: 13-9-2018, to: 20-9-2018','my',0,288),(7,'+918179442558','merchant_84','tdr1z3',500,5000,20,'from: 13-9-2018, to: 20-9-2018','hjj',0,299),(8,'+918179442558','merchant_84','tdr1z3',2222,9999,50,'from: 13-9-2018, to: 21-9-2018','yy',0,288),(9,'+918179442558','merchant_84','tdr1z3',80,50000,25,'from: 13-9-2018, to: 28-9-2018','hj',0,288),(10,'+918179442558','merchant_84','tdr1z3',500,5000,52,'from: 20-9-2018, to: 28-9-2018','ghu',0,300),(11,'+918179442558','merchant_84','tdr1z3',20,300,25,'from: 30-9-2018, to: 31-9-2018','gh',0,300),(12,'+918179442558','merchant_84','tdr1z3',50,50000,3,'from: 26-9-2018, to: 27-9-2018','hk',0,300),(13,'+918179442558','merchant_87','tdr1z3',50,50000,25,'from: 19-9-2018, to: 26-9-2018','tt',0,311),(14,'+918179442558','merchant_88','tdr1z3',2002,5005,25,'from: 14-9-2018, to: 19-9-2018','fhhh',0,312),(15,'+918179442558','merchant_88','tdr1z3',2222,9999,10,'from: 14-9-2018, to: 26-9-2018','yyhu',0,313),(16,'+918179442558','merchant_88','tdr1z3',200,10000,10,'from: 3-10-2018, to: 17-10-2018','cbcv',0,314),(17,'+918179442558','merchant_89','tdr1z3',500,8000,25,'from: 19-9-2018, to: 27-9-2018','test',0,317),(18,'+918179442558','merchant_89','tdr1z3',2000,20000,10,'from: 19-9-2018, to: 2-10-2018','gh',0,318),(19,'+918179442558','merchant_89','tdr1z3',5000,80000,25,'from: 19-9-2018, to: 28-9-2018','gh',0,318),(20,'+918200785387','merchant_89','tdr1z3',8000,10000,25,'from: 17-9-2018, to: 20-9-2018','test',0,322),(21,'+918179442558','merchant_91','tdr1z3',2896,5000,25,'from: 19-9-2018, to: 27-9-2018','neef',0,323),(22,'+918179442558','merchant_91','tdr1z3',8000,80000,25,'from: 19-9-2018, to: 26-9-2018','my desc',0,324),(23,'+918179442558','merchant_92','tdr1z3',8522,50000,25,'from: 20-9-2018, to: 27-9-2018','hu',0,326),(24,'+918179442558','merchant_92','tdr1z3',8522,50000,20,'from: 20-9-2018, to: 27-9-2018','gest',0,326),(25,'+918179442558','merchant_92','tdr1z3',10000,20000,25,'from: 21-9-2018, to: 1-10-2018','test',0,327),(26,'+918179442558','merchant_105','tdr1z3',8000,50000,25,'from: 25-9-2018, to: 26-9-2018','gj',0,328),(27,'+918179442558','merchant_105','tdr1z3',80000,100000,25,'from: 28-9-2018, to: 31-9-2018','vj',0,330);
/*!40000 ALTER TABLE `negotations_tdr1z3` ENABLE KEYS */;
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
