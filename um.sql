-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 11, 2024 at 11:05 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `um`
--

-- --------------------------------------------------------

--
-- Table structure for table `cd`
--

DROP TABLE IF EXISTS `cd`;
CREATE TABLE IF NOT EXISTS `cd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `sp` varchar(100) NOT NULL,
  `ig` varchar(100) NOT NULL,
  `pt` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `ld` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cd`
--

INSERT INTO `cd` (`id`, `companyname`, `phone`, `email`, `fb`, `sp`, `ig`, `pt`, `tw`, `ld`, `time`) VALUES
(1, 'Um', '+21264905848', 'i4Lx8D@gmail.com', 'https://www.facebook.com/profile.php?id=61555042454154', 'https://www.facebook.com/profile.php?id=61555042454154', 'https://www.facebook.com/profile.php?id=61555042454154', 'https://www.facebook.com/profile.php?id=61555042454154', 'https://x.com/ismaillabiade', 'https://www.linkedin.com/in/ismaillabiade/', '2023-12-10 09:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Comments` int NOT NULL,
  `Stars` int NOT NULL,
  `Rate` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page` (`page`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `page`, `description`, `time`) VALUES
(1, 'jkk', '', '2023-12-10 12:55:31'),
(2, 'qzrestdfyg', '', '2023-12-10 13:09:48'),
(3, 'ERTTHY', '', '2023-12-10 13:16:55'),
(4, 'ERZERETR', '', '2023-12-10 13:17:23'),
(5, 'oooooooooooo', '', '2023-12-10 13:18:45'),
(6, 'zdqspineibfd', '', '2023-12-10 13:20:03'),
(7, '', '', '2024-02-07 17:43:33'),
(8, 'o', '', '2024-02-07 17:45:09'),
(9, 'oo', '', '2024-02-07 17:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `preq`
--

DROP TABLE IF EXISTS `preq`;
CREATE TABLE IF NOT EXISTS `preq` (
  `product` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `q` int NOT NULL,
  `fn` varchar(25) NOT NULL,
  `ln` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `adresse` varchar(25) NOT NULL,
  `np` varchar(14) NOT NULL,
  `time` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `preq`
--

INSERT INTO `preq` (`product`, `id`, `q`, `fn`, `ln`, `email`, `adresse`, `np`, `time`) VALUES
('', 1, 1, 'IsMail', 'Labiade', '', '', '', '0000-00-00 00:00:00'),
('', 2, 1, 'IsMail', 'Labiade', '', '', '', '0000-00-00 00:00:00'),
('', 3, 1, 'IsMail', 'Labiade', 'ismaillabiade@gmail.com', '', '', '0000-00-00 00:00:00'),
('', 4, 1, 'IsMail', 'Labiade', 'ismaillabiade@gmail.com', 'qpskflmdkngjf', 'azdsfgh', '0000-00-00 00:00:00'),
('', 5, 1, 'IsMail', 'Labiade', 'i@i.com', 'Route', '061111111', '0000-00-00 00:00:00'),
('Xiaomi Pad 6 ', 6, 1, 'ss', 'ss', 'i4Lx8@gmail.com', 'qsdfghjk', 'sdfghjn,;', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NOT NULL,
  `product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ppthimg` varchar(255) NOT NULL,
  `lproduct` varchar(255) NOT NULL,
  `p-status` varchar(200) NOT NULL,
  `item` varchar(240) NOT NULL,
  `time` varchar(240) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000031 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `price`, `quantity`, `product`, `description`, `keyword`, `title`, `status`, `ppthimg`, `lproduct`, `p-status`, `item`, `time`) VALUES
(4, '4290MAD', 2, 'Xiaomi Pad 6 ', '<div class=\"specification--wrap--lxVQ2tj\" id=\"nav-specification\" data-pl=\"product-specs\"><div class=\"title--wrap--NWOaiSp\" data-spm-anchor-id=\"a2g0o.detail.0.i12.36f5vwrLvwrLGB\"><div class=\"title--text--Otu0bLr\"><h2 class=\"title--title--O6xcB1q\" data-spm-anchor-id=\"a2g0o.detail.0.i16.36f5vwrLvwrLGB\">Specifications</h2></div></div><ul class=\"specification--list--GZuXzRX\"><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Second Webcam Pixels</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"8MP\" data-spm-anchor-id=\"a2g0o.detail.0.i14.36f5vwrLvwrLGB\"><span>8MP</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Front Webcam Pixels</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"8MP\"><span>8MP</span></div></div></li><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Camera</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"Second Webcam,Front Webcam Pixels\"><span>Second Webcam,Front Webcam Pixels</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Net Weight</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"400-500g\"><span>400-500g</span></div></div></li><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Package</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"Yes\"><span>Yes</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Cell Capacity</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"8840mAh\"><span>8840mAh</span></div></div></li><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Extend Port</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"3G External\"><span>3G External</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Tablet Storage Capacity</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"1TGB\"><span>1TGB</span></div></div></li><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Operating System</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"Android 13\"><span>Android 13</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Display Size</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"11&quot;\"><span>11\"</span></div></div></li><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Feature</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"ULTRA SLIM,Dual Cameras\"><span>ULTRA SLIM,Dual Cameras</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Memory Capacity</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"≤ 128MB\"><span>≤ 128MB</span></div></div></li><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Processor Model</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"Snapdragon\"><span>Snapdragon</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Display resolution</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"2880*1800\"><span>2880*1800</span></div></div></li><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Network </span></div><div class=\"specification--desc--Dxx6W0W\" title=\"WIFI\"><span>WIFI</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Supporting Language</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"English,Russian,Spanish,SWEDISH,german,Chinese,FRENCH\"><span>English,Russian,Spanish,SWEDISH,german,Chinese,FRENCH</span></div></div></li><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Brand Name</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"XIAOMI\"><span>XIAOMI</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Item Type</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"Tablet PC\"><span>Tablet PC</span></div></div></li><li class=\"specification--line--IXeRJI7\"><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\" data-spm-anchor-id=\"a2g0o.detail.0.i15.36f5vwrLvwrLGB\"><span>Xiaomi Model</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"Xiaomi Mi Pad 6\"><span>Xiaomi Mi Pad 6</span></div></div><div class=\"specification--prop--Jh28bKu\"><div class=\"specification--title--SfH3sA8\"><span>Origin</span></div><div class=\"specification--desc--Dxx6W0W\" title=\"Mainland China\"><span>Mainland China</span></div></div></li></ul></div>', 'Xiaomi Pad 6 ', 'Xiaomi Pad 6 ', '', 'https://ae-pic-a1.aliexpress-media.com/kf/Sf11343938e9b4556a0602bd860a33ef6T/Xiaomi-Pad-6-WiFi-Version-11-Inches-144Hz-8840mAh-Bluetooth-5-2-Four-Speakers-Dolby-Atmos.jpg_.webp', 'Xiaomi Pad 6', '', 'ipad', '0'),
(3, '6000MAD', 20, 'Apple iPad Pro', '<div class=\"row -pas\"><article class=\"col8 -pvs\"><div class=\"card-b -fh\"><h2 class=\"hdr -upp -fs14 -m -pam\">Principales caractéristiques</h2><div class=\"markup -pam\"><ul><li>Écran Liquid Retina 12.9\" Multi-Touch IPS&nbsp;(2732 x 2048)</li><li>Technologie et affichage True Tone&nbsp;</li><li>Puce A12X Bionic avec Neural Engine</li><li>Coprocesseur M12 intégré</li><li>256 Go de Stockage&nbsp;</li><li>Photo 12 Mpx &amp; enregistrement vidéo 4K</li><li>Quatre haut-parleurs intégrés&nbsp;</li><li>4 Go RAM</li><li>Authentification sécurisée :&nbsp;Face ID</li><li>Payez avec votre iPad dans les apps comme sur le Web</li><li>Wi-Fi (802.11a/b/g/n/ac), bi-bande simultané (2,4 GHz et 5 GHz)</li><li>Technologie Bluetooth 5.0</li><li>Connecteur USB-C&nbsp;/ Smart Connector&nbsp;</li><li>Jusqu’à 10 heures d’autonomie pour naviguer sur le Web en Wi-Fi</li><li>Compatible avec l\'Apple Pencil (2e Gen) &amp; Smart Keyboard Folio (vendus séparément)</li><li>Poids :&nbsp;468 g</li><li>Remis à Neuf</li><li>6 Mois de la Garantie</li></ul></div></div></article><article class=\"col8 -pvs\"><div class=\"card-b -fh\"><h2 class=\"hdr -upp -fs14 -m -pam\">Vendu avec le produit</h2><div class=\"markup -pam\">1x iPad Pro<br><br>1x Chargeur Complet</div></div></article><article class=\"col8 -pvs\"><div class=\"card-b -fh\"><h2 class=\"hdr -upp -fs14 -m -pam\">Descriptif technique</h2><ul class=\"-pvs -mvxs -phm -lsn\"><li class=\"-pvxs\"><span class=\"-b\">SKU</span>: AP009MP0PUJ3ENAFAMZ</li><li class=\"-pvxs\"><span class=\"-b\">Modèle</span>: iPad Pro (2018)</li><li class=\"-pvxs\"><span class=\"-b\">Pays de production</span>: European Union</li><li class=\"-pvxs\"><span class=\"-b\">Poids (kg)</span>: 0.162</li><li class=\"-pvxs\"><span class=\"-b\">Couleur</span>: Gris</li><li class=\"-pvxs\"><span class=\"-b\">Matière principale</span>: Aluminium</li></ul></div></article></div>', 'Apple iPad Pro', 'Apple iPad Pro', '', 'https://ma.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/43/414826/2.jpg?8005', 'Apple iPad Pro', '', 'ipad', '0'),
(2, '50MAD', 20, 'Mouse', '<div><center>\n<pre>\nColor: Gold-Silver-black\n\nSpecifications\n\n    Time to market\n    Dec-04\n    Gross Weight\n    71\n    Operation Mode\n    Opto-electronic\n    Power Type\n    RECHARGEABLE\n    Number of Buttons\n    3\n    Number of Rollers\n    1 pcs\n    Hand Orientation\n    Right\n    Package\n    Yes\n    DPI\n    1200\n    Interface Type\n    USB\n    Type\n    Bluetooth Wireless\n    Brand Name\n    ITLY\n    Origin\n    Mainland China\n    Certification\n    none\n\nDescription\nReport Item\n\n• Rechargeable :No need to constantly replace batteries, simply recharge the mouse for extended use.\n\n\n• Bluetooth Wireless :Connect to your device without the hassle of cords and wires, providing a clutter-free workspace.\n\n\n• Luminous :The mouse features a bright blue light that makes it easy to locate in low-light conditions.\n\n\n• Portable :Take your mouse on-the-go with you, perfect for travel or working remotely.\n\n\nProduct Parameters:\n\nWorking mode: 2.4G+BT5.2/BT3.0\n\n（BT3.0Mouse+BT5.2 Mouse Two Bluetooth signals are optional\n\nBT3.0Mouse for laptop more stable/\nBT5.2 Mouse is more stable for tablets）\n\nDPI：800-1200-1600DPI\n\nProduct size: 112*58*25MM\n\nNumber of switches: 4 Keys (mute design)\n\nSwitch life: 10 million times\n\nProduct material: ABS\n\nVoltage/current: 5V/500mA\n\nBattery capacity: 500mAH\n\nWorking range: 10m\n\nLength of charging line: 20cm\n\nProduct weight: About 69g\n</pre>\n</div>', 'Mouse', 'Mouse', '', 'Assets/mouse.png', 'Mouse', '', 'Mouse', '0'),
(1, '60MAD', 20, 'Screwdriver', '<pre>-FENTE \n-PHILIPS\n-POZIDRIV\n-HEX\n-TROX\n-RALLONGE \n-MANCHE DE PRESCISION</pre>', 'Screwdriver', 'Screwdriver', '', 'Assets/4.webp', 'Screwdriver', '', 'Screwdriver', '0');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
CREATE TABLE IF NOT EXISTS `slide` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `EventnSlide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) NOT NULL,
  `stitle` varchar(254) NOT NULL,
  `time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `link`, `alt`, `EventnSlide`, `title`, `stitle`, `time`) VALUES
(1, 'apple', 'apple', 'assets/slide/ipad.png', 'apple', 'apple', '2024-08-07 21:44:55'),
(2, 'xiaomi', 'xiaomi', 'assets/slide/xiaomi.jpg', 'xiaomi', 'xiaomi', '2024-08-07 21:44:48'),
(3, 'xiaomi', 'xiaomi', 'assets/slide/xiaomi1.jpg', 'xiaomi', 'xiaomi', '2024-08-07 21:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Users id ',
  `role` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remail` varchar(100) NOT NULL,
  `address` varchar(240) NOT NULL,
  `password` varchar(240) NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `country` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `fname`, `lname`, `phone`, `email`, `remail`, `address`, `password`, `password_hash`, `country`, `city`, `time`) VALUES
(2, 'Admin', 'ertuyuio', 'nksjdbc', 'isqjn', '312456789', 'iL@iL.com', '', '', 'FnwE5}Md9,^#gNV', '$2y$10$xsO8En2waMT8R002crMQpupQ9imyj4NLAZ194jwqzabDx87/CgHG2', 'Mars', 'mos', '2023-11-30 11:53:23'),
(3, '', 'aezrty', 'tryui', 'zertyu', '312456789', 'ertyy@dnksjf.com', '', '', 'FnwE5}Md9,^#gNV', '$2y$10$6Km2jtvNjaKc166kEIzOQOMPZcVZiaSFnOf4MWWLOrcvnRjIWdNzm', 'Mars', 'zerty', '2023-11-29 22:21:23');

--
-- Triggers `users`
--
DROP TRIGGER IF EXISTS `time`;
DELIMITER $$
CREATE TRIGGER `time` BEFORE INSERT ON `users` FOR EACH ROW SET NEW.time = CURRENT_TIMESTAMP
$$
DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
