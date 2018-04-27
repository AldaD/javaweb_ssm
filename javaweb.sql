-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: javaweb
-- ------------------------------------------------------
-- Server version	5.7.18-1

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
-- Table structure for table `addresslist`
--

DROP TABLE IF EXISTS `addresslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresslist`
--

LOCK TABLES `addresslist` WRITE;
/*!40000 ALTER TABLE `addresslist` DISABLE KEYS */;
INSERT INTO `addresslist` VALUES (1,'kaka','123456123'),(2,'ssh','18819453629'),(3,'alda','15173162304'),(4,'111','111111');
/*!40000 ALTER TABLE `addresslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction` (
  `auctioid` int(11) NOT NULL AUTO_INCREMENT,
  `auctionname` varchar(50) DEFAULT NULL,
  `auctionstartprice` int(11) DEFAULT NULL,
  `auctionstarttime` date DEFAULT NULL,
  `auctionendtime` date DEFAULT NULL,
  `auctionpic` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `auctiondesc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`auctioid`),
  UNIQUE KEY `auctionuser_auctioid_uindex` (`auctioid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
INSERT INTO `auction` VALUES (1,'千年女尸',30000,'2018-03-01','2018-03-11','http://owonvirap.bkt.clouddn.com/10.1.jpg','女尸'),(2,'尿壶',32222,'2018-03-01','2018-03-18','http://owonvirap.bkt.clouddn.com/11.2.jpg','乾隆爷的尿壶'),(3,'裹脚布',20000,'2018-03-02','2018-03-21','http://owonvirap.bkt.clouddn.com/15.2.jpg','慈禧太后的裹脚布'),(4,'青花瓷',6666,'2018-03-03','2018-03-24','http://owonvirap.bkt.clouddn.com/13.3.jpg','元朝青花瓷'),(5,'兵马俑',90000,'2018-03-01','2018-03-07','http://owonvirap.bkt.clouddn.com/9.2.jpg','秦始皇兵马俑'),(6,'枕头',20000,'2018-03-03','2018-03-06','http://owonvirap.bkt.clouddn.com/20.1.jpg','汉武帝的枕头');
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctionrecord`
--

DROP TABLE IF EXISTS `auctionrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctionrecord` (
  `userid` int(11) NOT NULL,
  `auctionid` int(11) NOT NULL,
  `auctiontime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `auctionprice` int(11) DEFAULT NULL,
  KEY `uid` (`userid`),
  KEY `aucid` (`auctionid`),
  CONSTRAINT `aucid` FOREIGN KEY (`auctionid`) REFERENCES `auction` (`auctioid`),
  CONSTRAINT `uid` FOREIGN KEY (`userid`) REFERENCES `auctionuser` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctionrecord`
--

LOCK TABLES `auctionrecord` WRITE;
/*!40000 ALTER TABLE `auctionrecord` DISABLE KEYS */;
INSERT INTO `auctionrecord` VALUES (3,1,'2018-03-08 16:00:00',30000),(4,1,'2018-03-09 16:00:00',35000),(5,1,'2018-03-09 16:00:00',40000),(4,2,'2018-03-02 16:00:00',35000),(5,2,'2018-03-11 16:00:00',40000),(6,2,'2018-03-13 16:00:00',45000),(3,3,'2018-03-01 16:00:00',25000),(4,3,'2018-03-02 16:00:00',25100),(6,3,'2018-03-03 16:00:00',30000),(5,4,'2018-03-02 16:00:00',7000),(6,4,'2018-03-03 16:00:00',7500),(3,5,'2018-03-01 16:00:00',91000),(6,5,'2018-03-02 16:00:00',92000),(4,6,'2018-03-02 16:00:00',20001),(5,6,'2018-03-03 16:00:00',25000);
/*!40000 ALTER TABLE `auctionrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctionuser`
--

DROP TABLE IF EXISTS `auctionuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctionuser` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `userpassword` varchar(20) DEFAULT NULL,
  `userisadmin` int(11) DEFAULT '1',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `auction_userid_uindex` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctionuser`
--

LOCK TABLES `auctionuser` WRITE;
/*!40000 ALTER TABLE `auctionuser` DISABLE KEYS */;
INSERT INTO `auctionuser` VALUES (1,'alda','123123',0),(2,'aa','aa',0),(3,'111','111',1),(4,'222','222',1),(5,'888','888',1),(6,'666','666',1),(7,'999','999',NULL);
/*!40000 ALTER TABLE `auctionuser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-27 21:03:05
