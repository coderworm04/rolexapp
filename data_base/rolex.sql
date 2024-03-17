-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 03:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rolex`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'Hassan', 'hassan101', 'hassan101'),
(2, 'Muhammd Hassan', 'mhassan', 'mhassan');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `poster_image` varchar(500) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `categories` enum('Womens watch','Mens watch','Analog','Digital','Couples watch') DEFAULT NULL,
  `price` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `poster_image`, `rating`, `categories`, `price`) VALUES
(10, 'Rolex Day-Date', ' The Rolex Day-Date, also known as the \"President\" watch, is a symbol of prestige and exclusivity. Famous for displaying both the date and day of the week, it is crafted from luxurious materials, including the iconic President bracelet. This watch is a statement of sophistication and is often associated with influential figures.', 'assets/poster-img/analog1.png', '1', 'Analog', '35,000'),
(12, 'Smart Watch', ': The Rolex Submariner is a classic diver\'s watch, known for its timeless design and exceptional functionality. With a waterproof case and a unidirectional rotatable bezel, it\'s the perfect companion for underwater adventures. The iconic Mercedes hands and luminescent hour markers ensure visibility in any conditions.', 'assets/poster-img/analog5.png', '1', 'Analog', '655'),
(13, 'Rolex Explorer II', ': The Rolex Submariner is a classic diver\'s watch, known for its timeless design and exceptional functionality. With a waterproof case and a unidirectional rotatable bezel, it\'s the perfect companion for underwater adventures. The iconic Mercedes hands and luminescent hour markers ensure visibility in any conditions.', 'assets/poster-img/1.png', '1', 'Mens watch', '60'),
(14, 'Smart Watch', '   ss : The Rolex Submariner is a classic diver\'s watch, known for its timeless design and exceptional functionality. With a waterproof case and a unidirectional rotatable bezel, it\'s the perfect companion for underwater adventures. The iconic Mercedes hands and luminescent hour markers ensure visibility in any conditions.', 'assets/poster-img/analog5.png', '1', 'Analog', '800'),
(16, 'TitanTraverse\n', ': The Rolex Submariner is a classic diver\'s watch, known for its timeless design and exceptional functionality. With a waterproof case and a unidirectional rotatable bezel, it\'s the perfect companion for underwater adventures. The iconic Mercedes hands and luminescent hour markers ensure visibility in any conditions.', 'assets/poster-img/how-to-switch-and-tweak-your-apple-watch-faces_8fhu.jpg', '1', 'Mens watch', '999'),
(17, 'Rolex Yacht', ': The Rolex Submariner is a classic diver\'s watch, known for its timeless design and exceptional functionality. With a waterproof case and a unidirectional rotatable bezel, it\'s the perfect companion for underwater adventures. The iconic Mercedes hands and luminescent hour markers ensure visibility in any conditions.', 'assets/poster-img/analog5.png', '5', 'Analog', '777'),
(19, 'Rolex Cellini', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/analog5.png', '8', 'Analog', '500'),
(20, 'Rolex Milgauss', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/couple1.png', '1', 'Couples watch', '8000'),
(24, 'Velocity Matrix 4D', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/couple3.png', '7', 'Analog', '5000'),
(25, 'Infinity Eclipse', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/analog1.png', '9', 'Womens watch', '500'),
(26, 'NeoTech Navigator', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/analog1.png', '4', 'Analog', '7000'),
(27, 'Luna Belle\n', 'The Lumina GlowTech digital watch stands out with its luminous display, offering exceptional visibility in low-light conditions. Its sleek design and glow-in-the-dark elements make it a stylish and practical choice.', 'assets/poster-img/digital1.png', '5', 'Mens watch', '9000'),
(28, 'Diva Spark\n', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/digital5.png', '8', 'Digital', '9000'),
(29, 'ElegaTime\n', 'Femme Chic\n', 'assets/poster-img/mens1.png', '7', 'Analog', '6000'),
(30, 'Radiance', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/womens5.png', '1', 'Womens watch', '9000'),
(31, 'AlphaWave', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/analog2.png', '1', 'Womens watch', '9000'),
(32, 'BravoBlitz', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/axiom.jpg', '6', 'Analog', '7000'),
(33, 'CharismaCraft\n', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/mens1.png', '1', 'Mens watch', '7000'),
(34, 'Delta Dazzle', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/mens2.png', '5', 'Mens watch', '8000'),
(35, 'EchoEmbrace\n', ' The Infinity Eclipse digital watch boasts a borderless display that seamlessly curves around the wrist. With a focus on minimalist aesthetics and user-friendly navigation, it\'s a perfect blend of style and simplicity.', 'assets/poster-img/mens3.png', '1', 'Mens watch', '4000'),
(36, 'FusionFiesta\n', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/mens4.png', '5', 'Mens watch', '40000'),
(37, 'GalaxyGlow', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/mens5.png', '1', 'Mens watch', '4544'),
(38, 'HarmonyHaven\n', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/mens4.png', '1', 'Mens watch', '8400'),
(40, 'Cellini ', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital1.png', '1', 'Digital', '8000'),
(41, 'Daytona ', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital2.png', '1', 'Digital', '5499'),
(42, 'Explorer ', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital3.png', '1', 'Digital', '8599'),
(43, 'GMT-Master ', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital4.png', '1', 'Digital', '5'),
(45, 'Milgauss ', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital5.png', '1', 'Digital', '7800'),
(46, 'Oyster ', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital5.png', '1', 'Digital', '9990'),
(47, 'Pearl Master ', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital1.png', '1', 'Digital', '5099'),
(48, 'Sea-Dweller', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital2.png', '1', 'Digital', '3990'),
(49, 'Submariner ', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital3.png', '1', 'Digital', '9999'),
(50, 'Yacht-Master', ' The Infinity Eclipse digital watch boasts a borde...', 'assets/poster-img/digital5.png', '1', 'Digital', '9899'),
(51, 'Pearlmaster', 'DS ', 'assets/poster-img/couple1.png', '5', 'Couples watch', '5900'),
(52, 'Yacht-Master\n', ' AS', 'assets/poster-img/couple2.png', '1', 'Couples watch', '5980'),
(53, 'Submariner', 'S ', 'assets/poster-img/couple3.png', '1', 'Couples watch', '7899'),
(54, 'Oyster Perpetual ', 'S ', 'assets/poster-img/couple4.png', '7', 'Couples watch', '7840'),
(55, 'Sea-Dweller', 'S ', 'assets/poster-img/couple5.png', '8', 'Couples watch', '78415'),
(56, 'Milgauss', 'S ', 'assets/poster-img/couple6.png', '1', 'Couples watch', '7860'),
(57, 'Cellini', 'S ', 'assets/poster-img/couple1.png', '1', 'Couples watch', '800'),
(58, 'Explorer', 'SQS ', 'assets/poster-img/couple4.png', '1', 'Couples watch', '7569'),
(59, 'Daytona', 'SS ', 'assets/poster-img/couple2.png', '1', 'Couples watch', '7850'),
(60, 'Aellini', 'S ', 'assets/poster-img/couple6.png', '1', 'Couples watch', '5890'),
(61, 'Pearlmaster', 'S ', 'assets/poster-img/women6.png', '1', 'Womens watch', '9800'),
(62, 'Submariner', 'DD ', 'assets/poster-img/womens1.png', '1', 'Womens watch', '98000'),
(63, 'Dweller', 'S ', 'assets/poster-img/womens2.png', '5', 'Womens watch', '5980'),
(64, 'Women Rolex®', 'S ', 'assets/poster-img/womens3.png', '5', 'Womens watch', '8900'),
(65, 'Milgauss', 'd ', 'assets/poster-img/womens4.png', '9', 'Womens watch', '4500'),
(66, 'Oysterquartz', 'k ', 'assets/poster-img/womens5.png', '9', 'Womens watch', '45000'),
(67, 'Pearlmaster', 's ', 'assets/poster-img/womens5.png', '1', 'Womens watch', '48000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_signup`
--

CREATE TABLE `tbl_signup` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `retype_pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_signup`
--

INSERT INTO `tbl_signup` (`id`, `name`, `email`, `password`, `retype_pass`) VALUES
(1, 'value-2', 'value-3', 'value-4', 'value-5'),
(2, '', '', '', ''),
(3, 'hassan', 'hassan@gmail.com', '12345', '12345'),
(4, '123', '123', '123', '123'),
(5, '', '', '', ''),
(6, '111', '1111', '111', '111'),
(7, '11', '11', '11', '11'),
(8, 'df', '', '', ''),
(9, '', '', '', ''),
(10, 'aa', 'qq', 'aa', 'aa'),
(11, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
