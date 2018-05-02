-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 02, 2018 at 10:01 AM
-- Server version: 5.7.22-0ubuntu0.17.10.1
-- PHP Version: 7.2.4-1+ubuntu17.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flyaround`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `nbFreeSeats` smallint(6) NOT NULL,
  `seatPrice` double NOT NULL,
  `takeOffTime` datetime NOT NULL,
  `publicationDate` datetime NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `wasDone` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `planeModel`
--

CREATE TABLE `planeModel` (
  `id` int(11) NOT NULL,
  `model` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `cruiseSpeed` smallint(6) NOT NULL,
  `planeNbSeats` smallint(6) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plane_model`
--

CREATE TABLE `plane_model` (
  `id` int(11) NOT NULL,
  `model` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `cruiseSpeed` smallint(6) NOT NULL,
  `planeNbSeats` smallint(6) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `nbReservedSeats` smallint(6) NOT NULL,
  `publicationDate` datetime NOT NULL,
  `wasDone` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `icao` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `city` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planeModel`
--
ALTER TABLE `planeModel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plane_model`
--
ALTER TABLE `plane_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `planeModel`
--
ALTER TABLE `planeModel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plane_model`
--
ALTER TABLE `plane_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
