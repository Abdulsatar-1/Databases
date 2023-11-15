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
-- Table structure for table `car_sold`
--

DROP TABLE IF EXISTS `car_sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_sold` (
  `Vehicle_Identification_Number` int NOT NULL,
  `Price_sold` int NOT NULL,
  `Sold_on` date NOT NULL,
  `Sold_by` int NOT NULL,
  `Customer_id` int DEFAULT NULL,
  PRIMARY KEY (`Vehicle_Identification_Number`),
  UNIQUE KEY `Vehicle_Identification_Number` (`Vehicle_Identification_Number`),
  KEY `fk_cust_num` (`Customer_id`),
  KEY `FK_salesman` (`Sold_by`),
  KEY `SoldBy_CustomerId` (`Sold_by`,`Customer_id`),
  CONSTRAINT `carsold_csvin_vin` FOREIGN KEY (`Vehicle_Identification_Number`) REFERENCES `car_detail` (`Vehicle_Identification_Number`),
  CONSTRAINT `fk_cust_num` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `FK_salesman` FOREIGN KEY (`Sold_by`) REFERENCES `salesman` (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_sold`
--

LOCK TABLES `car_sold` WRITE;
/*!40000 ALTER TABLE `car_sold` DISABLE KEYS */;
INSERT INTO `car_sold` VALUES (1,199999,'2017-11-17',15,9),(2,1000,'2017-12-25',15,2),(3,1000,'2017-12-25',15,3),(4,10000,'2017-12-05',14,1),(6,1000,'2017-12-08',15,2),(7,16500,'2016-12-19',14,1),(8,23405,'2017-11-01',14,7),(9,21304,'2016-02-12',15,6),(11,9999,'2015-09-18',15,2),(12,114000,'2017-04-01',16,3),(13,38952,'2017-10-20',16,4),(14,12999,'2010-08-11',17,5),(15,37875,'2017-11-01',18,7);
/*!40000 ALTER TABLE `car_sold` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `afterCarSold` AFTER INSERT ON `car_sold` FOR EACH ROW BEGIN
Declare commision Decimal(24,4);
Declare curCom Decimal(24,4);
select (calculateCommission( NEW.Sold_by,NEW.Price_sold)) into commision from dual;
select Commission_Earned.commission into curCom from Commission_Earned where Commission_Earned.salesman_id=NEW.Sold_by;

IF curCom is not null Then
Update Commission_Earned 
Set Commission_Earned.commission=curCom+commision
Where salesman_id=NEW.Sold_by;
Else
insert into `Commission_Earned`(`commission`,`salesman_id`) values (commision, NEW.Sold_by);
END if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 12:12:28
