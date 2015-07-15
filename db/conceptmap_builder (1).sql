-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2015 at 04:28 AM
-- Server version: 5.6.23
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `conceptmap_builder`
--
CREATE DATABASE IF NOT EXISTS `conceptmap_builder` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `conceptmap_builder`;

-- --------------------------------------------------------

--
-- Table structure for table `concept-maps`
--

CREATE TABLE IF NOT EXISTS `concept-maps` (
  `map_id` int(4) NOT NULL,
  `map_data` text NOT NULL,
  `map_created_by` varchar(25) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `map_title` varchar(255) NOT NULL COMMENT 'concept map title'
) ENGINE=InnoDB AUTO_INCREMENT=1270 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dest_node`
--

CREATE TABLE IF NOT EXISTS `dest_node` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `map_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `input_connection`
--

CREATE TABLE IF NOT EXISTS `input_connection` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `connector_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE IF NOT EXISTS `nodes` (
  `map_id` int(4) NOT NULL,
  `node_id` int(4) NOT NULL,
  `nodeID` int(2) NOT NULL,
  `nodeName` varchar(60) NOT NULL,
  `node_content` longblob NOT NULL COMMENT 'topic content'
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `output_connection`
--

CREATE TABLE IF NOT EXISTS `output_connection` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `connector_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE IF NOT EXISTS `quiz_attempts` (
  `quiz_id` int(4) NOT NULL,
  `map_id` int(4) NOT NULL,
  `node_id` int(4) NOT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `marks_obt` int(4) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `answers` varchar(64) DEFAULT NULL,
  `record_flag` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='CREATE TABLE `conceptmap_builder`.`quiz_attempts` ( `quiz_id` INT(4) NOT NULL AU';

-- --------------------------------------------------------

--
-- Table structure for table `quiz_nodes`
--

CREATE TABLE IF NOT EXISTS `quiz_nodes` (
  `question_id` int(4) NOT NULL,
  `map_id` int(4) NOT NULL,
  `node_id` int(4) NOT NULL,
  `question` longblob NOT NULL,
  `optn_A` longblob NOT NULL,
  `optn_B` longblob NOT NULL,
  `optn_C` longblob NOT NULL,
  `optn_D` longblob NOT NULL,
  `answer` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rltn4rm_p2c`
--

CREATE TABLE IF NOT EXISTS `rltn4rm_p2c` (
  `src_node_id` int(2) NOT NULL COMMENT 'conection starting from node',
  `src_Cntcr_INDEX` int(2) NOT NULL COMMENT 'connection bindinding node conectr index',
  `dest_node_id` int(2) NOT NULL COMMENT 'connection termination node',
  `dest_Cntcr_INDEX` int(2) NOT NULL COMMENT 'connection termination node conector index',
  `map_id` int(4) NOT NULL COMMENT 'respective-map-id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='relation from parent to chilld';

-- --------------------------------------------------------

--
-- Table structure for table `src_node`
--

CREATE TABLE IF NOT EXISTS `src_node` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `map_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `user_type` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user category '
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concept-maps`
--
ALTER TABLE `concept-maps`
  ADD PRIMARY KEY (`map_id`) COMMENT 'Primary key autoincrement';

--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`node_id`);

--
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_nodes`
--
ALTER TABLE `quiz_nodes`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_name` (`user_name`), ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concept-maps`
--
ALTER TABLE `concept-maps`
  MODIFY `map_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1270;
--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `node_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `quiz_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `quiz_nodes`
--
ALTER TABLE `quiz_nodes`
  MODIFY `question_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
