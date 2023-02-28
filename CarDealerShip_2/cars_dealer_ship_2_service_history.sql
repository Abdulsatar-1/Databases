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
-- Table structure for table `service_history`
--

DROP TABLE IF EXISTS `service_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_history` (
  `Vehicle_Identification_Number` int NOT NULL,
  `Service_Date` date NOT NULL,
  `Invoice_ID` int NOT NULL AUTO_INCREMENT,
  `Price` decimal(20,0) DEFAULT NULL,
  `Serviced_by` int NOT NULL,
  `service_id` int NOT NULL,
  `Customer_id` int DEFAULT NULL,
  PRIMARY KEY (`Invoice_ID`),
  KEY `fk_sh_vin` (`Vehicle_Identification_Number`),
  KEY `fk_sh_sb` (`Serviced_by`),
  KEY `Service_History_fk_4` (`service_id`),
  KEY `fk_cust_id` (`Customer_id`),
  KEY `ServiceId_His` (`service_id`),
  KEY `ServiceBy_His` (`Serviced_by`),
  KEY `VIN_His` (`Vehicle_Identification_Number`),
  CONSTRAINT `fk_cust_id` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `Service_History_fk_4` FOREIGN KEY (`service_id`) REFERENCES `service_list` (`service_id`),
  CONSTRAINT `Service_History_ibfk_1` FOREIGN KEY (`Vehicle_Identification_Number`) REFERENCES `car_sold` (`Vehicle_Identification_Number`),
  CONSTRAINT `Service_History_ibfk_2` FOREIGN KEY (`Serviced_by`) REFERENCES `serviceman` (`serviceman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_history`
--

LOCK TABLES `service_history` WRITE;
/*!40000 ALTER TABLE `service_history` DISABLE KEYS */;
INSERT INTO `service_history` VALUES (7,'2017-11-01',1,200,8,1,1),(7,'2017-02-12',2,30,9,2,1),(7,'2017-06-05',3,500,8,3,1),(7,'2017-10-19',4,20,9,4,1),(9,'2017-07-07',5,200,10,5,6),(9,'2017-04-15',6,800,11,3,6),(11,'2016-05-11',7,20,12,2,2),(11,'2017-08-12',8,40,13,6,2),(12,'2017-10-31',9,50,13,6,3),(13,'2017-10-31',10,20,11,7,4),(14,'2011-01-20',11,370,9,8,5),(14,'2012-02-28',12,20,10,4,5),(14,'2013-10-31',13,700,13,9,5),(14,'2014-07-11',14,400,12,3,5),(14,'2015-03-14',15,20,11,4,5),(14,'2016-07-07',16,380,13,9,5),(15,'2017-11-04',17,20,12,4,7),(8,'2017-11-05',18,15,11,4,7),(7,'2017-12-03',19,100,10,5,1),(2,'2017-12-31',20,100,8,1,2);
/*!40000 ALTER TABLE `service_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 12:12:27
