-- MySQL dump 10.13  Distrib 5.5.22, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: rackermap
-- ------------------------------------------------------
-- Server version	5.5.22-0ubuntu1

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_point`
--

DROP TABLE IF EXISTS `area_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_point` (
  `id` int(11) NOT NULL DEFAULT '0',
  `area_id` int(11) DEFAULT NULL,
  `point_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`),
  KEY `point_id` (`point_id`),
  CONSTRAINT `area_point_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `area_point_ibfk_2` FOREIGN KEY (`point_id`) REFERENCES `point` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_point`
--

LOCK TABLES `area_point` WRITE;
/*!40000 ALTER TABLE `area_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `area_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `czar`
--

DROP TABLE IF EXISTS `czar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `czar` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czar`
--

LOCK TABLES `czar` WRITE;
/*!40000 ALTER TABLE `czar` DISABLE KEYS */;
/*!40000 ALTER TABLE `czar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_metadata`
--

DROP TABLE IF EXISTS `image_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_metadata` (
  `id` int(11) NOT NULL,
  `path` varchar(300) DEFAULT NULL,
  `image_type` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_metadata`
--

LOCK TABLES `image_metadata` WRITE;
/*!40000 ALTER TABLE `image_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_mark`
--

DROP TABLE IF EXISTS `land_mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `land_mark` (
  `id` int(11) NOT NULL,
  `catagory` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `centerpoint_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `centerpoint_id` (`centerpoint_id`),
  CONSTRAINT `land_mark_ibfk_1` FOREIGN KEY (`centerpoint_id`) REFERENCES `point` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_mark`
--

LOCK TABLES `land_mark` WRITE;
/*!40000 ALTER TABLE `land_mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `land_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point`
--

DROP TABLE IF EXISTS `point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point` (
  `id` int(11) NOT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point`
--

LOCK TABLES `point` WRITE;
/*!40000 ALTER TABLE `point` DISABLE KEYS */;
/*!40000 ALTER TABLE `point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printer`
--

DROP TABLE IF EXISTS `printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `ip` int(11) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `make` varchar(200) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  `centerpoint_id` int(11) NOT NULL,
  `copy` varchar(100) DEFAULT NULL,
  `scan` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `bw` varchar(100) DEFAULT NULL,
  `print_only` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `centerpoint_id` (`centerpoint_id`),
  CONSTRAINT `printer_ibfk_1` FOREIGN KEY (`centerpoint_id`) REFERENCES `point` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printer`
--

LOCK TABLES `printer` WRITE;
/*!40000 ALTER TABLE `printer` DISABLE KEYS */;
/*!40000 ALTER TABLE `printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `catagory` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `roomnumber` varchar(100) DEFAULT NULL,
  `ocupancy` varchar(100) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `centerpoint_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `persistant` varchar(100) DEFAULT NULL,
  `vedio_conference` varchar(100) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `centerpoint_id` (`centerpoint_id`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`centerpoint_id`) REFERENCES `point` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_czar`
--

DROP TABLE IF EXISTS `room_czar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_czar` (
  `id` int(11) NOT NULL,
  `czar_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `czar_id` (`czar_id`),
  CONSTRAINT `room_czar_ibfk_1` FOREIGN KEY (`czar_id`) REFERENCES `czar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_czar`
--

LOCK TABLES `room_czar` WRITE;
/*!40000 ALTER TABLE `room_czar` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_czar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `id` int(11) NOT NULL,
  `catagory` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `centerpoint_id` int(11) NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `centerpoint_id` (`centerpoint_id`),
  CONSTRAINT `zone_ibfk_1` FOREIGN KEY (`centerpoint_id`) REFERENCES `point` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-06-15 14:03:12
