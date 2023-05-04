-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 03:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedmix`
--

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `FeedID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `FeedName` varchar(50) DEFAULT NULL,
  `Manufacturer` varchar(50) DEFAULT NULL,
  `AnimalType` varchar(20) DEFAULT NULL,
  `AnimalStatus` varchar(20) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `WeightPerBag` decimal(10,2) DEFAULT NULL,
  `District` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`FeedID`, `FeedName`, `Manufacturer`, `AnimalType`, `AnimalStatus`, `Cost`, `WeightPerBag`, `District`, `Address`) VALUES
(0001, 'Premium Cow Feed', 'Farmco Inc.', 'Cow', 'Adult', 49.99, 50.00, 'Orange Walk', '24 Arthur Street'),
(0002, 'NutriGraze', 'Marzo.', 'Cow', 'Adult', 25.00, 40.00, 'Orange Walk', '18 Benito Street'),
(0003, 'VitaMix', 'James Feeds', 'Cow', 'Adult', 75.00, 55.00, 'Orange Walk', '286 Flamingo Street'),
(0004, 'FeedFusion', 'Farming Org.', 'Cow', 'Adult', 45.99, 45.00, 'Orange Walk', '06 Grouper Street'),
(0005, 'HarvestBoost', 'Central Mills', 'Cow', 'Baby', 44.00, 55.00, 'Orange Walk', '889 Burns Street');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `NutritionID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `FeedID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `Carbs` decimal(10,2) DEFAULT NULL,
  `Protein` decimal(10,2) DEFAULT NULL,
  `Fat` decimal(10,2) DEFAULT NULL,
  `Calcium` decimal(10,2) DEFAULT NULL,
  `Phosphorus` decimal(10,2) DEFAULT NULL,
  `Magnesium` decimal(10,2) DEFAULT NULL,
  `Microminerals` decimal(10,2) DEFAULT NULL,
  `VitaminA` decimal(10,2) DEFAULT NULL,
  `VitaminD` decimal(10,2) DEFAULT NULL,
  `VitaminE` decimal(10,2) DEFAULT NULL,
  `VitaminK` decimal(10,2) DEFAULT NULL,
  `VitaminBComplex` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`NutritionID`, `FeedID`, `Carbs`, `Protein`, `Fat`, `Calcium`, `Phosphorus`, `Magnesium`, `Microminerals`, `VitaminA`, `VitaminD`, `VitaminE`, `VitaminK`, `VitaminBComplex`) VALUES
(0002, 0002, 240.00, 645.00, 25.00, 15.00, 4.50, 3.00, 1.15, 40000.00, 800.00, 50.00, 1.50, 1.75),
(0003, 0004, 225.00, 612.00, 35.00, 20.00, 2.50, 1.75, 2.00, 30000.00, 500.00, 40.00, 1.15, 0.52),
(0004, 0003, 250.00, 680.00, 15.00, 10.00, 2.75, 1.50, 1.00, 50000.00, 400.00, 20.00, 0.55, 0.65),
(0005, 0005, 230.00, 620.00, 20.00, 18.00, 3.25, 3.00, 1.80, 45000.00, 600.00, 30.00, 1.30, 1.00),
(0006, 0001, 235.00, 650.00, 30.00, 12.00, 4.00, 1.75, 0.75, 35000.00, 700.00, 25.00, 2.00, 1.25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`FeedID`);

--
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD PRIMARY KEY (`NutritionID`),
  ADD KEY `FeedID` (`FeedID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `FeedID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `NutritionID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD CONSTRAINT `nutrition_ibfk_1` FOREIGN KEY (`FeedID`) REFERENCES `feed` (`FeedID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
