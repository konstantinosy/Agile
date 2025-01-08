-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 08, 2025 at 03:15 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agile2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(25) DEFAULT NULL,
  `Last_Name` varchar(25) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `Client_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(25) DEFAULT NULL,
  `Last_Name` varchar(25) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  `Admin_ID` int DEFAULT NULL,
  `Consultant_ID` int DEFAULT NULL,
  PRIMARY KEY (`Client_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `Admin_ID` (`Admin_ID`),
  KEY `Consultant_ID` (`Consultant_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultant`
--

DROP TABLE IF EXISTS `consultant`;
CREATE TABLE IF NOT EXISTS `consultant` (
  `Consultant_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(25) DEFAULT NULL,
  `Last_Name` varchar(25) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  `Admin_ID` int DEFAULT NULL,
  PRIMARY KEY (`Consultant_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `Admin_ID` (`Admin_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `Project_ID` int NOT NULL AUTO_INCREMENT,
  `Project_Title` varchar(25) DEFAULT NULL,
  `Project_Description` varchar(50) DEFAULT NULL,
  `Project_Deadline` date DEFAULT NULL,
  `Project_Status` tinyint(1) DEFAULT NULL,
  `Consultant_ID` int DEFAULT NULL,
  `Client_ID` int DEFAULT NULL,
  PRIMARY KEY (`Project_ID`),
  KEY `Consultant_ID` (`Consultant_ID`),
  KEY `Client_ID` (`Client_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `Task_ID` int NOT NULL AUTO_INCREMENT,
  `Task_Title` varchar(25) DEFAULT NULL,
  `Task_Description` varchar(50) DEFAULT NULL,
  `Task_Priority` varchar(25) DEFAULT NULL,
  `Task_Status` tinyint(1) DEFAULT NULL,
  `Task_Deadline` date DEFAULT NULL,
  `Project_ID` int DEFAULT NULL,
  `Consultant_ID` int DEFAULT NULL,
  PRIMARY KEY (`Task_ID`),
  KEY `Project_ID` (`Project_ID`),
  KEY `Consultant_ID` (`Consultant_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `User_Role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
