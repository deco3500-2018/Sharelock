-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2018 at 03:16 AM
-- Server version: 5.6.36-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(250) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `Country` varchar(100) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`CustomerID`, `CustomerName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Maria Anders', 'CNC Cutting', '5 Star', 'Available', '0447382093'),
(2, 'Ana Trujillo', '3D Printing', '3 Star', 'Available', '0443329473'),
(3, 'Antonio Moreno', '3D Printing', '4 Star', 'Unavailable', '0401836503'),
(4, 'Thomas Hardy', 'Laser Cutting', '4 Star', 'Available', '0453823723'),
(5, 'Paula Parente', 'Wood Working', '5 Star', 'Available', '0448282857'),
(6, 'Wolski Zbyszek', 'CNC Cutting', '4 Star', 'Unavailable', '0404692093'),
(7, 'Matti Karttunen', 'Sewing', '5 Star', 'Available', '0444628492'),
(8, 'Karl Jablonski', 'Laser Cutting', '4 Star', 'Available', '0424249248'),
(9, 'Paula Parente', 'Laser Cutting', '4 Star', 'Unavailable', '0437329475'),
(10, 'Pirkko Koskitalo', 'Sewing', '5 Star', 'Unavailable', '0449550925');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
