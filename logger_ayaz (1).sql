-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 03:58 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logger_ayaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int(11) NOT NULL,
  `gen_code` varchar(30) NOT NULL,
  `c1` varchar(30) NOT NULL,
  `c2` varchar(30) NOT NULL,
  `c3` varchar(30) NOT NULL,
  `v1` varchar(30) NOT NULL,
  `v2` varchar(30) NOT NULL,
  `v3` varchar(30) NOT NULL,
  `kwh1` varchar(30) NOT NULL,
  `kwh2` varchar(30) NOT NULL,
  `kwh3` varchar(30) NOT NULL,
  `kw1` varchar(30) NOT NULL,
  `kw2` varchar(30) NOT NULL,
  `kw3` varchar(30) NOT NULL,
  `t1` varchar(30) NOT NULL,
  `t2` varchar(30) NOT NULL,
  `t3` varchar(30) NOT NULL,
  `t4` varchar(30) NOT NULL,
  `t5` varchar(30) NOT NULL,
  `water` varchar(30) NOT NULL,
  `rpm` varchar(30) NOT NULL,
  `power` varchar(30) NOT NULL,
  `reall` varchar(30) NOT NULL,
  `apparent` varchar(30) NOT NULL,
  `reactive` varchar(30) NOT NULL,
  `c1_max` varchar(30) NOT NULL,
  `c2_max` varchar(30) NOT NULL,
  `c3_max` varchar(30) NOT NULL,
  `v1_max` varchar(30) NOT NULL,
  `v2_max` varchar(30) NOT NULL,
  `v3_max` varchar(30) NOT NULL,
  `kwh1_max` varchar(30) NOT NULL,
  `kwh2_max` varchar(30) NOT NULL,
  `kwh3_max` varchar(30) NOT NULL,
  `kw1_max` varchar(30) NOT NULL,
  `kw2_max` varchar(30) NOT NULL,
  `kw3_max` varchar(30) NOT NULL,
  `t1_max` varchar(30) NOT NULL,
  `t2_max` varchar(30) NOT NULL,
  `t3_max` varchar(30) NOT NULL,
  `t4_max` varchar(30) NOT NULL,
  `t5_max` varchar(30) NOT NULL,
  `water_max` varchar(30) NOT NULL,
  `rpm_max` varchar(30) NOT NULL,
  `power_max` varchar(30) NOT NULL,
  `real_max` varchar(30) NOT NULL,
  `apparent_max` varchar(30) NOT NULL,
  `reactive_max` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `img` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `owner` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `img`, `email`, `address`, `owner`, `phone`) VALUES
(1, 'Technical Services', 'Images/2.jpg', 'talha--ahmed@hotmail.com', 'Karachi', 'Talha', '3341857177');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `type`, `manager`, `phone`) VALUES
(1, 'Ring', 'R11', 'Asad', '123123'),
(2, 'String', 'S2', 'Asad', '234234234'),
(3, 'Stringgg', 'S2', 'Talha1', '3341857177'),
(4, 'Cotton', 'Cotton collection', 'Talha', '0213');

-- --------------------------------------------------------

--
-- Table structure for table `generator_log_detail`
--

