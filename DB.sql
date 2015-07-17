-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2015 at 05:32 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `registersupplier`
--

CREATE TABLE IF NOT EXISTS `registersupplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `supitem` varchar(45) DEFAULT NULL,
  `unitprice` varchar(45) DEFAULT NULL,
  `statues` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `registersupplier`
--

INSERT INTO `registersupplier` (`id`, `fullname`, `address`, `phone`, `email`, `supitem`, `unitprice`, `statues`) VALUES
(1, 'Nuwan Kumara', 'Kottawa', '0716362464', 'nuwan@gmail.com', 'Metal', '200', '2ml Lanwa santha wane'),
(2, 'Kumarasiri', 'Galle', '0715645879', 'kumara@gmail.com', 'Metal', '180', '2mli Imported'),
(3, 'Sirisena', 'Thalagaha', '0756895896', 'siri@gmail.com', 'Block', '300', ''),
(4, 'Jagath', 'Kuruduwathths', '0716362465', 'jagath@gmail.com', 'Block', '270', 'jhhuhui'),
(5, 'Ranji', 'Manampitiya', '0716356456', 'ranji2011@gmail.com', 'Sand', '5400', 'Per Cube Price'),
(6, 'Jewan', 'Mahiyanganaya', '0715485856', 'Jewanthnu@gmail.com', 'Sand', '5200', 'Per Cube'),
(8, 'Sumanadasa Abewanrdana', 'Gampaha', '0715488963', 'sumanadasa2012@gmail.com', 'Sand', '5400', '');

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
  `Sendto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Location_idx` (`FK_Location`),
  KEY `FK_ManagerName_idx` (`FK_ManagerName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `requestform`
--

