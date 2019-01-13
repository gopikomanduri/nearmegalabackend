CREATE DATABASE  IF NOT EXISTS nearmegala /*!40100 DEFAULT CHARACTER SET latin1 */;
USE nearmegala;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
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
-- Table structure for table ad_abcdef
--

DROP TABLE IF EXISTS ad_abcdef;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_abcdef (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_dpr0kj
--

DROP TABLE IF EXISTS ad_dpr0kj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_dpr0kj (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr1rx
--

DROP TABLE IF EXISTS ad_tdr1rx;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr1rx (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr1tv
--

DROP TABLE IF EXISTS ad_tdr1tv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr1tv (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr1v9
--

DROP TABLE IF EXISTS ad_tdr1v9;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr1v9 (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr1xp
--

DROP TABLE IF EXISTS ad_tdr1xp;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr1xp (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr1z2
--

DROP TABLE IF EXISTS ad_tdr1z2;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr1z2 (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr1z3
--

DROP TABLE IF EXISTS ad_tdr1z3;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr1z3 (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr1z4
--

DROP TABLE IF EXISTS ad_tdr1z4;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr1z4 (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr1zj
--

DROP TABLE IF EXISTS ad_tdr1zj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr1zj (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr1zv
--

DROP TABLE IF EXISTS ad_tdr1zv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr1zv (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr26y
--

DROP TABLE IF EXISTS ad_tdr26y;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr26y (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tdr3bj
--

DROP TABLE IF EXISTS ad_tdr3bj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tdr3bj (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tepexv
--

DROP TABLE IF EXISTS ad_tepexv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tepexv (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tepfc8
--

DROP TABLE IF EXISTS ad_tepfc8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tepfc8 (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tf8f5c
--

DROP TABLE IF EXISTS ad_tf8f5c;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tf8f5c (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_ts5ejh
--

DROP TABLE IF EXISTS ad_ts5ejh;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_ts5ejh (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_ts5ejj
--

DROP TABLE IF EXISTS ad_ts5ejj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_ts5ejj (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tsmzqq
--

DROP TABLE IF EXISTS ad_tsmzqq;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tsmzqq (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tsmzwc
--

DROP TABLE IF EXISTS ad_tsmzwc;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tsmzwc (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_tsvbuw
--

DROP TABLE IF EXISTS ad_tsvbuw;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_tsvbuw (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_ttncwc
--

DROP TABLE IF EXISTS ad_ttncwc;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_ttncwc (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_ttngjn
--

DROP TABLE IF EXISTS ad_ttngjn;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_ttngjn (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ad_ttqwg4
--

DROP TABLE IF EXISTS ad_ttqwg4;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ad_ttqwg4 (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ads
--

DROP TABLE IF EXISTS ads;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ads (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(45) NOT NULL,
  Category int(10) DEFAULT NULL,
  ValidTillDate int(2) DEFAULT NULL,
  ValidTillMonth int(2) DEFAULT NULL,
  ValidTillYear int(4) DEFAULT NULL,
  ValidFromDate int(2) DEFAULT NULL,
  ValidFromMonth int(2) DEFAULT NULL,
  ValidFromYear int(4) DEFAULT NULL,
  adimgurl varchar(128) DEFAULT NULL,
  itemdesc varchar(512) DEFAULT NULL,
  receivedOn varchar(45) DEFAULT NULL,
  offercode varchar(6) DEFAULT NULL,
  shopname varchar(45) DEFAULT 'shop name',
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table bangalore_ffffff_yyyyyy
--

DROP TABLE IF EXISTS bangalore_ffffff_yyyyyy;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE bangalore_ffffff_yyyyyy (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table bengaluru_shivanandanagar_lbsnilgiris
--

DROP TABLE IF EXISTS bengaluru_shivanandanagar_lbsnilgiris;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE bengaluru_shivanandanagar_lbsnilgiris (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table birthdays
--

DROP TABLE IF EXISTS birthdays;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE birthdays (
  idBirthdays int(11) NOT NULL AUTO_INCREMENT,
  contact varchar(15) NOT NULL,
  geohash varchar(12) DEFAULT NULL,
  PRIMARY KEY (idBirthdays)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table category
--

DROP TABLE IF EXISTS category;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE category (
  idcategory int(11) NOT NULL AUTO_INCREMENT,
  type varchar(45) NOT NULL,
  imgurl varchar(128) DEFAULT NULL,
  PRIMARY KEY (idcategory)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table cghhhbv_fhujjhv_fhhjj
--

DROP TABLE IF EXISTS cghhhbv_fhujjhv_fhhjj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE cghhhbv_fhujjhv_fhhjj (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(25) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table chiokbb_ojhjjaba_xghjnbb
--

DROP TABLE IF EXISTS chiokbb_ojhjjaba_xghjnbb;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE chiokbb_ojhjjaba_xghjnbb (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ckcdi_dujcn_dhvvl
--

DROP TABLE IF EXISTS ckcdi_dujcn_dhvvl;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ckcdi_dujcn_dhvvl (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table comments
--

DROP TABLE IF EXISTS comments;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE comments (
  id int(11) NOT NULL AUTO_INCREMENT,
  MYUSER varchar(30) NOT NULL,
  EMAIL varchar(30) DEFAULT NULL,
  WEBPAGE varchar(100) NOT NULL,
  DATUM date NOT NULL,
  SUMMARY varchar(40) NOT NULL,
  COMMENTS varchar(400) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table consumers
--

DROP TABLE IF EXISTS consumers;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE consumers (
  idconsumers int(11) NOT NULL AUTO_INCREMENT,
  consumername varchar(128) NOT NULL,
  contact varchar(15) NOT NULL,
  DOB date NOT NULL,
  dpurl varchar(256) NOT NULL,
  registeredon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  status int(11) DEFAULT NULL,
  sex int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (idconsumers)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table counters
--

DROP TABLE IF EXISTS counters;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE counters (
  idcounters int(11) NOT NULL AUTO_INCREMENT,
  counterid varchar(45) NOT NULL,
  password varchar(45) NOT NULL DEFAULT '0000',
  merchantid varchar(45) NOT NULL,
  createdon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  closedon datetime DEFAULT NULL,
  role int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (idcounters,counterid)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table customerpointsavailed
--

DROP TABLE IF EXISTS customerpointsavailed;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE customerpointsavailed (
  idcustomerpointsavailed int(11) NOT NULL,
  contact varchar(45) NOT NULL,
  pointsused int(10) NOT NULL DEFAULT '0',
  goodieselected int(3) NOT NULL DEFAULT '0',
  usedon varchar(128) NOT NULL DEFAULT '""',
  PRIMARY KEY (idcustomerpointsavailed)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table employee
--

DROP TABLE IF EXISTS employee;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE employee (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  firstname varchar(20) DEFAULT NULL,
  lastname varchar(20) DEFAULT NULL,
  title varchar(30) DEFAULT NULL,
  age int(11) DEFAULT NULL,
  yearofservice int(11) DEFAULT NULL,
  salary int(11) DEFAULT NULL,
  perks int(11) DEFAULT NULL,
  email varchar(60) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table fhuuhgg_gghhuu_fgggh
--

DROP TABLE IF EXISTS fhuuhgg_gghhuu_fgggh;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE fhuuhgg_gghhuu_fgggh (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table fiis_fuiidv_cjoav
--

DROP TABLE IF EXISTS fiis_fuiidv_cjoav;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE fiis_fuiidv_cjoav (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table fjjjtt_fyfyu67_gjgu7
--

DROP TABLE IF EXISTS fjjjtt_fyfyu67_gjgu7;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE fjjjtt_fyfyu67_gjgu7 (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table group_msg
--

DROP TABLE IF EXISTS group_msg;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE group_msg (
  idgroup_msg int(11) NOT NULL AUTO_INCREMENT,
  msgowner varchar(15) NOT NULL,
  parentmsg int(11) DEFAULT NULL,
  date date NOT NULL,
  message varchar(512) NOT NULL,
  message_imgurl varchar(256) DEFAULT NULL,
  sex varchar(10) NOT NULL DEFAULT 'male',
  modifiedon date NOT NULL,
  rootmsg int(11) NOT NULL,
  PRIMARY KEY (idgroup_msg),
  KEY FK_PARENTMSG_idx (parentmsg),
  CONSTRAINT FK_PARENTMSG FOREIGN KEY (parentmsg) REFERENCES group_msg (idgroup_msg) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table groups
--

DROP TABLE IF EXISTS groups;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE groups (
  idgroups int(11) NOT NULL AUTO_INCREMENT,
  groupname varchar(45) NOT NULL,
  groupdp varchar(256) NOT NULL,
  owner varchar(15) NOT NULL,
  createdon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  userscount int(11) NOT NULL DEFAULT '1',
  groupdesc varchar(256) DEFAULT NULL,
  PRIMARY KEY (idgroups)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table helpers
--

DROP TABLE IF EXISTS helpers;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE helpers (
  idcounters int(11) NOT NULL AUTO_INCREMENT,
  counterid varchar(45) NOT NULL,
  password varchar(45) NOT NULL DEFAULT '0000',
  merchantid varchar(45) NOT NULL,
  createdon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  closedon datetime DEFAULT NULL,
  role int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (idcounters,counterid)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table jfhi_dihdf_djjvfyok
--

DROP TABLE IF EXISTS jfhi_dihdf_djjvfyok;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE jfhi_dihdf_djjvfyok (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table job_asdfgf
--

DROP TABLE IF EXISTS job_asdfgf;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE job_asdfgf (
  idjobs int(11) NOT NULL AUTO_INCREMENT,
  employername varchar(512) NOT NULL,
  employerlocationurl varchar(256) NOT NULL,
  jobDescription varchar(256) DEFAULT NULL,
  locationLandmark varchar(128) NOT NULL,
  offeringpost varchar(64) NOT NULL,
  educationQualification varchar(64) DEFAULT NULL,
  experienceReq varchar(26) DEFAULT NULL,
  sex varchar(10) NOT NULL,
  ageLimitation varchar(10) DEFAULT NULL,
  contact varchar(16) NOT NULL,
  emailId varchar(128) DEFAULT NULL,
  interviewDate varchar(45) NOT NULL,
  shiftTimings varchar(45) DEFAULT NULL,
  salary varchar(45) NOT NULL,
  postedon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (idjobs)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table job_tdr1z3
--

DROP TABLE IF EXISTS job_tdr1z3;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE job_tdr1z3 (
  idjobs int(11) NOT NULL AUTO_INCREMENT,
  employername varchar(512) NOT NULL,
  employerlocationurl varchar(256) NOT NULL,
  jobDescription varchar(256) DEFAULT NULL,
  locationLandmark varchar(128) NOT NULL,
  offeringpost varchar(64) NOT NULL,
  educationQualification varchar(64) DEFAULT NULL,
  experienceReq varchar(26) DEFAULT NULL,
  sex varchar(10) NOT NULL,
  ageLimitation varchar(10) DEFAULT NULL,
  contact varchar(16) NOT NULL,
  emailId varchar(128) DEFAULT NULL,
  interviewDate varchar(45) NOT NULL,
  shiftTimings varchar(45) DEFAULT NULL,
  salary varchar(45) NOT NULL,
  postedon date NOT NULL,
  PRIMARY KEY (idjobs)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table job_tdr1z4
--

DROP TABLE IF EXISTS job_tdr1z4;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE job_tdr1z4 (
  idjobs int(11) NOT NULL AUTO_INCREMENT,
  employername varchar(512) NOT NULL,
  employerlocationurl varchar(256) NOT NULL,
  jobDescription varchar(256) DEFAULT NULL,
  locationLandmark varchar(128) NOT NULL,
  offeringpost varchar(64) NOT NULL,
  educationQualification varchar(64) DEFAULT NULL,
  experienceReq varchar(26) DEFAULT NULL,
  sex varchar(10) NOT NULL,
  ageLimitation varchar(10) DEFAULT NULL,
  contact varchar(16) NOT NULL,
  emailId varchar(128) DEFAULT NULL,
  interviewDate varchar(45) NOT NULL,
  shiftTimings varchar(45) DEFAULT NULL,
  salary varchar(45) NOT NULL,
  postedon date NOT NULL,
  PRIMARY KEY (idjobs)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table job_ts5ejh
--

DROP TABLE IF EXISTS job_ts5ejh;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE job_ts5ejh (
  idjobs int(11) NOT NULL AUTO_INCREMENT,
  employername varchar(512) NOT NULL,
  employerlocationurl varchar(256) NOT NULL,
  jobDescription varchar(256) DEFAULT NULL,
  locationLandmark varchar(128) NOT NULL,
  offeringpost varchar(64) NOT NULL,
  educationQualification varchar(64) DEFAULT NULL,
  experienceReq varchar(26) DEFAULT NULL,
  sex varchar(10) NOT NULL,
  ageLimitation varchar(10) DEFAULT NULL,
  contact varchar(16) NOT NULL,
  emailId varchar(128) DEFAULT NULL,
  interviewDate varchar(45) NOT NULL,
  shiftTimings varchar(45) DEFAULT NULL,
  salary varchar(45) NOT NULL,
  postedon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (idjobs)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table jobs
--

DROP TABLE IF EXISTS jobs;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE jobs (
  idjobs int(11) NOT NULL AUTO_INCREMENT,
  employername varchar(512) NOT NULL,
  employerlocationurl varchar(256) NOT NULL,
  jobDescription varchar(256) DEFAULT NULL,
  locationLandmark varchar(128) NOT NULL,
  offeringpost varchar(64) NOT NULL,
  educationQualification varchar(64) DEFAULT NULL,
  experienceReq varchar(26) DEFAULT NULL,
  sex varchar(10) NOT NULL,
  ageLimitation varchar(10) DEFAULT NULL,
  contact varchar(16) NOT NULL,
  emailId varchar(128) DEFAULT NULL,
  interviewDate varchar(45) NOT NULL,
  shiftTimings varchar(45) DEFAULT NULL,
  salary varchar(45) NOT NULL,
  postedon date NOT NULL,
  PRIMARY KEY (idjobs)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table merchant
--

DROP TABLE IF EXISTS merchant;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE merchant (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL DEFAULT '0',
  longitude double NOT NULL DEFAULT '0',
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) DEFAULT 'Karnataka',
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL DEFAULT 'CURRENT_TIMESTAMP',
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL DEFAULT '0000000000',
  MerchantType int(3) NOT NULL DEFAULT '0',
  password varchar(15) NOT NULL DEFAULT '0000',
  role int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table merchant_counters
--

DROP TABLE IF EXISTS merchant_counters;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE merchant_counters (
  idmerchant_counters int(11) NOT NULL AUTO_INCREMENT,
  counterid int(11) NOT NULL,
  issuedtoken int(11) NOT NULL,
  status int(11) NOT NULL DEFAULT '2',
  date datetime NOT NULL,
  PRIMARY KEY (idmerchant_counters)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table merchantlatestversion
--

DROP TABLE IF EXISTS merchantlatestversion;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE merchantlatestversion (
  version int(11) NOT NULL,
  PRIMARY KEY (version)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table merchantpoints
--

DROP TABLE IF EXISTS merchantpoints;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE merchantpoints (
  idmerchantpoints int(11) NOT NULL AUTO_INCREMENT,
  merchantid varchar(128) DEFAULT NULL,
  totalpoints int(10) DEFAULT NULL,
  existingpoints int(10) DEFAULT NULL,
  lastaddedpointson varchar(45) DEFAULT NULL,
  PRIMARY KEY (idmerchantpoints)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table merchantpointsavailed
--

DROP TABLE IF EXISTS merchantpointsavailed;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE merchantpointsavailed (
  idmerchantpointsavailed int(11) NOT NULL,
  merchantid varchar(128) NOT NULL,
  pointsused int(10) DEFAULT '0',
  usedon varchar(128) DEFAULT '""',
  PRIMARY KEY (idmerchantpointsavailed)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table merchantreceipts
--

DROP TABLE IF EXISTS merchantreceipts;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE merchantreceipts (
  idmerchantreceipts int(11) NOT NULL AUTO_INCREMENT,
  receiptprefix varchar(45) NOT NULL,
  receiptnumber int(11) NOT NULL,
  receiptsuffix varchar(45) NOT NULL,
  PRIMARY KEY (idmerchantreceipts)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotations
--

DROP TABLE IF EXISTS negotations;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotations (
  idnegotations int(11) NOT NULL AUTO_INCREMENT,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(4) NOT NULL,
  maxamount int(11) NOT NULL,
  DiscountExpectation int(3) NOT NULL,
  ShoppingProbableDates varchar(45) NOT NULL,
  description varchar(512) DEFAULT NULL,
  delivered int(1) NOT NULL DEFAULT '0',
  adnotification int(11) NOT NULL,
  PRIMARY KEY (idnegotations)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotations_tdr1z3
--

DROP TABLE IF EXISTS negotations_tdr1z3;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotations_tdr1z3 (
  idnegotations int(11) NOT NULL AUTO_INCREMENT,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(4) NOT NULL,
  maxamount int(11) NOT NULL,
  DiscountExpectation int(3) NOT NULL,
  ShoppingProbableDates varchar(45) NOT NULL,
  description varchar(512) DEFAULT NULL,
  delivered int(1) NOT NULL DEFAULT '0',
  adnotification int(11) NOT NULL,
  PRIMARY KEY (idnegotations)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotations_tdr1z4
--

DROP TABLE IF EXISTS negotations_tdr1z4;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotations_tdr1z4 (
  idnegotations int(11) NOT NULL AUTO_INCREMENT,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(4) NOT NULL,
  maxamount int(11) NOT NULL,
  DiscountExpectation int(3) NOT NULL,
  ShoppingProbableDates varchar(45) NOT NULL,
  description varchar(512) DEFAULT NULL,
  delivered int(1) NOT NULL DEFAULT '0',
  adnotification int(11) NOT NULL,
  PRIMARY KEY (idnegotations)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotations_tepexv
--

DROP TABLE IF EXISTS negotations_tepexv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotations_tepexv (
  idnegotations int(11) NOT NULL AUTO_INCREMENT,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(4) NOT NULL,
  maxamount int(11) NOT NULL,
  DiscountExpectation int(3) NOT NULL,
  ShoppingProbableDates varchar(45) NOT NULL,
  description varchar(512) DEFAULT NULL,
  delivered int(1) NOT NULL DEFAULT '0',
  adnotification int(11) NOT NULL,
  PRIMARY KEY (idnegotations)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotations_ts5ejh
--

DROP TABLE IF EXISTS negotations_ts5ejh;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotations_ts5ejh (
  idnegotations int(11) NOT NULL AUTO_INCREMENT,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(4) NOT NULL,
  maxamount int(11) NOT NULL,
  DiscountExpectation int(3) NOT NULL,
  ShoppingProbableDates varchar(45) NOT NULL,
  description varchar(512) DEFAULT NULL,
  delivered int(1) NOT NULL DEFAULT '0',
  adnotification int(11) NOT NULL,
  PRIMARY KEY (idnegotations)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate
--

DROP TABLE IF EXISTS negotiate;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_
--

DROP TABLE IF EXISTS negotiate_;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_ (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_dpr0kj
--

DROP TABLE IF EXISTS negotiate_dpr0kj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_dpr0kj (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr1rx
--

DROP TABLE IF EXISTS negotiate_tdr1rx;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr1rx (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr1tv
--

DROP TABLE IF EXISTS negotiate_tdr1tv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr1tv (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr1v9
--

DROP TABLE IF EXISTS negotiate_tdr1v9;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr1v9 (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr1xp
--

DROP TABLE IF EXISTS negotiate_tdr1xp;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr1xp (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr1z2
--

DROP TABLE IF EXISTS negotiate_tdr1z2;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr1z2 (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr1z3
--

DROP TABLE IF EXISTS negotiate_tdr1z3;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr1z3 (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr1z4
--

DROP TABLE IF EXISTS negotiate_tdr1z4;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr1z4 (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr1zj
--

DROP TABLE IF EXISTS negotiate_tdr1zj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr1zj (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr1zv
--

DROP TABLE IF EXISTS negotiate_tdr1zv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr1zv (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tdr3bj
--

DROP TABLE IF EXISTS negotiate_tdr3bj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tdr3bj (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tepexv
--

DROP TABLE IF EXISTS negotiate_tepexv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tepexv (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tepfc8
--

DROP TABLE IF EXISTS negotiate_tepfc8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tepfc8 (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tf8f5c
--

DROP TABLE IF EXISTS negotiate_tf8f5c;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tf8f5c (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_ts5ejh
--

DROP TABLE IF EXISTS negotiate_ts5ejh;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_ts5ejh (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_ts5ejj
--

DROP TABLE IF EXISTS negotiate_ts5ejj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_ts5ejj (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tsmzqq
--

DROP TABLE IF EXISTS negotiate_tsmzqq;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tsmzqq (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tsmzwc
--

DROP TABLE IF EXISTS negotiate_tsmzwc;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tsmzwc (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_tsvbuw
--

DROP TABLE IF EXISTS negotiate_tsvbuw;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_tsvbuw (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_ttngjn
--

DROP TABLE IF EXISTS negotiate_ttngjn;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_ttngjn (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiate_ttqwg4
--

DROP TABLE IF EXISTS negotiate_ttqwg4;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiate_ttqwg4 (
  idnegotiate int(11) NOT NULL AUTO_INCREMENT,
  adId int(11) NOT NULL,
  geohash varchar(12) NOT NULL,
  cannegotiate int(1) NOT NULL DEFAULT '0',
  minamount int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idnegotiate)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiationsresponse
--

DROP TABLE IF EXISTS negotiationsresponse;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiationsresponse (
  idnegotiationsresponse int(11) NOT NULL AUTO_INCREMENT,
  idnegotiations int(11) NOT NULL,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(11) DEFAULT NULL,
  maxamount int(11) DEFAULT NULL,
  Discount int(11) NOT NULL DEFAULT '0',
  ShoppingallowedDates varchar(512) DEFAULT NULL,
  advanceNeed int(11) DEFAULT NULL,
  description varchar(512) DEFAULT NULL,
  negotiationsresponse int(1) NOT NULL DEFAULT '0',
  respondedon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  notificationid int(11) NOT NULL,
  PRIMARY KEY (idnegotiationsresponse)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiationsresponse_tdr1z3
--

DROP TABLE IF EXISTS negotiationsresponse_tdr1z3;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiationsresponse_tdr1z3 (
  idnegotiationsresponse int(11) NOT NULL AUTO_INCREMENT,
  idnegotiations int(11) NOT NULL,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(11) DEFAULT NULL,
  maxamount int(11) DEFAULT NULL,
  Discount int(11) NOT NULL DEFAULT '0',
  ShoppingallowedDates varchar(512) DEFAULT NULL,
  advanceNeed int(11) DEFAULT NULL,
  description varchar(512) DEFAULT NULL,
  negotiationsresponse int(1) NOT NULL DEFAULT '0',
  respondedon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  notificationid int(11) NOT NULL,
  PRIMARY KEY (idnegotiationsresponse)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiationsresponse_tdr1z4
--

DROP TABLE IF EXISTS negotiationsresponse_tdr1z4;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiationsresponse_tdr1z4 (
  idnegotiationsresponse int(11) NOT NULL AUTO_INCREMENT,
  idnegotiations int(11) NOT NULL,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(11) DEFAULT NULL,
  maxamount int(11) DEFAULT NULL,
  Discount int(11) NOT NULL DEFAULT '0',
  ShoppingallowedDates varchar(512) DEFAULT NULL,
  advanceNeed int(11) DEFAULT NULL,
  description varchar(512) DEFAULT NULL,
  negotiationsresponse int(1) NOT NULL DEFAULT '0',
  respondedon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  notificationid int(11) NOT NULL,
  PRIMARY KEY (idnegotiationsresponse)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiationsresponse_tepexv
--

DROP TABLE IF EXISTS negotiationsresponse_tepexv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiationsresponse_tepexv (
  idnegotiationsresponse int(11) NOT NULL AUTO_INCREMENT,
  idnegotiations int(11) NOT NULL,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(11) DEFAULT NULL,
  maxamount int(11) DEFAULT NULL,
  Discount int(11) NOT NULL DEFAULT '0',
  ShoppingallowedDates varchar(512) DEFAULT NULL,
  advanceNeed int(11) DEFAULT NULL,
  description varchar(512) DEFAULT NULL,
  negotiationsresponse int(1) NOT NULL DEFAULT '0',
  respondedon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  notificationid int(11) NOT NULL,
  PRIMARY KEY (idnegotiationsresponse)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table negotiationsresponse_ts5ejh
--

DROP TABLE IF EXISTS negotiationsresponse_ts5ejh;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE negotiationsresponse_ts5ejh (
  idnegotiationsresponse int(11) NOT NULL AUTO_INCREMENT,
  idnegotiations int(11) NOT NULL,
  customercontact varchar(15) NOT NULL,
  merchantid varchar(128) NOT NULL,
  geohash varchar(6) NOT NULL,
  minamount int(11) DEFAULT NULL,
  maxamount int(11) DEFAULT NULL,
  Discount int(11) NOT NULL DEFAULT '0',
  ShoppingallowedDates varchar(512) DEFAULT NULL,
  advanceNeed int(11) DEFAULT NULL,
  description varchar(512) DEFAULT NULL,
  negotiationsresponse int(1) NOT NULL DEFAULT '0',
  respondedon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  notificationid int(11) NOT NULL,
  PRIMARY KEY (idnegotiationsresponse)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table offerreach
--

DROP TABLE IF EXISTS offerreach;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE offerreach (
  idofferreach int(11) NOT NULL AUTO_INCREMENT,
  merchantId varchar(128) NOT NULL,
  offercode varchar(6) NOT NULL,
  reached int(6) NOT NULL DEFAULT '0',
  viewed int(6) NOT NULL DEFAULT '0',
  utilized int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (idofferreach)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table pointstable
--

DROP TABLE IF EXISTS pointstable;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE pointstable (
  idpoints int(11) NOT NULL,
  merchantType int(3) DEFAULT '0',
  points int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (idpoints)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table receipts
--

DROP TABLE IF EXISTS receipts;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE receipts (
  idreceipts int(11) NOT NULL AUTO_INCREMENT,
  contact varchar(45) NOT NULL,
  imageurl varchar(128) NOT NULL,
  merchantid varchar(45) NOT NULL,
  date date NOT NULL,
  receiptid varchar(45) NOT NULL,
  type int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (idreceipts)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table seghgv_vhik1rf_bjioawgh
--

DROP TABLE IF EXISTS seghgv_vhik1rf_bjioawgh;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE seghgv_vhik1rf_bjioawgh (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table sfhh_giqiqe_vjiff
--

DROP TABLE IF EXISTS sfhh_giqiqe_vjiff;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE sfhh_giqiqe_vjiff (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table smsids
--

DROP TABLE IF EXISTS smsids;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE smsids (
  idsmsid int(11) NOT NULL AUTO_INCREMENT,
  userid varchar(45) NOT NULL,
  password varchar(45) NOT NULL,
  active int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (idsmsid)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table specificmessages
--

DROP TABLE IF EXISTS specificmessages;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE specificmessages (
  idspecificmessages int(11) NOT NULL AUTO_INCREMENT,
  merchantId varchar(45) NOT NULL,
  consumercontact varchar(45) NOT NULL,
  messageurl varchar(512) NOT NULL,
  PRIMARY KEY (idspecificmessages)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table status
--

DROP TABLE IF EXISTS status;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE status (
  idstatus int(11) NOT NULL AUTO_INCREMENT,
  idnotification int(11) NOT NULL,
  validfrom date NOT NULL,
  validto date NOT NULL,
  contact varchar(15) NOT NULL,
  canjoin int(11) NOT NULL DEFAULT '1',
  bringcharges int(11) NOT NULL DEFAULT '0',
  registeredcontactnumber varchar(15) NOT NULL,
  finaldiscount int(11) NOT NULL,
  geohash varchar(45) DEFAULT NULL,
  places varchar(45) DEFAULT NULL,
  joinedcount int(11) NOT NULL DEFAULT '0',
  shoppingdate date NOT NULL,
  offerdesc varchar(128) NOT NULL,
  value int(11) NOT NULL,
  flat int(11) NOT NULL,
  ispercentage int(11) NOT NULL,
  PRIMARY KEY (idstatus)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table status_tdr1xb
--

DROP TABLE IF EXISTS status_tdr1xb;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE status_tdr1xb (
  idstatus int(11) NOT NULL AUTO_INCREMENT,
  idnotification int(11) NOT NULL,
  validfrom date NOT NULL,
  validto date NOT NULL,
  contact varchar(15) NOT NULL,
  canjoin int(11) NOT NULL DEFAULT '1',
  bringcharges int(11) NOT NULL DEFAULT '0',
  registeredcontactnumber varchar(15) NOT NULL,
  finaldiscount int(11) NOT NULL,
  geohash varchar(45) DEFAULT NULL,
  places varchar(45) DEFAULT NULL,
  joinedcount int(11) NOT NULL DEFAULT '0',
  shoppingdate date NOT NULL,
  offerdesc varchar(128) NOT NULL,
  value int(11) NOT NULL,
  flat int(11) NOT NULL,
  ispercentage int(11) NOT NULL,
  PRIMARY KEY (idstatus)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table status_tdr1z3
--

DROP TABLE IF EXISTS status_tdr1z3;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE status_tdr1z3 (
  idstatus int(11) NOT NULL AUTO_INCREMENT,
  idnotification int(11) NOT NULL,
  validfrom date NOT NULL,
  validto date NOT NULL,
  contact varchar(15) NOT NULL,
  canjoin int(11) NOT NULL DEFAULT '1',
  bringcharges int(11) NOT NULL DEFAULT '0',
  registeredcontactnumber varchar(15) NOT NULL,
  finaldiscount int(11) NOT NULL,
  geohash varchar(45) DEFAULT NULL,
  places varchar(45) DEFAULT NULL,
  joinedcount int(11) NOT NULL DEFAULT '0',
  shoppingdate date NOT NULL,
  offerdesc varchar(128) NOT NULL,
  value int(11) NOT NULL,
  flat int(11) NOT NULL,
  ispercentage int(11) NOT NULL,
  PRIMARY KEY (idstatus)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table status_tepexv
--

DROP TABLE IF EXISTS status_tepexv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE status_tepexv (
  idstatus int(11) NOT NULL AUTO_INCREMENT,
  idnotification int(11) NOT NULL,
  validfrom date NOT NULL,
  validto date NOT NULL,
  contact varchar(15) NOT NULL,
  canjoin int(11) NOT NULL DEFAULT '1',
  bringcharges int(11) NOT NULL DEFAULT '0',
  registeredcontactnumber varchar(15) NOT NULL,
  finaldiscount int(11) NOT NULL,
  geohash varchar(45) DEFAULT NULL,
  places varchar(45) DEFAULT NULL,
  joinedcount int(11) NOT NULL DEFAULT '0',
  shoppingdate date NOT NULL,
  offerdesc varchar(128) NOT NULL,
  value int(11) NOT NULL,
  flat int(11) NOT NULL,
  ispercentage int(11) NOT NULL,
  PRIMARY KEY (idstatus)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table status_ts5ehg
--

DROP TABLE IF EXISTS status_ts5ehg;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE status_ts5ehg (
  idstatus int(11) NOT NULL AUTO_INCREMENT,
  idnotification int(11) NOT NULL,
  validfrom date NOT NULL,
  validto date NOT NULL,
  contact varchar(15) NOT NULL,
  canjoin int(11) NOT NULL DEFAULT '1',
  bringcharges int(11) NOT NULL DEFAULT '0',
  registeredcontactnumber varchar(15) NOT NULL,
  finaldiscount int(11) NOT NULL,
  geohash varchar(45) DEFAULT NULL,
  places varchar(45) DEFAULT NULL,
  joinedcount int(11) NOT NULL DEFAULT '0',
  shoppingdate date NOT NULL,
  offerdesc varchar(128) NOT NULL,
  value int(11) NOT NULL,
  flat int(11) NOT NULL,
  ispercentage int(11) NOT NULL,
  PRIMARY KEY (idstatus)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table status_ts5ej5
--

DROP TABLE IF EXISTS status_ts5ej5;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE status_ts5ej5 (
  idstatus int(11) NOT NULL AUTO_INCREMENT,
  idnotification int(11) NOT NULL,
  validfrom date NOT NULL,
  validto date NOT NULL,
  contact varchar(15) NOT NULL,
  canjoin int(11) NOT NULL DEFAULT '1',
  bringcharges int(11) NOT NULL DEFAULT '0',
  registeredcontactnumber varchar(15) NOT NULL,
  finaldiscount int(11) NOT NULL,
  geohash varchar(45) DEFAULT NULL,
  places varchar(45) DEFAULT NULL,
  joinedcount int(11) NOT NULL DEFAULT '0',
  shoppingdate date NOT NULL,
  offerdesc varchar(128) NOT NULL,
  value int(11) NOT NULL,
  flat int(11) NOT NULL,
  ispercentage int(11) NOT NULL,
  PRIMARY KEY (idstatus)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table status_ts5ejh
--

DROP TABLE IF EXISTS status_ts5ejh;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE status_ts5ejh (
  idstatus int(11) NOT NULL AUTO_INCREMENT,
  idnotification int(11) NOT NULL,
  validfrom date NOT NULL,
  validto date NOT NULL,
  contact varchar(15) NOT NULL,
  canjoin int(11) NOT NULL DEFAULT '1',
  bringcharges int(11) NOT NULL DEFAULT '0',
  registeredcontactnumber varchar(15) NOT NULL,
  finaldiscount int(11) NOT NULL,
  geohash varchar(45) DEFAULT NULL,
  places varchar(45) DEFAULT NULL,
  joinedcount int(11) NOT NULL DEFAULT '0',
  shoppingdate date NOT NULL,
  offerdesc varchar(128) NOT NULL,
  value int(11) NOT NULL,
  flat int(11) NOT NULL,
  ispercentage int(11) NOT NULL,
  PRIMARY KEY (idstatus)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table statusjoineelist
--

DROP TABLE IF EXISTS statusjoineelist;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE statusjoineelist (
  idstatusjoineelist int(11) NOT NULL AUTO_INCREMENT,
  geohash varchar(45) NOT NULL,
  contact varchar(15) NOT NULL,
  statusid int(11) NOT NULL,
  PRIMARY KEY (idstatusjoineelist)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table subcategory
--

DROP TABLE IF EXISTS subcategory;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE subcategory (
  idsubcategory int(11) NOT NULL AUTO_INCREMENT,
  categoryid int(11) NOT NULL,
  subcategoryname varchar(45) NOT NULL,
  PRIMARY KEY (idsubcategory),
  KEY categoryof_idx (categoryid),
  CONSTRAINT categoryof FOREIGN KEY (categoryid) REFERENCES category (idcategory) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table syjdti_suofgj_xjorehj
--

DROP TABLE IF EXISTS syjdti_suofgj_xjorehj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE syjdti_suofgj_xjorehj (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table transactionhistory
--

DROP TABLE IF EXISTS transactionhistory;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE transactionhistory (
  idtransactionhistory int(11) NOT NULL AUTO_INCREMENT,
  merchantid varchar(128) NOT NULL,
  usercontact varchar(45) NOT NULL,
  transactiontimestamp varchar(128) NOT NULL,
  transactionid varchar(512) NOT NULL,
  pointstocustomer int(10) DEFAULT '0',
  pointstomerchant int(10) DEFAULT '0',
  PRIMARY KEY (idtransactionhistory)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table userpoints
--

DROP TABLE IF EXISTS userpoints;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE userpoints (
  iduserpoints int(11) NOT NULL AUTO_INCREMENT,
  usercontact varchar(45) NOT NULL,
  totalpoints int(10) DEFAULT '0',
  existingpoints int(10) DEFAULT '0',
  lastaddedpointson varchar(45) DEFAULT '""',
  PRIMARY KEY (iduserpoints)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table viewers
--

DROP TABLE IF EXISTS viewers;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE viewers (
  idcounters int(11) NOT NULL AUTO_INCREMENT,
  counterid varchar(45) NOT NULL,
  password varchar(45) NOT NULL DEFAULT '0000',
  merchantid varchar(45) NOT NULL,
  createdon datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  closedon datetime DEFAULT NULL,
  role int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (idcounters,counterid)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table vjkass_hjisjed_goonaa
--

DROP TABLE IF EXISTS vjkass_hjisjed_goonaa;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE vjkass_hjisjed_goonaa (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table vkkee_cjjwd_fjasv
--

DROP TABLE IF EXISTS vkkee_cjjwd_fjasv;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE vkkee_cjjwd_fjasv (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table wghh_fyuub_sdhh
--

DROP TABLE IF EXISTS wghh_fyuub_sdhh;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE wghh_fyuub_sdhh (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table yuhff_dghh_dgjj
--

DROP TABLE IF EXISTS yuhff_dghh_dgjj;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE yuhff_dghh_dgjj (
  Id int(11) NOT NULL AUTO_INCREMENT,
  MerchantId varchar(128) NOT NULL,
  geohash varchar(12) NOT NULL,
  latitude double NOT NULL,
  longitude double NOT NULL,
  imgurl varchar(100) DEFAULT NULL,
  MerchantName varchar(32) NOT NULL,
  state varchar(128) NOT NULL,
  country varchar(128) NOT NULL DEFAULT 'INDIA',
  registeredon varchar(128) NOT NULL,
  isactive varchar(2) NOT NULL DEFAULT '1',
  shopNo varchar(45) DEFAULT NULL,
  MerchantContact varchar(45) NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'nearmegala'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS birthdayfetch */;
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
/*!50106 CREATE*/ /*!50117 DEFINER=nearme@localhost*/ /*!50106 EVENT birthdayfetch ON SCHEDULE EVERY 1 DAY STARTS '2018-11-01 00:00:00' ON COMPLETION PRESERVE ENABLE DO BEGIN
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

-- Dump completed on 2019-01-13 15:08:09