CREATE TABLE `generator_log_detail` (
  `id` int(11) NOT NULL,
  `gen_code` varchar(255) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `current` varchar(30) DEFAULT NULL,
  `current2` varchar(30) DEFAULT NULL,
  `current3` varchar(30) DEFAULT NULL,
  `voltage` varchar(30) DEFAULT NULL,
  `voltage2` varchar(30) DEFAULT NULL,
  `voltage3` varchar(30) DEFAULT NULL,
  `t1` varchar(30) DEFAULT NULL,
  `t2` varchar(30) DEFAULT NULL,
  `t3` varchar(30) DEFAULT NULL,
  `t4` varchar(30) DEFAULT NULL,
  `t5` varchar(30) DEFAULT NULL,
  `kwh1` varchar(30) DEFAULT NULL,
  `kwh2` varchar(30) DEFAULT NULL,
  `kwh3` varchar(30) DEFAULT NULL,
  `water` varchar(30) DEFAULT NULL,
  `harmonic` varchar(30) DEFAULT NULL,
  `rpm` varchar(30) DEFAULT NULL,
  `powerf` varchar(30) DEFAULT NULL,
  `ap` varchar(30) DEFAULT NULL,
  `rrp` varchar(30) DEFAULT NULL,
  `rp` varchar(30) DEFAULT NULL,
  `kw1` varchar(30) DEFAULT NULL,
  `kw2` varchar(30) DEFAULT NULL,
  `kw3` varchar(30) DEFAULT NULL,
  `fuel` float DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `frequency1` varchar(255) NOT NULL,
  `frequency2` varchar(255) NOT NULL,
  `frequency3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generator_log_detail`
--

INSERT INTO `generator_log_detail` (`id`, `gen_code`, `status`, `current`, `current2`, `current3`, `voltage`, `voltage2`, `voltage3`, `t1`, `t2`, `t3`, `t4`, `t5`, `kwh1`, `kwh2`, `kwh3`, `water`, `harmonic`, `rpm`, `powerf`, `ap`, `rrp`, `rp`, `kw1`, `kw2`, `kw3`, `fuel`, `date`, `time`, `createdon`, `frequency1`, `frequency2`, `frequency3`) VALUES
(173, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:45:11', '2020-02-22 09:45:11', '', '', ''),
(174, '192.168.1.10', '0', '0.08', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:45:18', '2020-02-22 09:45:18', '', '', ''),
(175, '192.168.1.10', '0', '0.09', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:45:25', '2020-02-22 09:45:25', '', '', ''),
(176, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:45:32', '2020-02-22 09:45:32', '', '', ''),
(177, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:45:38', '2020-02-22 09:45:38', '', '', ''),
(178, '192.168.1.10', '0', '0.08', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:45:44', '2020-02-22 09:45:44', '', '', ''),
(179, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:45:50', '2020-02-22 09:45:50', '', '', ''),
(180, '192.168.1.10', '0', '0.06', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:45:57', '2020-02-22 09:45:57', '', '', ''),
(181, '192.168.1.10', '0', '0.05', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:46:03', '2020-02-22 09:46:03', '', '', ''),
(182, '192.168.1.10', '0', '0.04', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:46:10', '2020-02-22 09:46:10', '', '', ''),
(183, '192.168.1.10', '0', '0.06', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:46:16', '2020-02-22 09:46:16', '', '', ''),
(184, '192.168.1.10', '0', '0.09', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:46:22', '2020-02-22 09:46:22', '', '', ''),
(185, '192.168.1.10', '0', '0.06', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:46:30', '2020-02-22 09:46:30', '', '', ''),
(186, '192.168.1.10', '0', '0.09', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:46:35', '2020-02-22 09:46:35', '', '', ''),
(187, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:46:42', '2020-02-22 09:46:42', '', '', ''),
(188, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:46:48', '2020-02-22 09:46:48', '', '', ''),
(189, '192.168.1.10', '0', '0.08', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:46:54', '2020-02-22 09:46:54', '', '', ''),
(190, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:47:00', '2020-02-22 09:47:00', '', '', ''),
(191, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:47:07', '2020-02-22 09:47:07', '', '', ''),
(192, '192.168.1.10', '0', '0.09', '', '', '', '', '', '26.12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:47:13', '2020-02-22 09:47:13', '', '', ''),
(193, '192.168.1.10', '1', '31.68', '', '', '', '', '', '26.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:47:43', '2020-02-22 09:47:43', '', '', ''),
(194, '192.168.1.10', '0', '0.43', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:48:05', '2020-02-22 09:48:05', '', '', ''),
(195, '192.168.1.10', '0', '0.16', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:48:12', '2020-02-22 09:48:12', '', '', ''),
(196, '192.168.1.10', '0', '0.08', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:48:18', '2020-02-22 09:48:18', '', '', ''),
(197, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:48:27', '2020-02-22 09:48:27', '', '', ''),
(198, '192.168.1.10', '0', '0.06', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:48:50', '2020-02-22 09:48:50', '', '', ''),
(199, '192.168.1.10', '0', '0.09', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:49:08', '2020-02-22 09:49:08', '', '', ''),
(200, '192.168.1.10', '0', '0.06', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:49:12', '2020-02-22 09:49:12', '', '', ''),
(201, '192.168.1.10', '0', '0.04', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:49:18', '2020-02-22 09:49:18', '', '', ''),
(202, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:49:30', '2020-02-22 09:49:30', '', '', ''),
(203, '192.168.1.10', '0', '0.04', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:49:35', '2020-02-22 09:49:35', '', '', ''),
(204, '192.168.1.10', '0', '0.02', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:49:38', '2020-02-22 09:49:38', '', '', ''),
(205, '192.168.1.10', '0', '0.04', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:49:50', '2020-02-22 09:49:50', '', '', ''),
(206, '192.168.1.10', '0', '0.05', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:49:54', '2020-02-22 09:49:54', '', '', ''),
(207, '192.168.1.10', '0', '0.03', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:50:00', '2020-02-22 09:50:00', '', '', ''),
(208, '192.168.1.10', '0', '0.05', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:50:07', '2020-02-22 09:50:07', '', '', ''),
(209, '192.168.1.10', '1', '31.67', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:50:25', '2020-02-22 09:50:25', '', '', ''),
(210, '192.168.1.10', '1', '7.45', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:50:31', '2020-02-22 09:50:31', '', '', ''),
(211, '192.168.1.10', '0', '1.76', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:50:37', '2020-02-22 09:50:37', '', '', ''),
(212, '192.168.1.10', '0', '0.44', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:50:45', '2020-02-22 09:50:45', '', '', ''),
(213, '192.168.1.10', '0', '0.12', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:50:51', '2020-02-22 09:50:51', '', '', ''),
(214, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:50:58', '2020-02-22 09:50:58', '', '', ''),
(215, '192.168.1.10', '1', '4.01', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:51:27', '2020-02-22 09:51:27', '', '', ''),
(216, '192.168.1.10', '1', '4.01', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:51:47', '2020-02-22 09:51:47', '', '', ''),
(217, '192.168.1.10', '1', '4.02', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:51:49', '2020-02-22 09:51:49', '', '', ''),
(218, '192.168.1.10', '1', '3.97', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:51:56', '2020-02-22 09:51:56', '', '', ''),
(219, '192.168.1.10', '1', '4.03', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:52:02', '2020-02-22 09:52:02', '', '', ''),
(220, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:52:09', '2020-02-22 09:52:09', '', '', ''),
(221, '192.168.1.10', '0', '0.09', '', '', '', '', '', '26.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:52:15', '2020-02-22 09:52:15', '', '', ''),
(222, '192.168.1.10', '0', '0.09', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:52:21', '2020-02-22 09:52:21', '', '', ''),
(223, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:52:27', '2020-02-22 09:52:27', '', '', ''),
(224, '192.168.1.10', '0', '2.81', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:52:34', '2020-02-22 09:52:34', '', '', ''),
(225, '192.168.1.10', '1', '6.01', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:52:40', '2020-02-22 09:52:40', '', '', ''),
(226, '192.168.1.10', '1', '5.98', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:52:47', '2020-02-22 09:52:47', '', '', ''),
(227, '192.168.1.10', '1', '5.93', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:52:54', '2020-02-22 09:52:54', '', '', ''),
(228, '192.168.1.10', '1', '5.93', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:53:01', '2020-02-22 09:53:01', '', '', ''),
(229, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:53:08', '2020-02-22 09:53:08', '', '', ''),
(230, '192.168.1.10', '0', '0.07', '', '', '', '', '', '26.31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-22', '14:53:15', '2020-02-22 09:53:15', '', '', ''),
(231, '192.168.1.10', '0', '0.08', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:00', '2020-02-25 14:55:01', '', '', ''),
(232, '192.168.1.10', '0', '0.08', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:07', '2020-02-25 14:55:07', '', '', ''),
(233, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:13', '2020-02-25 14:55:13', '', '', ''),
(234, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:19', '2020-02-25 14:55:19', '', '', ''),
(235, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:26', '2020-02-25 14:55:26', '', '', ''),
(236, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:32', '2020-02-25 14:55:32', '', '', ''),
(237, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:38', '2020-02-25 14:55:38', '', '', ''),
(238, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:44', '2020-02-25 14:55:44', '', '', ''),
(239, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:50', '2020-02-25 14:55:50', '', '', ''),
(240, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:55:57', '2020-02-25 14:55:57', '', '', ''),
(241, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:56:03', '2020-02-25 14:56:03', '', '', ''),
(242, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:56:09', '2020-02-25 14:56:09', '', '', ''),
(243, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:56:15', '2020-02-25 14:56:15', '', '', ''),
(244, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:56:22', '2020-02-25 14:56:22', '', '', ''),
(245, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:56:28', '2020-02-25 14:56:28', '', '', ''),
(246, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:56:37', '2020-02-25 14:56:37', '', '', ''),
(247, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:56:41', '2020-02-25 14:56:41', '', '', ''),
(248, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:56:47', '2020-02-25 14:56:47', '', '', ''),
(249, '192.168.1.10', '0', '0.09', '', '', '', '', '', '27.19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-02-25', '19:56:53', '2020-02-25 14:56:53', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hub`
--

CREATE TABLE `hub` (
  `id` int(11) NOT NULL,
  `ref` varchar(30) NOT NULL,
  `stat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `role` varchar(15) NOT NULL,
  `chance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`, `pin`, `role`, `chance`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', '123', 'admin', 2),
(2, 'client', '21232f297a57a5a743894a0e4a801fc3', 'client@gmail.com', '222', 'client', 1),
(3, 'captain', '21232f297a57a5a743894a0e4a801fc3', 'captain@gmail.com', '123', 'captain', 2);

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `id` int(11) NOT NULL,
  `gen_code` varchar(255) NOT NULL,
  `company_id` varchar(40) NOT NULL,
  `branch_name` varchar(40) NOT NULL,
  `genbrand` varchar(40) NOT NULL,
  `alert` varchar(30) NOT NULL,
  `contact_name` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `branch_address` varchar(40) NOT NULL,
  `fuel_per_hour` varchar(40) NOT NULL,
  `contact_person` varchar(20) NOT NULL,
  `c1_min` varchar(30) DEFAULT NULL,
  `c2_min` varchar(30) DEFAULT NULL,
  `c3_min` varchar(30) DEFAULT NULL,
  `v1_min` varchar(30) DEFAULT NULL,
  `v2_min` varchar(30) DEFAULT NULL,
  `v3_min` varchar(30) DEFAULT NULL,
  `kw1_min` varchar(30) DEFAULT NULL,
  `kw2_min` varchar(30) DEFAULT NULL,
  `kw3_min` varchar(30) DEFAULT NULL,
  `kwh1_min` varchar(30) DEFAULT NULL,
  `kwh2_min` varchar(30) DEFAULT NULL,
  `kwh3_min` varchar(30) DEFAULT NULL,
  `t1_min` varchar(30) DEFAULT NULL,
  `t2_min` varchar(30) DEFAULT NULL,
  `t3_min` varchar(30) DEFAULT NULL,
  `t4_min` mediumint(30) DEFAULT NULL,
  `t5_min` varchar(30) DEFAULT NULL,
  `t1_max` varchar(30) DEFAULT NULL,
  `t2_max` varchar(30) DEFAULT NULL,
  `t3_max` varchar(30) DEFAULT NULL,
  `t4_max` varchar(30) DEFAULT NULL,
  `t5_max` varchar(30) DEFAULT NULL,
  `water_min` varchar(30) DEFAULT NULL,
  `harmonic_min` varchar(30) DEFAULT NULL,
  `rpm_min` varchar(30) DEFAULT NULL,
  `power_min` varchar(30) DEFAULT NULL,
  `real_min` varchar(30) DEFAULT NULL,
  `apparent_min` varchar(30) DEFAULT NULL,
  `reactive_min` varchar(30) DEFAULT NULL,
  `c1_max` varchar(30) DEFAULT NULL,
  `c2_max` varchar(30) DEFAULT NULL,
  `c3_max` varchar(30) DEFAULT NULL,
  `v1_max` varchar(30) DEFAULT NULL,
  `v2_max` varchar(30) DEFAULT NULL,
  `v3_max` varchar(30) DEFAULT NULL,
  `kw1_max` varchar(30) DEFAULT NULL,
  `kw2_max` varchar(30) DEFAULT NULL,
  `kw3_max` varchar(30) DEFAULT NULL,
  `kwh1_max` varchar(30) DEFAULT NULL,
  `kwh2_max` varchar(30) DEFAULT NULL,
  `kwh3_max` varchar(30) DEFAULT NULL,
  `water_max` varchar(30) DEFAULT NULL,
  `harmonic_max` varchar(30) DEFAULT NULL,
  `rpm_max` varchar(30) DEFAULT NULL,
  `power_max` varchar(30) DEFAULT NULL,
  `real_max` varchar(30) DEFAULT NULL,
  `apparent_max` varchar(30) DEFAULT NULL,
  `reactive_max` varchar(30) DEFAULT NULL,
  `time_on` varchar(255) NOT NULL,
  `time_off` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`id`, `gen_code`, `company_id`, `branch_name`, `genbrand`, `alert`, `contact_name`, `city`, `branch_address`, `fuel_per_hour`, `contact_person`, `c1_min`, `c2_min`, `c3_min`, `v1_min`, `v2_min`, `v3_min`, `kw1_min`, `kw2_min`, `kw3_min`, `kwh1_min`, `kwh2_min`, `kwh3_min`, `t1_min`, `t2_min`, `t3_min`, `t4_min`, `t5_min`, `t1_max`, `t2_max`, `t3_max`, `t4_max`, `t5_max`, `water_min`, `harmonic_min`, `rpm_min`, `power_min`, `real_min`, `apparent_min`, `reactive_min`, `c1_max`, `c2_max`, `c3_max`, `v1_max`, `v2_max`, `v3_max`, `kw1_max`, `kw2_max`, `kw3_max`, `kwh1_max`, `kwh2_max`, `kwh3_max`, `water_max`, `harmonic_max`, `rpm_max`, `power_max`, `real_max`, `apparent_max`, `reactive_max`, `time_on`, `time_off`) VALUES
(1, '192.168.1.001', '1', '', '001', '', 'Ayaz', '', '', '', '01122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(2, '192.168.1.002', '1', '', '002', '', 'Ayaz', '', '', '', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(3, '192.168.1.003', '1', '', '003', '', 'Ayaz', '', '', '', '0123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(4, '192.168.1.004', '1', '', '004', '', 'Ayaz', '', '', '', '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(5, '192.168.1.005', '1', '', '005', '', 'ayaz', '', '', '', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(6, '192.168.1.007', '1', '', '007', '', 'ayaz', '', '', '', '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `mail1` varchar(50) DEFAULT NULL,
  `mail2` varchar(50) DEFAULT NULL,
  `mail3` varchar(50) DEFAULT NULL,
  `mail4` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `mail1`, `mail2`, `mail3`, `mail4`) VALUES
(1, 'ayazashah@gmail.com', 'ayazashah@gmail.com', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `room_status`
--

CREATE TABLE `room_status` (
  `id` int(11) NOT NULL,
  `gen_code` varchar(255) DEFAULT NULL,
  `room_status` int(11) DEFAULT NULL,
  `ac_status` int(11) DEFAULT NULL,
  `temperature` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_status`
--

INSERT INTO `room_status` (`id`, `gen_code`, `room_status`, `ac_status`, `temperature`) VALUES
(20, '192.168.1.001', 5, 8, 0),
(30, '192.168.1.003', 5, 8, 0),
(33, '192.168.1.002', 5, 7, 0),
(34, '192.168.1.005', 6, 8, 0),
(39, '192.168.1.007', 5, 7, 0),
(42, '192.168.1.004', 6, 7, 60);

-- --------------------------------------------------------

--
-- Table structure for table `string`
--

CREATE TABLE `string` (
  `machine` varchar(25) NOT NULL,
  `c1` varchar(20) NOT NULL,
  `c2` varchar(20) NOT NULL,
  `c3` varchar(20) NOT NULL,
  `v1` varchar(20) NOT NULL,
  `v2` varchar(20) NOT NULL,
  `v3` varchar(20) NOT NULL,
  `t1` varchar(20) NOT NULL,
  `t2` varchar(20) NOT NULL,
  `t3` varchar(20) NOT NULL,
  `t4` varchar(20) NOT NULL,
  `t5` varchar(20) NOT NULL,
  `kwh1` varchar(20) NOT NULL,
  `kwh2` varchar(20) NOT NULL,
  `kwh3` varchar(20) NOT NULL,
  `x1` varchar(20) NOT NULL,
  `x2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `string`
--

INSERT INTO `string` (`machine`, `c1`, `c2`, `c3`, `v1`, `v2`, `v3`, `t1`, `t2`, `t3`, `t4`, `t5`, `kwh1`, `kwh2`, `kwh3`, `x1`, `x2`) VALUES
('234', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generator_log_detail`
--
ALTER TABLE `generator_log_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hub`
--
ALTER TABLE `hub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_status`
--
ALTER TABLE `room_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `string`
--
ALTER TABLE `string`
  ADD UNIQUE KEY `machine` (`machine`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `generator_log_detail`
--
ALTER TABLE `generator_log_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `hub`
--
ALTER TABLE `hub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room_status`
--
ALTER TABLE `room_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
