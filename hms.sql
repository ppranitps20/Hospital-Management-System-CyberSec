-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hms
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','123456','28-12-2016 11:42:05 AM');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (5,'Dentist',9,9,800,'2018-04-24','12:15 PM','2018-04-20 06:47:48',1,1,''),(6,'Gynecologist/Obstetrician',8,7,1000,'2018-04-24','12:30 PM','2018-04-20 06:49:24',1,1,'');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (3,'General Physician','Pranit Pawar','Thane','1200',8523699999,'ppranitps20@gmail.com','f925916e2754e5e03f75dd58a5733251','2017-01-07 07:43:35',''),(8,'Gynecologist/Obstetrician','Aditya Nain','Yamunanagar','1000',8295654079,'cypherphage@gmail.com','5ec6e66466e262ed0ec9e036d224aa36','2018-04-19 08:01:30',''),(9,'Dentist','Sachin Sharma','Najafgarh','800',8394268391,'sachin@gmail.com','585c08e5b9b4b2bdad35f20a2e14dbfb','2018-04-20 06:41:54','');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorslog`
--

DROP TABLE IF EXISTS `doctorslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorslog`
--

LOCK TABLES `doctorslog` WRITE;
/*!40000 ALTER TABLE `doctorslog` DISABLE KEYS */;
INSERT INTO `doctorslog` VALUES (10,0,'cypherphage@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-19 08:02:11','',0),(11,8,'cypherphage@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-19 08:02:26','',1),(12,8,'cypherphage@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-19 08:05:01','',1),(13,8,'cypherphage@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-20 06:32:11','',1),(14,0,'sachin@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-20 06:40:04','',0),(15,9,'sachin@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-20 06:42:11','',1),(16,8,'cypherphage@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-20 06:49:48','',1);
/*!40000 ALTER TABLE `doctorslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorspecilization`
--

DROP TABLE IF EXISTS `doctorspecilization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorspecilization`
--

LOCK TABLES `doctorspecilization` WRITE;
/*!40000 ALTER TABLE `doctorspecilization` DISABLE KEYS */;
INSERT INTO `doctorspecilization` VALUES (1,'Gynecologist/Obstetrician','2016-12-28 06:37:25',''),(2,'General Physician','2016-12-28 06:38:12',''),(3,'Dermatologist','2016-12-28 06:38:48',''),(4,'Homeopath','2016-12-28 06:39:26',''),(5,'Ayurveda','2016-12-28 06:39:51',''),(6,'Dentist','2016-12-28 06:40:08','');
/*!40000 ALTER TABLE `doctorspecilization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES (15,6,'apoorvbhardwaj@st.niituniversity.in','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-19 08:04:10','19-04-2018 01:34:40 PM',1),(16,7,'apoorvbhardwaj@st.niituniversity.in','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-20 06:38:28','',1),(17,7,'apoorvbhardwaj@st.niituniversity.in','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-20 06:49:08','',1),(18,0,'apoorv.bhardwaj@st.niituniversity.in','192.168.43.27\0\0\0','2018-04-20 06:55:26','',0),(19,7,'apoorvbhardwaj@st.niituniversity.in','192.168.43.27\0\0\0','2018-04-20 06:55:46','',1);
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'Apoorv Bhardwaj','center of the multiverse','neemrana','confused','apoorvbhardwaj@st.niituniversity.in','4af983668e239547ed8753d459999f11','2018-04-20 06:38:05','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-26 15:08:13
