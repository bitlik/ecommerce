-- MySQL dump 10.13  Distrib 5.5.19, for Win32 (x86)
--
-- Host: localhost    Database: ec
-- ------------------------------------------------------
-- Server version	5.5.19

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `name` varchar(30) DEFAULT NULL,
  `phone` bigint(10) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES ('bhargavi',9963490215,'flat no 5 ,viman nagar','credit'),('bhargavi',9963490215,'flat no 5 ,viman nagar','credit'),('bhargavi',9963490215,'flat no 5 ,viman nagar','credit'),('bhargavi',9963490215,'flat no 5 ,viman nagar','debit'),('bhargavi',9963490215,'flat no 5 ,viman nagar','debit'),('harsh',22345678,'sdf','debit'),('mcfatbeard',22345678,'sdf','debit'),('mcfatbeard',22345678,'sdf','debit'),('mcfatbeard',22345678,'sdf','debit'),('mcfatbeard',22345678,'sdf','debit'),('mcfatbeard',22345678,'sdf','debit'),('mcfatbeard',1234567890,'13we','debit'),('mcfatbeard',1234567890,'13we','debit'),('mcfatbeard',212345678,'s12w1ed3','debit'),('mcfatbeard',9963490215,'swdqer','credit'),('mcfatbeard',9963490215,'swdqer','credit');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `uname` varchar(30) DEFAULT NULL,
  `pname` varchar(30) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (NULL,' Shaadi ka joker',' 25'),('Bhargavi',' Shaadi ka joker',' 25'),('Bhargavi',' Van yellow?price= 2500',NULL),(NULL,' Nexus 6 ',' 25000'),('Bhargavi',' It wasn\'t me',' 150'),('mcfatbeard',' Mi note 4',NULL),('mcfatbeard',' Couch','25000');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `pid` int(11) DEFAULT NULL,
  `path` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `des` varchar(50) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Couch',15,25000,'best item',1,'ram','furniture'),(2,'Royal Oak',15,15000,'best item',1,'ram','furniture'),(3,'Riverdale',15,25000,'best item',1,'ram','furniture'),(4,'grey couch',15,12000,'best item',1,'ram','furniture'),(5,'marble sofa',15,8000,'best item',1,'ram','furniture'),(6,'rocking chair',15,5000,'best item',1,'ram','furniture'),(7,'Shaadi ka joker',15,25,'best item',1,'ram','Fiction'),(8,'Super heroes',15,75,'best item',1,'ram','Fiction'),(9,'It wasnt me',15,150,'best item',1,'ram','Fiction'),(10,'The Bible',15,77,'best item',1,'ram','Fiction'),(11,'Quran',15,100,'best item',1,'ram','Fiction'),(12,'The time trap',15,100,'best item',1,'ram','Fiction'),(13,'Van Heusen Checked',15,2500,'best item',1,'ram','Mentopwear'),(14,'Levis',15,750,'best item',1,'ram','Mentopwear'),(15,'Raymonds',15,150,'best item',1,'ram','Mentopwear'),(16,'Levvs',15,125,'best item',1,'ram','Mentopwear'),(17,'Browns Special',15,100,'best item',1,'ram','Mentopwear'),(18,'The Communist',15,1000,'best item',1,'ram','Mentopwear'),(19,'Van yellow',15,2500,'best item',1,'ram','Womentopwear'),(20,'Levis Black',15,1750,'best item',1,'ram','Womentopwear'),(21,'O Boy',15,1150,'best item',1,'ram','Womentopwear'),(22,'Go Touch',15,250,'best item',1,'ram','Womentopwear'),(23,'Yellow Thingy',15,1100,'best item',1,'ram','Womentopwear'),(24,'Kurtha',15,1000,'best item',1,'ram','Womentopwear'),(25,'Iphone 6',15,15000,'best item',1,'ram','mobiles'),(26,'Samsung C9',15,25000,'best item',1,'ram','mobiles'),(27,'Nexus 6',15,25000,'best item',1,'ram','mobiles'),(28,'Lenovo P50',15,12000,'best item',1,'ram','mobiles'),(29,'Lava iris',15,8000,'best item',1,'ram','mobiles'),(30,'HP new',15,5000,'best item',1,'ram','mobiles'),(31,'LG Refrigerator',15,15000,'best item',1,'ram','electronics'),(32,'Sony Led tv',15,28000,'best item',1,'ram','electronics'),(33,'Iron',15,3000,'best item',1,'ram','electronics'),(34,'Sewing Machine',15,8000,'best item',1,'ram','electronics'),(35,'Skybags',15,3000,'best item',1,'ram','electronics'),(36,'Phillips Speakers',15,5000,'best item',1,'ram','electronics'),(37,'Crockery set',15,3200,'best item',1,'ram','electronics'),(38,'Spoon set',15,3200,'best item',1,'ram','electronics'),(39,'laptop',1,10000,'best item',5,'ram3','electronics'),(40,'q',0,1,'qwe',6,'mcfatbeard','fiction');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_info`
--

DROP TABLE IF EXISTS `seller_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_info` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `sphone` bigint(10) DEFAULT NULL,
  `saddress` varchar(50) DEFAULT NULL,
  `semail_id` varchar(30) DEFAULT NULL,
  `spwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sname` (`sname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_info`
--

LOCK TABLES `seller_info` WRITE;
/*!40000 ALTER TABLE `seller_info` DISABLE KEYS */;
INSERT INTO `seller_info` VALUES (1,'ram',9912647168,'mumbai','ram@gmail.com','1234'),(2,'akshay',9705742401,'hyd','aks@gmail.com','4567'),(3,'ram2',9963490215,'hyd','bhargavi@gmail.com','123'),(5,'ram3',9963490215,'hyd','bhargavi@gmail.com','123'),(6,'mcfatbeard',6754327890,'qer','H@j.com','qazxsw');
/*!40000 ALTER TABLE `seller_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `pname` varchar(30) DEFAULT NULL,
  `bill` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (4,'bhargavi','flat no 5 ,viman nagar','debit','couch','325000'),(5,'bhargavi','flat no 5 ,viman nagar','debit','couch','325000'),(6,'bhargavi','flat no 5 ,viman nagar','cash','dining table','325000'),(7,'bhargavi','flat no 5 ,viman nagar','cash','dining table','357000'),(8,'bhargavi','flat no 5 ,viman nagar','credit','Shaadi ka joker','25'),(9,'bhargavi','flat no 5 ,viman nagar','credit','Shaadi ka joker','25');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `uphone` bigint(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (11,'Bhargavi',9963490215,'hyd','bhargavi@gmail.com','123'),(14,'akhila',9963490216,'hyd','ak@gmail.com','456'),(15,'siri',9949298407,'hyd','siri@gmail.com','siri'),(19,'shruthi',9705742401,'flat no 6 pimpri','shruthi@gmail.com','1234'),(20,'ashwini',9963490216,'yerwada','ash@gmail.com','1234'),(21,'veer',98989898,'aefad','veaf','123'),(23,'veerc',9963490215,'hyd','ad@t.com','123'),(24,'ram1',9963490215,'hyd','bhargavi@gmail.com','123'),(25,'mcfatbeard',1234567890,'dqwyik','Sxd@g.com','qazxswedc');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `uname` varchar(30) DEFAULT NULL,
  `pname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES ('Bhargavi','\'couch\''),('Bhargavi','\'couch\''),('Bhargavi','\'couch\''),('Bhargavi','\'couch\''),(NULL,' Van yellow'),('Bhargavi',' Shaadi ka joker'),('Bhargavi',' Mi note 4'),('Bhargavi',' Couch');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-10 17:13:16
