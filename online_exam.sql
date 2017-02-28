-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2017 at 09:57 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `ques_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `option_id` varchar(2) NOT NULL,
  `answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`ques_id`, `quiz_id`, `option_id`, `answer`) VALUES
(36, 24, 'A', 'Holeo'),
(36, 24, 'B', 'Pelep'),
(36, 24, 'C', 'Keleo'),
(36, 24, 'D', 'Peleo'),
(37, 24, 'A', 'Hheolo'),
(37, 24, 'B', 'ehehe'),
(37, 24, 'C', 'eheh'),
(37, 24, 'D', 'eheh');

-- --------------------------------------------------------

--
-- Table structure for table `create_quiz`
--

CREATE TABLE `create_quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_name` varchar(30) NOT NULL,
  `total_ques` int(11) NOT NULL,
  `display_ques` int(11) NOT NULL,
  `time_allocated` int(11) NOT NULL,
  `for_right` int(11) NOT NULL,
  `for_wrong` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_by` varchar(200) NOT NULL,
  `instruction` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `create_quiz`
--

INSERT INTO `create_quiz` (`quiz_id`, `quiz_name`, `total_ques`, `display_ques`, `time_allocated`, `for_right`, `for_wrong`, `status`, `created_by`, `instruction`) VALUES
(24, 'Hello', 2, 2, 120, 1, 1, 1, '', ''),
(25, 'hhe', 0, 1, 111, 1, 1111, 0, 'hehe', 'ehehehe');

-- --------------------------------------------------------

--
-- Table structure for table `ques`
--

CREATE TABLE `ques` (
  `ques_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `ques` varchar(3000) NOT NULL,
  `correct_option` varchar(2) NOT NULL,
  `file_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques`
--

INSERT INTO `ques` (`ques_id`, `quiz_id`, `ques`, `correct_option`, `file_name`) VALUES
(36, 24, 'What is lew?', 'C', 'Screenshot (679).png'),
(37, 24, 'What is Kelo?', 'A', 'Screenshot (679).png');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_data`
--

CREATE TABLE `quiz_data` (
  `trix_id` varchar(30) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `marks` float NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attempt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_data`
--

INSERT INTO `quiz_data` (`trix_id`, `quiz_id`, `marks`, `start_time`, `end_time`, `attempt`) VALUES
('U123', 24, 0, '2017-02-23 20:52:49', '2017-02-23 20:52:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `team_data`
--

CREATE TABLE `team_data` (
  `team_id` int(11) NOT NULL,
  `trix_id` varchar(30) NOT NULL,
  `team_name` varchar(20) NOT NULL,
  `name_1` varchar(30) NOT NULL,
  `name_2` varchar(30) NOT NULL,
  `name_3` varchar(30) NOT NULL,
  `name_4` varchar(30) NOT NULL,
  `name_5` varchar(30) NOT NULL,
  `email` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_data`
--

INSERT INTO `team_data` (`team_id`, `trix_id`, `team_name`, `name_1`, `name_2`, `name_3`, `name_4`, `name_5`, `email`, `phone`, `password`) VALUES
(9, 'U123', 'Team_name', 'Arijit', '', '', '', '', 'meet.ripon@gmai', '9674507568', 'tHH84j6IaM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_quiz`
--
ALTER TABLE `create_quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `ques`
--
ALTER TABLE `ques`
  ADD PRIMARY KEY (`ques_id`);

--
-- Indexes for table `team_data`
--
ALTER TABLE `team_data`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `create_quiz`
--
ALTER TABLE `create_quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ques`
--
ALTER TABLE `ques`
  MODIFY `ques_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `team_data`
--
ALTER TABLE `team_data`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
