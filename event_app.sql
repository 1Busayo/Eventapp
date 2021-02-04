-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 04, 2021 at 08:40 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_event`
--

DROP TABLE IF EXISTS `apply_event`;
CREATE TABLE IF NOT EXISTS `apply_event` (
  `apply_id` int(18) NOT NULL AUTO_INCREMENT,
  `events_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_type` int(18) NOT NULL,
  `event_host` varchar(255) NOT NULL,
  `event_venue` varchar(255) NOT NULL,
  `event_desc` text NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_time` varchar(255) NOT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_event`
--

INSERT INTO `apply_event` (`apply_id`, `events_id`, `name`, `email`, `event_name`, `event_type`, `event_host`, `event_venue`, `event_desc`, `event_date`, `event_time`) VALUES
(1, 1, 'William Smith', 'we@yahoo.com', 'Even name', 3, 'Emmanuel sandas', 'kaku stadium', 'talking future sports', '2021-02-17', '11:21'),
(2, 4, 'Bolade Williams', 'fanimok@we.com', 'Even name', 1, 'Emmanuel sandas', 'kaku stadium', 'talking future sports', '2021-02-17', '11:21'),
(3, 1, 'Temilade Martins', 'marts@we.com', 'ETH GLOBAL', 3, 'Emmanuel sandas', 'kaku stadium', 'talking future sports', '2021-02-17', '11:21');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `events_id` int(18) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `event_type` int(18) NOT NULL,
  `event_host` varchar(255) NOT NULL,
  `event_venue` varchar(255) NOT NULL,
  `event_desc` text NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_time` varchar(255) NOT NULL,
  PRIMARY KEY (`events_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`events_id`, `event_name`, `event_type`, `event_host`, `event_venue`, `event_desc`, `event_date`, `event_time`) VALUES
(1, 'ETH GLOBAL', 3, 'Emmanuel sandas', 'kaku stadium', 'talking future sports', '2021-02-17', '11:21'),
(2, 'Leap event', 2, 'Laman', 'Laman park', 'Laman park for the event', '2021-03-02', '11:11'),
(4, 'Evenclipse', 1, 'Emmanuel sandas', 'kaku stadium', 'talking future sports', '2021-02-17', '11:21'),
(5, 'Become A Digital Nomad', 7, 'Mr James', 'Excellence Hall', 'Learn how to use telecommunications technologies to earn a living and, more generally', '2021-02-15', '08:00');

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

DROP TABLE IF EXISTS `event_type`;
CREATE TABLE IF NOT EXISTS `event_type` (
  `event_type_id` int(17) NOT NULL AUTO_INCREMENT,
  `event_type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`event_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`event_type_id`, `event_type_name`) VALUES
(1, 'MeetUp'),
(2, 'Leap'),
(3, 'Hackathon'),
(4, 'Open Webinar'),
(6, 'Recruiting Mission'),
(7, 'Premium-only Webinar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_key` varchar(255) NOT NULL,
  `acct_type` set('A','P','C') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `reset_key`, `acct_type`, `created_at`) VALUES
(1, 'Bose Adewale', 'admin@admin.com', '$2y$10$jdRQcwwhv/4VlWrmXsYVt.XgJh7Qcij6YjaXsnkdcbNlqQ7eVotBi', '', 'C', '2020-08-17 12:59:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
