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
-- Table structure for table `engvideos`
--

CREATE TABLE `engvideos` (
  `vid_id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `length` time NOT NULL,
  `instructor` varchar(50) NOT NULL,
  `views` int(5) NOT NULL,
  `rating` double NOT NULL,
  `video` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engvideos`
--

INSERT INTO `engvideos` (`vid_id`, `name`, `description`, `length`, `instructor`, `views`, `rating`, `video`) VALUES
(1001, 'NOUNS', 'A noun is a word that names something: either a person, place, or thing.', '00:01:17', 'Aditi', 432, 4.5, 'eng_videos/nouns.mp4'),
(1002, 'MODALS', 'Modals give additional information about the function of the main verb that follows it.', '00:01:42', 'Satwik', 802, 3.5, 'eng_videos/modals.mp4'),
(1003, 'ADVERBS', 'An adverb is a word or an expression that modifies a verb, adjective, determiner, clause, preposition, or sentence. Adverbs typically express manner, place, time, frequency, degree, level of certainty, etc., answering questions such as how?, in what ', '00:01:07', 'Vaibhav', 301, 5, 'eng_videos/adverb.mp4'),
(1004, 'HELPING VERBS', 'Helping verbs are verbs that help the main verb in a sentence by extending its meaning. They can also add detail to how time is conveyed in a sentence.', '00:02:25', 'Aditi', 965, 4, 'eng_videos/helping_verbs.mp4'),
(1005, 'IMPERATIVES', 'The sentence which is used to convey a command, a request, or a forbiddance is called an imperative sentence.', '00:01:08', 'Vaibhav', 298, 4.5, 'eng_videos/imperatives.mp4'),
(1006, 'ADJECTIVES', 'an adjective (abbreviated adj) is a word that modifies a noun or noun phrase or describes its referent.', '00:01:16', 'Vaibhav', 983, 4, 'eng_videos/adjective.mp4'),
(1007, 'PUNCTUATIONS', 'Punctuation is used to create sense, clarity and stress in sentences. You use punctuation marks to structure and organise your writing. ', '00:01:18', 'Satwik', 437, 4.5, 'eng_videos/punctuation.mp4'),
(1008, 'INTERROGATIVE WORDS', 'An interrogative word or question word is a function word used to ask a question, such as what, which, when, where, who, whom, whose, why, whether and how.', '00:01:50', 'Aditi', 708, 4, 'eng_videos/interrogative_words.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `engvideos`
--
ALTER TABLE `engvideos`
  ADD PRIMARY KEY (`vid_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
