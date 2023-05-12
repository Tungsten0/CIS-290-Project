-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 05:15 PM
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
-- Database: `agritech_db`
--
CREATE DATABASE IF NOT EXISTS `agritech_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agritech_db`;

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `FeedID` int(4) NOT NULL,
  `FeedName` varchar(50) NOT NULL,
  `Manufacturer` varchar(50) NOT NULL,
  `AnimalType` varchar(20) NOT NULL,
  `AnimalStatus` varchar(20) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `WeightPerBag` decimal(10,2) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `ProductCover` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`FeedID`, `FeedName`, `Manufacturer`, `AnimalType`, `AnimalStatus`, `Price`, `WeightPerBag`, `Description`, `District`, `Address`, `ProductCover`) VALUES
(1, 'NutriBlend Pro - The Best Cattle Feed', 'Farming Org.', 'Cow', 'Adult', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(2, 'Blue Ribbon Feeds - Cattle Feed', 'Optimum Co.', 'Cow', 'Adult', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(3, 'Best Choice Feeds - Cattle Feed', 'Marzo', 'Cow', 'Adult', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(4, 'PrimeSelect Feeds for Cattles', 'Premium Bovine', 'Cow', 'Adult', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(5, 'NutriBlend Pro - The Best Calves Feed', 'Farming Org.', 'Cow', 'Baby', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(6, 'Blue Ribbon Feeds - Calves Feed', 'Optimum Co.', 'Cow', 'Baby', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(7, 'Best Choice Feeds - Calves Feed', 'Marzo', 'Cow', 'Baby', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(8, 'PrimeSelect Feeds for Calves', 'Premium Bovine', 'Cow', 'Baby', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(9, 'NutriBlend Pro - The Best Pregnant Cattle Feed', 'Farming Org.', 'Cow', 'Pregnant', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(10, 'Blue Ribbon Feeds - Pregnant Cattle Feed', 'Optimum Co.', 'Cow', 'Pregnant', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(11, 'Best Choice Feeds - Pregnant Cattle Feed', 'Marzo', 'Cow', 'Pregnant', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(12, 'PrimeSelect Feeds for Pregnant Cattle', 'Premium Bovine', 'Cow', 'Pregnant', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(13, 'NutriBlend Pro - The Best Pig Feed', 'Farming Org.', 'Pig', 'Adult', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(14, 'Blue Ribbon Feeds - Pig Feed', 'Optimum Co.', 'Pig', 'Adult', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(15, 'Best Choice Feeds - Pig Feed', 'Marzo', 'Pig', 'Adult', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(16, 'PrimeSelect Feeds for Pigs', 'Premium Bovine', 'Pig', 'Adult', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(17, 'NutriBlend Pro - The Best Piglet Feed', 'Farming Org.', 'Pig', 'Baby', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(18, 'Blue Ribbon Feeds - Piglet Feed', 'Optimum Co.', 'Pig', 'Baby', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(19, 'Best Choice Feeds - Piglet Feed', 'Marzo', 'Pig', 'Baby', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(20, 'PrimeSelect Feeds for Piglet', 'Premium Bovine', 'Pig', 'Baby', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(21, 'NutriBlend Pro - The Best Pregnant Pig Feed', 'Farming Org.', 'Pig', 'Pregnant', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(22, 'Blue Ribbon Feeds - Pregnant Pig Feed', 'Optimum Co.', 'Pig', 'Pregnant', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(23, 'Best Choice Feeds - Pregnant Pig Feed', 'Marzo', 'Pig', 'Pregnant', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(24, 'PrimeSelect Feeds for Pregnant Pig', 'Premium Bovine', 'Pig', 'Pregnant', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(25, 'NutreBlend Pro - The Best Chicken feed', 'Farming Org.', 'Chicken', 'Adult', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(26, 'Blue Ribbon Cattle Feeds - Chicken Feed', 'Optimum Co.', 'Chicken', 'Adult', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(27, 'Best Choice Feeds - Chicken Feed', 'Marzo.', 'Chicken', 'Adult', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(28, 'NutriBlend for Chicken', 'Premium- Bovine.', 'Chicken', 'Adult', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(29, 'NutreBlend Pro - The Best Chicken feed', 'Farming Org.', 'Chicken', 'Baby', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(30, 'Blue Ribbon Cattle Feeds - Chicken Feed', 'Optimum Co.', 'Chicken', 'Baby', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(31, 'Best Choice Feeds - Chicken Feed', 'Marzo.', 'Chicken', 'Baby', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(32, 'NutriBlend for Chicken', 'Premium- Bovine.', 'Chicken', 'Baby', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(33, 'NutreBlend Pro - The Best Chicken feed', 'Farming Org.', 'Chicken', 'Pregnant', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(34, 'Blue Ribbon Cattle Feeds - Chicken Feed', 'Optimum Co.', 'Chicken', 'Pregnant', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(35, 'Best Choice Feeds - Chicken Feed', 'Marzo.', 'Chicken', 'Pregnant', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(36, 'NutriBlend for Chicken', 'Premium- Bovine.', 'Chicken', 'Pregnant', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(37, 'NutreBlend Pro - The Best Sheep feed', 'Farming Org.', 'Sheep', 'Adult', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(38, 'Blue Ribbon Feeds - Sheep Feed', 'Optimum Co.', 'Sheep', 'Adult', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(39, 'Best Choice Feeds- Sheep Feed', 'Marzo.', 'Sheep', 'Adult', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(40, 'NutriBlend for Sheep', 'Premium- Bovine.', 'Sheep', 'Adult', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(41, 'NutreBlend Pro - The Best Sheep feed', 'Farming Org.', 'Sheep', 'Baby', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(42, 'Blue Ribbon Cattle Feeds - Sheep Feed', 'Optimum Co.', 'Sheep', 'Baby', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(43, 'Best Choice Feeds - Sheep Feed', 'Marzo.', 'Sheep', 'Baby', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(44, 'NutriBlend for Sheep', 'Premium- Bovine.', 'Sheep', 'Baby', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(45, 'NutreBlend Pro - The Best Sheep feed', 'Farming Org.', 'Sheep', 'Pregnant', 42.00, 23.00, '', 'Corozal', '24 Arthur Street', ''),
(46, 'Blue Ribbon Cattle Feeds - Sheep Feed', 'Optimum Co.', 'Sheep', 'Pregnant', 50.00, 25.00, '', 'Corozal', '33 Pimenta Street', ''),
(47, 'Best Choice Feeds - Sheep Feed', 'Marzo.', 'Sheep', 'Pregnant', 48.00, 30.00, '', 'Corozal', '46 Jamaica Street', ''),
(48, 'NutriBlend for Sheep', 'Premium- Bovine.', 'Sheep', 'Pregnant', 60.00, 38.00, '', 'Corozal', '82 Babylon Street', ''),
(49, 'NutreBlend Pro - The Best Cattle feed', 'Farming Org.', 'Cow', 'Adult', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(50, 'Blue Ribbon Cattle Feed', 'Optimum Co.', 'Cow', 'Adult', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(51, 'Best Choice Feeds - Cattle Feed', 'Marzo.', 'Cow', 'Adult', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(52, 'NutriBlend for Cattle', 'Premium-Bovine.', 'Cow', 'Adult', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(53, 'NutreBlend Pro - The Best Calves feed', 'Farming Org.', 'Cow', 'Baby', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(54, 'Blue Ribbon Calves Feeds', 'Optimum Co.', 'Cow', 'Baby', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(55, 'Best Choice Feeds - Calves Feed', 'Marzo.', 'Cow', 'Baby', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(56, 'NutriBlend for Calves', 'Premium-Bovine.', 'Cow', 'Baby', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(57, 'NutreBlend Pro - The Best Pregnat Cattle feed', 'Farming Org.', 'Cow', 'Pregnant', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(58, 'Blue Ribbon Pregnat Cattle Feed', 'Optimum Co.', 'Cow', 'Pregnant', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(59, 'Best Choice Feeds - Pregnat Cattle Feed', 'Marzo.', 'Cow', 'Pregnant', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(60, 'NutriBlend for Pregnat Cattle', 'Premium-Bovine.', 'Cow', 'Pregnant', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(61, 'NutreBlend Pro - The Best Pig feed', 'Farming Org.', 'Pig', 'Adult', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(62, 'Blue Ribbon Pig Feed', 'Optimum Co.', 'Pig', 'Adult', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(63, 'Best Choice Feeds - Pig Feed', 'Marzo.', 'Pig', 'Adult', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(64, 'NutriBlend for Pig', 'Premium-Bovine.', 'Pig', 'Adult', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(65, 'NutreBlend Pro - The Best Piglet feed', 'Farming Org.', 'Pig', 'Baby', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(66, 'Blue Ribbon Piglet Feeds', 'Optimum Co.', 'Pig', 'Baby', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(67, 'Best Choice Feeds - Piglet Feed', 'Marzo.', 'Pig', 'Baby', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(68, 'NutriBlend for Piglet', 'Premium-Bovine.', 'Pig', 'Baby', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(69, 'NutreBlend Pro - The Best Pregnat Pigs feed', 'Farming Org.', 'Pig', 'Pregnant', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(70, 'Blue Ribbon Pregnat Pigs Feed', 'Optimum Co.', 'Pig', 'Pregnant', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(71, 'Best Choice Feeds - Pregnat Pigs Feed', 'Marzo.', 'Pig', 'Pregnant', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(72, 'NutriBlend for Pregnat Pigs', 'Premium-Bovine.', 'Pig', 'Pregnant', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(73, 'NutreBlend Pro - The Best Chicken feed', 'Farming Org.', 'Chicken', 'Adult', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(74, 'Blue Ribbon Chicken Feed', 'Optimum Co.', 'Chicken', 'Adult', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(75, 'Best Choice Feeds - Chicken Feed', 'Marzo.', 'Chicken', 'Adult', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(76, 'NutriBlend for Chicken', 'Premium-Bovine.', 'Chicken', 'Adult', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(77, 'NutreBlend Pro - The Best Chick feed', 'Farming Org.', 'Chicken', 'Baby', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(78, 'Blue Ribbon Chick Feeds', 'Optimum Co.', 'Chicken', 'Baby', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(79, 'Best Choice Feeds - Chick Feed', 'Marzo.', 'Chicken', 'Baby', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(80, 'NutriBlend for Chicks', 'Premium-Bovine.', 'Chicken', 'Baby', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(81, 'NutreBlend Pro - The Best Laying Hens feed', 'Farming Org.', 'Chicken', 'Pregnant', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(82, 'Blue Ribbon Pregnat Laying Hens Feed', 'Optimum Co.', 'Chicken', 'Pregnant', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(83, 'Best Choice Feeds - Pregnat Laying Hens Feed', 'Marzo.', 'Chicken', 'Pregnant', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(84, 'NutriBlend for Pregnat Laying Hens', 'Premium-Bovine.', 'Chicken', 'Pregnant', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(85, 'NutreBlend Pro - The Best Sheep feed', 'Farming Org.', 'Sheep', 'Adult', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(86, 'Blue Ribbon Sheep Feed', 'Optimum Co.', 'Sheep', 'Adult', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(87, 'Best Choice Feeds - Sheep Feed', 'Marzo.', 'Sheep', 'Adult', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(88, 'NutriBlend Sheep Pig', 'Premium-Bovine.', 'Sheep', 'Adult', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(89, 'NutreBlend Pro - The Best Lamb feed', 'Farming Org.', 'Sheep', 'Baby', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(90, 'Blue Ribbon Lamb Feeds', 'Optimum Co.', 'Sheep', 'Baby', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(91, 'Best Choice Feeds - Lamb Feed', 'Marzo.', 'Sheep', 'Baby', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(92, 'NutriBlend for Lambs', 'Premium-Bovine.', 'Sheep', 'Baby', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(93, 'NutreBlend Pro - The Best Pregnat Sheep feed', 'Farming Org.', 'Sheep', 'Pregnant', 42.00, 23.00, '', 'Orange Walk', '28 Benito Street', ''),
(94, 'Blue Ribbon Pregnat Sheep Feed', 'Optimum Co.', 'Sheep', 'Pregnant', 50.00, 25.00, '', 'Orange Walk', '32 Flamingo Street', ''),
(95, 'Best Choice Feeds - Pregnat Sheep Feed', 'Marzo.', 'Sheep', 'Pregnant', 48.00, 30.00, '', 'Orange Walk', '56 Grouper Street', ''),
(96, 'NutriBlend for Pregnat Sheep', 'Premium-Bovine.', 'Sheep', 'Pregnant', 60.00, 38.00, '', 'Orange Walk', '778 Burns Street', ''),
(97, 'NutreBlend Pro - The Best Cattle feed', 'Farming Org.', 'Cow', 'Adult', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(98, 'Blue Ribbon Cattle Feed', 'Optimum Co.', 'Cow', 'Adult', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(99, 'Best Choice Feeds - Cattle Feed', 'Marzo.', 'Cow', 'Adult', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(100, 'NutriBlend for Cattle', 'Premium-Bovine.', 'Cow', 'Adult', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(101, 'NutreBlend Pro - The Best Calves feed', 'Farming Org.', 'Cow', 'Baby', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(102, 'Blue Ribbon Calves Feeds', 'Optimum Co.', 'Cow', 'Baby', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(103, 'Best Choice Feeds - Calves Feed', 'Marzo.', 'Cow', 'Baby', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(104, 'NutriBlend for Calves', 'Premium-Bovine.', 'Cow', 'Baby', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(105, 'NutreBlend Pro - The Best Pregnat Cattle feed', 'Farming Org.', 'Cow', 'Pregnant', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(106, 'Blue Ribbon Pregnat Cattle Feed', 'Optimum Co.', 'Cow', 'Pregnant', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(107, 'Best Choice Feeds - Pregnat Cattle Feed', 'Marzo.', 'Cow', 'Pregnant', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(108, 'NutriBlend for Pregnat Cattle', 'Premium-Bovine.', 'Cow', 'Pregnant', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(109, 'NutreBlend Pro - The Best Pig feed', 'Farming Org.', 'Pig', 'Adult', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(110, 'Blue Ribbon Pig Feed', 'Optimum Co.', 'Pig', 'Adult', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(111, 'Best Choice Feeds - Pig Feed', 'Marzo.', 'Pig', 'Adult', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(112, 'NutriBlend for Pig', 'Premium-Bovine.', 'Pig', 'Adult', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(113, 'NutreBlend Pro - The Best Piglet feed', 'Farming Org.', 'Pig', 'Baby', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(114, 'Blue Ribbon Piglet Feeds', 'Optimum Co.', 'Pig', 'Baby', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(115, 'Best Choice Feeds - Piglet Feed', 'Marzo.', 'Pig', 'Baby', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(116, 'NutriBlend for Piglet', 'Premium-Bovine.', 'Pig', 'Baby', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(117, 'NutreBlend Pro - The Best Pregnat Pigs feed', 'Farming Org.', 'Pig', 'Pregnant', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(118, 'Blue Ribbon Pregnat Pigs Feed', 'Optimum Co.', 'Pig', 'Pregnant', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(119, 'Best Choice Feeds - Pregnat Pigs Feed', 'Marzo.', 'Pig', 'Pregnant', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(120, 'NutriBlend for Pregnat Pigs', 'Premium-Bovine.', 'Pig', 'Pregnant', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(121, 'NutreBlend Pro - The Best Chicken feed', 'Farming Org.', 'Chicken', 'Adult', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(122, 'Blue Ribbon Chicken Feed', 'Optimum Co.', 'Chicken', 'Adult', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(123, 'Best Choice Feeds - Chicken Feed', 'Marzo.', 'Chicken', 'Adult', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(124, 'NutriBlend for Chicken', 'Premium-Bovine.', 'Chicken', 'Adult', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(125, 'NutreBlend Pro - The Best Chick feed', 'Farming Org.', 'Chicken', 'Baby', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(126, 'Blue Ribbon Chick Feeds', 'Optimum Co.', 'Chicken', 'Baby', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(127, 'Best Choice Feeds - Chick Feed', 'Marzo.', 'Chicken', 'Baby', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(128, 'NutriBlend for Chicks', 'Premium-Bovine.', 'Chicken', 'Baby', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(129, 'NutreBlend Pro - The Best Laying Hens feed', 'Farming Org.', 'Chicken', 'Pregnant', 42.00, 23.00, '', 'Orange Walk', '384 Pelican Street', ''),
(130, 'Blue Ribbon Pregnat Laying Hens Feed', 'Optimum Co.', 'Chicken', 'Pregnant', 50.00, 25.00, '', 'Orange Walk', '282 Victoria Street', ''),
(131, 'Best Choice Feeds - Pregnat Laying Hens Feed', 'Marzo.', 'Chicken', 'Pregnant', 48.00, 30.00, '', 'Orange Walk', '516 Albert Street', ''),
(132, 'NutriBlend for Pregnat Laying Hens', 'Premium-Bovine.', 'Chicken', 'Pregnant', 60.00, 38.00, '', 'Orange Walk', '98 Mayflower Street', ''),
(133, 'NutreBlend Pro - The Best Sheep feed', 'Farming Org.', 'Sheep', 'Adult', 42.00, 23.00, '', 'Orange Walk', '384 Pelican Street', ''),
(134, 'Blue Ribbon Sheep Feed', 'Optimum Co.', 'Sheep', 'Adult', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(135, 'Best Choice Feeds - Sheep Feed', 'Marzo.', 'Sheep', 'Adult', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(136, 'NutriBlend Sheep Pig', 'Premium-Bovine.', 'Sheep', 'Adult', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(137, 'NutreBlend Pro - The Best Lamb feed', 'Farming Org.', 'Sheep', 'Baby', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(138, 'Blue Ribbon Lamb Feeds', 'Optimum Co.', 'Sheep', 'Baby', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(139, 'Best Choice Feeds - Lamb Feed', 'Marzo.', 'Sheep', 'Baby', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(140, 'NutriBlend for Lambs', 'Premium-Bovine.', 'Sheep', 'Baby', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(141, 'NutreBlend Pro - The Best Pregnat Sheep feed', 'Farming Org.', 'Sheep', 'Pregnant', 42.00, 23.00, '', 'Belize', '384 Pelican Street', ''),
(142, 'Blue Ribbon Pregnat Sheep Feed', 'Optimum Co.', 'Sheep', 'Pregnant', 50.00, 25.00, '', 'Belize', '282 Victoria Street', ''),
(143, 'Best Choice Feeds - Pregnat Sheep Feed', 'Marzo.', 'Sheep', 'Pregnant', 48.00, 30.00, '', 'Belize', '516 Albert Street', ''),
(144, 'NutriBlend for Pregnat Sheep', 'Premium-Bovine.', 'Sheep', 'Pregnant', 60.00, 38.00, '', 'Belize', '98 Mayflower Street', ''),
(145, 'HarvestBoost', 'Farmo Inc.', 'Cow', 'Adult', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(146, 'Beef Max', 'Redmond Ltd.', 'Cow', 'Adult', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(147, 'Alpha Feed Premium - Cattle Feed', 'Triple Crown', 'Cow', 'Adult', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(148, 'Cattlemans Choice', 'Central Mills', 'Cow', 'Adult', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(149, 'HarvestBoost', 'Farmo Inc.', 'Cow', 'Baby', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(150, 'Beef Max', 'Redmond Ltd.', 'Cow', 'Baby', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(151, 'Alpha Feed Premium - Cattle Feed', 'Triple Crown', 'Cow', 'Baby', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(152, 'Cattlemans Choice', 'Central Mills', 'Cow', 'Baby', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(153, 'HarvestBoost', 'Farmo Inc.', 'Cow', 'Pregnant', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(154, 'Beef Max', 'Redmond Ltd.', 'Cow', 'Pregnant', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(155, 'Alpha Feed Premium - Cattle Feed', 'Triple Crown', 'Cow', 'Pregnant', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(156, 'Cattlemans Choice', 'Central Mills', 'Cow', 'Pregnant', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(157, 'Buckeye Nutrition', 'Farmo Inc.', 'Pig', 'Adult', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(158, 'Fertrell', 'Redmond Ltd.', 'Pig', 'Adult', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(159, 'Alpha Feed Premium - Pig Feed', 'Triple Crown', 'Pig', 'Adult', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(160, 'Blue Ribbon', 'Central Mills', 'Pig', 'Adult', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(161, 'Buckeye Nutrition', 'Farmo Inc.', 'Pig', 'Baby', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(162, 'Fertrell', 'Redmond Ltd.', 'Pig', 'Baby', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(163, 'Alpha Feed Premium - Pig Feed', 'Triple Crown', 'Pig', 'Baby', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(164, 'Blue Ribbon', 'Central Mills', 'Pig', 'Baby', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(165, 'Buckeye Nutrition', 'Farmo Inc.', 'Pig', 'Pregnant', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(166, 'Fertrell', 'Redmond Ltd.', 'Pig', 'Pregnant', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(167, 'Alpha Feed Premium - Pig Feed', 'Triple Crown', 'Pig', 'Pregnant', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(168, 'Blue Ribbon', 'Central Mills', 'Pig', 'Pregnant', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(169, 'Lakin Milling Feeds', 'Redmond Ltd.', 'Chicken', 'Adult', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(170, 'Alpha Feed Premium - Chicken Feed', 'Triple Crown', 'Chicken', 'Adult', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(171, 'Heritage Feeds', 'Central Mills', 'Chicken', 'Adult', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(172, 'Farmers Choice', 'Farmo Inc.', 'Chicken', 'Baby', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(173, 'Lakin Milling Feeds', 'Redmond Ltd.', 'Chicken', 'Baby', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(174, 'Alpha Feed Premium - Chicken Feed', 'Triple Crown', 'Chicken', 'Baby', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(175, 'Heritage Feeds', 'Central Mills', 'Chicken', 'Baby', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(176, 'Farmers Choice', 'Farmo Inc.', 'Chicken', 'Pregnant', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(177, 'Lakin Milling Feeds', 'Redmond Ltd.', 'Chicken', 'Pregnant', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(178, 'Alpha Feed Premium - Chicken Feed', 'Triple Crown', 'Chicken', 'Pregnant', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(179, 'Heritage Feeds', 'Central Mills', 'Chicken', 'Pregnant', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(180, 'Diamond V', 'Farmo Inc.', 'Sheep', 'Adult', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(181, 'Hi-Grade Feeds', 'Redmond Ltd.', 'Sheep', 'Adult', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(182, 'Alpha Feed Premium - Sheep Feed', 'Triple Crown', 'Sheep', 'Adult', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(183, 'Country Hill Blend', 'Central Mills', 'Sheep', 'Adult', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(184, 'Diamond V', 'Farmo Inc.', 'Sheep', 'Baby', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(185, 'Hi-Grade Feeds', 'Redmond Ltd.', 'Sheep', 'Baby', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(186, 'Alpha Feed Premium - Sheep Feed', 'Triple Crown', 'Sheep', 'Baby', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(187, 'Country Hill Blend', 'Central Mills', 'Sheep', 'Baby', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(188, 'Diamond V', 'Farmo Inc.', 'Sheep', 'Pregnant', 50.00, 50.00, '', 'Cayo', '54 Mayflower Street', ''),
(189, 'Hi-Grade Feeds', 'Redmond Ltd.', 'Sheep', 'Pregnant', 25.00, 50.00, '', 'Cayo', '65 Bladen Street', ''),
(190, 'Alpha Feed Premium - Sheep Feed', 'Triple Crown', 'Sheep', 'Pregnant', 100.00, 50.00, '', 'Cayo', '76 Nargusta Street', ''),
(191, 'Country Hill Blend', 'Central Mills', 'Sheep', 'Pregnant', 75.00, 50.00, '', 'Cayo', '87 Santa Maria Street', ''),
(192, 'Taste of the Wild', 'Farmo Inc.', 'Cow', 'Adult', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(193, 'Nutreco', 'Redmond Ltd.', 'Cow', 'Adult', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(194, 'Omega Feed Premium - Cattle Feed', 'Triple Crown', 'Cow', 'Adult', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(195, 'Ranchers Choice', 'Central Mills', 'Cow', 'Adult', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(196, 'Taste of the Wild', 'Farmo Inc.', 'Cow', 'Baby', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(197, 'Nutreco', 'Redmond Ltd.', 'Cow', 'Baby', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(198, 'Omega Feed Premium - Cattle Feed', 'Triple Crown', 'Cow', 'Baby', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(199, 'Ranchers Choice', 'Central Mills', 'Cow', 'Baby', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(200, 'Taste of the Wild', 'Farmo Inc.', 'Cow', 'Pregnant', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(201, 'Nutreco', 'Redmond Ltd.', 'Cow', 'Pregnant', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(202, 'Omega Feed Premium - Cattle Feed', 'Triple Crown', 'Cow', 'Pregnant', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(203, 'Ranchers Choice', 'Central Mills', 'Cow', 'Pregnant', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(204, 'Nature Valley', 'Farmo Inc.', 'Pig', 'Adult', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(205, 'Sweetlix', 'Redmond Ltd.', 'Pig', 'Adult', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(206, 'Omega Feed Premium - Pig Feed', 'Triple Crown', 'Pig', 'Adult', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(207, 'Red Robbins Feeds', 'Central Mills', 'Pig', 'Adult', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(208, 'Nature Valley', 'Farmo Inc.', 'Pig', 'Baby', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(209, 'Sweetlix', 'Redmond Ltd.', 'Pig', 'Baby', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(210, 'Omega Feed Premium - Pig Feed', 'Triple Crown', 'Pig', 'Baby', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(211, 'Red Robbins Feeds', 'Central Mills', 'Pig', 'Baby', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(212, 'Nature Valley', 'Farmo Inc.', 'Pig', 'Pregnant', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(213, 'Sweetlix', 'Redmond Ltd.', 'Pig', 'Pregnant', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(214, 'Omega Feed Premium - Pig Feed', 'Triple Crown', 'Pig', 'Pregnant', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(215, 'Red Robbins Feeds', 'Central Mills', 'Pig', 'Pregnant', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(216, 'Manna Pro Feeds', 'Farmo Inc.', 'Chicken', 'Adult', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(217, 'Kelp4Less', 'Redmond Ltd.', 'Chicken', 'Adult', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(218, 'Omega Feed Premium - Chicken Feed', 'Triple Crown', 'Chicken', 'Adult', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(219, 'Agri Feeds', 'Central Mills', 'Chicken', 'Adult', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(220, 'Manna Pro Feeds', 'Farmo Inc.', 'Chicken', 'Baby', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(221, 'Kelp4Less', 'Redmond Ltd.', 'Chicken', 'Baby', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(222, 'Omega Feed Premium - Chicken Feed', 'Triple Crown', 'Chicken', 'Baby', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(223, 'Agri Feeds', 'Central Mills', 'Chicken', 'Baby', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(224, 'Manna Pro Feeds', 'Farmo Inc.', 'Chicken', 'Pregnant', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(225, 'Kelp4Less', 'Redmond Ltd.', 'Chicken', 'Pregnant', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(226, 'Omega Feed Premium - Chicken Feed', 'Triple Crown', 'Chicken', 'Pregnant', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(227, 'Agri Feeds', 'Central Mills', 'Chicken', 'Pregnant', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(228, 'Golden Harvest', 'Farmo Inc.', 'Sheep', 'Adult', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(229, 'Double D Feeds', 'Redmond Ltd.', 'Sheep', 'Adult', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(230, 'Omega Feed Premium - Sheep Feed', 'Triple Crown', 'Sheep', 'Adult', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(231, 'Green Mountains Feeds', 'Central Mills', 'Sheep', 'Adult', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(232, 'Golden Harvest', 'Farmo Inc.', 'Sheep', 'Baby', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(233, 'Double D Feeds', 'Redmond Ltd.', 'Sheep', 'Baby', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(234, 'Omega Feed Premium - Sheep Feed', 'Triple Crown', 'Sheep', 'Baby', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(235, 'Green Mountains Feeds', 'Central Mills', 'Sheep', 'Baby', 75.00, 50.00, '', 'Stann Creek', '121 Coconut  Street', ''),
(236, 'Golden Harvest', 'Farmo Inc.', 'Sheep', 'Pregnant', 50.00, 50.00, '', 'Stann Creek', '98 Havana Street', ''),
(237, 'Double D Feeds', 'Redmond Ltd.', 'Sheep', 'Pregnant', 25.00, 50.00, '', 'Stann Creek', '101 Vincent Street', ''),
(238, 'Omega Feed Premium - Sheep Feed', 'Triple Crown', 'Sheep', 'Pregnant', 100.00, 50.00, '', 'Stann Creek', '110 Mango Street', ''),
(239, 'Green Mountains Feeds', 'Central Mills', 'Sheep', 'Pregnant', 75.00, 50.00, '', 'Stann Creek', '43 Queens Street', ''),
(240, 'Taste of the Wild', 'Farmo Inc.', 'Cow', 'Adult', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(241, 'Nutreco', 'Redmond Ltd.', 'Cow', 'Adult', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(242, 'Omega Feed Premium - Cattle Feed', 'Triple Crown', 'Cow', 'Adult', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(243, 'Ranchers Choice', 'Central Mills', 'Cow', 'Adult', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(244, 'Taste of the Wild', 'Farmo Inc.', 'Cow', 'Baby', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(245, 'Nutreco', 'Redmond Ltd.', 'Cow', 'Baby', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(246, 'Omega Feed Premium - Cattle Feed', 'Triple Crown', 'Cow', 'Baby', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(247, 'Ranchers Choice', 'Central Mills', 'Cow', 'Baby', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(248, 'Taste of the Wild', 'Farmo Inc.', 'Cow', 'Pregnant', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(249, 'Nutreco', 'Redmond Ltd.', 'Cow', 'Pregnant', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(250, 'Omega Feed Premium - Cattle Feed', 'Triple Crown', 'Cow', 'Pregnant', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(251, 'Ranchers Choice', 'Central Mills', 'Cow', 'Pregnant', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(252, 'Nature Valley', 'Farmo Inc.', 'Pig', 'Adult', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(253, 'Sweetlix', 'Redmond Ltd.', 'Pig', 'Adult', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(254, 'Omega Feed Premium - Pig Feed', 'Triple Crown', 'Pig', 'Adult', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(255, 'Red Robbins Feeds', 'Central Mills', 'Pig', 'Adult', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(256, 'Nature Valley', 'Farmo Inc.', 'Pig', 'Baby', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(257, 'Sweetlix', 'Redmond Ltd.', 'Pig', 'Baby', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(258, 'Omega Feed Premium - Pig Feed', 'Triple Crown', 'Pig', 'Baby', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(259, 'Red Robbins Feeds', 'Central Mills', 'Pig', 'Baby', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(260, 'Nature Valley', 'Farmo Inc.', 'Pig', 'Pregnant', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(261, 'Sweetlix', 'Redmond Ltd.', 'Pig', 'Pregnant', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(262, 'Omega Feed Premium - Pig Feed', 'Triple Crown', 'Pig', 'Pregnant', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(263, 'Red Robbins Feeds', 'Central Mills', 'Pig', 'Pregnant', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(264, 'Manna Pro Feeds', 'Farmo Inc.', 'Chicken', 'Adult', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(265, 'Kelp4Less', 'Redmond Ltd.', 'Chicken', 'Adult', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(266, 'Omega Feed Premium - Chicken Feed', 'Triple Crown', 'Chicken', 'Adult', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(267, 'Agri Feeds', 'Central Mills', 'Chicken', 'Adult', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(268, 'Manna Pro Feeds', 'Farmo Inc.', 'Chicken', 'Baby', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(269, 'Kelp4Less', 'Redmond Ltd.', 'Chicken', 'Baby', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(270, 'Omega Feed Premium - Chicken Feed', 'Triple Crown', 'Chicken', 'Baby', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(271, 'Agri Feeds', 'Central Mills', 'Chicken', 'Baby', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(272, 'Manna Pro Feeds', 'Farmo Inc.', 'Chicken', 'Pregnant', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(273, 'Kelp4Less', 'Redmond Ltd.', 'Chicken', 'Pregnant', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(274, 'Omega Feed Premium - Chicken Feed', 'Triple Crown', 'Chicken', 'Pregnant', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(275, 'Agri Feeds', 'Central Mills', 'Chicken', 'Pregnant', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(276, 'Golden Harvest', 'Farmo Inc.', 'Sheep', 'Adult', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(277, 'Double D Feeds', 'Redmond Ltd.', 'Sheep', 'Adult', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(278, 'Omega Feed Premium - Sheep Feed', 'Triple Crown', 'Sheep', 'Adult', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(279, 'Green Mountains Feeds', 'Central Mills', 'Sheep', 'Adult', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(280, 'Golden Harvest', 'Farmo Inc.', 'Sheep', 'Baby', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(281, 'Double D Feeds', 'Redmond Ltd.', 'Sheep', 'Baby', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(282, 'Omega Feed Premium - Sheep Feed', 'Triple Crown', 'Sheep', 'Baby', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(283, 'Green Mountains Feeds', 'Central Mills', 'Sheep', 'Baby', 75.00, 50.00, '', 'Toledo', '165 Yellow Street', ''),
(284, 'Golden Harvest', 'Farmo Inc.', 'Sheep', 'Pregnant', 50.00, 50.00, '', 'Toledo', '132 Red Street', ''),
(285, 'Double D Feeds', 'Redmond Ltd.', 'Sheep', 'Pregnant', 25.00, 50.00, '', 'Toledo', '143 Blue Street', ''),
(286, 'Omega Feed Premium - Sheep Feed', 'Triple Crown', 'Sheep', 'Pregnant', 100.00, 50.00, '', 'Toledo', '154 Green Street', ''),
(287, 'Green Mountains Feeds', 'Central Mills', 'Sheep', 'Pregnant', 75.00, 50.00, '', 'Toledo', '43 Queens Street', '');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `NutritionID` int(4) NOT NULL,
  `FeedID` int(4) NOT NULL,
  `Carbs` decimal(10,2) NOT NULL,
  `Protein` decimal(10,2) NOT NULL,
  `Fat` decimal(10,2) NOT NULL,
  `Calcium` decimal(10,2) NOT NULL,
  `Phosphorus` decimal(10,2) NOT NULL,
  `Magnesium` decimal(10,2) NOT NULL,
  `Microminerals` decimal(10,2) NOT NULL,
  `TotalMinerals` decimal(10,2) NOT NULL,
  `VitaminA` decimal(10,2) NOT NULL,
  `VitaminD` decimal(10,2) NOT NULL,
  `VitaminE` decimal(10,2) NOT NULL,
  `VitaminK` decimal(10,2) NOT NULL,
  `VitaminBComplex` decimal(10,2) NOT NULL,
  `TotalVitamins` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`NutritionID`, `FeedID`, `Carbs`, `Protein`, `Fat`, `Calcium`, `Phosphorus`, `Magnesium`, `Microminerals`, `TotalMinerals`, `VitaminA`, `VitaminD`, `VitaminE`, `VitaminK`, `VitaminBComplex`, `TotalVitamins`) VALUES
(1, 1, 227.21, 664.47, 309.31, 16.51, 3.95, 2.83, 1.66, 1.06, 35964.08, 528.84, 77.27, 1.61, 1.92, 1.75),
(2, 2, 225.30, 666.35, 346.05, 14.04, 3.28, 2.98, 1.02, 1.66, 34109.16, 423.81, 74.50, 1.23, 1.09, 1.79),
(3, 3, 225.51, 619.33, 297.83, 10.68, 4.81, 2.65, 1.91, 1.55, 31137.94, 648.00, 94.34, 1.79, 1.14, 1.36),
(4, 4, 234.24, 664.21, 323.02, 13.47, 4.09, 3.37, 1.79, 1.91, 33212.05, 431.58, 93.04, 1.33, 1.90, 1.52);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
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
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `FeedID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `NutritionID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD CONSTRAINT `nutrition_ibfk_1` FOREIGN KEY (`FeedID`) REFERENCES `feeds` (`FeedID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
