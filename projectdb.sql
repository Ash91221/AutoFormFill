-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: projectdb
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `ADetails`
--

DROP TABLE IF EXISTS `ADetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADetails` (
  `Aid` varchar(12) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Mail` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  PRIMARY KEY (`Aid`),
  UNIQUE KEY `Aid` (`Aid`),
  UNIQUE KEY `Mobile` (`Mobile`),
  UNIQUE KEY `Mail` (`Mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADetails`
--

LOCK TABLES `ADetails` WRITE;
/*!40000 ALTER TABLE `ADetails` DISABLE KEYS */;
INSERT INTO `ADetails` VALUES ('111111111111','Harsha','9849681676','Male','harshaprameel@gmail.com',22),('222222222222','Nishanth','8736264374','Male','nishanthreddy96@gmail.com',21);
/*!40000 ALTER TABLE `ADetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ODetails`
--

DROP TABLE IF EXISTS `ODetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ODetails` (
  `email` varchar(30) NOT NULL,
  `type` varchar(7) DEFAULT NULL,
  `number` varchar(7) DEFAULT NULL,
  `src` varchar(20) DEFAULT NULL,
  `dest` varchar(20) DEFAULT NULL,
  `NOP` int(11) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `DOT` varchar(15) DEFAULT NULL,
  `DT` varchar(6) DEFAULT NULL,
  `AT` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ODetails`
--

LOCK TABLES `ODetails` WRITE;
/*!40000 ALTER TABLE `ODetails` DISABLE KEYS */;
INSERT INTO `ODetails` VALUES ('harshaprameel@gmail.com','Train','24680','Goa','Delhi',1,'Thu Mar 22 23:31:33 IST 2018','2018-03-24','10:55','22:20'),('ambatihemanth00@gmail.com','Flight','123456','Hyderabad','Mumbai',2,'Thu Mar 22 23:33:10 IST 2018','2018-03-24','17:30','12:45'),('harshaprameel@gmail.com','Train','67890','Mumbai','Delhi',3,'Fri Mar 23 11:37:00 IST 2018','2018-03-30','14:30','4:45'),('harshaprameel@gmail.com','Flight','789012','Mumbai','Delhi',4,'Fri Mar 23 11:46:25 IST 2018','2018-03-24','14:30','4:45'),('harshaprameel@gmail.com','Train','13579','Kerala','Bengaluru',4,'Fri Mar 23 11:48:01 IST 2018','2018-04-01','9:50','6:45'),('harshaprameel@gmail.com','Bus','1234','Hyderabad','Mumbai',1,'Fri Mar 23 15:40:45 IST 2018','2018-03-29','17:30','12:45'),('harshaprameel@gmail.com','Bus','1234','Hyderabad','Mumbai',2,'Fri Mar 23 16:13:54 IST 2018','2018-03-27','17:30','12:45'),('harshaprameel@gmail.com','Train','24680','Goa','Delhi',2,'Fri Mar 23 16:34:49 IST 2018','2018-03-28','10:55','22:20');
/*!40000 ALTER TABLE `ODetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RLDetails`
--

DROP TABLE IF EXISTS `RLDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RLDetails` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RLDetails`
--

LOCK TABLES `RLDetails` WRITE;
/*!40000 ALTER TABLE `RLDetails` DISABLE KEYS */;
INSERT INTO `RLDetails` VALUES (4,'Harsha','harshaprameel@gmail.com','toor','9849681676'),(5,'Hemanth','ambatihemanth00@gmail.com','root','9998887776'),(6,'Ash','travelagency987@gmail.com','root','9988775522');
/*!40000 ALTER TABLE `RLDetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-23 20:04:17
