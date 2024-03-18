-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 18, 2024 at 03:51 PM
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
('YV1SW61R021197119', 10),
('1M2AA18C0WW092489', 16),
('1M2AA18C0WW092489', 13),
('1M2AA18C0WW092489', 19),
('1M2AA18C0WW092489', 17),
('1M2AA18C0WW092489', 41),
('1M2AA18C0WW092489', 33),
('1M2AA18C0WW092489', 32),
('1M2AA18C0WW092489', 44),
('1M2AA18C0WW092489', 45);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `Row` int(15) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Number_Plate` char(15) DEFAULT NULL,
  `Brand_ID` int(15) NOT NULL,
  `Model` varchar(15) DEFAULT NULL,
  `Model_Spec` varchar(50) DEFAULT NULL,
  `Price` int(15) DEFAULT NULL,
  `Year` int(15) DEFAULT NULL,
  `Gearbox` enum('Manual','Automatic') DEFAULT NULL,
  `Fuel_Type` enum('Petrol','Diesel','Electric','Plug-In Hybrid','Gas') DEFAULT NULL,
  `Mileage` int(15) DEFAULT NULL,
  `Type_OF_Car` enum('Person','Van','Minibus','Motorcycle') DEFAULT NULL,
  `Type_OF_Body` enum('Sedan','Hatchback','SUV','Wagon','Coupe') DEFAULT NULL,
  `Draw_Method` enum('4WD','FWD','RWD') DEFAULT NULL,
  `Color` enum('White','Black','Silver','Red','Blue','Yellow','Orange') DEFAULT NULL,
  `Number_Of_Person` int(5) DEFAULT NULL,
  `Number_OF_Doors` int(5) DEFAULT NULL,
  `Power` int(15) DEFAULT NULL,
  `Mass` int(15) DEFAULT NULL,
  `TopSpeed` int(5) DEFAULT NULL,
  `Engine_Capacity` varchar(5) DEFAULT NULL,
  `Store_ID` int(15) DEFAULT NULL,
  `Date_OF_Add` date DEFAULT NULL,
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`Row`, `VIN`, `Number_Plate`, `Brand_ID`, `Model`, `Model_Spec`, `Price`, `Year`, `Gearbox`, `Fuel_Type`, `Mileage`, `Type_OF_Car`, `Type_OF_Body`, `Draw_Method`, `Color`, `Number_Of_Person`, `Number_OF_Doors`, `Power`, `Mass`, `TopSpeed`, `Engine_Capacity`, `Store_ID`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(2, 'YV1SW61R021197119', 'VAR-873', 10, 'XC90', NULL, 65000, 2020, 'Automatic', 'Petrol', 119000, 'Person', 'SUV', '4WD', 'White', 7, 5, 252, 3500, 250, '3.1', 1, '2024-03-05', '2024-03-06 11:56:17'),
(3, '1D7HA18N38J191236', 'JIZ-610', 1, 'E-tron', NULL, 116000, 2020, 'Automatic', 'Petrol', 59000, 'Person', 'Sedan', '4WD', 'Black', 5, 3, 300, 2100, 300, '2.5', 2, '2024-03-06', '2024-03-06 13:07:38'),
(4, '4S3BJ6329M1918965', 'IAR-058', 10, 'XC90', 'T8 TwE AWD Recharge Inscription aut', 70000, 2021, 'Automatic', 'Petrol', 104000, 'Person', 'SUV', 'RWD', 'White', 7, 5, 252, 3500, 250, '3.1', 5, '2024-03-06', NULL),
(5, 'JN6DY1AY8EX602144', 'HUI-995', 38, 'Pathfinder', '2,5 dCi SE 5AT 5-ov.', 7500, 2008, 'Manual', 'Diesel', 220000, 'Person', 'SUV', 'RWD', 'Blue', 5, 5, 150, 2600, 170, '3.5', 5, '2024-03-13', NULL),
(6, 'WVGMR67L090010501', 'IJN-970', 9, 'Passat', 'Sedan Comfortline 2,0 TDI 103 kW', 5000, 2010, 'Automatic', 'Petrol', 425000, 'Person', 'Sedan', 'RWD', 'Silver', 5, 5, 160, 1600, 250, '2.5', 7, '2024-03-07', '2024-03-07 10:37:20'),
(7, 'WB10557A13ZG36939', 'IPE-528', 2, '420', 'G26 Gran Coupé 420d A xDrive M Sport MHEV', 46500, 2022, 'Automatic', 'Petrol', 17000, 'Person', 'Sedan', 'RWD', 'Red', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2024-03-06', '2024-03-07 10:43:34'),
(8, 'YV1AX4747E1960685', 'LOE-886', 10, 'S90', 'D4 Business R-Design aut', 68000, 2018, 'Automatic', 'Petrol', 145000, NULL, NULL, '4WD', 'Silver', NULL, NULL, NULL, NULL, NULL, NULL, 10, '2024-03-07', '2024-03-07 10:44:15'),
(9, 'WDBLK70G61T061039', 'JJE-655', 4, 'G-Wagon', '63 AMG, G700 Brabus Widestar', 120000, 2022, 'Automatic', 'Petrol', 100, NULL, NULL, '4WD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2024-03-07', '2024-03-14 14:06:36'),
(10, 'WDDUG7JB1EA027074', 'HYY-779', 4, 'GLS', '600 Maybach', 65000, 2024, 'Automatic', 'Petrol', 200, NULL, NULL, '4WD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-07', '2024-03-07 10:44:23'),
(11, 'ZA9DU01B21L903178', 'MMH-119', 22, 'Huracán', 'Huracan Evo Spyder 640hv', 98000, 2020, 'Automatic', 'Petrol', 16000, NULL, NULL, 'RWD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, '2024-03-07', '2024-03-18 13:31:50'),
(12, 'ZFF73SKA9E0200021', 'LLK-225', 12, 'Portofino', 'Ferrari M Ferrari Portofino M Avoauto (AE)', 98000, 2023, 'Automatic', 'Petrol', 1000, NULL, NULL, 'RWD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2024-03-07', '2024-03-07 10:43:23'),
(13, 'WAU3FLFF5F1034279', 'OXS-665', 1, 'RS6', NULL, 64000, 2020, 'Automatic', 'Petrol', 44000, 'Person', 'Sedan', '4WD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2024-03-07', '2024-03-07 10:43:56'),
(14, 'WUAENAFG5FN000527', 'FRM-648', 1, 'Q8 e-tron', 'SQ8 e-tron quattro', 125000, 2023, 'Automatic', 'Petrol', 50, 'Person', 'SUV', '4WD', 'Black', 5, 5, 250, 2300, 300, '3.5', 2, '2024-03-07', '2024-03-07 10:30:29'),
(15, 'JT2VV22E0J0018536', 'YLC-633', 8, 'Land Cruiser', NULL, 65000, 2019, 'Automatic', 'Diesel', 75000, 'Person', 'SUV', '4WD', 'White', 7, 5, 0, 0, 0, '', 6, '2024-03-07', NULL),
(16, 'SCBBB7ZH2FC053880', 'GTW-129', 19, 'Continental', 'GT Coupe W12 Twin Turbo', 79000, 2006, 'Automatic', 'Diesel', 75000, 'Person', 'Sedan', '4WD', 'Black', 4, 5, 350, 2600, 350, '5.1', 10, '2024-03-07', NULL),
(17, '1GKEC13V21J196436', 'UJH-331', 14, 'Sierra', '1500 Crew cab 3.0 duramax Turbo-diesel, 10-speed A', 125000, 2024, 'Automatic', 'Diesel', 500, 'Person', 'Sedan', '4WD', 'Red', 5, 2, 350, 3500, 250, '6.1', 13, '2024-03-06', NULL),
(18, 'WAUHFBFR9AA011915', 'GYA-181', 1, 'Audi A6', 'Sedan 50 TFSI e quattro S-tronic', 59500, 2023, 'Automatic', 'Petrol', 13000, 'Person', 'Sedan', '4WD', 'Silver', 5, 5, 295, 2100, 270, NULL, 91, '2024-03-18', NULL),
(19, 'WA1VGCFE0D0016673', 'IMA-570', 1, 'Audi S3', 'Sedan 2,0 TFSI quattro S tronic', 33990, 2015, 'Automatic', 'Petrol', 96000, 'Person', 'Sedan', '4WD', 'Red', 5, 4, 221, 1535, 250, '2.1', 93, '2024-03-18', '2024-03-18 13:44:30'),
(20, 'WAUHE98P29A071392', 'BXU-870', 2, 'BMW 318', 'G20 Sedan 318d A Business', 24890, 2019, 'Automatic', 'Diesel', 70000, 'Person', 'Sedan', 'RWD', 'Black', 7, 5, 189, 2600, 210, '1.8', 92, '2024-03-18', NULL),
(21, '1M2AA18C0WW092489', 'KUA-347', 7, 'Octavia', 'Ambition Launch Edition DSG', 18650, 2020, 'Automatic', 'Diesel', 136000, 'Person', 'Sedan', 'FWD', 'Blue', 5, 4, 115, 1461, 227, '2.1', 93, '2024-03-18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carsold`
--

