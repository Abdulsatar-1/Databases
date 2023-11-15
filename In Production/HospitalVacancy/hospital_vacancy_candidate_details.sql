-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_vacancy
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
-- Table structure for table `candidate_details`
--

DROP TABLE IF EXISTS `candidate_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_details` (
  `Candidate_Identifier` int NOT NULL,
  `Firstname` varchar(45) NOT NULL,
  `Surname` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Telephone_Number` varchar(45) NOT NULL,
  `Skills_Ref` int NOT NULL,
  PRIMARY KEY (`Candidate_Identifier`),
  KEY `Candidate Identifier_idx` (`Candidate_Identifier`),
  KEY `CandidateSkills_idx` (`Skills_Ref`),
  CONSTRAINT `CandidateSkills` FOREIGN KEY (`Skills_Ref`) REFERENCES `candidate_skills` (`Skill_Ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_details`
--

LOCK TABLES `candidate_details` WRITE;
/*!40000 ALTER TABLE `candidate_details` DISABLE KEYS */;
INSERT INTO `candidate_details` VALUES (1,'Mark','Markus','123 Fake Street','0865592369',20),(2,'Dave','Daveson','123 Flake Street','0865592368',21),(3,'Mick','Mickson','123 Rake Street','0865592367',22),(4,'Carl','Carlson','123 Make Street','0865592366',23),(5,'Ding','Dingson','123 Snake Street','0865592365',24),(6,'Smock','Smockson','123 Drake Street','0865592364',25),(7,'Penson','Pen','123 Faker Street','0865592363',26),(8,'Ruaile','Buaile','123 Real Street','0865592362',27),(9,'Heir','Heirson','123 Maker Street','0865592361',28),(10,'Smoothie','Rama','123 Sake Street','0865592360',29);
/*!40000 ALTER TABLE `candidate_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 10:57:16
