-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2019 at 09:59 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rcal`
--
DROP DATABASE IF EXISTS `rcal`;
CREATE DATABASE IF NOT EXISTS `rcal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rcal`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(5) NOT NULL,
  `activity_name` varchar(20) NOT NULL,
  `blog_id` int(5) DEFAULT NULL,
  `rating` int(1) DEFAULT NULL,
  `description` text NOT NULL,
  `category` varchar(20) NOT NULL,
  `difficulty` int(1) DEFAULT NULL,
  `activity_type` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL DEFAULT 'not active',
  `link` text DEFAULT NULL,
  `pic_link` text DEFAULT NULL,
  `PDF_upload` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `activity_name`, `blog_id`, `rating`, `description`, `category`, `difficulty`, `activity_type`, `state`, `link`, `pic_link`, `PDF_upload`) VALUES
(1, 'Puzzle game', 1, 3, 'The puzzle game is intended to teach young children how a Python coding language turtle works. it does this by using a variety of different types of puzzles as well as repetition and association based memory exercises.', 'Technology', 1, 'Puzzle game', 'active', 'puzzleactivity.php', 'pic/puzz.jpg', NULL),
(2, 'Fishing game', 2, 2, 'This activity is designed to teach the participants of this activity how to identify and use “loops” using the activity itself as an example of this function.', 'Science', 1, 'Fishing game', 'active', 'fishactivity.php', 'pic/pic2.jpg', NULL),
(3, 'City Hunt game', 3, 5, 'This activity is designed to teach young children to learn map reading skills, team co-operation, encryption and decryption..', 'City Hunt game', 1, 'Technology', 'active', 'cityactivity.php', 'pic/city.jpg', NULL),
(4, 'Pictures Game', 4, 4, 'This activity is designed to teach young children to learn how to debug by identifying erroneous code by seeing it as out of place. This is taught by using association and done by using spot the differences and spot the strange points.', 'Math', 2, 'Puzzle game', 'active', 'picactivity.php', 'pic/pict.png', NULL),
(5, 'Programmer Says', 5, 2, 'This activity is designed to teach the participants to learn the \"If...Then...\" which is the basic statement of coding.', 'Science', 3, 'Simple game', 'active', 'ifthenact.php', 'pic/ifthen.png', NULL),
(6, 'The Logic Maze', 6, 3, 'This exercise uses association,repetition and familiarisation to teach the how to identify and navigate logic gates(except for the “or” type logic gate) in addition to reinforcing teamwork practices.', 'Technology', 2, 'Puzzle game', 'active', 'mazeact.php', 'pic/logicmz.jpg', NULL),
(13, 'test', 0, 0, '', 'test', 0, 'test', 'not active', NULL, 'pic/no-image-icon.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `user_id` varchar(128) NOT NULL,
  `activity_id` varchar(128) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL,
  `report_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `user_id`, `activity_id`, `date`, `message`, `report_count`) VALUES
(6, '1', '2', '2019-09-25 20:27:25', 'test', 0),
(7, '1', '2', '2019-10-08 16:32:44', 'i hate this', 5),
(8, '1', '2', '2019-10-08 16:36:44', 'asd', 1),
(9, '1', '2', '2019-10-15 16:21:33', 'It is a good activity', 0),
(10, '1', '1', '2019-10-15 16:56:56', 'Good game', 0),
(11, '1', '1', '2019-10-15 17:10:22', 'Good game', 0),
(12, '4', '3', '2019-10-22 16:47:40', 'asd', 1),
(14, '1', '1', '2019-10-23 16:43:27', 'Mike test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `user_id` int(5) NOT NULL,
  `email` varchar(50) DEFAULT 'Please update email below for security',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`user_id`, `email`, `username`, `password`, `user_type`) VALUES
(1, 'abc@abc.com', 'admin', 'admin', 'admin'),
(2, 'bbb@bbb.com', 'user', 'bbb', 'user'),
(4, 'test@test.com', 'test', 'test', 'user'),
(5, 'test2@test2.com', 'testtest', 'test', 'user'),
(6, 'James@jaMEs.com', 'James', 'James', 'user'),
(10, 'Please update email below for security	', 'saas', 'saas', 'user'),
(11, 'Please update email below for security	', 'saas', 'saas', 'user'),
(12, 'Please update email below for security	', 'a', 'as', 'user'),
(13, 'Please update email below for security	', 'a', 'a', 'user'),
(14, 'Please update email below for security', 'anh', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
