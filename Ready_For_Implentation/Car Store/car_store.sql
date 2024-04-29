-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 29, 2024 at 11:56 AM
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
CREATE DATABASE IF NOT EXISTS `car_store` DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE `car_store`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `active_employee_by_store`
-- (See below for the actual view)
--
CREATE TABLE `active_employee_by_store` (
`SSN` char(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`Store_Name` varchar(50)
);

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
(42, 'Seat'),
(43, 'Cupra');

-- --------------------------------------------------------

--
-- Table structure for table `carfeatures`
--

CREATE TABLE `carfeatures` (
  `Row_ID` int(50) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Feature_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `carfeatures`
--

INSERT INTO `carfeatures` (`Row_ID`, `VIN`, `Feature_ID`) VALUES
(1, 'YV1SW61R021197119', 7),
(2, 'YV1SW61R021197119', 10),
(3, '1M2AA18C0WW092489', 16),
(4, '1M2AA18C0WW092489', 13),
(5, '1M2AA18C0WW092489', 19),
(6, '1M2AA18C0WW092489', 17),
(7, '1M2AA18C0WW092489', 41),
(8, '1M2AA18C0WW092489', 33),
(9, '1M2AA18C0WW092489', 32),
(10, '1M2AA18C0WW092489', 44),
(11, '1M2AA18C0WW092489', 45),
(12, 'WAUHE98P29A071392', 5),
(13, 'WAUHE98P29A071392', 17),
(14, 'WAUHE98P29A071392', 20),
(15, 'WAUHE98P29A071392', 21),
(16, 'WAUHE98P29A071392', 13),
(17, 'JM3KE4BE2F0432552', 95),
(18, 'JM3KE4BE2F0432552', 21),
(19, 'JM3KE4BE2F0432552', 93),
(20, 'JM3KE4BE2F0432552', 15),
(21, 'YV1SW61R021197119', 2),
(22, 'YV1SW61R021197119', 3),
(23, 'YV1SW61R021197119', 99),
(24, 'WF0YXXTTGYNS57312', 6),
(25, 'WF0YXXTTGYNS57312', 3),
(26, 'WF0YXXTTGYNS57312', 19),
(27, 'WF0YXXTTGYNS57312', 82),
(28, 'JT2VV22E0J0018536', 11),
(29, 'JT2VV22E0J0018536', 6),
(30, 'JT2VV22E0J0018536', 5),
(31, 'JT2VV22E0J0018536', 20),
(32, 'JT2VV22E0J0018536', 9),
(33, '4JGBB72E98A297923', 97),
(34, '4JGBB72E98A297923', 67),
(35, '4JGBB72E98A297923', 16),
(36, '4JGBB72E98A297923', 13),
(37, '4JGBB72E98A297923', 95),
(38, 'WDBEA30E1NB582331', 37),
(39, 'WDBEA30E1NB582331', 83),
(40, 'WDBEA30E1NB582331', 80),
(41, 'WDBEA30E1NB582331', 76),
(42, 'WDBEA30E1NB582331', 16),
(43, 'WDBEA30E1NB582331', 9),
(44, 'WDBEA30E1NB582331', 32),
(45, 'WDBEA30E1NB582331', 89),
(46, 'WDBEA30E1NB582331', 96),
(47, 'WDBEA30E1NB582331', 5),
(48, 'WDBEA30E1NB582331', 7),
(49, 'WDBEA30E1NB582331', 17),
(50, 'WDBEA30E1NB582331', 101),
(51, 'WDBEA30E1NB582331', 102),
(52, '4JGBB72E98A297923', 101),
(53, '4JGBB72E98A297923', 102),
(54, 'WBAVB13256PS66453', 5),
(55, 'WBAVB13256PS66453', 95),
(56, 'WBAVB13256PS66453', 84),
(57, 'WBAVB13256PS66453', 15),
(58, 'WBAVB13256PS66453', 57),
(59, 'WBAVB13256PS66453', 28),
(60, 'WBAVB13256PS66453', 76),
(63, 'WBAVB13256PS66453', 110),
(64, 'WBAVB13256PS66453', 109),
(65, 'WBAVB13256PS66453', 108),
(66, 'WBAVB13256PS66453', 107),
(67, 'WBAVB13256PS66453', 105),
(68, 'WBAVB13256PS66453', 106),
(69, 'WBAVB13256PS66453', 16),
(71, 'WBAVB13256PS66453', 80),
(72, 'WBAVB13256PS66453', 17),
(74, 'WBAVB13256PS66453', 65),
(75, 'WBAVB13256PS66453', 13),
(76, 'WBAVB13256PS66453', 69),
(77, 'WBAVB13256PS66453', 96),
(78, 'WBAVB13256PS66453', 9),
(79, 'WBAVB13256PS66453', 101),
(80, 'WBAVB13256PS66453', 102),
(81, 'WP0AA2964PS820410', 80),
(83, 'WP0AA2964PS820410', 95),
(84, 'WP0AA2964PS820410', 110),
(85, 'WP0AA2964PS820410', 28),
(86, 'WP0AA2964PS820410', 101),
(87, 'WP0AA2964PS820410', 17),
(88, 'WP0AA2964PS820410', 76),
(89, 'WP0AA2964PS820410', 9),
(90, 'WP0AA2964PS820410', 67),
(91, '1FTDR15X4TPA96892', 34),
(92, '1FTDR15X4TPA96892', 32),
(93, '1FTDR15X4TPA96892', 24),
(94, '1FTDR15X4TPA96892', 57),
(95, '1FTDR15X4TPA96892', 40),
(96, '1FTDR15X4TPA96892', 66);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `Row_ID` int(15) NOT NULL,
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
  `Type_OF_Body` enum('Sedan','Hatchback','SUV','Wagon','Coupe','Logisti_Person_Van') DEFAULT NULL,
  `Draw_Method` enum('4WD','FWD','RWD') DEFAULT NULL,
  `Color` enum('White','Black','Silver','Red','Blue','Yellow','Orange') DEFAULT NULL,
  `Number_Of_Person` int(5) DEFAULT NULL,
  `Number_OF_Doors` int(5) DEFAULT NULL,
  `Power` varchar(15) DEFAULT NULL,
  `Mass` varchar(15) DEFAULT NULL,
  `TopSpeed` varchar(15) DEFAULT NULL,
  `Engine_Capacity` varchar(5) DEFAULT NULL,
  `Store_ID` int(15) DEFAULT NULL,
  `Date_OF_Add` date DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`Row_ID`, `VIN`, `Number_Plate`, `Brand_ID`, `Model`, `Model_Spec`, `Price`, `Year`, `Gearbox`, `Fuel_Type`, `Mileage`, `Type_OF_Car`, `Type_OF_Body`, `Draw_Method`, `Color`, `Number_Of_Person`, `Number_OF_Doors`, `Power`, `Mass`, `TopSpeed`, `Engine_Capacity`, `Store_ID`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(2, 'YV1SW61R021197119', 'VAR-873', 10, 'XC90', NULL, 65000, 2020, 'Automatic', 'Petrol', 119000, 'Person', 'SUV', '4WD', 'White', 7, 5, '252', '3500', '250', '3.1', 133, '2024-03-05', '2024-04-23 14:47:49'),
(3, '1D7HA18N38J191236', 'JIZ-610', 1, 'E-tron', NULL, 116000, 2020, 'Automatic', 'Petrol', 59000, 'Person', 'Sedan', '4WD', 'Black', 5, 3, '300', '2100', '300', '2.5', 2, '2024-03-06', '2024-03-06 13:07:38'),
(4, '4S3BJ6329M1918965', 'IAR-058', 10, 'XC90', 'T8 TwE AWD Recharge Inscription aut', 70000, 2021, 'Automatic', 'Petrol', 104000, 'Person', 'SUV', 'RWD', 'White', 7, 5, '252', '3500', '250', '3.1', 5, '2024-03-06', '2024-04-23 14:44:36'),
(5, 'JN6DY1AY8EX602144', 'HUI-995', 38, 'Pathfinder', '2,5 dCi SE 5AT 5-ov.', 7500, 2008, 'Manual', 'Diesel', 220000, 'Person', 'SUV', 'RWD', 'Blue', 5, 5, '150', '2600', '170', '3.5', 5, '2024-03-13', NULL),
(6, 'WVGMR67L090010501', 'IJN-970', 9, 'Passat', 'Sedan Comfortline 2,0 TDI 103 kW', 5000, 2010, 'Automatic', 'Petrol', 425000, 'Person', 'Sedan', 'RWD', 'Silver', 5, 5, '160', '1600', '250', '2.5', 74, '2024-03-07', '2024-04-24 15:28:01'),
(7, 'WB10557A13ZG36939', 'IPE-528', 2, '420', 'G26 Gran Coupé 420d A xDrive M Sport MHEV', 46500, 2022, 'Automatic', 'Petrol', 17000, 'Person', 'Sedan', 'RWD', 'Red', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2024-03-06', '2024-03-07 10:43:34'),
(8, 'YV1AX4747E1960685', 'LOE-886', 10, 'S90', 'D4 Business R-Design aut', 68000, 2018, 'Automatic', 'Petrol', 145000, 'Person', 'Sedan', '4WD', 'Silver', NULL, NULL, NULL, NULL, NULL, NULL, 10, '2024-03-07', '2024-04-23 13:30:53'),
(9, 'WDBLK70G61T061039', 'JJE-655', 4, 'G-Wagon', '63 AMG, G700 Brabus Widestar', 120000, 2022, 'Automatic', 'Petrol', 100, 'Person', 'SUV', '4WD', 'Yellow', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2024-03-07', '2024-04-23 14:52:20'),
(10, 'WDDUG7JB1EA027074', 'HYY-779', 4, 'GLS', '600 Maybach', 65000, 2024, 'Automatic', 'Petrol', 200, 'Person', 'SUV', '4WD', 'Black', NULL, NULL, NULL, NULL, NULL, NULL, 72, '2024-03-07', '2024-04-23 14:52:15'),
(11, 'ZA9DU01B21L903178', 'MMH-119', 22, 'Huracán', 'Huracan Evo Spyder 640hv', 98000, 2020, 'Automatic', 'Petrol', 16000, 'Person', 'Coupe', 'RWD', 'Silver', NULL, NULL, NULL, NULL, NULL, NULL, 39, '2024-03-07', '2024-04-23 14:52:24'),
(12, 'ZFF73SKA9E0200021', 'LLK-225', 12, 'Portofino', 'Ferrari M Ferrari Portofino M Avoauto (AE)', 98000, 2023, 'Automatic', 'Petrol', 1000, 'Person', 'Coupe', 'RWD', 'Red', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2024-03-07', '2024-04-23 14:51:59'),
(13, 'WAU3FLFF5F1034279', 'OXS-665', 1, 'RS6', NULL, 64000, 2020, 'Automatic', 'Petrol', 44000, 'Person', 'Sedan', '4WD', 'Blue', NULL, NULL, NULL, NULL, NULL, NULL, 7, '2024-03-07', '2024-04-23 14:52:10'),
(14, 'WUAENAFG5FN000527', 'FRM-648', 1, 'Q8 e-tron', 'SQ8 e-tron quattro', 125000, 2023, 'Automatic', 'Petrol', 50, 'Person', 'SUV', '4WD', 'Black', 5, 5, '250', '2300', '300', '3.5', 2, '2024-03-07', '2024-03-07 10:30:29'),
(15, 'JT2VV22E0J0018536', 'YLC-633', 8, 'Land Cruiser', NULL, 65000, 2019, 'Automatic', 'Diesel', 75000, 'Person', 'SUV', '4WD', 'White', 7, 5, '0', '0', '0', '', 6, '2024-03-07', NULL),
(16, 'SCBBB7ZH2FC053880', 'GTW-129', 19, 'Continental', 'GT Coupe W12 Twin Turbo', 79000, 2006, 'Automatic', 'Diesel', 75000, 'Person', 'Sedan', '4WD', 'Black', 4, 5, '350', '2600', '350', '5.1', 84, '2024-03-07', '2024-04-24 15:29:23'),
(17, '1GKEC13V21J196436', 'UJH-331', 14, 'Sierra', '1500 Crew cab 3.0 duramax Turbo-diesel, 10-speed A', 125000, 2024, 'Automatic', 'Diesel', 500, 'Person', 'Sedan', '4WD', 'Red', 5, 2, '350', '3500', '250', '6.1', 13, '2024-03-06', NULL),
(18, 'WAUHFBFR9AA011915', 'GYA-181', 1, 'A6', 'Sedan 50 TFSI e quattro S-tronic', 59500, 2023, 'Automatic', 'Petrol', 13000, 'Person', 'Sedan', '4WD', 'Silver', 5, 5, '295', '2100', '270', NULL, 91, '2024-03-18', '2024-04-05 11:52:50'),
(19, 'WA1VGCFE0D0016673', 'IMA-570', 1, 'S3', 'Sedan 2,0 TFSI quattro S tronic', 33990, 2015, 'Automatic', 'Petrol', 96000, 'Person', 'Sedan', '4WD', 'Red', 5, 4, '221', '1535', '250', '2.1', 93, '2024-03-18', '2024-04-05 11:52:56'),
(20, 'WAUHE98P29A071392', 'BXU-870', 2, '318', 'G20 Sedan 318d A Business', 24890, 2019, 'Automatic', 'Diesel', 70000, 'Person', 'Sedan', 'RWD', 'Black', 7, 5, '189', '2600', '210', '1.8', 92, '2024-03-18', '2024-04-05 11:53:00'),
(21, '1M2AA18C0WW092489', 'KUA-347', 7, 'Octavia', 'Ambition Launch Edition DSG', 18650, 2020, 'Automatic', 'Diesel', 136000, 'Person', 'Sedan', 'FWD', 'Blue', 5, 4, '115', '1461', '227', '2.1', 93, '2024-03-18', NULL),
(22, '3N1AB61E59L645953', 'JKC-161', 38, 'Qashqai', 'DIG-T 115 Acenta 2WD 6M/T Safety Pack', 12400, 2017, 'Manual', 'Petrol', 98000, 'Person', 'SUV', 'FWD', 'Blue', 5, 5, '86', NULL, NULL, '1.2', 19, '2024-03-21', '2024-03-21 11:33:23'),
(24, '5YJSA1DP2DFP07403', 'VAR-657', 11, 'Model 3', 'Long-Range Dual Motor AWD', 32800, 2016, 'Automatic', 'Electric', 88000, 'Person', 'SUV', '4WD', 'Blue', 5, 4, '65', NULL, NULL, NULL, 12, '2024-03-21', '2024-04-23 14:55:27'),
(25, '3VWJ17AT8EM646195', 'NKF-190', 9, 'Passat', 'Variant Alltrack 2,0 TDI 140 kW 4MOTION DSG', 16900, NULL, 'Automatic', 'Diesel', 220000, 'Person', 'Sedan', '4WD', 'Silver', 5, 5, NULL, NULL, NULL, NULL, 26, '2024-03-21', '2024-04-23 14:57:58'),
(26, '5XYKWDA20BG098863', 'OYU-292', 32, 'Venga', '1,4 ISG EX 5D EcoDynamics', 4400, NULL, 'Automatic', 'Petrol', 184000, 'Person', 'SUV', 'FWD', 'Blue', 5, 4, NULL, NULL, NULL, 'NULL', 1, '2024-03-21', '2024-04-23 14:57:58'),
(27, 'KNDMB5C13H6230590', 'VAR-461', 32, 'Sorento', '1,6 T-GDI Plug-in Hybrid AWD Business Premium AT 7', 40500, NULL, 'Automatic', 'Plug-In Hybrid', 11000, 'Person', 'SUV', '4WD', 'Blue', 5, 4, '0', NULL, NULL, 'NULL', 135, '2024-03-21', '2024-04-24 15:26:59'),
(28, '4JGBB72E98A297923', 'VXN-476', 4, 'EQC', '400 4MATIC Business', 50900, NULL, 'Automatic', 'Electric', 56000, 'Person', 'SUV', '4WD', 'White', 5, 4, '0', NULL, NULL, 'NULL', 1, '2024-03-21', '2024-04-23 14:55:34'),
(35, '1NXAE82G1HZ435690', 'LKJ-876', 8, 'RAV4', '2,5 Hybrid AWD-i Active', 42800, NULL, 'Manual', 'Plug-In Hybrid', 42000, 'Person', 'SUV', '4WD', 'White', 5, 4, 'NULL', 'NULL', 'NULL', 'NULL', 1, '2024-03-21', '2024-04-23 14:56:01'),
(36, '4V1KLDJF1LN627146', 'EWR-876', 10, 'V60', 'T8 AWD Long Range High Performance R-Design aut', 47900, NULL, 'Automatic', 'Plug-In Hybrid', 89000, 'Person', 'SUV', '4WD', 'Silver', 5, 4, '335', 'NULL', 'NULL', '2.1', 5, '2024-03-21', '2024-04-23 14:58:34'),
(37, 'JM3KE4BE2F0432552', 'RSE-128', 34, '6', 'Sedan 2,0 (165) SKYACTIV-G Premium Plus 6AT 4ov SL', 16900, NULL, 'Manual', 'Petrol', 110000, 'Person', 'Sedan', 'FWD', 'Blue', 5, 4, '121', '1500', '209', '2.1', 5, '2024-03-21', '2024-04-23 14:56:10'),
(38, '1YVGF22D225527370', 'CTG-337', 34, '6', 'Sport Wagon 2,2 (150) SKYACTIV-D PREMIUM Plus 6AT', 12400, 2015, 'Manual', 'Diesel', 157000, 'Person', 'Wagon', 'FWD', 'Red', 5, 4, '110', '1600', '202', '2.2', 10, '2024-03-21', '2024-04-23 14:58:45'),
(39, 'WVWAAA3C2CE516820', 'AAQ-980', 9, 'Arteon', 'Shooting Brake R-Line eHybrid ', 34400, 2021, 'Automatic', 'Plug-In Hybrid', 58000, 'Person', 'Wagon', 'FWD', 'Silver', 5, 4, '160', 'NULL', 'NULL', '1.4', 1, '2024-03-21', '2024-04-23 14:56:15'),
(40, 'WBAFF8402D7852216', 'LRT-399', 2, '530', 'G30 Sedan 530e xDrive A Charged Edition M Sport', 57900, 2023, 'Automatic', 'Plug-In Hybrid', 14000, 'Person', 'Sedan', '4WD', 'Silver', 5, 4, '135', '2000', '290', '3.0', 112, '2024-03-22', '2024-04-23 14:59:27'),
(41, 'WBAYF8C52EDS00432', 'NNB-507', 2, 'M2', 'M2 Coupé', 133859, 2023, 'Automatic', 'Petrol', 5, 'Person', 'Coupe', 'RWD', 'Red', 4, 2, '338', '1200', '310', '4.2', 111, '2024-03-22', '2024-04-23 14:59:27'),
(42, 'SALWA2BY5LA713795', 'RUK-178', 13, 'Range Rover Spo', '400e Plug-in Hybrid HSE Dynamic', 68000, 2020, 'Automatic', 'Plug-In Hybrid', 78000, 'Person', 'SUV', '4WD', 'White', 5, 5, '221', NULL, NULL, '2.9', 113, '2024-03-28', '2024-04-23 13:33:07'),
(43, 'W1N1673171A302625', 'CPO-562', 4, 'GLE', '350 de 4MATIC Coupé AMG', 81800, 2021, 'Automatic', 'Plug-In Hybrid', 45000, 'Person', 'SUV', '4WD', 'White', 5, 5, '143', NULL, NULL, '1.95', 113, '2024-03-28', NULL),
(44, 'WF0YXXTTGYNS57312', 'XRL-291', 3, 'Transit Custom', '320 2,0TDCi 170 hv A6 Etuveto Limited Van N1 L2H1', 39800, 2022, 'Manual', 'Diesel', 25000, 'Van', 'Logisti_Person_Van', 'FWD', 'White', 2, 3, '125', NULL, NULL, '2.0', 114, '2024-03-28', '2024-04-23 15:00:19'),
(48, 'SALGA2BY7JA507105', 'JLF-602', 13, 'Range Rover', 'P400e Autobiography', 76800, 2018, 'Automatic', 'Plug-In Hybrid', 90000, 'Person', 'SUV', '4WD', 'Silver', 5, 5, '221', '2000', '290', '3.0', 116, '2024-04-05', '2024-04-23 14:59:27'),
(49, 'WDBEA30E1NB582331', 'NNN-400', 4, 'EQB', '300 4MATIC Business Progressive', 49800, 2022, 'Automatic', 'Electric', 12000, 'Person', 'SUV', '4WD', 'Silver', 5, 5, '228', '2202', '160', '1.2', 71, '2024-04-09', '2024-04-23 14:59:27'),
(50, 'JH4KA8260PC000495', 'GGY-123', 43, 'Formentor', 'VZ 1.4 PHEV 180 kW e-HYBRID DSG', 29890, 2023, 'Automatic', 'Plug-In Hybrid', 53000, 'Person', 'SUV', 'FWD', 'Silver', 5, 5, '110', '2120', '210', '1.4', 132, '2024-04-09', '2024-04-23 14:59:27'),
(51, 'WBAVB13256PS66453', 'GGY-098', 2, 'X5', 'G05 xDrive45e \"X5 M\" * ACC', 74690, 2023, 'Automatic', 'Plug-In Hybrid', 82000, 'Person', 'SUV', '4WD', 'Silver', 5, 4, '290', '2150', '310', '3.0', 133, '2024-04-09', '2024-04-23 14:59:27'),
(52, 'WP0AA2964PS820410', 'KLP-337', 16, 'Taycan', '4S Cross Turismo * Nelipyöräohjaus', 88990, 2023, 'Automatic', 'Electric', 53000, 'Person', 'Wagon', '4WD', 'Black', 5, 4, '420', '2885', '240', '0.0', 132, '2024-04-09', '2024-04-23 14:59:27'),
(53, '1FTDR15X4TPA96892', 'UVG-483', 32, 'SPORTAGE', '1,6 ISG Urban Active EcoDynamics ', 12, 2014, 'Automatic', 'Petrol', 107, 'Person', 'SUV', 'FWD', 'Silver', 5, 4, '99', '1200', '178', '1,6', 134, '2024-04-10', '2024-04-23 14:59:27');

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
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Code` char(3) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `Name` char(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Code`, `Name`, `Continent`) VALUES
('ABW', 'Aruba', 'North America'),
('AFG', 'Afghanistan', 'Asia'),
('AGO', 'Angola', 'Africa'),
('AIA', 'Anguilla', 'North America'),
('ALB', 'Albania', 'Europe'),
('AND', 'Andorra', 'Europe'),
('ANT', 'Netherlands Antilles', 'North America'),
('ARE', 'United Arab Emirates', 'Asia'),
('ARG', 'Argentina', 'South America'),
('ARM', 'Armenia', 'Asia'),
('ASM', 'American Samoa', 'Oceania'),
('ATA', 'Antarctica', 'Antarctica'),
('ATF', 'French Southern territories', 'Antarctica'),
('ATG', 'Antigua and Barbuda', 'North America'),
('AUS', 'Australia', 'Oceania'),
('AUT', 'Austria', 'Europe'),
('AZE', 'Azerbaijan', 'Asia'),
('BDI', 'Burundi', 'Africa'),
('BEL', 'Belgium', 'Europe'),
('BEN', 'Benin', 'Africa'),
('BFA', 'Burkina Faso', 'Africa'),
('BGD', 'Bangladesh', 'Asia'),
('BGR', 'Bulgaria', 'Europe'),
('BHR', 'Bahrain', 'Asia'),
('BHS', 'Bahamas', 'North America'),
('BIH', 'Bosnia and Herzegovina', 'Europe'),
('BLR', 'Belarus', 'Europe'),
('BLZ', 'Belize', 'North America'),
('BMU', 'Bermuda', 'North America'),
('BOL', 'Bolivia', 'South America'),
('BRA', 'Brazil', 'South America'),
('BRB', 'Barbados', 'North America'),
('BRN', 'Brunei', 'Asia'),
('BTN', 'Bhutan', 'Asia'),
('BVT', 'Bouvet Island', 'Antarctica'),
('BWA', 'Botswana', 'Africa'),
('CAF', 'Central African Republic', 'Africa'),
('CAN', 'Canada', 'North America'),
('CCK', 'Cocos (Keeling) Islands', 'Oceania'),
('CHE', 'Switzerland', 'Europe'),
('CHL', 'Chile', 'South America'),
('CHN', 'China', 'Asia'),
('CIV', 'Côte d’Ivoire', 'Africa'),
('CMR', 'Cameroon', 'Africa'),
('COD', 'Congo, The Democratic Republic of the', 'Africa'),
('COG', 'Congo', 'Africa'),
('COK', 'Cook Islands', 'Oceania'),
('COL', 'Colombia', 'South America'),
('COM', 'Comoros', 'Africa'),
('CPV', 'Cape Verde', 'Africa'),
('CRI', 'Costa Rica', 'North America'),
('CUB', 'Cuba', 'North America'),
('CXR', 'Christmas Island', 'Oceania'),
('CYM', 'Cayman Islands', 'North America'),
('CYP', 'Cyprus', 'Asia'),
('CZE', 'Czech Republic', 'Europe'),
('DEU', 'Germany', 'Europe'),
('DJI', 'Djibouti', 'Africa'),
('DMA', 'Dominica', 'North America'),
('DNK', 'Denmark', 'Europe'),
('DOM', 'Dominican Republic', 'North America'),
('DZA', 'Algeria', 'Africa'),
('ECU', 'Ecuador', 'South America'),
('EGY', 'Egypt', 'Africa'),
('ERI', 'Eritrea', 'Africa'),
('ESH', 'Western Sahara', 'Africa'),
('ESP', 'Spain', 'Europe'),
('EST', 'Estonia', 'Europe'),
('ETH', 'Ethiopia', 'Africa'),
('FIN', 'Finland', 'Europe'),
('FJI', 'Fiji Islands', 'Oceania'),
('FLK', 'Falkland Islands', 'South America'),
('FRA', 'France', 'Europe'),
('FRO', 'Faroe Islands', 'Europe'),
('FSM', 'Micronesia, Federated States of', 'Oceania'),
('GAB', 'Gabon', 'Africa'),
('GBR', 'United Kingdom', 'Europe'),
('GEO', 'Georgia', 'Asia'),
('GHA', 'Ghana', 'Africa'),
('GIB', 'Gibraltar', 'Europe'),
('GIN', 'Guinea', 'Africa'),
('GLP', 'Guadeloupe', 'North America'),
('GMB', 'Gambia', 'Africa'),
('GNB', 'Guinea-Bissau', 'Africa'),
('GNQ', 'Equatorial Guinea', 'Africa'),
('GRC', 'Greece', 'Europe'),
('GRD', 'Grenada', 'North America'),
('GRL', 'Greenland', 'North America'),
('GTM', 'Guatemala', 'North America'),
('GUF', 'French Guiana', 'South America'),
('GUM', 'Guam', 'Oceania'),
('GUY', 'Guyana', 'South America'),
('HKG', 'Hong Kong', 'Asia'),
('HMD', 'Heard Island and McDonald Islands', 'Antarctica'),
('HND', 'Honduras', 'North America'),
('HRV', 'Croatia', 'Europe'),
('HTI', 'Haiti', 'North America'),
('HUN', 'Hungary', 'Europe'),
('IDN', 'Indonesia', 'Asia'),
('IND', 'India', 'Asia'),
('IOT', 'British Indian Ocean Territory', 'Africa'),
('IRL', 'Ireland', 'Europe'),
('IRN', 'Iran', 'Asia'),
('IRQ', 'Iraq', 'Asia'),
('ISL', 'Iceland', 'Europe'),
('ISR', 'Israel', 'Asia'),
('ITA', 'Italy', 'Europe'),
('JAM', 'Jamaica', 'North America'),
('JOR', 'Jordan', 'Asia'),
('JPN', 'Japan', 'Asia'),
('KAZ', 'Kazakstan', 'Asia'),
('KEN', 'Kenya', 'Africa'),
('KGZ', 'Kyrgyzstan', 'Asia'),
('KHM', 'Cambodia', 'Asia'),
('KIR', 'Kiribati', 'Oceania'),
('KNA', 'Saint Kitts and Nevis', 'North America'),
('KOR', 'South Korea', 'Asia'),
('KWT', 'Kuwait', 'Asia'),
('LAO', 'Laos', 'Asia'),
('LBN', 'Lebanon', 'Asia'),
('LBR', 'Liberia', 'Africa'),
('LBY', 'Libyan Arab Jamahiriya', 'Africa'),
('LCA', 'Saint Lucia', 'North America'),
('LIE', 'Liechtenstein', 'Europe'),
('LKA', 'Sri Lanka', 'Asia'),
('LSO', 'Lesotho', 'Africa'),
('LTU', 'Lithuania', 'Europe'),
('LUX', 'Luxembourg', 'Europe'),
('LVA', 'Latvia', 'Europe'),
('MAC', 'Macao', 'Asia'),
('MAR', 'Morocco', 'Africa'),
('MCO', 'Monaco', 'Europe'),
('MDA', 'Moldova', 'Europe'),
('MDG', 'Madagascar', 'Africa'),
('MDV', 'Maldives', 'Asia'),
('MEX', 'Mexico', 'North America'),
('MHL', 'Marshall Islands', 'Oceania'),
('MKD', 'Macedonia', 'Europe'),
('MLI', 'Mali', 'Africa'),
('MLT', 'Malta', 'Europe'),
('MMR', 'Myanmar', 'Asia'),
('MNG', 'Mongolia', 'Asia'),
('MNP', 'Northern Mariana Islands', 'Oceania'),
('MOZ', 'Mozambique', 'Africa'),
('MRT', 'Mauritania', 'Africa'),
('MSR', 'Montserrat', 'North America'),
('MTQ', 'Martinique', 'North America'),
('MUS', 'Mauritius', 'Africa'),
('MWI', 'Malawi', 'Africa'),
('MYS', 'Malaysia', 'Asia'),
('MYT', 'Mayotte', 'Africa'),
('NAM', 'Namibia', 'Africa'),
('NCL', 'New Caledonia', 'Oceania'),
('NER', 'Niger', 'Africa'),
('NFK', 'Norfolk Island', 'Oceania'),
('NGA', 'Nigeria', 'Africa'),
('NIC', 'Nicaragua', 'North America'),
('NIU', 'Niue', 'Oceania'),
('NLD', 'Netherlands', 'Europe'),
('NOR', 'Norway', 'Europe'),
('NPL', 'Nepal', 'Asia'),
('NRU', 'Nauru', 'Oceania'),
('NZL', 'New Zealand', 'Oceania'),
('OMN', 'Oman', 'Asia'),
('PAK', 'Pakistan', 'Asia'),
('PAN', 'Panama', 'North America'),
('PCN', 'Pitcairn', 'Oceania'),
('PER', 'Peru', 'South America'),
('PHL', 'Philippines', 'Asia'),
('PLW', 'Palau', 'Oceania'),
('PNG', 'Papua New Guinea', 'Oceania'),
('POL', 'Poland', 'Europe'),
('PRI', 'Puerto Rico', 'North America'),
('PRK', 'North Korea', 'Asia'),
('PRT', 'Portugal', 'Europe'),
('PRY', 'Paraguay', 'South America'),
('PSE', 'Palestine', 'Asia'),
('PYF', 'French Polynesia', 'Oceania'),
('QAT', 'Qatar', 'Asia'),
('REU', 'Réunion', 'Africa'),
('ROM', 'Romania', 'Europe'),
('RUS', 'Russian Federation', 'Europe'),
('RWA', 'Rwanda', 'Africa'),
('SAU', 'Saudi Arabia', 'Asia'),
('SDN', 'Sudan', 'Africa'),
('SEN', 'Senegal', 'Africa'),
('SGP', 'Singapore', 'Asia'),
('SGS', 'South Georgia and the South Sandwich Islands', 'Antarctica'),
('SHN', 'Saint Helena', 'Africa'),
('SJM', 'Svalbard and Jan Mayen', 'Europe'),
('SLB', 'Solomon Islands', 'Oceania'),
('SLE', 'Sierra Leone', 'Africa'),
('SLV', 'El Salvador', 'North America'),
('SMR', 'San Marino', 'Europe'),
('SOM', 'Somalia', 'Africa'),
('SPM', 'Saint Pierre and Miquelon', 'North America'),
('STP', 'Sao Tome and Principe', 'Africa'),
('SUR', 'Suriname', 'South America'),
('SVK', 'Slovakia', 'Europe'),
('SVN', 'Slovenia', 'Europe'),
('SWE', 'Sweden', 'Europe'),
('SWZ', 'Swaziland', 'Africa'),
('SYC', 'Seychelles', 'Africa'),
('SYR', 'Syria', 'Asia'),
('TCA', 'Turks and Caicos Islands', 'North America'),
('TCD', 'Chad', 'Africa'),
('TGO', 'Togo', 'Africa'),
('THA', 'Thailand', 'Asia'),
('TJK', 'Tajikistan', 'Asia'),
('TKL', 'Tokelau', 'Oceania'),
('TKM', 'Turkmenistan', 'Asia'),
('TMP', 'East Timor', 'Asia'),
('TON', 'Tonga', 'Oceania'),
('TTO', 'Trinidad and Tobago', 'North America'),
('TUN', 'Tunisia', 'Africa'),
('TUR', 'Turkey', 'Asia'),
('TUV', 'Tuvalu', 'Oceania'),
('TWN', 'Taiwan', 'Asia'),
('TZA', 'Tanzania', 'Africa'),
('UGA', 'Uganda', 'Africa'),
('UKR', 'Ukraine', 'Europe'),
('UMI', 'United States Minor Outlying Islands', 'Oceania'),
('URY', 'Uruguay', 'South America'),
('USA', 'United States', 'North America'),
('UZB', 'Uzbekistan', 'Asia'),
('VAT', 'Holy See (Vatican City State)', 'Europe'),
('VCT', 'Saint Vincent and the Grenadines', 'North America'),
('VEN', 'Venezuela', 'South America'),
('VGB', 'Virgin Islands, British', 'North America'),
('VIR', 'Virgin Islands, U.S.', 'North America'),
('VNM', 'Vietnam', 'Asia'),
('VUT', 'Vanuatu', 'Oceania'),
('WLF', 'Wallis and Futuna', 'Oceania'),
('WSM', 'Samoa', 'Oceania'),
('YEM', 'Yemen', 'Asia'),
('YUG', 'Yugoslavia', 'Europe'),
('ZAF', 'South Africa', 'Africa'),
('ZMB', 'Zambia', 'Africa'),
('ZWE', 'Zimbabwe', 'Africa');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `Credentials_ID` int(15) NOT NULL,
  `Emp_ID` int(15) DEFAULT NULL,
  `Customer_ID` int(15) DEFAULT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`Credentials_ID`, `Emp_ID`, `Customer_ID`, `Username`, `Password`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, 6, NULL, 'JoonaHautaniemi@dayrep.com', 'ooph8ox9Ae', '2024-03-06', '2024-03-26 13:20:38'),
(2, NULL, 1, 'VeikkoPaasio@teleworm.us', '9z5?7[K23qh', '2024-03-26', '2024-03-26 13:17:14'),
(3, 13, NULL, 'SilasJosefsen@jourrapide.com', 'ooSG1Ae', '2024-03-26', '2024-03-26 14:59:45'),
(4, NULL, 5, 'SelmaLehkosuo@teleworm.us', 'Ia3U7P=Q{NN6', '2024-03-26', NULL),
(19, NULL, 10, 'GeorginoSuijkerbuijk@armyspy.com', '6NO9wSvv0a', '2024-04-02', NULL),
(20, NULL, 9, 'MahdiDelgado@teleworm.us', '02p8mcuy?G', '2024-04-02', NULL),
(23, 19, NULL, 'ElsaVayrynen@jourrapide.com', 'z71-6iRQ87', '2024-04-02', NULL),
(24, 18, NULL, 'WilliamWMack@teleworm.us', '2_j?F31z#&', '2024-04-02', NULL),
(25, 17, NULL, 'CarolineDRivera@jourrapide.com', '83y3R03l01', '2024-04-02', NULL),
(26, NULL, 6, 'AnnemariPappila@teleworm.us', '885b_[93p{', '2024-04-02', NULL),
(27, NULL, 2, 'TiinaOjala@teleworm.us', '3k7pb30dRG', '2024-04-02', NULL),
(28, NULL, 3, 'GraceJohnson@dayrep.com', '@15g01QKYs', '2024-04-02', NULL),
(29, NULL, 4, 'ClaudiaBader@rhyta.com', '2wKHiY2s5J', '2024-04-02', NULL),
(30, NULL, 7, 'GodfriedvanDieten@dayrep.com', 'd/83.UVz!q', '2024-04-02', NULL),
(31, NULL, 8, 'ShanayaHingstman@rhyta.com', '1X9F%E9kBc', '2024-04-02', NULL),
(32, 7, NULL, 'KatjaBerglund@jourrapide.com', 'f|#J?PnXyXd', '2024-04-02', NULL),
(33, 8, NULL, 'IsmoAhokainen@armyspy.com', 'H6XJiU(183G', '2024-04-02', NULL),
(34, 10, NULL, 'CynthiaALindsey@teleworm.us', '9G89d.&4Or', '2024-04-02', NULL),
(35, 9, NULL, 'PetteriViljanen@jourrapide.com', ']X&:YcVE-46', '2024-04-02', NULL),
(36, 11, NULL, 'AliisaAutio@dayrep.com', 'BFHYk1*9+/9', '2024-04-02', NULL),
(37, 12, NULL, 'KimNilsen@teleworm.us', 'M7DSf2ENf2', '2024-04-02', NULL),
(38, 14, NULL, 'AzharMasudahNaifeh@rhyta.com', 'g6694IXxA2', '2024-04-02', NULL),
(39, 15, NULL, 'RuwaydahNafisahShammas@jourrapide.com', '83k7Noj3Lo', '2024-04-02', NULL),
(40, 16, NULL, 'GersomGrinwis@jourrapide.com', '3yZ5O5aVX9', '2024-04-02', NULL);

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
  `Nationality` char(3) DEFAULT NULL,
  `Title_OF_Courtesy` enum('Mr.','Ms.','Mrs.') NOT NULL,
  `Phone` char(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PostalCode` char(5) NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `SSN`, `F_Name`, `L_Name`, `Gender`, `Nationality`, `Title_OF_Courtesy`, `Phone`, `Email`, `Address`, `PostalCode`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, '090941-1350', 'Veikko', 'Paasio', 'Male', 'FIN', 'Mr.', '042 055 0923', 'VeikkoPaasio@teleworm.us', 'Kluuvikatu 18', '01610', '2024-03-06', '2024-04-24 12:04:47'),
(2, '180247-682B', 'Tiina', 'Ojala', 'Female', 'FIN', 'Ms.', '041 619 1968', 'TiinaOjala@teleworm.us', 'Piilostentie 65', '40320', '2024-03-06', '2024-04-24 12:07:44'),
(3, '121043-870Y', 'Grace', 'Johnson', 'Female', 'GBR', 'Ms.', '042 523 8342', 'GraceJohnson@dayrep.com', 'Sahankatu 75', '13130', '2024-03-06', '2024-04-24 12:05:15'),
(4, '210660-062V', 'Claudia', 'Bader', 'Female', 'CAN', 'Mrs.', '046 140 0984', 'ClaudiaBader@rhyta.com', 'Kanslerinrinne 35', '02600', '2024-03-06', '2024-04-24 12:05:23'),
(5, '281099-284U', 'Selma ', 'Lehkosuo', 'Female', 'FIN', 'Ms.', '041 097 1229\n', 'SelmaLehkosuo@teleworm.us', 'Piilostentie 32', '40320', '2024-03-22', '2024-04-24 12:05:36'),
(6, '161254-514H', 'Annemari', 'Pappila', 'Female', 'FIN', 'Mrs.', '044 657 7040\n', 'AnnemariPappila@teleworm.us', 'Ysitie 84', '33400', '2024-03-22', '2024-04-24 12:06:38'),
(7, '150582-557U', 'Godfried', 'Van Dieten', 'Male', 'NER', 'Mr.', '050 325 7971\n', 'GodfriedvanDieten@dayrep.com', 'Liisankatu 66', '15840', '2024-03-22', '2024-04-24 12:06:52'),
(8, '221140-662R', 'Shanaya', 'Hingstman', 'Female', 'NOR', 'Ms.', '050 305 0982\n', 'ShanayaHingstman@rhyta.com', 'Hätilänkatu 23', '15610', '2024-03-22', '2024-04-24 12:07:03'),
(9, '220672-251P', 'Mahdi', 'Delgado', 'Male', 'IRN', 'Mr.', '041 411 2915\n', 'MahdiDelgado@teleworm.us', 'Puutarhakatu 19', '01510', '2024-03-22', '2024-04-24 12:06:28'),
(10, '241138-109N', 'Georgino', 'Suijkerbuijk', 'Male', 'ITA', 'Mr.', '042 567 8687\n', 'GeorginoSuijkerbuijk@armyspy.com', 'Ysitie 33', '33400', '2024-03-22', '2024-04-24 12:06:15');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_credentials`
-- (See below for the actual view)
--
CREATE TABLE `customer_credentials` (
`Credentials_ID` int(15)
,`Customer_ID` int(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`Username` varchar(50)
,`Password` varchar(50)
,`Date_OF_Add` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `deactive_employee_by_store`
-- (See below for the actual view)
--
CREATE TABLE `deactive_employee_by_store` (
`SSN` char(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`Store_Name` varchar(50)
,`Service_Status` enum('Contract ended','Got fired','Active')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employeecanspeaklanguage`
-- (See below for the actual view)
--
CREATE TABLE `employeecanspeaklanguage` (
`SSN` char(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`language` mediumtext
);

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
  `Image` varchar(100) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PostalCode` char(5) NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Reports_To` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Emp_ID`, `SSN`, `F_Name`, `L_Name`, `Gender`, `Phone`, `Email`, `Image`, `Address`, `PostalCode`, `Date_OF_Add`, `Date_OF_Update`, `Reports_To`) VALUES
(6, '241003A159E', 'Joona ', 'Hautaniemi', 'Male', '041 213 8542', 'JoonaHautaniemi@dayrep.com', 'u4u46u4uu64uu', 'Keskustie 59', '00100', '2021-03-03', '2024-03-06 13:39:19', NULL),
(7, '270772-3221', 'Katja', 'Berglund', 'Female', '044 780 2773', 'KatjaBerglund@jourrapide.com', 'uogfigygoigogougougu', 'Kangasmoisionkatu 49', '00390', '2024-03-06', '2024-03-06 13:40:58', 6),
(8, '151187-291C', 'Ismo', 'Ahokainen', 'Male', '044 124 2790', 'IsmoAhokainen@armyspy.com', 'jtrjykurkurkryejutjyrhjukteejyhtegrwtshyjdmhngbfds', 'Norra Larsmovägen 67', '70200', '2024-03-18', '2024-03-18 15:58:36', NULL),
(9, '260666-673B', 'Petteri', 'Viljanen', 'Male', '041 434 6692', 'PetteriViljanen@jourrapide.com', 'rtyuiuyjthgrefdwsqwdferthyjuki', 'Kunnankuja 55', '90420', '2024-03-18', '2024-03-18 15:59:12', NULL),
(10, '290566-460L', 'Cynthia', 'A. Lindsey', 'Female', '041 854 0282\n', 'CynthiaALindsey@teleworm.us', '', 'Hätilänkatu 49', '15610', '0000-00-00', '2024-04-02 14:54:09', 8),
(11, '220364-0989', 'Aliisa ', 'Autio', 'Female', '050 775 9997\n', 'AliisaAutio@dayrep.com', '', 'Lönnrotinkatu 84', '40320', '2024-03-12', '2024-04-02 14:58:43', NULL),
(12, '121182-5650', 'Kim ', 'Nilsen', 'Male', '040 665 1181\n', 'KimNilsen@teleworm.us', '', 'Mämminiementie 63', '20320', '2024-03-26', '2024-04-02 14:54:38', NULL),
(13, '210254-299R', 'Silas', 'Josefsen', 'Male', '040 005 1181\n', 'SilasJosefsen@jourrapide.com', '', 'Viinikantie 77', '13130', '2024-03-26', '2024-04-02 14:54:53', NULL),
(14, '301250-0684', 'Azhar Mas\'udah', 'Naifeh', 'Male', '042 446 7706\n', 'AzharMasudahNaifeh@rhyta.com', '', 'Kerkkolankatu 63', '87400', '2024-03-26', '2024-04-02 14:55:07', NULL),
(15, '310398-690Y', 'Ruwaydah Nafisah', 'Shammas', 'Female', '040 203 4405\n', 'RuwaydahNafisahShammas@jourrapide.com', '', 'Kluuvikatu 24', '01720', '2024-03-26', '2024-04-02 14:55:17', NULL),
(16, '170267-397N', 'Gersom', 'Grinwis', 'Male', '044 441 8498', 'GersomGrinwis@jourrapide.com', '', 'Kluuvikatu 20', '01510', '2024-03-26', '2024-03-26 16:00:30', NULL),
(17, '020986-374T', 'Caroline', 'D. Rivera', 'Female', '046 568 2014', 'CarolineDRivera@jourrapide.com', '', 'Kaarrostie 82', '01510', '2024-04-02', '2024-04-02 14:55:56', 16),
(18, '090569-621V', 'William', 'W. Mack', 'Male', '050 243 3129', 'WilliamWMack@teleworm.us', '', 'Mämminiementie 68', '20320', '2024-04-02', '2024-04-02 14:57:08', 12),
(19, '181268-140B', 'Elsa', 'Väyrynen', 'Female', '044 835 4723', 'ElsaVayrynen@jourrapide.com', '', 'Kangasmoisionkatu 79', '40320', '2024-04-02', '2024-04-02 11:16:53', NULL);

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
-- Stand-in structure for view `employee_credentials`
-- (See below for the actual view)
--
CREATE TABLE `employee_credentials` (
`Credentials_ID` int(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`Username` varchar(50)
,`Password` varchar(50)
,`Date_OF_Add` date
);

-- --------------------------------------------------------

--
-- Table structure for table `employee_service_langauge`
--

CREATE TABLE `employee_service_langauge` (
  `Row_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `Language` enum('ENG','FIN','RUS','SWE','EE','SPA','FRA','DEU','DUT','NOR','POL','LUX','GRE','POR','PER','SAU','IRN','AFG','IND','CHI','JAP','TJ','TUR','THI','URD','ITA') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `employee_service_langauge`
--

INSERT INTO `employee_service_langauge` (`Row_ID`, `Emp_ID`, `Language`) VALUES
(43, 11, 'ENG'),
(44, 11, 'FIN'),
(45, 11, 'SWE'),
(46, 15, 'RUS'),
(47, 15, 'AFG'),
(48, 14, 'ENG'),
(49, 14, 'FIN'),
(50, 10, 'SWE'),
(51, 10, 'ENG'),
(52, 10, 'LUX'),
(53, 10, 'POR'),
(54, 10, 'AFG'),
(55, 15, 'DEU'),
(56, 19, 'RUS'),
(57, 19, 'FRA'),
(58, 19, 'CHI'),
(59, 19, 'PER'),
(60, 19, 'ENG'),
(61, 14, 'SAU'),
(62, 14, 'RUS'),
(63, 11, 'JAP'),
(64, 11, 'NOR'),
(65, 11, 'POL'),
(66, 11, 'TJ'),
(67, 14, 'URD'),
(68, 15, 'SWE'),
(69, 16, 'JAP'),
(70, 16, 'FRA'),
(71, 16, 'ENG'),
(72, 16, 'EE'),
(73, 17, 'ITA'),
(74, 17, 'ENG'),
(75, 15, 'ITA'),
(76, 17, 'DEU'),
(77, 10, 'TUR'),
(78, 17, 'POL'),
(79, 17, 'EE'),
(80, 18, 'ENG'),
(81, 18, 'DUT'),
(82, 18, 'TJ'),
(83, 18, 'GRE'),
(84, 18, 'POL'),
(85, 18, 'SWE'),
(86, 18, 'FIN'),
(87, 15, 'TJ');

-- --------------------------------------------------------

--
-- Table structure for table `employee_titles`
--

CREATE TABLE `employee_titles` (
  `Row_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `Title_ID` int(15) NOT NULL,
  `From_Date` date DEFAULT NULL,
  `To_Date` date DEFAULT NULL,
  `Current_Title` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `employee_titles`
--

INSERT INTO `employee_titles` (`Row_ID`, `Emp_ID`, `Title_ID`, `From_Date`, `To_Date`, `Current_Title`) VALUES
(7, 6, 1, '2023-08-01', '2024-04-04', 0),
(10, 6, 1, '2024-04-08', '2025-04-08', 1),
(11, 6, 1, '2023-05-04', '2010-06-16', 0),
(12, 7, 2, '2021-06-01', '2023-07-01', 0),
(13, 7, 2, '2023-08-01', '2024-12-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_salaries`
--

CREATE TABLE `emp_salaries` (
  `Row_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `Salary` int(15) NOT NULL,
  `Deal_Comission` int(15) DEFAULT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `emp_salaries`
--

INSERT INTO `emp_salaries` (`Row_ID`, `Emp_ID`, `Salary`, `Deal_Comission`, `From_Date`, `To_Date`, `Date_OF_Add`) VALUES
(3, 7, 6500, 0, '2021-06-01', '2023-07-01', '2023-04-07'),
(4, 7, 11000, 0, '2023-08-01', '2024-12-31', '2024-04-04'),
(5, 6, 3400, 5, '2023-08-01', '2024-04-04', '2024-04-04'),
(6, 6, 4500, 0, '2023-05-04', '2010-06-16', '2024-04-04'),
(7, 6, 8600, 20, '2023-04-08', '2025-04-08', '2024-04-04');

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
(19, 'LED-ajovalot'),
(20, 'Kaarrevalot'),
(21, 'Sumuvalot'),
(22, 'Automaattinen ilmastointi (kaksialueinen)'),
(23, 'Äänentoistojärjestelmä'),
(24, 'Bluetooth handsfree matkapuhelinvarustus audiontoi'),
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
(57, 'Ristiseläntuki'),
(58, 'Driving Assistant Professional'),
(59, 'Harman Kardon Surround System -kaiutinjärjestelmä'),
(60, 'BMW Live Cockpit Professional'),
(61, 'Nelialue-ilmastointiautomatiikka'),
(62, 'Etuistuinten sähkösäätö, kuljettajan istuin muisti'),
(63, 'Ilmajousitus'),
(64, 'Kaukovaloavustin'),
(65, 'M turvavyöt'),
(66, 'Murtohälytin'),
(67, 'Langaton latausasema'),
(68, 'Parking Assistant Professional'),
(69, 'Vetokoukku, sähkötoiminen perävaunuavustimella'),
(71, 'Bluetooth-Hands-free -liitäntä'),
(73, 'LED-sisävalopaketti'),
(74, 'LED- sisäänastumisvalo etu- ja takaovissa'),
(75, 'Mustat ulkopeilien kotelot'),
(76, 'Tummennetut taka- ja takasivulasit'),
(77, 'USB-liitäntä takaistuimille'),
(78, '3-alueilmastointi'),
(79, 'Nopeusrajoitustunnistin'),
(80, '360° camera'),
(81, 'Panorama-katto'),
(82, 'Etuistuinten lämmitys'),
(83, 'Älypuhelimen integrointi'),
(84, 'Kaistanvaihtoavustin'),
(85, 'Pimeänäköavustin'),
(86, 'Ovien sulkemisavustin'),
(87, 'Digitaaliradio'),
(88, 'Ionisaattori'),
(89, 'Aluvanteet kesä-ja talvirenkaissa'),
(90, 'Mittaristo kahdella HD-näytöllä'),
(91, 'Sähkötoiminen käsijarru'),
(92, 'hiilikuitupaketti'),
(93, 'Sivutörmäyssuoja'),
(94, 'Akustinen jalankulkijan varoitin'),
(95, 'Katveavustin'),
(96, 'Liikennemerkki tunnistin'),
(97, '2 USB-liitäntää takatilassa'),
(98, 'Aktiivinen jarrutusavustin'),
(99, 'Tuulilasinäyttö HUD'),
(100, 'Korinväriset sivulistat'),
(101, 'Apple Car Play'),
(102, 'Android Auto'),
(103, 'Panorama kattoluukku'),
(104, 'Tunnelmavalaistus'),
(105, 'Ilma-alusta'),
(106, 'Musta sisäkatto'),
(107, 'Rattivaihteet'),
(108, 'Suksiluukku'),
(109, 'Rengaspainevahti'),
(110, 'Panorama kattoluukku');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `Row_ID` int(15) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Image_Name` varchar(150) NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
  `Date_OF_Updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Row_ID`, `VIN`, `Image_Name`, `Date_OF_Add`, `Date_OF_Updated`) VALUES
(37, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_65107.jpg', '2024-04-29', NULL),
(38, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_11710.jpg', '2024-04-29', NULL),
(39, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_901.jpg', '2024-04-29', NULL),
(40, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_15734.jpg', '2024-04-29', NULL),
(41, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_1121.jpg', '2024-04-29', NULL),
(42, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_22229.jpg', '2024-04-29', NULL),
(43, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_41153.jpg', '2024-04-29', NULL),
(44, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_73970.jpg', '2024-04-29', NULL),
(45, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_30468.jpg', '2024-04-29', NULL),
(46, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_73728.jpg', '2024-04-29', NULL),
(47, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_31251.jpg', '2024-04-29', NULL),
(48, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_62731.jpg', '2024-04-29', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `number_of_cars_by_branches`
-- (See below for the actual view)
--
CREATE TABLE `number_of_cars_by_branches` (
`Number_OF_CARS` bigint(21)
,`POAC` varchar(27)
,`BranchName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `number_of_cars_by_stores`
-- (See below for the actual view)
--
CREATE TABLE `number_of_cars_by_stores` (
`Number_OF_Cars` bigint(21)
,`POAC` varchar(27)
,`Store_Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_color`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_color` (
`Color` enum('White','Black','Silver','Red','Blue','Yellow','Orange')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_drawmethod`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_drawmethod` (
`Draw_Method` enum('4WD','FWD','RWD')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_gearbox`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_gearbox` (
`Gearbox` enum('Manual','Automatic')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_type_of_body`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_type_of_body` (
`Type_OF_Body` enum('Sedan','Hatchback','SUV','Wagon','Coupe','Logisti_Person_Van')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_type_of_car`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_type_of_car` (
`Type_OF_Car` enum('Person','Van','Minibus','Motorcycle')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_type_of_fuel`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_type_of_fuel` (
`Fuel_Type` enum('Petrol','Diesel','Electric','Plug-In Hybrid','Gas')
,`NOC` bigint(21)
,`POAC` varchar(27)
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
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
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
(100, 2, 'Kamux Kotka', 'Kyminlinnantie 24', 'kotka@kamux.fi', '020 769 4287', '48600', '2024-03-18', '2024-03-18 13:10:48', NULL),
(101, 1, 'SAKA Finland Oy, Vaasa', 'Kivihaantie 9', 'NULL', '020 703 2840', '65300', '2024-03-22', '2024-03-22 11:36:05', NULL),
(102, 7, 'Bavaria Airport Vantaa', 'Antaksentie 4', 'NULL', '0106258330', '01510', '2024-03-22', '2024-03-22 11:39:36', NULL),
(103, 7, 'Bavaria Lappeenranta', 'Katsastajankatu 4', 'NULL', '0106258230', '53500', '2024-03-22', '2024-03-22 11:40:48', NULL),
(105, 7, 'Bavaria Lahti', 'Aukeankatu 1', 'NULL', '0106258550', '15610', '2024-03-22', '2024-03-22 11:41:49', NULL),
(106, 7, 'Bavaria Kuopio', 'Kallantie 10', 'NULL', '0106258600', '70200', '2024-03-22', '2024-03-22 11:42:29', NULL),
(107, 7, 'Bavaria Kouvola', 'Korjalankatu 4', 'NULL', '0106258170', '45130', '2024-03-22', '2024-03-22 11:44:05', NULL),
(109, 7, 'Bavaria Jyväskylä', 'Palokankaantie 20', 'jyvaskyla@bavaria.fi', '0106258350', '40320', '2024-03-22', '2024-03-22 11:46:04', NULL),
(110, 7, 'Bavaria Joensuu', 'Voimatie 1', 'NULL', '0106258650', '80100', '2024-03-22', '2024-03-22 11:46:44', NULL),
(111, 7, 'Bavaria Helsinki', 'Mekaanikonkatu 2', 'helsinki@bavaria.fi', '0106258510', '00880', '2024-03-22', '2024-03-22 11:48:16', NULL),
(112, 7, 'Bavaria Espoo', 'Luomannotko 7', 'NULL', '0106258270', '02200', '2024-03-22', '2024-03-22 11:49:15', NULL),
(113, 8, 'SCC - Airport', 'Aamuruskontie 12', 'airport@scc.fi', '0300 472219', '00700', '2024-03-25', '2024-03-25 17:08:31', NULL),
(114, 8, 'SCC - Espoo', 'Olarinluoma 19', 'espoo@scc.fi', '0300472211', '02200', '2024-03-25', '2024-03-25 17:09:47', NULL),
(115, 8, 'SCC - Jyväskylä', 'Laukaantie 4', 'jyvaskyla@scc.fi', '0300472214', '40320', '2024-03-26', '2024-03-26 16:21:56', NULL),
(116, 8, 'SCC - Turku', 'Tuotekatu 4', 'turku@scc.fi', '0300472230', '20320', '2024-03-26', '2024-03-26 16:22:43', NULL),
(117, 8, 'SCC - Tampere', 'Pitkäkurunkuja 6', 'tampere@scc.fi', '0300472282', '37570', '2024-03-26', '2024-03-26 16:24:02', NULL),
(118, 1, 'SAKA Headquarter', 'Rintinpolku 1 C 12', 'headquarter@saka.fi', '0449894411', '02200', '2024-04-04', '2024-04-04 16:12:08', NULL),
(119, 2, 'KAMUX Headquarter', 'Snellmaninkatu 45', 'headquarter@kamux.fi', '040 886 2869', '02200', '2024-04-04', '2024-04-04 16:18:46', NULL),
(120, 10, 'LänsiAuto Espoo', 'Marsbyntie 3', 'NULL', 'NULL', '02920', '2024-04-09', '2024-04-09 12:53:31', NULL),
(121, 10, 'LänsiAuto Helsinki', 'Laivalahdenkatu 8', 'NULL', '010 525 2820', '00880', '2024-04-09', '2024-04-09 12:54:16', NULL),
(122, 10, 'LänsiAuto Hyvinkää', 'Helletorpankatu 1', '010 525 2372', 'NULL', '15840', '2024-04-09', '2024-04-09 12:55:15', NULL),
(123, 10, 'LänsiAuto Hämeenlinna', 'Uhrikivenkatu 18', 'NULL', '010 525 2320', '13130', '2024-04-09', '2024-04-09 12:55:50', NULL),
(124, 10, 'LänsiAuto Lahti', 'Patometsänkatu 1', 'NULL', '010 525 2220', '15610', '2024-04-09', '2024-04-09 12:56:26', NULL),
(125, 10, 'LänsiAuto Oulu', 'Kallisenkaarre 5', 'NULL', '010 525 2570', '90400', '2024-04-09', '2024-04-09 13:05:17', NULL),
(126, 10, 'LänsiAuto Seinäjoki', 'Rengastie 42', 'NULL', '010 504 7960', '60510', '2024-04-09', '2024-04-09 13:06:12', NULL),
(127, 10, 'LänsiAuto Suomenoja', 'Kuitinmäentie 30', 'NULL', '010 525 2700', '02920', '2024-04-09', '2024-04-09 13:07:05', NULL),
(128, 10, 'LänsiAuto Tampere', 'Taninkatu 3', 'NULL', '010 504 7975', '33400', '2024-04-09', '2024-04-09 13:08:23', NULL),
(129, 10, 'LänsiAuto Toyota Espoo', 'Marsbyntie 3', 'NULL', '010 525 2180', '02300', '2024-04-09', '2024-04-09 13:11:27', NULL),
(130, 10, 'LänsiAuto Turku', 'Raisiontie 93', 'NULL', '010 525 2420', '20320', '2024-04-09', '2024-04-09 13:12:49', NULL),
(131, 10, 'LänsiAuto Vantaa', 'Pakkalantie 15', 'NULL', '010 525 2120', '01510', '2024-04-09', '2024-04-09 13:13:25', NULL),
(132, 9, 'Parrotz Järvenpää Showroom', 'Satukukanpolku 5D', 'jarvenpaa@parrotz.fi', '09 31 52 4140', '04420', '2024-04-09', '2024-04-09 13:34:42', NULL),
(133, 9, 'Parrotz Lempäälä Showroom', 'Areenakatu 7', 'lempaala@parrotz.fi', '09 31 52 4141', '37570', '2024-04-09', '2024-04-09 13:34:51', NULL),
(134, 11, 'Hedin Automotive Espoo', 'Martinsillantie 14', 'espoo@hedin.fi', 'NULL', '02600', '2024-04-10', '2024-04-10 12:19:26', NULL),
(135, 11, 'Hedin Automotive Forssa', 'Hämeentie 35', 'forssa@hedin.fi', 'NULL', '30100', '2024-04-10', '2024-04-10 12:19:30', NULL),
(136, 11, 'Hedin Automotive Konala', 'Ruosilantie 5', 'konala@hedin.fi', 'NULL', '00390', '2024-04-10', '2024-04-10 12:19:37', NULL),
(137, 11, 'Hedin Automotive Helsinki', 'Mekaanikonkatu 12', 'NULL', 'NULL', '00880', '2024-04-10', '2024-04-10 12:20:05', NULL),
(138, 11, 'Hedin Automotive Hämeenlinna', 'Uhrikivenkatu 13', 'hameenlinna@hedin.fi', 'NULL', '13130', '2024-04-10', '2024-04-10 12:19:49', NULL),
(139, 11, 'Hedin Automotive Joensuu', 'Voimatie 1', 'joensuu@hedin.fi', 'NULL', '80100', '2024-04-10', '2024-04-10 12:20:10', NULL),
(140, 11, 'Hedin Automotive Jyväskylä', 'Palokankaantie 20', 'jyvaskyla@hedin.fi', 'NULL', '40320', '2024-04-10', '2024-04-10 12:20:15', NULL),
(141, 11, 'Hedin Automotive Järvenpää', 'Alhotie 12', 'jarvenpaa@hedin.fi', 'NULL', '04420', '2024-04-10', '2024-04-10 12:20:21', NULL),
(142, 11, 'Hedin Automotive Kotka', 'Suurniitynkatu 2', 'kotka@hedin.fi', 'NULL', '48600', '2024-04-10', '2024-04-10 12:20:37', NULL),
(143, 11, 'Hedin Automotive Kouvola', 'Korjalankatu 4', 'kouvola@hedin.fi', 'NULL', '45130', '2024-04-10', '2024-04-10 12:20:29', NULL),
(144, 11, 'Hedin Automotive Kuopio ', 'Kallantie 10 - 12', 'kuopio@hedin.fi', 'NULL', '70200', '2024-04-10', '2024-04-10 12:19:11', NULL),
(145, 11, 'Hedin Automotive Lahti', 'Aukeankatu 1', 'lahti@hedin.fi', 'NULL', '15610', '2024-04-10', '2024-04-10 12:19:05', NULL),
(146, 11, 'Hedin Automotive Lappeenranta', 'Katsastajankatu 4', 'lappeenranta@hedin.fi', 'NULL', '53500', '2024-04-10', '2024-04-10 12:18:58', NULL),
(147, 11, 'Hedin Automotive Oulu', 'Pauketie 4', 'oulu@hedin.fi', 'NULL', '90420', '2024-04-10', '2024-04-10 12:18:54', NULL),
(148, 11, 'Hedin Automotive Pori', 'Puinnintie 18-20', 'pori@hdin.fi', 'NULL', '28360', '2024-04-10', '2024-04-10 12:18:48', NULL),
(149, 11, 'Hedin Automotive Porvoo', 'Ruiskumestarinkatu 4', 'porvoo@hedin.fi', 'NULL', '06100', '2024-04-10', '2024-04-10 12:18:43', NULL),
(150, 11, 'Hedin Automotive Tampere', 'Lokomonkatu 25 B', 'tampere@hedin.fi', 'NULL', '33400', '2024-04-10', '2024-04-10 12:18:28', NULL),
(151, 11, 'Hedin Automotive Turku', 'Rieskalähteentie 71', 'turku@hedin.fi', 'NULL', '20320', '2024-04-10', '2024-04-10 12:17:13', NULL);

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
  `From_Date` date NOT NULL,
  `To_Date` date DEFAULT NULL,
  `Service_Status` enum('Contract ended','Got fired','Active') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `stores_employee`
--

INSERT INTO `stores_employee` (`Row_ID`, `Store_ID`, `Emp_ID`, `From_Date`, `To_Date`, `Service_Status`) VALUES
(33, 8, 19, '2021-01-04', '2023-06-04', 'Contract ended'),
(34, 92, 17, '2024-01-01', '2024-04-01', 'Got fired'),
(35, 66, 12, '2022-12-01', '2023-11-30', 'Contract ended'),
(36, 32, 16, '2024-01-01', '2025-03-01', 'Active'),
(37, 109, 11, '2024-04-01', '2025-11-28', 'Active'),
(38, 118, 7, '2021-08-01', '2023-07-01', 'Contract ended'),
(39, 119, 7, '2023-08-01', '2024-12-31', 'Active');

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
(6, 'VAIHTOAUTOMAA'),
(7, 'BAVARIA'),
(8, 'SPORTS CAR CENTER'),
(9, 'PARROTZ'),
(10, 'LÄNSIAUTO'),
(11, 'HEDIN AUTOMOTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `filename` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

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
-- Structure for view `active_employee_by_store`
--
DROP TABLE IF EXISTS `active_employee_by_store`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `active_employee_by_store`  AS SELECT `employees`.`SSN` AS `SSN`, `employees`.`F_Name` AS `F_Name`, `employees`.`L_Name` AS `L_Name`, `stores`.`Store_Name` AS `Store_Name` FROM ((`employees` join `stores_employee` on(`employees`.`Emp_ID` = `stores_employee`.`Emp_ID`)) join `stores` on(`stores`.`Store_ID` = `stores_employee`.`Store_ID`)) WHERE `stores_employee`.`Service_Status` = 'Active' ;

-- --------------------------------------------------------

--
-- Structure for view `cars_by_stores`
--
DROP TABLE IF EXISTS `cars_by_stores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cars_by_stores`  AS SELECT `c`.`VIN` AS `VIN`, `c`.`Number_Plate` AS `Number_Plate`, `b`.`Name` AS `Brand`, `c`.`Model` AS `Model`, `c`.`Model_Spec` AS `Model_Spec`, `s`.`Store_Name` AS `Store_Name` FROM ((`cars` `c` join `stores` `s` on(`c`.`Store_ID` = `s`.`Store_ID`)) join `brands` `b` on(`b`.`Brand_ID` = `c`.`Brand_ID`)) GROUP BY `c`.`VIN` ;

-- --------------------------------------------------------

--
-- Structure for view `customer_credentials`
--
DROP TABLE IF EXISTS `customer_credentials`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_credentials`  AS SELECT `cr`.`Credentials_ID` AS `Credentials_ID`, `cu`.`Customer_ID` AS `Customer_ID`, `cu`.`F_Name` AS `F_Name`, `cu`.`L_Name` AS `L_Name`, `cr`.`Username` AS `Username`, `cr`.`Password` AS `Password`, `cr`.`Date_OF_Add` AS `Date_OF_Add` FROM (`credentials` `cr` join `customers` `cu` on(`cu`.`Customer_ID` = `cr`.`Customer_ID`)) WHERE `cr`.`Customer_ID` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `deactive_employee_by_store`
--
DROP TABLE IF EXISTS `deactive_employee_by_store`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `deactive_employee_by_store`  AS SELECT `employees`.`SSN` AS `SSN`, `employees`.`F_Name` AS `F_Name`, `employees`.`L_Name` AS `L_Name`, `stores`.`Store_Name` AS `Store_Name`, `stores_employee`.`Service_Status` AS `Service_Status` FROM ((`employees` join `stores_employee` on(`employees`.`Emp_ID` = `stores_employee`.`Emp_ID`)) join `stores` on(`stores`.`Store_ID` = `stores_employee`.`Store_ID`)) WHERE `stores_employee`.`Service_Status` <> 'Active' ;

-- --------------------------------------------------------

--
-- Structure for view `employeecanspeaklanguage`
--
DROP TABLE IF EXISTS `employeecanspeaklanguage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeecanspeaklanguage`  AS SELECT `e`.`SSN` AS `SSN`, `e`.`F_Name` AS `F_Name`, `e`.`L_Name` AS `L_Name`, group_concat(`esl`.`Language` separator ', ') AS `language` FROM (`employee_service_langauge` `esl` join `employees` `e` on(`esl`.`Emp_ID` = `e`.`Emp_ID`)) GROUP BY `e`.`SSN` ;

-- --------------------------------------------------------

--
-- Structure for view `employee_by_store`
--
DROP TABLE IF EXISTS `employee_by_store`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_by_store`  AS SELECT `employees`.`SSN` AS `SSN`, `employees`.`F_Name` AS `F_Name`, `employees`.`L_Name` AS `L_Name`, `stores`.`Store_Name` AS `Store_Name` FROM ((`employees` join `stores_employee` on(`employees`.`Emp_ID` = `stores_employee`.`Emp_ID`)) join `stores` on(`stores`.`Store_ID` = `stores_employee`.`Store_ID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `employee_by_store_still_working`
--
DROP TABLE IF EXISTS `employee_by_store_still_working`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_by_store_still_working`  AS SELECT `employees`.`Emp_ID` AS `Emp_ID`, `employees`.`SSN` AS `SSN`, `employees`.`F_Name` AS `F_Name`, `employees`.`L_Name` AS `L_Name`, `stores`.`Store_Name` AS `Store Name` FROM ((`employees` join `stores_employee` on(`employees`.`Emp_ID` = `stores_employee`.`Emp_ID`)) join `stores` on(`stores`.`Store_ID` = `stores_employee`.`Store_ID`)) WHERE `stores_employee`.`To_Date` is null ;

-- --------------------------------------------------------

--
-- Structure for view `employee_credentials`
--
DROP TABLE IF EXISTS `employee_credentials`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_credentials`  AS SELECT `c`.`Credentials_ID` AS `Credentials_ID`, `e`.`F_Name` AS `F_Name`, `e`.`L_Name` AS `L_Name`, `c`.`Username` AS `Username`, `c`.`Password` AS `Password`, `c`.`Date_OF_Add` AS `Date_OF_Add` FROM (`credentials` `c` join `employees` `e` on(`c`.`Emp_ID` = `e`.`Emp_ID`)) WHERE `c`.`Emp_ID` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `number_of_cars_by_branches`
--
DROP TABLE IF EXISTS `number_of_cars_by_branches`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `number_of_cars_by_branches`  AS SELECT count(`c`.`VIN`) AS `Number_OF_CARS`, concat(round(count(`c`.`Row_ID`) * 100.0 / (select count(`c`.`Row_ID`) AS `allcount` from `cars` `c`),0),' %') AS `POAC`, `sb`.`Name` AS `BranchName` FROM ((`cars` `c` join `stores` `s` on(`s`.`Store_ID` = `c`.`Store_ID`)) join `store_branches` `sb` on(`sb`.`Branch_Store_ID` = `s`.`Branch_Store_ID`)) GROUP BY `sb`.`Branch_Store_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `number_of_cars_by_stores`
--
DROP TABLE IF EXISTS `number_of_cars_by_stores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `number_of_cars_by_stores`  AS SELECT count(`c`.`VIN`) AS `Number_OF_Cars`, concat(round(count(`c`.`Row_ID`) * 100.0 / (select count(`c`.`Row_ID`) AS `allcount` from `cars` `c`),0),' %') AS `POAC`, `s`.`Store_Name` AS `Store_Name` FROM (`cars` `c` join `stores` `s` on(`c`.`Store_ID` = `s`.`Store_ID`)) GROUP BY `s`.`Store_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_color`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_color`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_color`  AS SELECT `cars`.`Color` AS `Color`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Color` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_drawmethod`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_drawmethod`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_drawmethod`  AS SELECT `cars`.`Draw_Method` AS `Draw_Method`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Draw_Method` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_gearbox`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_gearbox`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_gearbox`  AS SELECT `cars`.`Gearbox` AS `Gearbox`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Gearbox` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_type_of_body`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_type_of_body`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_type_of_body`  AS SELECT `cars`.`Type_OF_Body` AS `Type_OF_Body`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Type_OF_Body` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_type_of_car`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_type_of_car`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_type_of_car`  AS SELECT `cars`.`Type_OF_Car` AS `Type_OF_Car`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Type_OF_Car` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_type_of_fuel`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_type_of_fuel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_type_of_fuel`  AS SELECT `cars`.`Fuel_Type` AS `Fuel_Type`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Fuel_Type` ;

-- --------------------------------------------------------

--
-- Structure for view `stores_by_branches`
--
DROP TABLE IF EXISTS `stores_by_branches`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stores_by_branches`  AS SELECT count(`stores`.`Store_ID`) AS `NumberOFStores`, `store_branches`.`Name` AS `Name` FROM (`stores` join `store_branches` on(`store_branches`.`Branch_Store_ID` = `stores`.`Branch_Store_ID`)) GROUP BY `stores`.`Branch_Store_ID` ;

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
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `VIN` (`VIN`),
  ADD KEY `Feature_ID` (`Feature_ID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `VIN` (`VIN`),
  ADD KEY `Brand_ID` (`Brand_ID`),
  ADD KEY `Price` (`Price`),
  ADD KEY `Number_Plate` (`Number_Plate`),
  ADD KEY `Store_ID` (`Store_ID`) USING BTREE;

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
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `Code` (`Code`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`Credentials_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

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
  ADD KEY `Fk_Customer_Postalcodes` (`PostalCode`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Nationality` (`Nationality`);

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
  ADD KEY `Emp_ID` (`Emp_ID`),
  ADD KEY `Language` (`Language`);

--
-- Indexes for table `employee_titles`
--
ALTER TABLE `employee_titles`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`),
  ADD KEY `idx_Title_ID` (`Title_ID`) USING BTREE;

--
-- Indexes for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  ADD PRIMARY KEY (`Row_ID`),
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
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `Brand_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `carfeatures`
--
ALTER TABLE `carfeatures`
  MODIFY `Row_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `carsold`
--
ALTER TABLE `carsold`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `Credentials_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `credentials_logs`
--
ALTER TABLE `credentials_logs`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `Emp_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee_service_langauge`
--
ALTER TABLE `employee_service_langauge`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `employee_titles`
--
ALTER TABLE `employee_titles`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feature_list`
--
ALTER TABLE `feature_list`
  MODIFY `Feature_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `stores_employee`
--
ALTER TABLE `stores_employee`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `store_branches`
--
ALTER TABLE `store_branches`
  MODIFY `Branch_Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  ADD CONSTRAINT `FK_Cars_Store` FOREIGN KEY (`Store_ID`) REFERENCES `stores` (`Store_ID`);

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
  ADD CONSTRAINT `FK_Credentials_Customers` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  ADD CONSTRAINT `Fk_Credentials_Employee` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`);

--
-- Constraints for table `credentials_logs`
--
ALTER TABLE `credentials_logs`
  ADD CONSTRAINT `Fk_CredentialsLog_Credentials` FOREIGN KEY (`Credentials_ID`) REFERENCES `credentials` (`Credentials_ID`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_Customers_Country` FOREIGN KEY (`Nationality`) REFERENCES `country` (`Code`),
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
  ADD CONSTRAINT `FK_ESL_Esmployee` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`);

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
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"car_store\",\"table\":\"employee_service_langauge\"},{\"db\":\"car_store\",\"table\":\"images\"},{\"db\":\"car_store\",\"table\":\"tbl_images\"},{\"db\":\"car_store\",\"table\":\"percentage_of_cars_by_gearbox\"},{\"db\":\"car_store\",\"table\":\"number_of_cars_by_stores\"},{\"db\":\"car_store\",\"table\":\"number_of_cars_by_branches\"},{\"db\":\"car_store\",\"table\":\"cars\"},{\"db\":\"car_store\",\"table\":\"percentage_of_cars_by_color\"},{\"db\":\"car_store\",\"table\":\"employeecanspeaklanguage\"},{\"db\":\"car_store\",\"table\":\"employees\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('car_store', 'cars', 'Number_Plate'),
('car_store', 'country', 'Name'),
('car_store', 'credentials', 'Username'),
('car_store', 'customers', 'F_Name'),
('car_store', 'employee_service_langauge', 'Language'),
('car_store', 'employees', 'F_Name'),
('car_store', 'postalcodes', 'Region');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-29 09:56:32', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":332}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `Row_ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`Row_ID`, `Name`) VALUES
(1, 'qfqefegqg'),
(2, 'gqrgqrgrh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`Row_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `Row_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
