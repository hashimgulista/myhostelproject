-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 06:47 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logindetails`
--

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
CREATE TABLE `logins` (
  `s.no.` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`s.no.`, `username`, `password`) VALUES
(1, 'lucky', 'sam'),
(2, 'gulista', 'gulista'),
(11, 'game', 'guljil'),
(12, 'game', 'game'),
(13, 'game', 'game'),
(14, 'gulista', '1234'),
(15, 'gulista', 'game'),
(16, 'gulista', '7863'),
(17, 'priyanka', '5678');

-- --------------------------------------------------------

--
-- Table structure for table `mess_feed`
--

DROP TABLE IF EXISTS `mess_feed`;
CREATE TABLE `mess_feed` (
  `S.no.` int(255) NOT NULL,
  `Hygiene` varchar(255) NOT NULL,
  `Food_Quality` varchar(255) NOT NULL,
  `Speed_of_Preperation` varchar(255) NOT NULL,
  `Employee_Attitude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mess_feed`
--

INSERT INTO `mess_feed` (`S.no.`, `Hygiene`, `Food_Quality`, `Speed_of_Preperation`, `Employee_Attitude`) VALUES
(1, 'good', 'good', 'good', 'good'),
(2, 'ss', 'ss', 'ssss', 'ss'),
(3, 'POOR', 'POOR', 'POOR', 'WORST'),
(4, '', '', '', ''),
(5, 'very bad', 'normal', 'good', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `room_comp`
--

DROP TABLE IF EXISTS `room_comp`;
CREATE TABLE `room_comp` (
  `s.no` int(255) NOT NULL,
  `Issue_type` varchar(255) NOT NULL,
  `Description_c` varchar(255) NOT NULL,
  `Time_From` time NOT NULL,
  `Time_To` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_comp`
--

INSERT INTO `room_comp` (`s.no`, `Issue_type`, `Description_c`, `Time_From`, `Time_To`) VALUES
(1, '', '', '00:00:00', '00:00:00'),
(2, '', '', '00:00:00', '00:00:00'),
(3, '', '1', '00:00:01', '00:00:01'),
(4, '\'A.C Service\',\'Carpentery\',\'Electrical\',\'Room cleaning\',\'Plumbing\',\'others\'', '1', '00:00:01', '00:00:01'),
(5, '\'A.C Service\',\'Carpentery\',\'Electrical\',\'Room cleaning\',\'Plumbing\',\'others\'', '1', '00:00:01', '00:00:01'),
(6, '\'A.C Service\',\'Carpentery\',\'Electrical\',\'Room cleaning\',\'Plumbing\',\'others\'', '1', '00:00:01', '00:00:01'),
(7, '\'A.C Service\',\'Carpentery\',\'Electrical\',\'Room cleaning\',\'Plumbing\',\'others\'', '', '00:00:01', '00:00:01'),
(8, '\'A.C Service\',\'Carpentery\',\'Electrical\',\'Room cleaning\',\'Plumbing\',\'others\'', '', '00:00:01', '00:00:01'),
(9, 'Carpentery', 'not working', '07:07:00', '20:08:00'),
(10, 'A.C Service', 'not working', '23:07:00', '21:06:00'),
(11, 'A.C Service', 'not working', '00:00:00', '21:06:00'),
(12, 'A.C Service', 'not working', '00:00:00', '13:00:00'),
(13, 'A.C Service', 'not working', '14:09:00', '13:00:00'),
(14, 'Carpentery', 'URGENT', '14:00:00', '15:00:00'),
(15, '', '', '00:00:00', '00:00:00'),
(16, 'Carpentery', 'not working', '20:00:00', '21:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`s.no.`);

--
-- Indexes for table `mess_feed`
--
ALTER TABLE `mess_feed`
  ADD PRIMARY KEY (`S.no.`);

--
-- Indexes for table `room_comp`
--
ALTER TABLE `room_comp`
  ADD PRIMARY KEY (`s.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `s.no.` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mess_feed`
--
ALTER TABLE `mess_feed`
  MODIFY `S.no.` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `room_comp`
--
ALTER TABLE `room_comp`
  MODIFY `s.no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