CREATE TABLE `carsold` (
  `Row_ID` int(15) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Sold_By` int(15) NOT NULL,
  `Sold_To` int(15) NOT NULL,
  `Original_Price` int(15) NOT NULL,
  `Sold_Price` int(15) NOT NULL,
  `Sold_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `carsold`
--

INSERT INTO `carsold` (`Row_ID`, `VIN`, `Sold_By`, `Sold_To`, `Original_Price`, `Sold_Price`, `Sold_Date`) VALUES
(2, '1D7HA18N38J191236', 6, 1, 116000, 114000, '2024-03-01'),
(3, 'YV1SW61R021197119', 6, 2, 65000, 64500, '2024-03-01'),
(4, 'ZA9DU01B21L903178', 6, 4, 98000, 97900, '2024-03-07');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cars_by_stores`
-- (See below for the actual view)
--
CREATE TABLE `cars_by_stores` (
`VIN` char(50)
,`Number_Plate` char(15)
,`Brand` varchar(15)
,`Model` varchar(15)
,`Model_Spec` varchar(50)
,`Store_Name` varchar(50)
);

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
(7, '270772-3221', 'Katja', 'Berglund', 'Female', '044 780 2773', 'KatjaBerglund@jourrapide.com', '1972-01-27', 'uogfigygoigogougougu', 'Kangasmoisionkatu 49', '00390', '2024-03-06', '2024-03-06 13:40:58', 6),
(8, '151187-291C', 'Ismo', 'Ahokainen', 'Male', '044 124 2790', 'IsmoAhokainen@armyspy.com', '1987-11-15', 'jtrjykurkurkryejutjyrhjukteejyhtegrwtshyjdmhngbfds', 'Norra Larsmovägen 67', '70200', '2024-03-18', '2024-03-18 15:58:36', NULL),
(9, '260666-673B', 'Petteri', 'Viljanen', 'Male', '041 434 6692', 'PetteriViljanen@jourrapide.com', '1966-06-26', 'rtyuiuyjthgrefdwsqwdferthyjuki', 'Kunnankuja 55', '90420', '2024-03-18', '2024-03-18 15:59:12', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employees_available_for_hire_by_area`
-- (See below for the actual view)
--
CREATE TABLE `employees_available_for_hire_by_area` (
`Emp_ID` int(15)
,`SSN` char(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`PostalCode` char(5)
,`Area` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_by_store`
-- (See below for the actual view)
--
CREATE TABLE `employee_by_store` (
`SSN` char(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`Store_Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_by_store_still_working`
-- (See below for the actual view)
--
CREATE TABLE `employee_by_store_still_working` (
`Emp_ID` int(15)
,`SSN` char(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`Store Name` varchar(50)
);

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
(30, 'Sähkösäätöiset istuimet muistilla'),
(31, 'Huoltokirja'),
(32, 'Kahdet renkaat'),
(33, 'Kahdet avaimet'),
(34, 'Suomi-auto'),
(35, '1 omistaja'),
(36, 'Erikoisväri'),
(37, 'Lämmitettävä ohjauspyörä'),
(38, 'Audio-liitäntä'),
(39, 'Audio-liitäntä: Bluetooth'),
(40, 'Ilmastointi: Automaattinen'),
(41, 'Isofix-valmius'),
(42, 'Monitoimiohjauspyörä'),
(43, 'Keskuslukitus: Avaimeton'),
(44, 'Mäkilähtöavustin'),
(45, 'Luistonestojärjestelmä'),
(46, 'Sähkötoiminen takaovien lapsilukko'),
(47, 'LED-takavalot valoanimaatioilla'),
(48, 'Sähkötoiminen takaovien lapsilukko'),
(49, 'Sähkötoiminen takaovien lapsilukko');

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
-- Stand-in structure for view `number_of_cars_by_stores`
-- (See below for the actual view)
--
CREATE TABLE `number_of_cars_by_stores` (
`Number_OF_Cars` bigint(21)
,`Store_Name` varchar(50)
);

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
('02200', 'Espoo'),
('02300', 'Espoo'),
('02600', 'Espoo'),
('02920', 'Espoo'),
('30100', 'Forssa'),
('18120', 'Heinola'),
('00100', 'Helsinki'),
('00390', 'Helsinki'),
('00700', 'Helsinki'),
('00880', 'Helsinki'),
('15840', 'Hyvinkää'),
('13130', 'Hämeenlinna'),
('74120', 'Iisalmi'),
('80100', 'Joensuu'),
('40320', 'Jyväskylä'),
('42100', 'Jämsa'),
('04420', 'Järvenpää'),
('20780', 'Kaarina'),
('87400', 'Kajaani'),
('02400', 'Kirkkonummi'),
('48600', 'Kotka'),
('45130', 'Kouvola'),
('70200', 'Kuopio'),
('15610', 'Lahti'),
('53500', 'Lappeenranta'),
('37570', 'Lempäälä'),
('08680', 'Lohja'),
('50100', 'Mikkeli'),
('03100', 'Nummela'),
('90100', 'Oulu'),
('90400', 'Oulu'),
('90420', 'Oulu'),
('28360', 'Pori'),
('06100', 'Porvoo'),
('60510', 'Seinäjoki'),
('33400', 'Tampere'),
('20320', 'Turku'),
('04300', 'Tuusula'),
('65300', 'Vaasa'),
('01510', 'Vantaa'),
('01610', 'Vantaa'),
('01720', 'Vantaa');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `Store_ID` int(15) NOT NULL,
  `Branch_Store_ID` int(15) NOT NULL,
  `Store_Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `PostalCode` char(5) NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Image` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`Store_ID`, `Branch_Store_ID`, `Store_Name`, `Address`, `Email`, `Phone`, `PostalCode`, `Date_OF_Add`, `Date_OF_Update`, `Image`) VALUES
(1, 1, 'SAKA Finland Oy, Herttoniemi', 'Mekaanikonkatu 17', NULL, '', '00880', '2024-03-06', '2024-03-06 12:24:50', NULL),
(2, 2, 'Kamux Konala', 'Päiväläisentie 1-6', NULL, '', '00390', '2024-03-06', '2024-03-14 14:43:24', NULL),
(3, 1, 'SAKA Finland Oy, Koskelo', 'Koskelontie 15', NULL, '', '02920', '2024-03-03', '2024-03-06 13:15:11', NULL),
(4, 1, 'SAKA Finland Oy, Konala', 'Päiväläisentie 1-6', NULL, '', '00390', '2024-03-06', '2024-03-06 13:17:37', NULL),
(5, 1, 'SAKA Finland Oy, Hyvinkää', 'Helletorpankatu 31', NULL, '', '15840', '2024-03-06', '2024-03-06 13:17:37', NULL),
(6, 1, 'SAKA Finland Oy, Hämeenlinna', 'Eino Leinon katu 40', NULL, '', '13130', '2024-03-06', '2024-03-06 13:20:38', NULL),
(7, 1, 'SAKA Finland Oy, Joensuu', 'Raatekankaantie 4', NULL, '', '80100', '2024-03-06', '2024-03-06 13:20:38', NULL),
(8, 1, 'SAKA Finland Oy, Jyväskylä', 'Ahjokatu 1', NULL, '', '40320', '2024-03-06', '2024-03-06 13:20:38', NULL),
(9, 1, 'SAKA Finland Oy, Järvenpää', 'Diggarinkatu 10', NULL, '', '04420', '2024-03-06', '2024-03-06 13:20:38', NULL),
(10, 1, 'SAKA Finland Oy, Kirkkonummi', 'Purotie 1', NULL, '', '02400', '2024-03-06', '2024-03-06 13:20:38', NULL),
(11, 2, 'Kamux Koskelo', 'Koskelontie 19', NULL, '', '02920', '2024-03-05', '2024-03-14 14:43:24', NULL),
(12, 2, 'Kamux Niittykumpu', 'Riihitontuntie 10-12', NULL, '', '02200', '2024-03-05', '2024-03-14 14:43:24', NULL),
(13, 2, 'Kamux Hyvinkää', 'Avainkierto 17', NULL, '', '15840', '2024-03-05', '2024-03-06 13:25:31', NULL),
(14, 2, 'Kamux Hämeenlinna', 'Parolantie 66 A', NULL, '', '13130', '2024-03-05', '2024-03-06 13:25:31', NULL),
(15, 2, 'Kamux Joensuu', 'Kuurnankatu 14', NULL, '', '80100', '2024-03-05', '2024-03-06 13:25:31', NULL),
(18, 1, 'SAKA Finland Oy, Kouvola', 'Tommolankatu 7', NULL, '', '45130', '2024-03-14', '2024-03-14 13:39:41', NULL),
(19, 1, 'SAKA Finland Oy, Kuopio', 'Leväsentie 2', NULL, '', '70200', '2024-03-14', '2024-03-14 14:03:31', NULL),
(20, 1, 'SAKA Finland Oy, Lahti', 'Alavankatu 4', NULL, '', '15610', '2024-03-14', '2024-03-14 14:03:31', NULL),
(21, 1, 'SAKA Finland Oy, Lappeenranta', 'Toikansuontie 6', NULL, '', '53500', '2024-03-14', '2024-03-14 14:10:52', NULL),
(22, 1, 'SAKA Finland Oy, Lempäälä', 'Ideaparkinkatu 4', NULL, '', '37570', '2024-03-14', '2024-03-14 14:10:52', NULL),
(23, 1, 'SAKA Finland Oy, Nummela', 'Ratastie 24', NULL, '', '03100', '2024-03-14', '2024-03-14 14:10:52', NULL),
(24, 1, 'SAKA Finland Oy, Oulu', 'Portinkaarre 3', NULL, '', '90100', '2024-03-14', '2024-03-14 14:14:26', NULL),
(25, 1, 'SAKA Finland Oy, Pori', 'Helmentie 6-8', NULL, '', '28360', '2024-03-14', '2024-03-14 14:14:26', NULL),
(26, 1, 'SAKA Finland Oy, Porvoo', 'Ratsumestarinkatu 8', NULL, '', '06100', '2024-03-14', '2024-03-14 14:14:26', NULL),
(27, 1, 'SAKA Finland Oy, Raisio', 'Vahdontie 30', NULL, '', '20320', '2024-03-14', '2024-03-14 14:28:18', NULL),
(28, 1, 'SAKA Finland Oy, Seinäjoki', 'Lieskatie 2', NULL, '', '60510', '2024-03-14', '2024-03-14 14:28:18', NULL),
(29, 1, 'SAKA Finland Oy, Tampere', 'Sellukatu 8', NULL, '', '33400', '2024-03-14', '2024-03-14 14:28:18', NULL),
(30, 1, 'SAKA Finland Oy, Tuusula', 'Hiekkamäentie 5', NULL, '', '04300', '2024-03-14', '2024-03-14 14:28:18', NULL),
(31, 1, 'SAKA Finland Oy, Vantaa', 'Kivihaantie 9', NULL, '', '65300', '2024-03-14', '2024-03-14 14:28:18', NULL),
(32, 1, 'SAKA Finland Oy, Koivuhaka', 'Kuriiritie 17', NULL, '', '01510', '2024-03-14', '2024-03-14 14:28:18', NULL),
(33, 1, 'SAKA Finland Oy, Varisto', 'Martinkyläntie 59', NULL, '', '01720', '2024-03-14', '2024-03-14 14:28:18', NULL),
(34, 2, 'Kamux Forssa', 'Aukeentie 5', NULL, '', '30100', '2024-03-15', '2024-03-14 14:42:41', NULL),
(35, 2, 'Kamux Malmi', 'Takoraudantie 2', NULL, '', '00700', '2024-03-15', '2024-03-14 14:43:24', NULL),
(36, 2, 'Kamux Iisalmi', 'Kilpivirrantie 1', NULL, '', '70200', '2024-03-15', '2024-03-14 14:46:24', NULL),
(37, 2, 'Kamux Jyväskylä', 'Laukaantie 1', NULL, '', '40320', '2024-03-15', '2024-03-14 14:46:24', NULL),
(38, 2, 'Kamux Jämsä', 'Ekosentie 2', NULL, '', '42100', '2024-03-18', '2024-03-18 11:26:45', NULL),
(39, 2, 'Kamux Järvenpää', 'Rajaniitynkatu 2', NULL, '', '04420', '2024-03-18', '2024-03-18 11:26:45', NULL),
(40, 2, 'Kamux Kaarina', 'Autoilijankatu 30', NULL, '', '20780', '2024-03-18', '2024-03-18 11:34:28', NULL),
(41, 2, 'Kamux Kajaani', 'Kehräämöntie 22', NULL, '', '87400', '2024-03-18', '2024-03-18 11:34:28', NULL),
(42, 2, 'Kamux Kouvola', 'Tommolankatu 16', NULL, '', '45130', '2024-03-18', '2024-03-18 11:34:28', NULL),
(43, 2, 'Kamux Kuopio', 'Väliköntie 4', NULL, '', '70200', '2024-03-18', '2024-03-18 11:34:28', NULL),
(44, 2, 'Kamux Lahti', 'Tupalankatu 3', NULL, '', '15610', '2024-03-18', '2024-03-18 11:34:28', NULL),
(47, 2, 'Kamux Lappeenranta', 'Ajurinkatu 8', NULL, '', '53500', '2024-03-18', '2024-03-18 11:37:58', NULL),
(48, 2, 'Kamux Lempäälä Ideapark', 'Ideaparkinkatu 4', NULL, '', '37570', '2024-03-18', '2024-03-18 11:43:07', NULL),
(49, 2, 'Kamux Lohja', 'Seisaketie 5', NULL, '', '08680', '2024-03-18', '2024-03-18 11:39:29', NULL),
(50, 2, 'Kamux Mikkeli', 'Hietakatu 1', 'mikkeli@kamux.fi', '010 420 8877', '50100', '2024-03-18', '2024-03-18 13:16:30', NULL),
(51, 2, 'Kamux Oulu Limingantulli', 'Tyrnäväntie 6', NULL, '', '90400', '2024-03-18', '2024-03-18 11:42:40', NULL),
(52, 2, 'Kamux Oulunportti', 'Portinkaarre 1', NULL, '', '90420', '2024-03-18', '2024-03-18 11:42:40', NULL),
(62, 2, 'Kamux Pori', 'Pohjoisväylä 3', NULL, '', '28360', '2024-03-18', '2024-03-18 11:50:38', NULL),
(63, 2, 'Kamux Porvoo', 'Kuninkaantie 1', NULL, '', '06100', '2024-03-18', '2024-03-18 11:50:38', NULL),
(64, 2, 'Kamux Seinäjoki', 'Nurmontie 113', NULL, '', '60510', '2024-03-18', '2024-03-18 11:50:38', NULL),
(65, 2, 'Kamux Tampere Hatanpää', 'Lahdenperänkatu 3', NULL, '', '33400', '2024-03-18', '2024-03-18 11:50:38', NULL),
(66, 2, 'Kamux Turku', 'Nuppulantie 21', NULL, '', '20320', '2024-03-18', '2024-03-18 11:50:38', NULL),
(67, 2, 'Kamux Tuusula', 'Hiekkamäentie 5', NULL, '', '04300', '2024-03-18', '2024-03-18 11:50:38', NULL),
(68, 2, 'Kamux Vaasa', 'Silmukkatie 11', 'vaasa@kamux.fi', '010 778 5555', '65300', '2024-03-18', '2024-03-18 13:16:30', NULL),
(69, 2, 'Kamux Vantaa Airport', 'Virkatie 7', 'airtport@kamux.fi', '010 778 5577', '01510', '2024-03-18', '2024-03-18 13:16:30', NULL),
(70, 2, 'Kamux Vantaa Varisto', 'Martinkyläntie 47', 'varisto@kamux.fi', '010 420 8830', '01720', '2024-03-18', '2024-03-18 13:16:30', NULL),
(71, 3, 'Veho Airport', 'Ohtolankatu 10', NULL, '010 569 15', '01510', '2024-03-18', '2024-03-18 11:59:05', NULL),
(72, 3, 'Veho Herttoniemi', 'Mekaanikonkatu 14', NULL, '010 569 14', '00880', '2024-03-18', '2024-03-18 11:58:52', NULL),
(73, 3, 'Veho Olari', 'Piispankallio 2', NULL, '010 569 17', '02200', '2024-03-18', '2024-03-18 11:58:11', NULL),
(74, 3, 'Veho Tampere', 'Taninkatu 11', NULL, '010 569 3011', '33400', '2024-03-18', '2024-03-18 11:59:20', NULL),
(75, 6, 'Vaihtoautomaa Vantaa', 'Tiilipojanlenkki 4 A', 'vantaa@vaihtoautomaa.com', '0207 890 682', '01720', '2024-03-18', '2024-03-18 12:10:03', NULL),
(76, 6, 'Vaihtoautomaa Lahti', 'Laatukatu 22', 'lahti@vaihtoautomaa.com', '0207 890 684', '15610', '2024-03-18', '2024-03-18 12:09:50', NULL),
(77, 6, 'Vaihtoautomaa Lempäälä', 'Ruokosmetsänkatu 7 C', 'lempaala@vaihtoautomaa.com', '0207 890 687', '37570', '2024-03-18', '2024-03-18 12:09:50', NULL),
(78, 5, 'J. Rinta-Jouppi Espoo', 'Niittymaantie 8', 'espoo@rintajouppi.fi', '020 788 1580', '02200', '2024-03-17', '2024-03-18 12:26:59', NULL),
(79, 5, 'J. Rinta-Jouppi Hyvinkää', 'Veikkarinkatu 1', 'hyvinkaa@rintajouppi.fi', '', '15840', '2024-03-17', '2024-03-18 12:26:59', NULL),
(80, 5, 'J. Rinta-Jouppi Hämeenlinna', 'Parolantie 65', 'hameenlinna@rintajouppi.fi', '03 389 9999', '13130', '2024-03-17', '2024-03-18 12:26:59', NULL),
(81, 5, 'J. Rinta-Jouppi Jyväskylä', 'Seppäläntie 16', 'jyvaskyla@rintajouppi.fi', '020 788 1570', '40320', '2024-03-17', '2024-03-18 12:26:59', NULL),
(82, 5, 'J. Rinta-Jouppi Kuopio', 'Volttikatu 7', 'kuopio@rintajouppi.fi', NULL, '70200', '2024-03-17', '2024-03-18 12:26:59', NULL),
(83, 5, 'J. Rinta-Jouppi Lahti', 'Tupalankatu 7', 'lahti@rintajouppi.fi', '020 7881 310', '15610', '2024-03-17', '2024-03-18 12:27:09', NULL),
(84, 5, 'J. Rinta-Jouppi Lappeenranta', 'Lentokentäntie 5', 'lappeenranta@rintajouppi.fi', '020 788 1350', '53500', '2024-03-17', '2024-03-18 12:27:36', NULL),
(85, 5, 'J. Rinta-Jouppi Oulu', 'Takojantie 1', 'oulu@rintajouppi.fi', '020 788 1560', '90420', '2024-03-17', '2024-03-18 12:26:59', NULL),
(86, 5, 'J. Rinta-Jouppi Pori', 'Helmentie 5', 'pori@rintajouppi.fi', '020 788 1585', '28360', '2024-03-17', '2024-03-18 12:26:59', NULL),
(87, 5, 'J. Rinta-Jouppi Seinäjoki', 'Jouppilantie 18', 'seinajoki@rintajouppi.fi', '06 420 1800', '60510', '2024-03-17', '2024-03-18 12:26:59', NULL),
(88, 5, 'J. Rinta-Jouppi Tampere', 'Sellukatu 5', 'lielahti@rintajouppi.fi', '020 788 1277', '33400', '2024-03-17', '2024-03-18 12:30:00', NULL),
(89, 5, 'J. Rinta-Jouppi Vantaa', 'Kistolantie 3', 'vantaa@rintajouppi.fi', '09 2525 7500', '01720', '2024-03-17', '2024-03-18 12:45:18', NULL),
(90, 4, 'K-Auto Audi Helsinki', 'Mekaanikonkatu 10', 'audi.helsinki@k-auto.fi', '010 533 2930', '00880', '2024-03-16', '2024-03-18 13:06:13', NULL),
(91, 4, 'K-Auto Audi Espoo', 'Haltilanniitty 6', 'audi.espoo@k-auto.fi', '010 533 2825', '02200', '2024-03-16', '2024-03-18 13:06:13', NULL),
(92, 4, 'K-Auto Audi Airport Vantaa', 'Tikkurilantie 123', 'audi.vantaa@k-auto.fi', '010 533 3025', '01510', '2024-03-16', '2024-03-18 13:06:13', NULL),
(93, 4, 'K-Auto Audi Tampere', 'Hatanpään puistokuja 32', 'audi.tampere@k-auto.fi', '010 533 1890', '33400', '2024-03-16', '2024-03-18 13:06:13', NULL),
(94, 4, 'K-Auto Audi Hämeenlinna', 'Tampereentie 169', 'audi.hameenlinna@k-auto.fi', '010 533 1990', '13130', '2024-03-16', '2024-03-18 13:06:13', NULL),
(95, 4, 'K-Auto Audi Turku', 'Rieskalähteentie 89', 'audi.turku@k-auto.fi', '010 533 3206', '20320', '2024-03-16', '2024-03-18 13:06:13', NULL),
(96, 4, 'K-Auto Audi Lappeenranta', 'Myllymäenkatu 6', 'audi.lappeenranta@k-auto.fi', '010 533 2530', '53500', '2024-03-16', '2024-03-18 13:06:13', NULL),
(97, 4, 'K-Auto Audi Kouvola', 'Taitajantie 4', 'audi.kouvola@k-auto.fi', '010 533 2460', '45130', '2024-03-16', '2024-03-18 13:06:13', NULL),
(98, 4, 'K-Auto Audi Lahti', 'Ajokatu 261', 'audi.lahti@k-auto.fi', '010 533 2130', '15610', '2024-03-16', '2024-03-18 13:06:13', NULL),
(99, 4, 'K-Auto Audi Hyvinkää', 'Helletorpankatu 31 C', 'audi.hyvinkaa@k-auto.fi', '010 533 1970', '15840', '2024-03-16', '2024-03-18 13:06:13', NULL),
(100, 2, 'Kamux Kotka', 'Kyminlinnantie 24', 'kotka@kamux.fi', '020 769 4287', '48600', '2024-03-18', '2024-03-18 13:10:48', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `stores_by_branches`
-- (See below for the actual view)
--
CREATE TABLE `stores_by_branches` (
`NumberOFStores` bigint(21)
,`Name` varchar(150)
);

-- --------------------------------------------------------

--
-- Table structure for table `stores_employee`
--

CREATE TABLE `stores_employee` (
  `Row_ID` int(15) NOT NULL,
  `Store_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `Contract_Type` enum('Permanent','Temporarry') NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date DEFAULT NULL,
  `Contract_Years` int(5) DEFAULT NULL,
  `Date_OF_Resignation` date DEFAULT NULL,
  `Resign_Reason` enum('Contract ended','Got fired') DEFAULT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `stores_employee`
--

INSERT INTO `stores_employee` (`Row_ID`, `Store_ID`, `Emp_ID`, `Contract_Type`, `From_Date`, `To_Date`, `Contract_Years`, `Date_OF_Resignation`, `Resign_Reason`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, 1, 6, 'Permanent', '2014-03-01', NULL, 12, NULL, NULL, '2024-03-06', '2024-03-18 16:45:00'),
(2, 1, 7, 'Permanent', '2020-03-01', NULL, 5, NULL, NULL, '2024-03-03', '2024-03-18 16:44:57'),
(3, 85, 9, 'Temporarry', '2020-02-01', '2024-03-18', 4, '2024-03-18', 'Contract ended', '2024-03-18', '2024-03-18 16:46:54'),
(4, 43, 8, 'Temporarry', '2022-03-18', '2024-03-17', 2, '2023-03-17', 'Got fired', '2024-03-18', '2024-03-18 16:46:32'),
(5, 51, 9, 'Permanent', '2024-03-19', NULL, 6, NULL, NULL, '2024-03-18', '2024-03-18 16:46:38');

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
(2, 'KAMUX'),
(3, 'VEHO'),
(4, 'K-AUTO'),
(5, 'J-RINTA-JOUPPI'),
(6, 'VAIHTOAUTOMAA');

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
-- Structure for view `cars_by_stores`
--
DROP TABLE IF EXISTS `cars_by_stores`;

CREATE VIEW `cars_by_stores`  AS SELECT `c`.`VIN` AS `VIN`, `c`.`Number_Plate` AS `Number_Plate`, `b`.`Name` AS `Brand`, `c`.`Model` AS `Model`, `c`.`Model_Spec` AS `Model_Spec`, `s`.`Store_Name` AS `Store_Name` FROM ((`cars` `c` join `stores` `s` on(`c`.`Store_ID` = `s`.`Store_ID`)) join `brands` `b` on(`b`.`Brand_ID` = `c`.`Brand_ID`)) GROUP BY `c`.`VIN` ;

-- --------------------------------------------------------

--
-- Structure for view `employees_available_for_hire_by_area`
--
DROP TABLE IF EXISTS `employees_available_for_hire_by_area`;

CREATE VIEW `employees_available_for_hire_by_area`  AS SELECT `employees`.`Emp_ID` AS `Emp_ID`, `employees`.`SSN` AS `SSN`, `employees`.`F_Name` AS `F_Name`, `employees`.`L_Name` AS `L_Name`, `postalcodes`.`PostalCode` AS `PostalCode`, `postalcodes`.`Region` AS `Area` FROM (((`employees` join `stores_employee` on(`employees`.`Emp_ID` = `stores_employee`.`Emp_ID`)) join `stores` on(`stores`.`Store_ID` = `stores_employee`.`Store_ID`)) join `postalcodes` on(`postalcodes`.`PostalCode` = `employees`.`PostalCode`)) WHERE `stores_employee`.`To_Date` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `employee_by_store`
--
DROP TABLE IF EXISTS `employee_by_store`;

CREATE VIEW `employee_by_store`  AS SELECT `employees`.`SSN` AS `SSN`, `employees`.`F_Name` AS `F_Name`, `employees`.`L_Name` AS `L_Name`, `stores`.`Store_Name` AS `Store_Name` FROM ((`employees` join `stores_employee` on(`employees`.`Emp_ID` = `stores_employee`.`Emp_ID`)) join `stores` on(`stores`.`Store_ID` = `stores_employee`.`Store_ID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `employee_by_store_still_working`
--
DROP TABLE IF EXISTS `employee_by_store_still_working`;

CREATE VIEW `employee_by_store_still_working`  AS SELECT `employees`.`Emp_ID` AS `Emp_ID`, `employees`.`SSN` AS `SSN`, `employees`.`F_Name` AS `F_Name`, `employees`.`L_Name` AS `L_Name`, `stores`.`Store_Name` AS `Store Name` FROM ((`employees` join `stores_employee` on(`employees`.`Emp_ID` = `stores_employee`.`Emp_ID`)) join `stores` on(`stores`.`Store_ID` = `stores_employee`.`Store_ID`)) WHERE `stores_employee`.`To_Date` is null ;

-- --------------------------------------------------------

--
-- Structure for view `number_of_cars_by_stores`
--
DROP TABLE IF EXISTS `number_of_cars_by_stores`;

CREATE VIEW `number_of_cars_by_stores`  AS SELECT count(`c`.`VIN`) AS `Number_OF_Cars`, `s`.`Store_Name` AS `Store_Name` FROM (`cars` `c` join `stores` `s` on(`c`.`Store_ID` = `s`.`Store_ID`)) GROUP BY `s`.`Store_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `stores_by_branches`
--
DROP TABLE IF EXISTS `stores_by_branches`;

CREATE VIEW `stores_by_branches`  AS SELECT count(`stores`.`Store_ID`) AS `NumberOFStores`, `store_branches`.`Name` AS `Name` FROM (`stores` join `store_branches` on(`store_branches`.`Branch_Store_ID` = `stores`.`Branch_Store_ID`)) GROUP BY `stores`.`Branch_Store_ID` ;

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
  ADD KEY `Price` (`Price`),
  ADD KEY `Number_Plate` (`Number_Plate`);

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
  ADD KEY `PostalCode` (`PostalCode`),
  ADD KEY `Region` (`Region`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`Store_ID`),
  ADD KEY `idx_Branch_Store_ID` (`Branch_Store_ID`),
  ADD KEY `Store_ID` (`Store_ID`),
  ADD KEY `PostalCode` (`PostalCode`);

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
  MODIFY `Row` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `carsold`
--
ALTER TABLE `carsold`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `Emp_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee_service_langauge`
--
ALTER TABLE `employee_service_langauge`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feature_list`
--
ALTER TABLE `feature_list`
  MODIFY `Feature_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `stores_employee`
--
ALTER TABLE `stores_employee`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_branches`
--
ALTER TABLE `store_branches`
  MODIFY `Branch_Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  ADD CONSTRAINT `FK_Cars_Brand` FOREIGN KEY (`Brand_ID`) REFERENCES `brands` (`Brand_ID`),
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
