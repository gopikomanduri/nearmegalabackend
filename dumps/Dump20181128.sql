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
-- Table structure for table `ad_abcdef`
--

DROP TABLE IF EXISTS `ad_abcdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_abcdef` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_abcdef`
--

LOCK TABLES `ad_abcdef` WRITE;
/*!40000 ALTER TABLE `ad_abcdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_abcdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr1rx`
--

DROP TABLE IF EXISTS `ad_tdr1rx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1rx` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1rx`
--

LOCK TABLES `ad_tdr1rx` WRITE;
/*!40000 ALTER TABLE `ad_tdr1rx` DISABLE KEYS */;
INSERT INTO `ad_tdr1rx` VALUES (1,'merchant_41',1,2018,8,25,21,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534841824/merchant_41/gsrvmfxpoupmlebvquvb.png','Znd','08:57:06 2018-08-21','Hdb','shop name'),(2,'merchant_43',1,21,7,2018,21,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534856633/merchant_43/j5ph69aqlkhnxnk721sz.png','','13:03:55 2018-08-21','','shop name');
/*!40000 ALTER TABLE `ad_tdr1rx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr1tv`
--

DROP TABLE IF EXISTS `ad_tdr1tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1tv` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1tv`
--

LOCK TABLES `ad_tdr1tv` WRITE;
/*!40000 ALTER TABLE `ad_tdr1tv` DISABLE KEYS */;
INSERT INTO `ad_tdr1tv` VALUES (1,'merchant_321',1,26,11,2018,26,11,2018,'http://res.cloudinary.com/locator/image/upload/v1543236239/merchant_290/dlc1mb0hqsi1yobyehy9.jpg','','18:14:01 2018-11-26','','shop name');
/*!40000 ALTER TABLE `ad_tdr1tv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr1xp`
--

DROP TABLE IF EXISTS `ad_tdr1xp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1xp` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1xp`
--

LOCK TABLES `ad_tdr1xp` WRITE;
/*!40000 ALTER TABLE `ad_tdr1xp` DISABLE KEYS */;
INSERT INTO `ad_tdr1xp` VALUES (1,'merchant_166',1,2,11,2018,2,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541134345/merchant_166/jwtydjykbdwwork9r9ck.png','','10:22:28 2018-11-02','','shop name');
/*!40000 ALTER TABLE `ad_tdr1xp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr1z2`
--

DROP TABLE IF EXISTS `ad_tdr1z2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1z2` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1z2`
--

LOCK TABLES `ad_tdr1z2` WRITE;
/*!40000 ALTER TABLE `ad_tdr1z2` DISABLE KEYS */;
INSERT INTO `ad_tdr1z2` VALUES (1,'merchant_35',1,17,7,2018,17,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534516223/merchant_35/uhekxscox5iuswy8amti.jpg','delight','14:30:27 2018-08-17','delhi','shop name'),(2,'merchant_35',1,17,7,2018,17,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534528858/merchant_35/i4jor6f9wp4ut6h5fbxe.jpg','andhra image','18:01:00 2018-08-17','andhra','shop name'),(3,'merchant_64',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535524365/merchant_64/yoh1h7klw8zvqxdfcl0p.jpg','cake','12:02:47 2018-08-29','','shop name');
/*!40000 ALTER TABLE `ad_tdr1z2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr1z3`
--

DROP TABLE IF EXISTS `ad_tdr1z3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1z3` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1z3`
--

LOCK TABLES `ad_tdr1z3` WRITE;
/*!40000 ALTER TABLE `ad_tdr1z3` DISABLE KEYS */;
INSERT INTO `ad_tdr1z3` VALUES (53,'merchant_0',1,9,7,2018,9,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533819353/merchant_0_%2B918179442558/spxjntacmvgadwxthn4d.jpg','fhfy g','12:56:09 2018-08-09','555545','shop name'),(54,'merchant_15',1,10,7,2018,9,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533849552/merchant_15_%2B918247638529/yyiaiqa2f5vqtrux3bj9.jpg','dghh','21:19:25 2018-08-09','dffg','shop name'),(55,'merchant_0',1,10,7,2018,10,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533901840/merchant_0_%2B918179442558/vxytwrsblqlnpnxkcp64.jpg','ikea desc','11:50:42 2018-08-10','ikea','shop name'),(56,'merchant_15',1,10,7,2018,10,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533902110/merchant_15_%2B918247638529/sepelyrdfouev7go4nja.jpg','13557','11:55:13 2018-08-10','my cod','shop name'),(57,'merchant_0',1,11,7,2018,10,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533931443/merchant_0_%2B918179442558/d096ehfdeku2zj7wrmr8.jpg','fhhjj','20:04:23 2018-08-10','56567','shop name'),(58,'merchant_17',1,11,7,2018,10,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533934221/merchant_17_%2B918247638529/v8vzz1pt9qpzfaisfyqm.jpg','fhcgv','20:50:31 2018-08-10','444444','shop name'),(59,'merchant_17',1,11,7,2018,11,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533987729/merchant_17_%2B918247638529/w73si5lq34abe2tcyujc.jpg','gkkk','11:42:12 2018-08-11','5767','shop name'),(60,'merchant_17',1,11,7,2018,11,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533987846/merchant_17_%2B918247638529/zovjmnsy82dan1zbty34.jpg','466 ghhj','11:44:07 2018-08-11','30june','shop name'),(61,'merchant_17',1,11,7,2018,11,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533993297/merchant_17_%2B918247638529/ifi94dkl7p3pxsvxp2hv.jpg','s8per manmn','13:14:59 2018-08-11','superm','shop name'),(62,'merchant_17',1,11,7,2018,11,8,2018,'http://res.cloudinary.com/locator/image/upload/v1533995993/merchant_17_%2B918247638529/ce4zidxox9cubelgxkgr.jpg','my qr code','13:59:55 2018-08-11','qrcode','shop name'),(63,'merchant_0',1,12,7,2018,12,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534096871/merchant_0_%2B918179442558/lqxjohkl1cglxye3o8er.jpg','show','18:01:21 2018-08-12','bookmy','shop name'),(64,'merchant_0',1,12,7,2018,12,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534097064/merchant_0/grc5uzvw2exo5ugocqiy.jpg','clean img','18:04:26 2018-08-12','whitei','shop name'),(65,'merchant_17',1,12,7,2018,12,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534097231/merchant_17/hvtu87tfzh8oiemelbyj.jpg','my ward','18:07:13 2018-08-12','wardro','shop name'),(66,'merchant_0',1,13,7,2018,13,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534131277/merchant_0/jxazb1c4bbwslxyqdgdr.jpg','my screen shot','03:34:40 2018-08-13','screen','shop name'),(67,'merchant_0',1,13,7,2018,13,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534171419/merchant_0/aawmuiywl8engaqhzuhw.jpg','fhg hh','14:43:41 2018-08-13','adv','shop name'),(68,'merchant_0',1,14,7,2018,14,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534235910/merchant_0/guqdjrvtvp3mxnpqqfhz.jpg','my offer','08:38:32 2018-08-14','offer','shop name'),(69,'merchant_0',1,14,7,2018,14,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534235940/merchant_0/bp8rrofl5lkwuy8qvyia.jpg','rut','08:39:01 2018-08-14','5655','shop name'),(70,'merchant_0',1,14,7,2018,14,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534238082/merchant_0/mqmqejvxu6msjipuhscq.jpg','desc ghg','09:14:44 2018-08-14','upload','shop name'),(71,'merchant_0',1,14,7,2018,14,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534259534/merchant_0/vak4x4ur8kcvrcydnke9.jpg','offer ','15:12:18 2018-08-14','myapp','shop name'),(72,'merchant_21',1,2018,8,17,16,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534400019/merchant_21/pmk0c9zx74luwqh5iorr.jpg','vbshn','06:13:41 2018-08-16','saree','shop name'),(73,'merchant_21',1,16,7,2018,16,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534400051/merchant_21/tjtqbi2rglruoysxyjfk.jpg','hsnnsu','06:14:13 2018-08-16','hnshd ','shop name'),(74,'merchant_23',1,2018,8,17,16,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534426435/merchant_23/nlfhga2xbvjtodtwcxi1.jpg','bbs','13:33:57 2018-08-16','saree','shop name'),(75,'merchant_23',1,2018,8,20,17,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534514487/merchant_23/p80kxzhy0oo17vjusvcq.jpg','fun mania hobby classes','14:01:30 2018-08-17','06','shop name'),(76,'merchant_23',1,2018,8,20,17,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534514529/merchant_23/j6q05srwwm7gguxryrgy.jpg','namkeen ','14:02:11 2018-08-17','07','shop name'),(77,'merchant_23',1,2018,8,20,17,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534515862/merchant_23/pze1jfovnjz02gedludg.png','nidhi yoga','14:24:25 2018-08-17','08','shop name'),(78,'merchant_23',1,2018,8,20,17,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534518086/merchant_23/wx553p8hphikh8wrxcpw.png','Delhi delite','15:01:28 2018-08-17','09','shop name'),(79,'merchant_23',1,2018,8,19,17,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534519357/merchant_23/fciim3l7y0xlfxjn7sda.png','halka snacks','15:22:40 2018-08-17','10','shop name'),(80,'merchant_36',1,18,7,2018,18,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534597853/merchant_36/akcb2b62ujrib78qy3yg.jpg','upload examplw','13:10:55 2018-08-18','myoffe','shop name'),(81,'merchant_37',1,2018,8,19,18,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534600859/merchant_37/pdk24sraavnq2fdx0lkt.jpg','trial offer','14:01:01 2018-08-18','123456','shop name'),(82,'merchant_39',1,2018,8,25,19,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534665611/merchant_39/gjrtejadinvehysgqb49.png','Murali offer','08:00:13 2018-08-19','Myoffe','shop name'),(83,'merchant_44',1,21,7,2018,21,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534859687/merchant_44/pwwh4lxfwh3bw8iwsj8d.jpg','','13:54:48 2018-08-21','','shop name'),(84,'merchant_45',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534882610/merchant_45/jcqcsajkhofwfsvnwjoy.jpg','tryit','01:46:52 2018-08-22','try','shop name'),(85,'merchant_45',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534883947/merchant_45/e08p79oeduyzmoyhetqj.jpg','my roti','02:09:18 2018-08-22','roti','shop name'),(86,'merchant_45',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534883981/merchant_45/fvq7ropczzi2mnbxzd6k.jpg','gjh','02:09:43 2018-08-22','6666','shop name'),(87,'merchant_45',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534885340/merchant_45/zr6lilzrxhn50iuj347w.jpg','gerta','02:32:21 2018-08-22','geet','shop name'),(88,'merchant_44',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534911177/merchant_44/kwmh3kemek0aomgzph3l.jpg','my bed','09:43:00 2018-08-22','bed sh','shop name'),(89,'merchant_47',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534920964/merchant_47/z1s0r8drnjiigm3nhfrg.jpg','testing offer','12:26:07 2018-08-22','test','shop name'),(90,'merchant_45',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534930576/merchant_45/cp1u1nlrveoavcfp91mz.jpg','my des','15:06:18 2018-08-22','gjhj g','shop name'),(91,'merchant_45',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534930811/merchant_45/lwbmyvawqga9jrwo5sg7.jpg','fhbj gh','15:10:13 2018-08-22','ygh','shop name'),(92,'merchant_45',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534931160/merchant_45/fpj9dppmhhd1wdjah71s.jpg','vhh ','15:16:02 2018-08-22','677','shop name'),(93,'merchant_47',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534931252/merchant_47/sz0lza2ocvhskmfbtrkr.jpg','testing in vr mall','15:17:34 2018-08-22','vrtest','shop name'),(94,'merchant_45',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534941634/merchant_45/sencd1hezatlolqycdl7.jpg','food food','18:10:37 2018-08-22','food','shop name'),(95,'merchant_53',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534956589/merchant_53/jht9tzqh5kketjpfmc2z.jpg','high ghj','22:19:51 2018-08-22','ghhh','shop name'),(96,'merchant_57',1,23,8,2018,23,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535030300/merchant_57/ytsxr7n2xfsboqdhupco.jpg','our ','18:48:22 2018-08-23','issues','shop name'),(97,'merchant_60',1,23,8,2018,23,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535040783/merchant_60/nibtuookqd025joyqojn.jpg','guy j','21:43:05 2018-08-23','tytt','shop name'),(98,'merchant_57',1,24,8,2018,24,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535053020/merchant_57/so4uckmbeqinpy2ug8zp.jpg','pic','01:07:01 2018-08-24','loc','shop name'),(99,'merchant_57',1,24,8,2018,24,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535058857/merchant_57/actosftauf6mpcn7vc8q.jpg','offer details','02:44:19 2018-08-24','offers','shop name'),(100,'merchant_57',1,24,8,2018,24,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535086841/merchant_57/ux1eapoetnmh6i7wr5ge.jpg','676 uu','10:30:43 2018-08-24','gopi','shop name'),(101,'merchant_44',1,24,8,2018,24,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535124481/merchant_44/q5pwgpwjbm1ellt7dylc.jpg','vjgj hj','20:58:03 2018-08-24','godse','shop name'),(102,'merchant_57',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535139439/merchant_57/fs5aruzqgolqj7wtcei8.jpg','selling','01:07:21 2018-08-25','sellin','shop name'),(103,'merchant_57',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535143220/merchant_57/xttrm0emkjyvws1tucyg.jpg','chh h','02:10:22 2018-08-25','gh','shop name'),(104,'merchant_57',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535143305/merchant_57/w3umstvqwe0sia4ae8vj.jpg','vjj h','02:11:47 2018-08-25','ghj','shop name'),(105,'merchant_57',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535143330/merchant_57/cxcj7ngtzrr1toghebeb.jpg','ghj ','02:12:11 2018-08-25','gjj h','shop name'),(106,'merchant_57',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535143515/merchant_57/q8z002ukcmsxoyapfiqj.jpg','vhhj','02:15:16 2018-08-25','gj hj','shop name'),(107,'merchant_44',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535145926/merchant_44/zt2vpcsps44e8hvxnzoa.jpg','vadaa','02:55:28 2018-08-25','vada','shop name'),(108,'merchant_44',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535146126/merchant_44/y6cieobc2pwpjanmxhlg.jpg','cbj','02:58:48 2018-08-25','gh','shop name'),(109,'merchant_44',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535146805/merchant_44/durmmdnslahga4seu4bv.jpg','ghh h','03:10:07 2018-08-25','yuty','shop name'),(110,'merchant_44',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535148969/merchant_44/crmkg6w4jmu4lxmjgshb.jpg','cv','03:46:11 2018-08-25','gg','shop name'),(111,'merchant_44',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535149105/merchant_44/ygdflexya7hqii07phhb.jpg','ghjh','03:48:27 2018-08-25','hh','shop name'),(112,'merchant_44',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535149158/merchant_44/ou8lbtcfvrhyta01wyky.jpg','gjj','03:49:19 2018-08-25','hhh','shop name'),(113,'merchant_44',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535184673/merchant_44/nzfvznfgrrr91yb3gjbv.jpg','offer description 12345','13:41:14 2018-08-25','timeto','shop name'),(114,'merchant_44',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535209946/merchant_44/ix6pt6devcvzjhqa5jzv.jpg','gjj','20:42:29 2018-08-25','yiu','shop name'),(115,'merchant_57',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535266107/merchant_57/g5glvycvatfisfpramrf.jpg','fyt h','12:18:29 2018-08-26','5656','shop name'),(116,'merchant_57',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535302739/merchant_57/i2xvoz41otnyazjdct3t.jpg','fh h,','22:29:01 2018-08-26','mypic ','shop name'),(117,'merchant_57',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535303098/merchant_57/artzpelqimcnigjx41ec.jpg','ch hh','22:35:00 2018-08-26','ghh','shop name'),(118,'merchant_57',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535303413/merchant_57/wanuucypeduodnrhs3j2.jpg','fh hi','22:40:18 2018-08-26','ads','shop name'),(119,'merchant_57',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535303575/merchant_57/b28nyp2nfcre6n2gkuek.jpg','mhtugg','22:42:57 2018-08-26','tiffin','shop name'),(120,'merchant_57',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535303978/merchant_57/qtnxp4srakfm7xg4tdgn.jpg','gu yu','22:49:39 2018-08-26','hjh','shop name'),(121,'merchant_44',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535304501/merchant_44/dji0nnvljxohccsbqtkx.jpg','chhhh','22:58:25 2018-08-26','hj','shop name'),(122,'merchant_44',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535304543/merchant_44/qcguej1kwxamicnjgzrg.jpg','my gala','22:59:05 2018-08-26','gala','shop name'),(123,'merchant_44',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535304807/merchant_44/fxjjurigbr9px6mf62iw.jpg','fjj gh','23:03:28 2018-08-26','yuyy7','shop name'),(124,'merchant_44',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535305110/merchant_44/onmsgmy9qkrhoxqyawup.jpg','hj','23:08:33 2018-08-26','bird','shop name'),(125,'merchant_44',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535305334/merchant_44/sdjtjmu8cwtinc4vttxh.jpg','chg','23:12:15 2018-08-26','god','shop name'),(126,'merchant_44',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535305706/merchant_44/cttcdpbyo5kaii5pcav0.jpg','vj','23:18:28 2018-08-26','gjj','shop name'),(127,'merchant_44',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535306023/merchant_44/lbky1liuuytytxre0ddu.jpg','fhh g','23:23:44 2018-08-26','again','shop name'),(128,'merchant_44',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535306458/merchant_44/uvkxnmd4k7yrp3bz9vel.jpg','ghj','23:31:01 2018-08-26','godaga','shop name'),(129,'merchant_44',1,26,8,2018,26,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535307010/merchant_44/g5zc7qextzxvafhyfxq5.jpg','gh','23:40:12 2018-08-26','birdag','shop name'),(130,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535308456/merchant_44/tjtgherwedcyb2fspdbz.jpg','vadaaa','00:04:17 2018-08-27','vada','shop name'),(131,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535309497/merchant_44/ooenbz5lyyjvwwgime7p.jpg','card','00:21:38 2018-08-27','mycard','shop name'),(132,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535309798/merchant_44/dfsqiazcakzirppbcpa1.jpg','fg','00:26:40 2018-08-27','qr','shop name'),(133,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535310307/merchant_44/iptm6hwy1he3mpk9tsw0.jpg','','00:35:09 2018-08-27','offer','shop name'),(134,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535310320/merchant_44/dnzfnbbdyghgojummo1y.jpg','','00:35:21 2018-08-27','offer1','shop name'),(135,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535311890/merchant_44/talivigy8tnkkficzfso.jpg','fff','01:01:31 2018-08-27','galaa','shop name'),(136,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535312925/merchant_44/ndbpguiuuwedzfwktoeo.jpg','add','01:18:47 2018-08-27','ads','shop name'),(137,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535313521/merchant_44/fqsvcysfdcgromrbmoqf.jpg','','01:28:42 2018-08-27','ghh','shop name'),(138,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535314081/merchant_44/vygmvnwflre0gnjuoz4y.jpg','cjj','01:38:03 2018-08-27','fjj','shop name'),(139,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535314546/merchant_44/x5ou4knioqtteabofkkl.jpg','cjj','01:45:47 2018-08-27','gy','shop name'),(140,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535315032/merchant_44/juqtjaud7clgp7efctsq.jpg','gh h','01:53:53 2018-08-27','ggg','shop name'),(141,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535315525/merchant_44/aquozjcajlfnk3scaej4.jpg','vnj','02:02:07 2018-08-27','fler','shop name'),(142,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535315698/merchant_44/dg462fhqn3zaqiddxoiz.jpg','chh','02:05:00 2018-08-27','ggg','shop name'),(143,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535316152/merchant_44/kv7jrddzqfeqca7r88wk.jpg','cgg','02:12:34 2018-08-27','ad','shop name'),(144,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535316264/merchant_44/fhqn0izonwvcglec2z45.jpg','fh','02:14:25 2018-08-27','god','shop name'),(145,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535316407/merchant_44/mr8r9ai0p5m850ejhnrg.jpg','ghh','02:16:49 2018-08-27','polics','shop name'),(146,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535316672/merchant_44/gyynniyrri2wr44zx9yq.jpg','vbn','02:21:13 2018-08-27','vadaa','shop name'),(147,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535317000/merchant_44/cp9dr0jznnhjykgap9rz.jpg','vvh','02:26:42 2018-08-27','god','shop name'),(148,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535317339/merchant_44/ymsvxpkbsspbrcbim02o.jpg','cjj','02:32:21 2018-08-27','gk','shop name'),(149,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535317452/merchant_44/uacea72xyhtfns4cyp9b.jpg','','02:34:14 2018-08-27','gh','shop name'),(150,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535317473/merchant_44/erg1tco4aiqqp9z8ozmc.jpg','','02:34:34 2018-08-27','','shop name'),(151,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535338756/merchant_57/ix6svchmrffwszsywz7x.jpg','vfff','08:29:18 2018-08-27','55','shop name'),(152,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535338823/merchant_57/cbhais6pdjonougovizb.jpg','guu','08:30:25 2018-08-27','murLi','shop name'),(153,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535338843/merchant_57/l5k9brvwwd8otbmgspti.jpg','gug6','08:30:45 2018-08-27','yy677','shop name'),(154,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535338860/merchant_57/lwons0xrxpefqsndfkbm.jpg','fgy','08:31:02 2018-08-27','ads','shop name'),(155,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535338948/merchant_57/chpbpgd98nbtfsru6nqo.jpg','gi','08:32:29 2018-08-27','yuu','shop name'),(156,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535339681/merchant_57/xoiaoon6zqug2ntebvaf.jpg','vhh','08:44:43 2018-08-27','imgs','shop name'),(157,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535341171/merchant_57/bf6lwpkk8voniyvfgjmm.jpg','mydoc','09:09:33 2018-08-27','doc','shop name'),(158,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535341276/merchant_44/pjsjooga8nkx6fkdljyl.png','fjh gh','09:11:17 2018-08-27','card','shop name'),(159,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535341508/merchant_44/msbkzu8ks3yieftoipbt.jpg','gu g','09:15:12 2018-08-27','667','shop name'),(160,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535344794/merchant_44/he7irvdxoz58kv6lqtuu.jpg','gh','10:09:56 2018-08-27','viii','shop name'),(161,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535344899/merchant_44/rmv0yj9av1cz8crwsyen.jpg','bjb b','10:11:40 2018-08-27','ogg','shop name'),(162,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535349833/merchant_57/umpbmckfoznj8cjs4dzt.jpg','ads','11:33:55 2018-08-27','ad','shop name'),(163,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535350417/merchant_57/tz1zidgi4gy0s3mo2hvc.jpg','mycode','11:43:39 2018-08-27','qrcode','shop name'),(164,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535373950/merchant_57/ppaljkhujupkkr8omk1y.jpg','ghh','18:15:52 2018-08-27','chk','shop name'),(165,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535374457/merchant_57/slsgzdgkzc7x5zt89wxy.jpg','fgg','18:24:19 2018-08-27','ggg','shop name'),(166,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535374551/merchant_57/t7to6ydhgajzrndaum6b.jpg','gh','18:25:53 2018-08-27','yy','shop name'),(167,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535374858/merchant_57/aebyom7s4nqv3yrfulsw.jpg','kk','18:31:00 2018-08-27','gg','shop name'),(168,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535376212/merchant_57/imydglm7ovdswckkls8c.jpg','gh g','18:53:34 2018-08-27','gruha','shop name'),(169,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535376258/merchant_57/i1thttrbute7wlaia02j.jpg','','18:54:22 2018-08-27','','shop name'),(170,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535378683/merchant_57/wrzsawxiytwjuwonynp0.jpg','fu67','19:34:44 2018-08-27','yyyy','shop name'),(171,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535379209/merchant_57/eyvdfro5wn07xccsa2ug.jpg','vr mall','19:43:31 2018-08-27','vr','shop name'),(172,'merchant_53',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535380750/merchant_53/ye0uoayyh3rl5zbhurh4.jpg','chari','20:09:12 2018-08-27','chinni','shop name'),(173,'merchant_53',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535380795/merchant_53/yfxz0dsdjox5zk4sm1dz.jpg','moeeeee','20:09:57 2018-08-27','more','shop name'),(174,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535384516/merchant_57/uf3fja55xcpm8g5ln776.jpg','yui','21:11:58 2018-08-27','778','shop name'),(175,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535386535/merchant_57/g8jbfmmb8xakptfgx5wc.jpg','gh','21:45:36 2018-08-27','chinni','shop name'),(176,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535386566/merchant_57/eje2qghopvj2ci15ne01.jpg','','21:46:07 2018-08-27','','shop name'),(177,'merchant_44',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535386722/merchant_44/lxklihlq4nwm3hbvbjed.jpg','des','21:48:44 2018-08-27','meh','shop name'),(178,'merchant_53',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535387521/merchant_53/huwkxeqczi2knxjwvvff.jpg','Good boy','22:02:05 2018-08-27','chinni','shop name'),(179,'merchant_57',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535387662/merchant_57/pvobbbfzsfpxnul7upx8.jpg','','22:04:24 2018-08-27','','shop name'),(180,'merchant_53',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535389913/merchant_53/df3k1kn3lacns0mnojol.jpg','','22:41:55 2018-08-27','','shop name'),(181,'merchant_53',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535390133/merchant_53/c1rp7doxvqrlxu4eqbwb.jpg','','22:45:35 2018-08-27','','shop name'),(182,'merchant_53',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535391410/merchant_53/drxcvigiy9j8dcsqirlx.jpg','','23:06:55 2018-08-27','gg','shop name'),(183,'merchant_53',1,27,8,2018,27,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535391678/merchant_53/rsi5kga09snno3ljjicr.jpg','','23:11:20 2018-08-27','','shop name'),(184,'merchant_44',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535397524/merchant_44/j8rfuiwllycp2au50uzq.jpg','oooo','00:48:46 2018-08-28','ooo','shop name'),(185,'merchant_44',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535397556/merchant_44/txnc8pnpwaeowwc2z1qp.jpg','inkoti','00:49:19 2018-08-28','inkoti','shop name'),(186,'merchant_53',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535413115/merchant_53/lm5gkymxhbhnyjzxnf4x.jpg','gh','05:08:36 2018-08-28','ghh','shop name'),(187,'merchant_53',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535413148/merchant_53/ndq70czhlnnawb4pijao.jpg','hjj','05:09:10 2018-08-28','ghh','shop name'),(188,'merchant_57',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535438187/merchant_57/tla6p3zhhijpkdi4d96y.jpg','gu h','12:06:29 2018-08-28','y678','shop name'),(189,'merchant_57',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535445322/merchant_57/wey7eoutadlwgvvazv1d.jpg','gu','14:05:24 2018-08-28','check','shop name'),(190,'merchant_57',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535445795/merchant_57/qoz71iqk0mjzghyo17oh.jpg','gjh hj','14:13:18 2018-08-28','676','shop name'),(191,'merchant_57',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535447460/merchant_57/ai0a27lcgdjcn4dzqp42.jpg','my chinni','14:41:02 2018-08-28','chinni','shop name'),(192,'merchant_57',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535449672/merchant_57/nu5berj9t308f2rmcj0o.jpg','gii','15:17:54 2018-08-28','chinni','shop name'),(193,'merchant_57',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535455396/merchant_57/lzsyshwzundvgwamnabh.jpg','fhgu gu','16:53:18 2018-08-28','card','shop name'),(194,'merchant_57',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535455491/merchant_57/uijhdmh1pirjzs9etv71.jpg','','16:54:53 2018-08-28','','shop name'),(195,'merchant_57',1,28,8,2018,28,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535470853/merchant_57/rsfksdlhtslidu1tvjqf.jpg','gigiu','21:10:55 2018-08-28','6777','shop name'),(196,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535503373/merchant_57/nnjwnzagipmknu2m3s0g.jpg','gu hu','06:12:55 2018-08-29','test','shop name'),(197,'merchant_61',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535520743/merchant_61/ykrewzuyretzovkig6ru.jpg','desc','11:02:25 2018-08-29','ofcr','shop name'),(198,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535523778/merchant_57/y9kedgzpbocqdi1dkspj.jpg','description','11:53:33 2018-08-29','ofrcod','shop name'),(199,'merchant_62',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535523886/merchant_62/k4qs75w4wm2eno3uvtcx.jpg','vhh','11:54:48 2018-08-29','ghh','shop name'),(200,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535539976/merchant_57/yju3lwovmbudwm6adhq8.jpg','fff','16:22:58 2018-08-29','ad','shop name'),(201,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535540018/merchant_57/eowiilb9dueubg8sbckt.jpg','','16:23:40 2018-08-29','','shop name'),(202,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535540885/merchant_57/havpc8bxzvcan2rpcylk.jpg','','16:38:07 2018-08-29','tuu,','shop name'),(203,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535545039/merchant_57/vec1swgqwcksqds2ivcu.png','my app','17:47:21 2018-08-29','gala','shop name'),(204,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535545145/merchant_57/sxnp0uytg5euelsvwgoq.jpg','app','17:49:07 2018-08-29','my gal','shop name'),(205,'merchant_44',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535546103/merchant_44/mmonfhid5agur1wnsy31.jpg','kid','18:05:07 2018-08-29','kid','shop name'),(206,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535546543/merchant_57/jjajodx00vj7e9kj6bgk.jpg','ghh h','18:12:25 2018-08-29','codes','shop name'),(207,'merchant_44',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535547078/merchant_44/pxo2iqkqiidwwekcf4ka.jpg','cep global','18:21:20 2018-08-29','cep ','shop name'),(208,'merchant_44',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535547265/merchant_44/i4li93whuwskkrk5sao2.jpg','ladduss','18:24:26 2018-08-29','laddoo','shop name'),(209,'merchant_44',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535547802/merchant_44/ngey634weszxnrwhldae.jpg','mymsfs','18:33:23 2018-08-29','msf\nms','shop name'),(210,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535552119/merchant_57/laep8ukinaykam4wxiay.jpg','my afs','19:45:23 2018-08-29','ads','shop name'),(211,'merchant_57',1,29,8,2018,29,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535556339/merchant_57/j8o1oivc4nc8btp5pghz.jpg','my ad','20:55:42 2018-08-29','ad','shop name'),(212,'merchant_57',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535567879/merchant_57/l3lv89ntqobsfflt749k.jpg','tuu','00:08:01 2018-08-30','7999','shop name'),(213,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535613676/merchant_65/e7savkjbcvtghy1dnvln.jpg','ft gh','12:51:17 2018-08-30','dress','shop name'),(214,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535615019/merchant_65/buqx7gny7kbfnbx9rvyy.jpg','got h','13:13:40 2018-08-30','tyyy','shop name'),(215,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535615321/merchant_65/vtfrsrbkfbkwl3emncsg.jpg','','13:18:42 2018-08-30','ghh','shop name'),(216,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535615811/merchant_65/z2ogyvdsfvq4cj1xnirh.jpg','th h','13:26:52 2018-08-30','yyy','shop name'),(217,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535616832/merchant_65/cl42ufvlms3yfxbpypqu.jpg','tho hh','13:43:53 2018-08-30','yi','shop name'),(218,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535617323/merchant_65/egzdzwq9jln5sra5gtfv.jpg','add ','13:52:04 2018-08-30','ad','shop name'),(219,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535620747/merchant_65/v2ryccfkkttvlpn8w4lb.jpg','','14:49:09 2018-08-30','','shop name'),(220,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535620780/merchant_65/uk2dqcgxkylzkc4xasyd.jpg','','14:49:41 2018-08-30','','shop name'),(221,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535620996/merchant_65/nqt1dxo13xuvyjduridt.jpg','ghh','14:53:17 2018-08-30','yuu','shop name'),(222,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535621478/merchant_65/p0bnrus8xtgmiuuldzpc.jpg','','15:01:19 2018-08-30','','shop name'),(223,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535622465/merchant_65/l5asyupwreu5e4df7omq.jpg','tyy','15:17:47 2018-08-30','yyy','shop name'),(224,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535622482/merchant_65/p3fftl8m6wzvreocc2qr.jpg','','15:18:04 2018-08-30','','shop name'),(225,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535622612/merchant_65/aogikywdq1bdalexlw0a.jpg','my sale','15:20:14 2018-08-30','sale','shop name'),(226,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535623416/merchant_65/jwt5snhm7yhkqcwsckkd.jpg','','15:33:37 2018-08-30','','shop name'),(227,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535623778/merchant_65/fseb24n6kncwth4g0ymx.jpg','','15:39:40 2018-08-30','','shop name'),(228,'merchant_65',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535623798/merchant_65/qullpygmtrovj5hujpyk.jpg','','15:40:00 2018-08-30','','shop name'),(229,'merchant_57',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535625675/merchant_57/sqofkbnjtutjmiofzsai.jpg','ing','16:11:19 2018-08-30','test','shop name'),(230,'merchant_57',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535625745/merchant_57/w0irg65dmaijvz5zrwl9.jpg','uncle','16:12:30 2018-08-30','venu','shop name'),(231,'merchant_57',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535639978/merchant_57/nwhcvwknjb9avvwfouvn.jpg','','20:09:44 2018-08-30','off','shop name'),(232,'merchant_57',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535647419/merchant_57/vjedrmz4jo8e0q8oltif.jpg','','22:13:42 2018-08-30','','shop name'),(233,'merchant_57',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535647879/merchant_57/ziskyycatl5mrorifpck.jpg','','22:21:22 2018-08-30','','shop name'),(234,'merchant_57',1,30,8,2018,30,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535648633/merchant_57/btbnrjougd1ldcznazc4.jpg','','22:33:56 2018-08-30','','shop name'),(235,'merchant_67',1,1,9,2018,1,9,2018,'http://res.cloudinary.com/locator/image/upload/v1535811052/merchant_67/xyriiwqabarqrivhicr3.jpg','desc','19:40:54 2018-09-01','ofcr','shop name'),(236,'merchant_67',1,4,9,2018,1,9,2018,'http://res.cloudinary.com/locator/image/upload/v1535811191/merchant_67/sf8onpqxqbrgwvxkcqf4.png','testing the app','19:43:12 2018-09-01','test','shop name'),(237,'merchant_67',1,3,9,2018,3,9,2018,'http://res.cloudinary.com/locator/image/upload/v1535947728/merchant_67/szxycxesdfswr5q6wegf.jpg','tgy','09:38:49 2018-09-03','gopi','shop name'),(238,'merchant_67',1,4,9,2018,4,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536034926/merchant_67/gm9ktjtqks9oakzm3tln.jpg','vji h','09:52:08 2018-09-04','dharah','shop name'),(239,'merchant_67',1,4,9,2018,4,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536034974/merchant_67/zrw6dscaqm0gjpcihcoc.jpg','','09:52:55 2018-09-04','','shop name'),(240,'merchant_67',1,5,9,2018,5,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536092810/merchant_67/u5pxadh2svf7pdkr2rqq.jpg','','01:56:51 2018-09-05','','shop name'),(241,'merchant_67',1,7,9,2018,7,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536313655/merchant_67/sydkkbtyvpqyqkezdex3.jpg','','15:17:38 2018-09-07','','shop name'),(242,'merchant_67',1,10,9,2018,10,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536580697/merchant_67/zktxjhr0fwhidt1gzuws.jpg','','17:28:20 2018-09-10','','shop name'),(243,'merchant_67',1,10,9,2018,10,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536602034/merchant_67/jrvyhtpblswuxrwojcuh.jpg','','23:23:56 2018-09-10','','shop name'),(244,'merchant_67',1,10,9,2018,10,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536603961/merchant_67/mbfqrqp2pbsoejenxt5f.jpg','','23:56:03 2018-09-10','my','shop name'),(245,'merchant_67',1,10,9,2018,10,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536604025/merchant_67/c0ivnvpzvmydoehrh3s4.jpg','','23:57:07 2018-09-10','','shop name'),(246,'merchant_67',1,10,9,2018,10,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536604052/merchant_67/dja7wxcpzuk1voculdxh.jpg','','23:57:33 2018-09-10','','shop name'),(247,'merchant_67',1,11,9,2018,11,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536604216/merchant_67/whcrdo1ubovdkf2a9nfu.jpg','','00:00:19 2018-09-11','','shop name'),(248,'merchant_67',1,11,9,2018,11,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536604243/merchant_67/jc4gm7ufoymgrre9nm9b.jpg','','00:00:44 2018-09-11','','shop name'),(249,'merchant_67',1,11,9,2018,11,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536604888/merchant_67/mpw5xkjgcaplbu1r7ww4.jpg','','00:11:29 2018-09-11','','shop name'),(250,'merchant_67',1,11,9,2018,11,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536604965/merchant_67/fchrwjervnxvpbkj9xwv.jpg','','00:12:46 2018-09-11','','shop name'),(251,'merchant_67',1,11,9,2018,11,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536605066/merchant_67/usmvterzzudeeefqwnx6.jpg','','00:14:28 2018-09-11','','shop name'),(252,'merchant_67',1,12,9,2018,12,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536752845/merchant_67/w2juwxf3kfczx03jauw9.jpg','','17:17:40 2018-09-12','','shop name'),(253,'merchant_67',1,12,9,2018,12,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536759462/merchant_67/fqoerp2stf83ye4g3dni.jpg','','19:07:44 2018-09-12','','shop name'),(254,'merchant_67',1,12,9,2018,12,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536759477/merchant_67/aw3nkxfeo6u9xhwat6st.jpg','','19:08:00 2018-09-12','','shop name'),(255,'merchant_67',1,14,9,2018,14,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536907030/merchant_67/zngltlm7ojgescry6zak.jpg','','12:07:22 2018-09-14','','shop name'),(256,'merchant_67',1,14,9,2018,14,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536923471/merchant_67/josgysgqfdsgdf8mgkpd.jpg','','16:41:14 2018-09-14','','shop name'),(257,'merchant_67',1,14,9,2018,14,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536946264/merchant_67/pbrneq4iu65nf903d8it.jpg','','23:01:12 2018-09-14','','shop name'),(258,'merchant_67',1,14,9,2018,14,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536946313/merchant_67/lnp88agstr9qzileilka.jpg','','23:01:56 2018-09-14','','shop name'),(259,'merchant_67',1,15,9,2018,15,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536987241/merchant_67/el5f5qaklyx80qngflcm.jpg','','10:24:03 2018-09-15','','shop name'),(260,'merchant_67',1,15,9,2018,15,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536987246/merchant_67/s6muemaxuqwepsemhvya.jpg','','10:24:07 2018-09-15','','shop name'),(261,'merchant_67',1,15,9,2018,15,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536987260/merchant_67/nfiwz1jweikeirctz9i3.jpg','','10:24:31 2018-09-15','','shop name'),(262,'merchant_67',1,15,9,2018,15,9,2018,'http://res.cloudinary.com/locator/image/upload/v1537020183/merchant_67/uq9qhjhu7by04zgbxyaq.jpg','','19:33:05 2018-09-15','','shop name'),(263,'merchant_67',1,16,9,2018,16,9,2018,'http://res.cloudinary.com/locator/image/upload/v1537101389/merchant_67/neeuvxgztlwq3jajoup2.jpg','','18:06:30 2018-09-16','','shop name'),(264,'merchant_67',1,21,9,2018,21,9,2018,'http://res.cloudinary.com/locator/image/upload/v1537523311/merchant_67/jlibcdlpxiz5q3hrkfdx.jpg','','15:18:33 2018-09-21','','shop name'),(265,'merchant_67',1,23,9,2018,23,9,2018,'http://res.cloudinary.com/locator/image/upload/v1537710034/merchant_67/nxpkkokjppprjo1uj9gj.jpg','','19:10:36 2018-09-23','','shop name'),(266,'merchant_67',1,25,9,2018,25,9,2018,'http://res.cloudinary.com/locator/image/upload/v1537895880/merchant_67/oguhbxauxb9anw5l8otk.jpg','','22:48:02 2018-09-25','','shop name'),(267,'merchant_67',1,27,9,2018,27,9,2018,'http://res.cloudinary.com/locator/image/upload/v1538050676/merchant_67/db33ycjl9dkrotxqeijr.jpg','','17:47:57 2018-09-27','','shop name'),(268,'merchant_67',1,28,9,2018,28,9,2018,'http://res.cloudinary.com/locator/image/upload/v1538102063/merchant_67/dyhidit12uklm6xghp4l.jpg','','08:04:24 2018-09-28','','shop name'),(269,'merchant_67',1,29,9,2018,29,9,2018,'http://res.cloudinary.com/locator/image/upload/v1538209588/merchant_67/tb0qmvwjc3rhq65qyd5d.jpg','','13:56:29 2018-09-29','','shop name'),(270,'merchant_67',1,30,9,2018,30,9,2018,'http://res.cloudinary.com/locator/image/upload/v1538331699/merchant_67/vrixoqjhvgpdtoidfzik.jpg','','23:51:41 2018-09-30','','shop name'),(271,'merchant_67',1,1,10,2018,1,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538400037/merchant_67/bftkvmxkimambs8dumo7.jpg','','18:50:38 2018-10-01','','shop name'),(272,'merchant_67',1,5,10,2018,5,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538683199/merchant_67/xetzftx6zuevfk3177yh.jpg','','01:30:01 2018-10-05','','shop name'),(273,'merchant_67',1,5,10,2018,5,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538707409/merchant_67/tv40vpychda4woui1miu.jpg','','08:13:30 2018-10-05','','shop name'),(274,'merchant_67',1,5,10,2018,5,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538707434/merchant_67/kpjsu36qngrefkj3kba6.jpg','','08:13:55 2018-10-05','','shop name'),(275,'merchant_67',1,5,10,2018,5,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538708106/merchant_67/rsrtnfjqfzie4htjv5b8.jpg','','08:25:07 2018-10-05','','shop name'),(276,'merchant_67',1,5,10,2018,5,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538723150/merchant_67/yrq9k2onhl1nrcqh6ysz.jpg','','12:35:52 2018-10-05','','shop name'),(277,'merchant_67',1,6,10,2018,6,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538767255/merchant_67/asteygqiwwyiq96tijee.jpg','','00:52:04 2018-10-06','','shop name'),(278,'merchant_73',1,6,10,2018,6,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538844638/merchant_73/rerup09v5me0irjboken.jpg','','22:20:40 2018-10-06','576','shop name'),(279,'merchant_73',1,7,10,2018,7,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538895944/merchant_73/ubqy8qxdqgt8d88fztvy.jpg','','12:35:53 2018-10-07','','shop name'),(280,'merchant_73',1,7,10,2018,7,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538896724/merchant_73/mcijkxozvtleknsgxtm6.jpg','','12:48:45 2018-10-07','','shop name'),(281,'merchant_73',1,7,10,2018,7,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538907270/merchant_73/usuk11tecutplakcunwf.jpg','','15:44:32 2018-10-07','','shop name'),(282,'merchant_73',1,7,10,2018,7,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538907671/merchant_73/nir0bs2ew41j2pr7dfcp.jpg','','15:51:13 2018-10-07','','shop name'),(283,'merchant_73',1,7,10,2018,7,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538907736/merchant_73/bqdaemntmxai3ejxuvfl.jpg','','15:52:17 2018-10-07','','shop name'),(284,'merchant_77',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538972693/merchant_77/rexigq8e6xcusxcyhz1r.jpg','my offer','09:54:54 2018-10-08','code','shop name'),(285,'merchant_77',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538974575/merchant_77/uvsluklcwo3lsmcy4d5o.jpg','','10:26:18 2018-10-08','','shop name'),(286,'merchant_77',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538974583/merchant_77/yolnyebe7gcqtmy3v1un.jpg','','10:26:24 2018-10-08','','shop name'),(287,'merchant_77',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538974885/merchant_77/ons3qhtv454aj5oml0yq.jpg','','10:31:58 2018-10-08','','shop name'),(288,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539317311/merchant_84/fkwkjh8kivx4gd6seyo1.jpg','','09:38:33 2018-10-12','','shop name'),(289,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539323959/merchant_84/bsg4nwsyqqttnbw3afnv.jpg','','11:29:21 2018-10-12','','shop name'),(290,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539325527/merchant_84/wu6d9ph9ktgf7nc4ilia.jpg','','11:55:29 2018-10-12','','shop name'),(291,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539355374/merchant_84/idowbtz3eoeli47siomm.jpg','','20:12:57 2018-10-12','','shop name'),(292,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539358808/merchant_84/vjepohjt1h3pptqa5kae.jpg','','21:10:10 2018-10-12','','shop name'),(293,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539359121/merchant_84/hxhmchpyh7hpfyhpxuds.jpg','','21:15:31 2018-10-12','','shop name'),(294,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539359181/merchant_84/kcuvuapgc9ifqv4zvjpt.jpg','','21:16:29 2018-10-12','','shop name'),(295,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539359664/merchant_84/br4j5ccvcuxt1qpjhq7l.jpg','','21:24:35 2018-10-12','','shop name'),(296,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539359864/merchant_84/jcrkorl4gehkhwxujwzm.jpg','','21:27:46 2018-10-12','','shop name'),(297,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539359945/merchant_84/crmdwoebmrln1ykxyg3f.jpg','','21:29:07 2018-10-12','','shop name'),(298,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539360465/merchant_84/xmhotuhsos9cmkys6kjj.jpg','','21:37:48 2018-10-12','','shop name'),(299,'merchant_84',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539360605/merchant_84/ajlhqjjxb9lvlaqydb1w.jpg','','21:40:06 2018-10-12','','shop name'),(300,'merchant_84',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539369848/merchant_84/z7y1z8gnbyk37vboumsq.jpg','','00:14:10 2018-10-13','','shop name'),(301,'merchant_86',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539442711/merchant_86/lawhega1ggx0stzhvj4e.jpg','','20:28:32 2018-10-13','','shop name'),(302,'merchant_86',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539442729/merchant_86/el8g0owttmuhbvwbalt0.jpg','','20:28:51 2018-10-13','','shop name'),(303,'merchant_86',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539443122/merchant_86/ytbhv6kktchts8ggdoaz.jpg','','20:35:23 2018-10-13','','shop name'),(304,'merchant_86',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539443165/merchant_86/lechs79ukd7flmadgbog.jpg','','20:36:07 2018-10-13','','shop name'),(305,'merchant_86',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539443333/merchant_86/ksdp8pusaafspncwmuoz.jpg','','20:38:59 2018-10-13','','shop name'),(306,'merchant_86',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539443491/merchant_86/wf8nsbifyk5iwnblhuwl.jpg','','20:42:23 2018-10-13','','shop name'),(307,'merchant_86',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539443699/merchant_86/oitwo78oaannaksuqwdj.jpg','','20:45:28 2018-10-13','','shop name'),(308,'merchant_86',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539443857/merchant_86/q33jwrdgt8sagkim298c.jpg','','20:47:46 2018-10-13','','shop name'),(309,'merchant_87',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539445133/merchant_87/srglik67owtzn7hhl42a.jpg','','21:08:55 2018-10-13','','shop name'),(310,'merchant_87',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539447168/merchant_87/zq5pldmosqf2zzkgxd3b.jpg','','21:42:57 2018-10-13','','shop name'),(311,'merchant_87',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539447230/merchant_87/ef2txiay0fuldu8tn3fk.jpg','','21:43:52 2018-10-13','','shop name'),(312,'merchant_88',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539449914/merchant_88/u0q0ob8nnnibt7zcrbhq.jpg','','22:28:36 2018-10-13','','shop name'),(313,'merchant_88',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539450052/merchant_88/evmzwbiojbwwomddop3x.jpg','','22:30:53 2018-10-13','','shop name'),(314,'merchant_88',1,13,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539450648/merchant_88/fpokjezlqd7kallqglvr.jpg','','22:40:50 2018-10-13','','shop name'),(315,'merchant_88',1,14,10,2018,14,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539476728/merchant_88/vbqdw9dptbjexpcanh55.jpg','','05:55:31 2018-10-14','','shop name'),(316,'merchant_88',1,14,10,2018,14,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539488964/merchant_88/jjhqtrnt9tytgpoeusiq.jpg','','09:19:26 2018-10-14','','shop name'),(317,'merchant_89',1,15,10,2018,15,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539579715/merchant_89/xnzo5lhkmkink8kid9j6.jpg','offer','10:31:56 2018-10-15','gopi','shop name'),(318,'merchant_89',1,15,10,2018,15,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539599837/merchant_89/cszix5jzjc1fkiravfda.jpg','','16:07:19 2018-10-15','','shop name'),(319,'merchant_89',1,16,10,2018,16,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539632368/merchant_89/ahvbi3z3rgabhwqmgjal.jpg','','01:09:30 2018-10-16','','shop name'),(320,'merchant_89',1,16,10,2018,16,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539710686/merchant_89/rvnoldfztwrwnfflk4wq.jpg','','22:54:48 2018-10-16','','shop name'),(321,'merchant_89',1,16,10,2018,16,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539710736/merchant_89/hiosn8kt5yp3vooeuxh3.jpg','','22:55:37 2018-10-16','','shop name'),(322,'merchant_89',1,17,10,2018,17,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539716228/merchant_89/nl6fnhibrunxjbbciimz.jpg','','00:27:11 2018-10-17','','shop name'),(323,'merchant_91',1,17,10,2018,17,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539782269/merchant_91/pidyd44tb5593cp8uhvb.jpg','desc','18:47:51 2018-10-17','code','shop name'),(324,'merchant_91',1,18,10,2018,18,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539804597/merchant_91/ikjrjtvmsdy1b6bufhim.jpg','fyu','00:59:59 2018-10-18','yui','shop name'),(325,'merchant_92',1,18,10,2018,18,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539876164/merchant_92/ytonfauuuhgpw0clessf.jpg','','20:52:46 2018-10-18','','shop name'),(326,'merchant_92',1,19,10,2018,19,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539926720/merchant_92/nfnnxvy7rhsrba1awtul.jpg','gopi','10:55:22 2018-10-19','gopi','shop name'),(327,'merchant_92',1,20,10,2018,20,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539978662/merchant_92/mpmtgwgydxid17zpe5vl.jpg','','01:21:04 2018-10-20','','shop name'),(328,'merchant_105',1,24,10,2018,24,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540380916/merchant_105/sigwyzy6y4untsusas1j.jpg','grfg','17:05:18 2018-10-24','gopo','shop name'),(329,'merchant_105',1,25,10,2018,25,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540437041/merchant_105/andmxahqi4q3tlq2nnpt.jpg','chinnilu','08:40:43 2018-10-25','chinni','shop name'),(330,'merchant_105',1,27,10,2018,27,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540644839/merchant_105/mnocnzwa7nhizjptstzo.jpg','vjjo','18:24:01 2018-10-27','gjhi','shop name'),(331,'merchant_119',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540668902/merchant_119/dgajslwiwtguqjjewsbc.jpg','','01:05:03 2018-10-28','','shop name'),(332,'merchant_123',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540670017/merchant_123/l7dcm0dfdn8qy8hozpnq.jpg','','01:23:39 2018-10-28','','shop name'),(333,'merchant_133',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540719433/merchant_133/jrsct1m9eggi7iwcb4qh.jpg','vjj','15:07:15 2018-10-28','my cod','shop name'),(334,'merchant_135',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540723397/merchant_135/yyqxbgszlbk9k88leibn.jpg','','16:13:18 2018-10-28','','shop name'),(335,'merchant_137',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540724456/merchant_137/fjef0v6ihauspardycqb.jpg','','16:30:59 2018-10-28','','shop name'),(336,'merchant_139',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540725049/merchant_139/dow1i7zqt0njmf74tl1n.jpg','','16:40:51 2018-10-28','','shop name'),(337,'merchant_141',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540726600/merchant_141/pug6cdrjrc67eyph6qik.jpg','','17:06:41 2018-10-28','','shop name'),(338,'merchant_141',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540734234/merchant_141/mgyvwfitzmp1d7nnwvjd.jpg','','19:13:56 2018-10-28','','shop name'),(339,'merchant_141',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540734317/merchant_141/s8fqxgkbbmi0o9v6zpoa.jpg','','19:15:20 2018-10-28','','shop name'),(340,'merchant_141',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540737922/merchant_141/txhbnk50rjtbwcibdz7x.jpg','','20:15:24 2018-10-28','','shop name'),(341,'merchant_141',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540738039/merchant_141/tyerf2n9razwwromdwza.jpg','','20:17:20 2018-10-28','','shop name'),(342,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540800200/merchant_147/pkkrsda8puw6sa0q59lk.jpg','','13:33:23 2018-10-29','','shop name'),(343,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540810858/merchant_147/rlesbuyx4flatnz2j1af.jpg','','16:30:59 2018-10-29','','shop name'),(344,'merchant_147',1,25,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540811263/merchant_147/wru3krttx2xnscjwy21x.jpg','tyu','16:37:45 2018-10-29','677','shop name'),(345,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540831666/merchant_147/xbdmvmcwgsiqzbjtrulo.jpg','','22:17:57 2018-10-29','','shop name'),(346,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540831782/merchant_147/ttvrltv3rkcrbomikbmz.jpg','','22:20:04 2018-10-29','','shop name'),(347,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540831850/merchant_147/ngcaaqio2obgard46qza.jpg','','22:21:15 2018-10-29','','shop name'),(348,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540832120/merchant_147/q21dy9s5zvmswrjjvuss.jpg','','22:25:41 2018-10-29','','shop name'),(349,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540832610/merchant_147/izegqxjujfhjlajpfyaa.jpg','','22:33:35 2018-10-29','','shop name'),(350,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540832664/merchant_147/fiqidk8ohu6jatexyiyb.jpg','','22:34:37 2018-10-29','','shop name'),(351,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540832915/merchant_147/ta3kdjkjqk7gnvkbuy5t.jpg','','22:38:40 2018-10-29','','shop name'),(352,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540833186/merchant_147/kpoqjgtfjdzzt5yrjhdk.jpg','','22:43:12 2018-10-29','','shop name'),(353,'merchant_151',1,30,10,2018,30,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540868478/merchant_151/qod5pl27mdr61xq9nr5s.jpg','','08:31:20 2018-10-30','','shop name'),(354,'merchant_157',1,31,10,2018,31,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540931459/merchant_157/tgm5lxgrxtdjkeekvdcs.jpg','myogg','02:01:01 2018-10-31','off','shop name'),(355,'merchant_159',1,31,10,2018,31,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540969815/merchant_159/pr1qehwykilfpcadrtu5.jpg','','12:40:25 2018-10-31','','shop name'),(356,'merchant_164',1,2,11,2018,2,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541101224/merchant_164/iqlcy7cwxa0koyrmtulg.jpg','','01:10:25 2018-11-02','','shop name'),(357,'merchant_166',1,2,11,2018,2,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541133843/merchant_166/x23z9uksfoib3hisroul.png','','10:14:04 2018-11-02','','shop name'),(358,'merchant_166',1,2,11,2018,2,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541145656/merchant_166/jt1jrbl6gwn9ut8dxw37.png','','13:31:00 2018-11-02','','shop name'),(359,'merchant_289',1,13,11,2018,13,11,2018,'http://res.cloudinary.com/locator/image/upload/v1542132795/merchant_289/d8uemfkjmprltxl3s5cl.jpg','vv','23:43:16 2018-11-13','dd','shop name'),(360,'merchant_307',1,18,11,2018,18,11,2018,'http://res.cloudinary.com/locator/image/upload/v1542543206/merchant_307/jq3hsd5a4xvxdeele1wf.jpg','','17:43:28 2018-11-18','','shop name'),(361,'merchant_321',1,26,11,2018,26,11,2018,'http://res.cloudinary.com/locator/image/upload/v1543236168/merchant_290/jtrjoq6fgyp7oxnb402y.jpg','','18:12:50 2018-11-26','','shop name');
/*!40000 ALTER TABLE `ad_tdr1z3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr1z4`
--

DROP TABLE IF EXISTS `ad_tdr1z4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1z4` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1z4`
--

LOCK TABLES `ad_tdr1z4` WRITE;
/*!40000 ALTER TABLE `ad_tdr1z4` DISABLE KEYS */;
INSERT INTO `ad_tdr1z4` VALUES (1,'merchant_40',1,21,7,2018,21,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534840511/merchant_40/ofhggtzlweyuo19txg6p.jpg','ghhh','08:35:14 2018-08-21','46566','shop name'),(2,'merchant_42',1,21,7,2018,21,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534859878/merchant_42/ekcpxgcszes5oic2jwat.jpg','','13:58:00 2018-08-21','','shop name'),(3,'merchant_42',1,2018,8,23,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534880664/merchant_42/aj0vckukw6lq8wkwuipc.jpg','valid test','01:14:26 2018-08-22','56748','shop name'),(4,'merchant_42',1,22,7,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534881378/merchant_42/xgewtlxizodbhpaog3lr.jpg','offer desc','01:26:20 2018-08-22','myoffe','shop name'),(5,'merchant_79',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538984312/merchant_79/e8uie4n9yrgdlhoktr1c.jpg','','13:08:34 2018-10-08','','shop name'),(6,'merchant_79',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538985230/merchant_79/zbtu7en9kzvrbq9fztpy.jpg','','13:23:52 2018-10-08','','shop name'),(7,'merchant_79',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538985375/merchant_79/fsetnflcuttwkeffauwn.jpg','','13:26:16 2018-10-08','','shop name'),(8,'merchant_80',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538998005/merchant_80/czlnt99xzfaceq7imc11.jpg','','16:56:46 2018-10-08','','shop name'),(9,'merchant_80',1,8,10,2018,8,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539016752/merchant_80/d3chd3m0otbqcvm9ex0x.jpg','','22:09:13 2018-10-08','','shop name'),(10,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539025439/merchant_80/jqom3lpoqwlfbkssohwa.jpg','','00:34:01 2018-10-09','','shop name'),(11,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539026984/merchant_80/ubxavzrrh3kyxzaev10y.jpg','','00:59:45 2018-10-09','','shop name'),(12,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539060069/merchant_80/dqljj7sqfu6ggxqz4gcg.jpg','','10:11:11 2018-10-09','','shop name'),(13,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539060150/merchant_80/zcpbg1o2qa6r37mnc8c1.jpg','','10:12:32 2018-10-09','','shop name'),(14,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539070904/merchant_80/r6pzhzhzoxijow4quv66.jpg','','13:11:47 2018-10-09','','shop name'),(15,'merchant_80',1,9,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539073067/merchant_80/uvuo5pfuyqsurzl4obca.jpg','','13:47:49 2018-10-09','','shop name'),(16,'merchant_80',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539129182/merchant_80/gjtldskqsbupuji1u7f3.jpg','','05:23:04 2018-10-10','','shop name'),(17,'merchant_82',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539161681/merchant_82/seyap6cxlej1rjj18mhf.jpg','','14:24:43 2018-10-10','','shop name'),(18,'merchant_82',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539167281/merchant_82/ba2zzufapdjcnux964p6.jpg','','15:58:03 2018-10-10','','shop name'),(19,'merchant_82',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539169904/merchant_82/za3h42wseiux6ca93ko6.jpg','','16:41:46 2018-10-10','','shop name'),(20,'merchant_82',1,10,10,2018,10,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539170574/merchant_82/r4qrczuym1prwpwqjz9z.jpg','','16:52:56 2018-10-10','','shop name'),(21,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539239443/merchant_82/qtmgukgjvwmobvethabs.jpg','','12:00:45 2018-10-11','\n','shop name'),(22,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539239501/merchant_82/xiglgxaq5vkutdytgelv.jpg','','12:01:42 2018-10-11','','shop name'),(23,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539239749/merchant_82/to5owy0b8c0vm2z04kyb.jpg','','12:05:51 2018-10-11','','shop name'),(24,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539272122/merchant_82/gandbyzx8b4grpvsgxmh.jpg','','21:05:23 2018-10-11','','shop name'),(25,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539272151/merchant_82/bgnrg6htcn7jzzbc7rh5.jpg','','21:05:52 2018-10-11','','shop name'),(26,'merchant_82',1,11,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539272164/merchant_82/dah9przsenf1wa4wn4ac.jpg','','21:06:06 2018-10-11','','shop name'),(27,'merchant_82',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539315119/merchant_82/ma7mhnrm4xobdmuvwc3y.jpg','','09:02:01 2018-10-12','','shop name'),(28,'merchant_82',1,12,10,2018,12,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539315370/merchant_82/b3zmrplfwvqvemyvjxie.jpg','','09:06:11 2018-10-12','','shop name');
/*!40000 ALTER TABLE `ad_tdr1z4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr1zj`
--

DROP TABLE IF EXISTS `ad_tdr1zj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1zj` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1zj`
--

LOCK TABLES `ad_tdr1zj` WRITE;
/*!40000 ALTER TABLE `ad_tdr1zj` DISABLE KEYS */;
INSERT INTO `ad_tdr1zj` VALUES (1,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534936752/merchant_52/nab8c13mkqn14cscqwf3.jpg','only 30','16:49:14 2018-08-22','cc','shop name'),(2,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534937540/merchant_52/yarmuysekrgpv6rjdyf9.jpg','svnk','17:02:23 2018-08-22','fggg','shop name'),(3,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534937937/merchant_52/og7spzctrjpxci0f0eia.jpg','bkkx','17:08:59 2018-08-22','vh','shop name'),(4,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534940211/merchant_52/isebbjh7fti38qxfaice.jpg','desc','17:46:54 2018-08-22','fnn','shop name'),(5,'merchant_52',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534943251/merchant_52/li5fywml4wmigbvuppze.jpg','red cycle','18:37:33 2018-08-22','code','shop name'),(6,'merchant_52',1,25,8,2018,25,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535184578/merchant_52/dhmtxwduvqruxhgp07wq.jpg','gold scheme in muthoot','13:39:40 2018-08-25','goldnn','shop name');
/*!40000 ALTER TABLE `ad_tdr1zj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr1zv`
--

DROP TABLE IF EXISTS `ad_tdr1zv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr1zv` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr1zv`
--

LOCK TABLES `ad_tdr1zv` WRITE;
/*!40000 ALTER TABLE `ad_tdr1zv` DISABLE KEYS */;
INSERT INTO `ad_tdr1zv` VALUES (1,'merchant_51',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534931629/merchant_51/ysi6sjmcdtsirsbhaxdi.jpg','testing the app','15:23:52 2018-08-22','govrcl','shop name'),(2,'merchant_51',1,22,8,2018,22,8,2018,'http://res.cloudinary.com/locator/image/upload/v1534932166/merchant_51/qpwpk5k21dumtdpcoxol.jpg','desc','15:32:47 2018-08-22','red','shop name');
/*!40000 ALTER TABLE `ad_tdr1zv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr26y`
--

DROP TABLE IF EXISTS `ad_tdr26y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr26y` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr26y`
--

LOCK TABLES `ad_tdr26y` WRITE;
/*!40000 ALTER TABLE `ad_tdr26y` DISABLE KEYS */;
INSERT INTO `ad_tdr26y` VALUES (1,'merchant_0',1,31,8,2018,31,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535698844/merchant_0/qqhkztsnfvrt8ztiqqko.jpg','hosur ','12:30:47 2018-08-31','gopi','shop name'),(2,'merchant_0',1,31,8,2018,31,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535701379/merchant_0/fdrplzqrntcbh5agzkko.jpg','gjii','13:13:02 2018-08-31','gopi','shop name'),(3,'merchant_0',1,31,8,2018,31,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535702640/merchant_0/otivamfozrcem5hgbcky.jpg','gh','13:34:03 2018-08-31','venu','shop name'),(4,'merchant_0',1,31,8,2018,31,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535721794/merchant_0/wmo70xt6ehlv7vyprgv6.jpg','','18:53:17 2018-08-31','test','shop name');
/*!40000 ALTER TABLE `ad_tdr26y` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tdr3bj`
--

DROP TABLE IF EXISTS `ad_tdr3bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tdr3bj` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tdr3bj`
--

LOCK TABLES `ad_tdr3bj` WRITE;
/*!40000 ALTER TABLE `ad_tdr3bj` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_tdr3bj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tepexv`
--

DROP TABLE IF EXISTS `ad_tepexv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tepexv` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tepexv`
--

LOCK TABLES `ad_tepexv` WRITE;
/*!40000 ALTER TABLE `ad_tepexv` DISABLE KEYS */;
INSERT INTO `ad_tepexv` VALUES (1,'merchant_90',1,18,10,2018,15,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539627786/merchant_90/eqkpljgyrvniyxlkhr3v.jpg','free ride','23:53:07 2018-10-15','disc','shop name'),(2,'merchant_90',1,12,10,2018,16,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539630144/merchant_90/op0ry7yscoakcw72xhr2.jpg','chyg','00:32:25 2018-10-16','rrfxc','shop name'),(3,'merchant_97',1,21,10,2018,21,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540144020/merchant_97/at4kvmndkg6jis0kicql.jpg','cc','23:17:06 2018-10-21','pp','shop name'),(4,'merchant_125',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540703002/merchant_125/to0d9le5namdutoucngn.jpg','sgsh z','10:33:23 2018-10-28','nsnsb','shop name'),(5,'merchant_143',1,28,10,2018,28,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540751114/merchant_143/pzlpieivsorfvq8crqtd.jpg','ghhh','23:55:15 2018-10-28','off','shop name'),(6,'merchant_149',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540828800/merchant_149/f0aipwotmeberamaa0ip.jpg','zbzn','21:30:02 2018-10-29','jsjsbx','shop name'),(7,'merchant_149',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540828833/merchant_149/h1uuewub1bucmhbpkpnm.jpg','ffg','21:30:35 2018-10-29','sed','shop name'),(8,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540836182/merchant_147/h7kldg6fvxzbycerztpy.jpg','','23:33:05 2018-10-29','','shop name'),(9,'merchant_149',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540836819/merchant_149/ht0omio77eavucwtxyow.jpg','','23:43:41 2018-10-29','','shop name'),(10,'merchant_255',1,6,11,2018,6,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541526328/merchant_255/utqzfbcrc0cbnhtpb4sf.jpg','hjif','23:15:29 2018-11-06','bjhs','shop name'),(11,'merchant_289',1,13,11,2018,13,11,2018,'http://res.cloudinary.com/locator/image/upload/v1542132684/merchant_289/tvnogipzyerbsy4ygzlx.jpg','xkxk','23:41:25 2018-11-13','jzix','shop name');
/*!40000 ALTER TABLE `ad_tepexv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tepfc8`
--

DROP TABLE IF EXISTS `ad_tepfc8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tepfc8` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tepfc8`
--

LOCK TABLES `ad_tepfc8` WRITE;
/*!40000 ALTER TABLE `ad_tepfc8` DISABLE KEYS */;
INSERT INTO `ad_tepfc8` VALUES (1,'merchant_166',1,2,11,2018,2,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541134410/merchant_166/lky05fvbupt220gn4zvp.png','','10:23:32 2018-11-02','','shop name');
/*!40000 ALTER TABLE `ad_tepfc8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tf8f5c`
--

DROP TABLE IF EXISTS `ad_tf8f5c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tf8f5c` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tf8f5c`
--

LOCK TABLES `ad_tf8f5c` WRITE;
/*!40000 ALTER TABLE `ad_tf8f5c` DISABLE KEYS */;
INSERT INTO `ad_tf8f5c` VALUES (1,'merchant_151',1,30,10,2018,30,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540876332/merchant_151/d5w2l4epuqpdqd3y5szu.jpg','','10:42:14 2018-10-30','','shop name');
/*!40000 ALTER TABLE `ad_tf8f5c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_ts5ejh`
--

DROP TABLE IF EXISTS `ad_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_ts5ejh` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_ts5ejh`
--

LOCK TABLES `ad_ts5ejh` WRITE;
/*!40000 ALTER TABLE `ad_ts5ejh` DISABLE KEYS */;
INSERT INTO `ad_ts5ejh` VALUES (1,'merchant_70',1,12,10,2018,1,10,2018,'http://res.cloudinary.com/locator/image/upload/v1538417490/merchant_70/jt44nwhczejy9adrkckp.jpg','test','23:41:34 2018-10-01','qwert','shop name'),(2,'merchant_81',1,27,10,2018,9,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539026837/merchant_81/ultdavbrybvvvprjymln.jpg','test','00:57:20 2018-10-09','556643','shop name'),(3,'merchant_83',1,27,10,2018,11,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539279524/merchant_83/njwurx8lxcqe7uviw8m8.jpg','nice offer','23:08:46 2018-10-11','sdfghj','shop name'),(4,'merchant_83',1,27,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539411548/merchant_83/earsinmp6fvdmkf5amkh.jpg','geg','11:49:13 2018-10-13','999888','shop name'),(5,'merchant_83',1,14,10,2018,13,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539411629/merchant_83/yz6uhwdyblalwcnszk2g.jpg','offer dec','11:50:32 2018-10-13','123456','shop name'),(6,'merchant_83',1,27,10,2018,16,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539630980/merchant_83/j5vybe9kifzgcm1py4up.jpg','hello','00:46:24 2018-10-16','qwerty','shop name'),(7,'merchant_83',1,20,10,2018,16,10,2018,'http://res.cloudinary.com/locator/image/upload/v1539632832/merchant_83/j5bgjcigxnhldggzsodj.jpg','hello2','01:17:17 2018-10-16','asdfgh','shop name'),(8,'merchant_83',1,27,10,2018,27,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540663264/merchant_83/hlsr7w74iwgqtrebvsms.jpg','test','23:31:06 2018-10-27','987654','shop name'),(9,'merchant_83',1,31,10,2018,27,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540663861/merchant_83/mxnimvzesby4nzzakluu.jpg','jchch','23:41:03 2018-10-27','355353','shop name'),(10,'merchant_83',1,27,10,2018,27,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540663979/merchant_83/mrzv6a4eshazi259c9l2.jpg','hchc','23:43:02 2018-10-27','445556','shop name'),(11,'merchant_83',1,27,10,2018,27,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540664285/merchant_83/er404dwodgpxaxptwpye.jpg','bcbcv','23:48:07 2018-10-27','chhchc','shop name'),(12,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540833746/merchant_147/mbedkgdznze4iufsdhst.jpg','','22:52:28 2018-10-29','','shop name');
/*!40000 ALTER TABLE `ad_ts5ejh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tsmzqq`
--

DROP TABLE IF EXISTS `ad_tsmzqq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tsmzqq` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tsmzqq`
--

LOCK TABLES `ad_tsmzqq` WRITE;
/*!40000 ALTER TABLE `ad_tsmzqq` DISABLE KEYS */;
INSERT INTO `ad_tsmzqq` VALUES (1,'merchant_164',1,2,11,2018,2,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541146462/merchant_164/iqpkyjkywvw9edlzkymt.jpg','','13:44:24 2018-11-02','','shop name');
/*!40000 ALTER TABLE `ad_tsmzqq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tsmzwc`
--

DROP TABLE IF EXISTS `ad_tsmzwc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tsmzwc` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tsmzwc`
--

LOCK TABLES `ad_tsmzwc` WRITE;
/*!40000 ALTER TABLE `ad_tsmzwc` DISABLE KEYS */;
INSERT INTO `ad_tsmzwc` VALUES (1,'merchant_168',1,28,11,2018,2,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541146570/merchant_168/wqbosfyz6cyl1vc1rtcn.png','3rd free order','13:46:12 2018-11-02','574646','shop name'),(2,'merchant_164',1,2,11,2018,2,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541146614/merchant_164/ohcldutc4upm1mjecn3z.jpg','','13:46:56 2018-11-02','','shop name');
/*!40000 ALTER TABLE `ad_tsmzwc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_tsvbuw`
--

DROP TABLE IF EXISTS `ad_tsvbuw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_tsvbuw` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_tsvbuw`
--

LOCK TABLES `ad_tsvbuw` WRITE;
/*!40000 ALTER TABLE `ad_tsvbuw` DISABLE KEYS */;
INSERT INTO `ad_tsvbuw` VALUES (1,'merchant_164',1,2,11,2018,2,11,2018,'http://res.cloudinary.com/locator/image/upload/v1541145809/merchant_164/yeineofjzn3a7jjtydyu.jpg','','13:33:31 2018-11-02','','shop name');
/*!40000 ALTER TABLE `ad_tsvbuw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_ttncwc`
--

DROP TABLE IF EXISTS `ad_ttncwc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_ttncwc` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_ttncwc`
--

LOCK TABLES `ad_ttncwc` WRITE;
/*!40000 ALTER TABLE `ad_ttncwc` DISABLE KEYS */;
INSERT INTO `ad_ttncwc` VALUES (1,'merchant_58',1,23,9,2018,23,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535008495/merchant_58/lmx42gomo0gmmdadudja.jpg','3d wallpapers of your choice only at RS  95/sq ft with installation','12:44:59 2018-08-23','3dwal','shop name'),(2,'merchant_58',1,31,8,2018,23,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535016112/merchant_58/aqbyjo2w7guotqytc7wr.jpg','wallpaper at RS 90/sq ft','14:51:55 2018-08-23','3d2wl','shop name'),(3,'merchant_58',1,24,8,2018,23,8,2018,'http://res.cloudinary.com/locator/image/upload/v1535021632/merchant_58/wglvtrl9ovmnwvct8vu9.png','Cole Haan shoes only in range of RS 3000 to 10000.','16:23:54 2018-08-23','coleh','shop name'),(4,'merchant_69',1,4,9,2018,4,9,2018,'http://res.cloudinary.com/locator/image/upload/v1536053260/merchant_69/des8r9iysfzbizbvo2rg.jpg','bdgh hfhja jshhha jfjd hdh','14:57:54 2018-09-04','bsgg','shop name');
/*!40000 ALTER TABLE `ad_ttncwc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_ttngjn`
--

DROP TABLE IF EXISTS `ad_ttngjn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_ttngjn` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_ttngjn`
--

LOCK TABLES `ad_ttngjn` WRITE;
/*!40000 ALTER TABLE `ad_ttngjn` DISABLE KEYS */;
INSERT INTO `ad_ttngjn` VALUES (1,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540833220/merchant_147/sqm4bpwk4b8fsp0c4oo1.jpg','','22:43:42 2018-10-29','','shop name');
/*!40000 ALTER TABLE `ad_ttngjn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_ttqwg4`
--

DROP TABLE IF EXISTS `ad_ttqwg4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_ttqwg4` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_ttqwg4`
--

LOCK TABLES `ad_ttqwg4` WRITE;
/*!40000 ALTER TABLE `ad_ttqwg4` DISABLE KEYS */;
INSERT INTO `ad_ttqwg4` VALUES (1,'merchant_147',1,29,10,2018,29,10,2018,'http://res.cloudinary.com/locator/image/upload/v1540832945/merchant_147/tuddwe64ypiapzu2qvgj.jpg','','22:39:16 2018-10-29','','shop name');
/*!40000 ALTER TABLE `ad_ttqwg4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(45) NOT NULL,
  `Category` int(10) DEFAULT NULL,
  `ValidTillDate` int(2) DEFAULT NULL,
  `ValidTillMonth` int(2) DEFAULT NULL,
  `ValidTillYear` int(4) DEFAULT NULL,
  `ValidFromDate` int(2) DEFAULT NULL,
  `ValidFromMonth` int(2) DEFAULT NULL,
  `ValidFromYear` int(4) DEFAULT NULL,
  `adimgurl` varchar(128) DEFAULT NULL,
  `itemdesc` varchar(512) DEFAULT NULL,
  `receivedOn` varchar(45) DEFAULT NULL,
  `offercode` varchar(6) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bangalore_ffffff_yyyyyy`
--

DROP TABLE IF EXISTS `bangalore_ffffff_yyyyyy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bangalore_ffffff_yyyyyy` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangalore_ffffff_yyyyyy`
--

LOCK TABLES `bangalore_ffffff_yyyyyy` WRITE;
/*!40000 ALTER TABLE `bangalore_ffffff_yyyyyy` DISABLE KEYS */;
INSERT INTO `bangalore_ffffff_yyyyyy` VALUES (1,'bangalore_ffffff_yyyyyy_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532233380/qkwwfwstzskowvlrgjfs.jpg','gopi','karnataka','India','2018-07-22T04:24:40.066502300','1','fjvj hhf','+918179442558'),(2,'bangalore_ffffff_yyyyyy_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532233518/bnaxzhc4fvjoczkpzulz.jpg','gopi','karnataka','India','2018-07-22T04:26:30.238399700','1','fjvj hhf','+918179442558');
/*!40000 ALTER TABLE `bangalore_ffffff_yyyyyy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bengaluru_shivanandanagar_lbsnilgiris`
--

DROP TABLE IF EXISTS `bengaluru_shivanandanagar_lbsnilgiris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bengaluru_shivanandanagar_lbsnilgiris` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bengaluru_shivanandanagar_lbsnilgiris`
--

LOCK TABLES `bengaluru_shivanandanagar_lbsnilgiris` WRITE;
/*!40000 ALTER TABLE `bengaluru_shivanandanagar_lbsnilgiris` DISABLE KEYS */;
INSERT INTO `bengaluru_shivanandanagar_lbsnilgiris` VALUES (1,'bengaluru_shivanandanagar_lbsnilgiris_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532232769/pygm8uz9xmbsoekpcbh9.jpg','gopi','karnataka','India','2018-07-22T04:13:02.284916800','1','hno 105 block b','+918179442558');
/*!40000 ALTER TABLE `bengaluru_shivanandanagar_lbsnilgiris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birthdays`
--

DROP TABLE IF EXISTS `birthdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birthdays` (
  `idBirthdays` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(15) NOT NULL,
  `geohash` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idBirthdays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birthdays`
--

LOCK TABLES `birthdays` WRITE;
/*!40000 ALTER TABLE `birthdays` DISABLE KEYS */;
/*!40000 ALTER TABLE `birthdays` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `cghhhbv_fhujjhv_fhhjj`
--

DROP TABLE IF EXISTS `cghhhbv_fhujjhv_fhhjj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cghhhbv_fhujjhv_fhhjj` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(25) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cghhhbv_fhujjhv_fhhjj`
--

LOCK TABLES `cghhhbv_fhujjhv_fhhjj` WRITE;
/*!40000 ALTER TABLE `cghhhbv_fhujjhv_fhhjj` DISABLE KEYS */;
/*!40000 ALTER TABLE `cghhhbv_fhujjhv_fhhjj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chiokbb_ojhjjaba_xghjnbb`
--

DROP TABLE IF EXISTS `chiokbb_ojhjjaba_xghjnbb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chiokbb_ojhjjaba_xghjnbb` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chiokbb_ojhjjaba_xghjnbb`
--

LOCK TABLES `chiokbb_ojhjjaba_xghjnbb` WRITE;
/*!40000 ALTER TABLE `chiokbb_ojhjjaba_xghjnbb` DISABLE KEYS */;
INSERT INTO `chiokbb_ojhjjaba_xghjnbb` VALUES (1,'chiokbb_ojhjjaba_xghjnbb_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532235466/rlobtkhc4k7kaeghlrcz.jpg','guin','fiinvc','India','2018-07-22T04:57:58.364095800','1','auad','+918179442558');
/*!40000 ALTER TABLE `chiokbb_ojhjjaba_xghjnbb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckcdi_dujcn_dhvvl`
--

DROP TABLE IF EXISTS `ckcdi_dujcn_dhvvl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckcdi_dujcn_dhvvl` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckcdi_dujcn_dhvvl`
--

LOCK TABLES `ckcdi_dujcn_dhvvl` WRITE;
/*!40000 ALTER TABLE `ckcdi_dujcn_dhvvl` DISABLE KEYS */;
INSERT INTO `ckcdi_dujcn_dhvvl` VALUES (1,'ckcdi_dujcn_dhvvl_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532236489/yogmwdczc28y58mirsh1.jpg','rivv','fihckk','India','2018-07-22T05:15:02.989519700','1','syckk','+918179442558');
/*!40000 ALTER TABLE `ckcdi_dujcn_dhvvl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MYUSER` varchar(30) NOT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `WEBPAGE` varchar(100) NOT NULL,
  `DATUM` date NOT NULL,
  `SUMMARY` varchar(40) NOT NULL,
  `COMMENTS` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'lars','myemail@gmail.com','http://www.vogella.com','2009-09-14','Summary','My first comment');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counters` (
  `idcounters` int(11) NOT NULL AUTO_INCREMENT,
  `counterid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL DEFAULT '0000',
  `merchantid` varchar(45) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closedon` datetime DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcounters`,`counterid`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES (130,'merchant_277_1','0000','merchant_277','2018-11-14 16:57:14',NULL,1),(131,'merchant_277_2','0000','merchant_277','2018-11-14 16:57:15',NULL,1),(132,'merchant_290_1','0000','merchant_290','2018-11-14 22:06:18',NULL,1),(133,'merchant_290_2','0000','merchant_290','2018-11-14 22:06:18',NULL,1),(134,'merchant_295_1','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(135,'merchant_295_2','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(136,'merchant_295_3','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(137,'merchant_295_4','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(138,'merchant_295_5','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(139,'merchant_295_6','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(140,'merchant_295_7','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(141,'merchant_295_8','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(142,'merchant_295_9','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(143,'merchant_295_10','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(144,'merchant_295_11','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(145,'merchant_295_12','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(146,'merchant_295_13','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(147,'merchant_295_14','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(148,'merchant_295_15','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(149,'merchant_295_16','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(150,'merchant_295_17','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(151,'merchant_295_18','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(152,'merchant_295_19','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(153,'merchant_295_20','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(154,'merchant_295_21','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(155,'merchant_295_22','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(156,'merchant_295_23','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(157,'merchant_295_24','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(158,'merchant_295_25','0000','merchant_295','2018-11-15 12:25:11',NULL,1),(159,'merchant_295_26','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(160,'merchant_295_27','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(161,'merchant_295_28','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(162,'merchant_295_29','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(163,'merchant_295_30','0000','merchant_295','2018-11-15 12:25:12',NULL,1),(164,'merchant_295_31','0000','merchant_295','2018-11-15 12:48:21',NULL,1),(165,'merchant_298_1','0000','merchant_298','2018-11-16 09:32:19',NULL,1),(166,'merchant_298_2','0000','merchant_298','2018-11-16 09:32:19',NULL,1),(167,'merchant_307_1','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(168,'merchant_307_2','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(169,'merchant_307_3','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(170,'merchant_307_4','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(171,'merchant_307_5','0000','merchant_307','2018-11-16 23:50:04',NULL,1),(172,'merchant_290_1','0000','merchant_290','2018-11-19 00:17:38',NULL,1),(173,'merchant_290_2','0000','merchant_290','2018-11-19 00:17:38',NULL,1),(174,'merchant_290_3','0000','merchant_290','2018-11-19 00:39:02',NULL,1),(175,'merchant_290_4','0000','merchant_290','2018-11-19 00:39:02',NULL,1),(176,'-1_1','0000','-1','2018-11-22 00:43:00',NULL,1),(177,'-1_2','0000','-1','2018-11-22 00:43:00',NULL,1),(178,'-1_3','0000','-1','2018-11-22 00:43:00',NULL,1),(179,'-1_4','0000','-1','2018-11-22 00:43:00',NULL,1),(180,'-1_5','0000','-1','2018-11-22 00:43:00',NULL,1),(181,'-1_6','0000','-1','2018-11-22 00:43:00',NULL,1),(182,'-1_7','0000','-1','2018-11-22 00:43:00',NULL,1),(183,'-1_8','0000','-1','2018-11-22 00:43:00',NULL,1),(184,'-1_9','0000','-1','2018-11-22 00:43:00',NULL,1),(185,'-1_10','0000','-1','2018-11-22 00:43:00',NULL,1),(186,'-1_11','0000','-1','2018-11-22 00:43:00',NULL,1),(187,'-1_12','0000','-1','2018-11-22 00:43:00',NULL,1),(188,'-1_13','0000','-1','2018-11-22 00:43:00',NULL,1),(189,'-1_14','0000','-1','2018-11-22 00:43:00',NULL,1),(190,'-1_15','0000','-1','2018-11-22 00:43:00',NULL,1),(191,'-1_16','0000','-1','2018-11-22 00:43:00',NULL,1),(192,'-1_17','0000','-1','2018-11-22 00:43:00',NULL,1),(193,'-1_18','0000','-1','2018-11-22 00:43:00',NULL,1),(194,'-1_19','0000','-1','2018-11-22 00:43:00',NULL,1),(195,'-1_20','0000','-1','2018-11-22 00:43:00',NULL,1),(196,'-1_21','0000','-1','2018-11-22 00:43:00',NULL,1),(197,'-1_22','0000','-1','2018-11-22 00:43:00',NULL,1),(198,'-1_23','0000','-1','2018-11-22 00:43:00',NULL,1),(199,'-1_24','0000','-1','2018-11-22 00:43:00',NULL,1),(200,'-1_25','0000','-1','2018-11-22 00:43:00',NULL,1),(201,'-1_26','0000','-1','2018-11-22 00:43:00',NULL,1),(202,'-1_27','0000','-1','2018-11-22 00:43:00',NULL,1),(203,'-1_28','0000','-1','2018-11-22 00:43:00',NULL,1),(204,'-1_29','0000','-1','2018-11-22 00:43:00',NULL,1),(205,'-1_30','0000','-1','2018-11-22 00:43:00',NULL,1),(206,'-1_31','0000','-1','2018-11-22 00:43:00',NULL,1),(207,'-1_32','0000','-1','2018-11-22 00:43:00',NULL,1),(208,'-1_33','0000','-1','2018-11-22 00:43:00',NULL,1),(209,'-1_34','0000','-1','2018-11-22 00:43:00',NULL,1),(210,'-1_35','0000','-1','2018-11-22 00:43:00',NULL,1),(211,'-1_36','0000','-1','2018-11-22 00:43:00',NULL,1),(212,'-1_37','0000','-1','2018-11-22 00:43:00',NULL,1),(213,'-1_38','0000','-1','2018-11-22 00:43:00',NULL,1),(214,'-1_39','0000','-1','2018-11-22 00:43:00',NULL,1),(215,'-1_40','0000','-1','2018-11-22 00:43:00',NULL,1),(216,'-1_41','0000','-1','2018-11-22 00:43:00',NULL,1),(217,'-1_42','0000','-1','2018-11-22 00:43:00',NULL,1),(218,'-1_43','0000','-1','2018-11-22 00:43:00',NULL,1),(219,'-1_44','0000','-1','2018-11-22 00:43:00',NULL,1),(220,'-1_45','0000','-1','2018-11-22 00:43:00',NULL,1),(221,'-1_46','0000','-1','2018-11-22 00:43:00',NULL,1),(222,'-1_47','0000','-1','2018-11-22 00:43:00',NULL,1),(223,'-1_48','0000','-1','2018-11-22 00:43:00',NULL,1),(224,'-1_49','0000','-1','2018-11-22 00:43:00',NULL,1),(225,'-1_50','0000','-1','2018-11-22 00:43:00',NULL,1),(226,'-1_51','0000','-1','2018-11-22 00:43:19',NULL,1),(227,'-1_52','0000','-1','2018-11-22 00:43:19',NULL,1),(228,'-1_53','0000','-1','2018-11-22 00:43:19',NULL,1),(229,'-1_54','0000','-1','2018-11-22 00:43:19',NULL,1),(230,'-1_55','0000','-1','2018-11-22 00:43:19',NULL,1),(231,'-1_56','0000','-1','2018-11-22 00:43:20',NULL,1),(232,'-1_57','0000','-1','2018-11-22 00:43:20',NULL,1),(233,'-1_58','0000','-1','2018-11-22 00:43:20',NULL,1),(234,'-1_59','0000','-1','2018-11-22 00:43:20',NULL,1),(235,'-1_60','0000','-1','2018-11-22 00:43:20',NULL,1),(236,'-1_61','0000','-1','2018-11-22 00:43:20',NULL,1),(237,'-1_62','0000','-1','2018-11-22 00:43:20',NULL,1),(238,'-1_63','0000','-1','2018-11-22 00:43:20',NULL,1),(239,'-1_64','0000','-1','2018-11-22 00:43:20',NULL,1),(240,'-1_65','0000','-1','2018-11-22 00:43:20',NULL,1),(241,'-1_66','0000','-1','2018-11-22 00:43:20',NULL,1),(242,'-1_67','0000','-1','2018-11-22 00:43:20',NULL,1),(243,'-1_68','0000','-1','2018-11-22 00:43:20',NULL,1),(244,'-1_69','0000','-1','2018-11-22 00:43:20',NULL,1),(245,'-1_70','0000','-1','2018-11-22 00:43:20',NULL,1),(246,'-1_71','0000','-1','2018-11-22 00:43:20',NULL,1),(247,'-1_72','0000','-1','2018-11-22 00:43:20',NULL,1),(248,'-1_73','0000','-1','2018-11-22 00:43:20',NULL,1),(249,'-1_74','0000','-1','2018-11-22 00:43:20',NULL,1),(250,'-1_75','0000','-1','2018-11-22 00:43:20',NULL,1),(251,'-1_76','0000','-1','2018-11-22 00:43:20',NULL,1),(252,'-1_77','0000','-1','2018-11-22 00:43:20',NULL,1),(253,'-1_78','0000','-1','2018-11-22 00:43:20',NULL,1),(254,'-1_79','0000','-1','2018-11-22 00:43:20',NULL,1),(255,'-1_80','0000','-1','2018-11-22 00:43:20',NULL,1),(256,'-1_81','0000','-1','2018-11-22 00:43:20',NULL,1),(257,'-1_82','0000','-1','2018-11-22 00:43:20',NULL,1),(258,'-1_83','0000','-1','2018-11-22 00:43:20',NULL,1),(259,'-1_84','0000','-1','2018-11-22 00:43:20',NULL,1),(260,'-1_85','0000','-1','2018-11-22 00:43:20',NULL,1),(261,'-1_86','0000','-1','2018-11-22 00:43:20',NULL,1),(262,'-1_87','0000','-1','2018-11-22 00:43:20',NULL,1),(263,'-1_88','0000','-1','2018-11-22 00:43:20',NULL,1),(264,'-1_89','0000','-1','2018-11-22 00:43:20',NULL,1),(265,'-1_90','0000','-1','2018-11-22 00:43:20',NULL,1),(266,'-1_91','0000','-1','2018-11-22 00:43:20',NULL,1),(267,'-1_92','0000','-1','2018-11-22 00:43:20',NULL,1),(268,'-1_93','0000','-1','2018-11-22 00:43:20',NULL,1),(269,'-1_94','0000','-1','2018-11-22 00:43:20',NULL,1),(270,'-1_95','0000','-1','2018-11-22 00:43:20',NULL,1),(271,'-1_96','0000','-1','2018-11-22 00:43:20',NULL,1),(272,'-1_97','0000','-1','2018-11-22 00:43:20',NULL,1),(273,'-1_98','0000','-1','2018-11-22 00:43:20',NULL,1),(274,'-1_99','0000','-1','2018-11-22 00:43:20',NULL,1),(275,'-1_100','0000','-1','2018-11-22 00:43:20',NULL,1),(276,'merchant_290_1','0000','merchant_290','2018-11-26 01:00:40',NULL,1),(277,'merchant_290_2','0000','merchant_290','2018-11-26 01:00:40',NULL,1),(278,'merchant_290_3','0000','merchant_290','2018-11-26 01:00:40',NULL,1),(279,'merchant_290_4','0000','merchant_290','2018-11-26 01:00:40',NULL,1),(280,'merchant_290_5','0000','merchant_290','2018-11-26 01:00:40',NULL,1);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerpointsavailed`
--

DROP TABLE IF EXISTS `customerpointsavailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerpointsavailed` (
  `idcustomerpointsavailed` int(11) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `pointsused` int(10) NOT NULL DEFAULT '0',
  `goodieselected` int(3) NOT NULL DEFAULT '0',
  `usedon` varchar(128) NOT NULL DEFAULT '""',
  PRIMARY KEY (`idcustomerpointsavailed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpointsavailed`
--

LOCK TABLES `customerpointsavailed` WRITE;
/*!40000 ALTER TABLE `customerpointsavailed` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerpointsavailed` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `fhuuhgg_gghhuu_fgggh`
--

DROP TABLE IF EXISTS `fhuuhgg_gghhuu_fgggh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fhuuhgg_gghhuu_fgggh` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fhuuhgg_gghhuu_fgggh`
--

LOCK TABLES `fhuuhgg_gghhuu_fgggh` WRITE;
/*!40000 ALTER TABLE `fhuuhgg_gghhuu_fgggh` DISABLE KEYS */;
INSERT INTO `fhuuhgg_gghhuu_fgggh` VALUES (1,'fhuuhgg_gghhuu_fgggh_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532204369/d3hfkhtktqihqjcozatt.jpg','fgyu','duijbb','India','2018-07-21T20:20:04.176035400','1','guu','+918179442558');
/*!40000 ALTER TABLE `fhuuhgg_gghhuu_fgggh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiis_fuiidv_cjoav`
--

DROP TABLE IF EXISTS `fiis_fuiidv_cjoav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fiis_fuiidv_cjoav` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiis_fuiidv_cjoav`
--

LOCK TABLES `fiis_fuiidv_cjoav` WRITE;
/*!40000 ALTER TABLE `fiis_fuiidv_cjoav` DISABLE KEYS */;
INSERT INTO `fiis_fuiidv_cjoav` VALUES (1,'fiis_fuiidv_cjoav_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532205203/pot3djrzdrdtwgw4q0ge.jpg','gisdgg','fuikb','India','2018-07-21T20:33:34.223195800','1','gaiafg','+918179442558');
/*!40000 ALTER TABLE `fiis_fuiidv_cjoav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fjjjtt_fyfyu67_gjgu7`
--

DROP TABLE IF EXISTS `fjjjtt_fyfyu67_gjgu7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fjjjtt_fyfyu67_gjgu7` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fjjjtt_fyfyu67_gjgu7`
--

LOCK TABLES `fjjjtt_fyfyu67_gjgu7` WRITE;
/*!40000 ALTER TABLE `fjjjtt_fyfyu67_gjgu7` DISABLE KEYS */;
INSERT INTO `fjjjtt_fyfyu67_gjgu7` VALUES (1,'fjjjtt_fyfyu67_gjgu7_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532205913/ss4n252qhihxudmuad9x.jpg','gopi','fufyy','India','2018-07-21T20:45:30.317225900','1','ryffg','+918179442558');
/*!40000 ALTER TABLE `fjjjtt_fyfyu67_gjgu7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_msg`
--

DROP TABLE IF EXISTS `group_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_msg` (
  `idgroup_msg` int(11) NOT NULL AUTO_INCREMENT,
  `msgowner` varchar(15) NOT NULL,
  `parentmsg` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `message` varchar(512) NOT NULL,
  `message_imgurl` varchar(256) DEFAULT NULL,
  `sex` varchar(10) NOT NULL DEFAULT 'male',
  `modifiedon` date NOT NULL,
  `rootmsg` int(11) NOT NULL,
  PRIMARY KEY (`idgroup_msg`),
  KEY `FK_PARENTMSG_idx` (`parentmsg`),
  CONSTRAINT `FK_PARENTMSG` FOREIGN KEY (`parentmsg`) REFERENCES `group_msg` (`idgroup_msg`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_msg`
--

LOCK TABLES `group_msg` WRITE;
/*!40000 ALTER TABLE `group_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `idgroups` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(45) NOT NULL,
  `groupdp` varchar(256) NOT NULL,
  `owner` varchar(15) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userscount` int(11) NOT NULL DEFAULT '1',
  `groupdesc` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`idgroups`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpers`
--

DROP TABLE IF EXISTS `helpers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpers` (
  `idcounters` int(11) NOT NULL AUTO_INCREMENT,
  `counterid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL DEFAULT '0000',
  `merchantid` varchar(45) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closedon` datetime DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`idcounters`,`counterid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpers`
--

LOCK TABLES `helpers` WRITE;
/*!40000 ALTER TABLE `helpers` DISABLE KEYS */;
INSERT INTO `helpers` VALUES (16,'merchant_277_1_helper','0000','merchant_277','2018-11-14 16:57:15',NULL,2),(17,'merchant_277_2_helper','0000','merchant_277','2018-11-14 16:57:15',NULL,2),(18,'merchant_290_1_helper','0000','merchant_290','2018-11-14 22:06:18',NULL,2),(19,'merchant_290_2_helper','0000','merchant_290','2018-11-14 22:06:18',NULL,2),(20,'merchant_295_1_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(21,'merchant_295_2_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(22,'merchant_295_3_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(23,'merchant_295_4_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(24,'merchant_295_5_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(25,'merchant_295_6_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(26,'merchant_295_7_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(27,'merchant_295_8_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(28,'merchant_295_9_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(29,'merchant_295_10_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(30,'merchant_295_11_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(31,'merchant_295_12_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(32,'merchant_295_13_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(33,'merchant_295_14_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(34,'merchant_295_15_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(35,'merchant_295_16_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(36,'merchant_295_17_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(37,'merchant_295_18_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(38,'merchant_295_19_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(39,'merchant_295_20_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(40,'merchant_295_21_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(41,'merchant_295_22_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(42,'merchant_295_23_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(43,'merchant_295_24_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(44,'merchant_295_25_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(45,'merchant_295_26_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(46,'merchant_295_27_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(47,'merchant_295_28_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(48,'merchant_295_29_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(49,'merchant_295_30_helper','0000','merchant_295','2018-11-15 12:25:12',NULL,2),(50,'merchant_295_31_helper','0000','merchant_295','2018-11-15 12:48:21',NULL,2),(51,'merchant_298_1_helper','0000','merchant_298','2018-11-16 09:32:19',NULL,2),(52,'merchant_298_2_helper','0000','merchant_298','2018-11-16 09:32:19',NULL,2),(53,'merchant_307_1_helper','0000','merchant_307','2018-11-16 23:50:04',NULL,2),(54,'merchant_307_2_helper','0000','merchant_307','2018-11-16 23:50:04',NULL,2),(55,'merchant_290_1_helper','0000','merchant_290','2018-11-19 00:17:39',NULL,2),(56,'merchant_290_2_helper','0000','merchant_290','2018-11-19 00:17:39',NULL,2),(57,'-1_1_helper','0000','-1','2018-11-22 00:43:00',NULL,2),(58,'-1_2_helper','0000','-1','2018-11-22 00:43:00',NULL,2),(59,'-1_3_helper','0000','-1','2018-11-22 00:43:00',NULL,2),(60,'-1_4_helper','0000','-1','2018-11-22 00:43:20',NULL,2),(61,'-1_5_helper','0000','-1','2018-11-22 00:43:20',NULL,2),(62,'-1_6_helper','0000','-1','2018-11-22 00:43:20',NULL,2);
/*!40000 ALTER TABLE `helpers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jfhi_dihdf_djjvfyok`
--

DROP TABLE IF EXISTS `jfhi_dihdf_djjvfyok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jfhi_dihdf_djjvfyok` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jfhi_dihdf_djjvfyok`
--

LOCK TABLES `jfhi_dihdf_djjvfyok` WRITE;
/*!40000 ALTER TABLE `jfhi_dihdf_djjvfyok` DISABLE KEYS */;
INSERT INTO `jfhi_dihdf_djjvfyok` VALUES (1,'jfhi_dihdf_djjvfyok_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532235070/gdfpr618oxr1ci3pofw1.jpg','duhdf','ogfjnb','India','2018-07-22T04:51:22.192063','1','sgjkj','+918179442558');
/*!40000 ALTER TABLE `jfhi_dihdf_djjvfyok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_asdfgf`
--

DROP TABLE IF EXISTS `job_asdfgf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_asdfgf` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_asdfgf`
--

LOCK TABLES `job_asdfgf` WRITE;
/*!40000 ALTER TABLE `job_asdfgf` DISABLE KEYS */;
INSERT INTO `job_asdfgf` VALUES (1,'testnew','https://www.google.com/maps/?q=23.0225,72.5714','testdescnew','testlandmarknew','testpost','testeducation','testexp','male','56','990552266','new@gmail.com','12-09-2018','9to12','50000','2018-10-03 01:14:22');
/*!40000 ALTER TABLE `job_asdfgf` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) DEFAULT 'Karnataka',
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL DEFAULT 'CURRENT_TIMESTAMP',
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL DEFAULT '0000000000',
  `MerchantType` int(3) NOT NULL DEFAULT '0',
  `password` varchar(15) NOT NULL DEFAULT '0000',
  `role` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (1,'merchant1','abcdef',12.444,77.444,'http://res.cloudinary.com/locator/image/upload/v1531857333/nqihwspfcezcmpbllsda.jpg','NearMe','Karnataka','INDIA','18/7/2018','1',NULL,'',0,'0000',0),(2,'merchant_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532240370/njrca8n7qo6w8jgc8qty.jpg','gopi','cvvcccc','India','2018-07-22T06:19:32.438588500','1','57566','+918179442558',0,'0000',0),(3,'merchant_0','tdr3bj',12.9959915,77.6953886,'http://res.cloudinary.com/locator/image/upload/v1532247481/zfymkasmfplvdleytevd.jpg','pepe','dvn','India','2018-07-22T08:18:04.488128800','1','12\n12','+918179442558',0,'0000',0),(5,'merchant_0','tdr1z4',12.9780868,77.6548604,'http://res.cloudinary.com/locator/image/upload/v1532434694/cjjrkhvvtn081b8tq6td.jpg','gopi','dhshh','India','2018-07-24T12:18:16.144958500','1','dhshg','+918179442558',0,'0000',0),(6,'merchant_0','tdr1z3',12.9706636,77.6696793,'http://res.cloudinary.com/locator/image/upload/v1532539271/srfa7inrmm8ldc7vfv9y.png','gopi','chf57','India','2018-07-25T17:21:14.876458200','1','rufg57','+918247638529',0,'0000',0),(7,'merchant_0','tdr1z3',12.9707416,77.6697445,'http://res.cloudinary.com/locator/image/upload/v1532605885/rkkmq40wppps2m8clwlg.jpg','gopi','fhhg67','India','2018-07-26T11:51:26.824679300','1','fhfu5','+918179442558',0,'0000',0),(8,'merchant_0','tdr1z3',12.9706876,77.6696719,'http://res.cloudinary.com/locator/image/upload/v1532640656/vkjup1tlpjvqzz3wh3ya.jpg','gopi','fhgg','India','2018-07-26T21:30:59.052256400','1','rjfg','+918179442558',0,'0000',0),(9,'merchant_0','tdr1z3',12.9707015,77.6696716,'http://res.cloudinary.com/locator/image/upload/v1532769916/fpairvtlnrwojdhex9qo.jpg','Muralu','Chchg','India','2018-07-28T09:25:18.871076','1','Fhfhghfg','+919849124680',0,'0000',0),(10,'merchant_0','tdr1z3',12.9706821,77.6696787,'http://res.cloudinary.com/locator/image/upload/v1532772418/ztmupsp9jpzunpptvwad.jpg','Gopi','Fhgvh','India','2018-07-28T10:07:00.162148400','1','Etdyy','+919849124680',0,'0000',0),(11,'merchant_0','tdr1z3',12.9706826,77.6696684,'http://res.cloudinary.com/locator/image/upload/v1532772625/ymvgss9j3hgg1pik3b19.jpg','Murali','Fjdg','India','2018-07-28T10:10:26.553539700','1','V','+919849124680',0,'0000',0),(12,'merchant_0','tdr1z4',12.9789251,77.6576593,'http://res.cloudinary.com/locator/image/upload/v1532927979/k8eatgrfe89yepqklkju.jpg','gopi','yugu','India','2018-07-30T05:19:41.974390500','1','57ghhj ','+918247638529',0,'0000',0),(13,'merchant_0','tdr1z3',12.9707256,77.6696653,'http://res.cloudinary.com/locator/image/upload/v1533370518/rrnqk7lvkn657j92htde.jpg','gopi','gjgjv','India','2018-08-04T08:15:21.944561700','1','fhhj gh','+918179442558',0,'0000',0),(14,'merchant_0','tdr1z3',12.9707168,77.6696874,'http://res.cloudinary.com/locator/image/upload/v1533379836/wrmfekovegcx5ts06xa7.jpg','gopi','ghdhdy','India','2018-08-04T10:50:39.652131500','1','dhghvc','+918179442558',0,'0000',0),(15,'merchant_14','tdr1z3',12.970706,77.6696837,'http://res.cloudinary.com/locator/image/upload/v1533380904/c9veiow9dbrjuku59c2f.jpg','gopi','fjxjc','India','2018-08-04T11:08:28.203630200','1','fjcj','+918179442558',0,'0000',0),(16,'merchant_15','tdr1z3',12.9709795,77.6698273,'http://res.cloudinary.com/locator/image/upload/v1533753831/d99ifhnsvw5qt5qaetmz.jpg','foi','vnvb','INDIA','2018-08-08T18:43:53.932315900','1','fgxhg','+918247638529',0,'0000',0),(17,'merchant_0','tdr1z3',12.9707172,77.6696797,'http://res.cloudinary.com/locator/image/upload/v1533931358/j3cen3a6vyotj7rglwqe.jpg','gopi','fhjk','INDIA','2018-08-10T20:02:56.483348400','1','fhghh','+918179442558',0,'0000',0),(18,'merchant_17','tdr1z3',12.9707106,77.6696804,'http://res.cloudinary.com/locator/image/upload/v1533934160/lawbleaqv7tetn1t279e.jpg','gopi','gjvhb','INDIA','2018-08-10T20:49:30.046993600','1','fjcgv','+918247638529',0,'0000',0),(19,'merchant_18','tdr1z3',12.9707104,77.6696534,'http://res.cloudinary.com/locator/image/upload/v1534360796/azksqrdn3gn8h6ugqncy.jpg','fjk nk','fihvkl','INDIA','2018-08-15T19:19:57.777148100','1','cvnn','+918639613292',0,'0000',0),(20,'merchant_19','tdr1z3',12.9706934,77.6695013,'http://res.cloudinary.com/locator/image/upload/v1534361408/vh1bjxqcy9b2qoygyo6k.jpg','viik','x','INDIA','2018-08-15T19:30:11.089101100','1','cghhh','+918639613292',0,'0000',0),(21,'merchant_20','tdr1z3',12.9707927,77.6695073,'http://res.cloudinary.com/locator/image/upload/v1534363385/lr1vjadihjykt1fubcbm.jpg','chuax','d','INDIA','2018-08-15T20:03:07.046572500','1','sddsd','+918639613292',0,'0000',0),(22,'merchant_21','tdr1z3',12.9707331,77.6696879,'http://res.cloudinary.com/locator/image/upload/v1534399944/pdltkqtl2ib36vlji2fk.jpg','sravani','Karnataka','INDIA','2018-08-16T06:12:26.515052300','1','25','+919959860293',0,'0000',0),(23,'merchant_22','tdr1z3',12.9707324,77.6696836,'http://res.cloudinary.com/locator/image/upload/v1534399990/xqwsvezxppjetq8zgvnb.jpg','sravani','Karnataka','INDIA','2018-08-16T06:13:12.108754300','1','25','+919959860293',0,'0000',0),(24,'merchant_23','tdr1z3',12.9707311,77.6696945,'http://res.cloudinary.com/locator/image/upload/v1534426391/zfniewc76kxhgdlk8kuz.jpg','s','njkms','INDIA','2018-08-16T13:33:13.496119700','1','vnn','+919959860293',0,'0000',0),(25,'merchant_24','tdr1z3',12.9707347,77.6697015,'http://res.cloudinary.com/locator/image/upload/v1534426398/qzpskrv29emu4qarct66.jpg','s','njkms','INDIA','2018-08-16T13:33:19.605315900','1','vnn','+919959860293',0,'0000',0),(26,'merchant_25','tdr1z3',12.9706861,77.6696692,'http://res.cloudinary.com/locator/image/upload/v1534429739/zskcwbtsxdsxm2lbgbgt.jpg','gopi','gkhj','INDIA','2018-08-16T14:29:01.889591900','1','fjfh','+918179442558',0,'0000',0),(27,'merchant_26','tdr1z3',12.970785,77.6695177,'http://res.cloudinary.com/locator/image/upload/v1534429954/cvfuj3guwxzxj90ikdov.jpg','gopi','gkh','INDIA','2018-08-16T14:32:36.405405600','1','fhfh','+918179442558',0,'0000',0),(28,'merchant_27','tdr1z3',12.9706906,77.6696503,'http://res.cloudinary.com/locator/image/upload/v1534435964/mawvzvi6sntyygv8m20e.jpg','gopi','fjgj','INDIA','2018-08-16T16:12:46.301351600','1','ghyuu','+918179442558',0,'0000',0),(29,'merchant_28','tdr1z3',12.9707101,77.669675,'http://res.cloudinary.com/locator/image/upload/v1534437372/q06kiwi2n2e2g5xkttlp.jpg','gopi','gjgj','INDIA','2018-08-16T16:36:15.130760','1','ghfh','+918179442558',0,'0000',0),(30,'merchant_29','tdr1z3',12.9706846,77.6696576,'http://res.cloudinary.com/locator/image/upload/v1534441692/wiplcawubbydckqodsus.jpg','img','vkH','INDIA','2018-08-16T17:48:14.321994','1','ghF','+918179442558',0,'0000',0),(31,'merchant_30','tdr1z3',12.9707134,77.6695892,'http://res.cloudinary.com/locator/image/upload/v1534441989/y81kwus5pd0quuau9z4h.jpg','gopi','vk','INDIA','2018-08-16T17:53:11.509841100','1','gjh','+918179442558',0,'0000',0),(32,'merchant_31','tdr1z3',12.9706829,77.6696627,'http://res.cloudinary.com/locator/image/upload/v1534445151/oocuswwgpw9lmy1mhcmg.jpg','gopi','gjf','INDIA','2018-08-16T18:45:53.403090600','1','fhfg','+918179442558',0,'0000',0),(33,'merchant_32','tdr1z3',12.9706866,77.6696695,'http://res.cloudinary.com/locator/image/upload/v1534445551/nod2jwzjslnz0isz2lpv.jpg','sur7','fhjknn','INDIA','2018-08-16T18:52:32.715943100','1','xhhb','+918179442558',0,'0000',0),(34,'merchant_33','tdr1z3',12.9707114,77.6696423,'http://res.cloudinary.com/locator/image/upload/v1534445829/l2vtjhmly9aogcles3w4.jpg','hht','vjmi','INDIA','2018-08-16T18:57:11.187254400','1','hhjb','+918179442558',0,'0000',0),(35,'merchant_34','tdr1z3',12.970677547547016,77.66966538503766,'http://res.cloudinary.com/locator/image/upload/v1534492541/dzrv5fa8qjjxg3mzb6f0.jpg','gopi','','INDIA','2018-08-17T07:55:42.633627400','1','fjh','+918179442558',0,'0000',0),(36,'merchant_35','tdr1z2',12.96815916488641,77.67014617100358,'http://res.cloudinary.com/locator/image/upload/v1534516150/ohsvplxev9wky9f2ykue.jpg','delhi deli','','INDIA','2018-08-17T14:29:12.381347600','1','29, 1st main road','+918247638529',0,'0000',0),(37,'merchant_36','tdr1z3',12.970702378385607,77.6696496270597,'http://res.cloudinary.com/locator/image/upload/v1534597818/fhppb3ogcafsrun1x8na.jpg','gopi','','INDIA','2018-08-18T13:10:20.820471900','1','ghfh','+918179442558',0,'0000',0),(38,'merchant_37','tdr1z3',12.97077749999999,77.66962890624993,'http://res.cloudinary.com/locator/image/upload/v1534600783/cf3hvan61qhgsac0khmp.jpg','siri shop','','INDIA','2018-08-18T13:59:45.601808900','1','001','+918639613292',0,'0000',0),(39,'merchant_38','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1534612418/nxjllg0imuhqot3rc8dd.jpg','aa shop','','INDIA','2018-08-18T17:13:46.646956300','1','cjkwf','+918639613292',0,'0000',0),(40,'merchant_39','tdr1z3',12.970682500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1534665555/ifolyguyxkmwgz06juzt.jpg','Murali','','INDIA','2018-08-19T07:59:17.911011400','1','Gah','+919849124680',0,'0000',0),(41,'merchant_40','tdr1z4',12.979537500000001,77.65803515624997,'http://res.cloudinary.com/locator/image/upload/v1534831811/uucdrysjk6fg8zyev2he.jpg','gopi','','INDIA','2018-08-21T06:10:13.331828600','1','677','+918179442558',0,'0000',0),(42,'merchant_41','tdr1rx',12.919767500000013,77.68347265625002,'http://res.cloudinary.com/locator/image/upload/v1534841798/qwn4hh8ne6hxxiyfaheq.jpg','Murali','','INDIA','2018-08-21T08:56:40.723235700','1','Bsb','+919849124680',0,'0000',0),(43,'merchant_42','tdr1z4',12.979547500000002,77.65801171874992,'http://res.cloudinary.com/locator/image/upload/v1534853298/drfzzzo6be67tu76rcj6.jpg','gopi','','INDIA','2018-08-21T12:08:19.034582600','1','67678','+918179442558',0,'0000',0),(44,'merchant_43','tdr1rx',12.919767500000013,77.68349609375,'http://res.cloudinary.com/locator/image/upload/v1534856618/tijao1239mbwity7ciko.jpg','Murali','','INDIA','2018-08-21T13:03:40.036731700','1','Bj','+919849124680',0,'0000',0),(45,'merchant_44','tdr1z3',12.970692500000006,77.6696523437499,'http://res.cloudinary.com/locator/image/upload/v1534859673/xyhgc9zeugd17enax5jm.jpg','aruna','','INDIA','2018-08-21T13:54:34.112642500','1','5768','+918686091898',0,'0000',0),(46,'merchant_45','tdr1z3',12.97075628743455,77.66970494762063,'http://res.cloudinary.com/locator/image/upload/v1534882011/wewvfhjkml8xcygogehb.jpg','gopi','','INDIA','2018-08-22T01:36:57.347849400','1','577','+918179442558',0,'0000',0),(47,'merchant_46','tdr1z2',12.968652499999997,77.66879296874995,'http://res.cloudinary.com/locator/image/upload/v1534917248/udgrlyomc4mhvkwedi0v.jpg','Murali','','INDIA','2018-08-22T11:24:10.130651100','1','Hh','+919849124680',0,'0000',0),(48,'merchant_47','tdr1z3',12.970682500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1534920344/io8tnetxlvugnsbf64xr.jpg','siri shop','','INDIA','2018-08-22T12:15:45.487158100','1','shop no 1','+918639613292',0,'0000',0),(49,'merchant_48','tdr1z3',12.970682500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1534920349/odgw8zvghscutg6fs7fp.jpg','siri shop','','INDIA','2018-08-22T12:15:50.330887700','1','shop no 1','+918639613292',0,'0000',0),(50,'merchant_49','tdr1z3',12.970682500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1534920356/jyggevpdymbtsq3ll1kf.jpg','siri shop','','INDIA','2018-08-22T12:15:57.393430900','1','shop no 1','+918639613292',0,'0000',0),(51,'merchant_50','tdr1z3',12.970682500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1534920365/tt0aqvchfy10f1fiahsc.jpg','siri shop','','INDIA','2018-08-22T12:16:06.065294600','1','shop no 1','+918639613292',0,'0000',0),(52,'merchant_51','tdr1zv',12.996312500000007,77.69526171874995,'http://res.cloudinary.com/locator/image/upload/v1534931588/yubsfqm5py6bilekumfr.jpg','go colors ','','INDIA','2018-08-22T15:23:09.595175600','1','21','+918639613292',0,'0000',0),(53,'merchant_52','tdr1zj',12.992882500000015,77.66173046874995,'http://res.cloudinary.com/locator/image/upload/v1534936014/mtvwpvvjvlnz4xzt2yyo.jpg','go colors','','INDIA','2018-08-22T16:36:56.505311900','1','21','+918639613292',0,'0000',0),(54,'merchant_53','tdr1z3',12.970279273626133,77.66995875164866,'http://res.cloudinary.com/locator/image/upload/v1534956555/dm1k23xx62kdzsbelpqa.jpg','ggopi','','INDIA','2018-08-22T22:19:17.318041300','1','ghgh','+918247638529',0,'0000',0),(55,'merchant_54','tdr1z3',12.970682500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1534957950/nrbfbm2ypp280mev7qwm.jpg','gopi','','INDIA','2018-08-22T22:42:31.548991600','1','fjh','+918179442558',0,'0000',0),(56,'merchant_55','tdr1z3',12.970847499999998,77.66952734374993,'http://res.cloudinary.com/locator/image/upload/v1534959049/bprtotc40gzsi7ngsbgp.jpg','gopi','','INDIA','2018-08-22T23:00:50.659400700','1','gjk','+918179442558',0,'0000',0),(57,'merchant_56','tdr1z3',12.970852500000001,77.66946484374992,'http://res.cloudinary.com/locator/image/upload/v1534960557/ydll9jazwdliihzchtzp.jpg','gopi','','INDIA','2018-08-22T23:25:58.613819','1','gjj h','+918179442558',0,'0000',0),(58,'merchant_57','tdr1z3',12.970677500000003,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1534996705/ng6xwmsdampoisxu2qlk.jpg','gopi','','INDIA','2018-08-23T09:28:25.536156700','1','gu57','+918179442558',0,'0000',0),(59,'merchant_58','ttncwc',28.396502200000004,77.29372819999999,'http://res.cloudinary.com/locator/image/upload/v1535008335/t975qrxlmejivbeszxu5.jpg','Vinay Kuma','','INDIA','2018-08-23T12:42:17.722647300','1','3A-WH-64 N.I.T Faridabad','+919540926815',0,'0000',0),(60,'merchant_59','',28.392340400000002,77.3060746,'http://res.cloudinary.com/locator/image/upload/v1535010365/xmubpfkfgk5knx0bebva.jpg','testid2','','INDIA','2018-08-23T13:16:06.927537800','1','5 d-82 N.I.T faridabad','+917065267973',0,'0000',0),(61,'merchant_60','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1535040603/yji6mmzp4xen1uj9qevv.jpg','amma','','INDIA','2018-08-23T21:40:04.566756700','1','ghhh','+919959860239',0,'0000',0),(62,'merchant_61','tdr1z3',12.970742500000007,77.66967578124994,'http://res.cloudinary.com/locator/image/upload/v1535520672/ts3st92erwofeuda1vc3.jpg','chinni shp','','INDIA','2018-08-29T11:01:14.456321','1','21','+918639613292',0,'0000',0),(63,'merchant_62','tdr1z3',12.969465734267292,77.66969220712781,'http://res.cloudinary.com/locator/image/upload/v1535523458/mfrqht6vojvd9my7oejj.jpg','siri','','INDIA','2018-08-29T11:47:40.318124400','1','dfg','+918639613292',0,'0000',0),(64,'merchant_63','tdr1z3',12.969465734267292,77.66969220712781,'http://res.cloudinary.com/locator/image/upload/v1535523466/r33dnucrflbkamrgrecs.jpg','siri','','INDIA','2018-08-29T11:47:47.724395400','1','dfg','+918639613292',0,'0000',0),(65,'merchant_64','tdr1z2',12.968983399999997,77.6698388,'http://res.cloudinary.com/locator/image/upload/v1535524201/rharlmhhdhqlgmqku5qp.jpg','Parul ','','INDIA','2018-08-29T12:00:03.193800200','1','nw201','+919343808009',0,'0000',0),(66,'merchant_65','tdr1z3',12.970682500000002,77.66958984374995,'http://res.cloudinary.com/locator/image/upload/v1535613637/fuw1whlz8scefkjoguuy.jpg','gop','','INDIA','2018-08-30T12:50:38.346500300','1','ghh','+918179442558',0,'0000',0),(67,'merchant_0','tdr26y',12.733552500000009,77.82638671874994,'http://res.cloudinary.com/locator/image/upload/v1535698814/o2uopxmmhbwjdejhdllp.jpg','gopi','','INDIA','2018-08-31T12:30:16.470277300','1','guu','+918179442558',0,'0000',0),(68,'merchant_67','tdr1z3',12.970737500000007,77.66968359374991,'http://res.cloudinary.com/locator/image/upload/v1535810986/ay4d9fsrdbmzb8fhdkjz.jpg','blabla','','INDIA','2018-09-01T19:39:48.990550100','1','21','+918179442558',0,'0000',0),(69,'merchant_68','tdr1z3',12.970682500000002,77.66862890624995,'http://res.cloudinary.com/locator/image/upload/v1535871923/mrubb9kj8h95lxuttlev.jpg','n shridha','','INDIA','2018-09-02T12:35:24.972195400','1','chess coach ','+919731205350',0,'0000',0),(70,'merchant_69','ttncwc',28.396502200000004,77.29372819999999,'http://res.cloudinary.com/locator/image/upload/v1536053135/e8xtoxmcaqq95flycr00.jpg','vk decor','','INDIA','2018-09-04T14:55:37.175291600','1','','+919540926815',0,'0000',0),(71,'merchant_70','ts5ejh',23.050807499999998,72.64487109374998,'http://res.cloudinary.com/locator/image/upload/v1538417425/gd3ypqi3lblkenk3ok4z.jpg','mayur','','INDIA','2018-10-01T23:40:27.973049700','1','qwe','+918200785387',0,'0000',0),(72,'merchant_71','',0,0,'http://res.cloudinary.com/locator/image/upload/v1538708818/uufetv7ulpmjg7hu3bgc.jpg','Bujji','','INDIA','2018-10-05T08:37:00.505827300','1','Ghg','+919246655322',0,'0000',0),(73,'merchant_72','',0,0,'http://res.cloudinary.com/locator/image/upload/v1538763385/czrjvaeei2kxczsjcfi6.jpg','hemanth','','INDIA','2018-10-05T23:46:27.159858600','1','115','+919703848204',0,'0000',0),(74,'merchant_73','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1538838752/uo6j9asrdz5xohcqv7kc.jpg','gopi','','INDIA','2018-10-06T20:42:33.520535400','1','ghg','+918179442558',0,'0000',0),(75,'merchant_74','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1538838865/lmavshqb8qkmex8j0qip.jpg','gopi','','INDIA','2018-10-06T20:44:25.833269','1','giu','+918179442558',0,'0000',0),(76,'merchant_75','tdr1z3',12.970747500000009,77.6696367187499,'http://res.cloudinary.com/locator/image/upload/v1538940579/iurdshqzsdpscbo2m30h.jpg','gopi','','INDIA','2018-10-08T00:59:40.779338100','1','cjj','+918179442558',0,'0000',0),(77,'merchant_76','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1538940821/zadqysgo9k8brrggtycy.jpg','gopi','','INDIA','2018-10-08T01:03:41.960309300','1','gjk','+918179442558',0,'0000',0),(78,'merchant_77','tdr1z3',12.970732500000002,77.66964453124993,'http://res.cloudinary.com/locator/image/upload/v1538941298/wgh5qqszh8ud4v6f6yzz.jpg','gopi','','INDIA','2018-10-08T01:11:39.317696800','1','fhhj','+918179442558',0,'0000',0),(79,'merchant_78','tdr1z3',12.970737500000007,77.66964453124993,'http://res.cloudinary.com/locator/image/upload/v1538941390/ehxuqj0fzvdjnmkpjsue.jpg','gopi','','INDIA','2018-10-08T01:13:11.098587400','1','xhh','+918179442558',0,'0000',0),(80,'merchant_79','tdr1z4',12.978917500000001,77.65766796874996,'http://res.cloudinary.com/locator/image/upload/v1538984258/qozhq25mhlvemud8s32b.jpg','gopi','','INDIA','2018-10-08T13:07:39.849413400','1','fhu','+918179442558',0,'0000',0),(81,'merchant_80','tdr1z4',12.979472500000007,77.65802734374992,'http://res.cloudinary.com/locator/image/upload/v1538997740/fslxfb5m8x2lld34ebk6.jpg','gopi','','INDIA','2018-10-08T16:52:21.519993','1','fhj','+918179442558',0,'0000',0),(82,'merchant_81','ts5ejh',23.050807499999998,72.64487109374998,'http://res.cloudinary.com/locator/image/upload/v1539024589/egcfpa2h85s2jbfloxab.jpg','mayur','','INDIA','2018-10-09T00:19:52.253534200','1','220','+918200785387',0,'0000',0),(83,'merchant_82','tdr1z4',12.979422500000005,77.65804296874992,'http://res.cloudinary.com/locator/image/upload/v1539161605/s14szxccosmpimh3blcv.jpg','gopi','','INDIA','2018-10-10T14:23:26.924201400','1','gjgj','+918179442558',0,'0000',0),(84,'merchant_83','ts5ejh',23.05049250000001,72.64523828124997,'http://res.cloudinary.com/locator/image/upload/v1539279415/z0q6b799079pkf2dlxy2.jpg','mayur jain','','INDIA','2018-10-11T23:06:57.252591600','1','143','+918200785387',0,'0000',0),(85,'merchant_84','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1539316580/bpmwckeedrsdcxgdwtga.jpg','gopi','','INDIA','2018-10-12T09:26:22.113566500','1','gjj','+918179442558',0,'0000',0),(86,'merchant_85','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1539316584/rcfnqdyobefmoshmz8m2.jpg','gopi','','INDIA','2018-10-12T09:26:24.769830100','1','gjj','+918179442558',0,'0000',0),(87,'merchant_86','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1539442347/cm0jww5mjbntbiw7ud8h.jpg','gopi','','INDIA','2018-10-13T20:22:28.347229700','1','gh','+918179442558',0,'0000',0),(88,'merchant_87','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1539445118/mjm8s9syg3m4lja9jfik.jpg','gopi','','INDIA','2018-10-13T21:08:39.268870200','1','fhji','+918179442558',0,'0000',0),(89,'merchant_88','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1539449872/g3kvznjmmpzbyvk0n91x.jpg','gopi','','INDIA','2018-10-13T22:27:53.488666700','1','fjh','+918179442558',0,'0000',0),(90,'merchant_89','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1539579628/i83yijfw8kpwjod8iy3d.jpg','gopi','','INDIA','2018-10-15T10:30:29.415054600','1','fhh','+918179442558',0,'0000',0),(91,'merchant_90','tepexv',17.520663799999998,78.3922838,'http://res.cloudinary.com/locator/image/upload/v1539627696/awyaf00cjdq1cmfc2gqo.jpg','ghbh','','INDIA','2018-10-15T23:51:37.581512','1','rt','+918125802142',0,'0000',0),(92,'merchant_91','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1539782048/nwul3zcm5fhahjhpphzu.jpg','gopi','','INDIA','2018-10-17T18:44:09.654437500','1','flat 105, block b','+918179442558',0,'0000',0),(93,'merchant_92','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1539871418/tufhrqkji7axp1seib69.jpg','gopi','','INDIA','2018-10-18T19:33:40.375955100','1','flat','+918179442558',0,'0000',0),(94,'merchant_93','tepexv',17.520581,78.3926386,'http://res.cloudinary.com/locator/image/upload/v1539880214/saiemiezayqddlbgfulf.jpg','my bsbs','','INDIA','2018-10-18T22:00:14.724454','1','disgggsvsv','+918125802142',0,'0000',0),(95,'merchant_94','tepexv',17.520581,78.3926386,'http://res.cloudinary.com/locator/image/upload/v1539880215/fyib0x3kd2nvxcfw0cva.jpg','my bsbs','','INDIA','2018-10-18T22:00:16.021298700','1','disgggsvsv','+918125802142',0,'0000',0),(96,'merchant_95','tepexv',17.5208969,78.393168,'http://res.cloudinary.com/locator/image/upload/v1540011282/cqcyeoqgdgxcbautyore.jpg','gt','','INDIA','2018-10-20T10:24:44.015007300','1','gh','+918125802142',0,'0000',0),(97,'merchant_96','tepexv',17.5208969,78.393168,'http://res.cloudinary.com/locator/image/upload/v1540011283/oqwjwadb7imukp6f07iu.jpg','gt','','INDIA','2018-10-20T10:24:44.404144300','1','gh','+918125802142',0,'0000',0),(98,'merchant_97','tepexv',17.5208969,78.393168,'http://res.cloudinary.com/locator/image/upload/v1540056161/oggpe3zcctqkh3rmdvla.jpg','super','','INDIA','2018-10-20T22:52:42.801787300','1','sgs','+919703848204',0,'0000',0),(99,'merchant_98','tepexv',17.5208969,78.393168,'http://res.cloudinary.com/locator/image/upload/v1540056162/rce7hrxmlkfqtseaycxg.jpg','super','','INDIA','2018-10-20T22:52:43.282252600','1','sgs','+919703848204',0,'0000',0),(100,'merchant_99','tepexv',17.521106,78.3927049,'http://res.cloudinary.com/locator/image/upload/v1540056412/jxhb50edihuvjhf0sq0i.jpg','morning','','INDIA','2018-10-20T22:56:53.901434300','1','hdhdj','+918179968859',0,'0000',0),(101,'merchant_100','tepexv',17.521106,78.3927049,'http://res.cloudinary.com/locator/image/upload/v1540056413/l3itcdhfcqfud7scqefh.jpg','morning','','INDIA','2018-10-20T22:56:58.727611200','1','hdhdj','+918179968859',0,'0000',0),(102,'merchant_101','tepexv',17.5208969,78.393168,'http://res.cloudinary.com/locator/image/upload/v1540056451/bvuwaedibptkjmi1nmhb.jpg','ggcx','','INDIA','2018-10-20T22:57:32.413150300','1','hdhdj','+918179968859',0,'0000',0),(103,'merchant_102','tepexv',17.5208969,78.393168,'http://res.cloudinary.com/locator/image/upload/v1540056452/dvbbw2twed2cuhhz5c4l.jpg','ggcx','','INDIA','2018-10-20T22:57:32.723710700','1','hdhdj','+918179968859',0,'0000',0),(104,'merchant_103','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540059484/zf3tlomsaj7aqnrjf8dy.jpg','gopi','','INDIA','2018-10-20T23:48:06.048141700','1','fhg','+918179442558',0,'0000',0),(105,'merchant_104','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540059486/sp47qm7iovcttdc2lgjm.jpg','gopi','','INDIA','2018-10-20T23:48:06.640922','1','fhg','+918179442558',0,'0000',0),(106,'merchant_105','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540101146/i92hue84mxtx3ruzngdh.jpg','gopi','','INDIA','2018-10-21T11:22:28.246078400','1','gopu','+918179442558',0,'0000',0),(107,'merchant_106','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540101150/cguvddxgv4xnxapnd6oi.jpg','gopi','','INDIA','2018-10-21T11:22:31.092749500','1','gopu','+918179442558',0,'0000',0),(108,'merchant_107','tepexv',17.5205303,78.3937959,'http://res.cloudinary.com/locator/image/upload/v1540403166/nbdibkl6u7stlnsiem9x.jpg','hemanth','','INDIA','2018-10-24T23:16:12.730210900','1','a','+919966525464',0,'0000',0),(109,'merchant_108','tepexv',17.5205303,78.3937959,'http://res.cloudinary.com/locator/image/upload/v1540403176/pvngtgnqcyyoz7r771e4.jpg','hemanth','','INDIA','2018-10-24T23:16:16.579829200','1','a','+919966525464',0,'0000',0),(110,'merchant_109','tepexv',17.520471,78.392178,'http://res.cloudinary.com/locator/image/upload/v1540403520/vpb73wovcsjasoahos93.jpg','grape','','INDIA','2018-10-24T23:22:01.606190100','1','gab','+919966525464',0,'0000',0),(111,'merchant_110','tepexv',17.520471,78.392178,'http://res.cloudinary.com/locator/image/upload/v1540403521/s30ieyql4qifmayp5vjo.jpg','grape','','INDIA','2018-10-24T23:22:02.112086600','1','gab','+919966525464',0,'0000',0),(112,'merchant_111','',0,0,'http://res.cloudinary.com/locator/image/upload/v1540405979/mwerhne351pauowgobkl.jpg','whsh','','INDIA','2018-10-25T00:03:00.874237400','1','sg','+918125802142',0,'0000',0),(113,'merchant_112','',0,0,'http://res.cloudinary.com/locator/image/upload/v1540405980/ycvbea3kislqblihwobw.jpg','whsh','','INDIA','2018-10-25T00:03:01.400602300','1','sg','+918125802142',0,'0000',0),(114,'merchant_113','',0,0,'http://res.cloudinary.com/locator/image/upload/v1540492285/ow8mr2ebjxtyh1l5jdfz.png','tt','','INDIA','2018-10-26T00:01:26.221256700','1','sg','+918179968859',0,'0000',0),(115,'merchant_114','',0,0,'http://res.cloudinary.com/locator/image/upload/v1540492286/t3lbplgm4wiv9kng8hgw.png','tt','','INDIA','2018-10-26T00:01:27.433171500','1','sg','+918179968859',0,'0000',0),(116,'merchant_115','',0,0,'http://res.cloudinary.com/locator/image/upload/v1540662208/z13dudl8zpqt9a1am8rp.jpg','shhdh','','INDIA','2018-10-27T23:13:29.661754300','1','fg','+919966525464',0,'0000',0),(117,'merchant_116','',0,0,'http://res.cloudinary.com/locator/image/upload/v1540662209/tnaqcpbnafhht2mta6be.jpg','shhdh','','INDIA','2018-10-27T23:13:31.303356900','1','fg','+919966525464',0,'0000',0),(118,'merchant_117','',0,0,'http://res.cloudinary.com/locator/image/upload/v1540668507/eolcx5hhubaht5x6blvx.jpg','gopi','','INDIA','2018-10-28T00:58:28.624027500','1','','+918179442558',0,'0000',0),(119,'merchant_118','',0,0,'http://res.cloudinary.com/locator/image/upload/v1540668508/ggcdm5vuhislkal5b0ds.jpg','gopi','','INDIA','2018-10-28T00:58:29.008765400','1','','+918179442558',0,'0000',0),(120,'merchant_119','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540668872/yzyehw8c71hvcserv2f8.jpg','gopi','','INDIA','2018-10-28T01:04:33.675789400','1','gjg7','+918179442558',0,'0000',0),(121,'merchant_120','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540668874/hthp45ujgdeprctzv3s6.jpg','gopi','','INDIA','2018-10-28T01:04:35.283365500','1','gjg7','+918179442558',0,'0000',0),(122,'merchant_121','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1540669472/e1ndq3fjicv7u5f8ik8h.jpg','hdndn','','INDIA','2018-10-28T01:14:34.133838700','1','sgsh','+919966525464',0,'0000',0),(123,'merchant_122','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1540669473/wfpzqqfs52y3jkdto98j.jpg','hdndn','','INDIA','2018-10-28T01:14:34.475648500','1','sgsh','+919966525464',0,'0000',0),(124,'merchant_123','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540670004/t9fpihagzl3n45jt9olq.jpg','gopi','','INDIA','2018-10-28T01:23:25.692499400','1','gj78','+918179442558',0,'0000',0),(125,'merchant_124','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540670005/rphagdumxaykxcznqxgr.jpg','gopi','','INDIA','2018-10-28T01:23:26.451296100','1','gj78','+918179442558',0,'0000',0),(126,'merchant_125','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1540702955/wgfbto1jzoxhdexh2fkc.jpg','dhhsh','','INDIA','2018-10-28T10:32:37.247097200','1','sjsj','+919966525464',0,'0000',0),(127,'merchant_126','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1540702956/ksmv1ftuo0xwzrpaj9xt.jpg','dhhsh','','INDIA','2018-10-28T10:32:37.327151200','1','sjsj','+919966525464',0,'0000',0),(128,'merchant_127','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540704528/qwkcmxxr5qxjq4rmodwa.jpg','gopi','','INDIA','2018-10-28T10:58:48.955207200','1','105 b','+918179442558',0,'0000',0),(129,'merchant_128','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540704542/cpsggjpykyokazxcbkok.jpg','gopi','','INDIA','2018-10-28T10:59:03.183723900','1','105 b','+918179442558',0,'0000',0),(130,'merchant_129','tepexv',17.520663799999998,78.3922838,'http://res.cloudinary.com/locator/image/upload/v1540705607/gw1sulnarblnnlcodfec.jpg','vshd','','INDIA','2018-10-28T11:16:49.157449700','1','bz','+919966525464',0,'0000',0),(131,'merchant_130','tepexv',17.520663799999998,78.3922838,'http://res.cloudinary.com/locator/image/upload/v1540705608/nyxh91nhsf1uzhexdwkt.jpg','vshd','','INDIA','2018-10-28T11:16:49.344960500','1','bz','+919966525464',0,'0000',0),(132,'merchant_131','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1540705711/ivs1c5hfjxnpqcciqvox.jpg','gh','','INDIA','2018-10-28T11:18:32.711171200','1','HH','+919966525464',0,'0000',0),(133,'merchant_132','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1540705712/mxn1fxe285kbnauvq2je.jpg','gh','','INDIA','2018-10-28T11:18:34.050056600','1','HH','+919966525464',0,'0000',0),(134,'merchant_133','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540719411/rcnngtwwmvvjunzzsro1.jpg','gopi','','INDIA','2018-10-28T15:06:53.098604700','1','fjj','+918179442558',0,'0000',0),(135,'merchant_134','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540719413/ezcxdgfa5fxb691i1jlu.jpg','gopi','','INDIA','2018-10-28T15:06:54.276345700','1','fjj','+918179442558',0,'0000',0),(136,'merchant_135','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540723382/kdkcyblmlhpo3lk4saik.jpg','gopi','','INDIA','2018-10-28T16:13:03.654672200','1','fjjj','+918179442558',0,'0000',0),(137,'merchant_136','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540723383/pobtjlk3wgzjd66irxhl.jpg','gopi','','INDIA','2018-10-28T16:13:04.108719500','1','fjjj','+918179442558',0,'0000',0),(138,'merchant_137','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540724420/qsbppxsdbrg3xrd9dk0t.jpg','gopi','','INDIA','2018-10-28T16:30:21.365660400','1','gkj','+918179442558',0,'0000',0),(139,'merchant_138','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540724421/lb1xmr7ykdxalqswinef.jpg','gopi','','INDIA','2018-10-28T16:30:22.596118300','1','gkj','+918179442558',0,'0000',0),(140,'merchant_139','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540725012/nbqzn8jx6pl5fjy0xwwa.jpg','gopi','','INDIA','2018-10-28T16:40:12.679182600','1','vjj','+918179442558',0,'0000',0),(141,'merchant_140','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540725012/xb9ff3ahv8gziajgacwq.jpg','gopi','','INDIA','2018-10-28T16:40:13.769014','1','vjj','+918179442558',0,'0000',0),(142,'merchant_141','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540726589/lg8ja1sqhnjn5uqlhqiu.jpg','gopi','','INDIA','2018-10-28T17:06:30.661727700','1','fjjk','+918179442558',0,'0000',0),(143,'merchant_142','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540726590/jzdqnjizseaycsbrfupn.jpg','gopi','','INDIA','2018-10-28T17:06:31.734972700','1','fjjk','+918179442558',0,'0000',0),(144,'merchant_143','tepexv',17.520581,78.3926386,'http://res.cloudinary.com/locator/image/upload/v1540751041/usdtpn7jl9r88uwdbp7i.jpg','tester','','INDIA','2018-10-28T23:54:02.596967400','1','shhs','+919966525464',0,'0000',0),(145,'merchant_144','tepexv',17.520581,78.3926386,'http://res.cloudinary.com/locator/image/upload/v1540751041/yf1oln0pidi8gifxqbts.jpg','tester','','INDIA','2018-10-28T23:54:02.628229700','1','shhs','+919966525464',0,'0000',0),(146,'merchant_145','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540785385/zp3dndfcbxvwdxa9awet.jpg','gopi','','INDIA','2018-10-29T09:26:26.082827400','1','ghhu67','+918179442558',0,'0000',0),(147,'merchant_146','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540785387/tulbklui16qsuu6kqtkb.jpg','gopi','','INDIA','2018-10-29T09:26:28.289129200','1','ghhu67','+918179442558',0,'0000',0),(148,'merchant_147','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540785514/prh835zdd3xqbfg24wqd.jpg','gopo','','INDIA','2018-10-29T09:28:34.957925','1','gj67','+918179442558',0,'0000',0),(149,'merchant_148','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540785525/eodnmnaep4wmzhtzqa0i.jpg','gopo','','INDIA','2018-10-29T09:28:46.866585100','1','gj67','+918179442558',0,'0000',0),(150,'merchant_149','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1540828773/ehyhri8rouxtkjvnbkvl.jpg','xjdh','','INDIA','2018-10-29T21:29:34.299620700','1','ah','+919966525464',0,'0000',0),(151,'merchant_150','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1540828774/gkuaxglnnn60uusoeta8.jpg','xjdh','','INDIA','2018-10-29T21:29:35.049607500','1','ah','+919966525464',0,'0000',0),(152,'merchant_151','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540868448/x8dahqkazudnidrtmpuj.jpg','gopi','','INDIA','2018-10-30T08:30:49.191555700','1','hiif','+918179442558',0,'0000',0),(153,'merchant_152','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540868449/yxu5wknjnbln7yuvx994.jpg','gopi','','INDIA','2018-10-30T08:30:50.816515','1','hiif','+918179442558',0,'0000',0),(154,'merchant_153','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540903359/tvd54xwbqtfzj42qzgvs.jpg','gopi','','INDIA','2018-10-30T18:12:40.315071200','1','gjj','+918179442558',0,'0000',0),(155,'merchant_154','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540903360/t4jmzemjxpjiadrbvxah.jpg','gopi','','INDIA','2018-10-30T18:12:41.458043800','1','gjj','+918179442558',0,'0000',0),(156,'merchant_155','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540929076/pxsresnk3fgheic3vr9b.jpg','gopi','','INDIA','2018-10-31T01:21:17.383926300','1','fiij','+918179442558',0,'0000',0),(157,'merchant_156','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540929077/aiis33ma4xzofdb6wwcb.jpg','gopi','','INDIA','2018-10-31T01:21:18.555816200','1','fiij','+918179442558',0,'0000',0),(158,'merchant_157','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540931440/h3lvkgqmbnmncg6g1wck.jpg','gopi','','INDIA','2018-10-31T02:00:41.540491700','1','cjj','+918179442558',0,'0000',0),(159,'merchant_158','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540931442/fw5zjw92pp0ahzjx9zzu.jpg','gopi','','INDIA','2018-10-31T02:00:43.062872500','1','cjj','+918179442558',0,'0000',0),(160,'merchant_159','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540932286/dquh6z4jeyw77rfmnkz9.jpg','gopi','','INDIA','2018-10-31T02:14:47.147870600','1','vjj','+918179442558',0,'0000',0),(161,'merchant_160','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1540932287/gtfnhwu1qj0mv51ptrhv.jpg','gopi','','INDIA','2018-10-31T02:14:48.434996700','1','vjj','+918179442558',0,'0000',0),(162,'merchant_161','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541009412/jncrzhglkbm4o8bro7kw.jpg','gopi','','INDIA','2018-10-31T23:40:13.364671900','1','Cjhu','+918179442558',0,'0000',0),(163,'merchant_162','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541009414/cpg8l5rrcdudqokgj1i0.jpg','gopi','','INDIA','2018-10-31T23:40:15.105898300','1','Cjhu','+918179442558',0,'0000',0),(164,'merchant_163','tepexv',17.518839099999997,78.3931408,'http://res.cloudinary.com/locator/image/upload/v1541087738/xysnaxqilx25naopl0en.jpg','agha','','INDIA','2018-11-01T21:25:40.633724','1','ahba','+919966525464',0,'0000',0),(165,'merchant_164','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541100896/uqhybpfzvx5gaqqgvhqg.jpg','gopi','','INDIA','2018-11-02T01:04:57.232716200','1','fjhfy','+918179442558',0,'0000',0),(166,'merchant_165','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541100898/fx6iwmmrje6i5si6ejsj.jpg','gopi','','INDIA','2018-11-02T01:04:58.622335600','1','fjhfy','+918179442558',0,'0000',0),(167,'merchant_166','tdr1z3',12.970727500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1541133770/et1dz45bkurt21thkxmh.jpg','Murali','','INDIA','2018-11-02T10:12:53.275274700','1','Hb','+919849124680',0,'0000',0),(168,'merchant_167','tdr1z3',12.970727500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1541133772/tk6xfyxwxs6r1r7v0ah8.png','Murali','','INDIA','2018-11-02T10:12:53.349482400','1','Hb','+919849124680',0,'0000',0),(169,'merchant_168','tsmzwc',25.234692599999995,75.891724,'http://res.cloudinary.com/locator/image/upload/v1541146454/s7tkpdd9sqpoubvdyfen.png','Amit','','INDIA','2018-11-02T13:44:16.650298','1','87644','+919871278657',0,'0000',0),(170,'merchant_169','tsmzwc',25.234692599999995,75.891724,'http://res.cloudinary.com/locator/image/upload/v1541146455/a6qob0tdtku2funbv8kx.png','Amit','','INDIA','2018-11-02T13:44:16.778225100','1','87644','+919871278657',0,'0000',0),(171,'merchant_170','tepexv',17.521209199999998,78.3920119,'http://res.cloudinary.com/locator/image/upload/v1541260950/mvertrwcm5xjhjny7dzd.jpg','naren','','INDIA','2018-11-03T21:32:31.905696600','1','gghh','+919966525464',0,'2580',0),(172,'merchant_171','tepexv',17.521209199999998,78.3920119,'http://res.cloudinary.com/locator/image/upload/v1541260951/iwizcwyoik1qdsffikkw.jpg','naren','','INDIA','2018-11-03T21:32:32.343187900','1','gghh','+919966525464',0,'2580',0),(173,'merchant_170_0','0000',0,0,NULL,'merchant_170_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(174,'merchant_170_1','0000',0,0,NULL,'merchant_170_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(175,'merchant_170_2','0000',0,0,NULL,'merchant_170_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(176,'merchant_170_3','0000',0,0,NULL,'merchant_170_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(177,'merchant_170_4','0000',0,0,NULL,'merchant_170_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(178,'merchant_170_0','0000',0,0,NULL,'merchant_170_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(179,'merchant_170_1','0000',0,0,NULL,'merchant_170_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(180,'merchant_170_2','0000',0,0,NULL,'merchant_170_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(181,'merchant_170_3','0000',0,0,NULL,'merchant_170_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(182,'merchant_170_4','0000',0,0,NULL,'merchant_170_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(183,'merchant_182','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541274401/pwod8tlnszj3zxzzayve.jpg','gopi','','INDIA','2018-11-04T01:16:42.901529','1','ghgg','+918179442558',0,'0000',0),(184,'merchant_183','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541274402/t5chh0i6eiqln0punxdq.jpg','gopi','','INDIA','2018-11-04T01:16:43.432805200','1','ghgg','+918179442558',0,'0000',0),(185,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(186,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(187,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(188,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(189,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(190,'merchant_171_5','0000',0,0,NULL,'merchant_171_5','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(191,'merchant_171_6','0000',0,0,NULL,'merchant_171_6','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(192,'merchant_171_7','0000',0,0,NULL,'merchant_171_7','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(193,'merchant_171_8','0000',0,0,NULL,'merchant_171_8','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(194,'merchant_171_9','0000',0,0,NULL,'merchant_171_9','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(195,'-1_0','0000',0,0,NULL,'-1_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(196,'-1_1','0000',0,0,NULL,'-1_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(197,'-1_2','0000',0,0,NULL,'-1_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(198,'-1_0','0000',0,0,NULL,'-1_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(199,'-1_1','0000',0,0,NULL,'-1_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(200,'-1_2','0000',0,0,NULL,'-1_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(201,'-1_3','0000',0,0,NULL,'-1_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(202,'-1_4','0000',0,0,NULL,'-1_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(203,'-1_5','0000',0,0,NULL,'-1_5','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(204,'-1_0','0000',0,0,NULL,'-1_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(205,'-1_1','0000',0,0,NULL,'-1_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(206,'-1_2','0000',0,0,NULL,'-1_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(207,'-1_3','0000',0,0,NULL,'-1_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(208,'-1_4','0000',0,0,NULL,'-1_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(209,'-1_5','0000',0,0,NULL,'-1_5','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(210,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(211,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(212,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(213,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(214,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(215,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(216,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(217,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(218,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(219,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(220,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(221,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(222,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(223,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(224,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(225,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(226,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(227,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(228,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(229,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(230,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(231,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(232,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(233,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(234,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(235,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(236,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(237,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(238,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(239,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(240,'merchant_171_5','0000',0,0,NULL,'merchant_171_5','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(241,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(242,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(243,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(244,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(245,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(246,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(247,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(248,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(249,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(250,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(251,'merchant_171_0','0000',0,0,NULL,'merchant_171_0','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(252,'merchant_171_1','0000',0,0,NULL,'merchant_171_1','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(253,'merchant_171_2','0000',0,0,NULL,'merchant_171_2','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(254,'merchant_171_3','0000',0,0,NULL,'merchant_171_3','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(255,'merchant_171_4','0000',0,0,NULL,'merchant_171_4','Karnataka','INDIA','CURRENT_TIMESTAMP','1',NULL,'0000000000',0,'0000',1),(256,'merchant_255','tepexv',17.521572100000004,78.3923971,'http://res.cloudinary.com/locator/image/upload/v1541516357/hdghhrxzvoujlqysngck.jpg','ssda','','INDIA','2018-11-06T20:29:19.513293500','1','dadd','+919966525464',0,'2580',0),(257,'merchant_256','tepexv',17.521572100000004,78.3923971,'http://res.cloudinary.com/locator/image/upload/v1541516359/ojvohblzrtbdfzkxtamg.jpg','ssda','','INDIA','2018-11-06T20:29:20.497658800','1','dadd','+919966525464',0,'2580',0),(258,'merchant_257','tdr1z3',12.970947500000001,77.66918359374992,'http://res.cloudinary.com/locator/image/upload/v1541578662/ply6xejzbqwyppvikeml.jpg','gopi','','INDIA','2018-11-07T13:47:43.886708','1','vjgih','+918179442558',0,'0000',0),(259,'merchant_258','tdr1z3',12.970947500000001,77.66918359374992,'http://res.cloudinary.com/locator/image/upload/v1541578663/zjagho3oeyzkaa5opf3h.jpg','gopi','','INDIA','2018-11-07T13:47:44.527303500','1','vjgih','+918179442558',0,'0000',0),(260,'merchant_259','tdr1z3',12.970647500000005,77.66957421874994,'http://res.cloudinary.com/locator/image/upload/v1541579007/bdhqmjyhqazyfd823ede.jpg','gopi','','INDIA','2018-11-07T13:53:28.558021100','1','ghju','+918179442558',0,'0000',0),(261,'merchant_260','tdr1z3',12.970647500000005,77.66957421874994,'http://res.cloudinary.com/locator/image/upload/v1541579008/btxjklreebqlghyyx4zg.jpg','gopi','','INDIA','2018-11-07T13:53:29.417399800','1','ghju','+918179442558',0,'0000',0),(262,'merchant_261','tdr1z3',12.9707175,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1541581589/vxhqfvlqfyhhv38gnjmy.jpg','gopi','','INDIA','2018-11-07T14:36:30.059573200','1','vjhj','+918179442558',0,'0000',0),(263,'merchant_262','tdr1z3',12.9707175,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1541581590/odkuafjpdpmtdxjyplqj.jpg','gopi','','INDIA','2018-11-07T14:36:30.918942200','1','vjhj','+918179442558',0,'0000',0),(264,'merchant_263','tdr1z3',12.970732500000002,77.66964453124993,'http://res.cloudinary.com/locator/image/upload/v1541582426/p5ymjax64dmr4vccx38x.jpg','gopi','','INDIA','2018-11-07T14:50:26.995759100','1','gjhj','+918179442558',0,'0000',0),(265,'merchant_264','tdr1z3',12.970732500000002,77.66964453124993,'http://res.cloudinary.com/locator/image/upload/v1541582428/z09zkze1liip01ah55d7.jpg','gopi','','INDIA','2018-11-07T14:50:28.776996700','1','gjhj','+918179442558',0,'0000',0),(266,'merchant_265','tdr1z3',12.970705645601027,77.66955776140094,'http://res.cloudinary.com/locator/image/upload/v1541582839/cdjmbpq6q407qfnkdi5o.jpg','gopi','','INDIA','2018-11-07T14:57:20.604471700','1','gjj','+918179442558',0,'0000',0),(267,'merchant_266','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541583153/snmdyok7eorqgtnqlucf.jpg','gopi','','INDIA','2018-11-07T15:02:35.432414400','1','gjii','+918179442558',0,'0000',0),(268,'merchant_267','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541583154/dqtbklzlyuxoei4lnfkg.jpg','gopi','','INDIA','2018-11-07T15:02:35.994912400','1','gjii','+918179442558',0,'0000',0),(269,'merchant_268','tdr1z3',12.9707175,77.6696523437499,'http://res.cloudinary.com/locator/image/upload/v1541584699/frukisik8clg236d7l6b.jpg','gopi','','INDIA','2018-11-07T15:28:20.075890900','1','cjgui','+918179442558',0,'0000',0),(270,'merchant_269','tdr1z3',12.9707175,77.6696523437499,'http://res.cloudinary.com/locator/image/upload/v1541584700/hv7pyukbdvoydcuyg0yp.jpg','gopi','','INDIA','2018-11-07T15:28:33.154059600','1','cjgui','+918179442558',0,'0000',0),(271,'merchant_270','tdr1z3',12.970737500000007,77.66964453124993,'http://res.cloudinary.com/locator/image/upload/v1541585056/aydl1b7duzewbaw1elrm.jpg','gopo','','INDIA','2018-11-07T15:34:24.497207900','1','vjgh','+918179442558',0,'0000',0),(272,'merchant_271','tdr1z3',12.970737500000007,77.66964453124993,'http://res.cloudinary.com/locator/image/upload/v1541585057/qw0lwh3yu5kurqvlg60s.jpg','gopo','','INDIA','2018-11-07T15:34:25.778449600','1','vjgh','+918179442558',0,'0000',0),(273,'merchant_272','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541586191/mjoqbxqw2kjqex4dopxe.jpg','Gopi','','INDIA','2018-11-07T15:53:18.370412700','1','Vhch','+919246655322',0,'0000',0),(274,'merchant_273','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1541586199/lsqtare2aa5rhtz40oet.jpg','Gopi','','INDIA','2018-11-07T15:53:24.198535500','1','Vhch','+919246655322',0,'0000',0),(275,'merchant_274','tshvyn',23.5468979,74.44890579999999,'http://res.cloudinary.com/locator/image/upload/v1541588872/uewotm17zpnloulz02kj.jpg','mayur','','INDIA','2018-11-07T16:37:54.637402700','1','1234','+919904405269',0,'12345',0),(276,'merchant_275','tshvyn',23.5468979,74.44890579999999,'http://res.cloudinary.com/locator/image/upload/v1541588873/ameqomnqiwfwrgiclxya.jpg','mayur','','INDIA','2018-11-07T16:37:55.106152600','1','1234','+919904405269',0,'12345',0),(277,'merchant_276','tdr1z3',12.970727500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1541688457/uath3veduo9tcfvtiv7u.jpg','gopi','','INDIA','2018-11-08T20:17:38.481780500','1','fjfhi','+918179442558',0,'0000',0),(278,'merchant_277','tdr1z3',12.970727500000002,77.66966015624993,'http://res.cloudinary.com/locator/image/upload/v1541688458/psmsc8s7ggof4jzyyngm.jpg','gopi','','INDIA','2018-11-08T20:17:38.575525900','1','fjfhi','+918179442558',0,'0000',0),(279,'merchant_278','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542098203/ywz23lnzjoxzicbnua7h.jpg','gopi','','INDIA','2018-11-13T14:06:47.130888100','1','ghGu','+918179442558',0,'0000',0),(280,'merchant_279','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542098207/lfvf9mksnvvthqfmef6r.jpg','gopi','','INDIA','2018-11-13T14:06:48.908240','1','ghGu','+918179442558',0,'0000',0),(281,'merchant_280','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542125636/e2w9xjblxwrmdfwu7hkw.jpg','gopi','','INDIA','2018-11-13T21:43:56.933467600','1','68gh','+918179442558',0,'0000',0),(282,'merchant_281','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542125637/rrmt7barovrls1cjutwr.jpg','gopi','','INDIA','2018-11-13T21:44:18.980340800','1','68gh','+918179442558',0,'0000',0),(283,'merchant_282','tepexv',17.5208969,78.393168,'http://res.cloudinary.com/locator/image/upload/v1542128541/pfnojvaljh98lgx9eezq.jpg','hem','','INDIA','2018-11-13T22:32:22.903273200','1','fhh','+919703848204',0,'2580',0),(284,'merchant_283','tepexv',17.5208969,78.393168,'http://res.cloudinary.com/locator/image/upload/v1542128542/bm3psz4enbzinrclrtht.jpg','hem','','INDIA','2018-11-13T22:32:23.122066300','1','fhh','+919703848204',0,'2580',0),(285,'merchant_284','tepexv',17.5211526,78.39239719999999,'http://res.cloudinary.com/locator/image/upload/v1542131098/ypjcc76mf1fmvmpkq4xc.jpg','yjh','','INDIA','2018-11-13T23:15:42.638758200','1','v','+919703848204',0,'2580',0),(286,'merchant_285','tepexv',17.5211526,78.39239719999999,'http://res.cloudinary.com/locator/image/upload/v1542131098/ypjcc76mf1fmvmpkq4xc.jpg','yjh','','INDIA','2018-11-13T23:15:47.685662','1','v','+919703848204',0,'2580',0),(287,'merchant_286','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1542132317/rbvrlx1l4ubc0hzqxeos.jpg','hghh','','INDIA','2018-11-13T23:35:20.746690100','1',' bnj','+919966525464',0,'2580',0),(288,'merchant_287','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1542132477/pcuwud3ebhw6mfo2fkkp.jpg','sjsj','','INDIA','2018-11-13T23:37:58.683964600','1','shshhs','+919966525464',0,'2580',0),(289,'merchant_288','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1542132477/pcuwud3ebhw6mfo2fkkp.jpg','sjsj','','INDIA','2018-11-13T23:37:59.512072300','1','shshhs','+919966525464',0,'2580',0),(290,'merchant_289','tepexv',17.521106,78.3927049,'http://res.cloudinary.com/locator/image/upload/v1542132631/j7otagwnc4jqvul7ms2d.jpg','djjd','','INDIA','2018-11-13T23:40:32.199340500','1','vhh','+919966525464',0,'2580',0),(291,'merchant_290','tepexv',17.521106,78.3927049,'http://res.cloudinary.com/locator/image/upload/v1542132631/a3tj1w5cr7ebbco8xpdt.jpg','djjd','','INDIA','2018-11-13T23:40:32.511826900','1','vhh','+919966525464',0,'2580',0),(292,'merchant_291','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542135215/elxwxmvwck2mnphnu5nj.jpg','gopi','','INDIA','2018-11-14T00:23:36.841486300','1','gjGuu','+918179442558',0,'0000',0),(293,'merchant_292','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542135217/ewbajhn3gr7c1kwjsebn.jpg','gopi','','INDIA','2018-11-14T00:23:37.700851300','1','gjGuu','+918179442558',0,'0000',0),(294,'merchant_293','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542136067/ff9jfcsnjy1sggmoxn2z.jpg','gopi','','INDIA','2018-11-14T00:37:47.730772300','1','67ghi','+918179442558',0,'2013',0),(295,'merchant_294','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542136068/vrfelmtl4hmg74r47vlg.jpg','gopi','','INDIA','2018-11-14T00:37:48.793310400','1','67ghi','+918179442558',0,'2013',0),(296,'merchant_295','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542264792/id6bwcvayoyfmuwslp10.jpg','Murali','','INDIA','2018-11-15T12:23:13.465207800','1','Hn','+919849124680',0,'1980',0),(297,'merchant_296','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542264793/ojjxlaldwbaocbo9ruju.png','Murali','','INDIA','2018-11-15T12:23:13.887075500','1','Hn','+919849124680',0,'1980',0),(298,'merchant_297','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542340704/hh92rkxq5vnyhrikug0b.jpg','Gopi','','INDIA','2018-11-16T09:28:25.699366600','1','Chfyu','+918179442558',0,'0000',0),(299,'merchant_298','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542340914/cpvbv8pwxdydlbi9ur4a.jpg','Gopi','','INDIA','2018-11-16T09:31:55.824054','1','G hgd','+919246655322',0,'0000',0),(300,'merchant_299','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542340978/rmeinartzcjkn1sfgphu.jpg','Gopi','','INDIA','2018-11-16T09:32:58.964580900','1','G hgd','+919246655322',0,'0000',0),(301,'merchant_300','tepexv',17.5205303,78.3937959,'http://res.cloudinary.com/locator/image/upload/v1542384878/rqgprdecaxdn4cxepmwc.jpg','gopik','','INDIA','2018-11-16T21:44:39.822853800','1','bsjs','+918179442558',0,'2580',0),(302,'merchant_301','tepexv',17.521106,78.3927049,'http://res.cloudinary.com/locator/image/upload/v1542385530/lcyitqezju0psb5q4nxp.jpg','fgj','','INDIA','2018-11-16T21:55:31.200038100','1','de','+918125802142',0,'2580',0),(303,'merchant_302','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1542387299/fyl47zvfnolztix3baqc.jpg','dddf','','INDIA','2018-11-16T22:25:00.856647300','1','ddn','+918179968859',0,'1478',0),(304,'merchant_303','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1542387816/dlsl4wqvyzh9zjl7h1b9.jpg','fhh','','INDIA','2018-11-16T22:33:37.717820100','1','ghjj','+918125802142',0,'22222',0),(305,'merchant_304','tepexv',17.521106,78.3927049,'http://res.cloudinary.com/locator/image/upload/v1542388726/eycozm0jw75gz7s6blcu.jpg','cff','','INDIA','2018-11-16T22:48:47.857022800','1','ddf','+918125802142',0,'44444',0),(306,'merchant_305','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1542388946/aza6pymrn5lwnm7gtjjz.jpg','zbz','','INDIA','2018-11-16T22:52:27.716040','1','endnns','+919703848204',0,'66666',0),(307,'merchant_306','tepexv',17.520904899999998,78.3923999,'http://res.cloudinary.com/locator/image/upload/v1542388948/sicdicph4jwdtl9z728s.jpg','zbz','','INDIA','2018-11-16T22:52:29.387960400','1','endnns','+919703848204',0,'66666',0),(308,'merchant_307','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542392316/z9vviyjdcu1p1b58mfdm.jpg','gopi','','INDIA','2018-11-16T23:48:38.216433600','1','ghhjh','+918686091898',0,'0000',0),(309,'merchant_308','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542392317/y7jviubxbjm4wknyrdyv.jpg','gopi','','INDIA','2018-11-16T23:48:38.278920100','1','ghhjh','+918686091898',0,'0000',0),(310,'merchant_309','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542535278/d3mn1jqqkmhyxrzqajrq.jpg','gopi','','INDIA','2018-11-18T15:31:19.706521800','1','gjghu','+918179442558',0,'0000',0),(311,'merchant_310','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542535279/wahnxelmv6dazndv3n2m.jpg','gopi','','INDIA','2018-11-18T15:31:20.284647800','1','gjghu','+918179442558',0,'0000',0),(312,'merchant_311','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542549766/imnconsewrznwvpwqnw0.jpg','gopi','','INDIA','2018-11-18T19:32:47.130751900','1','chcjj','+918179442558',0,'0000',0),(313,'merchant_312','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542549767/k6be51lam59phqccnxl7.jpg','gopi','','INDIA','2018-11-18T19:32:48.115123500','1','chcjj','+918179442558',0,'0000',0),(314,'merchant_313','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542557131/nencspvctuivaxq8sazv.jpg','gopi','','INDIA','2018-11-18T21:35:31.893010200','1','gjfh','+918179442558',0,'0000',0),(315,'merchant_314','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542557132/sqdplyhxetn523jqs3ig.jpg','gopi','','INDIA','2018-11-18T21:35:33.205511900','1','gjfh','+918179442558',0,'0000',0),(316,'merchant_315','tdr1z3',12.9707175,77.6696523437499,'http://res.cloudinary.com/locator/image/upload/v1542570335/owbf9xoisirxf4mnti98.jpg','gopi','','INDIA','2018-11-19T01:15:36.660174500','1','vbbj','+918179442558',0,'0000',0),(317,'merchant_316','tdr1z3',12.9707175,77.6696523437499,'http://res.cloudinary.com/locator/image/upload/v1542570336/dzdbiajfiud2ju2a4nw9.jpg','gopi','','INDIA','2018-11-19T01:15:37.832085200','1','vbbj','+918179442558',0,'0000',0),(318,'merchant_317','tdr1z4',12.978501999999999,77.658055,'http://res.cloudinary.com/locator/image/upload/v1542623505/cw9wrowhhhtenix08nyw.jpg','gopi','','INDIA','2018-11-19T16:01:47.990602900','1','vhvhj','+918179442558',0,'0000',0),(319,'merchant_318','tdr1z4',12.978501999999999,77.658055,'http://res.cloudinary.com/locator/image/upload/v1542623506/rlb06qubpjnk71fgxjhx.jpg','gopi','','INDIA','2018-11-19T16:01:48.068741','1','vhvhj','+918179442558',0,'0000',0),(320,'merchant_319','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542801333/wzjsvi9ajrw8qtwn7cpo.jpg','gopi','','INDIA','2018-11-21T17:25:34.595591200','1','giui','+918179442558',0,'0000',0),(321,'merchant_320','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542801334/rgsj7ih7wf3tyofbbwz9.jpg','gopi','','INDIA','2018-11-21T17:25:34.939337800','1','giui','+918179442558',0,'0000',0),(322,'merchant_321','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542974136/i7tv6f7zfanighp9fele.jpg','gopi','','INDIA','2018-11-23T17:25:37.065807400','1','ghVhu','+918179442558',0,'0000',0),(323,'merchant_322','tdr1z3',12.9706155,77.6691419,'http://res.cloudinary.com/locator/image/upload/v1542974137/oudzhfyaxs7i9kyzddew.jpg','gopi','','INDIA','2018-11-23T17:25:38.262096200','1','ghVhu','+918179442558',0,'0000',0);
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_counters`
--

DROP TABLE IF EXISTS `merchant_counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_counters` (
  `idmerchant_counters` int(11) NOT NULL AUTO_INCREMENT,
  `counterid` int(11) NOT NULL,
  `issuedtoken` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `date` datetime NOT NULL,
  PRIMARY KEY (`idmerchant_counters`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_counters`
--

LOCK TABLES `merchant_counters` WRITE;
/*!40000 ALTER TABLE `merchant_counters` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchantlatestversion`
--

DROP TABLE IF EXISTS `merchantlatestversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchantlatestversion` (
  `version` int(11) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantlatestversion`
--

LOCK TABLES `merchantlatestversion` WRITE;
/*!40000 ALTER TABLE `merchantlatestversion` DISABLE KEYS */;
INSERT INTO `merchantlatestversion` VALUES (5);
/*!40000 ALTER TABLE `merchantlatestversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchantpoints`
--

DROP TABLE IF EXISTS `merchantpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchantpoints` (
  `idmerchantpoints` int(11) NOT NULL AUTO_INCREMENT,
  `merchantid` varchar(128) DEFAULT NULL,
  `totalpoints` int(10) DEFAULT NULL,
  `existingpoints` int(10) DEFAULT NULL,
  `lastaddedpointson` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmerchantpoints`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantpoints`
--

LOCK TABLES `merchantpoints` WRITE;
/*!40000 ALTER TABLE `merchantpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchantpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchantpointsavailed`
--

DROP TABLE IF EXISTS `merchantpointsavailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchantpointsavailed` (
  `idmerchantpointsavailed` int(11) NOT NULL,
  `merchantid` varchar(128) NOT NULL,
  `pointsused` int(10) DEFAULT '0',
  `usedon` varchar(128) DEFAULT '""',
  PRIMARY KEY (`idmerchantpointsavailed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantpointsavailed`
--

LOCK TABLES `merchantpointsavailed` WRITE;
/*!40000 ALTER TABLE `merchantpointsavailed` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchantpointsavailed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchantreceipts`
--

DROP TABLE IF EXISTS `merchantreceipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchantreceipts` (
  `idmerchantreceipts` int(11) NOT NULL AUTO_INCREMENT,
  `receiptprefix` varchar(45) NOT NULL,
  `receiptnumber` int(11) NOT NULL,
  `receiptsuffix` varchar(45) NOT NULL,
  PRIMARY KEY (`idmerchantreceipts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantreceipts`
--

LOCK TABLES `merchantreceipts` WRITE;
/*!40000 ALTER TABLE `merchantreceipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchantreceipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotations`
--

DROP TABLE IF EXISTS `negotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotations` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations`
--

LOCK TABLES `negotations` WRITE;
/*!40000 ALTER TABLE `negotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotations` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `negotations_tepexv`
--

DROP TABLE IF EXISTS `negotations_tepexv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotations_tepexv` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations_tepexv`
--

LOCK TABLES `negotations_tepexv` WRITE;
/*!40000 ALTER TABLE `negotations_tepexv` DISABLE KEYS */;
INSERT INTO `negotations_tepexv` VALUES (1,'+918125802142','merchant_90','tepexv',5,9,2,'from: 16-9-2018, to: 27-9-2018','hjjn',0,1),(2,'+919966525464','merchant_97','tepexv',2,5,22,'from: 19-9-2018, to: 19-9-2018','sbjz',0,3);
/*!40000 ALTER TABLE `negotations_tepexv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotations_ts5ejh`
--

DROP TABLE IF EXISTS `negotations_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotations_ts5ejh` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotations_ts5ejh`
--

LOCK TABLES `negotations_ts5ejh` WRITE;
/*!40000 ALTER TABLE `negotations_ts5ejh` DISABLE KEYS */;
INSERT INTO `negotations_ts5ejh` VALUES (1,'+918200785387','merchant_70','ts5ejh',33,321,65,'from: 8-9-2018, to: 8-9-2018','ffgg',0,1),(2,'+918200785387','merchant_81','ts5ejh',300,500,25,'from: 9-9-2018, to: 18-9-2018','ggg',0,2),(3,'+918200785387','merchant_83','ts5ejh',3000,5000,15,'from: 11-9-2018, to: 12-9-2018','abcd',0,3),(4,'+918200785387','merchant_83','ts5ejh',50000,100000,35,'from: 12-9-2018, to: 27-9-2018','fhhf',0,3),(5,'+918200785387','merchant_81','ts5ejh',3000,5000,15,'from: 13-9-2018, to: 27-9-2018','hello',0,2),(6,'+918200785387','merchant_81','ts5ejh',16000,24000,60,'from: 3-9-2018, to: 6-9-2018','hrlli',0,2),(7,'+918200785387','merchant_83','ts5ejh',650,1250,12,'from: 13-9-2018, to: 27-9-2018','hellllllllo',0,5),(8,'+918179442558','merchant_81','ts5ejh',1,5000,25,'from: 18-9-2018, to: 20-9-2018','fuu',0,2);
/*!40000 ALTER TABLE `negotations_ts5ejh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate`
--

DROP TABLE IF EXISTS `negotiate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate`
--

LOCK TABLES `negotiate` WRITE;
/*!40000 ALTER TABLE `negotiate` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotiate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_`
--

DROP TABLE IF EXISTS `negotiate_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_`
--

LOCK TABLES `negotiate_` WRITE;
/*!40000 ALTER TABLE `negotiate_` DISABLE KEYS */;
INSERT INTO `negotiate_` VALUES (1,-1,'',0,0),(2,-1,'',0,0),(3,-1,'',0,0),(4,-1,'',0,0);
/*!40000 ALTER TABLE `negotiate_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr1rx`
--

DROP TABLE IF EXISTS `negotiate_tdr1rx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1rx` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1rx`
--

LOCK TABLES `negotiate_tdr1rx` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1rx` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotiate_tdr1rx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr1tv`
--

DROP TABLE IF EXISTS `negotiate_tdr1tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1tv` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1tv`
--

LOCK TABLES `negotiate_tdr1tv` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1tv` DISABLE KEYS */;
INSERT INTO `negotiate_tdr1tv` VALUES (1,1,'tdr1tv',0,0);
/*!40000 ALTER TABLE `negotiate_tdr1tv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr1xp`
--

DROP TABLE IF EXISTS `negotiate_tdr1xp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1xp` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1xp`
--

LOCK TABLES `negotiate_tdr1xp` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1xp` DISABLE KEYS */;
INSERT INTO `negotiate_tdr1xp` VALUES (1,1,'tdr1xp',0,0);
/*!40000 ALTER TABLE `negotiate_tdr1xp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr1z2`
--

DROP TABLE IF EXISTS `negotiate_tdr1z2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1z2` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1z2`
--

LOCK TABLES `negotiate_tdr1z2` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1z2` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotiate_tdr1z2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr1z3`
--

DROP TABLE IF EXISTS `negotiate_tdr1z3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1z3` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1z3`
--

LOCK TABLES `negotiate_tdr1z3` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1z3` DISABLE KEYS */;
INSERT INTO `negotiate_tdr1z3` VALUES (1,279,'tdr1z3',1,50),(2,280,'tdr1z3',0,0),(3,281,'tdr1z3',1,8000),(4,282,'tdr1z3',0,0),(5,283,'tdr1z3',1,80000),(6,284,'tdr1z3',1,5000),(7,285,'tdr1z3',0,0),(8,286,'tdr1z3',0,0),(9,287,'tdr1z3',1,6000),(10,288,'tdr1z3',1,100),(11,289,'tdr1z3',0,0),(12,290,'tdr1z3',0,0),(13,291,'tdr1z3',0,0),(14,292,'tdr1z3',0,0),(15,293,'tdr1z3',0,0),(16,294,'tdr1z3',0,0),(17,295,'tdr1z3',0,0),(18,296,'tdr1z3',0,0),(19,297,'tdr1z3',0,0),(20,298,'tdr1z3',0,0),(21,299,'tdr1z3',1,8000),(22,300,'tdr1z3',1,8000),(23,301,'tdr1z3',1,5000),(24,302,'tdr1z3',0,0),(25,303,'tdr1z3',0,0),(26,304,'tdr1z3',0,0),(27,305,'tdr1z3',0,0),(28,306,'tdr1z3',0,0),(29,307,'tdr1z3',0,0),(30,308,'tdr1z3',0,0),(31,309,'tdr1z3',0,0),(32,310,'tdr1z3',0,0),(33,311,'tdr1z3',1,5555),(34,312,'tdr1z3',1,8000),(35,313,'tdr1z3',1,6565),(36,314,'tdr1z3',1,2555),(37,315,'tdr1z3',1,600),(38,316,'tdr1z3',1,80000),(39,317,'tdr1z3',1,5000),(40,318,'tdr1z3',1,5000),(41,319,'tdr1z3',1,5000),(42,320,'tdr1z3',1,8000),(43,321,'tdr1z3',0,0),(44,322,'tdr1z3',1,8000),(45,323,'tdr1z3',1,2896),(46,324,'tdr1z3',1,8000),(47,325,'tdr1z3',0,0),(48,326,'tdr1z3',1,8522),(49,327,'tdr1z3',1,1000),(50,328,'tdr1z3',1,8000),(51,329,'tdr1z3',0,0),(52,330,'tdr1z3',1,80000),(53,331,'tdr1z3',0,0),(54,332,'tdr1z3',0,0),(55,333,'tdr1z3',0,0),(56,334,'tdr1z3',0,0),(57,335,'tdr1z3',0,0),(58,336,'tdr1z3',0,0),(59,337,'tdr1z3',0,0),(60,338,'tdr1z3',0,0),(61,339,'tdr1z3',0,0),(62,340,'tdr1z3',0,0),(63,341,'tdr1z3',0,0),(64,342,'tdr1z3',0,0),(65,343,'tdr1z3',0,0),(66,344,'tdr1z3',0,0),(67,345,'tdr1z3',0,0),(68,346,'tdr1z3',0,0),(69,347,'tdr1z3',0,0),(70,348,'tdr1z3',0,0),(71,349,'tdr1z3',0,0),(72,351,'tdr1z3',0,0),(73,352,'tdr1z3',0,0),(74,353,'tdr1z3',0,0),(75,354,'tdr1z3',0,0),(76,355,'tdr1z3',0,0),(77,356,'tdr1z3',0,0),(78,357,'tdr1z3',0,0),(79,358,'tdr1z3',0,0),(80,359,'tdr1z3',0,0),(81,360,'tdr1z3',0,0),(82,361,'tdr1z3',0,0);
/*!40000 ALTER TABLE `negotiate_tdr1z3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr1z4`
--

DROP TABLE IF EXISTS `negotiate_tdr1z4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1z4` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1z4`
--

LOCK TABLES `negotiate_tdr1z4` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1z4` DISABLE KEYS */;
INSERT INTO `negotiate_tdr1z4` VALUES (1,5,'tdr1z4',1,5523),(2,6,'tdr1z4',1,8000),(3,7,'tdr1z4',1,8566),(4,8,'tdr1z4',1,6000),(5,9,'tdr1z4',1,9000),(6,10,'tdr1z4',1,85556),(7,11,'tdr1z4',1,800),(8,12,'tdr1z4',1,800),(9,13,'tdr1z4',0,0),(10,14,'tdr1z4',1,800),(11,15,'tdr1z4',1,8000),(12,16,'tdr1z4',1,6000),(13,17,'tdr1z4',1,5888),(14,18,'tdr1z4',1,8000),(15,19,'tdr1z4',1,6000),(16,20,'tdr1z4',1,6000),(17,21,'tdr1z4',1,8050),(18,22,'tdr1z4',1,8000),(19,23,'tdr1z4',0,0),(20,24,'tdr1z4',1,800),(21,25,'tdr1z4',1,80),(22,26,'tdr1z4',0,0),(23,27,'tdr1z4',1,2525),(24,28,'tdr1z4',1,200000);
/*!40000 ALTER TABLE `negotiate_tdr1z4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr1zj`
--

DROP TABLE IF EXISTS `negotiate_tdr1zj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1zj` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1zj`
--

LOCK TABLES `negotiate_tdr1zj` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1zj` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotiate_tdr1zj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr1zv`
--

DROP TABLE IF EXISTS `negotiate_tdr1zv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr1zv` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr1zv`
--

LOCK TABLES `negotiate_tdr1zv` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr1zv` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotiate_tdr1zv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tdr3bj`
--

DROP TABLE IF EXISTS `negotiate_tdr3bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tdr3bj` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tdr3bj`
--

LOCK TABLES `negotiate_tdr3bj` WRITE;
/*!40000 ALTER TABLE `negotiate_tdr3bj` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotiate_tdr3bj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tepexv`
--

DROP TABLE IF EXISTS `negotiate_tepexv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tepexv` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tepexv`
--

LOCK TABLES `negotiate_tepexv` WRITE;
/*!40000 ALTER TABLE `negotiate_tepexv` DISABLE KEYS */;
INSERT INTO `negotiate_tepexv` VALUES (1,1,'tepexv',1,5),(2,2,'tepexv',0,0),(3,3,'tepexv',1,2),(4,4,'tepexv',0,0),(5,5,'tepexv',0,0),(6,6,'tepexv',0,0),(7,7,'tepexv',0,0),(8,8,'tepexv',0,0),(9,9,'tepexv',0,0),(10,10,'tepexv',1,0),(11,11,'tepexv',0,0);
/*!40000 ALTER TABLE `negotiate_tepexv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tepfc8`
--

DROP TABLE IF EXISTS `negotiate_tepfc8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tepfc8` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tepfc8`
--

LOCK TABLES `negotiate_tepfc8` WRITE;
/*!40000 ALTER TABLE `negotiate_tepfc8` DISABLE KEYS */;
INSERT INTO `negotiate_tepfc8` VALUES (1,1,'tepfc8',0,0);
/*!40000 ALTER TABLE `negotiate_tepfc8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tf8f5c`
--

DROP TABLE IF EXISTS `negotiate_tf8f5c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tf8f5c` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tf8f5c`
--

LOCK TABLES `negotiate_tf8f5c` WRITE;
/*!40000 ALTER TABLE `negotiate_tf8f5c` DISABLE KEYS */;
INSERT INTO `negotiate_tf8f5c` VALUES (1,1,'tf8f5c',0,0);
/*!40000 ALTER TABLE `negotiate_tf8f5c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_ts5ejh`
--

DROP TABLE IF EXISTS `negotiate_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_ts5ejh` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_ts5ejh`
--

LOCK TABLES `negotiate_ts5ejh` WRITE;
/*!40000 ALTER TABLE `negotiate_ts5ejh` DISABLE KEYS */;
INSERT INTO `negotiate_ts5ejh` VALUES (1,2,'ts5ejh',1,1),(2,3,'ts5ejh',1,5),(3,4,'ts5ejh',1,5),(4,5,'ts5ejh',1,8000),(5,6,'ts5ejh',1,5),(6,7,'ts5ejh',1,5),(7,8,'ts5ejh',1,2),(8,9,'ts5ejh',1,5),(9,10,'ts5ejh',1,5),(10,11,'ts5ejh',1,8),(11,12,'ts5ejh',0,0);
/*!40000 ALTER TABLE `negotiate_ts5ejh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tsmzqq`
--

DROP TABLE IF EXISTS `negotiate_tsmzqq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tsmzqq` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tsmzqq`
--

LOCK TABLES `negotiate_tsmzqq` WRITE;
/*!40000 ALTER TABLE `negotiate_tsmzqq` DISABLE KEYS */;
INSERT INTO `negotiate_tsmzqq` VALUES (1,1,'tsmzqq',0,0);
/*!40000 ALTER TABLE `negotiate_tsmzqq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tsmzwc`
--

DROP TABLE IF EXISTS `negotiate_tsmzwc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tsmzwc` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tsmzwc`
--

LOCK TABLES `negotiate_tsmzwc` WRITE;
/*!40000 ALTER TABLE `negotiate_tsmzwc` DISABLE KEYS */;
INSERT INTO `negotiate_tsmzwc` VALUES (1,1,'tsmzwc',0,0),(2,2,'tsmzwc',0,0);
/*!40000 ALTER TABLE `negotiate_tsmzwc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_tsvbuw`
--

DROP TABLE IF EXISTS `negotiate_tsvbuw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_tsvbuw` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_tsvbuw`
--

LOCK TABLES `negotiate_tsvbuw` WRITE;
/*!40000 ALTER TABLE `negotiate_tsvbuw` DISABLE KEYS */;
INSERT INTO `negotiate_tsvbuw` VALUES (1,1,'tsvbuw',0,0);
/*!40000 ALTER TABLE `negotiate_tsvbuw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_ttngjn`
--

DROP TABLE IF EXISTS `negotiate_ttngjn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_ttngjn` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_ttngjn`
--

LOCK TABLES `negotiate_ttngjn` WRITE;
/*!40000 ALTER TABLE `negotiate_ttngjn` DISABLE KEYS */;
INSERT INTO `negotiate_ttngjn` VALUES (1,1,'ttngjn',0,0);
/*!40000 ALTER TABLE `negotiate_ttngjn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_ttqwg4`
--

DROP TABLE IF EXISTS `negotiate_ttqwg4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiate_ttqwg4` (
  `idnegotiate` int(11) NOT NULL AUTO_INCREMENT,
  `adId` int(11) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `cannegotiate` int(1) NOT NULL DEFAULT '0',
  `minamount` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idnegotiate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_ttqwg4`
--

LOCK TABLES `negotiate_ttqwg4` WRITE;
/*!40000 ALTER TABLE `negotiate_ttqwg4` DISABLE KEYS */;
INSERT INTO `negotiate_ttqwg4` VALUES (1,350,'ttqwg4',0,0),(2,1,'ttqwg4',0,0);
/*!40000 ALTER TABLE `negotiate_ttqwg4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiationsresponse`
--

DROP TABLE IF EXISTS `negotiationsresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiationsresponse` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse`
--

LOCK TABLES `negotiationsresponse` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `negotiationsresponse` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `negotiationsresponse_tdr1z4`
--

DROP TABLE IF EXISTS `negotiationsresponse_tdr1z4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiationsresponse_tdr1z4` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse_tdr1z4`
--

LOCK TABLES `negotiationsresponse_tdr1z4` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse_tdr1z4` DISABLE KEYS */;
INSERT INTO `negotiationsresponse_tdr1z4` VALUES (1,13,'+918179442558','merchant_82','tdr1z4',80,8000,58,'dumy',8000,'ghh',1,'2018-10-11 01:21:50',17),(2,13,'+918179442558','merchant_82','tdr1z4',80,8000,58,'dumy',1000,'ghh',1,'2018-10-11 12:02:17',17),(3,16,'+918179442558','merchant_82','tdr1z4',90,800,10,'dumy',8000,'gh',1,'2018-10-11 21:08:21',25),(4,16,'+918179442558','merchant_82','tdr1z4',90,800,10,'dumy',8000,'gh',1,'2018-10-11 21:11:41',25),(5,15,'+918179442558','merchant_82','tdr1z4',80,5888,58,'dumy',50000,'vh',1,'2018-10-12 09:08:18',22);
/*!40000 ALTER TABLE `negotiationsresponse_tdr1z4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiationsresponse_tepexv`
--

DROP TABLE IF EXISTS `negotiationsresponse_tepexv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiationsresponse_tepexv` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse_tepexv`
--

LOCK TABLES `negotiationsresponse_tepexv` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse_tepexv` DISABLE KEYS */;
INSERT INTO `negotiationsresponse_tepexv` VALUES (1,1,'+918125802142','merchant_90','tepexv',5,9,2,'dumy',0,'hjjn',1,'2018-10-16 00:36:10',1),(2,2,'+919966525464','merchant_97','tepexv',2,5,22,'dumy',50,'sbjz',1,'2018-10-21 23:24:55',3),(3,2,'+919966525464','merchant_97','tepexv',2,5,22,'dumy',50,'sbjz',1,'2018-10-21 23:26:42',3);
/*!40000 ALTER TABLE `negotiationsresponse_tepexv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiationsresponse_ts5ejh`
--

DROP TABLE IF EXISTS `negotiationsresponse_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiationsresponse_ts5ejh` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiationsresponse_ts5ejh`
--

LOCK TABLES `negotiationsresponse_ts5ejh` WRITE;
/*!40000 ALTER TABLE `negotiationsresponse_ts5ejh` DISABLE KEYS */;
INSERT INTO `negotiationsresponse_ts5ejh` VALUES (1,2,'+918200785387','','',300,500,25,'dumy',50,'ggg',1,'2018-10-11 00:22:40',2),(2,2,'+918200785387','','',300,500,25,'dumy',20,'ggg',1,'2018-10-11 00:24:51',2),(3,2,'+918200785387','','',7000,8000,50,'from: 11-9-2018, to: 27-9-2018',0,'50',3,'2018-10-11 00:26:59',2),(4,2,'+918200785387','merchant_81','ts5ejh',300,500,25,'dumy',0,'ggg',1,'2018-10-11 00:30:39',2),(5,3,'+918200785387','merchant_83','ts5ejh',3000,5000,15,'dumy',2000,'abcd',1,'2018-10-11 23:14:13',3),(6,4,'+918200785387','merchant_83','ts5ejh',50000,100000,35,'dumy',500,'fhhf',1,'2018-10-11 23:14:37',3),(7,3,'+918200785387','merchant_83','ts5ejh',3000,5000,15,'dumy',900,'abcd',1,'2018-10-13 11:44:23',3),(8,7,'+918200785387','merchant_83','ts5ejh',650,1250,12,'dumy',400,'hellllllllo',1,'2018-10-13 11:53:36',5);
/*!40000 ALTER TABLE `negotiationsresponse_ts5ejh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offerreach`
--

DROP TABLE IF EXISTS `offerreach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offerreach` (
  `idofferreach` int(11) NOT NULL AUTO_INCREMENT,
  `merchantId` varchar(128) NOT NULL,
  `offercode` varchar(6) NOT NULL,
  `reached` int(6) NOT NULL DEFAULT '0',
  `viewed` int(6) NOT NULL DEFAULT '0',
  `utilized` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idofferreach`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offerreach`
--

LOCK TABLES `offerreach` WRITE;
/*!40000 ALTER TABLE `offerreach` DISABLE KEYS */;
INSERT INTO `offerreach` VALUES (1,'1','1',1,1,1),(2,'merchant_0','adv',0,0,0),(3,'merchant_0','offer',0,0,0),(4,'merchant_0','5655',0,0,0),(5,'merchant_0','upload',0,0,0),(6,'merchant_0','myapp',0,0,0),(7,'merchant_21','saree',0,0,0),(8,'merchant_21','hnshd ',0,0,0),(9,'merchant_23','saree',0,0,0),(10,'merchant_23','06',0,0,0),(11,'merchant_23','07',0,0,0),(12,'merchant_23','08',0,0,0),(13,'merchant_35','delhi',0,0,0),(14,'merchant_23','09',0,0,0),(15,'merchant_23','10',0,0,0),(16,'merchant_35','andhra',0,0,0),(17,'merchant_36','myoffe',0,0,0),(18,'merchant_37','123456',0,0,0),(19,'merchant_39','Myoffe',0,0,0),(20,'merchant_40','46566',0,0,0),(21,'merchant_41','Hdb',0,0,0),(22,'merchant_43','',0,0,0),(23,'merchant_44','',15,0,0),(24,'merchant_42','',0,0,0),(25,'merchant_42','56748',0,0,0),(26,'merchant_42','myoffe',0,0,0),(27,'merchant_45','try',0,0,0),(28,'merchant_45','roti',0,0,0),(29,'merchant_45','6666',0,0,0),(30,'merchant_45','geet',0,0,0),(31,'merchant_44','bed sh',0,0,0),(32,'merchant_47','test',0,0,0),(33,'merchant_45','gjhj g',0,0,0),(34,'merchant_45','ygh',0,0,0),(35,'merchant_45','677',0,0,0),(36,'merchant_47','vrtest',0,0,0),(37,'merchant_51','govrcl',0,0,0),(38,'merchant_51','red',0,0,0),(39,'merchant_52','cc',0,0,0),(40,'merchant_52','fggg',0,0,0),(41,'merchant_52','vh',0,0,0),(42,'merchant_52','fnn',0,0,0),(43,'merchant_45','food',0,0,0),(44,'merchant_52','code',0,0,0),(45,'merchant_53','ghhh',0,0,0),(46,'merchant_58','3dwal',0,0,0),(47,'merchant_58','3d2wl',0,0,0),(48,'merchant_58','coleh',0,0,0),(49,'merchant_57','issues',0,0,0),(50,'merchant_60','tytt',0,0,0),(51,'merchant_57','loc',0,0,0),(52,'merchant_57','offers',0,0,0),(53,'merchant_57','gopi',0,0,0),(54,'merchant_44','godse',0,0,0),(55,'merchant_57','sellin',0,0,0),(56,'merchant_57','gh',0,0,0),(57,'merchant_57','ghj',0,0,0),(58,'merchant_57','gjj h',0,0,0),(59,'merchant_57','gj hj',0,0,0),(60,'merchant_44','vada',15,0,0),(61,'merchant_44','gh',15,0,0),(62,'merchant_44','yuty',0,0,0),(63,'merchant_44','gg',0,0,0),(64,'merchant_44','hh',0,0,0),(65,'merchant_44','hhh',0,0,0),(66,'merchant_52','goldnn',0,0,0),(67,'merchant_44','timeto',0,0,0),(68,'merchant_44','yiu',0,0,0),(69,'merchant_57','5656',1,0,0),(70,'merchant_57','mypic ',1,0,0),(71,'merchant_57','ghh',1,0,0),(72,'merchant_57','ads',142,0,0),(73,'merchant_57','tiffin',1,0,0),(74,'merchant_57','hjh',2,0,0),(75,'merchant_44','hj',2,0,0),(76,'merchant_44','gala',2,0,0),(77,'merchant_44','yuyy7',2,0,0),(78,'merchant_44','bird',2,0,0),(79,'merchant_44','god',3766,0,0),(80,'merchant_44','gjj',2,0,0),(81,'merchant_44','again',2,0,0),(82,'merchant_44','godaga',2,0,0),(83,'merchant_44','birdag',2,0,0),(84,'merchant_44','vada',15,0,0),(85,'merchant_44','mycard',4,0,0),(86,'merchant_44','qr',4,0,0),(87,'merchant_44','offer',4,0,0),(88,'merchant_44','offer1',4,0,0),(89,'merchant_44','galaa',4,0,0),(90,'merchant_44','ads',4,0,0),(91,'merchant_44','ghh',4,0,0),(92,'merchant_44','fjj',4,0,0),(93,'merchant_44','gy',4,0,0),(94,'merchant_44','ggg',127,0,0),(95,'merchant_44','fler',4,0,0),(96,'merchant_44','ggg',127,0,0),(97,'merchant_44','ad',4,0,0),(98,'merchant_44','god',3766,0,0),(99,'merchant_44','polics',4,0,0),(100,'merchant_44','vadaa',4,0,0),(101,'merchant_44','god',3766,0,0),(102,'merchant_44','gk',4,0,0),(103,'merchant_44','gh',15,0,0),(104,'merchant_44','',15,0,0),(105,'merchant_57','55',4,0,0),(106,'merchant_57','murLi',4,0,0),(107,'merchant_57','yy677',4,0,0),(108,'merchant_57','ads',142,0,0),(109,'merchant_57','yuu',4,0,0),(110,'merchant_57','imgs',4,0,0),(111,'merchant_57','doc',4,0,0),(112,'merchant_44','card',4,0,0),(113,'merchant_44','667',4,0,0),(114,'merchant_44','viii',4,0,0),(115,'merchant_44','ogg',4,0,0),(116,'merchant_57','ad',211,0,0),(117,'merchant_57','qrcode',4,0,0),(118,'merchant_57','chk',3,0,0),(119,'merchant_57','ggg',3,0,0),(120,'merchant_57','yy',3,0,0),(121,'merchant_57','gg',3,0,0),(122,'merchant_57','gruha',3,0,0),(123,'merchant_57','',474555362,0,0),(124,'merchant_57','yyyy',3,0,0),(125,'merchant_57','vr',3,0,0),(126,'merchant_53','chinni',31,0,0),(127,'merchant_53','more',3,0,0),(128,'merchant_57','778',3,0,0),(129,'merchant_57','chinni',9,0,0),(130,'merchant_57','',474555362,0,0),(131,'merchant_44','meh',3,0,0),(132,'merchant_53','chinni',31,0,0),(133,'merchant_57','',474555362,0,0),(134,'merchant_53','',382,0,0),(135,'merchant_53','',382,0,0),(136,'merchant_53','gg',2,0,0),(137,'merchant_53','',382,0,0),(138,'merchant_44','ooo',2,0,0),(139,'merchant_44','inkoti',2,0,0),(140,'merchant_53','ghh',11,0,0),(141,'merchant_53','ghh',11,0,0),(142,'merchant_57','y678',1,0,0),(143,'merchant_57','check',1,0,0),(144,'merchant_57','676',1,0,0),(145,'merchant_57','chinni',9,0,0),(146,'merchant_57','chinni',9,0,0),(147,'merchant_57','card',1,0,0),(148,'merchant_57','',474555362,0,0),(149,'merchant_57','6777',1,0,0),(150,'merchant_57','test',79,0,0),(151,'merchant_61','ofcr',12,0,0),(152,'merchant_57','ofrcod',10,0,0),(153,'merchant_62','ghh',10,0,0),(154,'merchant_64','',14,0,0),(155,'merchant_57','ad',211,0,0),(156,'merchant_57','',474555362,0,0),(157,'merchant_57','tuu,',2,0,0),(158,'merchant_57','gala',2,0,0),(159,'merchant_57','my gal',2,0,0),(160,'merchant_44','kid',2,0,0),(161,'merchant_57','codes',2,0,0),(162,'merchant_44','cep ',2,0,0),(163,'merchant_44','laddoo',2,0,0),(164,'merchant_44','msf\nms',2,0,0),(165,'merchant_57','ads',142,0,0),(166,'merchant_57','ad',211,0,0),(167,'merchant_57','7999',7,0,0),(168,'merchant_65','dress',6,0,0),(169,'merchant_65','tyyy',5,0,0),(170,'merchant_65','ghh',5,0,0),(171,'merchant_65','yyy',159,0,0),(172,'merchant_65','yi',5,0,0),(173,'merchant_65','ad',5,0,0),(174,'merchant_65','',1874604862,0,0),(175,'merchant_65','',1874604862,0,0),(176,'merchant_65','yuu',5,0,0),(177,'merchant_65','',1874604862,0,0),(178,'merchant_65','yyy',159,0,0),(179,'merchant_65','',1874604862,0,0),(180,'merchant_65','sale',4,0,0),(181,'merchant_65','',1874604862,0,0),(182,'merchant_65','',1874604862,0,0),(183,'merchant_65','',1874604862,0,0),(184,'merchant_57','test',79,0,0),(185,'merchant_57','venu',4,0,0),(186,'merchant_57','off',2,0,0),(187,'merchant_57','',474555362,0,0),(188,'merchant_57','',474555362,0,0),(189,'merchant_57','',474555362,0,0),(190,'merchant_0','gopi',47,0,0),(191,'merchant_0','gopi',47,0,0),(192,'merchant_0','venu',1,0,0),(193,'merchant_0','test',0,0,0),(194,'merchant_67','ofcr',3,0,0),(195,'merchant_67','test',7,0,0),(196,'merchant_67','gopi',1,0,0),(197,'merchant_67','dharah',1,0,0),(198,'merchant_67','',-1814516161,0,0),(199,'merchant_69','bsgg',1,0,0),(200,'merchant_67','',-1814516161,0,0),(201,'merchant_67','',-1814516161,0,0),(202,'merchant_67','',-1814516161,0,0),(203,'merchant_67','',-1814516161,0,0),(204,'merchant_67','my',1,0,0),(205,'merchant_67','',-1814516161,0,0),(206,'merchant_67','',-1814516161,0,0),(207,'merchant_67','',-1814516161,0,0),(208,'merchant_67','',-1814516161,0,0),(209,'merchant_67','',-1814516161,0,0),(210,'merchant_67','',-1814516161,0,0),(211,'merchant_67','',-1814516161,0,0),(212,'merchant_67','',-1814516161,0,0),(213,'merchant_67','',-1814516161,0,0),(214,'merchant_67','',-1814516161,0,0),(215,'merchant_67','',-1814516161,0,0),(216,'merchant_67','',-1814516161,0,0),(217,'merchant_67','',-1814516161,0,0),(218,'merchant_67','',-1814516161,0,0),(219,'merchant_67','',-1814516161,0,0),(220,'merchant_67','',-1814516161,0,0),(221,'merchant_67','',-1814516161,0,0),(222,'merchant_67','',-1814516161,0,0),(223,'merchant_67','',-1814516161,0,0),(224,'merchant_67','',-1814516161,0,0),(225,'merchant_67','',-1814516161,0,0),(226,'merchant_67','',-1814516161,0,0),(227,'merchant_67','',-1814516161,0,0),(228,'merchant_67','',-1814516161,0,0),(229,'merchant_67','',-1814516161,0,0),(230,'merchant_67','',-1814516161,0,0),(231,'merchant_67','',-1814516161,0,0),(232,'merchant_70','qwert',7,0,0),(233,'merchant_67','',-1814516161,0,0),(234,'merchant_67','',-1814516161,0,0),(235,'merchant_67','',-1814516161,0,0),(236,'merchant_67','',-1814516161,0,0),(237,'merchant_67','',-1814516161,0,0),(238,'merchant_67','',-1814516161,0,0),(239,'merchant_73','576',0,0,0),(240,'merchant_73','',6137,0,0),(241,'merchant_73','',6137,0,0),(242,'merchant_73','',6137,0,0),(243,'merchant_73','',6137,0,0),(244,'merchant_73','',6137,0,0),(245,'merchant_77','code',5,0,0),(246,'merchant_77','',2047,0,0),(247,'merchant_77','',2047,0,0),(248,'merchant_77','',2047,0,0),(249,'merchant_79','',5,0,0),(250,'merchant_79','',5,0,0),(251,'merchant_79','',5,0,0),(252,'merchant_80','',-1750522851,0,0),(253,'merchant_80','',-1750522851,0,0),(254,'merchant_80','',-1750522851,0,0),(255,'merchant_81','556643',5,0,0),(256,'merchant_80','',-1750522851,0,0),(257,'merchant_80','',-1750522851,0,0),(258,'merchant_80','',-1750522851,0,0),(259,'merchant_80','',-1750522851,0,0),(260,'merchant_80','',-1750522851,0,0),(261,'merchant_80','',-1750522851,0,0),(262,'merchant_82','',-271474867,0,0),(263,'merchant_82','',-271474867,0,0),(264,'merchant_82','',-271474867,0,0),(265,'merchant_82','',-271474867,0,0),(266,'merchant_82','\n',1,0,0),(267,'merchant_82','',-271474867,0,0),(268,'merchant_82','',-271474867,0,0),(269,'merchant_82','',-271474867,0,0),(270,'merchant_82','',-271474867,0,0),(271,'merchant_82','',-271474867,0,0),(272,'merchant_83','sdfghj',5,0,0),(273,'merchant_82','',-271474867,0,0),(274,'merchant_82','',-271474867,0,0),(275,'merchant_84','',1171354717,0,0),(276,'merchant_84','',1171354717,0,0),(277,'merchant_84','',1171354717,0,0),(278,'merchant_84','',1171354717,0,0),(279,'merchant_84','',1171354717,0,0),(280,'merchant_84','',1171354717,0,0),(281,'merchant_84','',1171354717,0,0),(282,'merchant_84','',1171354717,0,0),(283,'merchant_84','',1171354717,0,0),(284,'merchant_84','',1171354717,0,0),(285,'merchant_84','',1171354717,0,0),(286,'merchant_84','',1171354717,0,0),(287,'merchant_84','',1171354717,0,0),(288,'merchant_83','999888',3,0,0),(289,'merchant_83','123456',1,0,0),(290,'merchant_86','',234057,0,0),(291,'merchant_86','',234057,0,0),(292,'merchant_86','',234057,0,0),(293,'merchant_86','',234057,0,0),(294,'merchant_86','',234057,0,0),(295,'merchant_86','',234057,0,0),(296,'merchant_86','',234057,0,0),(297,'merchant_86','',234057,0,0),(298,'merchant_87','',13,0,0),(299,'merchant_87','',13,0,0),(300,'merchant_87','',13,0,0),(301,'merchant_88','',81,0,0),(302,'merchant_88','',81,0,0),(303,'merchant_88','',81,0,0),(304,'merchant_88','',81,0,0),(305,'merchant_88','',81,0,0),(306,'merchant_89','gopi',1,0,0),(307,'merchant_89','',-715827935,0,0),(308,'merchant_90','disc',1,0,0),(309,'merchant_90','rrfxc',0,0,0),(310,'merchant_83','qwerty',3,0,0),(311,'merchant_89','',-715827935,0,0),(312,'merchant_83','asdfgh',3,0,0),(313,'merchant_89','',-715827935,0,0),(314,'merchant_89','',-715827935,0,0),(315,'merchant_89','',-715827935,0,0),(316,'merchant_91','code',2,0,0),(317,'merchant_91','yui',5,0,0),(318,'merchant_92','',2,0,0),(319,'merchant_92','gopi',4,0,0),(320,'merchant_92','',2,0,0),(321,'merchant_97','pp',1,0,0),(322,'merchant_105','gopo',4,0,0),(323,'merchant_105','chinni',1,0,0),(324,'merchant_105','gjhi',3,0,0),(325,'merchant_83','987654',1,0,0),(326,'merchant_83','355353',7,0,0),(327,'merchant_83','445556',2,0,0),(328,'merchant_83','chhchc',2,0,0),(329,'merchant_119','',1,0,0),(330,'merchant_123','',1,0,0),(331,'merchant_125','nsnsb',1,0,0),(332,'merchant_133','my cod',1,0,0),(333,'merchant_135','',1,0,0),(334,'merchant_137','',1,0,0),(335,'merchant_139','',1,0,0),(336,'merchant_141','',65,0,0),(337,'merchant_141','',65,0,0),(338,'merchant_141','',65,0,0),(339,'merchant_141','',65,0,0),(340,'merchant_141','',65,0,0),(341,'merchant_143','off',0,0,0),(342,'merchant_147','',-950107501,0,0),(343,'merchant_147','',-950107501,0,0),(344,'merchant_147','677',0,0,0),(345,'merchant_149','jsjsbx',1,0,0),(346,'merchant_149','sed',1,0,0),(347,'merchant_147','',-950107501,0,0),(348,'merchant_147','',-950107501,0,0),(349,'merchant_147','',-950107501,0,0),(350,'merchant_147','',-950107501,0,0),(351,'merchant_147','',-950107501,0,0),(352,'merchant_147','',-950107501,0,0),(353,'merchant_147','',-950107501,0,0),(354,'merchant_147','',-950107501,0,0),(355,'merchant_147','',-950107501,0,0),(356,'merchant_147','',-950107501,0,0),(357,'merchant_147','',-950107501,0,0),(358,'merchant_147','',-950107501,0,0),(359,'merchant_149','',0,0,0),(360,'merchant_151','',1,0,0),(361,'merchant_151','',0,0,0),(362,'merchant_157','off',4,0,0),(363,'merchant_159','',4,0,0),(364,'merchant_164','',2,0,0),(365,'merchant_166','',5,0,0),(366,'merchant_166','',5,0,0),(367,'merchant_166','',5,0,0),(368,'merchant_166','',0,0,0),(369,'merchant_164','',2,0,0),(370,'merchant_164','',2,0,0),(371,'merchant_168','574646',1,0,0),(372,'merchant_164','',2,0,0),(373,'merchant_255','bjhs',0,0,0),(374,'merchant_289','jzix',1,0,0),(375,'merchant_289','dd',1,0,0),(376,'merchant_307','',0,0,0),(377,'merchant_321','',2,0,0),(378,'merchant_321','',2,0,0);
/*!40000 ALTER TABLE `offerreach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pointstable`
--

DROP TABLE IF EXISTS `pointstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pointstable` (
  `idpoints` int(11) NOT NULL,
  `merchantType` int(3) DEFAULT '0',
  `points` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpoints`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pointstable`
--

LOCK TABLES `pointstable` WRITE;
/*!40000 ALTER TABLE `pointstable` DISABLE KEYS */;
INSERT INTO `pointstable` VALUES (1,0,10);
/*!40000 ALTER TABLE `pointstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `idreceipts` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(45) NOT NULL,
  `imageurl` varchar(128) NOT NULL,
  `merchantid` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `receiptid` varchar(45) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idreceipts`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES (1,'8125802142','http://res.cloudinary.com/locator/image/upload/v1543175371/merchant_290/uaaemfuuvbv38mgzpgbq.jpg','merchant_290','2018-11-26','',1);
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seghgv_vhik1rf_bjioawgh`
--

DROP TABLE IF EXISTS `seghgv_vhik1rf_bjioawgh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seghgv_vhik1rf_bjioawgh` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seghgv_vhik1rf_bjioawgh`
--

LOCK TABLES `seghgv_vhik1rf_bjioawgh` WRITE;
/*!40000 ALTER TABLE `seghgv_vhik1rf_bjioawgh` DISABLE KEYS */;
INSERT INTO `seghgv_vhik1rf_bjioawgh` VALUES (1,'seghgv_vhik1rf_bjioawgh_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532233805/hifyluf3kzwzytpgttzk.jpg','ttghjj','cuiwiwknf','India','2018-07-22T04:30:14.972853400','1','xgjjkn','+918179442558');
/*!40000 ALTER TABLE `seghgv_vhik1rf_bjioawgh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sfhh_giqiqe_vjiff`
--

DROP TABLE IF EXISTS `sfhh_giqiqe_vjiff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sfhh_giqiqe_vjiff` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sfhh_giqiqe_vjiff`
--

LOCK TABLES `sfhh_giqiqe_vjiff` WRITE;
/*!40000 ALTER TABLE `sfhh_giqiqe_vjiff` DISABLE KEYS */;
INSERT INTO `sfhh_giqiqe_vjiff` VALUES (1,'sfhh_giqiqe_vjiff_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532234158/s5mp38ygbxfunwdptpvm.jpg','dyiiv','sdgh','India','2018-07-22T04:36:14.144826500','1','fyuhb','+918179442558');
/*!40000 ALTER TABLE `sfhh_giqiqe_vjiff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specificmessages`
--

DROP TABLE IF EXISTS `specificmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specificmessages` (
  `idspecificmessages` int(11) NOT NULL AUTO_INCREMENT,
  `merchantId` varchar(45) NOT NULL,
  `consumercontact` varchar(45) NOT NULL,
  `messageurl` varchar(512) NOT NULL,
  PRIMARY KEY (`idspecificmessages`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specificmessages`
--

LOCK TABLES `specificmessages` WRITE;
/*!40000 ALTER TABLE `specificmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `specificmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `idnotification` int(11) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int(11) NOT NULL DEFAULT '1',
  `bringcharges` int(11) NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int(11) NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int(11) NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int(11) NOT NULL,
  `flat` int(11) NOT NULL,
  `ispercentage` int(11) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_tdr1xb`
--

DROP TABLE IF EXISTS `status_tdr1xb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_tdr1xb` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `idnotification` int(11) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int(11) NOT NULL DEFAULT '1',
  `bringcharges` int(11) NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int(11) NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int(11) NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int(11) NOT NULL,
  `flat` int(11) NOT NULL,
  `ispercentage` int(11) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_tdr1xb`
--

LOCK TABLES `status_tdr1xb` WRITE;
/*!40000 ALTER TABLE `status_tdr1xb` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_tdr1xb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_tdr1z3`
--

DROP TABLE IF EXISTS `status_tdr1z3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_tdr1z3` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `idnotification` int(11) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int(11) NOT NULL DEFAULT '1',
  `bringcharges` int(11) NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int(11) NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int(11) NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int(11) NOT NULL,
  `flat` int(11) NOT NULL,
  `ispercentage` int(11) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_tdr1z3`
--

LOCK TABLES `status_tdr1z3` WRITE;
/*!40000 ALTER TABLE `status_tdr1z3` DISABLE KEYS */;
INSERT INTO `status_tdr1z3` VALUES (1,15,'2018-09-21','2018-09-26','8179442558',1,0,'+918179442558',10,'tdr1z3',NULL,0,'2018-10-01','pants',25,0,0),(2,15,'2018-09-25','2018-09-26','+918179442',1,0,'+918179442558',10,'tdr1z3',NULL,0,'2018-09-26','i can give for 10%',25,0,0);
/*!40000 ALTER TABLE `status_tdr1z3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_tepexv`
--

DROP TABLE IF EXISTS `status_tepexv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_tepexv` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `idnotification` int(11) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int(11) NOT NULL DEFAULT '1',
  `bringcharges` int(11) NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int(11) NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int(11) NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int(11) NOT NULL,
  `flat` int(11) NOT NULL,
  `ispercentage` int(11) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_tepexv`
--

LOCK TABLES `status_tepexv` WRITE;
/*!40000 ALTER TABLE `status_tepexv` DISABLE KEYS */;
INSERT INTO `status_tepexv` VALUES (1,2,'2018-09-21','2018-09-21','+919966525',1,0,'+919966525464',22,'tepexv',NULL,0,'2018-09-21','ffbx',25,0,0);
/*!40000 ALTER TABLE `status_tepexv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_ts5ehg`
--

DROP TABLE IF EXISTS `status_ts5ehg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_ts5ehg` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `idnotification` int(11) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int(11) NOT NULL DEFAULT '1',
  `bringcharges` int(11) NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int(11) NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int(11) NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int(11) NOT NULL,
  `flat` int(11) NOT NULL,
  `ispercentage` int(11) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_ts5ehg`
--

LOCK TABLES `status_ts5ehg` WRITE;
/*!40000 ALTER TABLE `status_ts5ehg` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_ts5ehg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_ts5ej5`
--

DROP TABLE IF EXISTS `status_ts5ej5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_ts5ej5` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `idnotification` int(11) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int(11) NOT NULL DEFAULT '1',
  `bringcharges` int(11) NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int(11) NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int(11) NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int(11) NOT NULL,
  `flat` int(11) NOT NULL,
  `ispercentage` int(11) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_ts5ej5`
--

LOCK TABLES `status_ts5ej5` WRITE;
/*!40000 ALTER TABLE `status_ts5ej5` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_ts5ej5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_ts5ejh`
--

DROP TABLE IF EXISTS `status_ts5ejh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_ts5ejh` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `idnotification` int(11) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `canjoin` int(11) NOT NULL DEFAULT '1',
  `bringcharges` int(11) NOT NULL DEFAULT '0',
  `registeredcontactnumber` varchar(15) NOT NULL,
  `finaldiscount` int(11) NOT NULL,
  `geohash` varchar(45) DEFAULT NULL,
  `places` varchar(45) DEFAULT NULL,
  `joinedcount` int(11) NOT NULL DEFAULT '0',
  `shoppingdate` date NOT NULL,
  `offerdesc` varchar(128) NOT NULL,
  `value` int(11) NOT NULL,
  `flat` int(11) NOT NULL,
  `ispercentage` int(11) NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_ts5ejh`
--

LOCK TABLES `status_ts5ejh` WRITE;
/*!40000 ALTER TABLE `status_ts5ejh` DISABLE KEYS */;
INSERT INTO `status_ts5ejh` VALUES (1,8,'2018-09-19','2018-09-27','5757566577',1,0,'+918200785387',12,'ts5ejh',NULL,0,'2018-09-26','yffyhf',656556,1,0),(2,8,'2018-09-20','2018-09-25','5588555555',1,0,'+918200785387',12,'ts5ejh',NULL,0,'2018-09-26','fgf',588,0,0),(3,8,'2018-09-20','2018-10-02','9999999999',1,0,'+918200785387',12,'ts5ejh',NULL,0,'2018-10-22','qwerty',100,1,0);
/*!40000 ALTER TABLE `status_ts5ejh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusjoineelist`
--

DROP TABLE IF EXISTS `statusjoineelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusjoineelist` (
  `idstatusjoineelist` int(11) NOT NULL AUTO_INCREMENT,
  `geohash` varchar(45) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `statusid` int(11) NOT NULL,
  PRIMARY KEY (`idstatusjoineelist`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusjoineelist`
--

LOCK TABLES `statusjoineelist` WRITE;
/*!40000 ALTER TABLE `statusjoineelist` DISABLE KEYS */;
INSERT INTO `statusjoineelist` VALUES (1,'ts5ejh','9928430456',1),(2,'tdr1z3','8247638529',1),(3,'tdr1z3','8179442558',1),(4,'tdr1z3','255555555',1),(5,'tdr1z3','8555',1),(6,'tdr1z3','588888',1),(7,'tdr1z3','88888',1),(8,'tdr1z3','+918179442',1),(9,'ts5ejh','+918200785',2),(10,'tepexv','+919966525',1);
/*!40000 ALTER TABLE `statusjoineelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `idsubcategory` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategoryname` varchar(45) NOT NULL,
  PRIMARY KEY (`idsubcategory`),
  KEY `categoryof_idx` (`categoryid`),
  CONSTRAINT `categoryof` FOREIGN KEY (`categoryid`) REFERENCES `category` (`idcategory`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syjdti_suofgj_xjorehj`
--

DROP TABLE IF EXISTS `syjdti_suofgj_xjorehj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syjdti_suofgj_xjorehj` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syjdti_suofgj_xjorehj`
--

LOCK TABLES `syjdti_suofgj_xjorehj` WRITE;
/*!40000 ALTER TABLE `syjdti_suofgj_xjorehj` DISABLE KEYS */;
INSERT INTO `syjdti_suofgj_xjorehj` VALUES (1,'syjdti_suofgj_xjorehj_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532234706/knehqnmzdpnhpoy4udvd.jpg','tiofjl','dyjbff','India','2018-07-22T04:45:33.613810800','1','fioddbm','+918179442558');
/*!40000 ALTER TABLE `syjdti_suofgj_xjorehj` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `userpoints`
--

DROP TABLE IF EXISTS `userpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpoints` (
  `iduserpoints` int(11) NOT NULL AUTO_INCREMENT,
  `usercontact` varchar(45) NOT NULL,
  `totalpoints` int(10) DEFAULT '0',
  `existingpoints` int(10) DEFAULT '0',
  `lastaddedpointson` varchar(45) DEFAULT '""',
  PRIMARY KEY (`iduserpoints`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpoints`
--

LOCK TABLES `userpoints` WRITE;
/*!40000 ALTER TABLE `userpoints` DISABLE KEYS */;
INSERT INTO `userpoints` VALUES (1,'+918179442558',160,10,'20:43:42 2018-08-25'),(2,'+918639613292',20,10,'06:34:53 2018-08-16'),(3,'+918686091898',10,10,'14:00:58 2018-08-21'),(4,'+917065267973',50,10,'13:09:29 2018-08-23');
/*!40000 ALTER TABLE `userpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vjkass_hjisjed_goonaa`
--

DROP TABLE IF EXISTS `vjkass_hjisjed_goonaa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vjkass_hjisjed_goonaa` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vjkass_hjisjed_goonaa`
--

LOCK TABLES `vjkass_hjisjed_goonaa` WRITE;
/*!40000 ALTER TABLE `vjkass_hjisjed_goonaa` DISABLE KEYS */;
INSERT INTO `vjkass_hjisjed_goonaa` VALUES (1,'vjkass_hjisjed_goonaa_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532236962/bul7ued8tmkk7d9braup.jpg','kabbdf','kkvcxd','India','2018-07-22T05:22:47.677209600','1','hwjakf','+918179442558');
/*!40000 ALTER TABLE `vjkass_hjisjed_goonaa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vkkee_cjjwd_fjasv`
--

DROP TABLE IF EXISTS `vkkee_cjjwd_fjasv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vkkee_cjjwd_fjasv` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vkkee_cjjwd_fjasv`
--

LOCK TABLES `vkkee_cjjwd_fjasv` WRITE;
/*!40000 ALTER TABLE `vkkee_cjjwd_fjasv` DISABLE KEYS */;
INSERT INTO `vkkee_cjjwd_fjasv` VALUES (1,'vkkee_cjjwd_fjasv_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532206544/iifbzuog6tywdql2gjga.jpg','hjwkf','vkk2ac','India','2018-07-21T20:55:58.239303400','1','uijsd','+918179442558');
/*!40000 ALTER TABLE `vkkee_cjjwd_fjasv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wghh_fyuub_sdhh`
--

DROP TABLE IF EXISTS `wghh_fyuub_sdhh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wghh_fyuub_sdhh` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wghh_fyuub_sdhh`
--

LOCK TABLES `wghh_fyuub_sdhh` WRITE;
/*!40000 ALTER TABLE `wghh_fyuub_sdhh` DISABLE KEYS */;
INSERT INTO `wghh_fyuub_sdhh` VALUES (1,'wghh_fyuub_sdhh_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532204808/e6kfdw5d9kqxz6fj5kgb.jpg','dyhj','guiknv','India','2018-07-21T20:26:59.488674100','1','wtgg','+918179442558');
/*!40000 ALTER TABLE `wghh_fyuub_sdhh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuhff_dghh_dgjj`
--

DROP TABLE IF EXISTS `yuhff_dghh_dgjj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuhff_dghh_dgjj` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MerchantId` varchar(128) NOT NULL,
  `geohash` varchar(12) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `MerchantName` varchar(32) NOT NULL,
  `state` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL DEFAULT 'INDIA',
  `registeredon` varchar(128) NOT NULL,
  `isactive` varchar(2) NOT NULL DEFAULT '1',
  `shopNo` varchar(45) DEFAULT NULL,
  `MerchantContact` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuhff_dghh_dgjj`
--

LOCK TABLES `yuhff_dghh_dgjj` WRITE;
/*!40000 ALTER TABLE `yuhff_dghh_dgjj` DISABLE KEYS */;
INSERT INTO `yuhff_dghh_dgjj` VALUES (1,'yuhff_dghh_dgjj_0','tdr1z3',12.9718903,77.6696154,'http://res.cloudinary.com/locator/image/upload/v1532206792/krspu6cwvrlbxsin2rfp.jpg','uwiekfn','yjhg','India','2018-07-21T21:00:04.114467500','1','sdhh','+918179442558');
/*!40000 ALTER TABLE `yuhff_dghh_dgjj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'nearmegala'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `birthdayfetch` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`nearme`@`localhost`*/ /*!50106 EVENT `birthdayfetch` ON SCHEDULE EVERY 1 DAY STARTS '2018-11-01 00:00:00' ON COMPLETION PRESERVE ENABLE DO BEGIN
	truncate birthdays;
    
     insert into birthdays (contact)  SELECT contact 
  FROM nearmegala.consumers
  WHERE 
    ( DATE_FORMAT((DOB),'%d-%m') = DATE_FORMAT(NOW(),'%m-%d') )
     OR (
               ( DATE_FORMAT(NOW(),'%Y') % 4 <> 0
                OR (
                        DATE_FORMAT(NOW(),'%Y') % 100 = 0
                        AND DATE_FORMAT(NOW(),'%Y') % 400 <> 0
                    ) )         
            AND DATE_FORMAT(NOW(),'%m-%d') = '03-01'
            AND DATE_FORMAT((DOB),'%m-%d') = '02-29'
        );
        
    END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'nearmegala'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:21:25
