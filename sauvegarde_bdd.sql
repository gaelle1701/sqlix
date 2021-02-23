-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  lun. 22 fév. 2021 à 08:56
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sqlix`
--

-- --------------------------------------------------------

--
-- Structure de la table `absorber`
--

DROP TABLE IF EXISTS `absorber`;
CREATE TABLE IF NOT EXISTS `absorber` (
  `num_potion` int(11) NOT NULL,
  `date_a` datetime NOT NULL,
  `num_hab` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_potion`,`date_a`,`num_hab`),
  KEY `num_hab` (`num_hab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `absorber`
--

INSERT INTO `absorber` (`num_potion`, `date_a`, `num_hab`, `quantite`) VALUES
(1, '2052-02-18 00:00:00', 7, 3),
(1, '2052-02-20 00:00:00', 2, 2),
(1, '2052-02-20 00:00:00', 8, 2),
(1, '2052-04-03 00:00:00', 7, 1),
(1, '2052-04-03 00:00:00', 15, 2),
(1, '2052-06-06 00:00:00', 13, 2),
(1, '2052-08-18 00:00:00', 8, 3),
(1, '2052-08-18 00:00:00', 16, 1),
(1, '2052-11-26 00:00:00', 10, 2),
(2, '2052-02-18 00:00:00', 12, 4),
(2, '2052-04-03 00:00:00', 13, 5),
(2, '2052-06-06 00:00:00', 7, 1),
(2, '2052-07-18 00:00:00', 7, 3),
(2, '2052-10-23 00:00:00', 7, 4),
(2, '2052-11-26 00:00:00', 8, 2),
(3, '2052-02-20 00:00:00', 7, 1),
(3, '2052-04-03 00:00:00', 10, 4),
(3, '2052-06-06 00:00:00', 8, 4),
(3, '2052-08-18 00:00:00', 10, 2),
(3, '2052-09-20 00:00:00', 7, 5),
(3, '2052-10-23 00:00:00', 13, 1),
(4, '2052-05-05 00:00:00', 15, 2),
(4, '2052-08-18 00:00:00', 7, 2),
(4, '2052-09-20 00:00:00', 1, 2),
(4, '2052-10-23 00:00:00', 13, 3),
(5, '2052-05-10 00:00:00', 1, 4),
(5, '2052-05-10 00:00:00', 2, 1),
(5, '2052-06-07 00:00:00', 1, 2),
(5, '2052-07-17 00:00:00', 7, 1),
(5, '2052-11-26 00:00:00', 13, 2),
(5, '2052-11-26 00:00:00', 16, 2);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `code_cat` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mon_categ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_points` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_cat`),
  UNIQUE KEY `code_cat` (`code_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`code_cat`, `mon_categ`, `nb_points`) VALUES
('BCN', 'Bouclier de Centurion', 6),
('BDN', 'Bouclier de Décurion', 4),
('BLE', 'Bouclier de Légionnaire', 3),
('BLT', 'Bouclier de Légat', 10),
('CCN', 'Casque de Centurion', 3),
('CDN', 'Casque de Décurion', 2),
('CLE', 'Casque de Légionnaire', 1),
('CLT', 'Casque de Légat', 4);

-- --------------------------------------------------------

--
-- Structure de la table `fabriquer`
--

