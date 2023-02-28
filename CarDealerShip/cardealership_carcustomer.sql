-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cardealership
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carcustomer`
--

DROP TABLE IF EXISTS `carcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carcustomer` (
  `custId` int NOT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `areaCode` varchar(3) DEFAULT NULL,
  `phoneNumber` varchar(7) DEFAULT NULL,
  `driversLicNo` varchar(13) DEFAULT NULL,
  `referredBy` varchar(50) DEFAULT NULL,
  `adSeen` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carcustomer`
--

LOCK TABLES `carcustomer` WRITE;
/*!40000 ALTER TABLE `carcustomer` DISABLE KEYS */;
INSERT INTO `carcustomer` VALUES (1,'Billy','Bob',NULL,NULL,NULL,NULL,NULL,'7958844',NULL,NULL,NULL),(2,'Jennifer','Lopez',NULL,NULL,NULL,NULL,NULL,'4488344',NULL,NULL,NULL),(3,'Johnny','Appleseed',NULL,NULL,NULL,NULL,NULL,'2091845',NULL,NULL,NULL),(4,'Juan','Lilly',NULL,NULL,NULL,NULL,NULL,'7958844',NULL,NULL,NULL),(5,'Brando','Webby',NULL,NULL,NULL,NULL,NULL,'7958844',NULL,NULL,NULL),(6,'Brandon','Webbsy',NULL,NULL,NULL,'33333',NULL,'7958834',NULL,NULL,NULL),(7,'Brose','Hong',NULL,NULL,NULL,'23999',NULL,'7958874',NULL,NULL,NULL),(8,'Angel','List',NULL,NULL,NULL,'19999',NULL,'7932244',NULL,NULL,NULL);
/*!40000 ALTER TABLE `carcustomer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 12:11:00
