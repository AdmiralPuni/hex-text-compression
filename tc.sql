-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 02:45 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tc`
--

-- --------------------------------------------------------

--
-- Table structure for table `wordlist`
--

CREATE TABLE `wordlist` (
  `id` int(11) NOT NULL,
  `word` varchar(50) NOT NULL,
  `hex` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wordlist`
--

INSERT INTO `wordlist` (`id`, `word`, `hex`) VALUES
(1, 'Test', '0'),
(2, 'Test', '1'),
(3, 'Test', '3'),
(4, 'Lorem', '1'),
(5, 'ipsum', '5'),
(6, 'dolor', '6'),
(7, 'amet', '7'),
(8, 'consectetur', '8'),
(9, 'adipiscing', '9'),
(10, 'elit', 'A'),
(11, 'Etiam', 'B'),
(12, 'imperdiet', 'C'),
(13, 'varius', 'D'),
(14, 'rhoncus', 'E'),
(15, 'Etiam', 'F'),
(16, 'felis', '10'),
(17, 'erat', '11'),
(18, 'scelerisque', '12'),
(19, 'accumsan', '13'),
(20, 'tempor', '14'),
(21, 'odio', '15'),
(22, 'diam', '16'),
(23, 'velit', '17'),
(24, 'laoreet', '18'),
(25, 'vehicula', '19'),
(26, 'posuere', '1A'),
(27, 'lorem', '1B'),
(28, 'vitae', '1C'),
(29, 'vestibulum', '1D'),
(30, 'Aenean', '1E'),
(31, 'bibendum', '1F'),
(32, 'semper', '20'),
(33, 'congue', '21'),
(34, 'Nullam', '22'),
(35, 'tincidunt', '23'),
(36, 'interdum', '24'),
(37, 'dictum', '25'),
(38, 'Vestibulum', '26'),
(39, 'quis', '27'),
(40, 'lectus', '28'),
(41, 'arcu', '29'),
(42, 'fermentum', '2A'),
(43, 'mattis', '2B'),
(44, 'eget', '2C'),
(45, 'massa', '2D'),
(46, 'Vivamus', '2E'),
(47, 'pharetra', '2F'),
(48, 'felis', '30'),
(49, 'mauris', '31'),
(50, 'Vivamus', '32'),
(51, 'quam', '33'),
(52, 'ante', '34'),
(53, 'scelerisque', '35'),
(54, 'aliquam', '36'),
(55, 'vitae', '37'),
(56, 'elementum', '38'),
(57, 'Proin', '39'),
(58, 'orci', '3A'),
(59, 'mauris', '3B'),
(60, 'Integer', '3C'),
(61, 'vitae', '3D'),
(62, 'mauris', '3E'),
(63, 'efficitur', '3F'),
(64, 'tristique', '40'),
(65, 'lorem', '41'),
(66, 'commodo', '42'),
(67, 'lorem', '43'),
(68, 'Nunc', '44'),
(69, 'egestas', '45'),
(70, 'turpis', '46'),
(71, 'maximus', '47'),
(72, 'dolor', '48'),
(73, 'sagittis', '49'),
(74, 'Cras', '4A'),
(75, 'ante', '4B'),
(76, 'interdum', '4C'),
(77, 'iaculis', '4D'),
(78, 'sapien', '4E'),
(79, 'vitae', '4F'),
(80, 'accumsan', '50'),
(81, 'nisi', '51'),
(82, 'Fusce', '52'),
(83, 'eget', '53'),
(84, 'consectetur', '54'),
(85, 'nisl', '55'),
(86, 'tincidunt', '56'),
(87, 'nulla', '57'),
(88, 'Etiam', '58'),
(89, 'diam', '59'),
(90, 'augue', '5A'),
(91, 'rutrum', '5B'),
(92, 'nibh', '5C'),
(93, 'dictum', '5D'),
(94, 'convallis', '5E'),
(95, 'quam', '5F'),
(96, 'Maecenas', '60'),
(97, 'iaculis', '61'),
(98, 'arcu', '62'),
(99, 'lacus', '63'),
(100, 'vitae', '64'),
(101, 'elementum', '65'),
(102, 'commodo', '66');

-- --------------------------------------------------------

