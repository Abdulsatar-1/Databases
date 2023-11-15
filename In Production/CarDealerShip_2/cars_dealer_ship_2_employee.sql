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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Emp_id` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SSN` varchar(20) NOT NULL,
  `Salary` int DEFAULT NULL,
  `Hours_per_week` int DEFAULT NULL,
  `Status` enum('Working','Fired') DEFAULT 'Working',
  PRIMARY KEY (`Emp_id`),
  UNIQUE KEY `Emp_Id` (`Emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Michael','Duke','Scott','michaelscott@cars.com','123456789',50000,40,'Working'),(2,'Cameron','Jerrell','Newton','cameronnewton@cars.com','132465798',42000,45,'Working'),(3,'Jack','Sean','Dorsett','jackdorsett@cars.com','963258741',28000,40,'Working'),(4,'Peter','Mac','Jackson','peterjackson@cars.com','987654321',35000,40,'Working'),(5,'David','Sean','Harris','davidharris@cars.com','1092837456',31000,40,'Working'),(6,'Han','Andy','Zhang','hanzhang@cars.com','1056924738',46000,40,'Working'),(7,'Luke','Matthew','Kuechly','lukekuechly@cars.com','6574839201',40000,45,'Working'),(8,'Michael','Jim','Smith','michaelsmith@cars.com','84769876',36700,40,'Working'),(9,'Todd','Dob','Vez','toddvez@cars.com','11119956',28960,35,'Working'),(10,'Ben','Sean','Stone','benstone@cars.com','54250172',33000,40,'Working'),(11,'Sean','Nick','Toon','seantoon@cars.com','12135012',35000,40,'Working'),(12,'Mike','Dean','Ditka','mikeditka@cars.com','19736874',38000,45,'Working'),(13,'Marty','McFly','Williams','martywilliams@cars.com','19687201',40000,45,'Working'),(14,'Thomas','Peter','Davis','thomasdavis@cars.com','48979875',40000,40,'Working'),(15,'Kawann','Warwick','Short','kawannshort@cars.com','48960986',38000,40,'Working'),(16,'Kurt','Don','Von','kurtvon@cars.com','11112119',39000,40,'Working'),(17,'Josh','Vick','Dunn','joshdunn@cars.com','10220111',39000,40,'Working'),(18,'Mike','Peter','Griffin','mikegriffin@cars.com','20330245',40000,40,'Working'),(19,'Sharat','C','Vyas','svyas7@uncc.edu','11024322486',65000,40,'Fired'),(20,'Ron','Riverboat','Rivera','riverboat@gmail.com','19517674',45000,35,'Working'),(21,'Christian','C','McCaffery','chris@gmail.com','16189235',56000,40,'Working'),(22,'Jason','Charles','Smith','jason@yahoo.com','9628349028',38000,39,'Working');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 12:12:26
