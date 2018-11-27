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
-- Table structure for table `job_tdr1z4`
--

DROP TABLE IF EXISTS `job_tdr1z4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_tdr1z4` (
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
-- Dumping data for table `job_tdr1z4`
--

LOCK TABLES `job_tdr1z4` WRITE;
/*!40000 ALTER TABLE `job_tdr1z4` DISABLE KEYS */;
INSERT INTO `job_tdr1z4` VALUES (1,'nearme','https://www.google.com/maps/?q=12.9789181,77.6576702','agent','aditya','regular','x','10','male','50','8179442558','gopi.','18-9-2018','tjj','8855','2018-10-08'),(2,'gala','https://www.google.com/maps/?q=12.9794275,77.6580313','my job','here','helper','x','0','male','58','8179442558','gopi@k..com','19-9-2018','667','800','2018-10-10'),(3,'gala','https://www.google.com/maps/?q=12.9789213,77.657673','mydesc ','test','rrr','x','rey','male','58','8179442558','gopi@..com','26-9-2018','ghhi','852','2018-10-10'),(4,'my name','https://www.google.com/maps/?q=12.979311,77.6578755','my desc','lm','hjj','x','5','male','25','8179442558','gopi@..com','27-9-2018','89','8525','2018-10-12');
/*!40000 ALTER TABLE `job_tdr1z4` ENABLE KEYS */;
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
