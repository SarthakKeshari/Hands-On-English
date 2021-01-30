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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `feed` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feed_id`, `user_id`, `name`, `feed`) VALUES
(1, 1114, 'Gazal', 'I must say that this site lived up to my expectations. The videos, dictionary,  thesaurus and the events were  efficient, collaborative, and convenient that helped me to deepen what I was learning.'),
(2, 1111, 'Sarthak', 'I really enjoyed the online course. I thought it was well planned and layed out, easy for me to follow. The dictionary and thesaurus was just enough, so i could finish everything with enough time, learn about the topics and not feel over loaded and rushed.'),
(3, 1117, 'Satwik', 'The site is awesome! The instructors spoke very clear and was very knowledgeable and patient so that each child could understand. Nice curriculum and events to enhance performance!'),
(4, 1112, 'Aditya', 'It\'s easy to sum up—Excellent!'),
(5, 1114, 'Gazal', 'I just wanted let you know that the service provided, from registration to learning English was a very positive experience for me. I intend on focusing more on English through the same website in future.'),
(6, 1111, 'Sarthak', 'This was a wonderful site covering maximum aspects of English required in our daily life. In addition to giving the instructor kudos, I\'d like to call out what a nice facility it was!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
