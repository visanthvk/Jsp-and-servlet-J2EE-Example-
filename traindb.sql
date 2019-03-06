-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 01, 2019 at 02:49 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpassword`
--

DROP TABLE IF EXISTS `adminpassword`;
CREATE TABLE IF NOT EXISTS `adminpassword` (
  `uid` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminpassword`
--

INSERT INTO `adminpassword` (`uid`, `password`) VALUES
('admin1', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `traindetail`
--

DROP TABLE IF EXISTS `traindetail`;
CREATE TABLE IF NOT EXISTS `traindetail` (
  `trainid` varchar(10) DEFAULT NULL,
  `trainname` varchar(10) DEFAULT NULL,
  `traintype` varchar(10) DEFAULT NULL,
  `from_` varchar(20) DEFAULT NULL,
  `to_` varchar(10) DEFAULT NULL,
  `arrivaltime` varchar(10) DEFAULT NULL,
  `departuretime` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traindetail`
--

INSERT INTO `traindetail` (`trainid`, `trainname`, `traintype`, `from_`, `to_`, `arrivaltime`, `departuretime`) VALUES
('ISN222', 'Pandian', 'Express', 'Mumbai', 'Chennai', '10:30 AM', '1:00 PM'),
('ISN223', 'Pearl ', 'SuperFast', 'Chennai', 'Mumbai', '10:30 pm', '10:29 pm');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
