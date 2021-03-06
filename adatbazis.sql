-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hoszt: 127.0.0.1
-- Létrehozás ideje: 2015. Okt 26. 23:22
-- Szerver verzió: 5.6.21
-- PHP verzió: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `akifeladat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `idojaras_adatok`
--

CREATE TABLE IF NOT EXISTS `idojaras_adatok` (
`id` int(11) NOT NULL,
  `varos_id` int(11) NOT NULL,
  `homerseklet` varchar(20) NOT NULL,
  `paratartalom` varchar(30) NOT NULL,
  `legnyomas` varchar(100) NOT NULL,
  `idopont` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `idojaras_adatok`
--

INSERT INTO `idojaras_adatok` (`id`, `varos_id`, `homerseklet`, `paratartalom`, `legnyomas`, `idopont`) VALUES
(1, 1, ' 63.0 F (17.2 C)', ' 83%', ' 30.2 in. Hg (1022 hPa)', '2015-10-24 16:47:34'),
(2, 2, ' 46.0 F (7.8 C)', ' 70%', ' 30.4 in. Hg (1029 hPa)', '2015-10-24 16:47:34'),
(3, 3, ' 62.1 F (16.7 C)', ' 80%', ' 30.05 in. Hg (1017 hPa)', '2015-10-24 16:47:34'),
(4, 4, ' 66.0 F (18.9 C)', ' 96%', ' 30.03 in. Hg (1016 hPa)', '2015-10-24 16:47:34'),
(5, 7, ' 42.1 F (5.6 C)', ' 85%', ' 30.32 in. Hg (1026 hPa)', '2015-10-24 16:47:34'),
(6, 1, ' 63.0 F (17.2 C)', ' 83%', ' 30.2 in. Hg (1022 hPa)', '2015-10-24 16:48:10'),
(7, 2, ' 46.0 F (7.8 C)', ' 70%', ' 30.4 in. Hg (1029 hPa)', '2015-10-24 16:48:11'),
(8, 3, ' 62.1 F (16.7 C)', ' 80%', ' 30.05 in. Hg (1017 hPa)', '2015-10-24 16:48:11'),
(9, 4, ' 66.0 F (18.9 C)', ' 93%', ' 30.02 in. Hg (1016 hPa)', '2015-10-24 16:48:11'),
(10, 7, ' 42.1 F (5.6 C)', ' 85%', ' 30.32 in. Hg (1026 hPa)', '2015-10-24 16:48:11'),
(11, 1, ' 61.0 F (16.1 C)', ' 96%', ' 30.17 in. Hg (1021 hPa)', '2015-10-25 10:44:50'),
(12, 2, ' 59.0 F (15.0 C)', ' 69%', ' 30.09 in. Hg (1018 hPa)', '2015-10-25 10:44:50'),
(13, 3, ' 54.0 F (12.2 C)', ' 89%', ' 30.13 in. Hg (1020 hPa)', '2015-10-25 10:44:51'),
(14, 4, ' 55.9 F (13.3 C)', ' 93%', ' 30.1 in. Hg (1019 hPa)', '2015-10-25 10:44:51'),
(15, 7, ' 36.0 F (2.2 C)', ' 92%', ' 30.36 in. Hg (1028 hPa)', '2015-10-25 10:44:51'),
(16, 1, ' 61.0 F (16.1 C)', ' 96%', ' 30.17 in. Hg (1021 hPa)', '2015-10-25 11:00:18'),
(17, 2, ' 59.0 F (15.0 C)', ' 69%', ' 30.09 in. Hg (1018 hPa)', '2015-10-25 11:00:18'),
(18, 3, ' 54.0 F (12.2 C)', ' 86%', ' 30.14 in. Hg (1020 hPa)', '2015-10-25 11:00:18'),
(19, 4, ' 55.9 F (13.3 C)', ' 93%', ' 30.1 in. Hg (1019 hPa)', '2015-10-25 11:00:18'),
(20, 7, ' 35.1 F (1.7 C)', ' 92%', ' 30.36 in. Hg (1028 hPa)', '2015-10-25 11:00:18'),
(21, 1, ' 61.0 F (16.1 C)', ' 96%', ' 30.17 in. Hg (1021 hPa)', '2015-10-25 11:00:29'),
(22, 2, ' 59.0 F (15.0 C)', ' 69%', ' 30.09 in. Hg (1018 hPa)', '2015-10-25 11:00:29'),
(23, 3, ' 54.0 F (12.2 C)', ' 86%', ' 30.14 in. Hg (1020 hPa)', '2015-10-25 11:00:29'),
(24, 4, ' 55.9 F (13.3 C)', ' 93%', ' 30.1 in. Hg (1019 hPa)', '2015-10-25 11:00:29'),
(25, 7, ' 35.1 F (1.7 C)', ' 92%', ' 30.36 in. Hg (1028 hPa)', '2015-10-25 11:00:29'),
(26, 1, ' 61.0 F (16.1 C)', ' 96%', ' 30.17 in. Hg (1021 hPa)', '2015-10-25 11:15:01'),
(27, 2, ' 59.0 F (15.0 C)', ' 66%', ' 30.06 in. Hg (1017 hPa)', '2015-10-25 11:15:01'),
(28, 3, ' 54.0 F (12.2 C)', ' 86%', ' 30.14 in. Hg (1020 hPa)', '2015-10-25 11:15:02'),
(29, 4, ' 55.9 F (13.3 C)', ' 93%', ' 30.1 in. Hg (1019 hPa)', '2015-10-25 11:15:02'),
(30, 7, ' 35.1 F (1.7 C)', ' 92%', ' 30.36 in. Hg (1028 hPa)', '2015-10-25 11:15:02'),
(31, 1, ' 61.0 F (16.1 C)', ' 100%', ' 30.19 in. Hg (1022 hPa)', '2015-10-25 12:47:16'),
(32, 2, ' 59.0 F (15.0 C)', ' 69%', ' 30.08 in. Hg (1018 hPa)', '2015-10-25 12:47:16'),
(33, 3, ' 53.1 F (11.7 C)', ' 82%', ' 30.18 in. Hg (1022 hPa)', '2015-10-25 12:47:16'),
(34, 4, ' 57.0 F (13.9 C)', ' 93%', ' 30.09 in. Hg (1018 hPa)', '2015-10-25 12:47:16'),
(35, 7, ' 34.0 F (1.1 C)', ' 92%', ' 30.36 in. Hg (1028 hPa)', '2015-10-25 12:47:16'),
(36, 1, ' 66.0 F (18.9 C)', ' 89%', ' 30.21 in. Hg (1023 hPa)', '2015-10-25 17:19:01'),
(37, 2, ' 60.1 F (15.6 C)', ' 77%', ' 30.06 in. Hg (1017 hPa)', '2015-10-25 17:19:01'),
(38, 3, ' 53.1 F (11.7 C)', ' 66%', ' 30.31 in. Hg (1026 hPa)', '2015-10-25 17:19:01'),
(39, 4, ' 59.0 F (15.0 C)', ' 86%', ' 30.14 in. Hg (1020 hPa)', '2015-10-25 17:19:01'),
(40, 7, ' 50.0 F (10.0 C)', ' 60%', ' 30.38 in. Hg (1028 hPa)', '2015-10-25 17:19:01'),
(41, 1, ' 66.0 F (18.9 C)', ' 89%', ' 30.21 in. Hg (1023 hPa)', '2015-10-25 17:19:38'),
(42, 2, ' 60.1 F (15.6 C)', ' 77%', ' 30.06 in. Hg (1017 hPa)', '2015-10-25 17:19:38'),
(43, 3, ' 53.1 F (11.7 C)', ' 66%', ' 30.31 in. Hg (1026 hPa)', '2015-10-25 17:19:38'),
(44, 4, ' 59.0 F (15.0 C)', ' 86%', ' 30.14 in. Hg (1020 hPa)', '2015-10-25 17:19:38'),
(45, 7, ' 50.0 F (10.0 C)', ' 60%', ' 30.38 in. Hg (1028 hPa)', '2015-10-25 17:19:38'),
(46, 1, ' 61.0 F (16.1 C)', ' 100%', ' 30.19 in. Hg (1022 hPa)', '2015-10-26 17:37:03'),
(47, 2, ' 53.1 F (11.7 C)', ' 48%', ' 30.44 in. Hg (1030 hPa)', '2015-10-26 17:37:03'),
(48, 3, ' 55.0 F (12.8 C)', ' 50%', ' 30.41 in. Hg (1029 hPa)', '2015-10-26 17:37:03'),
(49, 4, ' 60.1 F (15.6 C)', ' 69%', ' 30.06 in. Hg (1017 hPa)', '2015-10-26 17:37:03'),
(50, 7, ' 57.0 F (13.9 C)', ' 47%', ' 30.17 in. Hg (1021 hPa)', '2015-10-26 17:37:03'),
(51, 1, ' 60.1 F (15.6 C)', ' 100%', ' 30.19 in. Hg (1022 hPa)', '2015-10-26 18:38:08'),
(52, 2, ' 54.0 F (12.2 C)', ' 48%', ' 30.43 in. Hg (1030 hPa)', '2015-10-26 18:38:08'),
(53, 3, ' 57.9 F (14.4 C)', ' 45%', ' 30.39 in. Hg (1029 hPa)', '2015-10-26 18:38:08'),
(54, 4, ' 63.0 F (17.2 C)', ' 67%', ' 30.05 in. Hg (1017 hPa)', '2015-10-26 18:38:08'),
(55, 7, ' 61.0 F (16.1 C)', ' 40%', ' 30.16 in. Hg (1021 hPa)', '2015-10-26 18:38:08'),
(56, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:04:33'),
(57, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:04:33'),
(58, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:04:33'),
(59, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:04:33'),
(60, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:04:33'),
(61, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:05:48'),
(62, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:05:48'),
(63, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:05:49'),
(64, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:05:49'),
(65, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:05:49'),
(66, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:06:50'),
(67, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:06:50'),
(68, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:06:50'),
(69, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:06:50'),
(70, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:06:50'),
(71, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:08:47'),
(72, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:08:47'),
(73, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:08:47'),
(74, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:08:48'),
(75, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:08:48'),
(76, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:10:56'),
(77, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:10:57'),
(78, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:10:57'),
(79, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:10:57'),
(80, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:10:57'),
(81, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:11:06'),
(82, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:11:06'),
(83, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:11:06'),
(84, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:11:07'),
(85, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:11:08'),
(86, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:11:16'),
(87, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:11:16'),
(88, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:11:16'),
(89, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:11:16'),
(90, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:11:16'),
(91, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:11:34'),
(92, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:11:34'),
(93, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:11:34'),
(94, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:11:34'),
(95, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:11:35'),
(96, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:15:14'),
(97, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:15:15'),
(98, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:15:15'),
(99, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:15:15'),
(100, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:15:15'),
(101, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:15:39'),
(102, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:15:39'),
(103, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:15:39'),
(104, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:15:39'),
(105, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:15:39'),
(106, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:16:05'),
(107, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:16:05'),
(108, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:16:05'),
(109, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:16:05'),
(110, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:16:05'),
(111, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:17:37'),
(112, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:17:37'),
(113, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:17:37'),
(114, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:17:37'),
(115, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:17:37'),
(116, 1, ' 59.0 F (15.0 C)', ' 96%', ' 30.15 in. Hg (1020 hPa)', '2015-10-26 21:17:58'),
(117, 2, ' 57.9 F (14.4 C)', ' 34%', ' 30.4 in. Hg (1029 hPa)', '2015-10-26 21:17:58'),
(118, 3, ' 62.1 F (16.7 C)', ' 36%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 21:17:58'),
(119, 4, ' 71.1 F (21.7 C)', ' 58%', ' 29.94 in. Hg (1013 hPa)', '2015-10-26 21:17:58'),
(120, 7, ' 64.0 F (17.8 C)', ' 37%', ' 30.08 in. Hg (1018 hPa)', '2015-10-26 21:17:58'),
(121, 1, ' 55.0 F (12.8 C)', ' 96%', ' 30.17 in. Hg (1021 hPa)', '2015-10-26 23:20:15'),
(122, 2, ' 55.9 F (13.3 C)', ' 35%', ' 30.41 in. Hg (1029 hPa)', '2015-10-26 23:20:15'),
(123, 3, ' 59.0 F (15.0 C)', ' 40%', ' 30.31 in. Hg (1026 hPa)', '2015-10-26 23:20:15'),
(124, 4, ' 73.0 F (22.8 C)', ' 55%', ' 29.91 in. Hg (1012 hPa)', '2015-10-26 23:20:15'),
(125, 7, ' 64.0 F (17.8 C)', ' 31%', ' 30.06 in. Hg (1017 hPa)', '2015-10-26 23:20:15');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `varosok`
--

CREATE TABLE IF NOT EXISTS `varosok` (
`varos_id` int(11) NOT NULL,
  `varos_nev` varchar(50) NOT NULL,
  `koordinata` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `varosok`
--

INSERT INTO `varosok` (`varos_id`, `varos_nev`, `koordinata`) VALUES
(1, 'Atlanta', '33.747998, -84.387647'),
(2, 'New York', '40.714159, -74.003034'),
(3, 'Columbus', '32.460857, -84.990087'),
(4, 'Dallas', '32.776144, -96.795205'),
(7, 'Las Vegas', '36.172048, -115.139302');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `idojaras_adatok`
--
ALTER TABLE `idojaras_adatok`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `varosok`
--
ALTER TABLE `varosok`
 ADD PRIMARY KEY (`varos_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `idojaras_adatok`
--
ALTER TABLE `idojaras_adatok`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `varosok`
--
ALTER TABLE `varosok`
MODIFY `varos_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
