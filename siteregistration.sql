-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2015 at 07:25 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ranweli`
--

-- --------------------------------------------------------

--
-- Table structure for table `siteregistration`
--

CREATE TABLE IF NOT EXISTS `siteregistration` (
  `SiteID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteAddress` varchar(45) DEFAULT NULL,
  `SiteManagerName` varchar(45) DEFAULT NULL,
  `StartDate` varchar(45) DEFAULT NULL,
  `PlanDate` varchar(45) DEFAULT NULL,
  `ActualDate` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SiteID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `siteregistration`
--

INSERT INTO `siteregistration` (`SiteID`, `SiteAddress`, `SiteManagerName`, `StartDate`, `PlanDate`, `ActualDate`, `Status`) VALUES
(1, 'dsf', 'fdsf', 'sdf', 'fds', 'fds', 'fsd'),
(2, 'sfs', 'fsdf', 'fdsf', 'fds', 'fsd', 'dsfs'),
(3, 'fsdf', 'dfs', 'sdfsd', 'sfs', 'sfds', 'sfs'),
(4, 'dsg', 'gsd', 'sdg', 'sdg', 'sdg', 'sgd'),
(5, 'Galle', 'malan', '2015/06/01', '2015/06/15', '2015/85/96', 'dsfdfsfsdfdsfsf');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
