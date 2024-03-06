-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 06, 2024 at 01:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `Brand_ID` int(15) NOT NULL,
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`Brand_ID`, `Name`) VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'Ford'),
(4, 'Mercedes-Benz'),
(6, 'Opel'),
(7, 'Skoda'),
(8, 'Toyota'),
(9, 'Volkswagen'),
(10, 'Volvo'),
(11, 'Tesla'),
(12, 'Ferrari'),
(13, 'Land Rover'),
(14, 'GMC'),
(15, 'Cadillac'),
(16, 'Porsche'),
(17, 'Peugeot'),
(18, 'Citroen'),
(19, 'Bentley'),
(20, 'Alfa Romeo'),
(21, 'Fiat'),
(22, 'Lamborghini'),
(23, 'Acura'),
(24, 'Honda'),
(25, 'Hyundai'),
(26, 'Jaguar'),
(27, 'Aston Martin'),
(28, 'Chrysler'),
(29, 'Chevrolet'),
(30, 'Dodge'),
(31, 'Jeep'),
(32, 'Kia'),
(33, 'Lexus'),
(34, 'Mazda'),
(35, 'Mitsubishi'),
(36, 'Mini'),
(37, 'Polestar'),
(38, 'Nissan'),
(39, 'Renault'),
(40, 'Rolls-Royce'),
(41, 'Saab'),
(42, 'Seat');

-- --------------------------------------------------------

--
-- Table structure for table `carfeatures`
--

