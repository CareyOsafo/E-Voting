-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 12:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gnpcssa_election`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Elections', 'Administrator', 'gnpc.jpg', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(19, 8, 'Hello', 'Hi', '', 'hafahfl'),
(20, 9, 'Jack', 'Daniels', '../imagesCapture.PNG', ''),
(21, 8, 'jeff', 'bezos', '../imagesOIP.jpg', ''),
(22, 14, 'Anthony', 'Ablordeppey', '../imagesghanapavilion.jpeg', 'He is IT Expert in GNPC for over 25 years of working experience');

-- --------------------------------------------------------

--
-- Table structure for table `election_settings`
--

CREATE TABLE `election_settings` (
  `es_id` int(11) NOT NULL,
  `election_title` text NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `election_status` text NOT NULL,
  `addedby` text NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `election_settings`
--

INSERT INTO `election_settings` (`es_id`, `election_title`, `startdate`, `enddate`, `election_status`, `addedby`, `dateadded`) VALUES
(1, 'GNPC SSA Elections', '2023-09-15 17:07:16', '2023-09-15 17:07:16', 'GettingReady', '1', '2023-09-18 18:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'President', 1, 1),
(9, 'Vice-president', 1, 2),
(10, 'Treasurer', 1, 5),
(11, 'Secretary', 1, 3),
(12, 'Assistant Secretary', 1, 4),
(13, 'Financial Secretary', 1, 6),
(14, 'Executive Officer', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `staffname` varchar(30) NOT NULL,
  `staffid` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isvalid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `staffname`, `staffid`, `photo`, `date_added`, `isvalid`) VALUES
(21, '333746', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Amos Agatha', '44', '', '2023-09-17 21:56:47', ''),
(22, '665152', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', '	\nOnwona  Joseph', '52', '', '2023-09-17 21:56:47', ''),
(23, '521548', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', '	Darko Christiana', '61', '', '2023-09-17 21:56:47', ''),
(24, '761995', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Godzi  Ewurama', '63', '', '2023-09-17 21:56:47', ''),
(25, '378319', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Asare-Armoo  Harriette', '64', '', '2023-09-17 21:56:47', ''),
(26, '296282', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Korsah Kate', '65', '', '2023-09-17 21:56:47', ''),
(27, '276315', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Dennis  Marilyn', '66', '', '2023-09-17 21:56:47', ''),
(28, '842763', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Asare Stephen', '67', '', '2023-09-17 21:56:47', ''),
(29, '837812', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Buabeng  Samuel', '69', '', '2023-09-17 21:56:47', ''),
(30, '182493', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Ablordepey  Anthony', '70', '', '2023-09-17 21:56:47', ''),
(31, '695782', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Sam  Antoinette', '71', '', '2023-09-17 21:56:47', ''),
(32, '742715', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Manukure  Doreen', '74', '', '2023-09-17 21:56:47', ''),
(33, 'ot8BuXUCRpNxsWD', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Asamoah  Abigail', '77', '', '2023-09-17 21:56:47', ''),
(34, '6Zhnl1ydRJXuBKa', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Armah-Brako Cynthia', '78', '', '2023-09-17 21:56:47', ''),
(35, '2DyWgNla3QfTKJA', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Boadi-Sarpong Michael', '79', '', '2023-09-17 21:56:47', ''),
(36, 'l2LGiCxVBUnObS7', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Dei Donkor Mercy', '88', '', '2023-09-17 21:56:47', ''),
(37, 'NFIJzWcpy8XfSAH', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Ago Gloria', '89', '', '2023-09-17 21:56:47', ''),
(38, 'GTowOtdAlfpuiZU', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Coleman Elizabeth', '91', '', '2023-09-17 21:56:47', ''),
(39, 'JhZMWnqXKHulxmQ', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Afriyie-Owusu Barbara', '105', '../imagesCapture.PNG', '2023-09-17 21:56:47', ''),
(40, '2hLKPAYNXWM1RVj', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Arthur Francis', '105', '', '2023-09-17 21:56:47', ''),
(41, '2FifWpdeNoXLn4J', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Kwami Robert', '109', '', '2023-09-17 21:56:47', ''),
(42, 'JNPsGunfKU4F5QW', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Enchill Kwamina', '112', '', '2023-09-17 21:56:47', ''),
(43, 'UjoOlsEVHSNG5iC', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Blankson Samuel', '113', '', '2023-09-17 21:56:47', ''),
(44, 'Qd7wVeHiETWtgDZ', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Boadi Kwasi', '115', '', '2023-09-17 21:56:47', ''),
(45, 'p1lWqxdwY9K5j8g', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Hotor Vincent', '116', '', '2023-09-17 21:56:47', ''),
(46, 'ivuk4orE1qlOL8d', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Dougan Stephen', '117', '', '2023-09-17 21:56:47', ''),
(47, 'JPbwDe2Qu56qVAY', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Oblo Robert', '119', '', '2023-09-17 21:56:47', ''),
(48, 'uoVehntfavlXqPB', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Geraldo-Delima Godwin', '120', '', '2023-09-17 21:56:47', ''),
(49, 'wqZbgVpDYEGFy1L', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Asaam William', '121', '', '2023-09-17 21:56:47', ''),
(50, 'q4RazBDgVP8vXTf', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Prempeh Mark', '122', '', '2023-09-17 21:56:47', ''),
(51, 'ZxAhMOSWmsfV9C3', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Fefoame Eugenia', '123', '', '2023-09-17 21:56:47', ''),
(52, 'tolSvqQ3Ed7sp1Y', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Mensah Henry', '127', '', '2023-09-17 21:56:47', ''),
(53, 'xNSfoY4ytaMREnV', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'LONGDON-NYEWAN Albert', '129', '', '2023-09-17 21:56:47', ''),
(54, 'xBX45UWmK6YpfHc', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Osei-Twum Augustine', '130', '', '2023-09-17 21:56:47', ''),
(55, 'ORsGDFpywXibhWn', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Essilfie Simon', '131', '', '2023-09-17 21:56:47', ''),
(56, 'PiU4rpvVnxdSbY1', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Amissah Eugene', '132', '', '2023-09-17 21:56:47', ''),
(57, 'eXyNgs4AiMtc6qW', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Ponu Dominic', '133', '', '2023-09-17 21:56:47', ''),
(58, 'TGo15qXWZDaERM3', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Tamakloe Emmanuel', '134', '', '2023-09-17 21:56:47', ''),
(59, 'aP1uvxsJ4OTbFCr', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Foli Seth', '135', '', '2023-09-17 21:56:47', ''),
(60, 'tNjH15mqdovygFG', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Koranteng Daniel', '136', '', '2023-09-17 21:56:47', ''),
(61, 'F74ZSt8vlDudLCs', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Donkor Philomina', '137', '', '2023-09-17 21:56:47', ''),
(62, '328mVO4H16IsUqF', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Nyamaah Lucy', '138', '', '2023-09-17 21:56:47', ''),
(63, 'yn7mcSKozOAVfFj', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Ansah Charles', '143', '', '2023-09-17 21:56:47', ''),
(64, '4XS2n1KvwyNAQ9o', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Debrah Ato', '147', '', '2023-09-17 21:56:47', ''),
(65, 'Ab9yMXsuB8aZLxN', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Fenyi Clifford', '149', '', '2023-09-17 21:56:47', ''),
(66, 'kXxTMlncQvfWUPe', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Otchere Nana Kwaku', '151', '', '2023-09-17 21:56:47', ''),
(67, 'aYh4GxfSBz3Zu2v', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Kwatia Michael', '152', '', '2023-09-17 21:56:47', ''),
(68, 'f8WUgoJE4tiR9eP', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Mensah Theophilus', '153', '', '2023-09-17 21:56:47', ''),
(69, 'pMlBPSEknfR3IqQ', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Sakyiamah Richard', '154', '', '2023-09-17 21:56:47', ''),
(70, 'EGhufZqiJCXLnod', '$2y$10$rSBM7GL5QB9teCdhWTXwAeYRCjdtjFPMQy9iZMBtL09Vmc0b7yd0e', 'Frempong Nana Kofi', '155', '', '2023-09-17 21:56:47', ''),
(84, '392894', '$2y$10$8kOci6ZoFtRhwPH2Y99DeO3iTdIc.JQ5T1Xj/8nhh8VMIJSWQSWfe', 'Confidence Agada', '90000104', '../imagesvote.jpg', '2023-09-18 00:26:43', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `datetime_voted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`, `datetime_voted`) VALUES
(91, 21, 19, 8, '2023-09-17 21:58:06'),
(92, 21, 20, 9, '2023-09-17 21:58:06'),
(93, 21, 22, 14, '2023-09-17 21:58:06'),
(94, 22, 19, 8, '2023-09-17 21:59:21'),
(95, 22, 20, 9, '2023-09-17 21:59:21'),
(96, 22, 22, 14, '2023-09-17 21:59:21'),
(97, 24, 21, 8, '2023-09-17 22:08:53'),
(98, 24, 20, 9, '2023-09-17 22:08:53'),
(99, 24, 22, 14, '2023-09-17 22:08:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `election_settings`
--
ALTER TABLE `election_settings`
  ADD PRIMARY KEY (`es_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `election_settings`
--
ALTER TABLE `election_settings`
  MODIFY `es_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
