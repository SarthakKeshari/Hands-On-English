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
-- Table structure for table `q_bank`
--

CREATE TABLE `q_bank` (
  `id` int(11) NOT NULL,
  `question` varchar(250) DEFAULT NULL,
  `opta` varchar(200) DEFAULT NULL,
  `optb` varchar(200) DEFAULT NULL,
  `optc` varchar(200) DEFAULT NULL,
  `optd` varchar(200) DEFAULT NULL,
  `answer` varchar(20) DEFAULT NULL,
  `type` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `q_bank`
--

INSERT INTO `q_bank` (`id`, `question`, `opta`, `optb`, `optc`, `optd`, `answer`, `type`) VALUES
(1, 'All of the people at the school, including the teachers and _______________ were glad when summer break came.', 'a. students:', 'b. students,', 'c. students;', 'd. students', 'B', 1),
(2, 'Sit up straight _____', 'a. ;', 'b. ?', 'c. .', 'd. :', 'C', 1),
(3, 'Choose the sentence below with the correct punctuation.', 'a. Ted and Janice, who had been friends for years, went on vacation together every summer.', 'b. Ted and Janice, who had been friends for years, went on vacation together, every summer.', 'c. Ted, and Janice who had been friends for years, went on vacation together every summer.', 'd. Ted and Janice who had been friends for years went on vacation together every summer.', 'A', 1),
(4, ' To _______________, Anne was on time for her math class.', 'a. everybody’s surprise', 'b. every body’s surprise', 'c. everybodys surprise', 'd. everybodys’ surprise', 'A', 1),
(5, 'In Edgar Allen Poe’s _______________________ Edgar Allen Poe describes a man with a guilty conscience.', 'a. short story, “The Tell-Tale Heart,”', 'b. short story The Tell-Tale Heart,', 'c. short story, The Tell-Tale Heart', 'd. short story. “the Tell-Tale Heart,”', 'A', 1),
(6, 'Billboards are considered an important part of advertising for big business, ________________ by their critics.', 'a. but, an eyesore;', 'b. but, “ an eyesore,”', 'c. but an eyesore', 'd. but-an eyesore', 'C', 1),
(7, 'I can never remember how to use those two common words, “sell,” meaning to trade a product for money, or _____________________ meaning an event where products are traded for less money than usual.', 'a. sale.', 'b. “sale,”', 'c. “sale', 'd. “to sale,”', 'B', 1),
(8, 'The class just finished reading ________________________ a short story by Carl Stephenson about a plantation owner’s battle with army ants.', 'a. -”Leinengen versus the Ants”,', 'b. Leinengen versus the Ants,', 'c. “Leinengen versus the Ants,”', 'd. Leinengen versus the Ants', 'C', 1),
(9, 'Which of the following sentences is correctly punctuated?', 'Many students prefer online classes to on-campus classes; however, on-campus classes do have the advantages of providing human contact and immediate feedback.', 'The study of writing can be quite rewarding; especially to those who actually write.', 'If good students study two hours for every hour they spend in class; they can expect to do well.', 'The professor was only a few minutes late; but the students had already left the classroom.', 'D', 1),
(10, ' For each of the following, choose the correct sentence.', 'I am asking if you would like to rollerblade together tomorrow?', 'I am asking “if you would like to rollerblade together tomorrow”?', 'I am asking if you would like to rollerblade together tomorrow.', 'I am asking “if you would like to rollerblade together tomorrow.”', 'C', 1),
(11, 'The swimming pool ---- at 9 o\'clock and ---- at 18.30 every day.', 'A) is opening / is closing', 'B) opens / closes', 'C) has opened / has closed', 'D) opened / closed', 'B', 2),
(12, 'The Olympic Games ---- place every four years.', 'A) have taken', 'B) are taking', 'C) take', 'D) took', 'C', 2),
(13, 'Look! That man ---- to open the door of your car.', 'A) tries', 'B) has been trying', 'C) tried', 'D) is trying', 'D', 2),
(14, 'Look at the river. It ---- very fast today – much faster than usual.', 'A) flows', 'B) has been flowing', 'C) is flowing', 'D) flowed', 'C', 2),
(15, 'We usually ---- vegetables in our garden but this year we ---- any.', 'A) are growing / don\'t grow', 'B) grew / haven\'t grown', 'C) grow / aren\'t growing', 'D) grow / don\'t grow', 'C', 2),
(16, 'Usually I ---- parties but I ---- this one very much.', 'A) enjoy / am not enjoying', 'B) am enjoying / haven\'t enjoyed', 'C) enjoy / don\'t enjoy', 'D) enjoyed / haven\'t enjoyed', 'A', 2),
(17, 'It ---- quite often in Britain during the winter.', 'A) is snowing', 'B) snows', 'C) has been snowing', 'D) has snowed', 'B', 2),
(18, '  Normally I ---- to bed at around 11.30 every night.', 'A) am going', 'B) have been going', 'C) go', 'D) have gone', 'C', 2),
(19, 'There is something wrong with Lynne\'s car at the moment so she ---- to work by bus this week.', 'A) has been going', 'B) goes', 'C) went', 'D) is going', 'D', 2),
(20, 'The River Thames ---- through London.', 'A) is flowing', 'B) has been flowing', 'C) flows', 'D) has flowed', 'C', 2),
(21, 'Kiran asked me, \"Did you see the Cricket match on television last night?\"', 'Kiran asked me whether I saw the Cricket match on television the earlier night.', 'Kiran asked me whether I had seen the Cricket match on television the earlier night.', 'Kiran asked me did I see the Cricket match on television the last night.', 'Kiran asked me whether I had seen the Cricket match on television the last night.', 'B', 3),
(22, 'David said to Anna, \"Mona will leave for her native place tomorrow.\"', 'David told Anna that Mona will leave for her native place tomorrow.   ', 'David told Anna that Mona left for her native place the next day.   ', 'David told Anna that Mona would be leaving for her native place tomorrow.   ', 'David told Anna that Mona would leave for her native place the next day. ', 'D CORRECT', 3),
(23, 'I said to him, \"Why are you working so hard?\"', 'I asked him why he was working so hard.   ', 'I asked him why was he working so hard.', 'I asked him why had he been working so hard.', 'I asked him why he had been working so hard. ', 'A CORRECT', 3),
(24, 'He said to her, \"What a cold day!\"', 'He told her that it was a cold day.', 'He exclaimed that it was a cold day.', 'He exclaimed sorrowfully that it was a cold day.', 'He exclaimed that it was a very cold day.', 'D CORRECT', 3),
(25, 'The tailor said to him, \"Will you have the suit ready by tomorrow evening?\"', 'The tailor asked him that he will have the suit ready by the next evening.', 'The tailor asked him that he would had the suit ready by the next evening.', 'The tailor asked him if he would have the suit ready by the next evening.', 'The tailor asked him if he will like to the suit ready by the next evening.', 'C CORRECT', 3),
(26, 'He said to interviewer, \"Could you please repeat the question?\"', 'He requested the interviewer if he could please repeat the question.', 'He requested the interviewer to please repeat the question.', 'He requested the interviewer to repeat the question.', 'He requested the interviewer if he could repeat the question.', 'C CORRECT', 3),
(27, 'He said. \"Be quite and listen to my words.', 'He urged them to be quite and listen to his words.', 'He urged them and said be quite and listen to his words.', 'He urged they should be quite and listen to his words.', 'He said you should be quite and listen to his words.', 'A CORRECT', 3),
(28, 'He said to me, I have often told you not to play with fire.', 'He said that he has often been telling me not to play with fire.', 'He told me that he had often told me not to play with fire.', 'He reminded me that he often said to me not to play with fire.', 'He said to me that he often told me not to play with fire.', 'B CORRECT', 3),
(29, 'The Captain said to his men, \"Stand at ease.\"', 'The Captain urged his men to stand at ease.', 'The Captain wanted his men to stand at ease.', 'The Captain told his men that they should stand at ease.', 'The Captain commanded his men to stand at ease.', 'D CORRECT', 3),
(30, 'Pawan said to me, \"If I hear any news, I\'ll phone you.\"', 'Pawan told me that if he heard any news, he will phone me.', 'Pawan told me that if he will hear my news, he will phone me.', 'Pawan told me that if he had heard any news, he would phone me.', 'Pawan told me that if he heard any news, he would phone me.', 'D CORRECT', 3),
(31, 'Before this year, I _____ move out of my parents’ house because I did not have a job.', 'a. may not', 'b. cannot', 'c. should not', 'd. could not', 'd', 4),
(32, 'But now that I have finished college and have a job, I realize that living at home _____ drive my parents and me crazy. (potentially)', 'a. could', 'b. would', 'c. should', 'd. would have', 'Answer: a', 4),
(33, 'Unfortunately, it\'s not so easy to find to find an apartment in the city. Without an agent, you _____ not be able to find all the available listings.', 'a. ought to', 'b. must', 'c. should', 'd. might', 'Answer: d', 4),
(34, 'Before now, I coudn’t sign a lease, but now I _____  because I am twenty-one.', 'a. able', 'b. can', 'c. can able', 'd. can do', 'Answer: b', 4),
(35, 'I asked my friends to help me move because I knew that I _____ fit all my possessions into my little car.', 'a. can\'t be able to', 'b. not able to', 'c. don\'t be able to', 'd. couldn\'t', 'Answer: d', 4),
(36, 'My best friend said, \"I _____ help you move next week.\"', 'a. able to', 'b. would be able to', 'c. will be able to', 'c. be able to', 'Answer: c', 4),
(37, 'He added, \"I _____ help earlier in the morning than later in the afternoon.\" (preference)', 'a. would better', 'b. would like', 'c. would have', 'd. would rather', 'Answer: d', 4),
(38, 'My parents are happy for me, but warned, \"You _____ spend all your money each month. Save a little extra money for unexpected emergencies.\"', 'a. mustn\'t', 'b. don\'t have to', 'c. must not have', 'd. aren\'t able to', 'Answer: a', 4),
(39, 'Another friend told me that he _________ me move, but he never showed up.', 'a. would help', 'b. would have helped', 'c. will help', 'd. would helped', 'Answer: a', 4),
(40, 'With the help of three friends, I ___ get all my possessions into the new condo. (managed to).', 'a. can', 'b. could', 'c. am able to', 'd. was able to', 'Answer: d', 4),
(41, 'Which of these is an example of adversative co-ordinating conjunction?', 'a) He didn’t raise his hand and he didn’t raise his voice.', 'b) She was pretty, but she was dumb.', 'c) Hurry up, else you will lose.', 'd) You must have not studied hard, for the paper was easy.', 'Answer B', 5),
(42, 'Which of these is not an example of subordinating conjunction related to cause?', 'a) Because', 'b) Since', 'c) As', 'd) Unless', 'Answer D', 5),
(43, '   A sentence may be joined by two clauses.', 'a) True', 'b) False', NULL, NULL, 'Answer A', 5),
(44, '  Which of these words is not used to join the dependent clause with the main clause?', 'a) Who', 'b) When', 'c) For', 'd) But', 'Answer D', 5),
(45, 'Which of these words are not used by independent clauses?', 'a) Nor', 'b) Still', 'c) And', 'd) For', 'Answer D', 5),
(46, '  A dependent clause may refer to a noun or pronoun in the main clause.', 'a) True', 'b) False', NULL, NULL, 'Answer A', 5),
(47, '  In relative clauses, which of these is used to refer to things?', 'a) Who', 'b) Which', 'c) That', 'd) Whom', 'Answer B', 5),
(48, 'Choose the correct statement :', 'a) Although he was hurt, but he continued to walk.', 'b) Although he was hurt, he continued to walk.', 'c) He was hurt, he continued to walk.', 'd) Although he continued to walk, he was hurt.', 'Answer B', 5),
(49, 'Choose the correct statement:', 'a) There were between 8 to 10 policemen present.', 'b) There were between 8 and 10 policemen present.', 'c) There were among 8 to 10 policemen present.', 'd) There were atleast 8 and 10 policemen present.', 'Answer B', 5),
(50, 'The man was badly injured, _____ he was alive.', 'a) however', 'b) but', 'c) though', 'd) hence', 'Answer B', 5),
(51, '... people think that the world is getting worse.', '1.    Lot of', '2.    Most of', '3.    Many', '4.    Any', 'Answer C', 6),
(52, '... your mates like Chinese cousin, don\'t they?', '1.    Some', '2.    Some of', '3.    Several', '4.    few', 'Answer B', 6),
(53, 'We\'ve been living here for ... years.', '1.    many', '2.    a lot of', '3.    much', '4.    alot', 'Answer A', 6),
(54, 'Have you watched ... these films?', '1.    any of', '2.    some of', '3.    any', '4.    many', 'Answer A', 6),
(55, 'I had ... friends in Cracow so I moved to Warsaw.', '1.    none', '2.    a few', '3.    few', '4.    several', 'Answer C', 6),
(56, 'Did it cost ... to buy such a nice car?', '1.    many', '2.    much', '3.    a lot of', '4.    afew', 'Answer B', 6),
(57, 'Slow down, we have ... time.', '1.    a few', '2.    plenty of', '3.    lot of', '4.    many', 'Answer B', 6),
(58, 'The accident was terrible. He had ... luck that he survived.', '1.    many', '2.    much', '3.    a lot of', '4.    much', 'Answer C', 6),
(59, 'I met Kate yesterday. Fortunately, we had ... time to talk to.', '1.    few', '2.    a little', '3.    little', '4.    a few', 'Answer B', 6),
(60, '... people enjoyed the party, but ... were disappointed.', '1.    Few ... many', '2.    Some ... the other', '3.    A few ... most', '4.    Little….much', 'Answer C', 6),
(61, 'Nowadays, it......that the Vikings .... the Americas about 500 years before Columbus\' arrival there in 1492.', 'a) has believed / were reached', 'b) is believed / had reached', 'c) believed / have been reaching', 'd) has been believed / reached', 'Answer D', 7),
(62, 'Sujata Ashtekar and Vatsala Trivedi are two women ………… a mission', 'a)on', 'b)in', 'c)with', 'd)at', 'Answer D', 7),
(63, ' Ashtekar and Trivedi are volunteers …………. the Zonal Transplant Coordination Committee', 'a)at', 'b)with', 'c)in', 'd)along', 'Answer C', 7),
(64, '‘(be) to Australia, Ginny?’ ‘Yes, two years ago.” ', 'a) Did you ever go', 'b) Do you ever go', 'c) Have you ever been', 'd) Are you ever going', 'Answer C', 7),
(65, 'Tokyo is the (big) city I’ve ever lived in.', 'a) the most big', 'b) the bigger', 'c) the biggest', 'd) the more big', 'Answer C', 7),
(66, 'A vegetarian is someone ______ doesn’t eat meat.', 'a) who', 'b) what', 'c) which', 'd) whose', 'Answer A', 7),
(67, 'I /these days/a newspaper/never buy .', 'a) I never a newspaper buy these days.', 'b) I never buy a newspaper these days.', 'c) I buy never a newspaper these days.', 'd) these days never I buy a newspaper', 'Answer B', 7),
(68, ' I (go) watch TV tonight.', 'a) am', 'b) go to', 'c) going to', 'd) am going to', 'Answer D', 7),
(69, 'I wish I (have) more money!', 'a) have', 'b) had', 'c) would have', 'd) was having', 'Answer B', 7),
(70, '(will) famous one day?', 'a) Would you like', 'b) Would you like to', 'c) Do you like', 'd) Do you like to', 'Answer B', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `q_bank`
--
ALTER TABLE `q_bank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `q_bank`
--
ALTER TABLE `q_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
