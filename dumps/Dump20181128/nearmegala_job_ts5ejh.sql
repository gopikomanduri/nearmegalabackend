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
-- Table structure for table `job_ts5ejh`
--

DROP TABLE IF EXISTS `job_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_ts5ejh` (
  `idjobs` int(11) NOT NULL AUTO_INCREMENT,
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
  `postedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_ts5ejh`
--

LOCK TABLES `job_ts5ejh` WRITE;
/*!40000 ALTER TABLE `job_ts5ejh` DISABLE KEYS */;
INSERT INTO `job_ts5ejh` VALUES (1,'testnew','https://www.google.com/maps/?q=23.0225,72.5714','testdescnew','testlandmarknew','testpost','testeducation','testexp','male','56','990552266','new@gmail.com','12-09-2018','9to12','50000','2018-10-03 01:21:07'),(2,'testnew','https://www.google.com/maps/?q=23.0225,72.5714','testdescnew','testlandmarknew','testpost','testeducation','testexp','male','56','990552266','new@gmail.com','12-09-2018','9to12','50000','2018-10-03 01:40:44'),(3,'bzbz','https://www.google.com/maps/?q=23.0508095,72.6448676','zhhz','zhzh','zhzh','zbzb','zbzvz','male','79797','7879799787','zbzbzh','3-9-2018','zhzbz','7979797','2018-10-03 01:47:44'),(4,'bzbz','https://www.google.com/maps/?q=23.0508095,72.6448676','zhhz','zhzh','zhzh','zbzb','zbzvz','male','79797','7879799787','zbzbzh','3-9-2018','zhzbz','7979797','2018-10-03 01:47:49'),(5,'demo','https://www.google.com/maps/?q=23.0508511,72.6452372','ggg','vvg','vgg','bvg','vvg','male','88','9928430476','abcd@gmail.com','4-9-2018','9to1@','50000','2018-10-04 00:00:00'),(6,'hfgdxgh','https://www.google.com/maps/?q=23.0508511,72.6452372','tsgsst','hxgx','zggz','zggzgz','gzgzzg','male','868','655442','xg@g.c','4-9-2018','bcch','686865','2018-10-04 00:00:00'),(7,'vvvv','https://www.google.com/maps/?q=23.0508511,72.6452372','gf','ff','ff','ff','gg','male','88','55555555855','ccc@g.c','4-9-2018','vvv','5555','2018-10-04 00:00:00'),(11,'mayur','https://www.google.com/maps/?q=23.0508511,72.6452372','clerk','maruli plaza','cleark','bechlor','2 year','male','55','1234567890','mj@gmail.com','5-9-2018','5to11','20000','2018-10-05 00:00:00');
/*!40000 ALTER TABLE `job_ts5ejh` ENABLE KEYS */;
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
