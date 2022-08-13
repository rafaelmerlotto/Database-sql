-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Ago 09, 2022 alle 14:25
-- Versione del server: 5.7.24
-- Versione PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoo`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `animali`
--

CREATE TABLE `animali` (
  `id_animali` int(15) NOT NULL,
  `nome` text,
  `specie` text,
  `eta` int(11) DEFAULT NULL,
  `responsabile` int(15) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `animali`
--

INSERT INTO `animali` (`id_animali`, `nome`, `specie`, `eta`, `responsabile`) VALUES
(1, 'Basiliko', 'Gatto_selvatico', 2, 4),
(2, 'Red_label', 'Rinoceronte', 8, 8),
(3, 'Kena', 'Lupo', 10, 9),
(4, 'Rossa', 'Flamingo', 5, 3),
(5, 'Pablo', 'Orso', 2, 4),
(6, 'Eddo', 'Elefante', 4, 10),
(7, 'Apore', 'Cervo', 3, 9),
(8, 'Capo', 'Leone', 7, 4),
(9, 'Bombay', 'Giraffa', 6, 1),
(10, 'Mamba', 'Antilope', 3, 9),
(11, 'Atacama', 'Aquila', 4, 3),
(12, 'Ipiranga', 'Scimmia', 5, 9),
(13, 'Kiko', 'Ippopotamo', 8, 8),
(14, 'Legend', 'Tartaruga', 13, 7),
(15, 'Jah', 'Anaconda', 6, 2),
(16, 'Scooby', 'Tigre', 3, 5),
(17, 'Ringo', 'Lemuri', 1, 10),
(18, 'Sunday', 'Zebra', 3, 1),
(19, 'Rua', 'Panda_rosso', 5, 6),
(20, 'Brasil', 'Capibara', 2, 8),
(21, 'Joff', 'Canguro', 4, 9),
(22, 'Bayles', 'Camello', 9, 1),
(23, 'Corona', 'Koala', 3, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `cibi`
--

CREATE TABLE `cibi` (
  `id_cibi` int(11) UNSIGNED NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `prezzo` int(11) DEFAULT NULL,
  `marca` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `cibi`
--

INSERT INTO `cibi` (`id_cibi`, `nome`, `prezzo`, `marca`) VALUES
(1, 'carne', '10$_Kg', 'zoofood'),
(2, 'Anguria', '1$_Kg', 'green garden'),
(3, 'cereali', '5$_Kg', 'itafood'),
(4, 'lattuga', '1$_Kg', 'green garden'),
(5, 'Vitamina', '11$_Kg', 'topvitamins'),
(6, 'mela', '2$_Kg', 'green garden'),
(7, 'funghi', '2$_Kg', 'green garden'),
(8, 'insetti', '9$_Kg', 'zoofood'),
(9, 'Fiori_foglie', '2$_Kg', 'green garden'),
(10, 'piccoli_roditori', '12$_kg', 'ricifood'),
(11, 'crostracei_molluschi', '13$_kg', 'seafood');

-- --------------------------------------------------------

--
-- Struttura della tabella `cibi_animali`
--

CREATE TABLE `cibi_animali` (
  `cibo_id` int(11) UNSIGNED NOT NULL,
  `animale_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `cibi_animali`
--

INSERT INTO `cibi_animali` (`cibo_id`, `animale_id`) VALUES
(1, 1),
(5, 1),
(4, 2),
(9, 2),
(1, 3),
(8, 4),
(11, 4),
(3, 5),
(6, 5),
(7, 5),
(9, 5),
(2, 6),
(5, 6),
(9, 6),
(3, 7),
(4, 7),
(7, 7),
(9, 7),
(1, 8),
(5, 8),
(4, 9),
(9, 9),
(3, 10),
(7, 10),
(9, 10),
(8, 11),
(10, 11),
(2, 12),
(5, 12),
(6, 12),
(7, 12),
(8, 12),
(2, 13),
(5, 13),
(6, 13),
(9, 13),
(2, 14),
(4, 14),
(6, 14),
(9, 14),
(10, 15),
(11, 15),
(1, 16),
(5, 16),
(7, 17),
(8, 17),
(3, 18),
(4, 18),
(9, 18),
(6, 19),
(7, 19),
(8, 19),
(9, 19),
(2, 20),
(4, 20),
(6, 20),
(9, 20),
(3, 21),
(9, 21),
(3, 22),
(4, 22),
(9, 22),
(5, 23),
(9, 23);

-- --------------------------------------------------------

--
-- Struttura della tabella `responsabili`
--

CREATE TABLE `responsabili` (
  `nome` varchar(30) DEFAULT NULL,
  `cognome` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_responsabile` int(15) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `responsabili`
--

INSERT INTO `responsabili` (`nome`, `cognome`, `email`, `id_responsabile`) VALUES
('Massimo', 'Valentino', 'valentino.massimo@zoo.com', 1),
('Cristina', 'Altimari', 'altimari.cristina@zoo.com', 2),
('Ilaria', 'Matarucco', 'matarucco.ilaria@zoo.com', 3),
('Marco', 'Rosseto', 'rosseto.marco@zoo.com', 4),
('Carlo', 'Zambelli', 'zambelli.carlo@zoo.com', 5),
('Patrizia', 'Pillar', 'pillar.patrizia@zoo.com', 6),
('Mark', 'Upuku_Matgi', 'upuku_matgi@zoo.com', 7),
('Mario', 'Zorzettig', 'zorzettig.mario@zoo.com', 8),
('Alessio', 'Amaro', 'amaro.alessio@zoo.com', 9),
('Victor', 'Lopez', 'lopez.victor@zoo.com', 10);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `animali`
--
ALTER TABLE `animali`
  ADD PRIMARY KEY (`id_animali`),
  ADD KEY `responsabile` (`responsabile`);

--
-- Indici per le tabelle `cibi`
--
ALTER TABLE `cibi`
  ADD PRIMARY KEY (`id_cibi`);

--
-- Indici per le tabelle `cibi_animali`
--
ALTER TABLE `cibi_animali`
  ADD PRIMARY KEY (`cibo_id`,`animale_id`),
  ADD KEY `animale_id` (`animale_id`);

--
-- Indici per le tabelle `responsabili`
--
ALTER TABLE `responsabili`
  ADD PRIMARY KEY (`id_responsabile`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `animali`
--
ALTER TABLE `animali`
  MODIFY `id_animali` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT per la tabella `cibi`
--
ALTER TABLE `cibi`
  MODIFY `id_cibi` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `responsabili`
--
ALTER TABLE `responsabili`
  MODIFY `id_responsabile` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `animali`
--
ALTER TABLE `animali`
  ADD CONSTRAINT `animali_ibfk_1` FOREIGN KEY (`responsabile`) REFERENCES `responsabili` (`id_responsabile`);

--
-- Limiti per la tabella `cibi_animali`
--
ALTER TABLE `cibi_animali`
  ADD CONSTRAINT `cibi_animali_ibfk_1` FOREIGN KEY (`cibo_id`) REFERENCES `cibi` (`id_cibi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cibi_animali_ibfk_2` FOREIGN KEY (`animale_id`) REFERENCES `animali` (`id_animali`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
