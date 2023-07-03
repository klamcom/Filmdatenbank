-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Jul 2023 um 19:54
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `db_filmdatenbank`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_film`
--

CREATE TABLE `tbl_film` (
  `IDFilm` int(10) UNSIGNED NOT NULL,
  `Titel` varchar(255) NOT NULL,
  `EDatum` date NOT NULL,
  `FIDPFirma` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `tbl_film`
--

INSERT INTO `tbl_film` (`IDFilm`, `Titel`, `EDatum`, `FIDPFirma`) VALUES
(1, 'Dirty Dancing', '1987-08-21', 2),
(2, 'Sister Act', '1992-05-29', 3),
(3, 'Harry Potter und der Stein der Weisen', '2001-11-23', 4),
(4, 'Casanova', '2006-02-09', 3),
(5, 'Die unendliche Geschichte', '1984-05-20', 1),
(6, 'Die Welle', '2008-03-13', 1),
(7, 'Krieg in Chinatown', '1987-09-25', 2),
(8, 'I AM Legend', '2008-01-10', 4),
(9, 'Transcendence', '2014-04-18', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_produktionsfirma`
--

CREATE TABLE `tbl_produktionsfirma` (
  `IDPF` int(10) UNSIGNED NOT NULL,
  `Bezeichnung` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `tbl_produktionsfirma`
--

INSERT INTO `tbl_produktionsfirma` (`IDPF`, `Bezeichnung`) VALUES
(1, 'Bavaria Filmstudios'),
(2, 'Great American Films'),
(3, 'Touchstones Pictures'),
(4, 'Warner Brothers Pictures');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tbl_film`
--
ALTER TABLE `tbl_film`
  ADD PRIMARY KEY (`IDFilm`),
  ADD KEY `FIDPFirma` (`FIDPFirma`);

--
-- Indizes für die Tabelle `tbl_produktionsfirma`
--
ALTER TABLE `tbl_produktionsfirma`
  ADD PRIMARY KEY (`IDPF`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `tbl_film`
--
ALTER TABLE `tbl_film`
  MODIFY `IDFilm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `tbl_produktionsfirma`
--
ALTER TABLE `tbl_produktionsfirma`
  MODIFY `IDPF` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `tbl_film`
--
ALTER TABLE `tbl_film`
  ADD CONSTRAINT `tbl_film_ibfk_1` FOREIGN KEY (`FIDPFirma`) REFERENCES `tbl_produktionsfirma` (`IDPF`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
