-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-leperre.alwaysdata.net
-- Generation Time: Jun 06, 2024 at 04:49 PM
-- Server version: 10.6.17-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leperre_vinsurvin`
--
CREATE DATABASE IF NOT EXISTS `leperre_vinsurvin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `leperre_vinsurvin`;

-- --------------------------------------------------------

--
-- Table structure for table `associer`
--

CREATE TABLE `associer` (
  `IdVin` int(11) NOT NULL,
  `IdPlat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `concerner`
--

CREATE TABLE `concerner` (
  `IdVin` int(11) NOT NULL,
  `IdDegustation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contenance`
--

CREATE TABLE `contenance` (
  `IdContenance` int(11) NOT NULL,
  `LibelContenance` varchar(50) DEFAULT NULL,
  `Volume` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contenance`
--

INSERT INTO `contenance` (`IdContenance`, `LibelContenance`, `Volume`) VALUES
(1, 'Bouteille', '0,75L'),
(2, 'Magnum', '1,5L'),
(3, 'Jeroboam', '3L'),
(4, 'Réhoboam', '4,5L'),
(5, 'Mathusalem', '6L'),
(6, 'Salmanazar', '9L'),
(7, 'Balthazar', '12L');

-- --------------------------------------------------------

--
-- Table structure for table `cooperative_viticole`
--

CREATE TABLE `cooperative_viticole` (
  `IdCoop` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cooperative_viticole`
--

INSERT INTO `cooperative_viticole` (`IdCoop`, `Nom`, `adresse`) VALUES
(1, 'Lou Bassaquet', 'Chemin du Loup, 13530 Trets'),
(2, 'Cellier de Marius Caïus', '47 Grand Rue, 83910 Pourrières'),
(3, 'cave de Rousset', 'Quartier Saint Joseph, 13790 Rousset'),
(4, 'la Comtadine de Puyméra', 'Route de Vaison, 84110 Puyméras');

-- --------------------------------------------------------

--
-- Table structure for table `degustation`
--

CREATE TABLE `degustation` (
  `IdDegustation` int(11) NOT NULL,
  `LIbelDegustation` varchar(50) DEFAULT NULL,
  `Lieu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `degustation`
--

INSERT INTO `degustation` (`IdDegustation`, `LIbelDegustation`, `Lieu`) VALUES
(1, 'Nocturne à chateau Crémarde', 'Chateau Crémarde'),
(2, 'Degustation domaine chateau neuf du pape', 'domaine chateau neuf du pape');

-- --------------------------------------------------------

--
-- Table structure for table `organiser`
--

CREATE TABLE `organiser` (
  `IdCoop` int(11) NOT NULL,
  `IdDegustation` int(11) NOT NULL,
  `dateDegustation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organiser`
--

INSERT INTO `organiser` (`IdCoop`, `IdDegustation`, `dateDegustation`) VALUES
(1, 1, '4-07-2024');

-- --------------------------------------------------------

--
-- Table structure for table `plat`
--

CREATE TABLE `plat` (
  `IdPlat` int(11) NOT NULL,
  `NomPlat` varchar(50) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plat`
--

INSERT INTO `plat` (`IdPlat`, `NomPlat`, `Image`) VALUES
(1, 'Boeuf bourguignon', 'LienImage1'),
(2, 'carbonnade flammande', 'lienImage2'),
(3, 'blanquette de veau', 'lienImage3'),
(4, 'sauté de veau aux olives', 'lien Image 4'),
(5, 'Filet de boeuf au foie gras', 'lienImage');

-- --------------------------------------------------------

--
-- Table structure for table `tarifer`
--

CREATE TABLE `tarifer` (
  `IdVin` int(11) NOT NULL,
  `Annee` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tarifer`
--

INSERT INTO `tarifer` (`IdVin`, `Annee`, `prix`) VALUES
(1, '1992', 10000),
(5, '2024', 50),
(6, '2024', 50),
(7, '2024', 50);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `IdUtilisateur` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Mdp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`IdUtilisateur`, `Nom`, `Prenom`, `Login`, `Mdp`) VALUES
(1, 'leperre', 'Tristan', 'tristan.leperre', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e99'),
(2, 'leperre', 'Maxime', 'maxime.leperre', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e99'),
(3, 'jade', 'coulange', 'jade.coulange', '14b6305cebc4fcec62773d5bcd5f0882ea3fa908c39b67b1b8'),
(7, 'noto', 'baptiste', 'baptiste.noto', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e99'),
(8, 'brutti', 'vincent', 'vincent.brutti', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e99'),
(9, 'wholeber', 'youri', 'youri.wholeber', '9324f29fe9fdd4d15db104e42fc1afe79276dad8d357e5839d'),
(10, 'george', 'pompidou', 'pompidou.george', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e99');

-- --------------------------------------------------------

--
-- Table structure for table `vignoble`
--

CREATE TABLE `vignoble` (
  `IdVignoble` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Gerant` varchar(50) DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `IdCoop` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vignoble`
--

INSERT INTO `vignoble` (`IdVignoble`, `Nom`, `Gerant`, `Adresse`, `IdCoop`) VALUES
(1, 'Loubernais,Bordelais', 'Famille Moueix', 'chemin du crack', NULL),
(2, 'Bourgogne', '', 'saone et loire', NULL),
(3, 'Languedoc', '', 'languedoc-roussilon', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vins`
--

CREATE TABLE `vins` (
  `IdVin` int(11) NOT NULL,
  `NomVin` varchar(50) DEFAULT NULL,
  `Domaine` varchar(50) DEFAULT NULL,
  `Couleur` varchar(50) DEFAULT NULL,
  `Cepage` varchar(50) DEFAULT NULL,
  `Annee` year(4) DEFAULT NULL,
  `IdContenance` int(11) NOT NULL,
  `IdVignoble` int(11) NOT NULL,
  `IdUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vins`
--

INSERT INTO `vins` (`IdVin`, `NomVin`, `Domaine`, `Couleur`, `Cepage`, `Annee`, `IdContenance`, `IdVignoble`, `IdUtilisateur`) VALUES
(1, 'Petrus', 'Domaine Petrus', 'Rouge', 'merlot', '1992', 1, 3, 1),
(2, 'Macon village', 'jps', 'Blanc', 'Chardonnay', '2022', 1, 3, 3),
(3, 'Mas de Daumas Gassac', 'Domaine de gassac', 'rouge', 'cabernert sauvignon', '2021', 1, 3, 2),
(4, 'Mas de Daumas de Gassac', 'Domaine de Gassac', 'Blanc', 'Petit Maseng', '2017', 1, 3, 2),
(5, 'Chateau Cremarde', 'Crémarde', 'Rouge', 'multiple', '2024', 1, 1, 1),
(6, 'Chateau Cremarde', 'Crémarde', 'Rose', 'multiple', '2024', 1, 1, 1),
(7, 'Chateau Cremarde', 'Crémarde', 'Blanc', 'multiple', '2024', 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `associer`
--
ALTER TABLE `associer`
  ADD PRIMARY KEY (`IdVin`,`IdPlat`),
  ADD KEY `IdPlat` (`IdPlat`);

--
-- Indexes for table `concerner`
--
ALTER TABLE `concerner`
  ADD PRIMARY KEY (`IdVin`,`IdDegustation`),
  ADD KEY `IdDegustation` (`IdDegustation`);

--
-- Indexes for table `contenance`
--
ALTER TABLE `contenance`
  ADD PRIMARY KEY (`IdContenance`);

--
-- Indexes for table `cooperative_viticole`
--
ALTER TABLE `cooperative_viticole`
  ADD PRIMARY KEY (`IdCoop`);

--
-- Indexes for table `degustation`
--
ALTER TABLE `degustation`
  ADD PRIMARY KEY (`IdDegustation`);

--
-- Indexes for table `organiser`
--
ALTER TABLE `organiser`
  ADD PRIMARY KEY (`IdCoop`,`IdDegustation`),
  ADD KEY `IdDegustation` (`IdDegustation`);

--
-- Indexes for table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`IdPlat`);

--
-- Indexes for table `tarifer`
--
ALTER TABLE `tarifer`
  ADD PRIMARY KEY (`IdVin`,`Annee`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`IdUtilisateur`);

--
-- Indexes for table `vignoble`
--
ALTER TABLE `vignoble`
  ADD PRIMARY KEY (`IdVignoble`),
  ADD KEY `IdCoop` (`IdCoop`);

--
-- Indexes for table `vins`
--
ALTER TABLE `vins`
  ADD PRIMARY KEY (`IdVin`),
  ADD KEY `IdContenance` (`IdContenance`),
  ADD KEY `IdVignoble` (`IdVignoble`),
  ADD KEY `IdUtilisateur` (`IdUtilisateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `IdUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vins`
--
ALTER TABLE `vins`
  MODIFY `IdVin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `associer`
--
ALTER TABLE `associer`
  ADD CONSTRAINT `associer_ibfk_1` FOREIGN KEY (`IdVin`) REFERENCES `vins` (`IdVin`),
  ADD CONSTRAINT `associer_ibfk_2` FOREIGN KEY (`IdPlat`) REFERENCES `plat` (`IdPlat`);

--
-- Constraints for table `concerner`
--
ALTER TABLE `concerner`
  ADD CONSTRAINT `concerner_ibfk_1` FOREIGN KEY (`IdVin`) REFERENCES `vins` (`IdVin`),
  ADD CONSTRAINT `concerner_ibfk_2` FOREIGN KEY (`IdDegustation`) REFERENCES `degustation` (`IdDegustation`);

--
-- Constraints for table `organiser`
--
ALTER TABLE `organiser`
  ADD CONSTRAINT `organiser_ibfk_1` FOREIGN KEY (`IdCoop`) REFERENCES `cooperative_viticole` (`IdCoop`),
  ADD CONSTRAINT `organiser_ibfk_2` FOREIGN KEY (`IdDegustation`) REFERENCES `degustation` (`IdDegustation`);

--
-- Constraints for table `tarifer`
--
ALTER TABLE `tarifer`
  ADD CONSTRAINT `tarifer_ibfk_1` FOREIGN KEY (`IdVin`) REFERENCES `vins` (`IdVin`);

--
-- Constraints for table `vignoble`
--
ALTER TABLE `vignoble`
  ADD CONSTRAINT `vignoble_ibfk_1` FOREIGN KEY (`IdCoop`) REFERENCES `cooperative_viticole` (`IdCoop`);

--
-- Constraints for table `vins`
--
ALTER TABLE `vins`
  ADD CONSTRAINT `vins_ibfk_1` FOREIGN KEY (`IdContenance`) REFERENCES `contenance` (`IdContenance`),
  ADD CONSTRAINT `vins_ibfk_2` FOREIGN KEY (`IdVignoble`) REFERENCES `vignoble` (`IdVignoble`),
  ADD CONSTRAINT `vins_ibfk_3` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateur` (`IdUtilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
