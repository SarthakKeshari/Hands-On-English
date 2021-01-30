-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2021 at 05:58 PM
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
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `word` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`word`) VALUES
(' chair'),
('almirah'),
('animals'),
('bat'),
('batteries'),
('bed '),
('bottle'),
('bucket'),
('candles'),
('charger'),
('curtains'),
('desk'),
('door'),
('Dress'),
('dresser'),
('fish'),
('flashlight'),
('frame'),
('fruit'),
('furniture'),
('headphones'),
('ice'),
('igloo'),
('Industry'),
('lamp'),
('laptop'),
('light'),
('mask'),
('mat'),
('matches'),
('mattress'),
('medal'),
('medicine'),
('mobile'),
('mug'),
('page'),
('pillows'),
('rds'),
('refrigerator'),
('remote'),
('ring'),
('scenary'),
('sheet'),
('shelf'),
('shirt'),
('shoes'),
('sipper'),
('table'),
('target'),
('umbrella'),
('zoo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD UNIQUE KEY `word` (`word`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
