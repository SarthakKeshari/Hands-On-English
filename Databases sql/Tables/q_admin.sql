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
-- Table structure for table `q_admin`
--

CREATE TABLE `q_admin` (
  `id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `opta` varchar(200) NOT NULL,
  `optb` varchar(200) NOT NULL,
  `optc` varchar(200) NOT NULL,
  `optd` varchar(200) NOT NULL,
  `answer` varchar(20) NOT NULL,
  `type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `q_admin`
--

INSERT INTO `q_admin` (`id`, `question`, `opta`, `optb`, `optc`, `optd`, `answer`, `type`) VALUES
(1, 'Sit up straight _____\r\n', ':', ',', ';', '\'', 'Option A', 1),
(2, 'Sit up straight _____\r\n', ':', ',', ';', '\'', 'Option A', 1),
(3, 'What is your name?', 'Sarthak', 'Mayank', 'Naman', 'Dhruv', 'Option B', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `q_admin`
--
ALTER TABLE `q_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `q_admin`
--
ALTER TABLE `q_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
