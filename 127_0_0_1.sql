-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2023-12-02 07:41:59
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `base`
--
CREATE DATABASE IF NOT EXISTS `base` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `base`;

-- --------------------------------------------------------

--
-- 表的结构 `coaches`
--

CREATE TABLE `coaches` (
  `id` int(11) NOT NULL,
  `name` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `coaches`
--

INSERT INTO `coaches` (`id`, `name`) VALUES
(1, 'Kristy Keppich-Birrell'),
(2, 'Tanya Dearns'),
(3, 'Sue Hawkins'),
(4, 'Simone McKinnis'),
(5, 'Rob Wright'),
(6, 'Debbie Fuller'),
(7, 'Roselee Jencke'),
(8, 'Noeline Taurua'),
(9, 'Julie Fitzgerald'),
(10, 'Stacey Rosman');

-- --------------------------------------------------------

--
-- 表的结构 `games`
--

CREATE TABLE `games` (
  `home_id` int(11) DEFAULT NULL,
  `away_id` int(11) DEFAULT NULL,
  `home_score` int(11) DEFAULT NULL,
  `away_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `games`
--

INSERT INTO `games` (`home_id`, `away_id`, `home_score`, `away_score`) VALUES
(6, 8, 57, 58),
(7, 3, 70, 55),
(10, 1, 63, 44),
(5, 4, 57, 42),
(2, 9, 57, 56),
(5, 9, 78, 50),
(1, 4, 44, 59),
(8, 3, 58, 58),
(6, 10, 44, 54),
(7, 2, 61, 45),
(4, 7, 47, 58),
(5, 1, 68, 44),
(10, 3, 64, 50),
(9, 8, 53, 63),
(2, 6, 52, 52),
(1, 7, 46, 58),
(10, 5, 52, 63),
(8, 2, 67, 54),
(3, 6, 56, 55),
(8, 10, 69, 62),
(7, 5, 61, 51),
(4, 9, 57, 34),
(2, 3, 57, 58),
(6, 1, 52, 49),
(7, 6, 70, 42),
(5, 2, 79, 41),
(1, 8, 54, 69),
(3, 4, 48, 69),
(9, 10, 44, 58),
(10, 7, 52, 61),
(4, 5, 51, 59),
(3, 9, 57, 58),
(6, 2, 55, 53),
(9, 6, 49, 45),
(10, 4, 53, 54),
(7, 1, 62, 51),
(3, 5, 52, 73),
(2, 8, 63, 67),
(4, 1, 57, 51),
(5, 7, 58, 54),
(8, 6, 66, 60),
(9, 2, 54, 44),
(7, 4, 56, 44),
(1, 10, 51, 63),
(3, 8, 51, 81),
(6, 9, 51, 54),
(8, 7, 66, 51),
(5, 10, 57, 58),
(4, 6, 69, 46),
(2, 1, 46, 60),
(9, 3, 56, 55),
(1, 5, 53, 67),
(4, 10, 60, 55),
(8, 9, 64, 54),
(3, 2, 59, 64),
(8, 4, 65, 56),
(10, 2, 70, 47),
(1, 3, 58, 55),
(6, 5, 53, 59),
(9, 7, 47, 71),
(6, 3, 62, 54),
(5, 8, 59, 59),
(7, 10, 63, 52),
(9, 1, 56, 55),
(2, 4, 53, 66);

-- --------------------------------------------------------

--
-- 表的结构 `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `at_team` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `matches`
--

INSERT INTO `matches` (`id`, `at_team`) VALUES
(1, 6),
(2, 7),
(3, 10),
(4, 5),
(5, 2),
(6, 5),
(7, 1),
(8, 8),
(9, 6),
(10, 7),
(11, 4),
(12, 5),
(13, 10),
(14, 9),
(15, 2),
(16, 1),
(17, 10),
(18, 8),
(19, 3),
(20, 8),
(21, 7),
(22, 4),
(23, 2),
(24, 6),
(25, 7),
(26, 5),
(27, 1),
(28, 3),
(29, 9),
(30, 10),
(31, 4),
(32, 3),
(33, 6),
(34, 9),
(35, 10),
(36, 7),
(37, 3),
(38, 2),
(39, 4),
(40, 5),
(41, 8),
(42, 9),
(43, 7),
(44, 1),
(45, 3),
(46, 6),
(47, 8),
(48, 5),
(49, 4),
(50, 2),
(51, 9),
(52, 1),
(53, 4),
(54, 8),
(55, 3),
(56, 8),
(57, 10),
(58, 1),
(59, 6),
(60, 9),
(61, 6),
(62, 5),
(63, 7),
(64, 9),
(65, 2);

-- --------------------------------------------------------

--
-- 表的结构 `match_teams`
--

CREATE TABLE `match_teams` (
  `match_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `match_teams`
--

INSERT INTO `match_teams` (`match_id`, `team_id`, `score`) VALUES
(1, 6, 57),
(1, 8, 58),
(2, 7, 70),
(2, 3, 55),
(3, 10, 63),
(3, 1, 44),
(4, 5, 57),
(4, 4, 42),
(5, 2, 57),
(5, 9, 56),
(6, 5, 78),
(6, 9, 50),
(7, 1, 44),
(7, 4, 59),
(8, 8, 58),
(8, 3, 58),
(9, 6, 44),
(9, 10, 54),
(10, 7, 61),
(10, 2, 45),
(11, 4, 47),
(11, 7, 58),
(12, 5, 68),
(12, 1, 44),
(13, 10, 64),
(13, 3, 50),
(14, 9, 53),
(14, 8, 63),
(15, 2, 52),
(15, 6, 52),
(16, 1, 46),
(16, 7, 58),
(17, 10, 52),
(17, 5, 63),
(18, 8, 67),
(18, 2, 54),
(19, 3, 56),
(19, 6, 55),
(20, 8, 69),
(20, 10, 62),
(21, 7, 61),
(21, 5, 51),
(22, 4, 57),
(22, 9, 34),
(23, 2, 57),
(23, 3, 58),
(24, 6, 52),
(24, 1, 49),
(25, 7, 70),
(25, 6, 42),
(26, 5, 79),
(26, 2, 41),
(27, 1, 54),
(27, 8, 69),
(28, 3, 48),
(28, 4, 69),
(29, 9, 44),
(29, 10, 58),
(30, 10, 52),
(30, 7, 61),
(31, 4, 51),
(31, 5, 59),
(32, 3, 57),
(32, 9, 58),
(33, 6, 55),
(33, 2, 53),
(34, 9, 49),
(34, 6, 45),
(35, 10, 53),
(35, 4, 54),
(36, 7, 62),
(36, 1, 51),
(37, 3, 52),
(37, 5, 73),
(38, 2, 63),
(38, 8, 67),
(39, 4, 57),
(39, 1, 51),
(40, 5, 58),
(40, 7, 54),
(41, 8, 66),
(41, 6, 60),
(42, 9, 54),
(42, 2, 44),
(43, 7, 56),
(43, 4, 44),
(44, 1, 51),
(44, 10, 63),
(45, 3, 51),
(45, 8, 81),
(46, 6, 51),
(46, 9, 54),
(47, 8, 66),
(47, 7, 51),
(48, 5, 57),
(48, 10, 58),
(49, 4, 69),
(49, 6, 46),
(50, 2, 46),
(50, 1, 60),
(51, 9, 56),
(51, 3, 55),
(52, 1, 53),
(52, 5, 67),
(53, 4, 60),
(53, 10, 55),
(54, 8, 64),
(54, 9, 54),
(55, 3, 59),
(55, 2, 64),
(56, 8, 65),
(56, 4, 56),
(57, 10, 70),
(57, 2, 47),
(58, 1, 58),
(58, 3, 55),
(59, 6, 53),
(59, 5, 59),
(60, 9, 47),
(60, 7, 71),
(61, 6, 62),
(61, 3, 54),
(62, 5, 59),
(62, 8, 59),
(63, 7, 63),
(63, 10, 52),
(64, 9, 56),
(64, 1, 55),
(65, 2, 53),
(65, 4, 66);

-- --------------------------------------------------------

--
-- 表的结构 `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(90) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `hometown` varchar(90) DEFAULT NULL,
  `team` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `players`
--

INSERT INTO `players` (`id`, `name`, `height`, `hometown`, `team`) VALUES
(1, 'Emily Beaton', 180, 'Loxton, SA', 1),
(2, 'Erin Bell', 178, 'Sydney, NSW', 1),
(3, 'Stephanie Puopolo', 181, 'Melbourne, Victoria', 1),
(4, 'Samantha Poolman', 189, 'Newcastle, NSW', 1),
(5, 'Madeleine Proud', 174, 'Adelaide, SA', 1),
(6, 'Kate Shimmin', 186, 'Adelaide, SA', 1),
(7, 'Khao Watts', 170, 'Millicent, South Australia', 1),
(8, 'Amy Steel', 190, 'Melbourne, VIC', 1),
(9, 'Carla Borrego', 193, 'Jamaica', 1),
(10, 'Hannah Petty', 177, 'Adelaide, South Australia', 1),
(11, 'Sarah Klau', 190, 'null', 1),
(12, 'Jade Clarke', 174, 'Manchester, England', 1),
(13, 'Katrina Grant', 186, 'Papakura, NZ', 2),
(14, 'Jodi Brown', 185, 'Whanganui, NZ', 2),
(15, 'Ameliaranne Wells', 186, 'Bundaberg, QLD', 2),
(16, 'Phoenix Karaka', 186, 'Auckland, New Zealand', 2),
(17, 'Elias Scheres', 178, 'Tokoroa, NZ', 2),
(18, 'Whitney Souness', 174, 'Porirua, NZ', 2),
(19, 'Blaze Leslie', 180, 'Karratha, Western Australia', 2),
(20, 'Jacinta Messer', 184, 'Brisbane, Queensland', 2),
(21, 'Samon Nathan', 178, 'Waitakere, New Zealand', 2),
(22, 'Chelsea Locke', 181, 'Paddington, New South Wales', 2),
(23, 'Kate Wells', 176, 'Stratford, New Zealand', 2),
(24, 'Maia Wilson', 189, 'Auckland, New Zealand', 2),
(25, 'Anna Thompson', 175, 'Christchurch, NZ', 3),
(26, 'Bailey Mes', 187, 'Auckland, NZ', 3),
(27, 'Gemma Hazeldine', 170, 'Christchurch, NZ', 3),
(28, 'Mwai Kumwenda', 183, 'Mzimba, MAW', 3),
(29, 'Nicola Mackle', 169, 'Timaru, New Zealand', 3),
(30, 'Jess Moulds', 188, 'Helensville, NZ', 3),
(31, 'Erikana Pedersen', 173, 'Auckland, NZ', 3),
(32, ' Hayley Saunders', 179, 'Gore, NZ', 3),
(33, 'Louise Thayer', 185, 'Invercargill, NZ', 3),
(34, 'Zoe Walker', 183, 'Nelson, NZ', 3),
(35, 'Charlotte Elley', 174, 'Westport, New Zealand', 3),
(36, 'Olivia Coughlan', 188, 'Palmerston North', 3),
(37, 'Alice Teague-Neeld', 183, 'Bundoora, VIC', 4),
(38, 'Karyn Bailey', 193, 'Williamstown, VIC', 4),
(39, 'Emily Mannix', 187, 'Geelong, VIC', 4),
(40, 'Geva Mentor', 188, 'Bournemouth, ENG', 4),
(41, 'Kate Moloney', 177, 'Greensborough, VIC', 4),
(42, 'Madison Robinson', 168, 'Geelong, Victoria', 4),
(43, 'Chloe Watson', 183, 'Fitzroy, VIC', 4),
(44, 'Elizabeth Watson', 178, 'Carlton, VIC', 4),
(45, 'Joanna Weston', 188, 'Corowa, VIC', 4),
(46, 'Kelsey Browne', 164, 'Geelong, VIC', 4),
(47, 'Emma Ryde', 197, 'Dandenong, Victoria', 4),
(48, 'Kimberlee Green', 176, 'Sydney, New South Wales', 5),
(49, 'Paige Hadley', 173, 'Sydney, New South Wales', 5),
(50, 'Sharni Layton', 187, 'Melbourne, Victoria', 5),
(51, 'Abbey McCulloch', 178, 'Sydney, NSW', 5),
(52, 'Susan Pettitt', 180, 'Canberra, ACT', 5),
(53, 'Caitlin Thwaites', 188, 'Bendigo, VIC', 5),
(54, 'Stephanie Wood', 175, 'Hyde Park, Queensland', 5),
(55, 'Laura Langman', 173, 'Waikato, New Zealand', 5),
(56, 'Kaitlyn Bryce', 170, 'Nowra, New South Wales', 5),
(57, 'Lauren Moore', 184, 'Sydney, New South Wales', 5),
(58, 'Amy Sommerville', 180, 'Sydney, New South Wales', 5),
(59, 'Maddy Turner', 183, 'Adelaide, South Australia', 5),
(60, 'Kayla Cullen', 185, 'Auckland, New Zealand', 6),
(61, 'Temalisi Fakahokotau', 182, 'Auckland, New Zealand', 6),
(62, 'Serena Guthrie', 180, 'Jersey, United Kingdom', 6),
(63, 'Cathrine Tuivaiti', 189, 'Auckland, New Zealand', 6),
(64, 'Nadia Loveday', 171, 'Auckland, New Zealand', 6),
(65, 'Sulu Fitzpatrick', 188, 'Auckland, New Zealand', 6),
(66, 'Maria Tutaia', 188, 'Tokoroa, New Zealand', 6),
(67, 'Megan Craig', 203, 'Lower Hutt, New Zealand', 6),
(68, 'Holly Fowler', 182, 'Auckland, New Zealand', 6),
(69, 'Anna Harrison', 190, 'Westport, New Zealand', 6),
(70, 'Michaela Sokolich-Beatson', 183, 'Auckland, New Zealand', 6),
(71, 'Fa\'amu Ioane', 172, 'Apia, Samoa', 6),
(72, 'Romelda Aiken', 196, 'Jamaica', 7),
(73, 'Laura Clemesha', 190, 'Toowoomba, Queensland', 7),
(74, 'Beryl Friday', 184, 'Ingham, Queensland', 7),
(75, 'Laura Geitz', 185, 'Ipswich, Queensland', 7),
(76, 'Clare McMeniman', 185, 'Brisbane, Queensland', 7),
(77, 'Caitlyn Nevins', 173, 'Echuca, Victoria', 7),
(78, 'Kimberley Ravaillion', 176, 'Strathfield, New South Wales', 7),
(79, 'Gabrielle Simpson', 176, 'Sydney, New South Wales', 7),
(80, 'Gretel Tippett', 192, 'Gold Coast, Queensland', 7),
(81, 'Mahalia Cassidy', 173, 'Redcliffe, Queensland', 7),
(82, 'Hulita Haukinima', 178, 'Logan, Queensland', 7),
(83, 'Chelsea Lemke', 182, 'Gawler, South Australia', 7),
(84, 'Te Huinga Reo Selby-Rickit', 184, 'Hamilton, NZ', 8),
(85, 'Gina Crampton', 174, 'Hamilton, New Zealand', 8),
(86, 'Jhaniele Fowler-Reid', 198, 'Montego Bay, Jamaica', 8),
(87, 'Shannon Francois', 178, 'Motueka, New Zealand', 8),
(88, 'Wendy Frew', 174, 'Invercargill, New Zealand', 8),
(89, 'Brooke Leaver', 183, 'Auckland, New Zealand', 8),
(90, 'Stacey Peeters', 173, 'Matamata, New Zealand', 8),
(91, 'Storm Purvis', 186, 'Christchurch, New Zealand', 8),
(92, 'Te Paea Selby-Rickit', 188, 'Otaki, New Zealand', 8),
(93, 'Jane Watson', 181, 'Christchurch, New Zealand', 8),
(94, 'Abby Erwood', 181, 'Dunedin, New Zealand', 8),
(95, 'Jamie Hume', 182, 'Clyde, New Zealand', 8),
(96, 'Leana de Bruin', 190, 'Bethlehem, South Africa', 9),
(97, 'Ellen Halpenny', 185, 'Napier, New Zealand', 9),
(98, 'Joanne Harten', 188, 'Essex, ENG', 9),
(99, 'Kelly Jury', 192, 'Stratford, New Zealand', 9),
(100, 'Kristiana Manu\'a', 182, 'Wellington, New Zealand', 9),
(101, 'Malia Paseka', 183, 'Auckland, New Zealand', 9),
(102, 'Jamie-Lee Price', 179, 'Sydney, New South Wales', 9),
(103, 'Grace Rasmussen', 177, 'Auckland, New Zealand', 9),
(104, 'Samantha Sinclair', 171, 'Rotorua, New Zealand', 9),
(105, ' Courtney Tairi', 180, 'Sydney, New South Wales', 9),
(106, 'Katherine Coffin', 182, 'Hamilton, New Zealand', 9),
(107, 'Paula Griffin', 1, 'Auckland, New Zealand', 9),
(108, 'Verity Simmons', 170, 'Liverpool, New South Wales', 10),
(109, 'Cailtin Bassett', 193, 'Perth, Western Australia', 10),
(110, 'Kate Beveridge', 193, 'Perth, Western Australia', 10),
(111, 'Ashleigh Brazill', 175, 'Campbelltown, NSW', 10),
(112, 'Shae Brown', 181, 'Melbourne, Victoria', 10),
(113, 'Courtney Bruce', 189, 'Gosnells, Western Australia', 10),
(114, 'Ingrid Colyer', 165, 'Karridale, Western Australia', 10),
(115, 'Josie Janz-Dawson', 185, 'Thursday Island, Queensland', 10),
(116, 'April Brandley', 185, 'Nowra, New South Wales', 10),
(117, 'Natalie Medhurst', 175, 'Warracknabeal, Victoria', 10),
(118, 'Erena Mikaere', 193, 'Rotorua, New Zealand', 10),
(119, 'Kaylia Stanton', 189, 'Perth, Western Australia', 10);

-- --------------------------------------------------------

--
-- 表的结构 `player_positions`
--

CREATE TABLE `player_positions` (
  `player_id` int(11) DEFAULT NULL,
  `position` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `player_positions`
--

INSERT INTO `player_positions` (`player_id`, `position`) VALUES
(1, 'WA'),
(1, 'C'),
(2, 'GA'),
(2, 'WA'),
(2, 'GS'),
(3, 'GA'),
(3, 'GS'),
(4, 'GK'),
(4, 'GD'),
(5, 'C'),
(5, 'WA'),
(6, 'GK'),
(6, 'GD'),
(7, 'WA'),
(7, 'C'),
(7, 'WD'),
(8, 'GD'),
(8, 'GK'),
(8, 'WD'),
(9, 'GA'),
(9, 'GS'),
(10, 'C'),
(10, 'WA'),
(11, 'GK'),
(11, 'GD'),
(12, 'WD'),
(12, 'C'),
(12, 'WA'),
(13, 'GD'),
(13, 'GK'),
(14, 'GA'),
(14, 'GS'),
(15, 'GS'),
(15, 'GA'),
(16, 'GK'),
(16, 'GD'),
(16, 'GS'),
(17, 'WD'),
(17, 'C'),
(18, 'WA'),
(18, 'C'),
(18, 'GA'),
(19, 'GA'),
(19, 'GS'),
(20, 'GK'),
(20, 'GD'),
(21, 'C'),
(21, 'WD'),
(22, 'WA'),
(22, 'C'),
(22, 'GA'),
(23, 'WD'),
(24, 'GS'),
(25, 'GA'),
(25, 'WA'),
(25, 'GS'),
(26, 'WA'),
(26, 'GS'),
(26, 'GA'),
(27, 'GA'),
(27, 'WA'),
(27, 'C'),
(28, 'GS'),
(28, 'GA'),
(29, 'WA'),
(29, 'C'),
(30, 'GK'),
(30, 'GD'),
(31, 'WD'),
(31, 'C'),
(31, 'WA'),
(32, 'WD'),
(32, 'C'),
(33, 'GK'),
(33, 'GD'),
(33, 'WD'),
(34, 'GK'),
(34, 'GD'),
(34, 'WD'),
(35, 'WD'),
(35, 'C'),
(36, 'GK'),
(37, 'GA'),
(37, 'GS'),
(38, 'GS'),
(38, 'GA'),
(39, 'GK'),
(39, 'GD'),
(40, 'GK'),
(40, 'GD'),
(40, 'WD'),
(41, 'WD'),
(41, 'C'),
(42, 'WA'),
(42, 'C'),
(43, 'GD'),
(43, 'WD'),
(44, 'C'),
(44, 'WA'),
(45, 'GD'),
(45, 'GK'),
(45, 'WD'),
(46, 'WA'),
(47, 'GS'),
(47, 'GA'),
(48, 'C'),
(48, 'WA'),
(49, 'C'),
(49, 'WA'),
(49, 'WD'),
(50, 'GK'),
(50, 'GD'),
(50, 'WD'),
(51, 'WD'),
(51, 'C'),
(52, 'GA'),
(52, 'GS'),
(53, 'GS'),
(54, 'GA'),
(54, 'GS'),
(54, 'WA'),
(55, 'C'),
(55, 'WD'),
(55, 'WA'),
(56, 'WA'),
(56, 'C'),
(57, 'GD'),
(58, 'GS'),
(59, 'GD'),
(60, 'GD'),
(60, 'WD'),
(60, 'C'),
(60, 'WA'),
(61, 'GD'),
(61, 'GK'),
(62, 'C'),
(62, 'WD'),
(63, 'GS'),
(63, 'GA'),
(64, 'WD'),
(64, 'C'),
(65, 'GK'),
(65, 'GD'),
(66, 'GA'),
(66, 'GS'),
(67, 'GS'),
(68, 'GD'),
(68, 'GK'),
(69, 'GK'),
(69, 'GD'),
(69, 'WD'),
(70, 'GD'),
(70, 'WD'),
(71, 'C'),
(71, 'WD'),
(72, 'GS'),
(73, 'GK'),
(73, 'GD'),
(74, 'GS'),
(74, 'GA'),
(75, 'GK'),
(75, 'GD'),
(76, 'GD'),
(76, 'WD'),
(77, 'WA'),
(77, 'C'),
(77, 'WD'),
(78, 'C'),
(78, 'WD'),
(78, 'WA'),
(79, 'WD'),
(79, 'C'),
(79, 'GD'),
(80, 'GA'),
(80, 'GS'),
(81, 'C'),
(81, 'WA'),
(82, 'GD'),
(82, 'WD'),
(83, 'GA'),
(83, 'GS'),
(83, 'WA'),
(84, 'GK'),
(84, 'GD'),
(85, 'WA'),
(85, 'C'),
(86, 'GS'),
(87, 'C'),
(87, 'WA'),
(88, 'WD'),
(88, 'C'),
(88, 'WA'),
(89, 'GA'),
(89, 'GS'),
(90, 'WD'),
(90, 'C'),
(91, 'GD'),
(91, 'GK'),
(92, 'GS'),
(92, 'GA'),
(93, 'GK'),
(93, 'GD'),
(93, 'WD'),
(94, 'GK'),
(94, 'GD'),
(95, 'GA'),
(95, 'GS'),
(96, 'GD'),
(96, 'GK'),
(97, 'GS'),
(97, 'GA'),
(98, 'GS'),
(98, 'GA'),
(99, 'GD'),
(99, 'GK'),
(100, 'GD'),
(100, 'GK'),
(101, 'GS'),
(101, 'GA'),
(102, 'GD'),
(102, 'WD'),
(103, 'GA'),
(103, 'WA'),
(104, 'C'),
(104, 'WA'),
(104, 'WD'),
(105, 'C'),
(105, 'WA'),
(106, 'WD'),
(106, 'GD'),
(107, 'GA'),
(107, 'GS'),
(108, 'WA'),
(108, 'C'),
(109, 'GS'),
(110, 'GS'),
(110, 'GA'),
(111, 'C'),
(111, 'WD'),
(112, 'C'),
(112, 'WA'),
(112, 'WD'),
(113, 'GD'),
(113, 'GK'),
(114, 'C'),
(114, 'WA'),
(115, 'GD'),
(115, 'GK'),
(116, 'GK'),
(116, 'GD'),
(117, 'GA'),
(117, 'GS'),
(118, 'GK'),
(118, 'GD'),
(119, 'GS'),
(119, 'GA');

-- --------------------------------------------------------

--
-- 表的结构 `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `coach` int(11) DEFAULT NULL,
  `captain` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `teams`
--

INSERT INTO `teams` (`id`, `name`, `coach`, `captain`) VALUES
(1, 'Thunderbirds', 1, 2),
(2, 'Pulse', 2, 13),
(3, 'Tactix', 3, 25),
(4, 'Vixens', 4, 42),
(5, 'Swifts', 5, 55),
(6, 'Mystics', 6, 66),
(7, 'Firebirds', 7, 75),
(8, 'Steel', 8, 88),
(9, 'Magic', 9, 96),
(10, 'Fever', 10, 111);

--
-- 转储表的索引
--

--
-- 表的索引 `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `coaches`
--
ALTER TABLE `coaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- 使用表AUTO_INCREMENT `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- 使用表AUTO_INCREMENT `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 数据库： `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- 表的结构 `booking`
--

CREATE TABLE `booking` (
  `room` int(4) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `days` int(3) DEFAULT NULL,
  `checkin` int(3) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('lambo', 'btwc1994');

-- --------------------------------------------------------

--
-- 表的结构 `total`
--

CREATE TABLE `total` (
  `number` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `total`
--

INSERT INTO `total` (`number`) VALUES
(33);
--
-- 数据库： `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 表的结构 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 表的结构 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 表的结构 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 表的结构 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- 转存表中的数据 `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'hotel', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"booking\",\"login\",\"total\"],\"table_structure[]\":[\"booking\",\"login\",\"total\"],\"table_data[]\":[\"booking\",\"login\",\"total\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ 表的结构\",\"latex_structure_continued_caption\":\"@TABLE@ 表的结构 (延续的)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"@TABLE@ 表的内容\",\"latex_data_continued_caption\":\"@TABLE@ 表的内容 (延续的)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- 表的结构 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 表的结构 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 表的结构 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 转存表中的数据 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"hotel\",\"table\":\"booking\"},{\"db\":\"hotel\",\"table\":\"login\"},{\"db\":\"hotel\",\"table\":\"total\"},{\"db\":\"base\",\"table\":\"players\"},{\"db\":\"mysql\",\"table\":\"user\"},{\"db\":\"test\",\"table\":\"players\"},{\"db\":\"test\",\"table\":\"player_positions\"},{\"db\":\"test\",\"table\":\"giao\"}]');

-- --------------------------------------------------------

--
-- 表的结构 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 表的结构 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- 转存表中的数据 `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'hotel', 'booking', '{\"sorted_col\":\"`booking`.`id` ASC\"}', '2023-12-02 05:31:38');

-- --------------------------------------------------------

--
-- 表的结构 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 转存表中的数据 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-12-02 06:41:41', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":221.9864,\"lang\":\"zh_CN\"}');

-- --------------------------------------------------------

--
-- 表的结构 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 表的结构 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 转储表的索引
--

--
-- 表的索引 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 表的索引 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 表的索引 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 表的索引 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 表的索引 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 表的索引 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 表的索引 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 表的索引 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 表的索引 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 表的索引 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 表的索引 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 表的索引 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 表的索引 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 表的索引 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 表的索引 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 表的索引 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 表的索引 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 表的索引 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 数据库： `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- 表的结构 `coaches`
--

CREATE TABLE `coaches` (
  `id` int(11) NOT NULL,
  `name` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `coaches`
--

INSERT INTO `coaches` (`id`, `name`) VALUES
(1, 'Kristy Keppich-Birrell'),
(2, 'Tanya Dearns'),
(3, 'Sue Hawkins'),
(4, 'Simone McKinnis'),
(5, 'Rob Wright'),
(6, 'Debbie Fuller'),
(7, 'Roselee Jencke'),
(8, 'Noeline Taurua'),
(9, 'Julie Fitzgerald'),
(10, 'Stacey Rosman');

-- --------------------------------------------------------

--
-- 表的结构 `games`
--

CREATE TABLE `games` (
  `home_id` int(11) DEFAULT NULL,
  `away_id` int(11) DEFAULT NULL,
  `home_score` int(11) DEFAULT NULL,
  `away_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `games`
--

INSERT INTO `games` (`home_id`, `away_id`, `home_score`, `away_score`) VALUES
(6, 8, 57, 58),
(7, 3, 70, 55),
(10, 1, 63, 44),
(5, 4, 57, 42),
(2, 9, 57, 56),
(5, 9, 78, 50),
(1, 4, 44, 59),
(8, 3, 58, 58),
(6, 10, 44, 54),
(7, 2, 61, 45),
(4, 7, 47, 58),
(5, 1, 68, 44),
(10, 3, 64, 50),
(9, 8, 53, 63),
(2, 6, 52, 52),
(1, 7, 46, 58),
(10, 5, 52, 63),
(8, 2, 67, 54),
(3, 6, 56, 55),
(8, 10, 69, 62),
(7, 5, 61, 51),
(4, 9, 57, 34),
(2, 3, 57, 58),
(6, 1, 52, 49),
(7, 6, 70, 42),
(5, 2, 79, 41),
(1, 8, 54, 69),
(3, 4, 48, 69),
(9, 10, 44, 58),
(10, 7, 52, 61),
(4, 5, 51, 59),
(3, 9, 57, 58),
(6, 2, 55, 53),
(9, 6, 49, 45),
(10, 4, 53, 54),
(7, 1, 62, 51),
(3, 5, 52, 73),
(2, 8, 63, 67),
(4, 1, 57, 51),
(5, 7, 58, 54),
(8, 6, 66, 60),
(9, 2, 54, 44),
(7, 4, 56, 44),
(1, 10, 51, 63),
(3, 8, 51, 81),
(6, 9, 51, 54),
(8, 7, 66, 51),
(5, 10, 57, 58),
(4, 6, 69, 46),
(2, 1, 46, 60),
(9, 3, 56, 55),
(1, 5, 53, 67),
(4, 10, 60, 55),
(8, 9, 64, 54),
(3, 2, 59, 64),
(8, 4, 65, 56),
(10, 2, 70, 47),
(1, 3, 58, 55),
(6, 5, 53, 59),
(9, 7, 47, 71),
(6, 3, 62, 54),
(5, 8, 59, 59),
(7, 10, 63, 52),
(9, 1, 56, 55),
(2, 4, 53, 66);

-- --------------------------------------------------------

--
-- 表的结构 `giao`
--

CREATE TABLE `giao` (
  `name` varchar(30) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `giao`
--

INSERT INTO `giao` (`name`, `age`, `email`) VALUES
('giao', 333, 'gial'),
('f', 3333, 'f');

-- --------------------------------------------------------

--
-- 表的结构 `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `at_team` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `matches`
--

INSERT INTO `matches` (`id`, `at_team`) VALUES
(1, 6),
(2, 7),
(3, 10),
(4, 5),
(5, 2),
(6, 5),
(7, 1),
(8, 8),
(9, 6),
(10, 7),
(11, 4),
(12, 5),
(13, 10),
(14, 9),
(15, 2),
(16, 1),
(17, 10),
(18, 8),
(19, 3),
(20, 8),
(21, 7),
(22, 4),
(23, 2),
(24, 6),
(25, 7),
(26, 5),
(27, 1),
(28, 3),
(29, 9),
(30, 10),
(31, 4),
(32, 3),
(33, 6),
(34, 9),
(35, 10),
(36, 7),
(37, 3),
(38, 2),
(39, 4),
(40, 5),
(41, 8),
(42, 9),
(43, 7),
(44, 1),
(45, 3),
(46, 6),
(47, 8),
(48, 5),
(49, 4),
(50, 2),
(51, 9),
(52, 1),
(53, 4),
(54, 8),
(55, 3),
(56, 8),
(57, 10),
(58, 1),
(59, 6),
(60, 9),
(61, 6),
(62, 5),
(63, 7),
(64, 9),
(65, 2);

-- --------------------------------------------------------

--
-- 表的结构 `match_teams`
--

CREATE TABLE `match_teams` (
  `match_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `match_teams`
--

INSERT INTO `match_teams` (`match_id`, `team_id`, `score`) VALUES
(1, 6, 57),
(1, 8, 58),
(2, 7, 70),
(2, 3, 55),
(3, 10, 63),
(3, 1, 44),
(4, 5, 57),
(4, 4, 42),
(5, 2, 57),
(5, 9, 56),
(6, 5, 78),
(6, 9, 50),
(7, 1, 44),
(7, 4, 59),
(8, 8, 58),
(8, 3, 58),
(9, 6, 44),
(9, 10, 54),
(10, 7, 61),
(10, 2, 45),
(11, 4, 47),
(11, 7, 58),
(12, 5, 68),
(12, 1, 44),
(13, 10, 64),
(13, 3, 50),
(14, 9, 53),
(14, 8, 63),
(15, 2, 52),
(15, 6, 52),
(16, 1, 46),
(16, 7, 58),
(17, 10, 52),
(17, 5, 63),
(18, 8, 67),
(18, 2, 54),
(19, 3, 56),
(19, 6, 55),
(20, 8, 69),
(20, 10, 62),
(21, 7, 61),
(21, 5, 51),
(22, 4, 57),
(22, 9, 34),
(23, 2, 57),
(23, 3, 58),
(24, 6, 52),
(24, 1, 49),
(25, 7, 70),
(25, 6, 42),
(26, 5, 79),
(26, 2, 41),
(27, 1, 54),
(27, 8, 69),
(28, 3, 48),
(28, 4, 69),
(29, 9, 44),
(29, 10, 58),
(30, 10, 52),
(30, 7, 61),
(31, 4, 51),
(31, 5, 59),
(32, 3, 57),
(32, 9, 58),
(33, 6, 55),
(33, 2, 53),
(34, 9, 49),
(34, 6, 45),
(35, 10, 53),
(35, 4, 54),
(36, 7, 62),
(36, 1, 51),
(37, 3, 52),
(37, 5, 73),
(38, 2, 63),
(38, 8, 67),
(39, 4, 57),
(39, 1, 51),
(40, 5, 58),
(40, 7, 54),
(41, 8, 66),
(41, 6, 60),
(42, 9, 54),
(42, 2, 44),
(43, 7, 56),
(43, 4, 44),
(44, 1, 51),
(44, 10, 63),
(45, 3, 51),
(45, 8, 81),
(46, 6, 51),
(46, 9, 54),
(47, 8, 66),
(47, 7, 51),
(48, 5, 57),
(48, 10, 58),
(49, 4, 69),
(49, 6, 46),
(50, 2, 46),
(50, 1, 60),
(51, 9, 56),
(51, 3, 55),
(52, 1, 53),
(52, 5, 67),
(53, 4, 60),
(53, 10, 55),
(54, 8, 64),
(54, 9, 54),
(55, 3, 59),
(55, 2, 64),
(56, 8, 65),
(56, 4, 56),
(57, 10, 70),
(57, 2, 47),
(58, 1, 58),
(58, 3, 55),
(59, 6, 53),
(59, 5, 59),
(60, 9, 47),
(60, 7, 71),
(61, 6, 62),
(61, 3, 54),
(62, 5, 59),
(62, 8, 59),
(63, 7, 63),
(63, 10, 52),
(64, 9, 56),
(64, 1, 55),
(65, 2, 53),
(65, 4, 66);

-- --------------------------------------------------------

--
-- 表的结构 `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(90) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `hometown` varchar(90) DEFAULT NULL,
  `team` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `players`
--

INSERT INTO `players` (`id`, `name`, `height`, `hometown`, `team`) VALUES
(1, 'Emily Beaton', 180, 'Loxton, SA', 1),
(2, 'Erin Bell', 178, 'Sydney, NSW', 1),
(3, 'Stephanie Puopolo', 181, 'Melbourne, Victoria', 1),
(4, 'Samantha Poolman', 189, 'Newcastle, NSW', 1),
(5, 'Madeleine Proud', 174, 'Adelaide, SA', 1),
(6, 'Kate Shimmin', 186, 'Adelaide, SA', 1),
(7, 'Khao Watts', 170, 'Millicent, South Australia', 1),
(8, 'Amy Steel', 190, 'Melbourne, VIC', 1),
(9, 'Carla Borrego', 193, 'Jamaica', 1),
(10, 'Hannah Petty', 177, 'Adelaide, South Australia', 1),
(11, 'Sarah Klau', 190, 'null', 1),
(12, 'Jade Clarke', 174, 'Manchester, England', 1),
(13, 'Katrina Grant', 186, 'Papakura, NZ', 2),
(14, 'Jodi Brown', 185, 'Whanganui, NZ', 2),
(15, 'Ameliaranne Wells', 186, 'Bundaberg, QLD', 2),
(16, 'Phoenix Karaka', 186, 'Auckland, New Zealand', 2),
(17, 'Elias Scheres', 178, 'Tokoroa, NZ', 2),
(18, 'Whitney Souness', 174, 'Porirua, NZ', 2),
(19, 'Blaze Leslie', 180, 'Karratha, Western Australia', 2),
(20, 'Jacinta Messer', 184, 'Brisbane, Queensland', 2),
(21, 'Samon Nathan', 178, 'Waitakere, New Zealand', 2),
(22, 'Chelsea Locke', 181, 'Paddington, New South Wales', 2),
(23, 'Kate Wells', 176, 'Stratford, New Zealand', 2),
(24, 'Maia Wilson', 189, 'Auckland, New Zealand', 2),
(25, 'Anna Thompson', 175, 'Christchurch, NZ', 3),
(26, 'Bailey Mes', 187, 'Auckland, NZ', 3),
(27, 'Gemma Hazeldine', 170, 'Christchurch, NZ', 3),
(28, 'Mwai Kumwenda', 183, 'Mzimba, MAW', 3),
(29, 'Nicola Mackle', 169, 'Timaru, New Zealand', 3),
(30, 'Jess Moulds', 188, 'Helensville, NZ', 3),
(31, 'Erikana Pedersen', 173, 'Auckland, NZ', 3),
(32, ' Hayley Saunders', 179, 'Gore, NZ', 3),
(33, 'Louise Thayer', 185, 'Invercargill, NZ', 3),
(34, 'Zoe Walker', 183, 'Nelson, NZ', 3),
(35, 'Charlotte Elley', 174, 'Westport, New Zealand', 3),
(36, 'Olivia Coughlan', 188, 'Palmerston North', 3),
(37, 'Alice Teague-Neeld', 183, 'Bundoora, VIC', 4),
(38, 'Karyn Bailey', 193, 'Williamstown, VIC', 4),
(39, 'Emily Mannix', 187, 'Geelong, VIC', 4),
(40, 'Geva Mentor', 188, 'Bournemouth, ENG', 4),
(41, 'Kate Moloney', 177, 'Greensborough, VIC', 4),
(42, 'Madison Robinson', 168, 'Geelong, Victoria', 4),
(43, 'Chloe Watson', 183, 'Fitzroy, VIC', 4),
(44, 'Elizabeth Watson', 178, 'Carlton, VIC', 4),
(45, 'Joanna Weston', 188, 'Corowa, VIC', 4),
(46, 'Kelsey Browne', 164, 'Geelong, VIC', 4),
(47, 'Emma Ryde', 197, 'Dandenong, Victoria', 4),
(48, 'Kimberlee Green', 176, 'Sydney, New South Wales', 5),
(49, 'Paige Hadley', 173, 'Sydney, New South Wales', 5),
(50, 'Sharni Layton', 187, 'Melbourne, Victoria', 5),
(51, 'Abbey McCulloch', 178, 'Sydney, NSW', 5),
(52, 'Susan Pettitt', 180, 'Canberra, ACT', 5),
(53, 'Caitlin Thwaites', 188, 'Bendigo, VIC', 5),
(54, 'Stephanie Wood', 175, 'Hyde Park, Queensland', 5),
(55, 'Laura Langman', 173, 'Waikato, New Zealand', 5),
(56, 'Kaitlyn Bryce', 170, 'Nowra, New South Wales', 5),
(57, 'Lauren Moore', 184, 'Sydney, New South Wales', 5),
(58, 'Amy Sommerville', 180, 'Sydney, New South Wales', 5),
(59, 'Maddy Turner', 183, 'Adelaide, South Australia', 5),
(60, 'Kayla Cullen', 185, 'Auckland, New Zealand', 6),
(61, 'Temalisi Fakahokotau', 182, 'Auckland, New Zealand', 6),
(62, 'Serena Guthrie', 180, 'Jersey, United Kingdom', 6),
(63, 'Cathrine Tuivaiti', 189, 'Auckland, New Zealand', 6),
(64, 'Nadia Loveday', 171, 'Auckland, New Zealand', 6),
(65, 'Sulu Fitzpatrick', 188, 'Auckland, New Zealand', 6),
(66, 'Maria Tutaia', 188, 'Tokoroa, New Zealand', 6),
(67, 'Megan Craig', 203, 'Lower Hutt, New Zealand', 6),
(68, 'Holly Fowler', 182, 'Auckland, New Zealand', 6),
(69, 'Anna Harrison', 190, 'Westport, New Zealand', 6),
(70, 'Michaela Sokolich-Beatson', 183, 'Auckland, New Zealand', 6),
(71, 'Fa\'amu Ioane', 172, 'Apia, Samoa', 6),
(72, 'Romelda Aiken', 196, 'Jamaica', 7),
(73, 'Laura Clemesha', 190, 'Toowoomba, Queensland', 7),
(74, 'Beryl Friday', 184, 'Ingham, Queensland', 7),
(75, 'Laura Geitz', 185, 'Ipswich, Queensland', 7),
(76, 'Clare McMeniman', 185, 'Brisbane, Queensland', 7),
(77, 'Caitlyn Nevins', 173, 'Echuca, Victoria', 7),
(78, 'Kimberley Ravaillion', 176, 'Strathfield, New South Wales', 7),
(79, 'Gabrielle Simpson', 176, 'Sydney, New South Wales', 7),
(80, 'Gretel Tippett', 192, 'Gold Coast, Queensland', 7),
(81, 'Mahalia Cassidy', 173, 'Redcliffe, Queensland', 7),
(82, 'Hulita Haukinima', 178, 'Logan, Queensland', 7),
(83, 'Chelsea Lemke', 182, 'Gawler, South Australia', 7),
(84, 'Te Huinga Reo Selby-Rickit', 184, 'Hamilton, NZ', 8),
(85, 'Gina Crampton', 174, 'Hamilton, New Zealand', 8),
(86, 'Jhaniele Fowler-Reid', 198, 'Montego Bay, Jamaica', 8),
(87, 'Shannon Francois', 178, 'Motueka, New Zealand', 8),
(88, 'Wendy Frew', 174, 'Invercargill, New Zealand', 8),
(89, 'Brooke Leaver', 183, 'Auckland, New Zealand', 8),
(90, 'Stacey Peeters', 173, 'Matamata, New Zealand', 8),
(91, 'Storm Purvis', 186, 'Christchurch, New Zealand', 8),
(92, 'Te Paea Selby-Rickit', 188, 'Otaki, New Zealand', 8),
(93, 'Jane Watson', 181, 'Christchurch, New Zealand', 8),
(94, 'Abby Erwood', 181, 'Dunedin, New Zealand', 8),
(95, 'Jamie Hume', 182, 'Clyde, New Zealand', 8),
(96, 'Leana de Bruin', 190, 'Bethlehem, South Africa', 9),
(97, 'Ellen Halpenny', 185, 'Napier, New Zealand', 9),
(98, 'Joanne Harten', 188, 'Essex, ENG', 9),
(99, 'Kelly Jury', 192, 'Stratford, New Zealand', 9),
(100, 'Kristiana Manu\'a', 182, 'Wellington, New Zealand', 9),
(101, 'Malia Paseka', 183, 'Auckland, New Zealand', 9),
(102, 'Jamie-Lee Price', 179, 'Sydney, New South Wales', 9),
(103, 'Grace Rasmussen', 177, 'Auckland, New Zealand', 9),
(104, 'Samantha Sinclair', 171, 'Rotorua, New Zealand', 9),
(105, ' Courtney Tairi', 180, 'Sydney, New South Wales', 9),
(106, 'Katherine Coffin', 182, 'Hamilton, New Zealand', 9),
(107, 'Paula Griffin', 1, 'Auckland, New Zealand', 9),
(108, 'Verity Simmons', 170, 'Liverpool, New South Wales', 10),
(109, 'Cailtin Bassett', 193, 'Perth, Western Australia', 10),
(110, 'Kate Beveridge', 193, 'Perth, Western Australia', 10),
(111, 'Ashleigh Brazill', 175, 'Campbelltown, NSW', 10),
(112, 'Shae Brown', 181, 'Melbourne, Victoria', 10),
(113, 'Courtney Bruce', 189, 'Gosnells, Western Australia', 10),
(114, 'Ingrid Colyer', 165, 'Karridale, Western Australia', 10),
(115, 'Josie Janz-Dawson', 185, 'Thursday Island, Queensland', 10),
(116, 'April Brandley', 185, 'Nowra, New South Wales', 10),
(117, 'Natalie Medhurst', 175, 'Warracknabeal, Victoria', 10),
(118, 'Erena Mikaere', 193, 'Rotorua, New Zealand', 10),
(119, 'Kaylia Stanton', 189, 'Perth, Western Australia', 10);

-- --------------------------------------------------------

--
-- 表的结构 `player_positions`
--

CREATE TABLE `player_positions` (
  `player_id` int(11) DEFAULT NULL,
  `position` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `player_positions`
--

INSERT INTO `player_positions` (`player_id`, `position`) VALUES
(1, 'WA'),
(1, 'C'),
(2, 'GA'),
(2, 'WA'),
(2, 'GS'),
(3, 'GA'),
(3, 'GS'),
(4, 'GK'),
(4, 'GD'),
(5, 'C'),
(5, 'WA'),
(6, 'GK'),
(6, 'GD'),
(7, 'WA'),
(7, 'C'),
(7, 'WD'),
(8, 'GD'),
(8, 'GK'),
(8, 'WD'),
(9, 'GA'),
(9, 'GS'),
(10, 'C'),
(10, 'WA'),
(11, 'GK'),
(11, 'GD'),
(12, 'WD'),
(12, 'C'),
(12, 'WA'),
(13, 'GD'),
(13, 'GK'),
(14, 'GA'),
(14, 'GS'),
(15, 'GS'),
(15, 'GA'),
(16, 'GK'),
(16, 'GD'),
(16, 'GS'),
(17, 'WD'),
(17, 'C'),
(18, 'WA'),
(18, 'C'),
(18, 'GA'),
(19, 'GA'),
(19, 'GS'),
(20, 'GK'),
(20, 'GD'),
(21, 'C'),
(21, 'WD'),
(22, 'WA'),
(22, 'C'),
(22, 'GA'),
(23, 'WD'),
(24, 'GS'),
(25, 'GA'),
(25, 'WA'),
(25, 'GS'),
(26, 'WA'),
(26, 'GS'),
(26, 'GA'),
(27, 'GA'),
(27, 'WA'),
(27, 'C'),
(28, 'GS'),
(28, 'GA'),
(29, 'WA'),
(29, 'C'),
(30, 'GK'),
(30, 'GD'),
(31, 'WD'),
(31, 'C'),
(31, 'WA'),
(32, 'WD'),
(32, 'C'),
(33, 'GK'),
(33, 'GD'),
(33, 'WD'),
(34, 'GK'),
(34, 'GD'),
(34, 'WD'),
(35, 'WD'),
(35, 'C'),
(36, 'GK'),
(37, 'GA'),
(37, 'GS'),
(38, 'GS'),
(38, 'GA'),
(39, 'GK'),
(39, 'GD'),
(40, 'GK'),
(40, 'GD'),
(40, 'WD'),
(41, 'WD'),
(41, 'C'),
(42, 'WA'),
(42, 'C'),
(43, 'GD'),
(43, 'WD'),
(44, 'C'),
(44, 'WA'),
(45, 'GD'),
(45, 'GK'),
(45, 'WD'),
(46, 'WA'),
(47, 'GS'),
(47, 'GA'),
(48, 'C'),
(48, 'WA'),
(49, 'C'),
(49, 'WA'),
(49, 'WD'),
(50, 'GK'),
(50, 'GD'),
(50, 'WD'),
(51, 'WD'),
(51, 'C'),
(52, 'GA'),
(52, 'GS'),
(53, 'GS'),
(54, 'GA'),
(54, 'GS'),
(54, 'WA'),
(55, 'C'),
(55, 'WD'),
(55, 'WA'),
(56, 'WA'),
(56, 'C'),
(57, 'GD'),
(58, 'GS'),
(59, 'GD'),
(60, 'GD'),
(60, 'WD'),
(60, 'C'),
(60, 'WA'),
(61, 'GD'),
(61, 'GK'),
(62, 'C'),
(62, 'WD'),
(63, 'GS'),
(63, 'GA'),
(64, 'WD'),
(64, 'C'),
(65, 'GK'),
(65, 'GD'),
(66, 'GA'),
(66, 'GS'),
(67, 'GS'),
(68, 'GD'),
(68, 'GK'),
(69, 'GK'),
(69, 'GD'),
(69, 'WD'),
(70, 'GD'),
(70, 'WD'),
(71, 'C'),
(71, 'WD'),
(72, 'GS'),
(73, 'GK'),
(73, 'GD'),
(74, 'GS'),
(74, 'GA'),
(75, 'GK'),
(75, 'GD'),
(76, 'GD'),
(76, 'WD'),
(77, 'WA'),
(77, 'C'),
(77, 'WD'),
(78, 'C'),
(78, 'WD'),
(78, 'WA'),
(79, 'WD'),
(79, 'C'),
(79, 'GD'),
(80, 'GA'),
(80, 'GS'),
(81, 'C'),
(81, 'WA'),
(82, 'GD'),
(82, 'WD'),
(83, 'GA'),
(83, 'GS'),
(83, 'WA'),
(84, 'GK'),
(84, 'GD'),
(85, 'WA'),
(85, 'C'),
(86, 'GS'),
(87, 'C'),
(87, 'WA'),
(88, 'WD'),
(88, 'C'),
(88, 'WA'),
(89, 'GA'),
(89, 'GS'),
(90, 'WD'),
(90, 'C'),
(91, 'GD'),
(91, 'GK'),
(92, 'GS'),
(92, 'GA'),
(93, 'GK'),
(93, 'GD'),
(93, 'WD'),
(94, 'GK'),
(94, 'GD'),
(95, 'GA'),
(95, 'GS'),
(96, 'GD'),
(96, 'GK'),
(97, 'GS'),
(97, 'GA'),
(98, 'GS'),
(98, 'GA'),
(99, 'GD'),
(99, 'GK'),
(100, 'GD'),
(100, 'GK'),
(101, 'GS'),
(101, 'GA'),
(102, 'GD'),
(102, 'WD'),
(103, 'GA'),
(103, 'WA'),
(104, 'C'),
(104, 'WA'),
(104, 'WD'),
(105, 'C'),
(105, 'WA'),
(106, 'WD'),
(106, 'GD'),
(107, 'GA'),
(107, 'GS'),
(108, 'WA'),
(108, 'C'),
(109, 'GS'),
(110, 'GS'),
(110, 'GA'),
(111, 'C'),
(111, 'WD'),
(112, 'C'),
(112, 'WA'),
(112, 'WD'),
(113, 'GD'),
(113, 'GK'),
(114, 'C'),
(114, 'WA'),
(115, 'GD'),
(115, 'GK'),
(116, 'GK'),
(116, 'GD'),
(117, 'GA'),
(117, 'GS'),
(118, 'GK'),
(118, 'GD'),
(119, 'GS'),
(119, 'GA');

-- --------------------------------------------------------

--
-- 表的结构 `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `coach` int(11) DEFAULT NULL,
  `captain` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `teams`
--

INSERT INTO `teams` (`id`, `name`, `coach`, `captain`) VALUES
(1, 'Thunderbirds', 1, 2),
(2, 'Pulse', 2, 13),
(3, 'Tactix', 3, 25),
(4, 'Vixens', 4, 42),
(5, 'Swifts', 5, 55),
(6, 'Mystics', 6, 66),
(7, 'Firebirds', 7, 75),
(8, 'Steel', 8, 88),
(9, 'Magic', 9, 96),
(10, 'Fever', 10, 111);

-- --------------------------------------------------------

--
-- 表的结构 `your_table_name`
--

CREATE TABLE `your_table_name` (
  `column1` int(2) DEFAULT NULL,
  `column2` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `coaches`
--
ALTER TABLE `coaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- 使用表AUTO_INCREMENT `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- 使用表AUTO_INCREMENT `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
