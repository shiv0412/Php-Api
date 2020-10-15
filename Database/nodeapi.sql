-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 05:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodeapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `name` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `ram` int(10) NOT NULL,
  `processor` varchar(20) NOT NULL,
  `type` enum('mobile','laptop','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`name`, `description`, `ram`, `processor`, `type`) VALUES
('Asus Celeron', 'If you want to use a good-quality laptop to enhance your productivity, then you can check out this ASUS laptop. It comes with 4 GB of RAM, and hence you will be able to enjoy an enhanced and fast perf', 4, 'Dual Core X540NA', 'laptop'),
('Dell Inspiron', 'Looks like this laptop was recently launched. Initial impression is quite positive. Build quality is good and sturdy and works as expected.It\'s good for basic home use and not meant for heavy users or', 8, 'Dual Core 3595', 'laptop'),
('Samsung Galaxy F41', 'The Samsung Galaxy F41 is a phone you can count on for almost everything! When you have to click a picture of your family, you can fit everyone into the frame with the help of its 8 MP ultra-wide came', 6, 'Exynos Octa Core ', 'mobile'),
('iphone', 'iphone 8 with m11 bionic chipset', 2, 'm11 embedded', 'mobile'),
('lenovo ', 'the laptop consit of full hd display pannel with led backlit keyboard and fingerprint sensor.', 8, 'Intel octa core ', 'laptop');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
