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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `imgurl` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Restaurant VegFood  ','https://res.cloudinary.com/locator/image/upload/v1540743476/categories/vegetarianfood.png'),(2,'Restaurant  NonVeg Food','https://res.cloudinary.com/locator/image/upload/v1540744002/categories/nonvegfood.png'),(3,'Vegetables','https://res.cloudinary.com/locator/image/upload/v1540744412/categories/vegetables.png'),(4,'NonVeg Raw Items','https://res.cloudinary.com/locator/image/upload/v1540745294/categories/nonvegrawitems.jpg'),(5,'Ice Creams','https://res.cloudinary.com/locator/image/upload/v1540747088/categories/icecreams.jpg'),(6,'Coffee shop','https://res.cloudinary.com/locator/image/upload/v1540747255/categories/coffeeshop.jpg'),(7,'Groceries','https://res.cloudinary.com/locator/image/upload/v1540747455/categories/grocery.jpg'),(8,'Men Apparel','https://res.cloudinary.com/locator/image/upload/v1540748297/categories/men_apparel.jpg'),(9,'Women Apparel','https://res.cloudinary.com/locator/image/upload/v1540748822/categories/womenappareal.jpg'),(10,'Child Apparel','https://res.cloudinary.com/locator/image/upload/v1540749280/categories/childapparel.png'),(11,'stationery','https://res.cloudinary.com/locator/image/upload/v1540749438/categories/stationery.jpg'),(12,'Mobile Phones','https://res.cloudinary.com/locator/image/upload/v1540749708/categories/mobiles.jpg'),(13,'Bakery','https://res.cloudinary.com/locator/image/upload/v1540749798/categories/bakery.jpg'),(14,'pendrives','https://res.cloudinary.com/locator/image/upload/v1540749892/categories/pendrives.jpg'),(15,'Electronics','https://res.cloudinary.com/locator/image/upload/v1540750069/categories/electronicitems.png'),(16,'Men accessories','https://res.cloudinary.com/locator/image/upload/v1540750208/categories/menaccessories.jpg'),(17,'Women accessories','https://res.cloudinary.com/locator/image/upload/v1540750349/categories/womenaccessories.jpg'),(18,'Men Saloon','https://res.cloudinary.com/locator/image/upload/v1540750509/categories/mensalon.jpg'),(19,'Men SPA','https://res.cloudinary.com/locator/image/upload/v1540750723/categories/menspa.jpg'),(20,'Women SPA','https://res.cloudinary.com/locator/image/upload/v1540750882/categories/womenspa.jpg'),(21,'Men GYM','https://res.cloudinary.com/locator/image/upload/v1540751152/categories/mengym.jpg'),(22,'Women GYM','https://res.cloudinary.com/locator/image/upload/v1540751311/categories/womengym.jpg'),(23,'Health n Fitness','https://res.cloudinary.com/locator/image/upload/v1540751401/categories/healthandfitness.jpg'),(24,'Plastic goods','https://res.cloudinary.com/locator/image/upload/v1540751569/categories/plasticgoods.jpg'),(25,'Kitchen appliances','https://res.cloudinary.com/locator/image/upload/v1540751664/categories/kitchemaccessories.jpg'),(26,'Hardware','https://res.cloudinary.com/locator/image/upload/v1540751887/categories/hardwareaccessories.jpg'),(27,'Toys','https://res.cloudinary.com/locator/image/upload/v1540752088/toys_tpeume.jpg'),(28,'Pets','https://res.cloudinary.com/locator/image/upload/v1540752276/Pets_lbnynq.jpg'),(29,'Medicals','https://res.cloudinary.com/locator/image/upload/v1540752439/medicals_jcpwnq.jpg'),(30,'Diagnostics','https://res.cloudinary.com/locator/image/upload/v1540752548/categories/diagnostics.jpg'),(31,'Novelties ','https://res.cloudinary.com/locator/image/upload/v1540752742/categories/novelties.jpg'),(32,'Sports','https://res.cloudinary.com/locator/image/upload/v1540752835/sports_xlklqf.jpg'),(33,'Institutes','https://res.cloudinary.com/locator/image/upload/v1540752945/educational_v3bv97.jpg'),(34,'women\'s beauty parlour','https://res.cloudinary.com/locator/image/upload/v1540753081/categories/womenbeautyparlour.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
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