INSERT INTO `requestform` (`id`, `FK_Location`, `FK_ManagerName`, `Item`, `Unit`, `Quantity`, `Date`, `Sendto`) VALUES
(1, 3, 12, 'fsdfsf', 'Bags', 'sf', 'sfsdf', NULL),
(2, 3, 12, 'fsdfsf', 'Bags', 'sf', 'sfsdf', NULL),
(3, 3, 12, 'Weli', 'cube', '20', '2015/10/06', NULL),
(4, 3, 18, 'Metl', 'Bags', '5', '2015/06/20', NULL),
(5, 3, 19, 'Ja', 'Kg', '5', '2015/06/20', NULL),
(7, 2, 12, 'Veli', 'Bags', '5', '2015/06/20', NULL),
(8, 5, 15, 'Block', 'Kg', '5', '2015/05/12', NULL),
(9, 3, 18, 'Block', 'Bags', '5', '2015/05/20', NULL),
(10, 4, 12, 'Blocks', 'Bags', '200', '2015-07-16', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `siteregistration`
--

INSERT INTO `siteregistration` (`SiteID`, `SiteAddress`, `SiteManagerName`, `StartDate`, `PlanDate`, `ActualDate`, `Status`) VALUES
(1, 'No 364,pagoda road,Nugegoda', 'Mahesh Udara', '2015/07/20', '2020/02/20', '2020/02/15', 'fsd'),
(2, 'No 20 ,galle road,Colombo3', 'Sithra Premudith', '2015/07/2', '2020/02/18', '2020/05/18', 'dsfs'),
(3, 'No 233,Wakwella road,Galle', 'Gayan Sanjewa', '2015/07/22', '2018/02/15', '2020/05/24', 'sfs'),
(4, 'No 21,nawala road,kalubowila', 'gayan Sampath', '2015/07/23', '2017/02/15', '2020/02/15', 'sgd'),
(5, 'No 23,Akuressa road,Yakkalamulla', 'Sumanasiri Liyanage', '2015/07/25', '2018/02/20', '2020/06/25', 'dsfdfsfsdfdsfsf'),
(6, 'No22, Diaywannawa baththramulla', 'Sujeewa Serasinhas', NULL, NULL, NULL, NULL),
(7, 'No 345 Kotte road,Pitakotte.', 'Sriyantha Mendis', '2015-07-24', '2019-06-19', '2018-11-15', ''),
(8, 'ad', 'das', '2015-07-29', '2015-07-22', '2015-07-30', ''),
(9, 'asd', 'dad', '2015-07-29', '2015-07-02', '2015-07-03', ''),
(10, 'ads', 'dasd', '2015-07-29', '2015-07-29', '2015-07-09', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `staffregistraion`
--

INSERT INTO `staffregistraion` (`id`, `fullName`, `address`, `gender`, `nic`, `phone`, `jobPosition`, `email`, `regsterDate`, `status`) VALUES
(1, 'Mahesh Udara', 'Galle', 'male', '920456896V', '0758596954', NULL, NULL, NULL, NULL),
(7, 'Sithira Pramudith', 'Galle', 'male', '920547856V', '0715896568', NULL, NULL, NULL, NULL),
(8, 'Kanchana Silva', 'Galle', 'male', '458758956V', '0715478582', NULL, NULL, NULL, NULL),
(9, 'Duminda Rathnayaka', 'Yakkalamulla', 'male', '58578488dV', '0715478582', NULL, NULL, NULL, NULL),
(10, 'Presanna baddewithana', 'Wakwella', 'male', '45854858V', '078547852', NULL, NULL, NULL, NULL),
(11, 'Mahasen Bandara', 'Dewata', 'male', '920915210v', '0716279549', 'saab', NULL, NULL, NULL),
(12, 'Gayashan Alwis', 'Ginthota', 'male', '920915210v', '0716279549', 'saab', NULL, NULL, NULL),
(13, 'Mawan Senanayaka', 'Hikkaduwa', 'male', '920915210v', '0716279549', 'saab', NULL, NULL, NULL),
(14, 'Malan jagath', 'Ambalangoda', 'male', '920915210v', '0716279549', 'saab', NULL, NULL, NULL),
(15, 'Saman Kumara', 'Akuressa', 'male', '920915210v', '0716279549', 'saab', 'a@gmail.com', NULL, NULL),
(16, 'Nadun Samarasinha', 'Imaduwa', 'male', '920915210v', '0716279549', 'saab', 'a@gmail.com', NULL, NULL),
(17, 'MSamantha Gunawardna', 'Pilana', 'male', '920915211v', '0716279549', 'opel', 'a@gmail.com', NULL, NULL),
(18, 'Kasun gayanga', 'Opatha', 'male', '920460348v', '0716362464', 'saab', 'mucreationz@gmail.com', NULL, NULL),
(19, 'Kasun Gunathilaka', 'Udugama', '', '', '', '', '', NULL, NULL),
(20, 'Kasun Sandeep', 'Wanchawala', 'male', '920460258V', '0716362464', 'volvo', 'mj@gmail.com', NULL, NULL),
(21, 'Naween Disanayaka', 'Bogahagoda', 'male', '920560458V', '0715263654', 'opel', 'muy@gmail.com', NULL, NULL),
(22, 'Mewan Jayasinha', 'Imaduwa', 'male', '920460345V', '0913920254', 'saab', 'mk@gmail.com', NULL, NULL),
(23, 'Dinelka Randunu', 'Imaduwa', 'male', '920460345V', '0913920254', 'Site Manager', 'mk@gmail.com', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itemregistration`
--
ALTER TABLE `itemregistration`
  ADD CONSTRAINT `FK_Supp_ID` FOREIGN KEY (`FK_Supp_ID`) REFERENCES `registersupplier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `requestform`
--
ALTER TABLE `requestform`
  ADD CONSTRAINT `FK_Location` FOREIGN KEY (`FK_Location`) REFERENCES `siteregistration` (`SiteID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ManagerName` FOREIGN KEY (`FK_ManagerName`) REFERENCES `staffregistraion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
