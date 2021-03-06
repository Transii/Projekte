-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 04. Sep 2020 um 07:19
-- Server-Version: 10.0.17-MariaDB
-- PHP-Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `Kursverwaltung_2020`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblkurs`
--

CREATE TABLE `tblkurs` (
  `KNr` int(11) NOT NULL DEFAULT '0',
  `Kursbezeichnung` char(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Kurs_Dauer` float DEFAULT '0',
  `ThNr` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `tblkurs`
--

INSERT INTO `tblkurs` (`KNr`, `Kursbezeichnung`, `Kurs_Dauer`, `ThNr`) VALUES
(1, 'Arbeitshygiene', 3, 1),
(2, 'Abfallentsorgung', 2, 1),
(3, 'Datenbanken', 5, 2),
(4, 'Einfuehrung Tabellenkalkulation', 5, 2),
(7, 'Schwierige Gespraeche fuehren', 5, 3),
(100, 'Die neue Waermeschutzverordnung', 2, 1),
(130, 'Schallschutz', 1, 1),
(150, 'Massnahmen zur Unfallverhuetung und zum Unfallschutz', 3, 1),
(170, 'Recycling im Beschaffungsbereich', 4, 1),
(210, 'ISDN fuer Einsteiger', 1, 2),
(220, 'CDs selbstgemacht', 1, 2),
(221, 'PC selbst reparieren, tunen und erweitern', 3, 2),
(240, 'Windows NT', 5, 2),
(245, 'Windows 2000', 3, 2),
(260, 'Windows-Programmierung', 10, 2),
(270, 'Visual Basic - Grundlagen', 5, 2),
(271, 'Visual Basic - Vertiefung', 7, 2),
(272, 'Visual Basic fuer Fortgeschrittene - effiziente Programmentwicklung unter Windows', 10, 2),
(273, 'VBA / VB', 5, 2),
(275, 'Entwicklung von Windows-Programmen mit Delphi', 5, 2),
(290, 'Theorie und Praxis relationaler Datenbanken', 4, 2),
(291, 'Datenbanktheorie/Datenbankentwurf', 3, 2),
(292, 'Access fuer Einsteiger', 3, 2),
(293, 'Access fuer Anwender', 5, 2),
(294, 'Access fuer Profis', 7, 2),
(300, 'Der Weg nach vorn - Die Zukunft der Informationsgesellschaft', 2, 3),
(310, 'Internet fuer Manager', 1, 3),
(311, 'JAVA fuer Manager', 3, 3),
(350, 'Gruppendynamische Prozesse', 1, 3),
(351, 'Konfliktmanagement', 2, 3),
(390, 'Terminmanagement', 1, 3),
(395, 'Access fuer Manager', 2, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblkursbesuch`
--

CREATE TABLE `tblkursbesuch` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `TNr` int(11) NOT NULL DEFAULT '0',
  `KNr` int(11) NOT NULL DEFAULT '0',
  `Kursbeginn` date NOT NULL DEFAULT '0000-00-00',
  `KlNr` int(11) NOT NULL DEFAULT '0',
  `KoNr` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `tblkursbesuch`
--

INSERT INTO `tblkursbesuch` (`ID`, `TNr`, `KNr`, `Kursbeginn`, `KlNr`, `KoNr`) VALUES
(1, 2, 170, '2018-09-17', 1, 2),
(2, 2, 293, '2021-10-01', 2, 2),
(3, 5, 311, '2020-04-03', 2, 2),
(4, 9, 300, '2020-08-15', 3, 1),
(5, 18, 260, '2023-04-28', 3, 1),
(6, 1, 260, '2020-08-15', 3, 1),
(7, 1, 292, '2020-09-18', 1, 1),
(8, 1, 150, '2020-10-25', 3, 2),
(9, 1, 351, '2020-11-21', 3, 1),
(10, 1, 293, '2020-12-03', 2, 1),
(11, 1, 395, '2020-12-10', 1, 1),
(12, 1, 290, '2021-01-25', 1, 2),
(13, 1, 311, '2021-04-18', 3, 1),
(14, 1, 240, '2021-08-19', 1, 2),
(15, 1, 293, '2021-10-01', 2, 2),
(16, 1, 291, '2021-11-24', 2, 2),
(17, 1, 272, '2022-01-02', 3, 1),
(18, 1, 245, '2022-07-06', 3, 1),
(19, 1, 260, '2023-04-28', 3, 1),
(20, 1, 245, '2024-10-01', 2, 2),
(21, 2, 170, '2018-09-17', 1, 2),
(22, 2, 291, '2020-04-29', 1, 1),
(23, 2, 310, '2020-05-02', 3, 2),
(24, 2, 273, '2020-07-15', 2, 2),
(25, 2, 1, '2020-08-16', 2, 2),
(26, 2, 1, '2020-10-02', 2, 1),
(27, 2, 3, '2020-11-20', 2, 1),
(28, 2, 293, '2020-12-03', 2, 1),
(29, 2, 395, '2020-12-10', 1, 1),
(30, 2, 272, '2021-04-28', 1, 1),
(31, 2, 2, '2021-05-09', 2, 1),
(32, 2, 3, '2021-08-28', 1, 2),
(33, 2, 7, '2021-09-21', 3, 1),
(34, 2, 293, '2021-10-01', 2, 2),
(35, 2, 260, '2023-04-28', 3, 1),
(36, 3, 4, '2020-07-03', 3, 2),
(37, 3, 260, '2023-04-28', 3, 1),
(38, 4, 240, '2016-10-01', 2, 1),
(39, 4, 100, '2019-01-05', 1, 1),
(40, 4, 272, '2019-07-01', 1, 1),
(41, 4, 311, '2020-04-03', 2, 2),
(42, 4, 310, '2020-04-30', 2, 2),
(43, 4, 272, '2021-04-28', 1, 1),
(44, 4, 271, '2021-07-01', 1, 1),
(45, 4, 300, '2021-11-24', 3, 2),
(46, 4, 130, '2022-11-01', 2, 2),
(47, 4, 300, '2024-12-01', 2, 2),
(48, 4, 3, '2024-12-02', 1, 1),
(49, 5, 311, '2020-04-03', 2, 2),
(50, 8, 4, '2010-07-01', 2, 1),
(51, 8, 291, '2020-04-29', 1, 1),
(52, 8, 300, '2020-08-15', 3, 1),
(53, 8, 292, '2020-09-18', 1, 1),
(54, 8, 292, '2020-10-18', 1, 1),
(55, 8, 293, '2020-12-03', 2, 1),
(56, 8, 240, '2021-08-19', 1, 2),
(57, 8, 2, '2021-10-01', 1, 1),
(58, 8, 395, '2021-10-10', 1, 1),
(59, 8, 7, '2022-12-20', 3, 2),
(60, 9, 291, '2020-04-29', 1, 1),
(61, 9, 100, '2020-07-30', 2, 2),
(62, 9, 300, '2020-08-15', 3, 1),
(63, 9, 292, '2020-09-18', 1, 1),
(64, 9, 351, '2020-11-21', 3, 1),
(65, 9, 293, '2020-12-03', 2, 1),
(66, 9, 395, '2020-12-10', 1, 1),
(67, 9, 240, '2021-08-19', 1, 2),
(68, 10, 272, '2022-01-02', 3, 1),
(69, 12, 271, '2018-09-17', 3, 2),
(70, 12, 290, '2021-01-25', 1, 2),
(71, 13, 100, '2020-07-30', 1, 1),
(72, 13, 150, '2020-10-25', 3, 1),
(73, 13, 395, '2020-12-10', 1, 1),
(74, 13, 210, '2021-03-21', 2, 2),
(75, 13, 245, '2024-10-01', 2, 2),
(76, 14, 210, '2020-05-02', 1, 1),
(77, 15, 273, '2020-07-15', 2, 2),
(78, 15, 100, '2020-07-30', 2, 2),
(79, 15, 273, '2021-01-15', 2, 2),
(80, 15, 210, '2021-03-21', 2, 2),
(81, 15, 2, '2021-10-01', 1, 1),
(82, 15, 272, '2022-01-02', 3, 1),
(83, 16, 395, '2021-10-10', 1, 1),
(84, 17, 150, '2020-10-25', 3, 2),
(85, 17, 293, '2020-12-03', 2, 1),
(86, 17, 294, '2021-07-01', 3, 1),
(87, 17, 291, '2021-11-24', 2, 2),
(88, 17, 100, '2023-01-10', 3, 1),
(89, 18, 350, '2020-11-21', 2, 1),
(90, 18, 351, '2020-11-27', 3, 1),
(91, 18, 260, '2023-04-28', 3, 1),
(92, 19, 300, '2021-11-24', 3, 2),
(93, 20, 270, '2020-01-02', 3, 2),
(94, 20, 273, '2020-07-15', 2, 2),
(95, 20, 300, '2020-08-15', 3, 1),
(96, 20, 291, '2021-11-24', 2, 2),
(97, 21, 100, '2020-07-30', 1, 1),
(98, 21, 272, '2022-01-02', 3, 1),
(99, 21, 260, '2023-04-28', 3, 1),
(100, 22, 275, '2020-10-20', 2, 1),
(101, 22, 272, '2021-04-28', 1, 1),
(102, 22, 271, '2021-07-01', 1, 1),
(103, 22, 291, '2021-11-24', 2, 2),
(104, 23, 293, '2020-12-03', 2, 1),
(105, 23, 210, '2021-03-21', 2, 2),
(106, 23, 272, '2021-04-28', 1, 1),
(107, 26, 275, '2020-10-20', 2, 1),
(108, 26, 390, '2021-01-25', 2, 1),
(109, 26, 294, '2021-10-22', 2, 2),
(110, 29, 240, '2016-10-01', 2, 1),
(111, 29, 100, '2019-01-05', 1, 1),
(112, 29, 260, '2020-04-08', 1, 1),
(113, 29, 100, '2020-07-30', 2, 2),
(114, 29, 350, '2020-11-21', 2, 1),
(115, 30, 240, '2018-11-12', 3, 1),
(116, 30, 272, '2021-04-28', 1, 1),
(117, 31, 170, '2018-09-17', 1, 2),
(118, 31, 271, '2021-07-01', 1, 1),
(119, 32, 275, '2020-10-20', 2, 1),
(120, 33, 275, '2020-10-20', 2, 1),
(121, 33, 290, '2021-01-25', 1, 2),
(122, 33, 272, '2021-04-28', 1, 1),
(123, 33, 2, '2021-10-01', 1, 1),
(124, 33, 291, '2021-11-24', 2, 2),
(125, 33, 245, '2022-04-02', 2, 2),
(126, 34, 3, '2021-11-24', 1, 1),
(127, 35, 2, '2016-03-03', 3, 2),
(128, 35, 395, '2017-04-16', 2, 2),
(129, 35, 273, '2021-01-15', 2, 2),
(130, 35, 291, '2021-11-24', 2, 2),
(131, 35, 271, '2022-07-06', 3, 1),
(132, 35, 170, '2022-11-01', 1, 1),
(133, 36, 294, '2021-01-28', 3, 2),
(134, 37, 7, '2020-04-04', 3, 1),
(135, 38, 240, '2016-10-01', 2, 1),
(136, 38, 311, '2020-04-03', 1, 2),
(137, 38, 273, '2020-07-15', 2, 2),
(138, 39, 210, '2020-05-02', 1, 1),
(139, 41, 272, '2019-08-13', 3, 2),
(140, 41, 3, '2021-11-24', 1, 1),
(141, 42, 7, '2020-04-04', 3, 1),
(142, 42, 100, '2020-07-30', 2, 2),
(143, 43, 272, '2023-01-02', 3, 2),
(144, 45, 291, '2020-04-29', 1, 1),
(145, 45, 310, '2020-05-02', 3, 2),
(146, 46, 291, '2021-11-24', 2, 2),
(147, 47, 3, '2021-11-24', 1, 1),
(148, 47, 272, '2022-01-02', 3, 1),
(149, 265, 170, '2018-09-17', 1, 2),
(150, 48, 150, '2020-10-25', 3, 2),
(151, 49, 170, '2018-09-17', 1, 2),
(152, 49, 260, '2020-07-15', 3, 1),
(153, 49, 220, '2021-03-15', 1, 1),
(154, 49, 271, '2021-07-01', 1, 1),
(155, 50, 4, '2013-10-01', 2, 2),
(156, 50, 245, '2020-06-01', 1, 1),
(157, 50, 292, '2020-09-18', 1, 1),
(158, 51, 221, '2020-04-08', 2, 1),
(159, 52, 2, '2016-03-03', 1, 2),
(160, 54, 1, '2021-10-28', 3, 1),
(161, 55, 270, '2020-01-02', 3, 2),
(162, 55, 273, '2020-07-15', 2, 2),
(163, 55, 210, '2021-03-21', 2, 2),
(164, 56, 150, '2020-10-25', 3, 2),
(165, 56, 100, '2021-09-15', 1, 1),
(166, 56, 220, '2021-11-05', 1, 1),
(167, 56, 291, '2021-11-24', 2, 2),
(168, 57, 351, '2020-11-21', 3, 1),
(169, 57, 1, '2021-10-28', 3, 1),
(170, 58, 350, '2014-10-01', 1, 1),
(171, 58, 270, '2019-01-02', 3, 2),
(172, 58, 7, '2019-03-12', 1, 1),
(173, 59, 170, '2018-09-17', 1, 1),
(174, 59, 275, '2019-11-30', 3, 2),
(175, 59, 291, '2020-04-29', 1, 1),
(176, 59, 311, '2020-05-02', 2, 2),
(177, 59, 293, '2020-12-03', 2, 1),
(178, 59, 273, '2021-01-15', 2, 2),
(179, 59, 390, '2021-01-25', 2, 1),
(180, 59, 245, '2022-04-28', 2, 1),
(181, 59, 245, '2022-07-06', 3, 1),
(182, 59, 351, '2022-10-15', 3, 2),
(183, 59, 130, '2022-11-01', 2, 2),
(184, 60, 170, '2018-09-17', 2, 2),
(185, 60, 220, '2021-03-15', 3, 1),
(186, 60, 291, '2021-11-24', 2, 2),
(187, 60, 290, '2023-02-01', 1, 1),
(188, 61, 240, '2018-11-12', 3, 1),
(189, 61, 310, '2020-04-30', 2, 1),
(190, 61, 290, '2021-01-25', 1, 2),
(191, 61, 271, '2021-07-01', 1, 1),
(192, 61, 3, '2021-11-24', 1, 1),
(193, 62, 293, '2020-12-03', 2, 1),
(194, 63, 292, '2021-10-01', 3, 1),
(195, 64, 150, '2020-10-25', 3, 2),
(196, 64, 221, '2022-10-20', 3, 2),
(197, 65, 273, '2020-07-15', 2, 2),
(198, 65, 221, '2022-10-20', 3, 2),
(199, 67, 293, '2020-12-03', 2, 1),
(200, 68, 240, '2018-11-12', 3, 2),
(201, 68, 291, '2020-04-29', 1, 1),
(202, 69, 290, '2021-01-25', 1, 2),
(203, 70, 170, '2018-09-17', 1, 2),
(204, 70, 291, '2020-04-29', 1, 1),
(205, 70, 293, '2021-10-01', 2, 2),
(206, 71, 310, '2020-05-02', 3, 2),
(207, 71, 210, '2021-03-21', 2, 2),
(208, 71, 245, '2022-04-12', 2, 2),
(209, 71, 100, '2023-01-10', 3, 1),
(210, 72, 350, '2014-10-01', 1, 1),
(211, 72, 270, '2020-01-02', 3, 2),
(212, 72, 293, '2021-10-01', 2, 2),
(213, 72, 260, '2023-04-28', 3, 1),
(214, 73, 272, '2019-08-13', 3, 2),
(215, 74, 100, '2020-07-30', 1, 1),
(216, 75, 291, '2021-11-24', 2, 2),
(217, 76, 271, '2022-07-06', 3, 1),
(218, 79, 130, '2018-07-06', 1, 1),
(219, 79, 291, '2020-04-02', 1, 1),
(220, 79, 7, '2020-04-04', 3, 1),
(221, 79, 291, '2020-04-29', 1, 1),
(222, 79, 210, '2020-05-02', 1, 1),
(223, 79, 273, '2020-07-15', 2, 2),
(224, 79, 293, '2020-12-03', 2, 1),
(225, 79, 272, '2021-04-28', 1, 1),
(226, 79, 240, '2021-08-19', 1, 2),
(227, 79, 291, '2021-11-24', 2, 2),
(228, 79, 245, '2022-07-06', 3, 1),
(229, 79, 260, '2023-04-28', 3, 1),
(230, 79, 4, '2026-03-03', 3, 1),
(231, 80, 291, '2020-04-02', 1, 1),
(232, 80, 293, '2020-12-03', 2, 1),
(233, 80, 291, '2021-11-24', 2, 2),
(234, 81, 291, '2020-04-29', 1, 1),
(235, 81, 273, '2020-07-15', 2, 2),
(236, 81, 272, '2021-04-28', 1, 1),
(237, 81, 100, '2023-01-10', 3, 1),
(238, 82, 240, '2017-04-08', 3, 1),
(239, 82, 291, '2020-04-29', 1, 1),
(240, 82, 260, '2023-04-28', 3, 1),
(241, 84, 270, '2019-01-02', 3, 2),
(242, 84, 275, '2019-11-30', 3, 2),
(243, 84, 271, '2021-01-02', 3, 2),
(244, 85, 3, '2021-11-24', 1, 1),
(245, 86, 390, '2021-01-25', 2, 1),
(246, 86, 220, '2021-03-15', 1, 1),
(247, 87, 275, '2019-11-30', 1, 1),
(248, 87, 310, '2020-04-30', 2, 1),
(249, 87, 210, '2020-05-02', 1, 1),
(250, 87, 294, '2021-01-28', 3, 2),
(251, 88, 293, '2021-10-01', 2, 2),
(252, 89, 293, '2020-12-03', 2, 1),
(253, 89, 292, '2021-10-01', 3, 1),
(254, 90, 7, '2020-04-04', 3, 1),
(255, 91, 311, '2020-04-03', 2, 2),
(256, 91, 395, '2020-12-10', 1, 1),
(257, 93, 272, '2019-08-13', 3, 2),
(258, 93, 395, '2020-12-10', 1, 1),
(259, 94, 272, '2019-08-13', 3, 2),
(260, 96, 271, '2021-01-02', 3, 2),
(261, 96, 271, '2021-07-01', 1, 1),
(262, 97, 300, '2020-08-15', 3, 1),
(263, 97, 293, '2020-12-03', 2, 1),
(264, 97, 271, '2021-07-01', 1, 1),
(265, 97, 294, '2021-10-22', 2, 2),
(266, 97, 245, '2022-04-12', 2, 2),
(267, 97, 290, '2023-02-01', 1, 1),
(268, 98, 310, '2020-05-02', 3, 2),
(269, 98, 273, '2020-07-15', 2, 2),
(270, 98, 3, '2021-11-24', 1, 1),
(271, 98, 100, '2023-01-05', 1, 1),
(272, 99, 220, '2021-03-15', 1, 1),
(273, 100, 395, '2017-03-28', 3, 1),
(274, 101, 2, '2016-03-03', 1, 2),
(275, 101, 170, '2018-09-17', 1, 2),
(276, 101, 240, '2018-11-12', 2, 1),
(277, 101, 100, '2019-01-05', 1, 1),
(278, 101, 272, '2019-08-13', 3, 2),
(279, 101, 275, '2019-11-30', 1, 1),
(280, 101, 270, '2020-01-02', 3, 2),
(281, 101, 291, '2020-04-02', 1, 1),
(282, 101, 311, '2020-04-03', 2, 2),
(283, 101, 310, '2020-05-02', 3, 2),
(284, 101, 100, '2020-07-30', 2, 2),
(285, 101, 300, '2020-08-15', 3, 1),
(286, 101, 150, '2020-10-25', 3, 2),
(287, 101, 350, '2020-11-21', 2, 1),
(288, 101, 293, '2020-12-03', 2, 1),
(289, 101, 395, '2020-12-10', 1, 1),
(290, 101, 210, '2021-03-22', 2, 2),
(291, 101, 311, '2021-04-18', 3, 1),
(292, 101, 272, '2021-04-28', 1, 1),
(293, 101, 395, '2021-10-10', 1, 1),
(294, 101, 220, '2021-11-05', 1, 1),
(295, 101, 210, '2022-10-01', 3, 1),
(296, 101, 221, '2022-10-20', 3, 2),
(297, 101, 390, '2023-07-01', 3, 2),
(298, 101, 245, '2024-10-01', 2, 2),
(299, 102, 293, '2020-12-03', 2, 1),
(300, 102, 100, '2023-01-10', 3, 1),
(301, 103, 292, '2018-11-23', 3, 2),
(302, 103, 273, '2020-07-15', 2, 2),
(303, 103, 220, '2021-11-05', 1, 1),
(304, 103, 300, '2021-11-24', 3, 2),
(305, 103, 150, '2022-10-20', 1, 2),
(306, 104, 291, '2020-04-02', 1, 1),
(307, 104, 291, '2020-04-29', 1, 1),
(308, 104, 240, '2021-08-19', 1, 2),
(309, 104, 291, '2021-11-24', 2, 2),
(310, 104, 260, '2023-04-28', 3, 1),
(311, 105, 311, '2020-04-03', 2, 2),
(312, 105, 260, '2023-04-28', 3, 1),
(313, 106, 240, '2018-11-12', 3, 2),
(314, 106, 291, '2020-04-02', 1, 1),
(315, 106, 311, '2020-04-03', 2, 2),
(316, 106, 294, '2021-10-22', 2, 2),
(317, 106, 300, '2021-11-24', 3, 2),
(318, 107, 4, '2010-07-01', 2, 1),
(319, 107, 130, '2018-07-06', 1, 1),
(320, 107, 245, '2022-07-06', 3, 1),
(321, 108, 7, '2020-04-04', 3, 1),
(322, 108, 210, '2020-05-02', 1, 1),
(323, 109, 291, '2021-11-24', 2, 2),
(324, 110, 390, '2021-01-25', 2, 1),
(325, 110, 245, '2022-04-12', 2, 2),
(326, 111, 4, '2010-07-01', 2, 1),
(327, 111, 220, '2021-03-15', 1, 1),
(328, 111, 271, '2021-07-01', 1, 1),
(329, 112, 300, '2021-11-24', 3, 2),
(330, 113, 293, '2020-12-03', 2, 1),
(331, 114, 260, '2023-04-28', 3, 1),
(332, 115, 275, '2019-11-30', 3, 2),
(333, 116, 130, '2018-07-06', 1, 1),
(334, 116, 300, '2020-08-15', 3, 1),
(335, 116, 245, '2022-04-12', 2, 2),
(336, 116, 260, '2023-04-28', 3, 1),
(337, 116, 245, '2024-10-01', 2, 2),
(338, 117, 4, '2008-04-01', 2, 1),
(339, 117, 4, '2010-07-01', 2, 1),
(340, 117, 291, '2020-04-22', 1, 1),
(341, 118, 273, '2021-01-15', 2, 2),
(342, 119, 272, '2019-08-13', 3, 2),
(343, 119, 220, '2026-03-01', 1, 1),
(344, 120, 260, '2020-04-08', 1, 1),
(345, 120, 351, '2022-10-15', 3, 2),
(346, 126, 351, '2020-11-21', 2, 1),
(347, 126, 3, '2021-11-24', 1, 1),
(348, 126, 310, '2022-05-02', 3, 2),
(349, 127, 3, '2016-02-22', 2, 2),
(350, 127, 100, '2023-01-10', 3, 1),
(351, 128, 210, '2016-10-01', 2, 1),
(352, 129, 272, '2020-07-15', 2, 2),
(353, 129, 271, '2021-01-02', 3, 2),
(354, 129, 294, '2021-07-01', 3, 1),
(355, 129, 293, '2021-10-01', 2, 2),
(356, 130, 240, '2017-04-01', 1, 1),
(357, 130, 292, '2021-10-01', 3, 1),
(358, 130, 271, '2022-07-06', 3, 1),
(359, 130, 130, '2022-11-01', 2, 2),
(360, 131, 350, '2014-10-01', 1, 1),
(361, 131, 300, '2020-12-18', 1, 1),
(362, 131, 294, '2021-07-01', 3, 2),
(363, 131, 245, '2022-07-06', 3, 1),
(364, 131, 100, '2023-01-10', 3, 1),
(365, 134, 291, '2021-11-24', 3, 2),
(366, 135, 275, '2019-11-30', 1, 1),
(367, 135, 271, '2021-01-02', 3, 2),
(368, 135, 272, '2021-04-28', 1, 1),
(369, 135, 2, '2021-10-01', 1, 1),
(370, 135, 291, '2021-11-24', 2, 2),
(371, 135, 150, '2022-10-20', 1, 2),
(372, 136, 350, '2014-10-01', 1, 1),
(373, 136, 395, '2019-07-13', 3, 2),
(374, 136, 270, '2020-01-02', 3, 2),
(375, 136, 260, '2020-04-08', 1, 1),
(376, 136, 291, '2020-08-16', 1, 1),
(377, 136, 271, '2021-07-01', 1, 1),
(378, 136, 291, '2021-11-24', 2, 2),
(379, 136, 245, '2022-04-12', 2, 2),
(380, 136, 130, '2022-11-01', 2, 2),
(381, 136, 100, '2023-01-10', 3, 1),
(382, 137, 300, '2016-07-13', 2, 1),
(383, 137, 270, '2019-01-02', 3, 2),
(384, 137, 311, '2020-05-02', 2, 2),
(385, 138, 4, '2008-04-01', 3, 1),
(386, 138, 7, '2020-04-04', 3, 1),
(387, 140, 273, '2020-07-15', 2, 2),
(388, 141, 272, '2019-08-13', 3, 2),
(389, 141, 272, '2021-04-28', 1, 1),
(390, 141, 3, '2021-11-24', 1, 1),
(391, 143, 240, '2018-11-12', 1, 1),
(392, 143, 210, '2021-03-21', 2, 2),
(393, 143, 220, '2021-11-05', 1, 1),
(394, 144, 395, '2020-12-10', 1, 1),
(395, 144, 290, '2021-01-25', 1, 2),
(396, 146, 221, '2022-10-20', 3, 2),
(397, 147, 273, '2020-07-15', 2, 2),
(398, 147, 351, '2020-11-21', 3, 1),
(399, 147, 271, '2021-01-02', 3, 2),
(400, 147, 390, '2021-01-25', 2, 1),
(401, 147, 271, '2021-07-01', 1, 1),
(402, 147, 290, '2023-02-01', 1, 1),
(403, 148, 240, '2018-11-12', 1, 1),
(404, 148, 351, '2020-11-21', 3, 1),
(405, 148, 273, '2021-01-15', 2, 2),
(406, 148, 311, '2021-04-18', 3, 1),
(407, 148, 271, '2021-07-01', 1, 1),
(408, 148, 170, '2022-11-01', 1, 1),
(409, 149, 273, '2021-01-15', 2, 2),
(410, 149, 292, '2021-10-01', 3, 1),
(411, 150, 210, '2020-05-02', 1, 1),
(412, 151, 260, '2020-04-08', 1, 1),
(413, 151, 291, '2021-11-24', 2, 2),
(414, 152, 240, '2018-11-12', 1, 1),
(415, 152, 275, '2020-10-20', 2, 1),
(416, 153, 170, '2017-11-30', 1, 1),
(417, 153, 240, '2021-08-19', 3, 2),
(418, 156, 395, '2021-10-10', 1, 1),
(419, 156, 3, '2021-11-24', 1, 1),
(420, 157, 210, '2021-03-21', 2, 2),
(421, 157, 100, '2021-10-15', 1, 2),
(422, 158, 273, '2020-07-15', 2, 2),
(423, 158, 294, '2021-01-28', 3, 2),
(424, 158, 291, '2021-11-24', 2, 2),
(425, 159, 290, '2023-02-01', 1, 1),
(426, 159, 260, '2023-04-28', 3, 1),
(427, 160, 271, '2021-07-01', 1, 1),
(428, 160, 291, '2021-11-24', 2, 2),
(429, 160, 100, '2022-01-10', 1, 1),
(430, 161, 311, '2020-06-01', 2, 2),
(431, 161, 273, '2020-07-15', 2, 2),
(432, 161, 291, '2021-11-24', 2, 2),
(433, 161, 245, '2022-04-28', 1, 1),
(434, 161, 245, '2024-10-01', 2, 2),
(435, 162, 272, '2019-08-13', 3, 2),
(436, 162, 291, '2020-04-02', 1, 1),
(437, 162, 291, '2021-11-24', 2, 2),
(438, 163, 245, '2020-06-01', 1, 1),
(439, 163, 271, '2021-01-02', 3, 2),
(440, 163, 390, '2021-01-25', 2, 1),
(441, 163, 293, '2021-10-01', 2, 2),
(442, 163, 294, '2021-10-22', 2, 2),
(443, 163, 291, '2021-11-24', 2, 2),
(444, 164, 270, '2020-01-02', 3, 2),
(445, 164, 350, '2020-11-21', 2, 1),
(446, 164, 294, '2021-01-28', 3, 2),
(447, 164, 3, '2021-11-24', 1, 1),
(448, 165, 350, '2020-11-21', 2, 1),
(449, 165, 220, '2021-03-15', 1, 1),
(450, 166, 390, '2021-01-25', 2, 1),
(451, 168, 3, '2021-11-24', 1, 1),
(452, 168, 260, '2023-04-28', 3, 1),
(453, 168, 245, '2024-10-01', 2, 2),
(454, 169, 272, '2019-08-13', 3, 2),
(455, 169, 245, '2022-04-12', 2, 2),
(456, 170, 170, '2018-11-13', 2, 1),
(457, 170, 2, '2021-10-01', 1, 1),
(458, 171, 220, '2021-03-15', 1, 1),
(459, 172, 294, '2021-01-28', 3, 2),
(460, 173, 273, '2020-07-15', 2, 2),
(461, 173, 220, '2021-03-15', 1, 1),
(462, 174, 395, '2020-12-10', 1, 1),
(463, 175, 130, '2018-07-06', 1, 2),
(464, 175, 311, '2020-06-01', 2, 2),
(465, 175, 272, '2021-04-28', 1, 1),
(466, 176, 293, '2019-04-17', 1, 2),
(467, 176, 275, '2019-11-30', 1, 1),
(468, 176, 260, '2023-04-28', 3, 1),
(469, 176, 390, '2023-07-01', 3, 2),
(470, 177, 300, '2020-08-15', 3, 1),
(471, 177, 290, '2021-01-25', 1, 2),
(472, 177, 220, '2021-03-15', 1, 1),
(473, 178, 293, '2020-12-03', 2, 1),
(474, 178, 1, '2021-10-28', 3, 1),
(475, 178, 291, '2021-11-24', 2, 2),
(476, 179, 275, '2020-10-20', 2, 1),
(477, 179, 291, '2021-11-24', 2, 2),
(478, 180, 275, '2019-11-30', 3, 2),
(479, 180, 221, '2020-04-08', 2, 1),
(480, 180, 310, '2020-04-30', 2, 1),
(481, 180, 2, '2021-10-01', 1, 1),
(482, 181, 275, '2017-10-30', 3, 2),
(483, 181, 240, '2018-11-12', 2, 1),
(484, 181, 270, '2019-01-02', 3, 2),
(485, 181, 245, '2020-06-01', 1, 1),
(486, 181, 275, '2020-10-20', 2, 1),
(487, 181, 351, '2020-11-27', 3, 1),
(488, 181, 300, '2021-11-24', 3, 2),
(489, 181, 245, '2022-04-28', 2, 1),
(490, 182, 260, '2020-04-08', 1, 1),
(491, 183, 260, '2020-04-28', 1, 1),
(492, 183, 3, '2021-11-24', 1, 1),
(493, 184, 272, '2019-08-13', 3, 2),
(494, 185, 291, '2021-11-24', 2, 2),
(495, 186, 273, '2020-07-15', 2, 2),
(496, 186, 294, '2021-07-01', 3, 2),
(497, 186, 272, '2022-01-02', 3, 1),
(498, 187, 272, '2019-08-13', 3, 2),
(499, 187, 273, '2020-07-15', 2, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblkursleiter`
--

CREATE TABLE `tblkursleiter` (
  `KLNr` int(11) NOT NULL DEFAULT '0',
  `Name` char(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Vorname` char(30) COLLATE latin1_general_ci DEFAULT NULL,
  `StdSatz` double DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `tblkursleiter`
--

INSERT INTO `tblkursleiter` (`KLNr`, `Name`, `Vorname`, `StdSatz`) VALUES
(1, 'Popper', 'Hans', 120),
(2, 'Habermas', 'Bert', 150),
(3, 'Barbarini', 'Isabell', 120);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblkursort`
--

CREATE TABLE `tblkursort` (
  `KoNr` int(11) NOT NULL DEFAULT '0',
  `Kursort` char(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `tblkursort`
--

INSERT INTO `tblkursort` (`KoNr`, `Kursort`) VALUES
(1, 'K?â?Âln'),
(2, 'M?â??nchen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblort`
--

CREATE TABLE `tblort` (
  `PLZ` char(5) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `Ort` char(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `tblort`
--

INSERT INTO `tblort` (`PLZ`, `Ort`) VALUES
('01067', 'Dresden'),
('01069', 'Dresden'),
('01099', 'Dresden'),
('01109', 'Dresden'),
('09111', 'Chemnitz'),
('09114', 'Chemnitz'),
('09119', 'Chemnitz'),
('10178', 'Berlin'),
('10318', 'Berlin'),
('10557', 'Berlin'),
('10623', 'Berlin'),
('10707', 'Berlin'),
('10969', 'Berlin'),
('18069', 'Rostock'),
('18147', 'Rostock'),
('20148', 'Hamburg'),
('20355', 'Hamburg'),
('20535', 'Hamburg'),
('22083', 'Hamburg'),
('22297', 'Hamburg'),
('32756', 'Detmold'),
('39104', 'Magdeburg'),
('40212', 'D?â??sseldorf'),
('40213', 'D?â??sseldorf'),
('40233', 'D?â??sseldorf'),
('40479', 'D?â??sseldorf'),
('40625', 'D?â??sseldorf'),
('41460', 'Neuss'),
('41462', 'Neuss'),
('41466', 'Neuss'),
('41564', 'Kaarst'),
('41747', 'Viersen'),
('42287', 'Wuppertal'),
('42349', 'Wuppertal'),
('42389', 'Wuppertal'),
('45127', 'Essen'),
('45239', 'Essen'),
('45356', 'Essen'),
('46483', 'Wesel'),
('47051', 'Duisburg'),
('47119', 'Duisburg'),
('50226', 'Frechen'),
('50321', 'Br?â??hl'),
('50606', 'K?â?Âln'),
('50667', 'K?â?Âln'),
('50668', 'K?â?Âln'),
('50670', 'K?â?Âln'),
('50672', 'K?â?Âln'),
('50674', 'K?â?Âln'),
('50678', 'K?â?Âln'),
('50679', 'K?â?Âln'),
('50739', 'K?â?Âln'),
('50765', 'K?â?Âln'),
('50769', 'K?â?Âln'),
('50858', 'K?â?Âln'),
('50931', 'K?â?Âln'),
('50933', 'K?â?Âln'),
('50968', 'K?â?Âln'),
('50999', 'K?â?Âln'),
('51061', 'K?â?Âln'),
('51065', 'K?â?Âln'),
('51067', 'K?â?Âln'),
('51103', 'K?â?Âln'),
('51105', 'K?â?Âln'),
('51107', 'K?â?Âln'),
('51143', 'K?â?Âln'),
('51149', 'K?â?Âln'),
('51373', 'Leverkusen'),
('51379', 'Leverkusen'),
('51381', 'Leverkusen'),
('51491', 'Overath'),
('51503', 'R?â?Âsrath'),
('51545', 'Waldbr?â?Âl'),
('51688', 'Wipperf?â??rth'),
('51789', 'Lindlar'),
('51823', 'K?â?Âln'),
('52062', 'Aachen'),
('52349', 'D?â??ren'),
('52351', 'D?â??ren'),
('52355', 'D?â??ren'),
('52511', 'Geilenkirchen'),
('53115', 'Bonn'),
('53125', 'Bonn'),
('53173', 'Bonn'),
('53819', 'Neunkirchen-Seelscheid'),
('53840', 'Troisdorf'),
('53842', 'Troisdorf'),
('53844', 'Troisdorf'),
('53879', 'Euskirchen'),
('53881', 'Euskirchen'),
('60311', 'Frankfurt'),
('60313', 'Frankfurt'),
('60329', 'Frankfurt'),
('60549', 'Frankfurt'),
('72766', 'Reutlingen'),
('72768', 'Reutlingen'),
('80333', 'M?â??nchen'),
('80335', 'M?â??nchen'),
('80337', 'M?â??nchen'),
('80339', 'M?â??nchen'),
('80797', 'M?â??nchen'),
('80802', 'M?â??nchen'),
('81249', 'M?â??nchen'),
('81543', 'M?â??nchen'),
('81739', 'M?â??nchen'),
('81829', 'M?â??nchen'),
('88213', 'Ravensburg'),
('88214', 'Ravensburg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblteilnehmer`
--

CREATE TABLE `tblteilnehmer` (
  `TNr` int(11) NOT NULL DEFAULT '0',
  `Name` char(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Vorname` char(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PLZ` char(5) COLLATE latin1_general_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `tblteilnehmer`
--

INSERT INTO `tblteilnehmer` (`TNr`, `Name`, `Vorname`, `PLZ`) VALUES
(1, 'Huber', 'Anna-Lena', '80335'),
(2, 'Lolan', 'Ole', '51503'),
(3, 'Krippner', 'Bernd', '51503'),
(4, 'Bengisch', 'Bj?â?Ârn', '50674'),
(5, 'Cappi', 'Lilli', '50679'),
(6, 'Herdram', 'Herta', '51688'),
(7, 'H?â?Âller', 'Harald', '51789'),
(8, 'Riesenhuber', 'Klaus', '53819'),
(9, 'Huber', 'Arno', '50321'),
(10, 'Iserhardt', 'Sabine', '50931'),
(11, 'Jaschinski-Weber', 'Frauke', '50931'),
(12, 'Keip', 'Keno', '50321'),
(13, 'Mecke', 'Marlies', '50321'),
(14, 'Meisen', 'Martha', '50226'),
(15, 'Ohde', 'Ralf', '53173'),
(16, 'Ohde', 'Franziska', '50321'),
(17, 'Meisen', 'Jan', '50674'),
(18, 'Ohde', 'Lisa-Marie', '50674'),
(19, 'Winkelmann', 'Olaf', '50674'),
(20, 'Over', 'Jack', '52511'),
(21, 'Pacholczyk', 'Jana', '50674'),
(22, 'Peitgen', 'Pepe', '51545'),
(23, 'Rodewald', 'Wilma', '50606'),
(24, 'Knebel', 'Klaus', '51381'),
(25, 'Rodewald', 'Carsten', '50931'),
(26, 'Rodewald', 'Karsten', '50321'),
(27, 'Schmitz', 'Axel', '53173'),
(28, 'Winkelmann', 'Michael', '51545'),
(29, 'Schmitz', 'Michaela', '51789'),
(30, 'Schmitz', 'Maike', '51688'),
(31, 'Schmitz', 'Maik', '52511'),
(32, 'Schmitz', 'Paul', '50679'),
(33, 'Schmitz', 'Paula', '50226'),
(34, 'Langen', 'Paul', '50667'),
(35, 'Schmitz', 'Thomas', '80335'),
(36, 'Winkelmann', '', '50739'),
(37, 'Boshammer', '', '52349'),
(38, 'Breidenbach', '', '50226'),
(39, 'G?â?Âbel', '', '50679'),
(40, 'Gr?â??ter', '', '50931'),
(41, 'Immendorf', '', '50679'),
(42, 'Jansen', '', '51491'),
(43, 'Kintgen', '', '52351'),
(44, 'Klein', '', '52511'),
(45, 'Immendorf', '', '51545'),
(46, 'Trump', 'Donald', '51065'),
(47, 'Klopp', '', '51373'),
(48, 'Steinb?â??chel', '', '51103'),
(49, 'Stettner', '', '51823'),
(50, 'Klo', '', '51379'),
(51, 'H?â?Âfling', '', '50679'),
(52, 'Ludwig', '', '50769'),
(53, 'L?â??bke', '', '50672'),
(54, 'Van Gassen', '', '51823'),
(55, 'Reinerts', '', '51149'),
(56, 'Rupp', '', '51061'),
(57, 'Sackmann', '', '51103'),
(58, 'Schicka', '', '51107'),
(59, 'Schmidt', '', '10178'),
(60, 'Schmidt', '', '52062'),
(61, 'Schmidt', '', '32756'),
(62, 'Kaftan', '', '50858'),
(63, 'Lohmar', '', '10178'),
(64, 'Raths', '', '01109'),
(65, 'Rogalski', '', '51065'),
(66, 'Hergarten', '', '80333'),
(67, 'Stolzenberg', '', '72766'),
(68, 'Dax', '', '52349'),
(69, 'Reimer-Langerbeins', '', '32756'),
(70, 'Stausberg', '', '51688'),
(71, 'Philippi', '', '51688'),
(72, 'Meyer', '', '50226'),
(73, 'Zwilling', '', '50226'),
(74, 'Fink', '', '09119'),
(75, 'Schneider', '', '51503'),
(76, 'Lamm', '', '52062'),
(77, 'Heiner', '', '52062'),
(78, 'Kerber', '', '10318'),
(79, 'Bau', '', '50321'),
(80, 'Friderici', '', '50321'),
(81, 'Lambrich', '', '50321'),
(82, 'Lohmann', '', '09119'),
(83, 'Meyer', '', '09114'),
(84, 'R?â??hrig', '', '52349'),
(85, 'Wamper', '', '20148'),
(86, 'Wamper', '', '52511'),
(87, 'Schneider', '', '40213'),
(88, 'K?â?Ârner', '', '60313'),
(89, 'Zins', '', '52511'),
(90, 'Haack', '', '52355'),
(91, 'Kaftan', '', '10318'),
(92, 'Krawalla', '', '51373'),
(93, 'Burger', '', '51373'),
(94, 'Hansmann', '', '10178'),
(95, 'J?â?ñger', '', '01109'),
(96, 'Ma?â??r', '', '80337'),
(97, 'Rieshuber', '', '80337'),
(98, 'Markmann', '', '51503'),
(99, 'Teschner', '', '72768'),
(100, 'Kummerle', '', '80333'),
(101, 'Beckenba?â??r', '', '80335'),
(102, 'Wudtke', '', '10318'),
(103, 'Reichmann', '', '47119'),
(104, 'Karajan', '', '10178'),
(105, 'Chen', '', '10178'),
(106, 'Codd', '', '60329'),
(107, 'Date', '', '53173'),
(108, 'Dworatschek', '', '47051'),
(109, 'Jackson', '', '80339'),
(110, 'Stucky', '', '01099'),
(111, 'Vetter', '', '10557'),
(112, 'Vetter', '', '50999'),
(113, 'Wedekind', '', '18069'),
(114, 'Zehnder', '', '52349'),
(115, 'Springer', '', '32756'),
(116, 'Einstein', '', '41564'),
(117, 'Christ', '', '47051'),
(118, 'Christ', '', '10178'),
(119, 'Emmerich', '', '20148'),
(120, 'G?â?ñbel', '', '32756'),
(121, 'Gra?â??rt', '', '09111'),
(122, 'Hillemacher', '', '47051'),
(123, 'Klimpel', '', '52062'),
(124, 'Kloss', '', '60311'),
(125, 'K?â?Ânn', '', '80333'),
(126, 'Kohl', '', '80339'),
(127, 'Kretschmer', '', '52062'),
(128, 'Markmann', '', '22083'),
(129, 'Marte', '', '32756'),
(130, 'Pick', '', '09111'),
(131, 'Pl?â?ñmpe', '', '10318'),
(132, 'Siebertz', '', '47119'),
(133, 'S?â?ñns', '', '60311'),
(134, 'Werth', '', '60329'),
(135, 'Ziemann', '', '60311'),
(136, 'Bigalke', '', '80333'),
(137, 'Biskup', '', '53173'),
(138, 'Casti', '', '09119'),
(139, 'Eham', '', '10557'),
(140, 'Gradzka', '', '10178'),
(141, 'Heckmann', '', '81249'),
(142, 'Hill', '', '50226'),
(143, 'K?â?Âlling', '', '50858'),
(144, 'Latz', '', '80802'),
(145, 'Lehrhoff', '', '72768'),
(146, 'Muhlack', '', '40213'),
(147, 'Odenthal', '', '52511'),
(148, 'Pavlovic', '', '53879'),
(149, 'Rodewald', '', '50606'),
(150, 'Strauck', '', '51061'),
(151, '?â?ôlgen', '', '01069'),
(152, 'Wielp?â??tz', '', '80333'),
(153, 'Bruno', '', '80337'),
(154, 'Drees', '', '80337'),
(155, 'Hausmann', '', '80335'),
(156, 'K?â?Âhler', '', '80335'),
(157, 'Korn', '', '09111'),
(158, 'Love', '', '09111'),
(159, 'Lutschewitz', '', '01069'),
(160, 'Maniura', '', '01067'),
(161, 'Miller', '', '50606'),
(162, 'Miller', '', '10178'),
(163, 'Porschen', '', '51373'),
(164, 'Schust', '', '51065'),
(165, 'Tabbat', '', '51067'),
(166, 'Wolber', '', '51065'),
(167, 'Strauch', '', '50670'),
(168, 'K?â?ñssler', '', '01069'),
(169, 'D?â?Âtrie', '', '51065'),
(170, 'vor der Br?â??ck', '', '51067'),
(171, 'Werd?â?ñn', '', '51065'),
(172, 'Werth', '', '50679'),
(173, 'Lanzerath', '', '10318'),
(174, 'Lottis', '', '51789'),
(175, 'Cottin', '', '52349'),
(176, 'Maa', 'Li', '50321'),
(177, 'Rasskopff', 'Oliver', '50226'),
(178, 'Sprenger', 'Peter', '51545'),
(179, 'K?â??ckenhoff', 'Anja', '51545'),
(180, 'Schl?â?Âmer', 'Peter', '50739'),
(181, 'Bausmann', 'Hugo', '52062'),
(182, 'Bode', 'Bodo', '50739'),
(183, 'Lottis', 'Helmut', '51061'),
(184, 'G?â?Âtz', 'Gudrun', '51067'),
(185, 'H?â??rtig', 'Helga', '51103'),
(186, 'Klimczak', 'Jakob', '51061'),
(187, 'Fitzner', 'Emil', '51067'),
(188, 'Furt', 'Frank', '51105'),
(189, 'Wurst', 'Hans', '50674'),
(190, 'Schwerinske', 'Ilse', '10318');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblthemengebiet`
--

CREATE TABLE `tblthemengebiet` (
  `ThNr` int(11) NOT NULL DEFAULT '0',
  `Themengebiet` char(60) COLLATE latin1_general_ci DEFAULT NULL,
  `Tagespreis` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Daten für Tabelle `tblthemengebiet`
--

INSERT INTO `tblthemengebiet` (`ThNr`, `Themengebiet`, `Tagespreis`) VALUES
(1, 'Sicherheit und Umweltschutz', 150),
(2, 'PC-Kurse', 130),
(3, 'Unternehmensf?â??hrung und kollegiale Zusammenarbeit', 210);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tblkurs`
--
ALTER TABLE `tblkurs`
  ADD PRIMARY KEY (`KNr`);

--
-- Indizes für die Tabelle `tblkursbesuch`
--
ALTER TABLE `tblkursbesuch`
  ADD KEY `ID` (`ID`);

--
-- Indizes für die Tabelle `tblkursleiter`
--
ALTER TABLE `tblkursleiter`
  ADD PRIMARY KEY (`KLNr`);

--
-- Indizes für die Tabelle `tblkursort`
--
ALTER TABLE `tblkursort`
  ADD PRIMARY KEY (`KoNr`);

--
-- Indizes für die Tabelle `tblort`
--
ALTER TABLE `tblort`
  ADD PRIMARY KEY (`PLZ`);

--
-- Indizes für die Tabelle `tblteilnehmer`
--
ALTER TABLE `tblteilnehmer`
  ADD PRIMARY KEY (`TNr`);

--
-- Indizes für die Tabelle `tblthemengebiet`
--
ALTER TABLE `tblthemengebiet`
  ADD PRIMARY KEY (`ThNr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