DROP TABLE IF EXISTS `fabriquer`;
CREATE TABLE IF NOT EXISTS `fabriquer` (
  `num_potion` int(11) NOT NULL,
  `num_hab` int(11) NOT NULL,
  PRIMARY KEY (`num_potion`,`num_hab`),
  KEY `num_hab` (`num_hab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fabriquer`
--

INSERT INTO `fabriquer` (`num_potion`, `num_hab`) VALUES
(2, 2),
(5, 2),
(3, 3),
(1, 4),
(4, 4),
(5, 4),
(4, 6);

-- --------------------------------------------------------

--
-- Structure de la table `habitant`
--

DROP TABLE IF EXISTS `habitant`;
CREATE TABLE IF NOT EXISTS `habitant` (
  `num_hab` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `num_qualite` int(11) DEFAULT NULL,
  `num_village` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_hab`),
  KEY `num_qualite` (`num_qualite`),
  KEY `num_village` (`num_village`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `habitant`
--

INSERT INTO `habitant` (`num_hab`, `nom`, `age`, `num_qualite`, `num_village`) VALUES
(1, 'Abraracourcix', 65, 1, 1),
(2, 'Amnésix', 56, 2, 7),
(3, 'Barometrix', 68, 2, 3),
(4, 'Panoramix', 79, 2, 1),
(5, 'Assurancetourix', 53, 3, 1),
(6, 'Zérozérosix', 75, 2, 4),
(7, 'Astérix', 35, 4, 1),
(8, 'Bellodalix', 32, 4, 7),
(9, 'Cétyounix', 32, 4, 4),
(10, 'Homéopatix', 48, 5, 6),
(11, 'Obélix', 38, 6, 1),
(12, 'Plantaquatix', 30, 5, 5),
(13, 'Moralélastix', 67, 1, 2),
(14, 'Pneumatix', 26, 7, 1),
(15, 'Pronostix', 35, 4, 5),
(16, 'Goudurix', 38, 4, 2),
(17, 'Océanix', 40, 5, 5),
(18, 'Asdepix', 53, 1, 5),
(19, 'Eponine', 48, 8, 2),
(20, 'Falbala', 26, 9, 1),
(21, 'Gélatine', 65, NULL, 6),
(22, 'Fanzine', 21, NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `potion`
--

DROP TABLE IF EXISTS `potion`;
CREATE TABLE IF NOT EXISTS `potion` (
  `num_potion` int(11) NOT NULL AUTO_INCREMENT,
  `lib_potion` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formule` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `constituant_principal` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num_potion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `potion`
--

INSERT INTO `potion` (`num_potion`, `lib_potion`, `formule`, `constituant_principal`) VALUES
(1, 'Potion magique n°1', 'NULL', 'Gui'),
(2, 'Potion magique n°2', '4V3C2VA', 'Vin'),
(3, 'Potion magique n°3', '2C1B', 'Calva'),
(4, 'Potion Zen', 'NULL', 'Jus de Betterave'),
(5, 'Potion Anti Douleur', '5C3J1T', 'Calva');

-- --------------------------------------------------------

--
-- Structure de la table `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE IF NOT EXISTS `province` (
  `num_province` int(11) NOT NULL AUTO_INCREMENT,
  `nom_province` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_gouverneur` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num_province`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `province`
--

INSERT INTO `province` (`num_province`, `nom_province`, `nom_gouverneur`) VALUES
(1, 'Armorique', 'Garovirus'),
(2, 'Averne', 'Nenpeuplus'),
(3, 'Aquitaine', 'Yenapus');

-- --------------------------------------------------------

--
-- Structure de la table `qualite`
--

DROP TABLE IF EXISTS `qualite`;
CREATE TABLE IF NOT EXISTS `qualite` (
  `num_qualite` int(11) NOT NULL AUTO_INCREMENT,
  `lib_qualite` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num_qualite`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `qualite`
--

INSERT INTO `qualite` (`num_qualite`, `lib_qualite`) VALUES
(1, 'Chef'),
(2, 'Druide'),
(3, 'Barde'),
(4, 'Guerrier'),
(5, 'Chasseur'),
(6, 'Livreur de menhirs'),
(7, 'Facteur'),
(8, 'Poissonnière'),
(9, 'Serveuse');

-- --------------------------------------------------------

--
-- Structure de la table `resserre`
--

DROP TABLE IF EXISTS `resserre`;
CREATE TABLE IF NOT EXISTS `resserre` (
  `num_resserre` int(11) NOT NULL AUTO_INCREMENT,
  `nom_resserre` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superficie` int(11) DEFAULT NULL,
  `num_village` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_resserre`),
  KEY `num_village` (`num_village`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resserre`
--

INSERT INTO `resserre` (`num_resserre`, `nom_resserre`, `superficie`, `num_village`) VALUES
(1, 'Albinus', 720, 4),
(2, 'Vercingetorix', 500, 6),
(3, 'Sintrof', 895, 1);

-- --------------------------------------------------------

--
-- Structure de la table `trophee`
--

DROP TABLE IF EXISTS `trophee`;
CREATE TABLE IF NOT EXISTS `trophee` (
  `num_trophee` int(11) NOT NULL AUTO_INCREMENT,
  `date_prise` datetime DEFAULT NULL,
  `code_cat` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_preneur` int(11) DEFAULT NULL,
  `num_resserre` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_trophee`),
  KEY `code_cat` (`code_cat`),
  KEY `num_preneur` (`num_preneur`),
  KEY `num_resserre` (`num_resserre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trophee`
--

INSERT INTO `trophee` (`num_trophee`, `date_prise`, `code_cat`, `num_preneur`, `num_resserre`) VALUES
(1, '2052-04-03 00:00:00', 'BLE', 7, 3),
(2, '2052-04-03 00:00:00', 'BLT', 11, 3),
(3, '2052-05-05 00:00:00', 'CDN', 15, 1),
(4, '2052-05-05 00:00:00', 'CLE', 16, 2),
(5, '2052-06-06 00:00:00', 'CCN', 16, 2),
(6, '2052-06-06 00:00:00', 'BLT', 8, 1),
(7, '2052-08-18 00:00:00', 'CCN', 8, 1),
(8, '2052-09-20 00:00:00', 'CLT', 1, 3),
(9, '2052-10-23 00:00:00', 'CDN', 7, 2),
(10, '2052-10-23 00:00:00', 'CLE', 16, 1);

-- --------------------------------------------------------

--
-- Structure de la table `village`
--

DROP TABLE IF EXISTS `village`;
CREATE TABLE IF NOT EXISTS `village` (
  `num_village` int(11) NOT NULL AUTO_INCREMENT,
  `nom_village` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_huttes` int(11) DEFAULT NULL,
  `num_province` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_village`),
  KEY `num_province` (`num_province`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `village`
--

INSERT INTO `village` (`num_village`, `nom_village`, `nb_huttes`, `num_province`) VALUES
(1, 'Aquilona', 52, 1),
(2, 'Lutèce', 25, 2),
(3, 'Aginum', 33, 3),
(4, 'Calendes Aquae', 42, 2),
(5, 'Condate', 38, 1),
(6, 'Gergovie', 55, 3),
(7, 'Aquae Calidae', 35, 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `absorber`
--
ALTER TABLE `absorber`
  ADD CONSTRAINT `absorber_ibfk_1` FOREIGN KEY (`num_potion`) REFERENCES `potion` (`num_potion`),
  ADD CONSTRAINT `absorber_ibfk_2` FOREIGN KEY (`num_hab`) REFERENCES `habitant` (`num_hab`);

--
-- Contraintes pour la table `fabriquer`
--
ALTER TABLE `fabriquer`
  ADD CONSTRAINT `fabriquer_ibfk_1` FOREIGN KEY (`num_potion`) REFERENCES `potion` (`num_potion`),
  ADD CONSTRAINT `fabriquer_ibfk_2` FOREIGN KEY (`num_hab`) REFERENCES `habitant` (`num_hab`);

--
-- Contraintes pour la table `habitant`
--
ALTER TABLE `habitant`
  ADD CONSTRAINT `habitant_ibfk_1` FOREIGN KEY (`num_qualite`) REFERENCES `qualite` (`num_qualite`),
  ADD CONSTRAINT `habitant_ibfk_2` FOREIGN KEY (`num_village`) REFERENCES `village` (`num_village`);

--
-- Contraintes pour la table `resserre`
--
ALTER TABLE `resserre`
  ADD CONSTRAINT `resserre_ibfk_1` FOREIGN KEY (`num_village`) REFERENCES `village` (`num_village`);

--
-- Contraintes pour la table `trophee`
--
ALTER TABLE `trophee`
  ADD CONSTRAINT `trophee_ibfk_1` FOREIGN KEY (`code_cat`) REFERENCES `categorie` (`code_cat`),
  ADD CONSTRAINT `trophee_ibfk_2` FOREIGN KEY (`num_preneur`) REFERENCES `habitant` (`num_hab`),
  ADD CONSTRAINT `trophee_ibfk_3` FOREIGN KEY (`num_resserre`) REFERENCES `resserre` (`num_resserre`);

--
-- Contraintes pour la table `village`
--
ALTER TABLE `village`
  ADD CONSTRAINT `village_ibfk_1` FOREIGN KEY (`num_province`) REFERENCES `province` (`num_province`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
