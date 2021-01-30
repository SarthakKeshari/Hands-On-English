-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2021 at 05:57 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `english`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `event_date` varchar(10) NOT NULL,
  `deadline` varchar(10) NOT NULL,
  `age_group` varchar(20) NOT NULL,
  `event_duration` varchar(20) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `name`, `event_date`, `deadline`, `age_group`, `event_duration`, `image`) VALUES
(5001, 'Improve Vocab', '2020-11-20', '2020-11-02', '15 - 20 years', '24 hours', 'img/event_1.jpeg'),
(5002, 'POS', '2020-12-06', '2020-11-10', '10 - 16 years', '3 hours', 'img/event_2.jpeg'),
(5003, 'Punctuation Test', '2021-01-21', '2020-12-15', '20 - 24 years', '6 hours', 'img/event_3.jpeg'),
(5004, 'Cheat Sheets', '2021-02-24', '2021-01-10', '6 - 8 years', '2 hours', 'img/event_4.jpeg'),
(5005, 'Vocab Twister', '2021-02-01', '2020-12-25', '20 - 30 years', '1 week', 'img/event_5.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