--
-- Table structure for table `wordlist_unique`
--

CREATE TABLE `wordlist_unique` (
  `id` int(11) NOT NULL,
  `word` varchar(50) NOT NULL,
  `hex` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wordlist_unique`
--

INSERT INTO `wordlist_unique` (`id`, `word`, `hex`) VALUES
(1, 'enormous', 'A'),
(2, 'room', 'B'),
(3, 'ground', 'C'),
(4, 'floor', 'D'),
(5, 'faced', 'E'),
(6, 'towards', 'F'),
(7, 'north', '10'),
(8, 'Cold', '11'),
(9, 'summer', '12'),
(10, 'beyond', '13'),
(11, 'panes', '14'),
(12, 'tropical', '15'),
(13, 'heat', '16'),
(15, 'itself', '18'),
(16, 'harsh', '19'),
(17, 'thin', '1A'),
(18, 'light', '1B'),
(19, 'glared', '1C'),
(20, 'through', '1D'),
(21, 'windows', '1E'),
(22, 'hungrily', '1F'),
(23, 'seeking', '20'),
(24, 'some', '21'),
(25, 'draped', '22'),
(26, 'figure', '23'),
(28, 'pallid', '25'),
(29, 'shape', '26'),
(30, 'academic', '27'),
(31, 'goose-flesh', '28'),
(32, 'finding', '29'),
(33, 'only', '2A'),
(34, 'glass', '2B'),
(35, 'nickel', '2C'),
(36, 'bleakly', '2D'),
(37, 'shining', '2E'),
(38, 'porcelain', '2F'),
(39, 'laboratory', '30'),
(40, 'Wintriness', '31'),
(41, 'responded', '32'),
(43, 'overalls', '34'),
(44, 'workers', '35'),
(45, 'were', '36'),
(46, 'white', '37'),
(47, 'their', '38'),
(48, 'hands', '39'),
(49, 'gloved', '3A'),
(50, 'with', '3B'),
(51, 'pale', '3C'),
(52, 'corpse-coloured', '3D'),
(53, 'rubber', '3E'),
(55, 'frozen', '40'),
(56, 'dead', '41'),
(57, 'ghost', '42'),
(59, 'from', '44'),
(60, 'yellow', '45'),
(61, 'barrels', '46'),
(62, 'microscopes', '47'),
(63, 'borrow', '48'),
(64, 'certain', '49'),
(65, 'rich', '4A'),
(66, 'living', '4B'),
(67, 'substance', '4C'),
(68, 'lying', '4D'),
(69, 'along', '4E'),
(70, 'polished', '4F'),
(71, 'tubes', '50'),
(72, 'like', '51'),
(73, 'butter', '52'),
(74, 'streak', '53'),
(75, 'after', '54'),
(76, 'luscious', '55'),
(78, 'long', '57'),
(79, 'recession', '58'),
(80, 'down', '59'),
(81, 'work', '5A'),
(82, 'tables', '5B'),
(83, 'pointed', '5C'),
(84, 'very', '5D'),
(85, 'slowly', '5E'),
(86, 'moving', '5F'),
(87, 'band', '60'),
(88, 'rack-full', '61'),
(89, 'test-tubes', '62'),
(90, 'entering', '63'),
(91, 'large', '64'),
(92, 'metal', '65'),
(93, 'another', '66'),
(95, 'emerging', '68'),
(96, 'Machinery', '69'),
(97, 'faintly', '6A'),
(98, 'purred', '6B'),
(99, 'took', '6C'),
(100, 'eight', '6D'),
(101, 'minutes', '6E'),
(104, 'told', '71'),
(105, 'them', '72'),
(108, 'hard', '75'),
(109, 'X-rays', '76'),
(110, 'being', '77'),
(111, 'about', '78'),
(112, 'much', '79'),
(113, 'stand', '7A'),
(114, 'died;', '7B'),
(115, 'rest', '7C'),
(116, 'least', '7D'),
(117, 'susceptible', '7E'),
(118, 'divided', '7F'),
(119, 'into', '80'),
(120, 'two;', '81'),
(121, 'most', '82'),
(122, 'four', '83'),
(123, 'buds;', '84'),
(125, 'eight;', '86'),
(127, 'returned', '88'),
(128, 'incubators', '89'),
(129, 'where', '8A'),
(130, 'buds', '8B'),
(131, 'began', '8C'),
(132, 'develop;', '8D'),
(133, 'then', '8E'),
(135, 'days', '90'),
(137, 'suddenly', '92'),
(138, 'chilled', '93'),
(140, 'checked', '95'),
(145, 'turn', '9A'),
(146, 'budded;', '9B'),
(147, 'having', '9C'),
(148, 'budded', '9D'),
(150, 'dosed', '9F'),
(151, 'almost', 'A0'),
(152, 'death', 'A1'),
(154, 'alcohol;', 'A3'),
(155, 'consequently', 'A4'),
(156, 'burgeoned', 'A5'),
(157, 'again', 'A6'),
(159, 'buddedâ€“bud', 'A8'),
(160, 'budâ€“were', 'A9'),
(161, 'thereafterâ€“further', 'AA'),
(162, 'arrest', 'AB'),
(164, 'generally', 'AD'),
(165, 'fatalâ€“left', 'AE'),
(166, 'develop', 'AF'),
(167, 'peace', 'B0'),
(168, 'which', 'B1'),
(169, 'time', 'B2'),
(170, 'original', 'B3'),
(171, 'fair', 'B4'),
(172, 'becoming', 'B5'),
(173, 'anything', 'B6'),
(176, 'ninety-six', 'B9'),
(177, 'embryosâ€“', 'BA'),
(178, 'prodigious', 'BB'),
(179, 'improvement', 'BC'),
(180, 'will', 'BD'),
(181, 'agree', 'BE'),
(182, 'nature', 'BF'),
(183, 'Identical', 'C0'),
(184, 'twinsâ€“but', 'C1'),
(185, 'piddling', 'C2'),
(186, 'twos', 'C3'),
(187, 'threes', 'C4'),
(188, 'viviparous', 'C5'),
(190, 'when', 'C7'),
(191, 'would', 'C8'),
(192, 'sometimes', 'C9'),
(193, 'accidentally', 'CA'),
(194, 'divide;', 'CB'),
(195, 'actually', 'CC'),
(196, 'dozens', 'CD'),
(197, 'scores', 'CE'),
(199, 'Bottling', 'D0'),
(201, 'harmonious', 'D2'),
(202, 'bustle', 'D3'),
(203, 'ordered', 'D4'),
(204, 'activity', 'D5'),
(205, 'Flaps', 'D6'),
(206, 'fresh', 'D7'),
(207, 'sow\'s', 'D8'),
(208, 'peritoneum', 'D9'),
(209, 'ready', 'DA'),
(210, 'proper', 'DB'),
(211, 'size', 'DC'),
(212, 'came', 'DD'),
(213, 'shooting', 'DE'),
(214, 'little', 'DF'),
(215, 'lifts', 'E0'),
(217, 'Organ', 'E2'),
(218, 'Store', 'E3'),
(219, 'sub-basement', 'E4'),
(220, 'Whizz', 'E5'),
(222, 'click!', 'E7'),
(223, 'lift-hatches', 'E8'),
(224, 'open;', 'E9'),
(225, 'bottle-liner', 'EA'),
(227, 'reach', 'EC'),
(228, 'hand', 'ED'),
(229, 'take', 'EE'),
(230, 'flap', 'EF'),
(231, 'insert', 'F0'),
(232, 'smooth-down', 'F1'),
(233, 'before', 'F2'),
(234, 'lined', 'F3'),
(235, 'bottle', 'F4'),
(237, 'travel', 'F6'),
(240, 'endless', 'F9'),
(247, 'shot', '100'),
(249, 'depths', '102'),
(251, 'slipped', '104'),
(255, 'next', '108'),
(256, 'that', '109'),
(257, 'slow', '10A'),
(258, 'interminable', '10B'),
(259, 'procession', '10C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wordlist`
--
ALTER TABLE `wordlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wordlist_unique`
--
ALTER TABLE `wordlist_unique`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `word` (`word`),
  ADD UNIQUE KEY `hex` (`hex`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wordlist`
--
ALTER TABLE `wordlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `wordlist_unique`
--
ALTER TABLE `wordlist_unique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
