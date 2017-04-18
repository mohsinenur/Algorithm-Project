-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2017 at 04:54 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spath`
--

-- --------------------------------------------------------

--
-- Table structure for table `spath`
--

CREATE TABLE IF NOT EXISTS `spath` (
`id` int(11) NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `cost` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spath`
--

INSERT INTO `spath` (`id`, `source`, `destination`, `cost`) VALUES
(1, 'Shantibag', 'Malibag', '7'),
(2, 'Shantibag ', 'Mouchak', '9'),
(3, 'Shantibag', 'Tejgoan', '14'),
(4, 'Malibag', 'Shantibag', '7'),
(5, 'Malibag', 'Mouchak', '10'),
(6, 'Malibag', 'Wareless', '15'),
(7, 'Mouchak', 'Shantibag', '9'),
(8, 'Mouchak', 'Malibag', '10'),
(9, 'Mouchak', 'Wareless', '11'),
(10, 'Mouchak', 'Tejgoan', '2'),
(11, 'Mouchak', 'Shatrasta', '8'),
(12, 'Wareless', 'Malibag', '15'),
(13, 'Wareless', 'Mouchak', '11'),
(14, 'Wareless', 'Mogbazar', '6'),
(15, 'Wareless', 'Shatrasta', '7'),
(16, 'Mogbazar', 'Wareless', '6'),
(17, 'Mogbazar', 'Tibbat', '9'),
(18, 'Tejgaon', 'Shantibag', '14'),
(19, 'Tejgaon', 'Mouchak', '2'),
(20, 'Tejgaon', 'Mogbazar', '9'),
(21, 'Shatrasta', 'Wareless', '7'),
(22, 'Shatrasta', 'Mouchak', '8'),
(23, 'Tibbat', 'Mogbazar', '9'),
(24, 'Shantibag', 'Nabiscco', '18'),
(25, 'Mouchak', 'Nabiscco', '16'),
(26, 'Tejgaon', 'Nabiscco', '3'),
(27, 'Nabiscco', 'Tejgoan', '3'),
(28, 'Malibag', 'Mohakhali', '10'),
(29, 'Tibbat', 'Mohakhali', '5'),
(30, 'Mohakhali', 'Tibbat', '5'),
(31, 'Tibbat', 'Amtoli', '2'),
(32, 'Wareless', 'Amtoli', '4'),
(33, 'Amtoli', 'Wareless', '4'),
(34, 'Shantibag', 'Chairmanbari', '13'),
(35, 'Mogbazar', 'Chairmanbari', '10'),
(36, 'Chairmanbari', 'Mogbazar', '10'),
(37, 'Nabiscco', 'Shantibag', '18'),
(38, 'Amtoli', 'Banani', '3'),
(39, 'Tibbat', 'Banani', '5'),
(40, 'Banani', 'Amtoli', '3'),
(41, 'Mohakhali', 'Gulshan', '3'),
(42, 'Mohakhali', 'Hatirjhil', '4'),
(43, 'gulshan', 'Mohakhali', '3'),
(44, 'Mogbazar', 'Kawranbazar', '5'),
(45, 'Malibag', 'Kawranbazar', '10'),
(46, 'Kawranbazar', 'Malibag', '10'),
(47, 'KwarnBazar', 'Farmgate', '2'),
(48, 'Kawranbazar', 'Shantibag', '11'),
(49, 'Farmgate', 'Kawranbazar', '2'),
(50, 'Farmgate', 'Hatirpul', '2'),
(51, 'Hatirpul', 'Farmgate', '2'),
(52, 'Shantibag', 'Farmgate', '19'),
(53, 'Farmgate', 'Mogbazar', '5'),
(54, 'Farmgate', 'Shantibag', '19'),
(55, 'Wareless', 'Hatirpul', '10'),
(56, 'Tejgaon', 'Hatirpul', '8'),
(57, 'Hatirpul', 'Wareless', '10'),
(58, 'Dhanmondi', 'Hatirpul', '5'),
(59, 'Dhnmondi', 'Newmarket', '4'),
(60, 'Mogbaar', 'Dhanmondi', '18'),
(61, 'Kawranbazar', 'Dhanmondi', '16'),
(62, 'Dhanmondi', 'Mogbazar', '18'),
(63, 'Shantibag', 'Dhanmondi', '20'),
(64, 'Dhanmondi', 'Shantibag', '20'),
(65, 'Shantibag', 'Mohammadpur', '21'),
(66, 'Mogbazar', 'Mohammadpur', '16'),
(67, 'Mohammadpur', 'Shantibag', '21'),
(68, 'Shantibag', 'Shyamali', '22'),
(69, 'Mouchak', 'Shyamali', '19'),
(70, 'Shyamali', 'Shantibag', '22'),
(71, 'Kallayanpur', 'Dhanmondi', '5'),
(72, 'Dhanmondi', 'Kallayanpur', '5'),
(73, 'Shantibag', 'Gabtoli', '23'),
(74, 'Gabtoli', 'Shantibag', '23'),
(75, 'Malibag', 'Gabtoli', '18'),
(76, 'Gabtoli', 'Savar', '5'),
(77, 'Savar', 'Gabtoli', '5'),
(78, 'Nabiscco', 'Mirpur1', '17'),
(79, 'Mirpur1', 'Nabiscco', '17'),
(80, 'Mirpur1', 'Mirpur2', '1'),
(81, 'Mirpur2', 'Mirpur1', '1'),
(82, 'Mohakhali', 'Mirpur1', '15'),
(83, 'Mirpur2', 'Mirpur10', '3'),
(84, 'Mirpur10', 'Kajipara2', '4'),
(85, 'Kajipara', 'Mirpur10', '4'),
(86, 'Kajipara', 'Agargaon', '3'),
(87, 'Agargaon', 'Bijoysharani', '5'),
(88, 'Bijoysharani', 'Agargaon', '5'),
(89, 'Bijoysharani', 'Farmgate', '10'),
(90, 'Bijoysharani', 'Mohakhali Flyover', '8'),
(91, 'Mohakhali Flyover', 'Banani', '3'),
(92, 'Banani', 'Mohakhali Flyover', '3'),
(93, 'Banani', 'MES', '2'),
(94, 'MES', 'Bissharoad', '4'),
(95, 'Bissharoad', 'MES', '4'),
(96, 'Shyamali', 'Bissharoad', '3'),
(97, 'Bissharoad', 'Khilkhet', '5'),
(98, 'Khilkhet', 'Airport', '6'),
(99, 'Khilkhet', 'Banani', '2'),
(100, 'Airport', 'Jashimuddin', '3'),
(101, 'Jashimuddin', 'Uttara', '4'),
(102, 'Uttara', 'Abdullahpur', '6'),
(103, 'Abdullahpur', 'Banani', '7'),
(104, 'Banani', 'Abdullahpur', '7'),
(105, 'Abdullahpur', 'Tangi', '1'),
(106, 'Abdullahpur', 'Mirpur1', '5'),
(107, 'Mirpur1', 'Abdullahpur', '5'),
(108, 'Abdullahpur', 'Hatirpul', '12'),
(109, 'Hatirpul', 'Elephantroad', '3'),
(110, 'Elephantroad', 'Sciencelab', '6'),
(111, 'Sciencelab', 'Elephantroad', '6'),
(112, 'kataban', 'Shahbag', '7'),
(113, 'Shahbag', 'TSC', '8'),
(114, 'TSC', 'Shahbag', '8'),
(115, 'TSC', 'Doyelchattar', '4'),
(116, 'Doyelchattar', 'Pressclub', '5'),
(117, 'Pressclub', 'Doyelchattar', '5'),
(118, 'Pressclub', 'Paltan', '6'),
(119, 'Pressclub', 'Highcoart', '7'),
(120, 'Highcoart', 'Matshabhavan', '3'),
(121, 'Matshabhavan', 'Kakrail', '1'),
(122, 'Kakrail', 'Matshabhavan', '1'),
(123, 'Kakrail', 'Malibag', '2'),
(124, 'Kakrail', 'Bailyroad', '1'),
(125, 'Bailyroad', 'Mogbazar', '5'),
(126, 'Paltan', 'Pressclub', '6'),
(127, 'Paltan', 'Matijhil', '4'),
(128, 'Paltan', 'Fakirapul', '5'),
(129, 'Fakirapul', 'Rajarbag', '6'),
(130, 'Rajarbag', 'Malibag', '2'),
(131, 'Malibag', 'Rajarbag', '2'),
(132, 'Rajarbag', 'Shadarghat', '3'),
(133, 'Shadarghat', 'Purandhaka', '7'),
(134, 'Purandhaka', 'Shadarghat', '7'),
(135, 'Purandhaka', 'nawabpur', '12'),
(136, 'Nawabpur', 'Prandhaka', '12'),
(137, 'Nawabpur', 'Gulisthan', '8'),
(138, 'Gulisthan', 'Nawabpur', '8'),
(139, 'Gulisthan', 'GPO mor', '11'),
(140, 'GPO mor', 'Paltan', '3'),
(141, 'Paltan', 'GPO mor', '3'),
(142, 'GPO mor', 'Purandhaka', '8'),
(143, 'Purandhaka', 'GPO mor', '8'),
(144, 'Shadarghat', 'Rajarbag', '3'),
(145, 'Shadarghat', 'Collegeroad', '5'),
(146, 'Collegeroad', 'Newmarket', '4'),
(147, 'Newmarket', 'Collegeroad', '4'),
(148, 'Newmarket', 'Kataban', '2'),
(149, 'Kataban', 'Newmarket', '2'),
(150, 'Kataban', 'Fakirapul', '15'),
(151, 'Fakirapul', 'Kataban', '15'),
(152, 'Fakirapul', 'Kamlapur', '9'),
(153, 'kamlapur', 'Fakirapul', '9'),
(154, 'Kamlapur', 'Manikdi', '5'),
(155, 'Manikdi', 'Kamlapur', '5'),
(156, 'Manikdi', 'Saidabad', '8'),
(157, 'Saidabad', 'Manikdi', '8'),
(158, 'Saidabad', 'Jatrabari', '5'),
(159, 'Jatrabari', 'Saidabad', '5'),
(160, 'Jatrabari', 'Shanirakhra', '6'),
(161, 'Shanirakhra', 'Stadium', '3'),
(162, 'Stadium', 'Shanirakhra', '3'),
(163, 'Shanirakhra', 'Narayanganj road', '4'),
(164, 'Narayanganj road', 'Shanirakhra', '4'),
(165, 'Narayanganj road', 'Kachpur Bridge', '2'),
(166, 'Kachpur Bridge', 'Narayanganj road', '2'),
(167, 'Kachpur Bridge', 'Kamlapur', '10'),
(168, 'Kamlapur', 'Kachpur Bridge', '10'),
(169, 'kataban', 'Elephantroad', '3'),
(170, 'Elephantroag', 'Kataban', '3'),
(171, 'Kataban', 'Kolabagan', '2'),
(172, 'Kolabagan', 'Kataban', '2'),
(173, 'Kolabagan', 'Shahbag', '5'),
(174, 'Shahbag', 'Kolabagan', '5'),
(175, 'Shahbag', 'Shishupark', '1'),
(176, 'Shishupark', 'Shahbag', '1'),
(177, 'Shishupark', 'TSC', '4'),
(178, 'Technical', 'Mirpur1', '6'),
(179, 'Mirpr1', 'Technical', '6'),
(180, 'Gulshan', 'Badda', '8'),
(181, 'Badda', 'Gulshan', '8'),
(182, 'Badda ', 'Notunbazar', '3'),
(183, 'Notunbazar', 'Badda', '3'),
(184, 'Badda', 'Rampura', '6'),
(185, 'Rampura', 'Badda', '6'),
(186, 'Rampura', 'Banashree', '3'),
(187, 'Banashree', 'Rampura', '3'),
(188, 'Banashree', 'Malibag', '7'),
(189, 'Malibag', 'Banashree', '7'),
(190, 'Shantibag', 'Banashree', '9'),
(191, 'Banashree', 'Shantibag', '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `spath`
--
ALTER TABLE `spath`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `spath`
--
ALTER TABLE `spath`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=192;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
