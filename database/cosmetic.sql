-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2017 at 01:36 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmetic`
--

-- --------------------------------------------------------

--
-- Table structure for table `cosmetic_list`
--

CREATE TABLE `cosmetic_list` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ori_price` float NOT NULL,
  `new_price` float NOT NULL,
  `discount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cosmetic_list`
--

INSERT INTO `cosmetic_list` (`id`, `title`, `description`, `ori_price`, `new_price`, `discount`, `image`) VALUES
(1, 'MISS HANA', 'Long Lasting Ink Brow Tint 5g [2 Types To Choose]', 52.9, 47.9, '9%', 'img/miss_hana.png'),
(2, 'HANAKA', 'Chu Chu Lip Scrub 15ml [2 Types To Choose]', 43.9, 34.9, '21%', 'img/hanaka.png'),
(3, 'PERIPERA', 'Airy Ink Velvet 8g [5 Types To Choose]', 47.7, 39.9, '16%', 'img/peripera.png'),
(4, 'THE FACE SHOP', 'For Men Hydrating Emulsion 140ml', 83.9, 60.41, '28%', 'img/the_face_shop.png'),
(5, 'KATE', 'Glamour Eyes [#PK-1 Mauve Pink]', 55, 51.89, '6%', 'img/kate.png'),
(6, 'BIFESTA', 'Eye Makeup Remover 145ml', 26.9, 25.38, '6%', 'img/bifesta.png'),
(7, 'H20+', 'Sea Results Bath Shower Bath Gel 250ml [#Natural Spring]', 59, 55.66, '6%', 'img/h20+.png'),
(8, 'APRIL SKIN', 'Turn Up Bleach', 29.9, 19.9, '33%', 'img/april_skin.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cosmetic_list`
--
ALTER TABLE `cosmetic_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cosmetic_list`
--
ALTER TABLE `cosmetic_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
