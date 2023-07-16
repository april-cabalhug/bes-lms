-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2023 at 04:22 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u977401404_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(12, 'admin', '2022-09-13 00:38:24', 'Add School Year 2021-2022'),
(13, 'admin', '2022-09-13 00:38:51', 'Add School Year 2022-2023'),
(15, 'admin', '2022-09-16 00:32:55', 'Add Subject '),
(16, 'admin', '2022-09-16 00:33:34', 'Add Subject '),
(17, 'admin', '2022-09-16 00:34:14', 'Add Subject '),
(18, 'admin', '2022-09-16 00:34:44', 'Add Subject '),
(19, 'admin', '2022-09-16 00:36:02', 'Add Subject '),
(20, 'admin', '2022-09-16 00:36:45', 'Add Subject '),
(21, 'admin', '2022-09-16 00:37:12', 'Add Subject '),
(22, 'admin', '2022-09-16 00:38:56', 'Add Subject '),
(23, 'admin', '2022-10-06 01:43:29', 'Add School Year 2022-2024'),
(24, 'admin', '2022-12-06 16:03:42', 'Add User admin_april'),
(33, 'admin_april', '2022-12-08 11:28:33', 'Change Password through Email Verifivation'),
(34, 'admin_laura', '2022-12-14 07:31:42', 'Add User admin_laura'),
(35, 'admin_laura', '2022-12-14 07:34:16', 'Add User admin_laura'),
(36, 'admin_mj', '2022-12-14 07:45:53', 'Add User admin_mj'),
(37, 'admin_mj', '2022-12-14 07:48:16', 'Add User admin_mj'),
(38, 'admin_rializa', '2022-12-29 12:39:30', 'Add User admin_rializa'),
(39, 'admin_rica', '2022-12-29 12:41:23', 'Add User admin_rica'),
(40, 'admin', '2023-01-04 06:33:57', 'Edit User admin_mj'),
(41, 'admin', '2023-01-07 07:35:21', 'Edit User admin_mj'),
(42, 'admin', '2023-01-14 17:23:03', 'Change Password through Email Verifivation'),
(43, 'mr.facebook', '2023-01-22 05:38:25', 'Add User mr.facebook'),
(44, 'mr.facebook', '2023-01-22 05:54:56', 'Add User mr.facebook'),
(45, 'pesbok', '2023-01-22 06:15:02', 'Add User pesbok'),
(46, 'pesbok', '2023-01-22 06:16:21', 'Add User pesbok'),
(47, 'pesbok', '2023-01-22 06:19:53', 'Add User pesbok'),
(48, 'pesbok', '2023-01-22 06:30:10', 'Add User pesbok'),
(49, 'pesbok', '2023-01-22 06:31:23', 'Add User pesbok');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(255) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(125, 53, 'Sapatos', 'A'),
(126, 53, 'Walis', 'B'),
(127, 53, 'Kutsara', 'C'),
(128, 53, 'Papel', 'D'),
(129, 54, 'Tulay', 'A'),
(130, 54, 'Papel', 'B'),
(131, 54, 'Pusa', 'C'),
(132, 54, 'Bigas', 'D'),
(133, 55, '5', 'A'),
(134, 55, '23', 'B'),
(135, 55, '28', 'C'),
(136, 55, '26', 'D'),
(137, 56, '26', 'A'),
(138, 56, '23', 'B'),
(139, 56, '28', 'C'),
(140, 56, '5', 'D'),
(141, 57, '1', 'A'),
(142, 57, '7', 'B'),
(143, 57, '12', 'C'),
(144, 57, '28', 'D'),
(145, 62, '2', 'A'),
(146, 62, 'Magellan!', 'B'),
(147, 62, 'Ewan!', 'C'),
(148, 62, 'Lapu-lapu', 'D'),
(149, 63, '2', 'A'),
(150, 63, 'Magellan', 'B'),
(151, 63, 'Lapu-lapu', 'C'),
(152, 63, 'Ewan!', 'D'),
(153, 65, 'Lapu-lapu', 'A'),
(154, 65, '4', 'B'),
(155, 65, 'Magellan', 'C'),
(156, 65, 'Ewan!', 'D'),
(157, 66, '6', 'A'),
(158, 66, 'Christmas Tree', 'B'),
(159, 66, 'Lapu-lapu', 'C'),
(160, 66, 'Ewan!', 'D'),
(161, 67, 'Otso-otso', 'A'),
(162, 67, 'Magellan', 'B'),
(163, 67, 'Ewan!', 'C'),
(164, 67, '8', 'D'),
(165, 68, 'Magellan', 'A'),
(166, 68, 'Christmas Tree', 'B'),
(167, 68, '10', 'C'),
(168, 68, 'Ewan!', 'D'),
(169, 69, 'Was', 'A'),
(170, 69, 'Is', 'B'),
(171, 69, 'Are ', 'C'),
(172, 69, 'You', 'D'),
(173, 70, 'It is a verb that is followed by an Adjective, Noun, and Pronoun', 'A'),
(174, 70, 'It is a verb that is followed by a Noun', 'B'),
(175, 70, '  It is a verb that is followed by a Noun and a Pronoun', 'C'),
(176, 70, ' It is a verb that is followed by an Adjective and a Noun', 'D'),
(177, 71, 'is', 'A'),
(178, 71, 'am', 'B'),
(179, 71, 'are', 'C'),
(180, 71, 'we', 'D'),
(181, 72, 'am', 'A'),
(182, 72, 'are', 'B'),
(183, 72, 'was', 'C'),
(184, 72, 'is', 'D'),
(185, 73, 'this', 'A'),
(186, 73, 'are', 'B'),
(187, 73, 'am', 'C'),
(188, 73, 'is', 'D'),
(189, 74, 'will', 'A'),
(190, 74, 'are', 'B'),
(191, 74, 'is', 'C'),
(192, 74, 'am', 'D'),
(193, 75, 'is', 'A'),
(194, 75, 'are', 'B'),
(195, 75, 'am', 'C'),
(196, 75, 'we', 'D'),
(197, 76, 'is', 'A'),
(198, 76, 'will', 'B'),
(199, 76, 'am', 'C'),
(200, 76, 'are', 'D'),
(201, 77, 'is', 'A'),
(202, 77, 'are', 'B'),
(203, 77, 'am', 'C'),
(204, 77, 'we', 'D'),
(205, 78, 'were', 'A'),
(206, 78, 'am', 'B'),
(207, 78, 'are', 'C'),
(208, 78, 'is', 'D'),
(209, 79, 'are', 'A'),
(210, 79, 'is', 'B'),
(211, 79, 'am', 'C'),
(212, 79, 'was', 'D'),
(213, 80, 'am', 'A'),
(214, 80, 'are', 'B'),
(215, 80, 'is', 'C'),
(216, 80, 'were', 'D'),
(217, 81, 'maamo', 'A'),
(218, 81, 'umaawit', 'B'),
(219, 81, 'mabilis', 'C'),
(220, 81, 'matanda', 'D'),
(221, 82, 'masarap', 'A'),
(222, 82, 'nagluluto', 'B'),
(223, 82, 'nanay', 'C'),
(224, 82, 'ulam', 'D'),
(225, 83, 'nagbabasa', 'A'),
(226, 83, 'umaakyat', 'B'),
(227, 83, 'kumakain', 'C'),
(228, 83, 'naglalaba', 'D'),
(229, 84, 'naglalaro', 'A'),
(230, 84, 'mag-aaral', 'B'),
(231, 84, 'masaya', 'C'),
(232, 84, 'palaruan', 'D'),
(233, 85, 'hardin', 'A'),
(234, 85, 'ate', 'B'),
(235, 85, 'umaga', 'C'),
(236, 85, 'nagtatanim', 'D'),
(237, 86, 'jkjh', 'A'),
(238, 86, 'mjbmj', 'B'),
(239, 86, 'mgjhgh', 'C'),
(240, 86, ',jhkjhkjhkj', 'D'),
(241, 87, 'kewjlkwejr', 'A'),
(242, 87, 'ds,jfkjdf', 'B'),
(243, 87, 'lkdjflkjdf', 'C'),
(244, 87, ',dnfknsldkfn', 'D'),
(245, 88, 'Mansanas', 'A'),
(246, 88, 'Saging', 'B'),
(247, 88, 'Dalandan', 'C'),
(248, 88, 'Ube', 'D'),
(249, 89, 'Luntian', 'A'),
(250, 89, 'Kahel', 'B'),
(251, 89, 'Ube', 'C'),
(252, 89, 'Asul', 'D'),
(253, 90, 'wala', 'A'),
(254, 90, 'dfs', 'B'),
(255, 90, 'sds', 'C'),
(256, 90, 'asd', 'D'),
(257, 91, 'Saging', 'A'),
(258, 91, 'Dalandan', 'B'),
(259, 91, 'Atis', 'C'),
(260, 91, 'Pakwan', 'D'),
(261, 93, 'Pikachu', 'A'),
(262, 93, 'Doraemon', 'B'),
(263, 93, 'Pacman', 'C'),
(264, 93, 'Barney', 'D'),
(265, 94, 'Tatlo', 'A'),
(266, 94, 'Apat', 'B'),
(267, 94, 'Isa', 'C'),
(268, 94, 'Sampu', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(34, 'admin/uploads/7659_File_Pagtatambal sa mga Pangngalan.docx', '2022-12-16 11:29:09', 'Pagtatambal sa Pangngalan', 54, 197, 'Fil1.Pangngalan'),
(36, 'admin/uploads/2820_File_FilipinoVocabularyWorksheet-1.pdf', '2022-12-17 11:19:11', 'Filipino Vocabulary Worksheet', 54, 197, 'Worksheet1');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(28, 'Grade1-Diamond'),
(29, 'Grade1-Emerald'),
(30, 'Grade1-Garnet'),
(31, 'Grade1-Opal'),
(32, 'Grade1-Pearl'),
(33, 'Grade1-Peridot'),
(34, 'Grade1-Ruby'),
(35, 'Grade1-Sapphire'),
(36, 'Grade1-Topaz'),
(37, 'Grade2-Emerald'),
(38, 'Grade2-Garnet'),
(39, 'Grade2-Opal'),
(40, 'Grade2-Pearl'),
(41, 'Grade2-Peridot'),
(42, 'Grade2-Ruby'),
(43, 'Grade2-Sapphire'),
(44, 'Grade2-Topaz'),
(45, 'Grade2-Diamond'),
(46, 'Grade3-Garnet'),
(47, 'Grade3-Diamond'),
(48, 'Grade3-Onyx'),
(49, 'Grade3-Opal'),
(50, 'Grade3-Pearl'),
(51, 'Grade3-Peridot'),
(52, 'Grade3-Ruby'),
(53, 'Grade3-Sapphire'),
(54, 'Grade3-Topaz'),
(55, 'Grade4-Emerald'),
(56, 'Grade4-Garnet'),
(57, 'Grade4-Onyx'),
(58, 'Grade4-Opal'),
(59, 'Grade4-Pearl'),
(60, 'Grade4-Peridot'),
(61, 'Grade4-Ruby'),
(62, 'Grade4-Sapphire'),
(63, 'Grade5-Emerald'),
(64, 'Grade5-Garnet'),
(65, 'Grade5-DIamond'),
(66, 'Grade5-Onyx'),
(67, 'Grade5-Opal'),
(68, 'Grade5-Ruby'),
(69, 'Grade5-Sapphire'),
(70, 'Grade5-Topaz'),
(71, 'Grade6-Emerald'),
(72, 'Grade6-Garnet'),
(73, 'Grade6-Jade'),
(74, 'Grade6-Onyx'),
(75, 'Grade6-Opal'),
(76, 'Grade6-Topaz'),
(77, 'Kinder-Diamond'),
(78, 'Kinder-Peridot'),
(79, 'Kinder-Pearl'),
(80, 'Kinder-Ruby'),
(85, 'Kinder-Sapphire'),
(86, 'Kinder-Topaz'),
(87, 'Kinder-Emerald'),
(88, 'Kinder-Opal'),
(89, 'Kinder-Garnet'),
(92, 'Kinder-Moonstone'),
(93, 'Grade5-Jade');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `deadline` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_id`, `deadline`) VALUES
(21, 187, 10, '2022-11-21 23:59:00'),
(22, 192, 10, '2022-11-29 23:59:00'),
(26, 192, 10, '2022-12-31 23:59:00'),
(28, 192, 10, '2022-11-17 23:59:00'),
(29, 192, 10, '2022-11-26 23:59:00'),
(31, 192, 10, '2022-12-03 23:59:00'),
(32, 198, 13, '2022-12-30 20:52:00'),
(34, 197, 12, '2023-01-05 23:59:00'),
(35, 203, 15, '2023-01-11 23:59:00'),
(36, 197, 16, '2023-01-09 23:59:00'),
(37, 197, 20, '2023-01-26 23:59:00'),
(38, 228, 20, '2023-01-26 23:59:00'),
(39, 229, 20, '2023-01-26 23:59:00'),
(40, 230, 20, '2023-01-26 23:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(2, 197, '<p><strong><span style=\"background-color:#40E0D0\">Filipino 1</span>&nbsp;|&nbsp;</strong><strong>Mr. Cardo Dalisay |&nbsp;</strong><strong>8:00 am - 9:00 am</strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">To protect and promote the right of every Filipino to quality equitable, culture-based, and complete basic education where:</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">Students learn in a child-friendly, gender-sensitive, safe, and motivation environment Teachers facilitate learning and constantly nurture every learner Administrators and staff, as stewards of the institution, ensure an enabling and supportive environment for effective learning to happen</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">Family, community, and other stakeholders are actively engaged and share responsibility for developing life-long learners</span></span></p>\r\n'),
(2, 'Vision', '<pre>\r\n<span style=\"font-size:large\"><strong>Vision</strong></span></pre>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">We dream of Filipinos who passionately love their country and whose values and competencies enable them to realize their full potential and contribute meaningfully to building the nation.</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">As a learner-centered public institution. the Department of Education continuously improves itself to better serve its stakeholders.</span></span></p>\r\n'),
(3, 'History', '<pre>\r\n<span style=\"font-size:16px\"><strong>History</strong></span></pre>\r\n\r\n<div>\r\n<p style=\"text-align: justify;\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">Bukandala Elementary School (BES), which is situated at Barangay Bukandala Il, was founded in 1935. It is the only public elementary school in the vicinity and the school in its present site which has a total land area of 5000 square meters. It was acquired April 26, 1958 with lot number 2407-A and a certificate of title number 9659.</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">Initially, BES existed as a primary school when still occupied a space at Bukandala IV. By 1958, the school transferred to its present site at Bukandala II and there BES became a complete elementary school. In the year 1971, a barangay high school started occupying a space inside the elementary school which lasted up to 1982. It eventually transferred to its present site, at Brgy. Bucandala 3.</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">From primary school which averages 20 pupils per classroom to a complete elementary school which averages 56 per class, BES currently holds the most number of pupils in Cluster Il at the Division of Imus City. Current enrollment is about 3,845 pupils where 403 are kindergarten pupils and 3,442 are grade school pupils.</span></span></p>\r\n</div>\r\n'),
(10, 'Calendar', '<pre style=\"text-align:center\">\r\n<strong><span style=\"font-size:medium\">&nbsp;CALENDAR OF EVENT</span></strong></pre>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>1st Quarter&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>September 13, 2021&nbsp;to November 12, 2021&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>2nd Quarter</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>November 15, 2021&nbsp;to January 28, 2022&nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Mid-Year Break</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>January 31, 2012&nbsp;to February 5, 2022</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>3rd Quarter</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>February 7, 2022&nbsp;to April 18, 2022</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>4th Quarter</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>April 11&nbsp;, 2022&nbsp;to June 24, 2022</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\"><strong>September 13, 2021&nbsp;to November 12, 2021&nbsp;&ndash; 1st Quarter AY 2021-2022</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>August 13, 2021&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Start of Enrollment Period</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>August 3-31</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Brigada Eskwela and Oplan Balik Eskwela</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>August 21</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Ninoy Aquino Day</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>August 30</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>National Heroes Day</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>September 1-30</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Brigada Eskwela and Oplan Balik Eskwela</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"3\">\r\n			<p><strong>September 13</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>End of Enrollment Period</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Opening of Classes</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Start of Academic Quarter 1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>September</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Oplan Kalusugan sa DepEd</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>October 5</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>World Teachers&rsquo; Day</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>October</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Administration of PEPT (regular)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>October 4-17</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>SPG/SSG Election (First to Second Week)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>October</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Start of Career Guidance Orientation for Grade 9,10,11, and 12</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>November 1</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>All Saints Day (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>November 2</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>All Souls Day (Special Working Day)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>November 12&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>End of Academic Quarter 1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\"><strong>November 15, 2021&nbsp;to January 28, 2022&nbsp;&ndash; 2nd Quarter AY 2021-2022</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>November 15&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Start of Academic Quarter 2</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>November 27</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Parent-Teacher Conference/Distribution of&nbsp; Report Cards</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>November 27</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Araw ng Pagbasa</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>November</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Accreditation and Equivalency Test (A&amp;E)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>November 30</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Bonifacio Day (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>December 8</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Feast of the Immaculate Concepcion (Special Non-working Day)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>December 20</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Start of Christmas Break</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>December 25</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Christmas Day (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>December 30</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Rizal Day (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>December 31</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Last Day of the Year</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>January 1, 2022</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>New Year&rsquo;s Day (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>January 3</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Resumption of Classes</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>January 28</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>End of Academic Quarter 2</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>January&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>NAT 12</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>January 31-February 5</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Mid-year Break</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>February 1</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Chinese New Year (Special Non-working Day)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\"><strong>February 7, 2022&nbsp;to April 8, 2022&nbsp;&ndash; 3rd&nbsp;Quarter AY 2021-2022</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>February 7&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Start of Academic Quarter 3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>February 12</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Parent-Teacher Conference/Distribution of&nbsp; Report Cards</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>February 25</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>People Power Anniversary (Special Non-working Day)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>March 28-May 30</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Administration of PISA in Selected Schools</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>April 8</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>End of Academic Quarter 3</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>April 9</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>The Day of Valor (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\"><strong>April 11, 2022&nbsp;to June 24, 2022&nbsp;&ndash; 4th Quarter AY 2021-2022</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>April 11&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Start of Academic Quarter 4</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>April 11</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Maundy Thursday (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>April 15</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Good Friday (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>April 16</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Black Saturday (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>April 23</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Parent-Teacher Conference/Distribution of Report Cards</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>April</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Administration of ELLNA, NAT 6 &amp; 10</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>May 1</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Labor Day (Regular Holiday)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>May 2-6 &amp; 10-23</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>National Elections-Related Activities</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>May 9</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>National Elections</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Every Friday Starting May&nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>TAYO Naman! Mental Health and Psychosocial Support Service for DepEd Personnel</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>June 12</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Independence Day</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>June 23</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>DepEd Founding Anniversary</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>June 24</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>End of Academic Quarter 4 and School Year</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>June 27-July 2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>End-of-School Year Rites</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>July 4</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Start of Remedial/Advancement Classes</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>August 12</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>End of Remedial/Advancement Classes during Summer&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<p><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\">Bukandala Elementary School, Bucandala II, Imus City, Cavite</span></p>\r\n\r\n<p><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\">Principal&#39;s Office/Guidance Center: Tel. #: 472-1846</span></p>\r\n\r\n<p><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\">ICT Officer/Faculty Bldg: 471-5251</span></p>\r\n\r\n<p><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\">bes107982@gmail.com | bukandalaict@gmail.com</span></p>\r\n</div>\r\n'),
(13, 'Motto', '<p><span style=\"font-family:verdana,geneva,sans-serif\"><span style=\"font-size:28px\"><strong>#BEthe<span style=\"color:#B22222\">BES</span>t</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:comic sans ms,cursive\"><em><strong>&ldquo;Hindi obligasyon kundi dedikasyon&rdquo;</strong></em></span></p>\r\n'),
(14, 'Programs', '<pre>\r\n<span style=\"font-size:16px\"><strong>Academic Programs</strong></span></pre>\r\n\r\n<ul>\r\n	<li>Kinder</li>\r\n	<li>Grade 1</li>\r\n	<li>Grade 2</li>\r\n	<li>Grade 3</li>\r\n	<li>Grade 4</li>\r\n	<li>Grade 5</li>\r\n	<li>Grade 6</li>\r\n</ul>\r\n'),
(15, 'Footer', '<p><span style=\"color:#FFF0F5\"><span style=\"font-size:14px\"><strong><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\">&copy; </span></strong><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\">2022 <strong>Bukandala Elementary School</strong> All Rights Reserved.</span></span></span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `personnel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `personnel`) VALUES
(11, 'Kinder', 'Deserei Abrio'),
(12, 'Grade 1', 'April Ducado'),
(13, 'Grade 2', 'Erna Campo'),
(14, 'Grade 3', 'Daribe Nagtalon'),
(15, 'Grade 4', 'Arly Siñel'),
(16, 'Grade 5', 'Helen Tablante'),
(17, 'Grade 6', 'Darwin Frias');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(21, 'Start of Enrollment Period', 0, '08/13/2021', '08/13/2021'),
(22, 'Brigada Eskwela and Oplan Balik Eskwela', 0, '08/03/2021', '08/31/2021'),
(23, 'Ninoy Aquino Day', 0, '08/21/2021', '08/21/2021'),
(24, 'National Heroes Day', 0, '08/30/2021', '08/30/2021'),
(25, 'Brigada Eskwela and Oplan Balik Eskwela', 0, '09/01/2021', '09/30/2021'),
(26, 'End of Enrollment Period', 0, '09/13/2021', '09/13/2021'),
(27, 'Opening of Classes', 0, '09/13/2021', '09/13/2021'),
(28, 'World Teachers’ Day', 0, '10/05/2021', '10/05/2021'),
(29, 'SPG/SSG Election (First to Second Week)', 0, '10/04/2021', '10/17/2021'),
(30, 'All Saints Day (Regular Holiday)', 0, '11/01/2021', '11/01/2021'),
(31, 'All Souls Day (Special Working Day)', 0, '11/02/2021', '11/02/2021'),
(32, 'Parent-Teacher Conference/Distribution of  Report Cards', 0, '11/27/2021', '11/27/2021'),
(33, 'Parent-Teacher Conference/Distribution of Report Cards', 0, '11/27/2021', '11/27/2021'),
(34, 'Araw ng Pagbasa', 0, '11/27/2021', '11/27/2021'),
(35, 'Bonifacio Day (Regular Holiday)', 0, '11/30/2021', '11/30/2021'),
(36, 'Feast of the Immaculate Concepcion (Special Non-working Day)', 0, '12/08/2021', '12/08/2021'),
(37, 'Start of Christmas Break', 0, '12/20/2021', '12/20/2021'),
(38, 'Christmas Day (Regular Holiday)', 0, '12/25/2021', '12/25/2021'),
(39, 'Rizal Day (Regular Holiday)', 0, '12/30/2021', '12/30/2021'),
(40, 'New Year’s Day (Regular Holiday)', 0, '01/01/2022', '01/01/2022'),
(41, 'Resumption of Classes', 0, '01/03/2022', '01/03/2022'),
(42, 'Chinese New Year (Special Non-working Day)', 0, '02/01/2022', '02/01/2022'),
(43, 'Parent-Teacher Conference/Distribution of Report Cards', 0, '02/12/2022', '02/12/2022'),
(44, 'People Power Anniversary (Special Non-working Day )', 0, '02/25/2022', '02/25/2022'),
(45, 'Administration of PISA in Selected Schools', 0, '03/28/2022', '03/30/2022'),
(46, 'The Day of Valor (Regular Holiday)', 0, '04/09/2022', '04/09/2022'),
(47, 'Maundy Thursday (Regular Holiday)', 0, '04/11/2022', '04/11/2022'),
(48, 'Good Friday (Regular Holiday)', 0, '04/15/2022', '04/15/2022'),
(49, 'Black Saturday (Regular Holiday)', 0, '04/16/2022', '04/16/2022'),
(50, 'Parent-Teacher Conference/Distribution of Report Cards', 0, '04/23/2022', '04/23/2022'),
(51, 'Labor Day (Regular Holiday)', 0, '05/01/2022', '05/01/2022'),
(52, 'National Elections-Related Activities', 0, '05/02/2022', '05/06/2022'),
(53, 'National Elections', 0, '05/09/2022', '05/09/2022'),
(54, 'National Elections-Related Activities', 0, '05/10/2022', '05/23/2022'),
(55, 'Independence Day', 0, '06/12/2022', '06/12/2022'),
(56, 'DepEd Founding Anniversary', 0, '06/23/2022', '06/23/2022'),
(57, 'Remedial/Advancement Classes', 0, '07/04/2022', '08/12/2022'),
(58, 'Christmas Party', 197, '12/16/2022', '12/16/2022'),
(65, 'Examinations', 197, '01/28/2023', '01/31/2023');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(142, 'admin/uploads/3965_File_videoplayback.mp4', '2022-12-16 10:41:08', 'Pangngalan', 54, 197, 'Fil1_Pangngalan', 'CardoDalisay'),
(144, 'admin/uploads/9541_File_LMS-Capstone.docx', '2023-01-07 08:03:03', 'papasaaa', 117, 201, 'lms', 'EvangelistaDalma'),
(145, 'admin/uploads/2536_File_Maikling Kwento Set 8.pdf', '2023-01-08 05:50:38', 'Maiking Kwento', 76, 225, 'MaiklingKwento_set1', 'EmmalynReyes'),
(146, 'admin/uploads/2536_File_Maikling Kwento Set 8.pdf', '2023-01-08 05:50:38', 'Maiking Kwento', 76, 226, 'MaiklingKwento_set1', 'EmmalynReyes'),
(147, 'admin/uploads/6965_File_Reading Comprehension Worksheets for Grade 1.pdf', '2023-01-08 10:07:01', 'Reading Comprehension Worksheets1', 64, 203, 'Worksheet1.reading_comprehension', 'LuningningQuindoza'),
(149, 'admin/uploads/7284_File_defense presentation.pdf', '2023-01-19 09:59:29', 'defense presentation', 54, 197, 'presentation', 'CardoDalisay');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(31, 56, 'Hoy try mo nga mag edit sa quiz', '2022-12-21 12:49:04', 54, 'Juan  Dela Cruz', 'Cardo Dalisay', ''),
(32, 54, 'Wait lang. \r\n', '2022-12-21 12:53:25', 56, 'Cardo Dalisay', 'Juan  Dela Cruz', ''),
(34, 54, 'hu', '2023-01-19 10:24:32', 237, 'Cardo Dalisay', 'April Rose Cabalhug', ''),
(35, 237, 'hi', '2023-01-19 10:24:56', 54, 'April Rose Cabalhug', 'Cardo Dalisay', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(15, 237, 'Pssss... ', '2022-12-18 02:06:08', 236, 'April Rose Cabalhug', 'Juan  Dela Cruz'),
(17, 54, 'Wait lang. \r\n', '2022-12-21 12:53:25', 56, 'Cardo Dalisay', 'Juan  Dela Cruz'),
(18, 54, 'Wala namang error eh.\r\n', '2022-12-21 12:58:25', 236, 'Cardo Dalisay', 'Juan  Dela Cruz'),
(19, 54, 'hu', '2023-01-19 10:24:32', 237, 'Cardo Dalisay', 'April Rose Cabalhug'),
(20, 237, 'hi', '2023-01-19 10:24:56', 54, 'April Rose Cabalhug', 'Cardo Dalisay'),
(21, 236, 'Boo', '2023-01-21 12:47:49', 237, 'Juan  Dela Cruz', 'April Rose Cabalhug');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(27, 187, 'Add Practice Quiz file', '2022-09-29 00:17:55', 'student_quiz_list.php'),
(28, 192, 'Add Practice Quiz file', '2022-10-30 18:50:11', 'student_quiz_list.php'),
(29, 192, 'Add Practice Quiz file', '2022-10-31 00:27:08', 'student_quiz_list.php'),
(30, 192, 'Add Practice Quiz file', '2022-10-31 00:30:14', 'student_quiz_list.php'),
(31, 192, 'Add Quiz file', '2022-11-23 00:03:58', 'student_quiz_list.php'),
(32, 192, 'Add Quiz file', '2022-11-23 00:05:53', 'student_quiz_list.php'),
(33, 192, 'Add Quiz file', '2022-11-23 01:23:36', 'student_quiz_list.php'),
(34, 192, 'Add Quiz file', '2022-11-24 00:22:23', 'student_quiz_list.php'),
(35, 192, 'Add Quiz file', '2022-11-25 18:44:16', 'student_quiz_list.php'),
(36, 192, 'Add Quiz file', '2022-11-25 20:01:58', 'student_quiz_list.php'),
(37, 192, 'Add Quiz file', '2022-12-02 20:03:50', 'student_quiz_list.php'),
(38, 192, 'Add Assignment file name <b>assignment1</b>', '2022-12-12 07:09:37', 'assignment_student.php'),
(39, 197, 'Add Assignment file name <b>Fil1_Pangngalan</b>', '2022-12-16 10:36:43', 'assignment_student.php'),
(40, 197, 'Add Learning Materials file name <b>Fil1_Pangngalan</b>', '2022-12-16 10:41:08', 'downloadable_student.php'),
(41, 197, 'Add Annoucements', '2022-12-16 10:54:10', 'announcements_student.php'),
(42, 197, 'Add Assignment file name <b>Fil1.Pangngalan</b>', '2022-12-16 11:29:09', 'assignment_student.php'),
(43, 197, 'Add Assignment file name <b>Worksheet1</b>', '2022-12-17 11:08:36', 'assignment_student.php'),
(44, 197, 'Add Assignment file name <b>Worksheet1</b>', '2022-12-17 11:19:11', 'assignment_student.php'),
(45, 198, 'Add Quiz file', '2022-12-21 12:53:03', 'student_quiz_list.php'),
(46, 197, 'Add Quiz file', '2022-12-21 12:54:25', 'student_quiz_list.php'),
(47, 197, 'Add Learning Materials file name <b>excel1</b>', '2023-01-02 16:03:26', 'downloadable_student.php'),
(48, 197, 'Add Quiz file', '2023-01-04 17:45:30', 'student_quiz_list.php'),
(49, 201, 'Add Learning Materials file name <b>lms</b>', '2023-01-07 08:03:03', 'downloadable_student.php'),
(50, 201, 'Add Annoucements', '2023-01-07 08:07:40', 'announcements_student.php'),
(51, 225, 'Add Learning Materials file name <b>MaiklingKwento_set1</b>', '2023-01-08 05:50:38', 'downloadable_student.php'),
(52, 226, 'Add Learning Materials file name <b>MaiklingKwento_set1</b>', '2023-01-08 05:50:38', 'downloadable_student.php'),
(53, 203, 'Add Learning Materials file name <b>Worksheet1.reading_comprehension</b>', '2023-01-08 10:07:01', 'downloadable_student.php'),
(54, 203, 'Add Quiz file', '2023-01-08 10:59:44', 'student_quiz_list.php'),
(55, 197, 'Add Quiz file', '2023-01-09 10:02:03', 'student_quiz_list.php'),
(56, 197, 'Add Learning Materials file name <b>presentation</b>', '2023-01-19 09:59:29', 'downloadable_student.php'),
(57, 197, 'Add Annoucements', '2023-01-23 11:29:01', 'announcements_student.php'),
(58, 228, 'Add Annoucements', '2023-01-23 11:29:01', 'announcements_student.php'),
(59, 229, 'Add Annoucements', '2023-01-23 11:29:01', 'announcements_student.php'),
(60, 230, 'Add Annoucements', '2023-01-23 11:29:01', 'announcements_student.php'),
(61, 197, 'Add Quiz file', '2023-01-23 12:15:30', 'student_quiz_list.php'),
(62, 228, 'Add Quiz file', '2023-01-23 12:15:30', 'student_quiz_list.php'),
(63, 229, 'Add Quiz file', '2023-01-23 12:15:30', 'student_quiz_list.php'),
(64, 230, 'Add Quiz file', '2023-01-23 12:15:30', 'student_quiz_list.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(6, 221, 'yes', 33),
(7, 221, 'yes', 32),
(8, 221, 'yes', 31),
(9, 221, 'yes', 30),
(10, 221, 'yes', 29),
(11, 221, 'yes', 28),
(12, 236, 'yes', 46),
(13, 236, 'yes', 45),
(14, 236, 'yes', 44),
(15, 236, 'yes', 43),
(16, 236, 'yes', 42),
(17, 236, 'yes', 41),
(18, 236, 'yes', 40),
(19, 236, 'yes', 39),
(20, 237, 'yes', 56);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(9, 54, 'yes', 22);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(255) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(12, 'Quiz1_Fil1', 'Unang Pamanahunang Pagsusulit sa Filipino I', '2022-12-21 11:34:43', 54),
(13, 'Diagnostic Test', 'Multi Choices Quiz', '2022-12-21 12:04:21', 56),
(14, 'English Quiz #1', 'Make sure you read all the questions carefully and also that you select the answer that you think is correct.', '2023-01-06 07:14:07', 106),
(15, 'EnglishQuiz1', 'Complete the sentences with the correct verb to be', '2023-01-08 10:31:30', 64),
(16, 'Short Quiz 2', 'Piliin ang tamang sagot', '2023-01-09 09:53:09', 54),
(18, 'English Quiz #1', 'gegegeg', '2023-01-19 10:12:09', 236),
(20, 'SampleQuiz1', 'Tukuyin ang na sa larawan', '2023-01-23 11:39:06', 54),
(22, 'SampleQuiz2', 'Maikling Pagsusulit', '2023-01-23 11:54:21', 54);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(53, 12, '<p><strong>Alin ang kaugnay ng medyas?</strong></p>\r\n', 1, 0, '2022-12-21 11:36:43', 'A'),
(54, 12, '<p><strong>Alin ang kasintunog ng bahay?</strong></p>\r\n', 1, 0, '2022-12-21 11:38:28', 'A'),
(55, 12, '<p><strong>Ilan ang titik sa alpabetong Pilipino?</strong></p>\r\n', 1, 0, '2022-12-21 11:39:45', 'C'),
(56, 12, '<p><strong>Ilan ang patinig sa alpabetong Pilipino?</strong></p>\r\n', 1, 0, '2022-12-21 11:43:39', 'D'),
(57, 12, '<p><strong>Ilan ang araw sa loob ng isang linggo?</strong></p>\r\n', 1, 0, '2022-12-21 11:45:18', 'B'),
(58, 12, '<p>Ang huni ng pusa ay <strong><span style=\"color:#B22222\">&quot;Moo &ndash; moo &ndash; moo&quot;</span></strong>?</p>\r\n', 2, 0, '2022-12-21 12:50:50', 'False'),
(59, 12, '<p>Ang <span style=\"color:#B22222\"><strong>Gatas&nbsp;</strong></span>ay nagsisimula sa titik <strong>&quot;G&quot;</strong>?</p>\r\n', 2, 0, '2022-12-21 12:46:45', 'True'),
(60, 12, '<p><span style=\"color:#B22222\"><strong>Martes</strong></span>... ang unang araw sa isang linggo?</p>\r\n', 2, 0, '2022-12-21 12:01:49', 'False'),
(61, 12, '<p>Ang <span style=\"color:#B22222\"><strong>elepante </strong></span>ay nagsisimula sa patinig?</p>\r\n', 2, 0, '2022-12-21 12:03:25', 'True'),
(63, 13, '1+1', 1, 0, '2022-12-21 12:07:02', 'A'),
(64, 12, '<p>Ang kasing tunog ba ng <strong>&quot;lapis&quot;</strong> ay <span style=\"color:#B22222\"><strong>BATA</strong></span>?</p>\r\n', 2, 0, '2022-12-21 12:07:06', 'False'),
(65, 13, '2+2', 1, 0, '2022-12-21 12:07:52', 'B'),
(66, 13, '3+3', 1, 0, '2022-12-21 12:08:27', 'A'),
(67, 13, '4+4', 1, 0, '2022-12-21 12:09:10', 'D'),
(68, 13, '5+5', 1, 0, '2022-12-21 12:55:44', 'C'),
(69, 14, '<p><span style=\"color:rgb(55, 55, 55); font-family:graphik web,arial,helvetica,sans-serif; font-size:18px\">Do camels have three sets of eyelids?</span></p>\r\n', 2, 0, '2023-01-06 07:39:20', 'True'),
(70, 14, '<p><span style=\"color:rgb(55, 55, 55); font-family:graphik web,arial,helvetica,sans-serif; font-size:18px\">The cell nucleus was discovered by Robert Brown.</span></p>\r\n', 2, 0, '2023-01-06 07:40:15', 'True'),
(71, 15, '<p>He _____ playing</p>\r\n', 1, 0, '2023-01-08 10:34:17', 'A'),
(72, 15, '<p>They _____ studying</p>\r\n', 1, 0, '2023-01-08 10:35:20', 'B'),
(73, 15, '<p>It _____ a cat</p>\r\n', 1, 0, '2023-01-08 10:36:21', 'D'),
(74, 15, '<p>We _____ family</p>\r\n', 1, 0, '2023-01-08 10:37:11', 'B'),
(75, 15, '<p>You _____ a good boy</p>\r\n', 1, 0, '2023-01-08 10:40:09', 'B'),
(76, 15, '<p>I _____ a student</p>\r\n', 1, 0, '2023-01-08 10:48:56', 'C'),
(77, 15, '<p>She ______ a singer</p>\r\n', 1, 0, '2023-01-08 10:50:01', 'A'),
(78, 15, '<p>It _____ cold</p>\r\n', 1, 0, '2023-01-08 10:51:53', 'D'),
(79, 15, '<p>They _____ laughing</p>\r\n', 1, 0, '2023-01-08 10:52:36', 'A'),
(80, 15, '<p>He _____ driving the car</p>\r\n', 1, 0, '2023-01-08 10:58:31', 'C'),
(81, 16, '<p><span style=\"color:rgb(255, 140, 0); font-family:lato,sans-serif; font-size:18px\">( mabilis, maamo, matanda, umaawit ) Alin ang pandiwa?</span></p>\r\n', 1, 0, '2023-01-09 09:54:58', 'B'),
(82, 16, '<p><span style=\"color:rgb(255, 140, 0); font-family:lato,sans-serif; font-size:18px\">Si nanay ay nagluluto ng masarap na ulam. Ano ang pandiwa na ginamit sa pangungusap?</span></p>\r\n', 1, 0, '2023-01-09 09:57:40', 'B'),
(83, 16, '<p><span style=\"color:rgb(255, 140, 0); font-family:lato,sans-serif; font-size:18px\">Si Karen ay ______________ ng aklat ngaun. Punan ng wastong pandiwa.</span></p>\r\n', 1, 0, '2023-01-09 09:58:47', 'A'),
(84, 16, '<p><span style=\"color:rgb(255, 140, 0); font-family:lato,sans-serif; font-size:18px\">Ang mga mag-aaral ay masayang naglalaro sa palaruan? piliin ang pandiwa sa pangungusap.</span></p>\r\n', 1, 0, '2023-01-09 09:59:46', 'A'),
(85, 16, '<p><span style=\"color:rgb(255, 140, 0); font-family:lato,sans-serif; font-size:18px\">Si ate ay nagtatanim sa hardin tuwing umaga. Ano ang pandiwa na ginamit sa pangungusap?</span></p>\r\n', 1, 0, '2023-01-17 12:01:23', 'D'),
(86, 17, '<p>bnvnbvnbvnbvnbvnbvn</p>\r\n', 1, 0, '2023-01-19 10:09:12', 'B'),
(87, 17, '<p>lkejkjewlkrjwlekjrlwkejr</p>\r\n', 1, 0, '2023-01-19 10:10:11', 'A'),
(89, 20, '<p><span style=\"font-size:18px\">Anong kulay ito?&nbsp;<span style=\"background-color:#008000\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></p>\r\n', 1, 0, '2023-01-23 11:42:10', 'A'),
(91, 20, '<p>Anong prutas ito?<img alt=\"banana\" src=\"https://media.istockphoto.com/id/521504766/vector/vector-single-cartoon-banana.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=lsjccKhPWEDqn46UvFlNBuFRe-hnagppCqZny4PhJXE=\" style=\"height:100px; width:100px\" /></p>\r\n', 1, 0, '2023-01-23 12:00:03', 'A'),
(92, 20, '<p><img alt=\"\" src=\"https://png.pngtree.com/element_our/20200703/ourlarge/pngtree-crying-kid-cartoon-illustration-image_2300892.jpg\" style=\"height:100px; width:100px\" />Ang bata sa larawan ay umiiyak. True or False?</p>\r\n', 2, 0, '2023-01-23 12:04:27', 'True'),
(93, 20, '<p><span style=\"font-size:16px\"><strong>Sino ako?</strong></span><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/en/b/bd/Doraemon_character.png\" style=\"height:100px; width:82px\" /></p>\r\n', 1, 0, '2023-01-23 12:08:21', 'B'),
(94, 20, '<p><img alt=\"\" src=\"https://pbs.twimg.com/media/FZgL-BqVQAA6CP2?format=jpg&amp;name=large\" style=\"height:100px; width:100px\" />Anong numero ang na sa damit ni Sakuragi?</p>\r\n', 1, 0, '2023-01-23 12:12:49', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2021-2022'),
(5, '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `verification_code` varchar(255) NOT NULL,
  `student_stat` varchar(255) NOT NULL,
  `user_session_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `email`, `password`, `location`, `status`, `verification_code`, `student_stat`, `user_session_id`) VALUES
(236, 'Juan ', 'Dela Cruz', 28, '100000000000', 'jdelacruz000000000000@gmail.com', 'juan@delacruz', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '261813096', 'active', ''),
(237, 'April Rose', 'Cabalhug', 28, 'abc123456789', 'choco.bieberian@gmail.com', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '261840525', 'active', ''),
(239, 'Daniel', 'Gorpido', 63, '107982170476', 'daniel.gorpido@gmail.com', '44436876', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '44436876', 'active', ''),
(240, 'Richard', 'Esposo', 63, '107982170528', 'richard.esposo@gmail.com', '2085140311', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '2085140311', 'active', ''),
(241, 'Johnsen', 'Denosta', 63, '164002160121', 'johnsen.denosta@gmail.com', '2080389170', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '2080389170', 'active', ''),
(242, 'Rowell', 'Cabiles', 63, '107982170005', 'rowel.cabiles@gmail.com', '702302370', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '702302370', 'active', ''),
(245, 'Zaijan', 'Pastolero', 63, '107982170049\n', 'ziajanpastolero@gmail.com', '331871411', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '331871411', 'active', ''),
(246, 'Nigel', 'Suson', 63, '107982170325\n', 'nigel.suson@gmail.com', '890128772', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '890128772', 'active', ''),
(247, 'Arvin', 'Velasco', 63, '107982170284\n', 'arvin.velasco@gmail.com', '1468578837', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1468578837', 'active', ''),
(248, 'Carla Mae', 'Banagan', 63, '107982170409', 'carlamae.banagan@gmail.com', '694018788', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '694018788', 'active', ''),
(249, 'Joy', 'Floranda ', 63, '114203160024\n', 'joy.floranda@gmail.com', '1925541979', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1925541979', 'active', ''),
(250, 'Jennilyn', 'Labong', 63, '107982170466\n', 'jennilyn.labong@gmail.com', '371024819', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '371024819', 'active', ''),
(251, 'KelssyJayne', 'Mendoza', 63, '107982170335', 'kelssyjayne.mendoza@gmail.com', '1188358515', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1188358515', 'active', ''),
(252, 'Kelly Jean', 'Saria', 63, '107982170457\n', 'kellyjean.saria@gmail.com', '1673362981', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1673362981', 'active', ''),
(253, 'Mhica Wynne', 'Param', 63, '108086170069\n', 'mhicawynne.param@gmail.com', '590892839', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '590892839', 'active', ''),
(254, 'Emaejane', 'Isaga', 63, '107982170413', 'emaejane.isaga@gmail.com', '1917017418', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1917017418', 'active', ''),
(255, 'Raizza Joyce', 'Zurita', 63, '107982170469', 'raizzajoyce.zurita@gmail.com', '66456958', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '66456958', 'active', ''),
(256, 'Kings Kayle', 'Calapati', 92, '107982210556', 'kingskayle.calapati@gmail.com', '304559656', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '304559656', 'active', ''),
(257, 'Luke Martin', 'Lacutab', 92, '107982210427\n', 'lukemartin.lacutab@gmail.com', '2142298526', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2142298526', 'active', ''),
(258, 'Jandrei', 'Del Mundo', 92, '107982210554', 'jandrei.delmundo@gmail.com', '211196505', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '211196505', 'active', ''),
(259, 'Yasser', 'Umpa', 92, '107982210142', 'yasser.umpa@gmail.com', '1621007658', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1621007658', 'active', ''),
(260, 'Marcus Kenjie', 'Española', 92, '107982210563', 'marcuskenjie.española@gmail.com', '951200447', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '951200447', 'active', ''),
(261, 'Reijhon Nahum', 'Pacuan', 92, '107982210564', 'reijhonnahum.pacuan@gmail.com', '171043441', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '171043441', 'active', ''),
(262, 'Jan Dhaniel', 'Ilano', 92, '107982210433', 'jandhaniel.ilano@gmail.com', '690000719', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '690000719', 'active', ''),
(263, 'Raizza', 'Alay-ay', 72, '136492160052', 'raizza.alay-ay@gmail.com', '2118352441', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2118352441', 'active', ''),
(264, 'Julia Patricia', 'Arevalo', 72, '107982160267', 'juliapatricia.arevalo@gmail.com', '1943805303', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1943805303', 'active', ''),
(265, 'Julie Mhae', 'Cabico', 72, '136478140657', 'juliemhae.cabico@gmail.com', '190398401', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '190398401', 'active', ''),
(266, 'Lovely Jane', 'Balidbid', 72, '107982160340', 'lovelyjane.balidbid@gmail.com', '1665108649', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1665108649', 'active', ''),
(267, 'Joshua', 'Acero', 46, '107872150284', 'JoshuaAcero03@gmail.com', '731761515', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '731761515', 'active', ''),
(268, 'Dangee', 'Barcero', 72, '107986160196', 'dangee.barcero@gmail.com', '1419324610', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1419324610', 'active', ''),
(269, 'Mary Joy', 'Sasis', 72, '107982160180', 'maryjoy.sasis@gmail.com', '515652609', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '515652609', 'active', ''),
(270, 'Jeisha Gail', 'Ebol', 72, '132695160048', 'jeishagail.ebol@gmail.com', '1739769262', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1739769262', 'active', ''),
(271, 'Maurizz Dhyvyn', 'Amo', 72, '108081160017', 'maurizzdhyvyn.amo@gmail.com', '604040641', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '604040641', 'active', ''),
(272, 'Francheska', 'Nas', 72, '107982160177', 'francheska.nas@gmail.com', '667267005', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '667267005', 'active', ''),
(273, 'Alexis', 'Antojado', 59, '107982160183', 'alexis.antejado@gmail.com', '1648048175', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1648048175', 'active', ''),
(274, 'Christel Mikee', 'Fernando', 72, '107982160345', 'christelmikee.fernando@gmail.com', '1350893587', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1350893587', 'active', ''),
(275, 'Jasmine Ruth ', 'Soriano', 72, '107982160247', 'jasmineruthsoriano@gmail.com', '1900724660', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1900724660', 'active', ''),
(276, 'Zhion David', 'Belara', 59, '107986160125', 'Belara_ZhionDavid@gmail.com', '557126379', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '557126379', 'active', ''),
(277, 'Teriza Andrea', 'Labutap', 72, '136598160235', 'terizaandrea.labutap@gmail.com', '1801996687', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1801996687', 'active', ''),
(278, 'Angeline', 'Oriol', 72, '107982160310', 'angeline.oriol@gmail.com', '2102679711', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2102679711', 'active', ''),
(279, ' Jetro Vincent', 'Cardones', 59, '107982160036', 'JetroCardones12@gmail.com', '1443915346', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1443915346', 'active', ''),
(280, 'Ayen Beatrice', 'Martelino', 72, '406357153361', 'ayenbeatrice.martelino@gmail.com', '605360670', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '605360670', 'active', ''),
(281, 'Ian Emmanuel', 'Damatan', 55, '107982160051', 'Iandamatanemmanuel@gmail.com', '1639179732', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1639179732', 'active', ''),
(282, 'Shayne Nicole', 'Petilla', 64, '107872160263', 'shaynenicole.petilla@gmail.com', '317410924', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '317410924', 'active', ''),
(283, 'Xian Xander', 'Fauni', 55, '107980160244', 'fauni_xianxander00@gmail.com', '704531107', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '704531107', 'active', ''),
(284, 'Xian Xander', 'Labayo', 55, '107982160409', 'labayo.xianxander@gmail.com', '1022056190', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1022056190', 'active', ''),
(285, 'Joshua', 'Pepito', 55, '107982160336', 'joshua_pepito23@gmail.com', '774997596', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '774997596', 'active', ''),
(286, 'Rafael Ivar', 'Perlas', 43, '488550150007', 'Rafael_Perlas@gnail.com', '665813680', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '665813680', 'active', ''),
(287, 'Otidec', 'Querubin ', 43, '107982160042', 'Otidec.Querubin96@gmail.com', '924314124', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '924314124', 'active', ''),
(288, 'Jorrel', 'Abraham', 59, '107982160152', 'AbrahamJorrel01@gmail.com', '591881139', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '591881139', 'active', ''),
(289, 'Yuan Troy', 'Asusano', 69, '107982160407', 'yuantroyasusano@gmail.com', '303204970', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '303204970', 'active', ''),
(290, 'Criezel Ann', 'Masapol', 43, '107982160349', 'CriezelAnn.Masapol012@gmail.com', '695275137', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '695275137', 'active', ''),
(291, 'Ma. Layla', 'Querubin', 43, '107982160169', 'MariaLayla.Querubin@gmail.com', '1502994493', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1502994493', 'active', ''),
(292, 'Kyle', 'Abella', 50, '107982180001', 'kyle.abella@gmail.com', '1945317069', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1945317069', 'active', ''),
(293, 'Rhein Kiel', 'Alcantara', 50, '107982170009', 'rheinkeil.alcantara@gmail.com', '611047838', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '611047838', 'active', ''),
(294, 'Ckhriz Andrei', 'Aninao', 28, '107982210391', 'andreimartinez@gmail.com', '817613101', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '817613101', 'active', ''),
(295, 'Ace', 'Barrameda', 50, '107982180538', 'ace.barrameda@gmail.com', '589854475', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '589854475', 'active', ''),
(296, 'Bryan James', 'Caritativo', 28, '107982210220', 'brryanjames_caritativo@gmail.com', '761422297', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '761422297', 'active', ''),
(297, 'Jay Ryan', 'Barzaga', 50, '107982180237', 'jayruan.barzaga@gmail.com', '1694371720', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1694371720', 'active', ''),
(298, 'Darren', 'Corpuz', 28, '107982210169', 'darrencorpuz@gmail.com', '1621282650', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1621282650', 'active', ''),
(299, 'Francis Ivan', 'Bolando', 50, '131132180057', 'francisivan.bolando@gmail.com', '365519058', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '365519058', 'active', ''),
(300, 'John Kyle', 'Dela Cruz', 28, '107982210007', 'JohnKyle.Delacruz@gmail.com', '272091707', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '272091707', 'active', ''),
(301, 'Zeus Luther', 'Canaria', 50, '107982180061', 'zeidluther.canaria@gmail.com', '1327489620', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1327489620', 'active', ''),
(302, 'Jherizz Jane', 'Buatis', 28, '107982210427', 'jherizzjane_buatiz@gmail.com', '667012530', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '667012530', 'active', ''),
(303, 'Shan Lhedvie', 'Crisostomo', 50, '107982180243', 'shanlhedvie.crisostomo@gmail.com', '2116804870', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2116804870', 'active', ''),
(304, 'Jedani', 'Divino', 50, '107982180157', 'jedani.divino@gmail.com', '1428540640', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1428540640', 'active', ''),
(305, 'Princess Clarisse', 'Diaz', 28, '107982210361', 'PrincessClarisse.Diaz@gmail.com', '1534514139', 'uploads/kween-leng-leng.gif', 'Registered', '1534514139', 'active', ''),
(306, 'Rjay', 'Ferreras', 50, '222503170143', 'rjay.ferreras@gmail.com', '730188483', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '730188483', 'active', ''),
(307, 'Princess Wreska', 'Oval', 28, '107982210114', 'Princesswreska_Oval@gmail.com', '11410595', 'uploads/sassa_gurl.png', 'Registered', '11410595', 'active', ''),
(308, 'Kharl', 'Gojar', 50, '107982180033', 'kharl.gojar@gmail.com', '485500796', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '485500796', 'active', ''),
(309, 'Zola Aerith', 'Reyes', 28, '107982210363', 'Reyes_ZolaAerith@gmail.com', '1113197157', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1113197157', 'active', ''),
(310, 'John Ryzen', 'Guerero', 50, '107982180464', 'johnryzen.guerero@gmail.com', '322107803', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '322107803', 'active', ''),
(311, 'Erich', 'Topacio', 28, '107982210011', 'ErichAmpongan.Topacio@gmail.com', '815633408', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '815633408', 'active', ''),
(312, 'Jerry', 'Santos', 28, '107982210306', 'Jerry.Santos03@gmail.com', '1495585470', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1495585470', 'active', ''),
(313, 'Rowell Jr.', 'Joven', 50, '107982170123', 'rowelljr.joven@gmail.com', '1361105919', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1361105919', 'active', ''),
(314, 'Rayven Azhmir', 'Lacsamana', 50, '107982180135', 'raivenazhmir.lacsamana@gmail.com', '848799893', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '848799893', 'active', ''),
(315, 'Patrick Lance', 'Dumaplin', 46, '107982190306', 'patricklance.dumaplin@gmail.com', '1917241901', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1917241901', 'active', ''),
(316, 'Jian Xiander', 'Gutierrez', 46, '107982190494', 'jianxiander.gutierrez@gmail.com', '1528834105', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1528834105', 'active', ''),
(317, 'Masayuki', 'Kikuchi', 46, '107982190039', 'masayuki.kikuchi@gmail.com', '597680552', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '597680552', 'active', ''),
(318, 'Andrey', 'Masapol', 46, '107982190088', 'andrey.masapol@gmail.com', '1841320133', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1841320133', 'active', ''),
(319, 'Prince Jio', 'Tanjueco', 46, '107982190059', 'princejio.tanjueco@gmail.com', '1177917073', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1177917073', 'active', ''),
(320, 'Mikaela Angel', 'Fernandez', 46, '107982190239', 'mikaelaangel.fernandez@gmail.com', '1330004962', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1330004962', 'active', ''),
(321, 'Prince Andrei', 'Rupido', 46, '107982190440', 'princeandrei.rupido@gmail.com', '1953746999', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1953746999', 'active', ''),
(322, 'Xian Christofferson', 'Mercado', 61, '108070180114', 'xianchristofferson.mercado@gmail.com', '332462492', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '332462492', 'active', ''),
(323, 'Ched Marcel', 'Purisima', 61, '136774180127', 'chedmarcel.purisima@gmail.com', '1290259449', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1290259449', 'active', ''),
(324, 'Shane Sandra', 'Lamela', 61, '107982190432', 'shanesandra.lamela@gmail.com', '1576418988', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1576418988', 'active', ''),
(325, 'Lovely', 'Pendon', 61, '136604180088', 'lovely.pendon@gmail.com', '103472081', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '103472081', 'active', ''),
(326, 'Ysabelle Abish', 'Raagas', 61, '107982180029', 'ysabelleabish.raagas@gmail.com', '2030420841', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2030420841', 'active', ''),
(327, 'Princess Joy', 'Velasco', 46, '424809190023', 'princessjoy.velasco@gmail.com', '2084130388', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2084130388', 'active', ''),
(328, 'Athena Louisse', 'Albareda', 46, '112936190092', 'athenalouisse.albareda@gmail.com', '858201863', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '858201863', 'active', ''),
(329, 'John Ricmille', 'Caritativo', 93, '107982170055', 'JohnRicmille_Caritativo@gmail.com', '1849862863', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1849862863', 'active', ''),
(330, 'Mikhail Andres', 'Cervantes', 93, '424198190004', 'MikhailAndresCervantes@gmail.com', '1295236172', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1295236172', 'active', ''),
(331, 'Darylle June', 'Jabon', 93, '107982170260', 'Daryllejunejabon@gmail.com', '679786757', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '679786757', 'active', ''),
(332, 'Rheana', 'Leonida', 93, '107982170369', 'Rheana_Leonida@gmail.com', '1059632567', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1059632567', 'active', ''),
(333, 'Sarah Jane', 'Merles', 93, '435025170051', 'sarahjanemerles@gmail.com', '632592155', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '632592155', 'active', ''),
(334, 'Ayesha Nicole', 'De Felix', 39, '107982200429', 'ayeshanicole.defelix@gmail.com', '1331153513', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1331153513', 'active', ''),
(335, 'Audrey Zofia', 'Cano', 39, '107982200192', 'AudreyCano@gmail.com', '1773592271', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1773592271', 'active', ''),
(336, 'Katelyn', 'Fontamillas', 39, '112082200031', 'Katelyn Fontamillas@gmail.com', '551907592', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '551907592', 'active', ''),
(337, 'John Leonard', 'Lim', 39, '136896200133', 'JohnLeonard_Lim@gmail.com', '1569649980', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1569649980', 'active', ''),
(338, 'Zachariah', 'Sangalang', 39, '107982200498', 'zachariah.sangalang@gmail.com', '1014018278', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1014018278', 'active', ''),
(340, 'Mark', 'Zuckerberg', 47, '123456789098', 'kierbrylle.cabalhug@gmail.com', '1592968223', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1592968223', 'inactive', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(3, 34, 'admin/uploads/3692_File_7659_File_Pagtatambal sa mga Pangngalan.pdf', '2022-12-16 17:13:50', 'Cabalhug_Assignment1', 'Ass1_Pangngalan', 237, '100'),
(4, 36, 'admin/uploads/3312_File_FilipinoVocabularyWorksheet-1 (1).pdf', '2022-12-17 12:26:10', 'Worksheet1', 'Cabalhug_Worksheet1', 237, '100'),
(5, 34, 'admin/uploads/7788_File_7659_File_Pagtatambal sa mga Pangngalan.pdf', '2022-12-26 15:26:38', 'Assignment1_Pangngalan', 'DelaCruz_Ass1', 236, '');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(100) DEFAULT NULL,
  `date_taken` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `grade`, `date_taken`) VALUES
(7, 21, 221, '1 out of 4', '2022-11-30 00:40:14'),
(8, 22, 221, '0 out of 4', '2022-11-24 02:51:15'),
(9, 23, 221, '0 out of 2', '2022-11-24 03:16:00'),
(10, 24, 221, '0 out of 2', '2022-11-24 03:23:00'),
(11, 25, 221, '0 out of 2', '2022-11-24 04:16:00'),
(12, 26, 221, '3 out of 4', '2022-11-24 05:21:11'),
(13, 27, 221, '1 out of 1', '2022-11-24 21:17:44'),
(14, 28, 221, '3 out of 4', '2022-11-24 10:30:00'),
(15, 29, 221, '2 out of 4', '2022-11-25 19:29:38'),
(16, 30, 221, '2 out of 2', '2022-11-25 20:02:19'),
(18, 32, 236, '5 out of 5', '2022-12-21 12:54:29'),
(19, 33, 237, '10 out of 10', '2022-12-21 12:55:00'),
(20, 33, 236, '7 out of 10', '2022-12-21 12:56:41'),
(24, 34, 237, '8 out of 10', '2023-01-04 18:36:47'),
(28, 34, 236, '9 out of 10', '2023-01-11 02:28:03'),
(43, 36, 237, '5 out of 5', '2023-01-17 19:17:04'),
(44, 37, 237, NULL, '0000-00-00 00:00:00'),
(45, 35, 237, NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz_answer`
--

CREATE TABLE `student_class_quiz_answer` (
  `exans_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_class_quiz_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `exam_answer` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `exans_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_class_quiz_answer`
--

INSERT INTO `student_class_quiz_answer` (`exans_id`, `student_id`, `student_class_quiz_id`, `exam_id`, `quiz_question_id`, `exam_answer`, `exans_created`) VALUES
(499, 237, 24, 34, 55, 'A', '2023-01-04 18:36:47'),
(500, 237, 24, 34, 64, 'False', '2023-01-04 18:36:47'),
(501, 237, 24, 34, 59, 'True', '2023-01-04 18:36:47'),
(502, 237, 24, 34, 60, 'False', '2023-01-04 18:36:47'),
(503, 237, 24, 34, 58, 'False', '2023-01-04 18:36:47'),
(504, 237, 24, 34, 54, 'A', '2023-01-04 18:36:47'),
(505, 237, 24, 34, 57, 'B', '2023-01-04 18:36:47'),
(506, 237, 24, 34, 56, 'A', '2023-01-04 18:36:47'),
(507, 237, 24, 34, 61, 'True', '2023-01-04 18:36:47'),
(508, 237, 24, 34, 53, 'A', '2023-01-04 18:36:47'),
(539, 236, 28, 34, 56, 'D', '2023-01-11 02:28:03'),
(540, 236, 28, 34, 55, 'D', '2023-01-11 02:28:03'),
(541, 236, 28, 34, 59, 'True', '2023-01-11 02:28:03'),
(542, 236, 28, 34, 53, 'A', '2023-01-11 02:28:03'),
(543, 236, 28, 34, 57, 'B', '2023-01-11 02:28:03'),
(544, 236, 28, 34, 58, 'False', '2023-01-11 02:28:03'),
(545, 236, 28, 34, 64, 'False', '2023-01-11 02:28:03'),
(546, 236, 28, 34, 54, 'A', '2023-01-11 02:28:03'),
(547, 236, 28, 34, 61, 'True', '2023-01-11 02:28:03'),
(548, 236, 28, 34, 60, 'False', '2023-01-11 02:28:03'),
(603, 237, 43, 36, 83, 'A', '2023-01-17 19:15:08'),
(604, 237, 43, 36, 82, 'B', '2023-01-17 19:15:08'),
(605, 237, 43, 36, 84, 'A', '2023-01-17 19:15:08'),
(606, 237, 43, 36, 85, 'D', '2023-01-17 19:15:08'),
(607, 237, 43, 36, 81, 'B', '2023-01-17 19:15:08'),
(608, 237, 24, 36, 83, 'A', '2023-01-17 19:15:47'),
(609, 237, 24, 36, 82, 'B', '2023-01-17 19:15:47'),
(610, 237, 24, 36, 84, 'A', '2023-01-17 19:15:47'),
(611, 237, 24, 36, 85, 'D', '2023-01-17 19:15:47'),
(612, 237, 24, 36, 81, 'B', '2023-01-17 19:15:47'),
(613, 237, 24, 36, 83, 'A', '2023-01-17 19:16:16'),
(614, 237, 24, 36, 82, 'B', '2023-01-17 19:16:16'),
(615, 237, 24, 36, 84, 'A', '2023-01-17 19:16:16'),
(616, 237, 24, 36, 85, 'D', '2023-01-17 19:16:16'),
(617, 237, 24, 36, 81, 'B', '2023-01-17 19:16:16'),
(618, 237, 24, 36, 83, 'A', '2023-01-17 19:16:55'),
(619, 237, 24, 36, 82, 'B', '2023-01-17 19:16:55'),
(620, 237, 24, 36, 84, 'A', '2023-01-17 19:16:55'),
(621, 237, 24, 36, 85, 'D', '2023-01-17 19:16:55'),
(622, 237, 24, 36, 81, 'B', '2023-01-17 19:16:55'),
(623, 237, 24, 36, 83, 'A', '2023-01-17 19:16:59'),
(624, 237, 24, 36, 82, 'B', '2023-01-17 19:16:59'),
(625, 237, 24, 36, 84, 'A', '2023-01-17 19:16:59'),
(626, 237, 24, 36, 85, 'D', '2023-01-17 19:16:59'),
(627, 237, 24, 36, 81, 'B', '2023-01-17 19:16:59'),
(628, 237, 24, 36, 83, 'A', '2023-01-17 19:17:04'),
(629, 237, 24, 36, 82, 'B', '2023-01-17 19:17:04'),
(630, 237, 24, 36, 84, 'A', '2023-01-17 19:17:04'),
(631, 237, 24, 36, 85, 'D', '2023-01-17 19:17:04'),
(632, 237, 24, 36, 81, 'B', '2023-01-17 19:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `quarter` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_title`, `category`, `description`, `quarter`) VALUES
(43, 'Mother Tongue', '', 'N/A', '1st'),
(44, 'English', '', '<p>N/A</p>\r\n', '1st'),
(45, 'Filipino', '', '<p>N/A</p>\r\n', '1st'),
(46, 'MAPEH', '', '<p>&lt;p&gt;&lt;strong&gt;Music, Arts, P.E, Health&lt;/strong&gt;&lt;/p&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n<p><strong>Music, Arts, P.E, Health</strong></p>\r\n', '1st'),
(47, 'Math', '', '<p>Mathematics</p>\r\n', '1st'),
(48, 'E.S.P', '', '<p><strong>Edukasyon sa Pagpapakatao</strong></p>\r\n', '1st'),
(49, 'A.P', '', '<p><strong>Araling Panlipunan</strong></p>\r\n', '1st'),
(50, 'Science', '', '<p>N/A</p>\r\n', '1st'),
(51, 'T.L.E', '', '<p><strong>Technology and Livelihood Education</strong></p>\r\n', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `verification_code` varchar(255) NOT NULL,
  `teacher_stat` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `email`, `password`, `firstname`, `lastname`, `department_id`, `location`, `teacher_status`, `verification_code`, `teacher_stat`) VALUES
(54, 'testing', 'bieberian08@gmail.com', 'testing', 'Cardo', 'Dalisay', 12, 'uploads/michele-morrone.jpg', 'Registered', '488456831', 'active'),
(57, 'thessa.eupatran', 'thessa.eupatran@bes-lms.com', '1283072092', 'Thessa', 'Eupratan', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1283072092', 'active'),
(58, 'luisa.villanueva', 'luisa.villanueva@bes-lms.com', '747089823', 'Luisa', 'Villanueva', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '747089823', 'active'),
(59, 'maricel.ruado', 'maricel.ruado@bes-lms.com', '1716018515', 'Maricel', 'Ruado', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1716018515', 'active'),
(60, '', 'mariflor.cuarto@bes-lms.com', '1930953860', 'Miraflor', 'Cuarto', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1930953860', 'active'),
(61, 'cristina.paitn', 'cristina.paitn@bes-lms.com', '810258663', 'Cristina', 'Paitn', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '810258663', 'active'),
(62, '', 'alice.gondran@bes-lms.com', '1990276489', 'Alice', 'Gondran', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1990276489', 'active'),
(63, '', 'michilline.posidio@bes-lms.com', '1673075205', 'Michilline', 'Posidio', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1673075205', 'active'),
(64, 'luningning.quindoza', 'luningning.quindoza@bes-lms.com', '266451759', 'Luningning', 'Quindoza', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '266451759', 'active'),
(65, 'wilma.arabiran', 'wilma.arabiran@bes-lms.com', '1188987974', 'Wilma', 'Arabiran', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1188987974', 'active'),
(66, 'marieper.aviles', 'marieper.aviles@bes-lms.com', '1066301696', 'Marieper', 'Aviles', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1066301696', 'active'),
(67, 'lucita.deguzman', 'lucita.deguzman@bes-lms.com', '1196320973', 'Lucita', 'De Guzman', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1196320973', 'active'),
(68, 'gemmalyn.delacruz', 'gemmalyn.delacruz@bes-lms.com', '326997528', 'Gemmalyn', 'Dela Cruz', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '326997528', 'active'),
(69, 'helen.tablante', 'helen.tablante@bes-lms.com', '604572224', 'Helen', 'Tablante', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '604572224', 'active'),
(70, 'shiela.emanel', 'shiela.emanel@bes-lms.com', '1360261399', 'Shiela', 'Emanel', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1360261399', 'active'),
(71, 'erna.campo', 'erna.campo@bes-lms.com', '545205905', 'Erna', 'Campo', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '545205905', 'active'),
(72, '', 'grace.villanueva@bes-lms.com', '272807329', 'Grace', 'Villanueva', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '272807329', 'active'),
(73, '', 'shiela.delima@bes-lms.com', '381144627', 'Shiela', 'Delima', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '381144627', 'active'),
(74, '', 'welcheryle.labitan@bes-lms.com', '111079929', 'Welcheryle', 'Labitan', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '111079929', 'active'),
(75, '', 'ginette.cabnegro@bes-lms.com', '1092717743', 'Ginette', 'Cabnegro', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1092717743', 'active'),
(76, 'emmalyn.reyes', 'emmalyn.reyes@bes-lms.com', '160816221', 'Emmalyn', 'Reyes', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '160816221', 'active'),
(77, '', 'shahani.abriol@bes-lms.com', '1718022107', 'Shahani', 'Abriol', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1718022107', 'active'),
(78, '', 'eduardo.cosiangco@bes-lms.com', '1669053658', 'Eduardo', 'Cosiangco', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1669053658', 'active'),
(79, '', 'rebecca.hordonez@bes-lms.com', '1578366966', 'Rebecca', 'Hordonez', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1578366966', 'active'),
(80, '', 'marilyn.ednacot@bes-lms.com', '1448979837', 'Marilyn', 'Ednacot', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1448979837', 'active'),
(81, '', 'nenita .tonera@bes-lms.com', '1918587105', 'Nenita ', 'Tonera', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1918587105', 'active'),
(82, '', 'lilibelle.basco@bes-lms.com', '995901994', 'Lilibelle', 'Basco', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '995901994', 'active'),
(83, '', 'jean.zaleta@bes-lms.com', '960785022', 'Jean', 'Zaleta', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '960785022', 'active'),
(84, '', 'daribe.nagtalon@bes-lms.com', '1967939124', 'Daribe', 'Nagtalon', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1967939124', 'active'),
(85, '', 'diana.caile@bes-lms.com', '1015664353', 'Diana', 'Caile', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1015664353', 'active'),
(122, 'Katleen Alag', 'alagkatleen@gmail.com', '2034948092', 'Katleen', 'Alag', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '2034948092', 'active'),
(87, '', 'ferry.balbio@bes-lms.com', '518951014', 'Ferry', 'Balbio', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '518951014', 'active'),
(88, '', 'maritess.cabug@bes-lms.com', '864258112', 'Maritess', 'Cabug', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '864258112', 'active'),
(89, '', 'marlene.manalo@bes-lms.com', '805241226', 'Marlene', 'Manalo', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '805241226', 'active'),
(90, '', 'shirley.cruz@bes-lms.com', '987537030', 'Shirley', 'Cruz', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '987537030', 'active'),
(91, '', 'eileen.bellen@bes-lms.com', '318139293', 'Eileen', 'Bellen', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '318139293', 'active'),
(92, '', 'joan.carlem@bes-lms.com', '1625587411', 'Joan', 'Carlem', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1625587411', 'active'),
(93, '', 'irene.dagumboy@bes-lms.com', '271694524', 'Irene', 'Dagumboy', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '271694524', 'active'),
(94, '', 'jennifer.reyes@bes-lms.com', '2130078722', 'Jennifer', 'Reyes', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2130078722', 'active'),
(95, '', 'cynthia.lining@bes-lms.com', '2098812767', 'Cynthia', 'Lining', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2098812767', 'active'),
(96, '', 'mylene.alarcon@bes-lms.com', '1369052202', 'Mylene', 'Alarcon', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1369052202', 'active'),
(97, '', 'madelle.gelle@bes-lms.com', '1776428049', 'Madelle', 'Gelle', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1776428049', 'active'),
(98, '', 'lucrecia.turingan@bes-lms.com', '2142487092', 'Lucrecia', 'Turingan', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2142487092', 'active'),
(99, '', 'nelson.salvilla@bes-lms.com', '1280409210', 'Nelson', 'Salvilla', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1280409210', 'active'),
(100, '', 'maricel.aquino@bes-lms.com', '1488250098', 'Maricel', 'Aquino', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1488250098', 'active'),
(101, '', 'rizalina.lopez@bes-lms.com', '1391628581', 'Rizalina', 'Lopez', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1391628581', 'active'),
(102, '', 'claudine.rocero@bes-lms.com', '988679085', 'Claudine', 'Rocero', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '988679085', 'active'),
(103, '', 'mario.alar@bes-lms.com', '1980293077', 'Mario', 'Alar', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1980293077', 'active'),
(104, '', 'jennalyn.paguirigan@bes-lms.com', '811333325', 'Jennalyn', 'Paguirigan', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '811333325', 'active'),
(105, '', 'leila.sasi@bes-lms.com', '1705900048', 'Leila', 'Sasi', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1705900048', 'active'),
(106, 'evelina.garcia', 'evelina.garcia@bes-lms.com', '1132276604', 'Evelina', 'Garcia', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '1132276604', 'active'),
(107, '', 'juanita.ersando@bes-lms.com', '1703651110', 'Juanita', 'Ersando', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1703651110', 'active'),
(108, '', 'judith.pagud@bes-lms.com', '723546739', 'Judith', 'Pagud', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '723546739', 'active'),
(109, '', 'jeeann.rafael@bes-lms.com', '2068640340', 'Jee Ann', 'Rafael', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2068640340', 'active'),
(110, '', 'arlene.hitsis@bes-lms.com', '1094957139', 'Arlene', 'Hitsis', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1094957139', 'active'),
(111, '', 'michelle.baliscao@bes-lms.com', '283016628', 'Michelle', 'Baliscao', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '283016628', 'active'),
(112, '', 'midlred.gabuat@bes-lms.com', '452377007', 'Midlred', 'Gabuat', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '452377007', 'active'),
(113, '', 'brigidojr.andal@bes-lms.com', '1227536110', 'Brigido Jr.', 'Andal ', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1227536110', 'active'),
(114, '', 'mia.delossantos@bes-lms.com', '673419988', 'Mia', 'Delos Santos', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '673419988', 'active'),
(115, '', 'noreli.buena@bes-lms.com', '2086977944', 'Noreli', 'Buena', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '2086977944', 'active'),
(116, '', 'virginia.vidar@bes-lms.com', '138811192', 'Virginia', 'Vidar', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '138811192', 'active'),
(117, 'evangelista.dalma@bes-lms.com', 'evangelista.dalma@bes-lms.com', '945442911', 'Evangelista', 'Dalma', 17, 'uploads/blank-profile-picture-973460_1280.webp', 'Registered', '945442911', 'active'),
(123, '', 'alagkatleen@gamil.com', '1540169696', 'Katleen', 'Alag', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1540169696', 'active'),
(124, '', 'username@gmail.com', '1865307306', 'Kim', 'Soo Hyun', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '1865307306', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(187, 21, 28, 47, 'admin/uploads/math.jpg', '2022-2023'),
(188, 22, 25, 46, 'admin/uploads/mapeh.jpg', '2023-2024'),
(189, 24, 74, 47, 'admin/uploads/math.jpg', '2023-2024'),
(190, 26, 68, 44, 'admin/uploads/thumbnails.jpg', '2023-2024'),
(191, 21, 28, 47, 'admin/uploads/math.jpg', '2021-2022'),
(192, 21, 28, 47, 'admin/uploads/math.jpg', '2023-2024'),
(193, 27, 28, 47, 'admin/uploads/math.jpg', '2021-2023'),
(195, 54, 86, 45, 'admin/uploads/thumbnails.jpg', '2023-2024'),
(197, 54, 28, 45, 'admin/uploads/filipino.jpg', '2022-2023'),
(199, 58, 79, 43, 'admin/uploads/mt.jpg', '2022-2023'),
(200, 106, 63, 44, 'admin/uploads/english.jpg', '2022-2023'),
(201, 117, 76, 48, 'admin/uploads/esp.png', '2022-2023'),
(202, 59, 92, 47, 'admin/uploads/math.jpg', '2022-2023'),
(203, 64, 28, 44, 'admin/uploads/english.jpg', '2022-2023'),
(204, 64, 29, 44, 'admin/uploads/english.jpg', '2022-2023'),
(205, 64, 30, 44, 'admin/uploads/english.jpg', '2022-2023'),
(206, 65, 28, 49, 'admin/uploads/ap.png', '2022-2023'),
(207, 65, 36, 49, 'admin/uploads/ap.png', '2022-2023'),
(209, 66, 31, 47, 'admin/uploads/math.jpg', '2022-2023'),
(210, 66, 29, 47, 'admin/uploads/math.jpg', '2022-2023'),
(211, 67, 28, 48, 'admin/uploads/esp.png', '2022-2023'),
(212, 67, 29, 48, 'admin/uploads/esp.png', '2022-2023'),
(213, 68, 28, 46, 'admin/uploads/mapeh.jpg', '2022-2023'),
(214, 69, 28, 43, 'admin/uploads/mt.jpg', '2022-2023'),
(215, 69, 32, 43, 'admin/uploads/mt.jpg', '2022-2023'),
(216, 69, 35, 43, 'admin/uploads/mt.jpg', '2022-2023'),
(217, 70, 28, 50, 'admin/uploads/science.jpg', '2022-2023'),
(218, 70, 36, 50, 'admin/uploads/science.jpg', '2022-2023'),
(219, 71, 28, 51, 'admin/uploads/tle.jpg', '2022-2023'),
(220, 71, 45, 51, 'admin/uploads/tle.jpg', '2022-2023'),
(221, 71, 47, 51, 'admin/uploads/tle.jpg', '2022-2023'),
(223, 66, 28, 47, 'admin/uploads/math.jpg', '2022-2023'),
(225, 76, 43, 45, 'admin/uploads/filipino.jpg', '2022-2023'),
(226, 76, 39, 45, 'admin/uploads/filipino.jpg', '2022-2023'),
(227, 61, 92, 44, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(228, 54, 35, 45, 'admin/uploads/filipino.jpg', '2022-2023'),
(229, 54, 92, 43, 'admin/uploads/mt.jpg', '2022-2023'),
(230, 54, 92, 45, 'admin/uploads/filipino.jpg', '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(40, '<p>Good day class, I&#39;ve posted a video lesson for today. Thank you.&nbsp;<img alt=\"smiley\" src=\"https://bes-lms.com/admin/vendors/ckeditor/plugins/smiley/images/regular_smile.gif\" style=\"height:20px; width:20px\" title=\"smiley\" /></p>\r\n', '54', 197, '2022-12-16 10:54:10'),
(41, '<p style=\"text-align: center;\"><span style=\"color:#FF0000\"><strong><span style=\"background-color:#FFFF00\">Emmanuel</span></strong></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"color:#000000\"><strong><span style=\"background-color:#FFF0F5\">Wla tayong pasok tommorrow enjoy your holiday!</span></strong></span></p>\r\n', '117', 201, '2023-01-07 08:07:40'),
(42, '<p><img alt=\"Walang Pasok\" src=\"https://img.freepik.com/free-psd/template-open-admission-elementary-school_23-2148233185.jpg?w=2000\" style=\"height:100px; width:100px\" />&nbsp;<span style=\"font-size:22px\"><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\"><strong><span style=\"color:#B22222\">Walang Pasok!!</span></strong></span></span></p>\r\n', '54', 197, '2023-01-23 11:29:01'),
(43, '<p><img alt=\"Walang Pasok\" src=\"https://img.freepik.com/free-psd/template-open-admission-elementary-school_23-2148233185.jpg?w=2000\" style=\"height:100px; width:100px\" />&nbsp;<span style=\"font-size:22px\"><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\"><strong><span style=\"color:#B22222\">Walang Pasok!!</span></strong></span></span></p>\r\n', '54', 228, '2023-01-23 11:29:01'),
(44, '<p><img alt=\"Walang Pasok\" src=\"https://img.freepik.com/free-psd/template-open-admission-elementary-school_23-2148233185.jpg?w=2000\" style=\"height:100px; width:100px\" />&nbsp;<span style=\"font-size:22px\"><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\"><strong><span style=\"color:#B22222\">Walang Pasok!!</span></strong></span></span></p>\r\n', '54', 229, '2023-01-23 11:29:01'),
(45, '<p><img alt=\"Walang Pasok\" src=\"https://img.freepik.com/free-psd/template-open-admission-elementary-school_23-2148233185.jpg?w=2000\" style=\"height:100px; width:100px\" />&nbsp;<span style=\"font-size:22px\"><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\"><strong><span style=\"color:#B22222\">Walang Pasok!!</span></strong></span></span></p>\r\n', '54', 230, '2023-01-23 11:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(391, 195, 237, 54),
(393, 197, 237, 54),
(394, 197, 236, 54),
(395, 198, 236, 56),
(396, 198, 237, 56),
(397, 200, 239, 106),
(398, 203, 236, 64),
(399, 203, 237, 64),
(400, 206, 236, 65),
(401, 206, 237, 65),
(404, 211, 236, 67),
(405, 211, 237, 67),
(406, 213, 236, 68),
(407, 213, 237, 68),
(408, 214, 236, 69),
(409, 214, 237, 69),
(410, 217, 236, 70),
(411, 217, 237, 70),
(412, 219, 236, 71),
(413, 219, 237, 71),
(414, 197, 294, 54),
(415, 197, 296, 54),
(416, 197, 298, 54),
(417, 197, 300, 54),
(418, 197, 302, 54),
(419, 197, 305, 54),
(420, 197, 307, 54),
(421, 197, 309, 54),
(422, 197, 311, 54),
(423, 197, 312, 54),
(424, 223, 236, 66),
(425, 223, 237, 66),
(426, 223, 294, 66),
(427, 223, 296, 66),
(428, 223, 298, 66),
(429, 223, 300, 66),
(430, 223, 302, 66),
(431, 223, 305, 66),
(432, 223, 307, 66),
(433, 223, 309, 66),
(434, 223, 311, 66),
(435, 223, 312, 66),
(436, 225, 286, 76),
(437, 225, 287, 76),
(438, 225, 290, 76),
(439, 225, 291, 76),
(440, 226, 334, 76),
(441, 226, 335, 76),
(442, 226, 336, 76),
(443, 226, 337, 76),
(444, 226, 338, 76),
(445, 227, 256, 61),
(446, 227, 257, 61),
(447, 227, 258, 61),
(448, 227, 259, 61),
(449, 227, 260, 61),
(450, 227, 261, 61),
(451, 227, 262, 61),
(452, 229, 256, 54),
(453, 229, 257, 54),
(454, 229, 258, 54),
(455, 229, 259, 54),
(456, 229, 260, 54),
(457, 229, 261, 54),
(458, 229, 262, 54),
(459, 230, 256, 54),
(460, 230, 257, 54),
(461, 230, 258, 54),
(462, 230, 259, 54),
(463, 230, 260, 54),
(464, 230, 261, 54),
(465, 230, 262, 54);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(19, 192, 'Submit Assignment file name <b>mm</b>', '2022-12-12 07:11:20', 'view_submit_assignment.php', 221, 32),
(20, 197, 'Submit Assignment file name <b>Ass1_Pangngalan</b>', '2022-12-16 17:13:50', 'view_submit_assignment.php', 237, 34),
(21, 197, 'Submit Assignment file name <b>Cabalhug_Worksheet1</b>', '2022-12-17 12:26:10', 'view_submit_assignment.php', 237, 36),
(22, 197, 'Submit Assignment file name <b>DelaCruz_Ass1</b>', '2022-12-26 15:26:38', 'view_submit_assignment.php', 236, 34),
(23, 197, 'Add Downloadable Materials file name <b>sample file</b>', '2023-01-09 10:26:31', 'downloadable.php', 237, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(2, 54, 56, 'admin/uploads/3965_File_videoplayback.mp4', '2022-12-27 18:40:41', 'Pangngalan', 'Fil1_Pangngalan'),
(3, 76, 54, 'admin/uploads/2536_File_Maikling Kwento Set 8.pdf', '2023-01-08 05:51:30', 'Maiking Kwento', 'MaiklingKwento_set1'),
(4, 54, 76, 'admin/uploads/3965_File_videoplayback.mp4', '2023-01-08 07:04:23', 'Pangngalan', 'Fil1_Pangngalan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `verification_code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `firstname`, `lastname`, `location`, `verification_code`, `status`) VALUES
(15, 'admin', 'admin@bes-lms.com', 'admin', 'admin', 'admin', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'active'),
(16, 'admin_april', 'choco.bieberian@gmail.com', 'cabiebe', 'April', 'Cabalhug', 'uploads/taylor_hill_edited.jpg', '', 'active'),
(20, 'admin_mj', 'maryjoy.terol@cvsu.edu.ph', '1677965551', 'Mary joy', 'Terol', 'uploads/NO-IMAGE-AVAILABLE.jpg', '1677965551', 'active'),
(21, 'admin_rializa', 'rializa.magpugay@cvsu.edu.ph', '672578934', 'Rializa', 'Magpugay', 'uploads/NO-IMAGE-AVAILABLE.jpg', '672578934', 'active'),
(22, 'admin_rica', 'ricaxeniana@gmail.com', '1129983039', 'Rica', 'Rogero', 'uploads/NO-IMAGE-AVAILABLE.jpg', '1129983039', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(86, 'admin', '2022-05-16 01:33:08', '2023-01-27 05:52:12', 15),
(87, 'admin', '2022-09-12 19:09:26', '2023-01-27 05:52:12', 15),
(88, 'admin', '2022-09-12 23:51:55', '2023-01-27 05:52:12', 15),
(89, 'admin', '2022-09-16 00:12:04', '2023-01-27 05:52:12', 15),
(90, 'admin', '2022-09-26 00:33:35', '2023-01-27 05:52:12', 15),
(91, 'admin', '2022-09-28 22:01:56', '2023-01-27 05:52:12', 15),
(92, 'admin', '2022-09-28 23:00:11', '2023-01-27 05:52:12', 15),
(93, 'admin', '2022-10-01 01:02:01', '2023-01-27 05:52:12', 15),
(94, 'admin', '2022-10-06 01:00:13', '2023-01-27 05:52:12', 15),
(95, 'admin', '2022-10-20 11:40:54', '2023-01-27 05:52:12', 15),
(96, 'admin', '2022-10-20 11:58:18', '2023-01-27 05:52:12', 15),
(97, 'admin', '2022-10-20 14:45:51', '2023-01-27 05:52:12', 15),
(98, 'admin', '2022-10-20 15:57:05', '2023-01-27 05:52:12', 15),
(99, 'admin', '2022-11-27 00:59:32', '2023-01-27 05:52:12', 15),
(100, 'admin', '2022-12-04 19:47:06', '2023-01-27 05:52:12', 15),
(101, 'admin', '2022-12-04 23:55:16', '2023-01-27 05:52:12', 15),
(102, 'admin', '2022-12-06 01:18:21', '2023-01-27 05:52:12', 15),
(103, 'admin', '2022-12-06 02:32:00', '2023-01-27 05:52:12', 15),
(104, 'admin', '2022-12-06 10:15:42', '2023-01-27 05:52:12', 15),
(105, 'admin', '2022-12-06 14:49:39', '2023-01-27 05:52:12', 15),
(106, 'admin', '2022-12-06 23:54:24', '2023-01-27 05:52:12', 15),
(107, 'admin', '2022-12-07 01:49:10', '2023-01-27 05:52:12', 15),
(108, 'admin', '2022-12-07 17:50:11', '2023-01-27 05:52:12', 15),
(109, 'admin', '2022-12-07 18:46:58', '2023-01-27 05:52:12', 15),
(110, 'admin', '2022-12-07 20:53:47', '2023-01-27 05:52:12', 15),
(111, 'admin', '2022-12-08 01:37:05', '2023-01-27 05:52:12', 15),
(112, 'admin', '2022-12-08 10:55:23', '2023-01-27 05:52:12', 15),
(113, 'admin', '2022-12-08 12:09:39', '2023-01-27 05:52:12', 15),
(114, 'admin', '2022-12-08 13:16:20', '2023-01-27 05:52:12', 15),
(115, 'admin', '2022-12-12 12:05:59', '2023-01-27 05:52:12', 15),
(116, 'admin', '2022-12-12 06:25:02', '2023-01-27 05:52:12', 15),
(117, 'admin', '2022-12-12 06:35:37', '2023-01-27 05:52:12', 15),
(118, 'admin', '2022-12-13 14:44:18', '2023-01-27 05:52:12', 15),
(119, 'admin', '2022-12-14 06:25:53', '2023-01-27 05:52:12', 15),
(120, 'admin', '2022-12-14 07:00:26', '2023-01-27 05:52:12', 15),
(121, 'admin', '2022-12-14 15:13:04', '2023-01-27 05:52:12', 15),
(122, 'admin ', '2022-12-14 16:27:10', '2023-01-27 05:52:12', 15),
(123, 'admin', '2022-12-15 05:37:18', '2023-01-27 05:52:12', 15),
(124, 'admin', '2022-12-15 05:37:18', '2023-01-27 05:52:12', 15),
(125, 'admin', '2022-12-15 23:11:48', '2023-01-27 05:52:12', 15),
(126, 'admin', '2022-12-16 05:39:12', '2023-01-27 05:52:12', 15),
(127, 'admin', '2022-12-16 08:44:28', '2023-01-27 05:52:12', 15),
(128, 'admin', '2022-12-16 09:10:14', '2023-01-27 05:52:12', 15),
(129, 'admin', '2022-12-16 09:17:21', '2023-01-27 05:52:12', 15),
(130, 'admin', '2022-12-16 12:25:18', '2023-01-27 05:52:12', 15),
(131, 'admin', '2022-12-18 02:06:55', '2023-01-27 05:52:12', 15),
(132, 'admin', '2022-12-18 12:34:15', '2023-01-27 05:52:12', 15),
(133, 'admin', '2022-12-19 08:05:18', '2023-01-27 05:52:12', 15),
(134, 'admin', '2022-12-19 09:48:32', '2023-01-27 05:52:12', 15),
(135, 'admin', '2022-12-19 10:29:46', '2023-01-27 05:52:12', 15),
(136, 'admin', '2022-12-19 11:11:02', '2023-01-27 05:52:12', 15),
(137, 'admin', '2022-12-19 15:10:06', '2023-01-27 05:52:12', 15),
(138, 'admin', '2022-12-19 17:08:06', '2023-01-27 05:52:12', 15),
(139, 'admin', '2022-12-20 10:55:48', '2023-01-27 05:52:12', 15),
(140, 'admin', '2022-12-21 11:03:42', '2023-01-27 05:52:12', 15),
(141, 'admin', '2022-12-21 11:58:54', '2023-01-27 05:52:12', 15),
(142, 'admin', '2022-12-21 12:27:16', '2023-01-27 05:52:12', 15),
(143, 'admin', '2022-12-22 06:55:33', '2023-01-27 05:52:12', 15),
(144, 'admin', '2022-12-22 08:26:07', '2023-01-27 05:52:12', 15),
(145, 'admin', '2022-12-26 15:50:22', '2023-01-27 05:52:12', 15),
(146, 'admin', '2022-12-26 16:29:41', '2023-01-27 05:52:12', 15),
(147, 'admin ', '2022-12-26 17:19:17', '2023-01-27 05:52:12', 15),
(148, 'admin', '2022-12-26 17:30:54', '2023-01-27 05:52:12', 15),
(149, 'admin', '2022-12-27 17:47:38', '2023-01-27 05:52:12', 15),
(150, 'admin', '2022-12-28 13:55:53', '2023-01-27 05:52:12', 15),
(151, 'admin', '2022-12-29 00:41:17', '2023-01-27 05:52:12', 15),
(152, 'admin', '2022-12-29 12:28:11', '2023-01-27 05:52:12', 15),
(153, 'admin', '2022-12-29 12:28:47', '2023-01-27 05:52:12', 15),
(154, 'admin', '2022-12-29 12:28:51', '2023-01-27 05:52:12', 15),
(155, 'admin', '2022-12-29 12:28:57', '2023-01-27 05:52:12', 15),
(156, 'admin', '2023-01-01 14:40:11', '2023-01-27 05:52:12', 15),
(157, 'admin', '2023-01-01 16:38:33', '2023-01-27 05:52:12', 15),
(158, 'admin', '2023-01-01 16:42:32', '2023-01-27 05:52:12', 15),
(159, 'admin', '2023-01-02 03:40:47', '2023-01-27 05:52:12', 15),
(160, 'admin ', '2023-01-04 05:08:39', '2023-01-27 05:52:12', 15),
(161, 'admin', '2023-01-04 06:40:24', '2023-01-27 05:52:12', 15),
(162, 'admin', '2023-01-04 09:25:46', '2023-01-27 05:52:12', 15),
(163, 'admin', '2023-01-04 09:25:46', '2023-01-27 05:52:12', 15),
(164, 'admin', '2023-01-04 09:25:46', '2023-01-27 05:52:12', 15),
(165, 'admin', '2023-01-04 09:30:30', '2023-01-27 05:52:12', 15),
(166, 'admin', '2023-01-04 10:34:24', '2023-01-27 05:52:12', 15),
(167, 'admin', '2023-01-05 05:34:27', '2023-01-27 05:52:12', 15),
(168, 'admin', '2023-01-05 05:54:23', '2023-01-27 05:52:12', 15),
(169, 'admin', '2023-01-06 06:22:35', '2023-01-27 05:52:12', 15),
(170, 'admin', '2023-01-06 06:22:35', '2023-01-27 05:52:12', 15),
(171, 'admin_rializa', '2023-01-06 06:23:43', '2023-01-10 16:44:17', 21),
(172, 'admin_rializa', '2023-01-06 06:23:43', '2023-01-10 16:44:17', 21),
(173, 'admin', '2023-01-06 06:58:41', '2023-01-27 05:52:12', 15),
(174, 'admin', '2023-01-06 07:31:19', '2023-01-27 05:52:12', 15),
(175, 'admin_rializa', '2023-01-06 12:15:55', '2023-01-10 16:44:17', 21),
(176, 'admin', '2023-01-06 17:46:39', '2023-01-27 05:52:12', 15),
(177, 'admin', '2023-01-07 07:34:30', '2023-01-27 05:52:12', 15),
(178, 'admin', '2023-01-07 08:49:00', '2023-01-27 05:52:12', 15),
(179, 'admin', '2023-01-07 10:51:56', '2023-01-27 05:52:12', 15),
(180, 'admin', '2023-01-07 13:17:52', '2023-01-27 05:52:12', 15),
(181, 'admin', '2023-01-07 13:34:53', '2023-01-27 05:52:12', 15),
(182, 'admin', '2023-01-07 13:51:17', '2023-01-27 05:52:12', 15),
(183, 'admin', '2023-01-07 14:59:55', '2023-01-27 05:52:12', 15),
(184, 'admin', '2023-01-08 01:39:44', '2023-01-27 05:52:12', 15),
(185, 'admin', '2023-01-08 01:44:14', '2023-01-27 05:52:12', 15),
(186, 'admin', '2023-01-08 01:58:40', '2023-01-27 05:52:12', 15),
(187, 'admin', '2023-01-08 02:02:39', '2023-01-27 05:52:12', 15),
(188, 'admin', '2023-01-08 02:16:02', '2023-01-27 05:52:12', 15),
(189, 'admin', '2023-01-08 02:31:14', '2023-01-27 05:52:12', 15),
(190, 'admin', '2023-01-08 02:50:31', '2023-01-27 05:52:12', 15),
(191, 'admin', '2023-01-08 02:54:39', '2023-01-27 05:52:12', 15),
(192, 'admin', '2023-01-08 02:58:53', '2023-01-27 05:52:12', 15),
(193, 'admin', '2023-01-08 04:29:46', '2023-01-27 05:52:12', 15),
(194, 'admin', '2023-01-08 06:53:45', '2023-01-27 05:52:12', 15),
(195, 'admin_rializa', '2023-01-08 07:00:24', '2023-01-10 16:44:17', 21),
(196, 'admin_rializa', '2023-01-08 07:06:33', '2023-01-10 16:44:17', 21),
(197, 'admin', '2023-01-08 09:08:05', '2023-01-27 05:52:12', 15),
(198, 'admin', '2023-01-08 11:17:12', '2023-01-27 05:52:12', 15),
(199, 'admin', '2023-01-08 15:41:20', '2023-01-27 05:52:12', 15),
(200, 'admin', '2023-01-08 18:16:12', '2023-01-27 05:52:12', 15),
(201, 'admin', '2023-01-09 05:58:46', '2023-01-27 05:52:12', 15),
(202, 'admin', '2023-01-09 06:07:45', '2023-01-27 05:52:12', 15),
(203, 'admin', '2023-01-09 06:32:29', '2023-01-27 05:52:12', 15),
(204, 'admin', '2023-01-09 06:41:47', '2023-01-27 05:52:12', 15),
(205, 'admin', '2023-01-09 06:44:13', '2023-01-27 05:52:12', 15),
(206, 'admin', '2023-01-09 06:50:22', '2023-01-27 05:52:12', 15),
(207, 'admin', '2023-01-09 07:06:09', '2023-01-27 05:52:12', 15),
(208, 'admin', '2023-01-09 07:28:38', '2023-01-27 05:52:12', 15),
(209, 'admin_rializa', '2023-01-09 07:52:35', '2023-01-10 16:44:17', 21),
(210, 'admin_rializa', '2023-01-09 07:52:37', '2023-01-10 16:44:17', 21),
(211, 'admin', '2023-01-10 09:36:34', '2023-01-27 05:52:12', 15),
(212, 'admin', '2023-01-10 11:07:59', '2023-01-27 05:52:12', 15),
(213, 'admin', '2023-01-10 14:53:37', '2023-01-27 05:52:12', 15),
(214, 'admin_rializa', '2023-01-10 16:12:25', '2023-01-10 16:44:17', 21),
(215, 'admin_rializa', '2023-01-10 17:51:56', '', 21),
(216, 'admin', '2023-01-10 23:20:54', '2023-01-27 05:52:12', 15),
(217, 'admin', '2023-01-11 01:25:51', '2023-01-27 05:52:12', 15),
(218, 'admin', '2023-01-11 06:29:08', '2023-01-27 05:52:12', 15),
(219, 'admin', '2023-01-11 10:04:09', '2023-01-27 05:52:12', 15),
(220, 'admin', '2023-01-11 20:26:56', '2023-01-27 05:52:12', 15),
(221, 'admin', '2023-01-13 20:47:52', '2023-01-27 05:52:12', 15),
(222, 'admin', '2023-01-13 22:55:25', '2023-01-27 05:52:12', 15),
(223, 'admin', '2023-01-14 14:48:48', '2023-01-27 05:52:12', 15),
(224, 'admin_rializa', '2023-01-15 02:09:21', '', 21),
(225, 'admin_rializa', '2023-01-15 02:09:21', '', 21),
(226, 'admin_rializa', '2023-01-15 02:09:21', '', 21),
(227, 'admin', '2023-01-15 02:33:59', '2023-01-27 05:52:12', 15),
(228, 'admin', '2023-01-15 07:09:46', '2023-01-27 05:52:12', 15),
(229, 'admin_rializa', '2023-01-15 07:55:57', '', 21),
(230, 'admin_rializa', '2023-01-15 07:55:57', '', 21),
(231, 'admin', '2023-01-15 08:34:13', '2023-01-27 05:52:12', 15),
(232, 'admin_rializa', '2023-01-15 08:49:55', '', 21),
(233, 'admin_rializa', '2023-01-15 11:24:27', '', 21),
(234, 'admin_rializa', '2023-01-15 11:27:14', '', 21),
(235, 'admin', '2023-01-15 11:57:13', '2023-01-27 05:52:12', 15),
(236, 'admin', '2023-01-16 03:02:35', '2023-01-27 05:52:12', 15),
(237, 'admin', '2023-01-16 03:08:40', '2023-01-27 05:52:12', 15),
(238, 'admin', '2023-01-16 06:30:07', '2023-01-27 05:52:12', 15),
(239, 'admin', '2023-01-16 11:57:59', '2023-01-27 05:52:12', 15),
(240, 'admin', '2023-01-16 16:12:11', '2023-01-27 05:52:12', 15),
(241, 'admin', '2023-01-16 19:06:41', '2023-01-27 05:52:12', 15),
(242, 'admin', '2023-01-17 02:09:11', '2023-01-27 05:52:12', 15),
(243, 'admin', '2023-01-17 02:33:36', '2023-01-27 05:52:12', 15),
(244, 'admin', '2023-01-17 02:41:28', '2023-01-27 05:52:12', 15),
(245, 'admin', '2023-01-17 03:15:29', '2023-01-27 05:52:12', 15),
(246, 'admin', '2023-01-17 03:23:39', '2023-01-27 05:52:12', 15),
(247, 'admin_april', '2023-01-17 03:29:27', '2023-01-17 16:04:25', 16),
(248, 'admin_april', '2023-01-17 03:49:10', '2023-01-17 16:04:25', 16),
(249, 'admin_rializa', '2023-01-17 07:37:52', '', 21),
(250, 'admin_rializa', '2023-01-17 07:37:54', '', 21),
(251, 'admin_rializa', '2023-01-17 07:37:55', '', 21),
(252, 'admin_rializa', '2023-01-17 07:37:56', '', 21),
(253, 'admin_rializa', '2023-01-17 07:37:57', '', 21),
(254, 'admin', '2023-01-17 08:22:56', '2023-01-27 05:52:12', 15),
(255, 'admin_rializa', '2023-01-17 09:52:31', '', 21),
(256, 'admin', '2023-01-17 11:21:22', '2023-01-27 05:52:12', 15),
(257, 'admin', '2023-01-17 11:45:35', '2023-01-27 05:52:12', 15),
(258, 'admin_april', '2023-01-17 13:20:49', '2023-01-17 16:04:25', 16),
(259, 'admin', '2023-01-17 13:33:41', '2023-01-27 05:52:12', 15),
(260, 'admin', '2023-01-17 14:24:13', '2023-01-27 05:52:12', 15),
(261, 'admin', '2023-01-17 17:36:50', '2023-01-27 05:52:12', 15),
(262, 'admin', '2023-01-17 20:10:15', '2023-01-27 05:52:12', 15),
(263, 'admin', '2023-01-18 07:48:22', '2023-01-27 05:52:12', 15),
(264, 'admin', '2023-01-18 08:53:53', '2023-01-27 05:52:12', 15),
(265, 'admin', '2023-01-18 09:54:39', '2023-01-27 05:52:12', 15),
(266, 'admin', '2023-01-18 13:09:56', '2023-01-27 05:52:12', 15),
(267, 'admin', '2023-01-18 13:10:00', '2023-01-27 05:52:12', 15),
(268, 'admin', '2023-01-18 13:15:22', '2023-01-27 05:52:12', 15),
(269, 'admin', '2023-01-18 13:22:03', '2023-01-27 05:52:12', 15),
(270, 'admin', '2023-01-18 13:22:05', '2023-01-27 05:52:12', 15),
(271, 'admin', '2023-01-19 01:50:08', '2023-01-27 05:52:12', 15),
(272, 'admin', '2023-01-19 01:54:24', '2023-01-27 05:52:12', 15),
(273, 'admin', '2023-01-19 07:56:06', '2023-01-27 05:52:12', 15),
(274, 'admin', '2023-01-19 09:53:20', '2023-01-27 05:52:12', 15),
(275, 'admin', '2023-01-20 16:37:32', '2023-01-27 05:52:12', 15),
(276, 'admin', '2023-01-21 10:35:02', '2023-01-27 05:52:12', 15),
(277, 'admin', '2023-01-22 05:34:27', '2023-01-27 05:52:12', 15),
(278, 'admin', '2023-01-23 23:20:36', '2023-01-27 05:52:12', 15),
(279, 'admin', '2023-01-24 02:23:11', '2023-01-27 05:52:12', 15),
(280, 'admin', '2023-01-24 05:58:38', '2023-01-27 05:52:12', 15),
(281, 'admin', '2023-01-24 09:05:39', '2023-01-27 05:52:12', 15),
(282, 'admin', '2023-01-24 16:12:48', '2023-01-27 05:52:12', 15),
(283, 'admin', '2023-01-25 15:32:58', '2023-01-27 05:52:12', 15),
(284, 'admin', '2023-01-26 13:59:20', '2023-01-27 05:52:12', 15),
(285, 'admin', '2023-01-26 13:59:20', '2023-01-27 05:52:12', 15),
(286, 'admin', '2023-01-26 15:03:20', '2023-01-27 05:52:12', 15),
(287, 'admin', '2023-01-26 15:49:02', '2023-01-27 05:52:12', 15),
(288, 'admin', '2023-01-27 00:28:25', '2023-01-27 05:52:12', 15),
(289, 'admin', '2023-01-27 05:46:56', '2023-01-27 05:52:12', 15),
(290, 'admin', '2023-02-12 16:21:16', '', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `student_class_quiz_answer`
--
ALTER TABLE `student_class_quiz_answer`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `student_class_quiz_answer`
--
ALTER TABLE `student_class_quiz_answer`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
