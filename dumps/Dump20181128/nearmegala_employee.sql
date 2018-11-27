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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `yearofservice` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `perks` int(11) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John','Chen','Senior Programmer',31,3,120000,25000,'j@hotmail.com'),(2,'Jan','Pillai','Senior Programmer',32,4,110000,20000,'g@yahoo.com'),(3,'Ane','Pandit','Web Designer',24,3,90000,15000,'a@gmail.com'),(4,'Mary','Anchor','Web Designer',27,2,85000,15000,'m@mail.com'),(5,'Fred','King','Programmer',32,3,75000,15000,'f@net.com'),(6,'John','Mac','Programmer',32,4,80000,16000,'j@hotmail.com'),(7,'Arthur','Sam','Programmer',28,2,75000,14000,'e@yahoo.com'),(8,'Alok','Nanda','Programmer',32,3,70000,10000,'a@yahoo.com'),(9,'Susan','Ra','Multimedia Programmer',32,4,90000,15000,'h@gmail.com'),(10,'Paul','Simon','Multimedia Programmer',23,1,85000,12000,'ps@gmail.com'),(11,'Edward','Parhar','Multimedia Programmer',30,2,75000,15000,'a@hotmail.com'),(12,'Kim','Hunter','Senior Web Designer',32,4,110000,20000,'kim@coolmail.com'),(13,'Roger','Lewis','System Administrator',32,3,100000,13000,'roger@mail.com'),(14,'Danny','Gibson','System Administrator',31,2,90000,12000,'danny@hotmail.com'),(15,'Mike','Harper','Senior Marketing Executive',36,1,120000,28000,'m@gmail.com'),(16,'Mary','Sunday','Marketing Executive',31,5,90000,25000,'monica@bigmail.com'),(17,'Jack','Sim','Marketing Executive',27,1,70000,18000,'hal@gmail.com'),(18,'Joe','Irvine','Marketing Executive',27,1,72000,18000,'joseph@hotmail.com'),(19,'Henry','Ali','Customer Service Manager',32,3,70000,9000,'shahida@hotmail.com'),(20,'Peter','Champion','Finance Manager',32,2,120000,25000,'peter@yahoo.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
