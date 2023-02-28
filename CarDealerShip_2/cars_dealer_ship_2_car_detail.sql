-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cars_dealer_ship_2
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
-- Table structure for table `car_detail`
--

DROP TABLE IF EXISTS `car_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_detail` (
  `Vehicle_Identification_Number` int NOT NULL,
  `YEAR` date NOT NULL,
  `Model` varchar(20) DEFAULT NULL,
  `Mileage` decimal(9,2) DEFAULT NULL,
  `Car_condition` enum('New','Used') NOT NULL,
  `Added_by` int NOT NULL,
  PRIMARY KEY (`Vehicle_Identification_Number`),
  UNIQUE KEY `Vehicle_Identification_Number` (`Vehicle_Identification_Number`),
  KEY `fk_car` (`Added_by`),
  KEY `Car_Condition` (`Car_condition`),
  CONSTRAINT `Car_Detail_ibfk_1` FOREIGN KEY (`Added_by`) REFERENCES `inventory_manager` (`inventory_manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_detail`
--

LOCK TABLES `car_detail` WRITE;
/*!40000 ALTER TABLE `car_detail` DISABLE KEYS */;
INSERT INTO `car_detail` VALUES (1,'2018-01-01','i8',0.00,'New',2),(2,'2017-01-01','AMG-GT',0.00,'New',4),(3,'2016-01-01','RS5',0.00,'New',3),(4,'2015-01-01','Granturismo',0.00,'New',4),(5,'2017-01-01','Escalade',0.00,'New',3),(6,'2018-01-01','750i xDrive',0.00,'New',3),(7,'2016-01-01','325ci',25000.00,'Used',3),(8,'2012-01-01','A7',125000.00,'Used',3),(9,'2010-01-01','911',103345.00,'Used',2),(10,'2017-01-01','911',0.00,'New',4),(11,'2013-01-01','Santa Fe',45567.00,'Used',2),(12,'2017-01-01','Model X 100D',0.00,'New',2),(13,'2015-01-01','Model S 70D',41938.00,'Used',4),(14,'1997-01-01','Corvette',76812.00,'Used',4),(15,'2017-01-01','Model 3',0.00,'New',2),(16,'1958-01-01','California',103345.00,'Used',2),(17,'1923-01-01','Model J',165000.00,'Used',4),(34,'2017-12-01','GL-450',0.00,'New',2),(76,'2017-12-05','x5',0.00,'New',2);
/*!40000 ALTER TABLE `car_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 12:12:28
