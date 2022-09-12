-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 10:04 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `floyd1`
--

-- --------------------------------------------------------

--
-- Table structure for table `floyd1development`
--

CREATE TABLE `floyd1development` (
  `SNO` int(11) NOT NULL,
  `USER_NAME` varchar(20) NOT NULL,
  `RECIEVED_DATE` varchar(20) NOT NULL,
  `IMAGE` varchar(500) NOT NULL,
  `CUSTOMER` varchar(100) NOT NULL,
  `CUSTOMER_REFRENCE` varchar(100) NOT NULL,
  `COLOR_REFRENCE_NO` varchar(100) NOT NULL,
  `ARTICLE_COMPOUND_NAME` varchar(100) NOT NULL,
  `SOLE_MOULD_ARTICLE` varchar(100) NOT NULL,
  `GRADE` varchar(100) NOT NULL,
  `HARDNESS` varchar(10) NOT NULL,
  `RECIPE` varchar(100) NOT NULL,
  `QTY` varchar(10) NOT NULL,
  `OTHER_INSTRUCTIONS` varchar(500) NOT NULL,
  `PROVIDEDBY` varchar(100) NOT NULL,
  `RECEIVEDBY` varchar(100) NOT NULL,
  `STATUS` varchar(100) NOT NULL,
  `DELIVERED_DATE` varchar(20) NOT NULL,
  `FEEDBACK` varchar(500) NOT NULL,
  `DATETIME` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `floyd1development`
--

INSERT INTO `floyd1development` (`SNO`, `USER_NAME`, `RECIEVED_DATE`, `IMAGE`, `CUSTOMER`, `CUSTOMER_REFRENCE`, `COLOR_REFRENCE_NO`, `ARTICLE_COMPOUND_NAME`, `SOLE_MOULD_ARTICLE`, `GRADE`, `HARDNESS`, `RECIPE`, `QTY`, `OTHER_INSTRUCTIONS`, `PROVIDEDBY`, `RECEIVEDBY`, `STATUS`, `DELIVERED_DATE`, `FEEDBACK`, `DATETIME`) VALUES
(1, '', '2021-06-21', '', 'A R SUOLE', 'NA', 'CUT PIECE (TRANS/HONEY)', 'RIVA NATURAL HONEY 1', 'RIVA NATURAL HONEY 1', 'NPH-60HN', '62-65', 'NA', '6', 'NA', 'MONU KUMAR', 'ROHIT', 'DISPATCHED', '2021-06-22', 'NA', '2021-07-12 03:09:29'),
(2, '', '2021-06-21', '', 'A R SUOLE', 'NA', 'CUT PIECE (TRANS/HONEY)', 'RIVA NATURAL HONEY 2', 'RIVA NATURAL HONEY 2', 'NPH-60HN', '62-65', 'NA', '6', 'NA', 'MONU KUMAR', 'ROHIT', 'DISPATCHED', '2021-06-23', 'NA', '2021-07-12 03:11:28'),
(3, '', '2021-06-21', '', 'WESTON RUBBER INDUSTRY', 'NA', 'LIGHT WEIGHT FX CUT PIECE', 'WESTON OFF WHITE LW', 'NA', 'LW/FX', '00', 'FXE-80/20', '25', 'NA', 'SAURABH', 'ROHIT', 'DISPATCHED', '2021-06-26', 'NA', '2021-07-12 03:16:13'),
(4, '', '2021-06-21', '', 'A R SUOLE', 'NA', 'CUT PIECE HONEY', 'LINER GUM HONEY', 'CASTER', 'NPH-75HN', '75', 'NA', '10', 'NA', 'SHIVAM', 'VIKASH', 'DISPATCHED', '2021-06-22', 'NA', '2021-07-12 03:20:16'),
(5, '', '2021-06-21', '', 'T.M. OVERSEAS', 'NA', 'CUT SOLE', 'KLASSNIC RED', 'NA', 'NDVT-80HN', '80', 'NA', '20', 'NA', 'YASIN ALI', 'ROHIT', 'DISPATCHED', '2021-06-21', 'NA', '2021-07-12 03:22:07'),
(6, '', '2021-06-21', '', 'T.M. OVERSEAS', 'NA', 'CUT SOLE', 'KLASSNIC HONEY', 'NA', 'NDVT-80HN', '80', 'NA', '20', 'NA', 'YASIN ALI', 'ROHIT', 'DISPATCHED', '06/25/2021', 'NA', '2021-07-12 03:23:37'),
(7, '', '2021-06-21', '', 'GLOBAL POLYMERS', 'NA', 'CUT PIECE BLUE', 'GLOBAL BLUE', 'NA', 'IDS-60PK', '60', 'NA', '25', 'NA', 'MONU KUMAR', 'ROHIT', 'DISPATCHED', '2021-06-22', 'NA', '2021-07-12 03:28:13'),
(8, '', '2021-06-21', '', 'GLOBAL POLYMERS', 'NA', 'CUT PIECE RED', 'GLOBAL RED', 'NA', 'IDS-60PK', '60', 'NA', '25', 'NA', 'MONU KUMAR', 'ROHIT', 'DISPATCHED', '2021-06-22', 'NA', '2021-07-12 03:29:35'),
(9, '', '2021-06-22', '', 'Versatile Operations', 'NA', 'SOLE', 'MONI LW NX EGREAT CREAM', 'NA', 'NX-60HN', '60', 'NA', '5', 'NA', 'SANDEEP', 'ROHIT', 'DISPATCHED', '2021-06-23', 'NA', '2021-07-12 05:14:54'),
(10, '', '2021-06-22', '', 'Versatile Operations', 'NA', 'SOLE', 'TOTUM OFF WHITE', 'NA', 'DC-07/60W', '60', 'NA', '20', 'NA', 'SANDEEP', 'ROHIT', 'DISPATCHED', '2021-06-23', 'NA', '2021-07-12 05:18:25'),
(11, '', '2021-06-22', '', 'Versatile Operations', 'NA', 'CUT SOLE', 'ZIGGI WHITE', 'NA', 'DC-07/60WH', '60', 'NA', '10', 'NA', 'SANDEEP', 'ROHIT', 'DISPATCHED', '2021-06-23', 'NA', '2021-07-12 05:20:09'),
(12, '', '2021-06-22', '', 'WESTON RUBBER INDUSTRY', 'NA', 'LEATHER PIECE GREY', 'WESTON LEATHER GREY', 'NA', 'IDS-65PC', '65', 'NA', '5', 'NA', 'SANDEEP', 'ROHIT', 'DISPATCHED', '2021-06-26', 'NA', '2021-07-12 05:22:08'),
(13, '', '2021-06-22', '', 'WESTON RUBBER INDUSTRY', 'NA', 'LEATHER PIECE BLUE', 'WESTON LEATHER BLUE', 'NA', 'JDS-65 PK', '65', 'NA', '5', 'NA', 'SANDEEP', 'ROHIT', 'DISPATCHED', '2021-06-26', 'NA', '2021-07-12 05:23:47'),
(14, '', '2021-06-22', '', 'Krishna International', 'NA', 'LEATHER PIECE', 'KR LEATHER BROWN HONEY', 'NA', 'NPH-60HN', '60-65', 'NA', '15', 'NA', 'SANDEEP', 'ROHIT', 'DISPATCHED', '2021-06-24', 'NA', '2021-07-12 05:26:48'),
(15, '', '2021-06-22', '', 'Versatile Operations', 'NA', 'HONEY SOLE', 'VTH CARAMEL HONEY', 'NA', 'VTH-60HN', '60', 'NA', '10', 'NA', 'NARENDRA PACHAURI', 'ROHIT', 'DISPATCHED', '2021-06-22', 'NA', '2021-07-12 05:28:20'),
(16, '', '2021-06-22', '', 'OOM SHOE COMPONENTS', 'NA', 'SHOE', 'YARROW CRAPE BROWN', 'NA', 'RIC-65HN (SL)', '65', 'NA', '25', 'NA', 'MONU KUMAR', 'ROHIT', 'DISPATCHED', '2021-06-23', 'NA', '2021-07-12 05:29:42'),
(17, '', '2021-06-22', '', 'Super Soles Pvt. Ltd.', 'NA', 'SOLE', 'SUPER WHITE', 'NA', 'DC-07/65WH', '65', 'NA', '15', 'NA', 'VIKASH', 'ROHIT', 'DISPATCHED', '2021-06-25', 'NA', '2021-07-12 05:31:03'),
(18, '', '2021-06-22', '', 'Super Soles Pvt. Ltd.', 'NA', 'SOLE', 'SUPER OLIVE HONEY', 'NA', 'NPH E', '65', 'NA', '15', 'NA', 'VIKASH', 'ROHIT', 'DISPATCHED', '2021-06-25', 'NA', '2021-07-12 05:32:22'),
(19, '', '2021-06-23', '', 'OOM SHOE COMPONENTS', 'NA', 'LEATHER PIECE PINK', 'FORTUNA PINK', 'NA', 'P20/60PK', '60', 'NA', '6', 'NA', 'SANDEEP', 'ROHIT', 'PENDING', '', 'NA', '2021-07-12 05:35:27'),
(20, '', '2021-06-23', '', 'OOM SHOE COMPONENTS', 'NA', 'LEATHER PIECE RED', 'FORTUNA RED', 'NA', 'P20/60PK', '60', 'NA', '6', 'NA', 'SANDEEP', 'ROHIT', 'PENDING', '', 'NA', '2021-07-12 05:36:57'),
(21, '', '2021-06-23', '', 'Footwear Inc', 'NA', 'PENTONE 174919 TPX', 'TEAL BLUE LW', 'NA', 'FXE 75/25', '60', 'NA', '5', 'NA', 'SANDEEP', 'ROHIT', 'DISPATCHED', '2021-06-26', 'NA', '2021-07-14 01:31:09'),
(22, '', '2021-06-23', '', 'Footwear Inc', 'NA', 'PENTONE 114801 TPX', 'OFF WHITE LW', 'NA', 'FXE 75/25', '60', 'NA', '5', 'NA', 'SANDEEP', 'ROHIT', 'DISPATCHED', '2021-06-26', 'NA', '2021-07-14 01:32:22'),
(23, '', '2021-06-24', '', 'Versatile Operations', 'NA', 'WISTERIA LIGHT PING', 'WISTERIA LIGHT PINK', 'NA', 'P20/60PK', '60', 'NA', '5', 'NA', 'SANDEEP', 'ASHISH', 'DISPATCHED', '2021-06-24', 'NA', '2021-07-14 01:33:49'),
(24, '', '2021-06-24', '', 'Versatile Operations', 'NA', 'BRIGHT RUSPBERRY RED', 'BRIGHT RUSPBERRY RED', 'NA', 'P20/60PK', '60', 'NA', '5', 'NA', 'SANDEEP', 'ASHISH', 'DISPATCHED', '06/25/2021', 'NA', '2021-07-14 01:43:03'),
(25, '', '2021-06-24', '', 'Versatile Operations', 'NA', 'CLAY BEIGE', 'CLAY BEIGE', 'NA', 'P20/60PK', '60', 'NA', '5', 'NA', 'SANDEEP', 'ASHISH', 'DISPATCHED', '2021-06-25', 'NA', '2021-07-14 01:50:41'),
(26, '', '2021-06-24', '', 'OOM SHOE COMPONENTS', 'NA', 'SHEET', 'PORO HONEY', 'NA', 'VTPR-60HN', '60', 'NA', '7', 'NA', 'SANDEEP', 'ASHISH', 'DISPATCHED', '2021-06-25', 'NA', '2021-07-14 02:00:03'),
(27, 'MONU', '2021-06-24', '', 'OOM SHOE COMPONENTS', '', 'SHEET OK', 'POVO LT GUM', '', 'VTPR-60 HN', '60', 'NA', '6', '', 'SANDEEP', 'ROHIT', '', '2021-06-25', '', '2021-07-17 06:15:34'),
(28, 'MONU', '2021-06-25', '', 'ICON ENTERPRISES', '', 'CUT PIECE', 'IC BLUE', '', 'JDS-60 PK', '60', 'NA', '10', '', 'SANDEEP', 'ROHIT', '', '2021-06-29', '', '2021-07-17 06:23:23'),
(29, 'MONU', '2021-06-25', '', 'TRUWALK INTERNATIONAL', '', 'CUT PIECE (SOLE)', 'TR LIGHT GREAY', '', 'JDS-60 PK', '60', 'NA', '12', '', 'SANDEEP', 'ROHIT', '', '2021-06-29', '', '2021-07-17 06:26:36'),
(30, 'MONU', '2021-06-26', '', 'CAPSTAN RUBBERS ( INDIA ) UNIT - III', '', 'CUT PIECE CLOTH', 'CAPS LILAC PURPAL', '', 'FRJN-31/65 HN', '62-65', 'NA', 'NA', 'COLOR DARK NA HO', 'MONU', 'ROHIT', '', '2021-06-26', '', '2021-07-17 06:40:47'),
(31, 'MONU', '2021-06-25', '', 'D. S. M Sole Products (P) Limited (TN)', '', 'RUBBER SOLE (MIX)', 'FIRA RUBBER GUM', '', 'VTPR', '60', 'NA', '10', 'ORGINAL NAHI GAYA HAI NIKHIL JI KE PASS HAI', 'NIKHI JI', 'ROHIT', '', '2021-06-26', '', '2021-07-17 06:43:39'),
(32, 'MONU', '2021-06-25', '', 'D. S. M Sole Products (P) Limited (TN)', '', 'HALF SOLE', 'HIRO TP NATURAL', '', 'LTP-60 HN', '60', '(NEW)', '12', '', 'NIKHI JI', 'ROHIT', '', '', '', '2021-07-17 06:45:30'),
(33, 'MONU', '2021-06-26', '', 'Royal Polymers', '', 'CUT PIECE (YELLOW HNY)', 'RP LIGHT HNY', '', 'NPH-65 HN', '65', 'NA', '5', '14 KG GAYA HAI', 'YASHPAL', 'ROHIT', '', '', '', '2021-07-17 06:49:49'),
(34, 'MONU', '2021-06-26', '', 'Royal Polymers', '', 'CUT PIECE (HONEY)', 'RP DARK HNY', '', 'NPH-65 HN', '65', 'NA', '5', '10 KG GAYA HAI', 'YASHPAL', 'ROHIT', '', '', '', '2021-07-17 06:52:17'),
(35, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'LEATHER PIECE', 'VIRUS LILAC', '', 'OPAQ', '60', 'JDS', '5', '', 'NIKHIL JI', 'ROHIT', '', '2021-06-29', '', '2021-07-17 06:55:12'),
(36, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'LEATHER', 'VIRUS TAUPE', '', 'OPAQ', '60', 'JDS', '10', '', 'NIKHI JI', 'ROHI', '', '', '', '2021-07-17 06:56:52'),
(37, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'LEATHER', 'VIRUS CREAM', '', 'OPAQ', '60', 'LDS', '25', '', 'NIKHIL JI', 'ROHIT', '', '2021-06-29', '', '2021-07-17 06:58:33'),
(38, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'LAST CUPPIY', '14 W 28 GUM HNY', '', 'HONEY', '60', 'NPHE-60 HN', '15', 'NO REF', 'NIKHIL JI', 'ROHIT ', '', '2021-06-29', '', '2021-07-17 07:00:47'),
(39, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'SHOE', 'ADRIANO GUM', '', 'HONEY (AS PER SAMPLE)', '60', 'NPH-60 HN', '5', '', 'NIKHIL JI', 'ROHIT', '', '2021-06-29', '', '2021-07-17 07:03:04'),
(40, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'LEATHER', 'NX 16177 CUOIO', '', 'NX', '60', 'NX-60 HN', '5', '', 'NIKHIL JI', 'ROHIT', 'DESPATCH', '2021-06-29', '', '2021-07-17 07:05:56'),
(41, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'LEATHER', 'NX 16177 ECRU', '', 'NX', '60', 'NX-60 HN', '5', '', 'NIKHIL JI', 'ROHIT', 'DESPATCH', '2021-06-29', '', '2021-07-17 07:07:23'),
(42, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'SHOE', 'NX VIKKI TAUPE', '', 'NX', '60', 'NX-60 HN', '10', '', 'NIKHIL JI', 'ROHIT', 'DESPATCH', '2021-06-29', '', '2021-07-17 07:10:50'),
(43, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'LEATHER', 'VIRUS GREY', '', 'OPAQ', '60', 'P-20/TDS', '5', '', 'NIKHIL JI', 'ROHIT', 'DESPATCH', '2021-06-29', '', '2021-07-17 07:12:27'),
(44, 'MONU', '2021-06-26', '', 'Versatile Operations', '', 'LEATHER', 'DULLI BEIGE', '', 'OPAQ', '60', 'P-20/JDS', '5', '', 'NIKHIL JI', 'ROHIT', 'DESPATCH', '2021-06-29', '', '2021-07-17 07:13:50'),
(45, 'MONU', '2021-06-28', '', 'T.M. OVERSEAS', '', 'LEATHER', 'CILAC LEATHER', '', 'WOLT', '80', 'NDVT-80 HN', '10', '', 'NIKHIL JI', 'ASHISH', 'DESPATCH', '', '', '2021-07-17 07:15:36'),
(46, 'MONU', '2021-06-28', '', 'T.M. OVERSEAS', '', 'LEATHER', 'LIGHT PISTACHIO LEATHER BEIGE', '', 'WELT', '80', 'NDVT-80 HN', '10', '', 'NIKHIL JI', 'ASHISH', 'DESPATCH', '', '', '2021-07-17 07:17:52'),
(47, 'MONU', '2021-06-28', '', 'T.M. OVERSEAS', '', 'LEATHER', 'DESERT LEATHER TAN', '', 'WELT', '80', 'NDVT-80 HN', '10', '', 'NIKHIL JI', 'ASHISH', 'DESPATCH', '', '', '2021-07-17 07:19:10'),
(48, 'MONU', '2021-06-28', '', 'Versatile Operations', '', 'LEATHER', 'ZOMBIE RED', '', 'OPAQ', '60', 'P-20/JDS', '5', '', 'NIKHIL JI', 'ASHISH', 'DESPATCH', '2021-06-29', '', '2021-07-17 07:20:32'),
(49, 'MONU', '2021-06-29', '', 'A R SUOLE', '', 'SOLE', 'ARS FX GREY', '', 'FXE-0522/60 HN', '60', 'NA', '25', '', 'NA', 'ASHISH', 'DESPATCH', '', '', '2021-07-17 07:22:39'),
(50, 'MONU', '2021-06-29', '', 'PRATHIKA SALES', '', 'LEATHER', 'GP LEATHER YELLOW', '', 'JDS-60 PK', '60', 'NA', '10', '', 'RAVI KUMAR', 'ASHISH', 'DESPATCH', '2021-07-07', '', '2021-07-17 07:24:29'),
(51, 'MONU', '2021-06-29', '', 'HARMAN ENTERPRISES', '', 'no', 'BUONO WHITE', '', 'TRS-70 HN', '70', 'NA', '5', '', 'NA', 'ASHISH', 'DESPATCH', '', '', '2021-07-19 05:26:53'),
(52, 'MONU', '2021-06-28', '', 'T.M. OVERSEAS', '', 'SOLO', 'TRONSPARENT NATURAL', '', 'NA', '80', 'LTP-80 HN (NEW)', '10', '', 'NA', 'ASHISH', '', '', '', '2021-07-19 05:28:35'),
(53, 'MONU', '2021-06-29', '', 'HARMAN ENTERPRISES', '', 'SOLE', 'HR ZARA HNY', '', 'NPH-60 HN', '60', 'NA', '10', '', 'MONU ', 'ASHISH', '', '', '', '2021-07-19 05:30:06'),
(54, 'MONU', '2021-06-28', '', 'OOM SHOE COMPONENTS', '', 'SOLE', 'OSC PRIMA BEIGE', '', 'OPAQ', '70', 'P-20/70 PK', '7', '', 'MONU', 'ASHISH', '', '2021-06-30', '', '2021-07-19 05:31:38'),
(55, 'MONU', '2021-06-28', '', 'OOM SHOE COMPONENTS', '', 'SOLE', 'OSC PRIMA TAN', '', 'OPAQ', '70', 'P-20/70 PK', '7', '', 'MONU', 'ASHISH', '', '2021-06-30', '', '2021-07-19 05:32:50'),
(56, 'MONU', '2021-06-28', '', 'D. S. M Sole Products (P) Limited (TN)', '', 'SOLE', 'BERLIN BORDO', '', 'OPAQ', '60', 'JDS/P20', '25', '', 'MOU', 'ASHISH', '', '', '', '2021-07-19 05:34:22'),
(57, 'MONU', '2021-06-28', '', 'Atmaram Technowelts', '', 'WELT', 'CLD BROWN', '', '75', 'MSVT-75 HN', 'NA', '10', '', 'NA', 'ASHISH', '', '', '', '2021-07-19 05:35:44'),
(58, 'MONU', '2021-06-26', '', 'OOM SHOE COMPONENTS', '', 'SHOE', 'NASH BLUE', '', 'P-20/60 PK', '60', 'NA', '7', '', 'MONU', 'ROHIT', '', '', '', '2021-07-19 05:36:46'),
(59, 'MONU', '2021-06-26', '', 'OOM SHOE COMPONENTS', '', 'SHOE', 'NASH WHITE', '', 'DC-07 60 WH', '60', 'NA', '7', '', 'MONU', 'ROHIT', '', '', '', '2021-07-19 05:37:52'),
(60, 'MONU', '2021-06-29', '', 'R.N.G.KRISHNA', '', 'WELT', 'RNG SERGIO GREY', '', 'NDVT-80 HN', '80', 'NA', '25', '', 'NA', 'NA', 'DESPATCH', '2021-02-07', '', '2021-07-19 05:46:29'),
(61, 'MONU', '2021-06-29', '', 'R.N.G.KRISHNA', '', 'WELT', 'RNG HERB TAN', '', 'NDVT-80 HN', '80', 'NA', '25', '', 'NA', 'NA', 'DESPATCH', '2021-07-02', '', '2021-07-19 05:48:00'),
(62, 'MONU', '2021-06-30', '', 'T.M. OVERSEAS', '', 'WELT', 'IVY. SHINE BROWN', '', 'NDVT-80 HN', '80', 'NA', '35', '', 'NA', 'ASHISH', 'DESPATCH', '2021-03-07', '', '2021-07-19 05:56:19'),
(63, 'MONU', '2021-06-29', '', 'A R SUOLE', '', 'SOLE', 'ARS JOON HONEY', '', 'NPH-75 HN', '75', 'NA', '10', '', 'SHIV KUMAR SHARMA', 'ASHISH', 'DESPATCH', '2021-07-01', '', '2021-07-19 05:57:44'),
(64, 'MONU', '2021-06-29', '', 'Krishna International', '', 'SOLE', 'JESPER BONE', '', 'GR-65 PK', '65', 'NA', '7', '', 'NIKHIL JI', 'ASHISH', 'DESPATCH', '2021-07-01', '', '2021-07-19 05:59:36'),
(65, 'MONU', '2021-06-29', '', 'Footwear Inc', '', 'NO', 'MARUTI OFF WHITE', '', 'DC-07 60 WH', '60', 'NA', '25', '', 'NA', 'ASHISH', 'DESPATCH', '2021-06-30', '', '2021-07-19 06:00:42'),
(66, 'MONU', '2021-06-29', '', 'HARMAN ENTERPRISES', '', 'SOLE', 'MARA CREAM', '', 'TRS-70 HN', '70', 'NA', '5', '', 'MONU ', 'ASHISH', 'DESPATCH', '', '', '2021-07-19 06:01:40'),
(67, 'MONU', '2021-03-28', '', 'UNICO CREATIONS LLP', '', 'CUT PEICE', 'GX BRANDI HNY', '', 'TRS-70 HN (T-1)', '70', 'NA', '5', '', 'NA', 'ASHISH', 'DESPATCH', '2021-06-30', '', '2021-07-19 06:17:52'),
(68, 'MONU', '2021-06-29', '', 'UNICO CREATIONS LLP', '', 'NO', 'GHC FUSIA PINK', '', 'JDS-60 PK', '60', 'NA', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-02', '', '2021-07-19 06:18:57'),
(69, 'MONU', '2021-06-29', '', 'UNICO CREATIONS LLP', '', 'NO', 'GHC LIME CREAM', '', 'JDS-60 PK', '60', 'NA', '5', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-02', '', '2021-07-19 06:25:37'),
(70, 'MONU', '2021-06-29', '', 'UNICO CREATIONS LLP', '', 'NO', 'GHC LT. BLUE', '', 'JDS-60 PK', '60', 'NA', '5', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-02', '', '2021-07-19 06:26:39'),
(71, 'MONU', '2021-06-29', '', 'UNICO CREATIONS LLP', '', 'NO', 'GHC PINK', '', 'JDS-60 PK', '60', 'NA', '5', '', 'NA', 'ASHISH', 'DESPATCH', '2021-03-02', '', '2021-07-19 06:27:42'),
(72, 'MONU', '2021-06-29', '', 'UNICO CREATIONS LLP', '', 'NO', 'GHC AQUAMARIA GREEN', '', 'JDS-60 PK', '60', 'NA', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-02', '', '2021-07-19 06:28:59'),
(73, 'MONU', '2021-06-29', '', 'Atmaram Technowelts', '', 'WELT', 'JA PINK', '', 'MSVT-75 HN', '75', 'NA', '8', '', 'NA', 'NA', 'DESPATCH', '2021-07-06', '', '2021-07-19 06:29:54'),
(74, 'MONU', '2021-06-29', '', 'Atmaram Technowelts', '', 'WELT', 'STAR BEIGE', '', 'MSVT-75 HN', '75', 'NA', '25+25=50', '', 'NA', 'NA', 'DESPATCH', '2021-07-03', '', '2021-07-19 06:35:48'),
(75, 'MONU', '2021-06-29', '', 'Atmaram Technowelts', '', 'WELT', 'CLD BROWN', '', 'NA', '75', 'NA', '10', '', 'NA', 'NA', 'DESPATCH', '2021-06-06', '', '2021-07-19 06:37:00'),
(76, 'MONU', '2021-06-29', '', 'SAUBHAGYA POLYMERS', '', 'CUT PEICE (HONEY)', 'SB SLACLE HONEY', '', 'NPH-60 HN', '60', 'NA', '10', '', 'SANDEEP', 'ASHISH', 'DESPATCH', '2021-07-02', '', '2021-07-19 06:39:41'),
(77, 'MONU', '2021-07-01', '', 'D. S. M Sole Products (P) Limited (TN)', '', 'CUT PEICE(SOLE)', 'CAMBERA GREY', '', 'JDS-60 PK', '60', 'NA', '25', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-05', '', '2021-07-19 06:41:19'),
(78, 'MONU', '2021-06-30', '', 'FARISH RUBBER INDUSTRIES', '', 'SOLE', 'FERIS TP WINE', '', 'LTP-60 HN (NEW)', '60', 'NA', '7', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-01', '', '2021-07-19 06:44:27'),
(79, 'MONU', '2021-07-02', '', 'OOM SHOE COMPONENTS', '', 'LEATHER PIECE(KHAKI)', 'JITTO GREEN', '', 'FXE', '60', '75:25', '7', 'LX-1 PHR IN RECIPE', 'NA', 'ASHISH', 'DESPATCH', '', '', '2021-07-19 06:46:05'),
(80, 'MONU', '2021-07-02', '', 'Versatile Operations', '', 'LEATHER', 'JOGGER PEACH', '', 'OPAQ', '60', 'NA', '15', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-05', '', '2021-07-19 06:47:15'),
(81, 'MONU', '2021-07-03', '', 'Versatile Operations', '', 'SHOE', 'ARYA BEIGE', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'NA', 'DESPATCH', '2021-07-05', '', '2021-07-19 06:48:21'),
(82, 'MONU', '2021-07-03', '', 'OOM SHOE COMPONENTS', '', 'SHOE', 'HALIFAX /TACHMAN BEIGE', '', 'TRF', '60', 'NA', '15', '', 'NA', 'YASHPAL', 'DESPATCH', '2021-07-05', '', '2021-07-19 06:50:25'),
(83, 'MONU', '2021-06-30', '', 'GLOBAL POLYMERS', '', 'CUT PEICE(SOLE)', 'GLOBAL-2 BLUE', '', 'JDS-60 PK', '60', 'NA', '5', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-02', '', '2021-07-19 06:51:46'),
(84, 'MONU', '2021-07-02', '', 'A R INDUSTRIES', '', 'SOLE (BLUE)', 'AKC BLUE', '', 'OPAQ', '65', 'JDS', '10', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-05', '', '2021-07-19 06:53:44'),
(85, 'MONU', '2021-07-03', '', 'OOM SHOE COMPONENTS', '', 'SHOE', 'HALIFAX HNY (GILL)', '', 'TRF', '60', 'NA', '15', '', 'NA', 'YASHPAL', 'DESPATCH', '2021-07-05', '', '2021-07-19 06:55:43'),
(86, 'MONU', '2021-07-03', '', 'OMEGA POLYMICRON', '', 'NO', '194023 BLUE', '', 'P-50/55 HN (NEW)', '55', 'NA', '25', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-03', '', '2021-07-19 07:27:15'),
(87, 'MONU', '2021-07-03', '', 'OMEGA POLYMICRON', '', 'NO', '181154 TAN', '', 'P-50/55 HN (NEW)', '55', 'NA', '25', 'AS LAST SUPLY', 'NA', 'ASHISH', 'DESPATCH', '2021-07-03', '', '2021-07-19 07:28:28'),
(88, 'MONU', '2021-07-03', '', 'OMEGA POLYMICRON', '', 'NO', '141307 PINK', '', 'P-50/55 HN (NEW)', '55', 'NA', '25', 'AS LAST SUPLY', 'NA', 'ASHISH', 'DESPATCH', '2021-07-03', '', '2021-07-19 07:29:35'),
(89, 'MONU', '2021-07-03', '', 'OMEGA POLYMICRON', '', 'NO', '195513 GREEN', '', 'P-50/55 HN (NEW)', '55', 'NA', '25', 'AS LAST SUPLY', 'NA', 'ASHISH', 'DESPATCH', '2021-07-03', '', '2021-07-19 07:30:48'),
(90, 'MONU', '2021-07-03', '', 'OMEGA POLYMICRON', '', 'NO', '191652 BURGANDI', '', 'P-50/55 HN (NEW)', '55', 'NA', '25', 'AS LAST SUPLY', 'NA', 'ASHISH', 'DESPATCH', '2021-07-03', '', '2021-07-19 07:32:08'),
(91, 'MONU', '2021-07-01', '', 'Royal Polymers', '', 'CUT PEICE(SOLE)', 'SANDMAN BEIGE', '', 'OPAQ', '60', 'NA', '25', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-05', '', '2021-07-20 06:08:08'),
(92, 'MONU', '2021-07-01', '', 'Royal Polymers', '', 'LEATHER', 'CHESLEY BLUE', '', 'OPAQ', '60', 'NA', '25', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-05', '', '2021-07-20 06:09:24'),
(93, 'MONU', '2021-07-05', '', 'Krishna International', '', 'SHOE PICTURE ON MOBILE', 'NHY', '', 'FXE', '55', '65:35', '15', '', 'NA', 'NA', 'DESPATCH', '2021-07-06', '', '2021-07-20 06:11:03'),
(94, 'MONU', '2021-07-01', '', 'Krishna International', '', '160000 TPX GREY', 'NA', '', 'FXE', '55', '65:35', '15', '', 'NA', 'NA', 'DESPATCH', '2021-07-06', '', '2021-07-20 06:12:14'),
(95, 'MONU', '2021-06-29', '', 'Atmaram Technowelts', '', 'WELT', 'ZR 02 HONEY', '', 'MSVT-75 HN', '75', 'NA', '10', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-06', '', '2021-07-20 06:13:37'),
(96, 'MONU', '2021-06-29', '', 'Atmaram Technowelts', '', 'WELT', 'ZR 01 HONEY', '', 'MSVT-75 HN', '75', 'NA', '75', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-06', '', '2021-07-20 06:15:02'),
(97, 'MONU', '2021-07-06', '', 'ICON ENTERPRISES', '', 'SOLE', 'MICHAL HONEY', '', 'NPHE', '60', 'NA', '25', '', 'YASHPAL', 'NA', 'DESPATCH', '2021-07-07', '', '2021-07-20 06:16:28'),
(98, 'MONU', '2021-07-06', '', 'SUPREME POLYMERS', '', 'CUT SOLE', 'LINDSA HNY.', '', 'NPH', '60', 'NA', '15', '', 'RAMNARESH', 'ROHIT', 'DESPATCH', '2021-07-07', '', '2021-07-20 06:19:10'),
(99, 'MONU', '2021-07-05', '', 'OOM SHOE COMPONENTS', '', 'SHOE', 'CLARKS CRAPE HNY', '', 'RLC', '60', 'NA', '15', '', 'YASHPAL', 'ROHIT', 'DESPATCH', '2021-07-07', '', '2021-07-20 06:20:42'),
(100, 'MONU', '2021-07-07', '', 'Versatile Operations', '', 'SHOLE', 'NA', '', 'NPH', '62', 'NA', '5', '', 'YASHPAL', 'NA', 'DESPATCH', '', '', '2021-07-20 06:21:38'),
(101, 'MONU', '2021-07-07', '', 'Versatile Operations', '', 'SHOLE', 'NA', '', 'JDS', '62', 'NA', '5', '', 'YASHPAL', 'NA', 'DESPATCH', '', '', '2021-07-20 06:23:23'),
(102, 'MONU', '2021-07-07', '', 'SUPREME POLYMERS', '', 'LEATHER', 'BEIGE / PINK / CHARCOL GREY', '', 'JDS', '55-57', 'NA', '15', '', 'NA', 'NA', 'DESPATCH', '2021-07-08', '', '2021-07-20 06:26:09'),
(103, 'MONU', '2021-07-06', '', 'A R SUOLE', '', 'TAPI', 'KC TAPI BEIGE', '', 'JDS', '60', 'NA', '7', '', 'SHIV KUMAR SHARMA', 'ROHIT', 'DESPATCH', '2021-07-07', '', '2021-07-20 06:27:17'),
(104, 'MONU', '2021-07-09', '', 'STONY INDUSTRIES', '', 'SHOE', 'STONY WHITE', '', 'JD-07/60 W', '65', 'NA', '15', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-10', '', '2021-07-20 06:33:42'),
(105, 'MONU', '2021-07-08', '', 'BHARGAVA POLYVINYLE PVT. LTD.', '', 'LEATHER (1) ORANGE', 'BP LEATHER ORANGE', '', 'OPAQ', '60', 'JSD', '5', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-09', '', '2021-07-20 06:35:21'),
(106, 'MONU', '2021-07-07', '', 'HARMAN ENTERPRISES', '', 'CUT PEICE BEIGE', 'HR BEIGE', '', 'JDS', '60', 'NA', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-09', '', '2021-07-20 06:36:24'),
(107, 'MONU', '2021-07-08', '', 'BHARGAVA POLYVINYLE PVT. LTD.', '', 'LEATHER (BEIGE)', 'BP LEATHER BEIGE', '', 'OPAQ', '60', 'JDS', '5', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-09', '', '2021-07-20 06:37:32'),
(108, 'MONU', '2021-07-08', '', 'BHARGAVA POLYVINYLE PVT. LTD.', '', 'LEATHER (GREY)', 'BP LEATHER GREY', '', 'OPAQ', '60', 'JDS', '5', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-09', '', '2021-07-20 06:38:42'),
(109, 'MONU', '2021-07-09', '', 'Galaxy Shoe Accessories', '', 'SOLE', 'CASLITE BEIGE', '', 'OPAQ', '70-75', 'P-20/', '15', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-10', '', '2021-07-20 06:41:00'),
(110, 'MONU', '2021-07-03', '', 'Royal Polymers', '', 'CUT SOLE', 'FXE RP DARK GREY', '', 'FXE', '60', '75:25', '10', '', 'NA', 'NA', 'DESPATCH', '2021-07-13', '', '2021-07-20 06:42:31'),
(111, 'MONU', '2021-07-06', '', 'T.M. OVERSEAS', '', 'WELT', 'IVY SHINE GREY', '', 'WELT', '80', 'NDVT', '15', '', 'NA', 'NA', 'DESPATCH', '2021-07-14', '', '2021-07-20 06:43:52'),
(112, 'MONU', '2021-07-08', '', 'A R SUOLE', '', 'SOLE', 'RUFFALO TP YELLOW', '', 'TP', '60', 'NA', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-12', '', '2021-07-20 06:45:05'),
(113, 'MONU', '2021-07-08', '', 'A R SUOLE', '', 'SOLE', 'RUFFALO ICE', '', 'TP', '60', 'NA', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-12', '', '2021-07-20 06:46:22'),
(114, 'MONU', '2021-07-09', '', 'Footwear Inc', '', 'SHEET PIECE', 'ELIXIR OFF WHITE', '', 'FXE', 'NA', '75:25', '25', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-12', '', '2021-07-20 06:47:55'),
(115, 'MONU', '2021-07-09', '', 'A R SUOLE', '', 'CUT PEICE SOLE', 'ORIS HONEY', '', 'NPH', '60', 'NA', '7', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-13', '', '2021-07-20 06:49:04'),
(116, 'MONU', '2021-07-09', '', 'Royal Polymers', '', 'CUT PEICE SOLE', 'SMITH HONEY', '', 'NPH', '60', 'NA', '5', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-13', '', '2021-07-20 06:50:10'),
(117, 'MONU', '2021-07-09', '', 'Royal Polymers', '', 'CUT PEICE SOLE', 'SMITH GREY', '', 'OPAQ', '60', 'JDS', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-13', '', '2021-07-20 06:51:13'),
(118, 'MONU', '2021-07-09', '', 'Royal Polymers', '', 'CUT PEICE SOLE', 'SMITH BLUE', '', 'OPAQ', '60', 'JDS', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-13', '', '2021-07-20 06:52:11'),
(119, 'MONU', '2021-07-10', '', 'UNICO CREATIONS LLP', '', 'SHOE', 'MOSIO HONEY', '', 'NA', '60', 'NPH-60 HN', '25', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-12', '', '2021-07-20 06:53:13'),
(120, 'MONU', '2021-07-10', '', 'UNICO CREATIONS LLP', '', 'LEATHER', 'FXE DESERT TAUOE BEIGE', '', 'FXE (75:25)', '60', 'NA', '25', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-12', '', '2021-07-20 06:54:48'),
(121, 'MONU', '2021-07-10', '', 'SAUBHAGYA POLYMERS', '', 'LEATHER WHITE', 'SB LEATHER WHITE', '', 'DC-07/60 WH', '60', 'NA', '25', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-12', '', '2021-07-20 06:56:09'),
(122, 'MONU', '2021-07-10', '', 'Versatile Operations', '', 'LEATHER OLIVE', 'INSTA OLIVE', '', 'JDS ', '60', 'NA', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-12', '', '2021-07-20 06:57:07'),
(123, 'MONU', '2021-07-10', '', 'Radha Polymers', '', 'SOLE', 'RD-37 WHITE (R)', '', 'FP-20R/65 PK (L2)', '65', 'NA', '10', '', 'ABHISHEK MISRA', 'ASHISH', 'DESPATCH', '2021-07-13', '', '2021-07-20 06:58:34'),
(124, 'MONU', '2021-07-10', '', 'TRUWALK INTERNATIONAL', '', 'SOLE', 'TREE GREY', '', 'FXE', '60', '75:2V', '12', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-13', '', '2021-07-20 07:00:07'),
(125, 'MONU', '2021-07-10', '', 'TRUWALK INTERNATIONAL', '', 'SOLE', 'TREE BEIGE', '', 'FXE', '60', '75:25', 'NA', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-13', '', '2021-07-20 07:00:57'),
(126, 'MONU', '2021-07-10', '', 'PRATHIKA SALES', '', 'SHOE', 'PRATIKA TP OLIVE', '', 'LTP-60 HN (NEW)', '60', 'NA', '10', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-13', '', '2021-07-20 07:02:05'),
(127, 'MONU', '2021-07-10', '', 'Atmaram Technowelts', '', 'BELT (HNY)', 'LDN HONEY', '', 'MSVT-75 HN', '75', 'NA', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-14', '', '2021-07-20 07:03:16'),
(128, 'MONU', '2021-07-10', '', 'Versatile Operations', '', 'SOLE HNY', 'W-720 HONEY', '', 'NPH-60 HN', '60', 'NA', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-12', '', '2021-07-20 07:04:18'),
(129, 'MONU', '2021-07-12', '', 'A R SUOLE', '', 'SHEET PIECE', 'RIVA DARK BLUE', '', 'OPAQ', '60', 'P-20/', '7', '', 'SHIV KUMAR SHARMA', 'NA', 'DESPATCH', '2021-07-15', '', '2021-07-20 07:05:51'),
(130, 'MONU', '2021-07-12', '', 'GLOBAL POLYMERS', '', 'NA', 'GB NAVY BLUE', '', 'OPAQ', '60', 'JDS-60 PK', '10', '', 'MUKESH', 'NA', 'DESPATCH', '2021-07-14', '', '2021-07-20 07:06:54'),
(131, 'MONU', '2021-07-12', '', 'Versatile Operations', '', 'SHOE', 'ZARA TP OLIVE', '', 'TP ', '60', 'LTP-60 HN (NEW)', '10', '', 'NA', 'ASHISH', 'DESPATCH', '2021-07-13', '', '2021-07-20 07:07:58'),
(132, 'MONU', '2021-07-12', '', 'UNICO CREATIONS LLP', '', 'CUT LEATHER PIECE', 'LAVENDOR GREY', '', 'OPAQ', '62', 'JDS', '5', '', 'DHARMVER', 'NA', 'DESPATCH', '2021-07-14', '', '2021-07-20 07:09:28'),
(133, 'MONU', '2021-07-13', '', 'GLOBAL POLYMERS', '', 'NA', 'GB GREY HONEY', '', 'HNY', '60', 'C-60 HN', '10', '', 'MUKESH', 'NA', 'DESPATCH', '2021-07-14', '', '2021-07-20 07:10:40'),
(134, 'MONU', '2021-07-13', '', 'GLOBAL POLYMERS', '', 'NA', 'GB RAVEL BONE', '', 'OPAQ', '60', 'JDS', '10', '', 'MUKESH', 'NA', 'DESPATCH', '', '', '2021-07-20 07:12:01'),
(135, 'MONU', '2021-07-13', '', 'GLOBAL POLYMERS', '', 'NA', 'GLOBAL BEIGE', '', 'OPAQ', '60', 'JDS', '10', '', 'MUKESH', 'NA', 'DESPATCH', '2021-07-14', '', '2021-07-20 07:12:59'),
(136, 'MONU', '2021-07-14', '', 'Versatile Operations', '', 'SOLE', 'PARACHUTE TP HONEY', '', 'TP', '60', 'LTP', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-16', '', '2021-07-20 07:14:22'),
(137, 'MONU', '2021-12-15', '', 'A R SUOLE', '', 'CUT PEICE', 'CADED GREY', '', 'NPH', '60', 'NA', '6', '', 'NA', 'NA', 'DESPATCH', '2021-07-17', '', '2021-07-20 07:15:31'),
(138, 'MONU', '2021-07-15', '', 'ICON ENTERPRISES', '', 'LEATHER PIECE', 'CAVANI RED', '', 'OPAQ', '60', 'JDS', '15', '', 'NA', 'NA', 'DESPATCH', '2021-07-17', '', '2021-07-20 07:16:33'),
(139, 'MONU', '2021-07-13', '', 'A R SUOLE', '', 'LEATHER PIECE', 'HARBOUR GREY', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'NA', 'DESPATCH', '2021-07-19', '', '2021-07-20 07:17:40'),
(140, 'MONU', '2021-07-16', '', 'ICON ENTERPRISES', '', 'SOLE', 'P1-192 GREY', '', 'NPH', '60', 'NA', '15', '', 'NA', 'NA', 'DESPATCH', '2021-07-17', '', '2021-07-20 07:18:45'),
(141, 'MONU', '2021-07-17', '', 'TICOMP HEELS PVT. LTD', '', 'SOLE', 'SOLE', '', 'NPHE', '68-70', 'NA', '25', '', 'NA', 'NA', 'DESPATCH', '2021-07-17', '', '2021-07-20 07:19:39'),
(142, 'MONU', '2021-07-17', '', 'KAF FOOTWEAR', '', 'SOLE (ORANGE)', 'KAF TP ORANGE', '', 'LTP', '65', 'NA', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-22', '', '2021-07-23 04:44:28'),
(143, 'MONU', '2021-07-17', '', 'KAF FOOTWEAR', '', 'SOLE (BLUE)', 'SKY TP BLUE', '', 'LTP', '65', 'NA', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-22', '', '2021-07-23 04:45:44'),
(144, 'MONU', '2021-07-17', '', 'KAF FOOTWEAR', '', 'SOLE (BLUE)', 'KAF LIGHT BLUE', '', 'OPAQ', '65', 'P/20', '5', '', 'NA', 'NA', 'DESPATCH', '2021-07-22', '', '2021-07-23 04:46:37'),
(145, 'MONU', '2021-07-16', '', 'KRISHNA INDUSTRIES', '', 'CUT SOLE', 'KR ROYAL NAVY BLUE', '', 'OPAQ', '70', 'P/20', '10', '', 'NA', 'NA', 'DESPATCH', '2021-07-20', '', '2021-07-23 04:47:40'),
(146, 'MONU', '2021-07-16', '', 'Footwear Inc', '', 'SOLE', 'ELIXIR BEIGE', '', 'FXE', '60', '75:25', '10', '', 'NA', 'NA', 'DESPATCH', '2021-07-20', '', '2021-07-23 04:48:48'),
(147, 'MONU', '2021-07-15', '', 'A R SUOLE', '', 'LEATHER PIECE', 'HARBOUR WHITE', '', 'NA', '60', 'DC-07', '10', '', 'NA', 'NA', 'DESPATCH', '2021-07-19', '', '2021-07-23 04:49:48'),
(148, 'MONU', '2021-07-14', '', 'T.M. OVERSEAS', '', 'WELT PIECE', 'VANISH DARK BLUE', '', 'WELT', '80', 'NDVT', '10', '', 'NA', 'NA', 'DESPATCH', '0021-07-20', '', '2021-07-23 04:52:35'),
(149, 'MONU', '2021-07-19', '', 'MASTER PLASTICON ( INDIA )', '', 'CUT PEICE (BELT)', 'MPI CREAM', '', 'JDS', '60', 'NA', '15', '', 'YASHPAL', 'ROHIT', 'DESPATCH', '2021-07-21', '', '2021-07-23 04:54:13'),
(150, 'MONU', '2021-07-19', '', 'TICOMP HEELS PVT. LTD', '', 'CUT PEICE (BR)', 'TICOM BROWN', '', 'D-07 BR (N)', '70', 'NA', '25', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-19', '', '2021-07-23 04:55:55'),
(151, 'MONU', '2021-07-19', '', 'OOM SHOE COMPONENTS', '', 'SOLE (OLIVE)', 'BERGAMO OLIVE', '', 'VTPR-55 HN', '55', 'NA', '15', '', 'YASHPAL', 'ROHIT', 'DESPATCH', '2021-07-20', '', '2021-07-23 04:57:13'),
(152, 'MONU', '2021-07-19', '', 'OOM SHOE COMPONENTS', '', 'SOLE', 'ZOLTAN TP HNY', '', 'VTPR-55 HN', '55', 'NA', '15', '', 'YASHPAL', 'ROHIT', 'DESPATCH', '2021-07-20', '', '2021-07-23 04:58:25'),
(153, 'MONU', '2021-07-20', '', 'DIWAN OVERSEAS', '', 'SOLE', 'HOBS BLUE', '', 'OPAQ', '80', 'P/20', '25', '', 'JAY DEV', 'ROHIT', 'DESPATCH', '2021-07-22', '', '2021-07-23 04:59:42'),
(154, 'MONU', '2021-07-21', '', 'OOM SHOE COMPONENTS', '', 'SOLE (BROWN)', 'KOMBO BROWN', '', 'D-07 BH (N)', '70', 'NA', '15', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-22', '', '2021-07-23 05:01:14'),
(155, 'MONU', '2021-07-22', '', 'Versatile Operations', '', 'LEATHER', 'ROCKET PINK', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-23', '', '2021-07-23 05:06:58'),
(156, 'MONU', '2021-07-22', '', 'Versatile Operations', '', 'LEATHER', 'VO RD FROST', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-23', '', '2021-07-23 05:08:09'),
(157, 'MONU', '2021-07-22', '', 'Versatile Operations', '', 'SOLE', 'BROOK LYN BEIGE', '', 'HNY', '60-62', 'P-50', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-23', '', '2021-07-23 05:09:18'),
(158, 'MONU', '2021-07-22', '', 'Versatile Operations', '', 'LEATHER', 'RD COVEY', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-23', '', '2021-07-23 05:10:26'),
(159, 'MONU', '2021-07-22', '', 'Versatile Operations', '', 'LEATHER', 'RD CAT FISH', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-23', '', '2021-07-23 05:11:17'),
(160, 'MONU', '2021-07-22', '', 'Versatile Operations', '', 'LEATHER', 'RD LIZ', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'RO', 'DESPATCH', '2021-07-23', '', '2021-07-23 05:12:00'),
(161, 'MONU', '2021-07-22', '', 'Versatile Operations', '', 'LEATHER', 'RD CAPPUCCINO', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-23', '', '2021-07-23 05:13:08'),
(162, 'MONU', '2021-07-22', '', 'Versatile Operations', '', 'LEATHER', 'VO RD NUDE', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-23', '', '2021-07-23 05:14:19'),
(163, 'MONU', '2021-07-22', '', 'Versatile Operations', '', 'LEATHER', 'VO RD BEIGE', '', 'OPAQ', '60', 'JDS', '10', '', 'NA', 'ROHIT', 'DESPATCH', '2021-07-23', '', '2021-07-23 05:16:03'),
(164, 'MONU', '2021-07-21', '', 'OOM SHOE COMPONENTS', '', 'NO RAP', 'VANCUBER TIKLI BROWN', '', 'P-20/65', '60', 'NA', '5', '', 'NA', 'NA', '5', '2021-07-22', '', '2021-07-23 05:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `party_name`
--

CREATE TABLE `party_name` (
  `SNO` int(11) NOT NULL,
  `TAG_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `party_name`
--

INSERT INTO `party_name` (`SNO`, `TAG_NAME`) VALUES
(1, 'A R INDUSTRIES'),
(2, 'A R SUOLE'),
(3, 'A S Chemicals (india)'),
(4, 'A.K. PLASTICS'),
(5, 'A.V. Plastics'),
(6, 'AAR KAY FOOTWEAR'),
(7, 'Alvin Cements Pvt Ltd'),
(8, 'Alvin Leather crafts Pvt. Ltd.'),
(9, 'Amazon Corporate Services Pvt. Ltd.'),
(10, 'AMNISH AGARWAL'),
(11, 'Amson Polymers'),
(12, 'AR ENTERPRISES'),
(13, 'Ashok Kumar Sharma'),
(14, 'ASP FABRICS'),
(15, 'Atmaram Technowelts'),
(16, 'Avi Polymers'),
(17, 'Avon Elastomers'),
(18, 'BAJWA RUBBER INDUSTRIES'),
(19, 'Basant Overseas'),
(20, 'BAWA EXPORTS'),
(21, 'Bawa Overseas'),
(22, 'BHAGWATI PLASTIC UDDHYOG'),
(23, 'BHARGAVA POLYVINYLE PVT. LTD.'),
(24, 'BILAL PLASTIC'),
(25, 'BITUFELT PVT. LTD.'),
(26, 'CAPSTAN RUBBERS ( INDIA ) UNIT - III'),
(27, 'Chandra Components'),
(28, 'CRAFTTREE'),
(29, 'CREATIVE EXPORTS'),
(30, 'D & D International'),
(31, 'D. S. M Sole Products (P) Limited (TN)'),
(32, 'D.S. ACCESSORIES & FOOTWEAR PVT. LTD'),
(33, 'D.S.M. SOLE PRODUCTS (P) LTD.'),
(34, 'DANG BROTHER'),
(35, 'Dawar Footwear Industries'),
(36, 'DEEPAK IMPEX'),
(37, 'DEV POLYMERS ( INDIA )'),
(38, 'DIAMOND POLYMERS'),
(39, 'DIWAN  OVERSEAS'),
(40, 'DIXIT ENTERPRISES'),
(41, 'EKTA INDUSTRIES'),
(42, 'ELASTOMERS INDIA'),
(43, 'Emaar Polymers'),
(44, 'Emson Solexpor Private Limited'),
(45, 'FARISH RUBBER INDUSTRIES'),
(46, 'Footwear Inc'),
(47, 'FREEDOM SHOE LLP'),
(48, 'G. P. Polymers'),
(49, 'G.M TECHNOCHEM (P) LTD'),
(50, 'Galaxy Shoe Accessories'),
(51, 'Garg Theatre'),
(52, 'GBM INTERNATIONAL'),
(53, 'Gee Kay Moulds'),
(54, 'GLOBAL POLYMERS'),
(55, 'GLOSS COATINGS PVT. LTD.'),
(56, 'Grow Closer Thermoplast India'),
(57, 'GUPTA H. C. OVERSEAS (I) PVT. LTD.'),
(58, 'H. S. Polymers Pvt. Ltd.'),
(59, 'HARMAN ENTERPRISES'),
(60, 'HWASHIN INDUSTRIES PRIVATE LIMITED'),
(61, 'ICON ENTERPRISES'),
(62, 'INDCOAT FOOTWEAR'),
(63, 'INDCOAT SOLES PVT LTD (TN)'),
(64, 'J R S POLYMERS'),
(65, 'J S P SOLES'),
(66, 'J.M.D. OVERSEAS PVT. LTD.'),
(67, 'J.S.P. DIES & MOULD'),
(68, 'J.S.P. ENTERPRISES'),
(69, 'JAY POLY PLAST'),
(70, 'jayna  udhyog'),
(71, 'Jitin Enterprises'),
(72, 'JMF Synthetic India Private Limited'),
(73, 'JMF SYNTHETICS INDIA PVT LTD.'),
(74, 'JMF Synthetics India Pvt. Ltd.'),
(75, 'JOSHI OVERSEAS'),
(76, 'K N PRODUCTS'),
(77, 'K R Fabricators'),
(78, 'K. K. INDUSTRIES'),
(79, 'K.L.RUBBER INDUSTRIES'),
(80, 'KAILASH ( FORME) CREATIONS (P) LTD.'),
(81, 'KAPSONS WORLD WIDE'),
(82, 'KATYAL INDUSTRIES'),
(83, 'KAUL SHOE COMPONENTS'),
(84, 'KIRAN INTERNATIONAL'),
(85, 'KRISHNA INDUSTRIES'),
(86, 'Krishna International'),
(87, 'KRISONS CORPORATION'),
(88, 'LOBSTER FOOTWEARS'),
(89, 'M & W SOLES'),
(90, 'M I Footwear Components Pvt. Ltd.'),
(91, 'M. M. Sales'),
(92, 'M.K.TRADERS'),
(93, 'M/S RCI'),
(94, 'M/S TRIDEV PLASTIC'),
(95, 'MAA KAILA DEVI ENTERPRISES'),
(96, 'MAGNUM FOOTWEAR PRIVATE LIMITED'),
(97, 'MASTER PLASTICON ( INDIA )'),
(98, 'MITTAL POLYMERS'),
(99, 'MOHIT ENTERPRISES'),
(100, 'MONARCH FOOTWEAR'),
(101, 'Multiprene International'),
(102, 'NORTONS EXIM PVT LTD'),
(103, 'OOM SHOE COMPONENTS'),
(104, 'OZONE TRADERS'),
(105, 'PARK ITALIAA SOLES'),
(106, 'PARKSUN INDUSTRIES'),
(107, 'PAUL BROTHERS'),
(108, 'Polyphase vidyut control systems'),
(109, 'POOJA PLASTO COLOUR PVT. LTD.'),
(110, 'Power Transmission & Rubber Industries'),
(111, 'PRATHAM POLYMERS'),
(112, 'PRATHIKA SALES'),
(113, 'PREM ENTERPRISES'),
(114, 'Premier Plastics'),
(115, 'PRK ENTERPRISES'),
(116, 'PROGRESSIVE COMPONENTS PVT. LTD.'),
(117, 'R.N.G.KRISHNA'),
(118, 'Radha Polymers'),
(119, 'Radhey Plastic'),
(120, 'RIDDHI SIDDHI ENTERPRISES'),
(121, 'Rohil Polymers India'),
(122, 'ROYAL EXPORT HOUSE'),
(123, 'Royal Polymers'),
(124, 'Royal Soles & Accessories'),
(125, 'ROYAL SOLES PRIVATE LIMITED'),
(126, 'S S SOLES PVT LTD.'),
(127, 'S S WELT'),
(128, 'S. K. FABRICATORS'),
(129, 'S. V. Technocrats Pvt. Ltd.'),
(130, 'S.K ENTERPRISES'),
(131, 'S.R. POLYMERS'),
(132, 'S.V.O FOOTWEAR EXPORTS PRIVATE LIMITED'),
(133, 'Sara Chemplast'),
(134, 'SAUBHAGYA POLYMERS'),
(135, 'SCHUH ENTERPRISES'),
(136, 'SGA POLYCHEM PRIVATE LIMITED'),
(137, 'SHANTI SHOES EXPORTS'),
(138, 'shiv polymers'),
(139, 'SHIV SHAKTI ENTERPRISES'),
(140, 'SHIVSAI SOLEXPOR PVT. LTD.'),
(141, 'SHOE WORLD BAJWA EXPORT'),
(142, 'SHREE BALAJI POLYMERS'),
(143, 'SHREE KRISHNA POLYMERS'),
(144, 'Shree Ram Plastics'),
(145, 'SHREE SHYAM JI INDUSTRIES'),
(146, 'SHRI S.S. POLYMERS'),
(147, 'SHRI SUNDER POLLYMERS'),
(148, 'SHROFF POLYTECH PRIVATE LIMITED'),
(149, 'Sikdar Shoe Accessories (p) ltd.'),
(150, 'SKS Global Pvt Ltd'),
(151, 'SPECTRUM CHEMICALS'),
(152, 'SREETECH INDUSTRIES'),
(153, 'Srivari Overseas'),
(154, 'SUCHETA INTERNATIONAL'),
(155, 'SUMIT ENTERPRISES'),
(156, 'SUOLIFICIO LINEA ITALIA (INDIA) PRIVATE LIMITED'),
(157, 'SUPER BOND MFG PVT. LTD.'),
(158, 'Super Soles Pvt. Ltd.'),
(159, 'Superb Foot Tech Pvt. Ltd.'),
(160, 'SUPREME POLYMERS'),
(161, 'T.M. OVERSEAS'),
(162, 'TECHNOCRAT ENTERPRISES'),
(163, 'TEDESWAR POLYVINAYAL'),
(164, 'TEJ INTERNATIONAL PVT LTD.'),
(165, 'TEJ SHOE TECH'),
(166, 'TICOMP HEELS PVT. LTD'),
(167, 'TIRUPATI MOULD & TOOLS'),
(168, 'TOP POLY VINAYAL'),
(169, 'TRELA FOOTWEAR EXPORTS PVT. LTD.'),
(170, 'TRUPATI PLASTICS'),
(171, 'TRUWALK INTERNATIONAL'),
(172, 'UMA ENGINEERING WORKS'),
(173, 'UMA ENTERPRISES'),
(174, 'UNICO CREATIONS LLP'),
(175, 'V. S. Plastic'),
(176, 'VALOR ENGINEERING PVT. LTD'),
(177, 'Versatile Operations'),
(178, 'VIJAYA AGENCIES'),
(179, 'VIKAS GLOBAL ONE LIMITED'),
(180, 'Virola International'),
(181, 'VISHAL POLYMERS'),
(182, 'W M POLYPLAST'),
(183, 'WADHWA POLYMERS'),
(184, 'Wadhwa Sales Corporation'),
(185, 'WESTON RUBBER INDUSTRY'),
(186, 'ZAPATO EXPORTS PVT. LTD.'),
(187, 'OMEGA POLYMICRON'),
(189, 'STONY INDUSTRIES'),
(190, 'KAF FOOTWEAR');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `NAME`, `PASSWORD`) VALUES
(1, 'ROHIT', '1234'),
(2, 'RAJAT', '1111'),
(3, 'MONU', '4167');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `floyd1development`
--
ALTER TABLE `floyd1development`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `party_name`
--
ALTER TABLE `party_name`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `floyd1development`
--
ALTER TABLE `floyd1development`
  MODIFY `SNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `party_name`
--
ALTER TABLE `party_name`
  MODIFY `SNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
