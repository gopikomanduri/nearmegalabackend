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
-- Table structure for table `consumers`
--

DROP TABLE IF EXISTS `consumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumers` (
  `idconsumers` int(11) NOT NULL AUTO_INCREMENT,
  `consumername` varchar(128) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `DOB` date NOT NULL,
  `dpurl` varchar(256) NOT NULL,
  `registeredon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `sex` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idconsumers`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumers`
--

LOCK TABLES `consumers` WRITE;
/*!40000 ALTER TABLE `consumers` DISABLE KEYS */;
INSERT INTO `consumers` VALUES (1,'gopi','+918179442558','1971-10-21','http://res.cloudinary.com/locator/image/upload/v1539876022/bjzj1yrzbym9swojaul9.jpg','2018-10-18 20:51:19',NULL,0),(2,'mornihh','+919966525464','1994-10-21','http://res.cloudinary.com/locator/image/upload/v1540142957/rzdtsntzdcnmibvdlktx.jpg','2018-10-21 22:59:19',NULL,0),(3,'Gopi','+919246655322','1991-10-24','http://res.cloudinary.com/locator/image/upload/v1540397974/clndejqbc481l74npro8.jpg','2018-10-24 21:49:35',NULL,0),(4,'gopo','+918179442558','1981-10-10','http://res.cloudinary.com/locator/image/upload/v1540404452/ymokukc8ff2t5zsowqbi.jpg','2018-10-24 23:37:33',NULL,0),(5,'gopi','+918179442558','1999-10-24','http://res.cloudinary.com/locator/image/upload/v1540405321/ox0ghofljkhpafe6wjin.jpg','2018-10-24 23:52:03',NULL,0),(6,'aruna','+918686091898','1987-10-24','http://res.cloudinary.com/locator/image/upload/v1540405823/bm99md1hx7duikc9whwf.jpg','2018-10-25 00:00:25',NULL,0),(7,'gopi','+918179442558','1995-10-25','http://res.cloudinary.com/locator/image/upload/v1540437206/kfhg7mvoibvndarwinkl.jpg','2018-10-25 08:43:27',NULL,0),(8,'vamshi\n','+919908654334','1990-01-11','http://res.cloudinary.com/locator/image/upload/v1540440891/kvy9suhcf8ti6c7uzsdw.png','2018-10-25 09:44:53',NULL,0),(9,'gopi','+918179442558','1989-10-27','http://res.cloudinary.com/locator/image/upload/v1540588142/i6vspxxdopya3theilpn.jpg','2018-10-27 02:39:03',NULL,0),(10,'gopi','+918179442558','1986-10-30','http://res.cloudinary.com/locator/image/upload/v1540653501/easz9sjzxumlogtbd2h2.jpg','2018-10-27 20:48:23',NULL,0),(11,'shzzn','+919966525464','1996-10-17','http://res.cloudinary.com/locator/image/upload/v1540662034/kc1ctknylh2mfnllkzez.jpg','2018-10-27 23:10:36',NULL,0),(12,'mayur','+918200785387','2002-10-28','http://res.cloudinary.com/locator/image/upload/v1540668044/sedhhhhw4bzid4rqsse2.jpg','2018-10-28 00:50:47',NULL,0),(13,'','+918200785387','2006-10-13','http://res.cloudinary.com/locator/image/upload/v1540668968/qeslrm6z4itxbadityla.jpg','2018-10-28 01:06:10',NULL,0),(14,'','+918200785387','1979-10-28','http://res.cloudinary.com/locator/image/upload/v1540703034/ivmc9w34zbnnq1mchwvw.jpg','2018-10-28 10:33:56',NULL,0),(15,'','+918200785387','1980-10-28','http://res.cloudinary.com/locator/image/upload/v1540703511/gaf1dscelb37ncd7rorb.jpg','2018-10-28 10:41:52',NULL,0),(16,'820078533\n','+918200785387','1993-10-28','http://res.cloudinary.com/locator/image/upload/v1540703764/md0dmpe625dpi8zpamvo.jpg','2018-10-28 10:46:07',NULL,0),(17,'mayur','+918200785387','1989-10-28','http://res.cloudinary.com/locator/image/upload/v1540735423/ahktdxcdxzcaudiukltw.jpg','2018-10-28 19:33:46',NULL,0),(18,'       Gop','+919246655322','1940-10-29','http://res.cloudinary.com/locator/image/upload/v1540804623/ycwnqnbbfwni0zdnguqg.jpg','2018-10-29 14:47:05',NULL,0),(19,'','+918200785387','1991-10-26','http://res.cloudinary.com/locator/image/upload/v1540841423/po2rocfjeqmpsglknzoo.jpg','2018-10-30 01:00:25',NULL,0),(20,'mayur','+918200785387','1991-10-26','http://res.cloudinary.com/locator/image/upload/v1540841533/nrmdkmbybd06ggcbdttf.jpg','2018-10-30 01:02:16',NULL,0),(21,'mayur','+918200785387','1984-10-30','http://res.cloudinary.com/locator/image/upload/v1540841682/gullqtxb9fgs8xi13bzy.jpg','2018-10-30 01:04:44',NULL,0),(22,'gopi','+918179442558','1977-10-30','http://res.cloudinary.com/locator/image/upload/v1540868201/gcuqdz6smyijsmnheajg.jpg','2018-10-30 08:26:43',NULL,0),(23,'mYur','+918200785387','1985-10-31','http://res.cloudinary.com/locator/image/upload/v1540924877/ovbbdh9eryzmerkstxun.jpg','2018-10-31 00:11:20',NULL,0),(24,'gopo','+918179442558','1964-11-05','http://res.cloudinary.com/locator/image/upload/v1541058532/da8194lfo8csh7dbbspg.jpg','2018-11-01 13:18:54',NULL,0),(25,'gopi','+918179442558','1986-11-02','http://res.cloudinary.com/locator/image/upload/v1541101174/i5uoyhzadj3p4cvinblu.jpg','2018-11-02 01:09:35',NULL,0),(26,'Amit K T','+919871278657','1990-08-28','http://res.cloudinary.com/locator/image/upload/v1541145371/bzo94dbzbub6b4rse9gj.jpg','2018-11-02 13:26:13',NULL,0),(27,'gopi','+918179442558','2001-11-04','http://res.cloudinary.com/locator/image/upload/v1541333767/dzcibxmw6zrabt51gzof.jpg','2018-11-04 17:46:08',NULL,0),(28,'mayur','+919904405269','1993-11-07','http://res.cloudinary.com/locator/image/upload/v1541579274/eox6aljkszh0mkwiyqy1.jpg','2018-11-07 13:57:57',NULL,0),(29,'gopi','+918179442558','1978-11-07','http://res.cloudinary.com/locator/image/upload/v1541604333/rndcukx8xfe9yugaqq2p.jpg','2018-11-07 20:55:35',NULL,0),(30,'Bujji','+919246655322','1975-11-07','http://res.cloudinary.com/locator/image/upload/v1541604665/twgqzyrvoozdrnaf6uhe.jpg','2018-11-07 21:01:07',NULL,0),(31,'Gopi','+919246655322','1979-11-07','http://res.cloudinary.com/locator/image/upload/v1541605429/jrwxriifnykohpkceb9e.jpg','2018-11-07 21:13:51',NULL,0),(32,'mayur','+919904405269','1997-11-10','http://res.cloudinary.com/locator/image/upload/v1541868634/kxlebgcafrinsbgotena.jpg','2018-11-10 22:20:38',NULL,0),(33,'mayur','+919904405269','1988-11-10','http://res.cloudinary.com/locator/image/upload/v1541872683/gypex09gzjxffmzag3sx.jpg','2018-11-10 23:28:05',NULL,0),(34,'gopi','+918179442558','1975-11-11','http://res.cloudinary.com/locator/image/upload/v1541881649/shw5b4filre7v2ocfmag.jpg','2018-11-11 01:57:31',NULL,0),(35,'gopi','+918179442558','1945-11-13','http://res.cloudinary.com/locator/image/upload/v1542110759/bnnkdyqjldtcbmapzh9a.jpg','2018-11-13 17:36:01',NULL,0),(36,'gopi','+918179442558','1986-11-14','http://res.cloudinary.com/locator/image/upload/v1542140379/encdezjgmn0adcxocwy0.jpg','2018-11-14 01:49:41',NULL,0),(37,'gopi','+918179442558','1997-11-14','http://res.cloudinary.com/locator/image/upload/v1542141149/bihtws1y6ku8keqdlszg.jpg','2018-11-14 02:02:31',NULL,0),(38,'gopi','+918179442558','1991-11-14','http://res.cloudinary.com/locator/image/upload/v1542141545/vtsobuilgplym7gaoqvb.jpg','2018-11-14 02:09:07',NULL,0),(39,'gopi','+918179442558','1991-11-14','http://res.cloudinary.com/locator/image/upload/v1542141896/a9uibxsdnsmytawqexty.jpg','2018-11-14 02:14:58',NULL,0),(40,'gopi','+918247638529','2002-11-14','http://res.cloudinary.com/locator/image/upload/v1542213378/p660hdj2uuupoujk9khs.jpg','2018-11-14 22:06:20',NULL,0),(41,'Murali','+919849124680','1982-11-02','http://res.cloudinary.com/locator/image/upload/v1542264387/ztr4raqn8rehdazirl7c.jpg','2018-11-15 12:16:29',NULL,0),(42,'aruna','+918686091898','1983-11-15','http://res.cloudinary.com/locator/image/upload/v1542267378/utmjpafrnyldqoeufdd2.png','2018-11-15 13:06:19',NULL,0),(43,'mayur','+918200785387','1981-11-16','http://res.cloudinary.com/locator/image/upload/v1542307097/rwitox2knvxbjkrxnri7.jpg','2018-11-16 00:08:18',NULL,0),(44,'msyur','+918200785387','2000-11-17','http://res.cloudinary.com/locator/image/upload/v1542393342/zgotkdp5fpts2dgxuc68.jpg','2018-11-17 00:05:44',NULL,0),(45,'gppi','+918179442558','1972-11-21','http://res.cloudinary.com/locator/image/upload/v1542803918/b1nkmhpbqnixzr5j51lc.jpg','2018-11-21 18:08:39',NULL,0),(46,'Aditya ','+919573637437','1995-06-04','http://res.cloudinary.com/locator/image/upload/v1542822835/d2xnbynhqvxenxe93vby.jpg','2018-11-21 23:23:56',NULL,0),(47,'mayur','+918200785387','1962-11-22','http://res.cloudinary.com/locator/image/upload/v1542909763/lz5rtg34replxogdhvmh.jpg','2018-11-22 23:32:46',NULL,0),(48,'chandana','+916281523374','1988-02-05','http://res.cloudinary.com/locator/image/upload/v1543235923/oqg1boneg9o1r4rtrt7e.jpg','2018-11-26 18:08:46',NULL,0);
/*!40000 ALTER TABLE `consumers` ENABLE KEYS */;
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
