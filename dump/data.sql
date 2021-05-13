-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2012 at 12:54 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `connection`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_connect`
--

CREATE TABLE IF NOT EXISTS `tbl_connect` (
	  `tbl_id` int(3) NOT NULL AUTO_INCREMENT,
	  `tbl_name` varchar(50) NOT NULL,
	  `tbl_email` varchar(50) NOT NULL,
	  `tbl_address` varchar(50) NOT NULL,
	  `date` varchar(50) NOT NULL,
	  `image` varchar(150) NOT NULL,
	  `sex` varchar(50) NOT NULL,
	  PRIMARY KEY (`tbl_id`)
	) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

	--
-- Dumping data for table `tbl_connect`
--

INSERT INTO `tbl_connect` (`tbl_id`, `tbl_name`, `tbl_email`, `tbl_address`, `date`, `image`, `sex`) VALUES
(47, 'manish', '2007arya@gmail.com', 'pune', '03/30/2012', '1332334083.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
	  `tbl_id` int(3) NOT NULL AUTO_INCREMENT,
	  `tbl_username` varchar(50) NOT NULL,
	  `tbl_password` varchar(50) NOT NULL,
	  PRIMARY KEY (`tbl_id`)
	) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

	--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`tbl_id`, `tbl_username`, `tbl_password`) VALUES
(1, 'manish', 'manish'),
(2, 'admin', 'admin123');

