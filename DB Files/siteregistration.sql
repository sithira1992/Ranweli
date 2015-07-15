-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2015 at 07:59 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `siteregistration`
--

INSERT INTO `siteregistration` (`SiteID`, `SiteAddress`, `SiteManagerName`, `StartDate`, `PlanDate`, `ActualDate`, `Status`) VALUES
(1, 'No 364,pagoda road,Nugegoda', 'Mahesh Udara', '2015/07/20', '2020/02/20', '2020/02/15', 'fsd'),
(2, 'No 20 ,galle road,Colombo3', 'Sithra Premudith', '2015/07/2', '2020/02/18', '2020/05/18', 'dsfs'),
(3, 'No 233,Wakwella road,Galle', 'Gayan Sanjewa', '2015/07/22', '2018/02/15', '2020/05/24', 'sfs'),
(4, 'No 21,nawala road,kalubowila', 'gayan Sampath', '2015/07/23', '2017/02/15', '2020/02/15', 'sgd'),
(5, 'No 23,Akuressa road,Yakkalamulla', 'Sumanasiri Liyanage', '2015/07/25', '2018/02/20', '2020/06/25', 'dsfdfsfsdfdsfsf'),
(6, 'No22, Diaywannawa baththramulla', 'Sujeewa Serasinhas', NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
