-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2024 at 03:36 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `identical-gen`
--

-- --------------------------------------------------------

--
-- Table structure for table `samegen`
--

DROP TABLE IF EXISTS `samegen`;
CREATE TABLE IF NOT EXISTS `samegen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` int NOT NULL,
  `month` int NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `samegen`
--

INSERT INTO `samegen` (`id`, `day`, `month`, `year`) VALUES
(1, 25, 3, 2001);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `l-name` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day` int NOT NULL,
  `month` int NOT NULL,
  `year` int NOT NULL,
  `time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `l-name`, `date`, `email`, `password`, `password_hash`, `day`, `month`, `year`, `time`) VALUES
(1, 'ooo', '', '0000-00-00', 'i4Lx8D@gmail.com', '', '$2y$10$NEYqi19L1HCL.ROdANwkJeZ7BFfM/Ca4ZpFlPbz5PAKNm37Yn.Y12', 0, 0, 0, '0000-00-00 00:00:00'),
(2, 'ooo', '', '2024-05-24', 'i4Lx8D@gmail.com', '', '$2y$10$WgL8iLVHKjIYo9fKXxkq0u1YWp0L9X4q/yd99ibCleBm5GQwe9MGy', 0, 0, 0, '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
