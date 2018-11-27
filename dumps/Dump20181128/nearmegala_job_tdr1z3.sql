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
-- Table structure for table `job_tdr1z3`
--

DROP TABLE IF EXISTS `job_tdr1z3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_tdr1z3` (
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
  `postedon` date NOT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tdr1z3`
--

LOCK TABLES `job_tdr1z3` WRITE;
/*!40000 ALTER TABLE `job_tdr1z3` DISABLE KEYS */;
INSERT INTO `job_tdr1z3` VALUES (1,'nearme','https://www.google.com/maps/?q=12.9707329,77.6696581','marketing','aditya soigne','marketing executive','x','0','female','20','8179442558','gopi.komanduri@gmail.com','26-9-2018','07','50000','2018-10-04'),(2,'nearme','https://www.google.com/maps/?q=12.9707329,77.6696581','testing','beml qtrs','my yest','10','0','male','20','8179442558','gopi.komanduri@gmail.com','20-9-2018','10','5000','2018-10-06'),(3,'nearme','https://www.google.com/maps/?q=12.9707098,77.6696458','sales ','cynosure block','sales','x','1','male','25','8179442558','g@.com','26-9-2018','45:56','5000','2018-10-17'),(4,'nearmegala','https://www.google.com/maps/?q=12.9707231,77.6696589','test','hhh','hkk','x','3','male','25','8179442558','gopi@..com','28-9-2018','12','8000','2018-10-27');
/*!40000 ALTER TABLE `job_tdr1z3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:19:43
