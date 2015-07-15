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
-- Table structure for table `itemregistration`
--

CREATE TABLE IF NOT EXISTS `itemregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FK_Supp_ID` int(11) NOT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `unit_price` varchar(45) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `discripton` varchar(45) DEFAULT NULL,
  `datea` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Supp_ID_idx` (`FK_Supp_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `itemregistration`
--

INSERT INTO `itemregistration` (`id`, `FK_Supp_ID`, `item_name`, `unit_price`, `unit`, `quantity`, `discripton`, `datea`) VALUES
(1, 2, 'Cement', '900', 'Bags', '500', 'Sanatha', '2015/07/20'),
(2, 3, 'Metal', '200', 'Kuru', '15000', '2milimter Lanwa Santha', '2015/07/20'),
(3, 4, 'Sand', '5600', 'Cub', '50', 'Manampitiya Weli', '2015/07/21'),
(4, 5, 'Block', '350', '', '100000', NULL, '2015/07/22');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itemregistration`
--
ALTER TABLE `itemregistration`
  ADD CONSTRAINT `FK_Supp_ID` FOREIGN KEY (`FK_Supp_ID`) REFERENCES `registersupplier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
