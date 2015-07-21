-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2015 at 08:05 PM
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
-- Table structure for table `requestform`
--

CREATE TABLE IF NOT EXISTS `requestform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FK_Location` int(11) DEFAULT NULL,
  `FK_ManagerName` int(11) DEFAULT NULL,
  `Item` varchar(45) DEFAULT NULL,
  `Unit` varchar(45) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Location_idx` (`FK_Location`),
  KEY `FK_ManagerName_idx` (`FK_ManagerName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `requestform`
--

INSERT INTO `requestform` (`id`, `FK_Location`, `FK_ManagerName`, `Item`, `Unit`, `Quantity`, `Date`) VALUES
(1, 3, 12, 'fsdfsf', 'Bags', 'sf', 'sfsdf'),
(2, 3, 12, 'fsdfsf', 'Bags', 'sf', 'sfsdf'),
(3, 3, 12, 'Weli', 'cube', '20', '2015/10/06'),
(4, 3, 18, 'Metl', 'Bags', '5', '2015/06/20'),
(5, 3, 19, 'Ja', 'Kg', '5', '2015/06/20'),
(6, 5, 10, 'sad', 'Kg', 'ad', 'ad');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `requestform`
--
ALTER TABLE `requestform`
  ADD CONSTRAINT `FK_ManagerName` FOREIGN KEY (`FK_ManagerName`) REFERENCES `staffregistraion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Location` FOREIGN KEY (`FK_Location`) REFERENCES `siteregistration` (`SiteID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
