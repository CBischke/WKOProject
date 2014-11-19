-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2014 at 10:13 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wko`
--
CREATE DATABASE IF NOT EXISTS `wko` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wko`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `ID` int(11) NOT NULL COMMENT 'main id',
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'User name',
  `Password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NewPassword` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User-Password Table';

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `Name`, `Password`, `NewPassword`) VALUES
(1, 'Chris', '', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Page` varchar(99) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`ID`, `Page`, `Content`) VALUES
(0, 'Home', '<h2>This is the home page</h2>'),
(1, 'Team', '<h2>HEADER</h2><h2><p><a rel="nofollow" target="_blank" href="http://google.com">PARA</a></p></h2><h1>TEST</h1><h2>HEADER</h2><p>PARA</p><h1>TEST</h1><h2>HEADER</h2><p>PARA</p><h1>TEST</h1><h2>HEADER</h2><p>PARA</p><h1>TEST</h1>'),
(2, 'History', '<h2>History</h2>'),
(3, 'HomePrograms', '<h2>Home PRograms</h2>'),
(4, 'CenterPrograms', '<h2>Center</h2>'),
(5, 'TestimonyPrograms', '<h2>TEST</h2>'),
(6, 'Parents', '<h2>Parents</h2>'),
(7, 'Kids', '<h2>Kids</h2>'),
(8, 'Volunteer', '<h2>Voluneteer</h2>'),
(9, 'Donate', '<h2>Donate</h2>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
