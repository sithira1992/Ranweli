-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2015 at 07:30 PM
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
-- Table structure for table `staffregistraion`
--

CREATE TABLE IF NOT EXISTS `staffregistraion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `jobPosition` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `regsterDate` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `staffregistraion`
--

INSERT INTO `staffregistraion` (`id`, `fullName`, `address`, `gender`, `nic`, `phone`, `jobPosition`, `email`, `regsterDate`, `status`) VALUES
(1, 'aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'q', 'q', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'q', 'q', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'a', 's', 'male', 'a', NULL, NULL, NULL, NULL, NULL),
(10, 'a', 's', 'male', 'a', NULL, NULL, NULL, NULL, NULL),
(11, 'a', 'a', 'male', '920915210v', '0716279549', 'saab', NULL, NULL, NULL),
(12, 'a', 'a', 'male', '920915210v', '0716279549', 'saab', NULL, NULL, NULL),
(13, 'a', 'a', 'male', '920915210v', '0716279549', 'saab', NULL, NULL, NULL),
(14, 'a', 'a', 'male', '920915210v', '0716279549', 'saab', NULL, NULL, NULL),
(15, 'sithira', 'Galle', 'male', '920915210v', '0716279549', 'saab', 'a@gmail.com', NULL, NULL),
(16, 'sithira', 'Galle', 'male', '920915210v', '0716279549', 'saab', 'a@gmail.com', NULL, NULL),
(17, 'sithira', 'aa', 'male', '920915211v', '0716279549', 'opel', 'a@gmail.com', NULL, NULL),
(18, 'Mahesh', 'kk', 'male', '920460348v', '0716362464', 'saab', 'mucreationz@gmail.com', NULL, NULL),
(19, 'fe4444', '', '', '', '', '', '', NULL, NULL),
(20, 'Mahesh', 'galle', 'male', '920460258V', '0716362464', 'volvo', 'mj@gmail.com', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
