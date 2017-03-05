-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2016 at 11:34 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webdata`
--
CREATE DATABASE IF NOT EXISTS `webdata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `webdata`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `body` varchar(50) NOT NULL,
  `variant` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `image` varchar(122) NOT NULL,
  `tag` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `model`, `body`, `variant`, `year`, `desc`, `image`, `tag`) VALUES
(1, 'Granada Mk2 Facelift', 'Saloon', '2.8i Ghia ex', 1981, 'My personal favorate (I still own one), also much favored by criminals in the 80''s!', 'http://portfolio.tomcanham.website/images/granada1.jpg', 'Granada'),
(2, 'Capri Mk 4', 'Hatchback', '1.6 lx', 1982, 'A great car to drive, however it needed a good amount of weight in the boot to keep it on the road when cornering fast.', 'http://portfolio.tomcanham.website/images/capri1.jpg', 'Capri'),
(3, 'Cortina Mk5', 'Saloon', '1.6 Carousel', 1981, 'A popular family car, The Mk 5 was the last variant, unfortunately superseded by the bland Sierra', 'http://portfolio.tomcanham.website/images/cortina1.jpg', 'Cortina'),
(4, 'Escort Mk 4', 'Hatchback', 'XR3i', 1985, 'Every boy racers dream car in the 80''s, the Escort was eventually replaced by the Focus.', 'http://portfolio.tomcanham.website/images/escort2.jpg', 'Escort'),
(5, 'Fiesta Mk 3', 'Hatchback', '1.6 Sport', 1986, 'The Fiesta is a great little family runaround that is still in production today as the Mk 7 version.', 'http://portfolio.tomcanham.website/images/fiesta1.jpg', 'Fiesta'),
(6, 'Orion Mk 2', 'Saloon', '1.6s', 1988, 'Not Fords finest car, An Escort with a boot. However the performance of the 1.6 sport was surprising good', 'http://portfolio.tomcanham.website/images/orion2.jpg', 'Orion'),
(7, 'Sierra 2.0', 'Hatchback', 'Cosworth', 1987, 'Though the Sierra was the successor to the Cortina, It was still a Cortina underneath', 'http://portfolio.tomcanham.website/images/sierra2.jpg', 'Sierra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
