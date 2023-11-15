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
-- Temporary view structure for view `viewinventory`
--

DROP TABLE IF EXISTS `viewinventory`;
/*!50001 DROP VIEW IF EXISTS `viewinventory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewinventory` AS SELECT 
 1 AS `Car`,
 1 AS `Car_condition`,
 1 AS `Price`,
 1 AS `Description`,
 1 AS `Features`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewemployees`
--

DROP TABLE IF EXISTS `viewemployees`;
/*!50001 DROP VIEW IF EXISTS `viewemployees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewemployees` AS SELECT 
 1 AS `EmployeeID`,
 1 AS `Name`,
 1 AS `Email`,
 1 AS `SSN`,
 1 AS `Salary`,
 1 AS `Hours_per_week`,
 1 AS `Role`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewnewinventory`
--

DROP TABLE IF EXISTS `viewnewinventory`;
/*!50001 DROP VIEW IF EXISTS `viewnewinventory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewnewinventory` AS SELECT 
 1 AS `Car`,
 1 AS `Car_condition`,
 1 AS `Price`,
 1 AS `Description`,
 1 AS `Features`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewusedinventory`
--

DROP TABLE IF EXISTS `viewusedinventory`;
/*!50001 DROP VIEW IF EXISTS `viewusedinventory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewusedinventory` AS SELECT 
 1 AS `Car`,
 1 AS `Car_condition`,
 1 AS `Price`,
 1 AS `Description`,
 1 AS `Features`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewcustlist`
--

DROP TABLE IF EXISTS `viewcustlist`;
/*!50001 DROP VIEW IF EXISTS `viewcustlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewcustlist` AS SELECT 
 1 AS `Name`,
 1 AS `Email`,
 1 AS `Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `viewinventory`
--

/*!50001 DROP VIEW IF EXISTS `viewinventory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdilly`@`%` SQL SECURITY INVOKER */
/*!50001 VIEW `viewinventory` AS select concat(year(`cd`.`YEAR`),' ',`m`.`make_name`,' ',`cd`.`Model`) AS `Car`,`cd`.`Car_condition` AS `Car_condition`,`i`.`Price` AS `Price`,`i`.`Description` AS `Description`,group_concat(concat(`fl`.`feature_name`) separator ',') AS `Features` from ((((`car_detail` `cd` join `inventory` `i` on((`cd`.`Vehicle_Identification_Number` = `i`.`Vehicle_Identification_Number`))) left join `makemodel` `m` on((`m`.`model_name` = `cd`.`Model`))) left join `car_features` `cf` on((`cd`.`Vehicle_Identification_Number` = `cf`.`VIN`))) left join `feature_list` `fl` on((`fl`.`feature_id` = `cf`.`feature_id`))) group by `cd`.`Vehicle_Identification_Number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewemployees`
--

/*!50001 DROP VIEW IF EXISTS `viewemployees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdilly`@`%` SQL SECURITY INVOKER */
/*!50001 VIEW `viewemployees` AS select `e`.`Emp_id` AS `EmployeeID`,concat(`e`.`First_Name`,' ',`e`.`Last_Name`) AS `Name`,`e`.`Email` AS `Email`,`e`.`SSN` AS `SSN`,`e`.`Salary` AS `Salary`,`e`.`Hours_per_week` AS `Hours_per_week`,(case when `e`.`Emp_id` in (select `dealership_manager`.`dealership_manager_id` from `dealership_manager`) then 'Dealership Manager' when `e`.`Emp_id` in (select `inventory_manager`.`inventory_manager_id` from `inventory_manager`) then 'Inventory Manager' when `e`.`Emp_id` in (select `service_manager`.`service_manager_id` from `service_manager`) then 'Service Manager' when `e`.`Emp_id` in (select `serviceman`.`serviceman_id` from `serviceman`) then 'Serviceman' when `e`.`Emp_id` in (select `salesman`.`salesman_id` from `salesman`) then 'Salesman' end) AS `Role` from `employee` `e` where (`e`.`Status` = 'Working') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewnewinventory`
--

/*!50001 DROP VIEW IF EXISTS `viewnewinventory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdilly`@`%` SQL SECURITY INVOKER */
/*!50001 VIEW `viewnewinventory` AS select concat(year(`cd`.`YEAR`),' ',`m`.`make_name`,' ',`cd`.`Model`) AS `Car`,`cd`.`Car_condition` AS `Car_condition`,`i`.`Price` AS `Price`,`i`.`Description` AS `Description`,group_concat(concat(`fl`.`feature_name`) separator ',') AS `Features` from ((((`car_detail` `cd` join `inventory` `i` on((`cd`.`Vehicle_Identification_Number` = `i`.`Vehicle_Identification_Number`))) left join `makemodel` `m` on((`m`.`model_name` = `cd`.`Model`))) left join `car_features` `cf` on((`cd`.`Vehicle_Identification_Number` = `cf`.`VIN`))) left join `feature_list` `fl` on((`fl`.`feature_id` = `cf`.`feature_id`))) where (`cd`.`Car_condition` = 'New') group by `cd`.`Vehicle_Identification_Number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewusedinventory`
--

/*!50001 DROP VIEW IF EXISTS `viewusedinventory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdilly`@`%` SQL SECURITY INVOKER */
/*!50001 VIEW `viewusedinventory` AS select concat(year(`cd`.`YEAR`),' ',`m`.`make_name`,' ',`cd`.`Model`) AS `Car`,`cd`.`Car_condition` AS `Car_condition`,`i`.`Price` AS `Price`,`i`.`Description` AS `Description`,group_concat(concat(`fl`.`feature_name`) separator ',') AS `Features` from ((((`car_detail` `cd` join `inventory` `i` on((`cd`.`Vehicle_Identification_Number` = `i`.`Vehicle_Identification_Number`))) left join `makemodel` `m` on((`m`.`model_name` = `cd`.`Model`))) left join `car_features` `cf` on((`cd`.`Vehicle_Identification_Number` = `cf`.`VIN`))) left join `feature_list` `fl` on((`fl`.`feature_id` = `cf`.`feature_id`))) where (`cd`.`Car_condition` = 'Used') group by `cd`.`Vehicle_Identification_Number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewcustlist`
--

/*!50001 DROP VIEW IF EXISTS `viewcustlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdilly`@`%` SQL SECURITY INVOKER */
/*!50001 VIEW `viewcustlist` AS select concat(`customer`.`First_Name`,' ',`customer`.`Last_Name`) AS `Name`,`customer`.`Email` AS `Email`,concat(`customer`.`Addr_Line1`,' ',`customer`.`City`,', ',`customer`.`State`,' ',`customer`.`ZIP`) AS `Address` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'cars_dealer_ship_2'
--

--
-- Dumping routines for database 'cars_dealer_ship_2'
--
/*!50003 DROP FUNCTION IF EXISTS `calculateCommission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` FUNCTION `calculateCommission`(`salesmanid` INT(100), `price_sold` INT(20)) RETURNS decimal(24,4)
    DETERMINISTIC
    SQL SECURITY INVOKER
BEGIN
	DECLARE commission_percent Decimal(4,2);
	DECLARE commission1 DECIMAL(24,4);
	set commission1 = 0;
	set commission_percent = 0;
	select `commission_percentage` into commission_percent from `Salesman` where `salesman_id` = salesmanid;
	select `commission` into commission1 from Commission_Earned where `salesman_id` =  salesmanid;
	set commission1=commission_percent*price_sold;
	RETURN (commission1/100);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddFeatureToCar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `AddFeatureToCar`(IN `vin` INT(20), IN `feature` INT(100))
    SQL SECURITY INVOKER
BEGIN

INSERT INTO `Car_Features`(`VIN`, `feature_id`) VALUES (vin,feature);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `AddInventory`(IN `makename` VARCHAR(20), IN `modelname` VARCHAR(20), IN `vin` INT(20), IN `carcondition` ENUM('New','Used'), IN `miles` DECIMAL(10), IN `addedby` INT(20), IN `time` DATETIME, IN `cardescription` VARCHAR(10), IN `carprice` INT(20))
    SQL SECURITY INVOKER
BEGIN

IF Exists(Select * from MakeModel where MakeModel.model_name=modelname) Then

INSERT INTO `Car_Detail`(`Vehicle_Identification_Number`, `YEAR`, `Model`, `Mileage`, `Car_condition`, `Added_by`) 
VALUES (vin,time,modelname,miles,carcondition,addedby);
INSERT INTO `Inventory`(`Vehicle_Identification_Number`, `Price`, `Description`) 
VALUES (vin,carprice,cardescription);

Else


INSERT INTO `MakeModel`(`model_name`, `make_name`) VALUES (modelname,makename);
INSERT INTO `Car_Detail`(`Vehicle_Identification_Number`, `YEAR`, `Model`, `Mileage`, `Car_condition`, `Added_by`) 
VALUES (vin,time,modelname,miles,carcondition,addedby);
INSERT INTO `Inventory`(`Vehicle_Identification_Number`, `Price`, `Description`) 
VALUES (vin,carprice,cardescription);

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddInvMan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `AddInvMan`(IN `first` VARCHAR(20), IN `mid` VARCHAR(20), IN `last` VARCHAR(20), IN `sal` INT(100), IN `social` VARCHAR(100), IN `ema` VARCHAR(20), IN `hpw` INT(10), IN `comm` INT(10))
    SQL SECURITY INVOKER
BEGIN

Select @num := (MAX(Emp_id) + 1) From Employee;
INSERT INTO `Employee`(`Emp_id`, `First_Name`, `Middle_Name`, `Last_Name`, `Email`, `SSN`, `Salary`, `Hours_per_week`) VALUES (@num,first,mid,last,ema,social,sal,hpw);

Insert into Inventory_Manager(commission_percentage,inventory_manager_id,Reports_to)
Values (comm,@num,1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddSalesman` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `AddSalesman`(IN `first` VARCHAR(20), IN `mid` VARCHAR(20), IN `last` VARCHAR(20), IN `sal` INT(100), IN `social` VARCHAR(100), IN `ema` VARCHAR(20), IN `hpw` INT(10), IN `comm` INT(10), IN `rep` INT(10))
    SQL SECURITY INVOKER
BEGIN

Select @num := (MAX(Emp_id) + 1) From Employee;
INSERT INTO `Employee`(`Emp_id`, `First_Name`, `Middle_Name`, `Last_Name`, `Email`, `SSN`, `Salary`, `Hours_per_week`) VALUES (@num,first,mid,last,ema,social,sal,hpw);

Insert into Salesman(commission_percentage,salesman_id,Reports_to)
Values (comm,@num,rep);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddServiceMan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `AddServiceMan`(IN `first` VARCHAR(20), IN `mid` VARCHAR(20), IN `last` VARCHAR(20), IN `sal` INT(100), IN `social` VARCHAR(100), IN `ema` VARCHAR(20), IN `hpw` INT(10), IN `reports` INT(10))
    SQL SECURITY INVOKER
BEGIN

Select @num := (MAX(Emp_id) + 1) From Employee;
INSERT INTO `Employee`(`Emp_id`, `First_Name`, `Middle_Name`, `Last_Name`, `Email`, `SSN`, `Salary`, `Hours_per_week`) VALUES (@num,first,mid,last,ema,social,sal,hpw);

Insert into Serviceman(serviceman_id,Reports_to)
Values (@num,reports);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddServManager` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `AddServManager`(IN `first` VARCHAR(20), IN `mid` VARCHAR(20), IN `last` VARCHAR(20), IN `sal` INT(100), IN `social` VARCHAR(100), IN `ema` VARCHAR(20), IN `hpw` INT(10))
    SQL SECURITY INVOKER
BEGIN

Select @num := (MAX(Emp_id) + 1) From Employee;
INSERT INTO `Employee`(`Emp_id`, `First_Name`, `Middle_Name`, `Last_Name`, `Email`, `SSN`, `Salary`, `Hours_per_week`) VALUES (@num,first,mid,last,ema,social,sal,hpw);

Insert into Service_Manager(service_manager_id,Reports_to)
Values (@num,1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuyCar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `BuyCar`(IN `car_vin` INT(100), IN `cust_id` INT(10), IN `pricesold` INT(20), IN `selldate` DATE, IN `salesman_id` INT(100))
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
BEGIN
	DECLARE price1 INT;
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	Begin
	Show errors;
	End;


	Select `Price` into price1 from `Inventory` where `Vehicle_Identification_Number` = car_vin;
    
    IF pricesold <= price1 then
    Delete from `Car_Features` Where `VIN`=car_vin;
    Delete from `Inventory` Where `Vehicle_Identification_Number` = car_vin;
    Insert into `Car_sold`(`Vehicle_Identification_Number`, `Price_sold`, `Sold_on`, `Sold_by`, `Customer_id`) 
	VALUES (car_vin,pricesold,selldate,salesman_id,cust_id);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FireEmployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `FireEmployee`(IN `empid` INT(20))
    SQL SECURITY INVOKER
BEGIN

Update Employee e
set Status = 'Fired'
Where e.Emp_id=empid;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCarServiceHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `GetCarServiceHistory`(IN `car_vin` INT(100))
    SQL SECURITY INVOKER
BEGIN
	Select Invoice_ID as InvoiceNumber, concat(Year(YEAR),' ',m.make_name,' ',cd.Model) as Car, s.service_name as Service, Price, Service_Date, Concat(First_Name,' ',Last_Name) as 	Serviceman from Service_History	
Inner Join Employee e on e.Emp_id=Service_History.Serviced_by
Inner Join Service_List s on s.service_id=Service_History.service_id
Inner Join Car_Detail cd on cd.Vehicle_Identification_Number= Service_History.Vehicle_Identification_Number
Left Join MakeModel m on m.model_name=cd.Model
Where Service_History.Vehicle_Identification_Number = car_vin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCarSoldInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `GetCarSoldInfo`(IN `car_vin` INT(20))
    SQL SECURITY INVOKER
BEGIN
  SELECT m.make_name as Make,Model,Price_sold,Concat(e.First_name, ' ',e.Last_name) as Salesman,Sold_on,Concat(c.First_Name,' ',c.Last_Name) as Customer FROM Car_sold
	Inner join Car_Detail on Car_Detail.Vehicle_Identification_Number=Car_sold.Vehicle_Identification_Number
	Inner join Employee e on e.Emp_id=Car_sold.Sold_by
	Inner join Customer c on c.customer_id=Car_sold.Customer_id
	Left Join MakeModel m on m.model_name=Car_Detail.Model
	Where Car_sold.Vehicle_Identification_Number = car_vin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomerPurchaseHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `GetCustomerPurchaseHistory`(IN `cust_id` INT(20))
    SQL SECURITY INVOKER
BEGIN
  SELECT m.make_name as Make,Model,Price_sold,Concat(e.First_name, ' ',e.Last_name) as Salesman,Sold_on,Concat(c.First_Name,' ',c.Last_Name) as Customer FROM Car_sold
	Inner join Car_Detail on Car_Detail.Vehicle_Identification_Number=Car_sold.Vehicle_Identification_Number
	Inner join Employee e on e.Emp_id=Car_sold.Sold_by
	Inner join Customer c on c.customer_id=Car_sold.Customer_id
	Left join MakeModel m on m.model_name=Car_Detail.Model
	Where Car_sold.Customer_id = cust_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomerServiceHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `GetCustomerServiceHistory`(IN `cust_id` INT(10))
    SQL SECURITY INVOKER
BEGIN
Select Invoice_ID as InvoiceNumber, concat(Year(YEAR),' ',m.make_name,' ',cd.Model) as Car, s.service_name as Service, Price, Service_Date, Concat(First_Name,' ',Last_Name) as Serviceman from Service_History						 
Inner Join Employee e on e.Emp_id=Service_History.Serviced_by
Inner Join Service_List s on s.service_id=Service_History.service_id
Inner Join Car_Detail cd on cd.Vehicle_Identification_Number= Service_History.Vehicle_Identification_Number
Left Join MakeModel m on m.model_name=cd.Model
Where Customer_id = cust_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSpecificInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `GetSpecificInventory`(IN `car_vin` INT(20))
    SQL SECURITY INVOKER
BEGIN
   SELECT YEAR,m.make_name as Make,Model,Description,Price,Added_by FROM Inventory
	Inner join Car_Detail on 	Car_Detail.Vehicle_Identification_Number=Inventory.Vehicle_Identification_Number
	Left join MakeModel m on m.model_name=Car_Detail.Model
	Where Inventory.Vehicle_Identification_Number = car_vin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RegisterCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `RegisterCustomer`(IN `first` VARCHAR(50), IN `mid` VARCHAR(50), IN `last` VARCHAR(50), IN `em` VARCHAR(50), IN `a1` VARCHAR(100), IN `a2` VARCHAR(100), IN `ci` VARCHAR(50), IN `st` VARCHAR(50), IN `zi` VARCHAR(20))
    NO SQL
    SQL SECURITY INVOKER
BEGIN
  	INSERT INTO `Customer`(`First_Name`, `Middle_Name`, `Last_Name`, `Email`, `Addr_Line1`, `Addr_Line2`, `City`, `State`, `ZIP`) VALUES 
	(first,mid,last,em,a1,a2,ci,st,zi);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateServiceHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`sdilly`@`%` PROCEDURE `UpdateServiceHistory`(IN `car_vin` INT(11), IN `date` DATE, IN `cost` DECIMAL(20,0), IN `servicedby` INT(20), IN `serviceid` INT(10), IN `cust_id` INT(10))
    SQL SECURITY INVOKER
BEGIN

INSERT INTO Service_History(`Vehicle_Identification_Number`, `Service_Date`, `Price`, `Serviced_by`, `service_id`, `Customer_id`) 
VALUES 
(car_vin,date,cost,servicedby,serviceid,cust_id);
 
END ;;
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