CREATE TABLE `carfeatures` (
  `VIN` char(50) NOT NULL,
  `Feature_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `carfeatures`
--

INSERT INTO `carfeatures` (`VIN`, `Feature_ID`) VALUES
('YV1SW61R021197119', 7),
('YV1SW61R021197119', 10);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `Row` int(15) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Brand_ID` int(15) NOT NULL,
  `Model` varchar(15) NOT NULL,
  `Model_Spec` varchar(50) DEFAULT NULL,
  `Number_Plate` char(15) NOT NULL,
  `Year` int(15) NOT NULL,
  `Store_ID` int(15) NOT NULL,
  `Gearbox` enum('Manual','Automatic') NOT NULL,
  `Fuel_Type` enum('Petrol','Diesel','Electric','Plug-In Hybrid','Gas') NOT NULL,
  `Mileage` int(15) NOT NULL,
  `Price` int(15) NOT NULL,
  `Type_OF_Car` enum('Person','Van','Minibus','Motorcycle') NOT NULL,
  `Type_OF_Body` enum('Sedan','Hatchback','SUV','Space Car','Farmer') NOT NULL,
  `Draw_Method` enum('4WD','FWD','RWD') NOT NULL,
  `Color` enum('White','Black','Silver','Red','Blue','Yellow','Orange') NOT NULL,
  `Number_Of_Person` int(5) NOT NULL,
  `Number_OF_Doors` int(5) NOT NULL,
  `Power` int(15) NOT NULL,
  `Mass` int(15) NOT NULL,
  `TopSpeed` int(5) NOT NULL,
  `Engine_Capacity` varchar(5) NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`Row`, `VIN`, `Brand_ID`, `Model`, `Model_Spec`, `Number_Plate`, `Year`, `Store_ID`, `Gearbox`, `Fuel_Type`, `Mileage`, `Price`, `Type_OF_Car`, `Type_OF_Body`, `Draw_Method`, `Color`, `Number_Of_Person`, `Number_OF_Doors`, `Power`, `Mass`, `TopSpeed`, `Engine_Capacity`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(2, 'YV1SW61R021197119', 10, 'XC90', NULL, 'VAR-873', 2020, 1, 'Automatic', 'Petrol', 119000, 65000, 'Person', 'SUV', '4WD', 'White', 7, 5, 252, 3500, 250, '3.1', '2024-03-05', '2024-03-06 11:56:17'),
(3, '1D7HA18N38J191236', 1, 'E-tron', NULL, 'JIZ-610', 2020, 2, 'Automatic', 'Petrol', 59000, 116000, 'Person', 'Sedan', '4WD', 'Black', 5, 3, 300, 2100, 300, '2.5', '2024-03-06', '2024-03-06 13:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `carsold`
--

CREATE TABLE `carsold` (
  `Row_ID` int(15) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Sold_By` int(15) NOT NULL,
  `Sold_To` int(15) NOT NULL,
  `Sold_Price` int(15) NOT NULL,
  `Original_Price` int(15) NOT NULL,
  `Sold_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `carsold`
--

INSERT INTO `carsold` (`Row_ID`, `VIN`, `Sold_By`, `Sold_To`, `Sold_Price`, `Original_Price`, `Sold_Date`) VALUES
(2, '1D7HA18N38J191236', 6, 1, 114000, 116000, '2024-03-01'),
(3, 'YV1SW61R021197119', 6, 2, 64500, 65000, '2024-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `Credentilas_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`Credentilas_ID`, `Emp_ID`, `Username`, `Password`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, 6, 'Joona1947', 'ooph8ox9Ae', '2024-03-06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `credentials_logs`
--

CREATE TABLE `credentials_logs` (
  `Row_ID` int(15) NOT NULL,
  `Credentials_ID` int(15) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `credentials_logs`
--

INSERT INTO `credentials_logs` (`Row_ID`, `Credentials_ID`, `Date`) VALUES
(1, 1, '2024-03-03'),
(2, 1, '2024-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(15) NOT NULL,
  `SSN` char(15) NOT NULL,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Nationality` char(15) NOT NULL,
  `Title_OF_Courtesy` enum('Mr.','Ms.','Mrs.') NOT NULL,
  `Phone` char(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PostalCode` char(5) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `SSN`, `F_Name`, `L_Name`, `Gender`, `Nationality`, `Title_OF_Courtesy`, `Phone`, `Email`, `Address`, `PostalCode`, `Date_Of_Birth`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, '090941-1350', 'Veikko', 'Paasio', 'Male', 'Finland', 'Mr.', '042 055 0923', 'VeikkoPaasio@teleworm.us', 'Kluuvikatu 18', '01610', '1941-09-09', '2024-03-06', '2024-03-06 14:28:32'),
(2, '180247-682B', 'Tiina', 'Ojala', 'Female', 'Finland', 'Ms.', '041 619 1968', 'TiinaOjala@teleworm.us', 'Piilostentie 65', '40320', '1947-02-18', '2024-03-06', '2024-03-06 14:29:13'),
(3, '121043-870Y', 'Grace', 'Johnson', 'Female', 'US', 'Ms.', '042 523 8342', 'GraceJohnson@dayrep.com', 'Sahankatu 75', '13130', '1943-10-12', '2024-03-06', '2024-03-06 14:29:07'),
(4, '210660-062V', 'Claudia', 'Bader', 'Female', 'Germany', 'Mrs.', '046 140 0984', 'ClaudiaBader@rhyta.com', 'Kanslerinrinne 35', '02600', '1960-06-10', '2024-03-06', '2024-03-06 14:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Emp_ID` int(15) NOT NULL,
  `SSN` char(15) NOT NULL,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Date_OF_Birth` date NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PostalCode` char(5) NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Reports_To` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Emp_ID`, `SSN`, `F_Name`, `L_Name`, `Gender`, `Phone`, `Email`, `Date_OF_Birth`, `Image`, `Address`, `PostalCode`, `Date_OF_Add`, `Date_OF_Update`, `Reports_To`) VALUES
(6, '241003A159E', 'Joona ', 'Hautaniemi', 'Male', '041 213 8542', 'JoonaHautaniemi@dayrep.com', '2003-10-24', 'u4u46u4uu64uu', 'Keskustie 59', '00100', '2021-03-03', '2024-03-06 13:39:19', NULL),
(7, '270772-3221', 'Katja', 'Berglund', 'Female', '044 780 2773', 'KatjaBerglund@jourrapide.com', '1972-01-27', 'uogfigygoigogougougu', 'Kangasmoisionkatu 49', '00390', '2024-03-06', '2024-03-06 13:40:58', 6);

-- --------------------------------------------------------

--
-- Table structure for table `employee_service_langauge`
--

CREATE TABLE `employee_service_langauge` (
  `Row_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `Langauge` enum('FIN','ENG','EE','RUS','DAR','SPA','DUT','DEU','NOR','SWE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `employee_service_langauge`
--

INSERT INTO `employee_service_langauge` (`Row_ID`, `Emp_ID`, `Langauge`) VALUES
(1, 6, 'FIN'),
(2, 6, 'ENG'),
(3, 7, 'FIN'),
(4, 7, 'ENG'),
(5, 7, 'SWE');

-- --------------------------------------------------------

--
-- Table structure for table `employee_titles`
--

CREATE TABLE `employee_titles` (
  `Emp_ID` int(15) NOT NULL,
  `Title_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `employee_titles`
--

INSERT INTO `employee_titles` (`Emp_ID`, `Title_ID`) VALUES
(6, 5),
(7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `emp_salaries`
--

CREATE TABLE `emp_salaries` (
  `Emp_ID` int(15) NOT NULL,
  `Salary` int(15) NOT NULL,
  `Deal_Comission` int(15) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `emp_salaries`
--

INSERT INTO `emp_salaries` (`Emp_ID`, `Salary`, `Deal_Comission`, `From_Date`, `To_Date`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(6, 4000, 5, '2014-03-01', '2017-03-01', '2014-03-01', '2024-03-06 14:14:38'),
(6, 5600, 7, '2017-03-01', '2024-03-06', '2024-03-06', '2024-03-06 14:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `feature_list`
--

CREATE TABLE `feature_list` (
  `Feature_ID` int(15) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `feature_list`
--

INSERT INTO `feature_list` (`Feature_ID`, `Name`) VALUES
(1, 'Laminoidut äänieristelasit'),
(2, 'Volvo on call'),
(3, 'Vetokoukku irroitettava'),
(4, 'Neliveto'),
(5, 'Navigointijärjestelmä'),
(6, 'Digimittaristo'),
(7, 'Adaptiivinen vakionopeudensäädin'),
(8, 'Pilot assist'),
(9, 'Peruutuskamera'),
(10, 'Aktiivinen kaistavahti'),
(11, 'Nahkaverhoilu'),
(12, 'plug-in latauspistoke Type 2'),
(13, 'Sadetunnistin'),
(14, 'Aktiivinen pysäköintiavustin'),
(15, 'Nopeusrajoitus -tunnistin'),
(16, 'Pysäköintitutka edessä ja takana'),
(17, 'Sähkötoiminen takaluukku'),
(18, 'Automaattivaihteisto'),
(19, 'LED-ajovalot'),
(20, 'Kaarrevalot'),
(21, 'Sumuvalot'),
(22, 'Automaattinen ilmastointi (kaksialueinen)'),
(23, 'Äänentoistojärjestelmä'),
(24, 'Bluetooth handsfree matkapuhelinvarustus audiontoi'),
(25, 'Apple CarPlay & Android Auto'),
(26, 'Automaattisesti himmentyvä taustapeili ja sivupeil'),
(27, 'Nahkaverhoiltu monitoimiohjauspyörä'),
(28, 'Penkinlämmittimet edessä'),
(29, 'Urheiluistuimet'),
(30, 'Sähkösäätöiset istuimet muistilla');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `Row_ID` int(15) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Image_Path` varchar(150) NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Row_ID`, `VIN`, `Image_Path`, `Date_OF_Add`, `Date_OF_Updated`) VALUES
(1, '1D7HA18N38J191236', 'images/cars/1D7HA18N38J191236_1.jpg', '2024-03-06', NULL),
(2, '1D7HA18N38J191236', 'images/cars/1D7HA18N38J191236_2.jpg', '2024-03-06', '2024-03-06 12:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `postalcodes`
--

CREATE TABLE `postalcodes` (
  `PostalCode` char(5) NOT NULL,
  `Region` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `postalcodes`
--

INSERT INTO `postalcodes` (`PostalCode`, `Region`) VALUES
('00100', 'Helsinki'),
('00390', 'Helsinki'),
('00700', 'Helsinki'),
('00880', 'Helsinki'),
('01510', 'Vantaa'),
('01610', 'Vantaa'),
('01720', 'Vantaa'),
('02200', 'Espoo'),
('02300', 'Espoo'),
('02400', 'Kirkkonummi'),
('02600', 'Espoo'),
('02920', 'Espoo'),
('03100', 'Nummela'),
('04300', 'Tuusula'),
('04420', 'Järvenpää'),
('06100', 'Porvoo'),
('13130', 'Hämeenlinna'),
('15610', 'Lahti'),
('15840', 'Hyvinkää'),
('18120', 'Heinola'),
('20320', 'Turku'),
('28360', 'Pori'),
('33400', 'Tampere'),
('37570', 'Lempäälä'),
('40320', 'Jyväskylä'),
('45130', 'Kouvola'),
('53500', 'Lappeenranta'),
('60510', 'Seinäjoki'),
('65300', 'Vaasa'),
('70200', 'Kuopio'),
('80100', 'Joensuu'),
('90100', 'Oulu');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `Store_ID` int(15) NOT NULL,
  `Branch_Store_ID` int(15) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `PostalCode` char(5) NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Image` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`Store_ID`, `Branch_Store_ID`, `Name`, `Address`, `PostalCode`, `Date_OF_Add`, `Date_OF_Update`, `Image`) VALUES
(1, 1, 'SAKA Finland Oy, Herttoniemi', 'Mekaanikonkatu 17', '00880', '2024-03-06', '2024-03-06 12:24:50', NULL),
(2, 2, 'Kamux Helsinki Konala', 'Päiväläisentie 1-6', '00390', '2024-03-06', '2024-03-06 13:07:21', NULL),
(3, 1, 'SAKA Finland Oy, Koskelo', 'Koskelontie 15', '02920', '2024-03-03', '2024-03-06 13:15:11', NULL),
(4, 1, 'SAKA Finland Oy, Konala', 'Päiväläisentie 1-6', '00390', '2024-03-06', '2024-03-06 13:17:37', NULL),
(5, 1, 'SAKA Finland Oy, Hyvinkää', 'Helletorpankatu 31', '15840', '2024-03-06', '2024-03-06 13:17:37', NULL),
(6, 1, 'SAKA Finland Oy, Hämeenlinna', 'Eino Leinon katu 40', '13130', '2024-03-06', '2024-03-06 13:20:38', NULL),
(7, 1, 'SAKA Finland Oy, Joensuu', 'Raatekankaantie 4', '80100', '2024-03-06', '2024-03-06 13:20:38', NULL),
(8, 1, 'SAKA Finland Oy, Jyväskylä', 'Ahjokatu 1', '40320', '2024-03-06', '2024-03-06 13:20:38', NULL),
(9, 1, 'SAKA Finland Oy, Järvenpää', 'Diggarinkatu 10', '04420', '2024-03-06', '2024-03-06 13:20:38', NULL),
(10, 1, 'SAKA Finland Oy, Kirkkonummi', 'Purotie 1', '02400', '2024-03-06', '2024-03-06 13:20:38', NULL),
(11, 2, 'Kamux Espoo Koskelo', 'Koskelontie 19', '02920', '2024-03-05', '2024-03-06 13:25:31', NULL),
(12, 2, 'Kamux Espoo Niittykumpu', 'Riihitontuntie 10-12', '02200', '2024-03-05', '2024-03-06 13:25:31', NULL),
(13, 2, 'Kamux Hyvinkää', 'Avainkierto 17', '15840', '2024-03-05', '2024-03-06 13:25:31', NULL),
(14, 2, 'Kamux Hämeenlinna', 'Parolantie 66 A', '13130', '2024-03-05', '2024-03-06 13:25:31', NULL),
(15, 2, 'Kamux Joensuu', 'Kuurnankatu 14', '80100', '2024-03-05', '2024-03-06 13:25:31', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `storesvechile`
-- (See below for the actual view)
--
CREATE TABLE `storesvechile` (
`VIN` char(50)
,`Number_Plate` char(15)
,`Name` varchar(15)
,`Model` varchar(15)
,`Model_Spec` varchar(50)
,`StoreName` varchar(150)
,`Branch` varchar(150)
);

-- --------------------------------------------------------

--
-- Table structure for table `stores_employee`
--

CREATE TABLE `stores_employee` (
  `Row_ID` int(15) NOT NULL,
  `Store_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `From_Date` date NOT NULL,
  `Still_Working_Here` enum('Y','N') NOT NULL,
  `To_Date` date DEFAULT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `stores_employee`
--

INSERT INTO `stores_employee` (`Row_ID`, `Store_ID`, `Emp_ID`, `From_Date`, `Still_Working_Here`, `To_Date`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, 1, 6, '2014-03-01', 'Y', NULL, '2024-03-06', '2024-03-06 13:43:30'),
(2, 1, 7, '2020-03-01', 'Y', NULL, '2024-03-03', '2024-03-06 13:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `store_branches`
--

CREATE TABLE `store_branches` (
  `Branch_Store_ID` int(15) NOT NULL,
  `Name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `store_branches`
--

INSERT INTO `store_branches` (`Branch_Store_ID`, `Name`) VALUES
(1, 'SAKA'),
(2, 'KAMUX');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `Title_ID` int(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`Title_ID`, `Name`, `Date_OF_Add`, `Date_OF_Updated`) VALUES
(1, 'Dealer', '2024-03-06', NULL),
(2, 'Branch Manager', '2024-03-06', NULL),
(3, 'EV Specialist', '2024-03-06', NULL),
(4, 'Sales Manager', '2024-03-06', NULL),
(5, 'Store manager', '2024-03-06', NULL),
(6, 'Myyntiassistentti', '2024-03-06', NULL);

-- --------------------------------------------------------

--
-- Structure for view `storesvechile`
--
DROP TABLE IF EXISTS `storesvechile`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `storesvechile`  AS SELECT `cars`.`VIN` AS `VIN`, `cars`.`Number_Plate` AS `Number_Plate`, `brands`.`Name` AS `Name`, `cars`.`Model` AS `Model`, `cars`.`Model_Spec` AS `Model_Spec`, `stores`.`Name` AS `StoreName`, `store_branches`.`Name` AS `Branch` FROM (((`stores` join `cars` on(`cars`.`Store_ID` = `stores`.`Store_ID`)) join `brands` on(`cars`.`Brand_ID` = `brands`.`Brand_ID`)) join `store_branches` on(`store_branches`.`Branch_Store_ID` = `stores`.`Branch_Store_ID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`Brand_ID`),
  ADD KEY `Row_ID` (`Brand_ID`);

--
-- Indexes for table `carfeatures`
--
ALTER TABLE `carfeatures`
  ADD KEY `VIN` (`VIN`),
  ADD KEY `Feature_ID` (`Feature_ID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`Row`),
  ADD KEY `Store_ID` (`Store_ID`),
  ADD KEY `VIN` (`VIN`),
  ADD KEY `Brand_ID` (`Brand_ID`),
  ADD KEY `Price` (`Price`);

--
-- Indexes for table `carsold`
--
ALTER TABLE `carsold`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Sold_By` (`Sold_By`),
  ADD KEY `Sold_To` (`Sold_To`),
  ADD KEY `VIN` (`VIN`) USING BTREE,
  ADD KEY `Original_Price` (`Original_Price`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`Credentilas_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`);

--
-- Indexes for table `credentials_logs`
--
ALTER TABLE `credentials_logs`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `idx_Credentials_ID` (`Credentials_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `Fk_Customer_Postalcodes` (`PostalCode`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Emp_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`),
  ADD KEY `FK_Employee_Employee` (`Reports_To`),
  ADD KEY `PostalCodre` (`PostalCode`);

--
-- Indexes for table `employee_service_langauge`
--
ALTER TABLE `employee_service_langauge`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `employee_titles`
--
ALTER TABLE `employee_titles`
  ADD UNIQUE KEY `idx_Title_ID` (`Title_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`);

--
-- Indexes for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  ADD KEY `idx_Emp_ID` (`Emp_ID`);

--
-- Indexes for table `feature_list`
--
ALTER TABLE `feature_list`
  ADD PRIMARY KEY (`Feature_ID`),
  ADD KEY `Feature_ID` (`Feature_ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Number_Plate` (`VIN`);

--
-- Indexes for table `postalcodes`
--
ALTER TABLE `postalcodes`
  ADD PRIMARY KEY (`PostalCode`),
  ADD KEY `PostalCode` (`PostalCode`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`Store_ID`),
  ADD KEY `idx_PostalCode` (`PostalCode`),
  ADD KEY `idx_Branch_Store_ID` (`Branch_Store_ID`),
  ADD KEY `Store_ID` (`Store_ID`);

--
-- Indexes for table `stores_employee`
--
ALTER TABLE `stores_employee`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `idx_Store_ID` (`Store_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`);

--
-- Indexes for table `store_branches`
--
ALTER TABLE `store_branches`
  ADD PRIMARY KEY (`Branch_Store_ID`),
  ADD KEY `Branch_Store_ID` (`Branch_Store_ID`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`Title_ID`),
  ADD KEY `idx_Title_ID` (`Title_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `Brand_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `Row` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carsold`
--
ALTER TABLE `carsold`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `Credentilas_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `credentials_logs`
--
ALTER TABLE `credentials_logs`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `Emp_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee_service_langauge`
--
ALTER TABLE `employee_service_langauge`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feature_list`
--
ALTER TABLE `feature_list`
  MODIFY `Feature_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stores_employee`
--
ALTER TABLE `stores_employee`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_branches`
--
ALTER TABLE `store_branches`
  MODIFY `Branch_Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `Title_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carfeatures`
--
ALTER TABLE `carfeatures`
  ADD CONSTRAINT `CarFeatures_Cars` FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`),
  ADD CONSTRAINT `FK_CarFeatures_FeatureList` FOREIGN KEY (`Feature_ID`) REFERENCES `feature_list` (`Feature_ID`);

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `FK_Cars_Brand_ID` FOREIGN KEY (`Brand_ID`) REFERENCES `brands` (`Brand_ID`),
  ADD CONSTRAINT `Fk_Cars_Stores` FOREIGN KEY (`Store_ID`) REFERENCES `stores` (`Store_ID`);

--
-- Constraints for table `carsold`
--
ALTER TABLE `carsold`
  ADD CONSTRAINT `FK_CarSold_Cars` FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`),
  ADD CONSTRAINT `FK_CarSold_Cars_2` FOREIGN KEY (`Original_Price`) REFERENCES `cars` (`Price`),
  ADD CONSTRAINT `FK_CarSold_Employee` FOREIGN KEY (`Sold_By`) REFERENCES `employees` (`Emp_ID`),
  ADD CONSTRAINT `Fk_CarSold_Customer` FOREIGN KEY (`Sold_To`) REFERENCES `customers` (`Customer_ID`);

--
-- Constraints for table `credentials`
--
ALTER TABLE `credentials`
  ADD CONSTRAINT `Fk_Credentials` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`);

--
-- Constraints for table `credentials_logs`
--
ALTER TABLE `credentials_logs`
  ADD CONSTRAINT `Fk_CredentialsLog_Credentials` FOREIGN KEY (`Credentials_ID`) REFERENCES `credentials` (`Credentilas_ID`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `Fk_Customer_Postalcodes` FOREIGN KEY (`PostalCode`) REFERENCES `postalcodes` (`PostalCode`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `FK_Employee_Employee` FOREIGN KEY (`Reports_To`) REFERENCES `employees` (`Emp_ID`),
  ADD CONSTRAINT `FK_Employee_Postalcode` FOREIGN KEY (`PostalCode`) REFERENCES `postalcodes` (`PostalCode`);

--
-- Constraints for table `employee_service_langauge`
--
ALTER TABLE `employee_service_langauge`
  ADD CONSTRAINT `FK_EmployeeLS_Employee` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`);

--
-- Constraints for table `employee_titles`
--
ALTER TABLE `employee_titles`
  ADD CONSTRAINT `FK_EmployeeTitles_Employees` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`),
  ADD CONSTRAINT `FK_EmployeeTitles_Titles` FOREIGN KEY (`Title_ID`) REFERENCES `titles` (`Title_ID`);

--
-- Constraints for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  ADD CONSTRAINT `FK_EmployeeSalary_Employee` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_Cars_Images` FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `FK_Stores_Storebranches` FOREIGN KEY (`Branch_Store_ID`) REFERENCES `store_branches` (`Branch_Store_ID`),
  ADD CONSTRAINT `Fk_Stores_PostalCodes` FOREIGN KEY (`PostalCode`) REFERENCES `postalcodes` (`PostalCode`);

--
-- Constraints for table `stores_employee`
--
ALTER TABLE `stores_employee`
  ADD CONSTRAINT `Fk_StoreEmployee_Employee` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`),
  ADD CONSTRAINT `Fk_StoreEmployee_Store` FOREIGN KEY (`Store_ID`) REFERENCES `stores` (`Store_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
