-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 12 Décembre 2025 à 19:09
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdd_devoir3`
--
CREATE DATABASE IF NOT EXISTS `bdd_devoir3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdd_devoir3`;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE `cours` (
  `cours_id` int(11) NOT NULL,
  `cours_nom` varchar(255) DEFAULT NULL,
  `cours_desc` text,
  `matiere_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `cours`
--

TRUNCATE TABLE `cours`;
--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`cours_id`, `cours_nom`, `cours_desc`, `matiere_id`) VALUES
(1, 'Introduction PHP', 'Bases de PHP', 1),
(2, 'PHP avancé', 'Fonctions avancées en PHP', 1),
(3, 'Principes marketing', 'Bases du marketing digital', 2),
(4, 'Analyse statistique', 'Méthodes statistiques', 3),
(5, 'JS pour débutants', 'Bases de JavaScript', 4),
(6, 'Installation et fonctionnement', '', 5),
(7, 'Bien démarrer en PHP', '', 5),
(8, 'Les variables et constantes', '', 5),
(9, 'Les conditions, les opérateurs et les boucles', '', 5),
(10, 'tableaux de données', '', 5),
(11, 'Variables prédéfinies et variables externes', '', 5),
(12, 'PHP et les formulaires', '', 5),
(13, 'Qu’est-ce qu’une base de données', '', 6),
(14, 'MySQL', '', 6),
(15, 'Premier script PHP-MySQL', '', 6),
(16, 'Les requêtes MySQL', '', 6),
(17, 'Les types de données MySQL', '', 6),
(18, 'Réalisation d’un site de contenu en base de données', '', 6),
(19, 'Les sessions', '', 6),
(20, 'Les cookies', '', 6),
(32, 'Recenser les informations du domaine étudié', '', 7),
(33, 'Organiser les données', '', 7),
(34, 'Construire l\'organisation physique des données', '', 7),
(35, 'Mettre en oeuvre les instructions de création, de modification et de suppression de base de données', '', 7),
(36, 'Mettre en oeuvre les instructions pour implémenter les contraintes et l\'optimisation des accès', '', 7),
(37, 'Ecrire et exécuter un script de création de base de données à l\'aide de l\'environnement intégré de développement', '', 7),
(38, 'Générer un script de création de la base de données à l\'aide de l\'outil de modélisation', '', 7),
(39, 'Elaborer des scripts d\'alimentation de la base de test', '', 7),
(40, 'Les avantages et inconvénients du relationnel et du non-relationnel', '', 7),
(41, 'Le langage de requête pour la base de données', '', 7),
(42, 'Outil de sauvegarde de base de données', '', 7);

-- --------------------------------------------------------

--
-- Structure de la table `devoirs`
--

DROP TABLE IF EXISTS `devoirs`;
CREATE TABLE `devoirs` (
  `devoir_id` int(11) NOT NULL,
  `devoir_nom` varchar(100) NOT NULL,
  `devoir_desc` text,
  `cours_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `devoirs`
--

TRUNCATE TABLE `devoirs`;
--
-- Contenu de la table `devoirs`
--

INSERT INTO `devoirs` (`devoir_id`, `devoir_nom`, `devoir_desc`, `cours_id`) VALUES
(1, 'Devoir 1 PHP', 'Exercices de base PHP', 1),
(2, 'Projet PHP avancé', 'Projet pratique avancé', 2),
(3, 'Devoir marketing', 'Analyse de campagne', 3),
(4, 'Exercice statistiques', 'Travail sur données réelles', 4),
(5, 'TP JavaScript', 'Mini-projet JS', 5);

-- --------------------------------------------------------

--
-- Structure de la table `eleves`
--

DROP TABLE IF EXISTS `eleves`;
CREATE TABLE `eleves` (
  `eleve_id` int(11) NOT NULL,
  `eleve_nom` varchar(100) NOT NULL,
  `eleve_prenom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `eleves`
--

TRUNCATE TABLE `eleves`;
--
-- Contenu de la table `eleves`
--

INSERT INTO `eleves` (`eleve_id`, `eleve_nom`, `eleve_prenom`) VALUES
(1, 'Dupont', 'Alice'),
(2, 'Martin', 'Jean'),
(3, 'Durand', 'Sophie'),
(4, 'Bernard', 'Paul'),
(5, 'PAGANOTTO', 'Vanessa'),
(6, 'PAGANOTTO', 'Vanessa'),
(7, 'PAGANOTTO', 'Vanessa'),
(8, 'PAGANOTTO', 'Vanessa');

-- --------------------------------------------------------

--
-- Structure de la table `eleves_formations`
--

DROP TABLE IF EXISTS `eleves_formations`;
CREATE TABLE `eleves_formations` (
  `ele_frm_id` int(11) NOT NULL,
  `eleve_id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `date_deb_frm` date DEFAULT NULL,
  `date_fin_frm` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `eleves_formations`
--

TRUNCATE TABLE `eleves_formations`;
--
-- Contenu de la table `eleves_formations`
--

INSERT INTO `eleves_formations` (`ele_frm_id`, `eleve_id`, `frm_id`, `date_deb_frm`, `date_fin_frm`) VALUES
(1, 1, 1, '2024-09-01', '2025-06-30'),
(2, 2, 1, '2024-09-01', '2025-06-30'),
(3, 3, 2, '2024-09-01', '2025-06-30'),
(4, 4, 3, '2024-09-01', '2025-06-30');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

DROP TABLE IF EXISTS `formations`;
CREATE TABLE `formations` (
  `frm_id` int(11) NOT NULL,
  `frm_nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `formations`
--

TRUNCATE TABLE `formations`;
--
-- Contenu de la table `formations`
--

INSERT INTO `formations` (`frm_id`, `frm_nom`) VALUES
(1, 'Développement Web'),
(2, 'Marketing Digital'),
(3, 'Data Analyse');

-- --------------------------------------------------------

--
-- Structure de la table `formations_matieres`
--

DROP TABLE IF EXISTS `formations_matieres`;
CREATE TABLE `formations_matieres` (
  `frm_mat_id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `formations_matieres`
--

TRUNCATE TABLE `formations_matieres`;
-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

DROP TABLE IF EXISTS `matieres`;
CREATE TABLE `matieres` (
  `matiere_id` int(11) NOT NULL,
  `matiere_nom` varchar(100) NOT NULL,
  `matiere_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `matieres`
--

TRUNCATE TABLE `matieres`;
--
-- Contenu de la table `matieres`
--

INSERT INTO `matieres` (`matiere_id`, `matiere_nom`, `matiere_desc`) VALUES
(1, 'PHP', 'Programmation back-end'),
(2, 'Marketing', 'Stratégies marketing digital'),
(3, 'Analyse de données', 'Traitement et analyse des données'),
(4, 'JavaScript', 'Programmation front-end'),
(5, 'PHP initiation', NULL),
(6, 'PHP intermédiaire', NULL),
(7, 'Gérer une base de données', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

DROP TABLE IF EXISTS `professeurs`;
CREATE TABLE `professeurs` (
  `prof_id` int(11) NOT NULL,
  `prof_nom` varchar(100) NOT NULL,
  `prof_prenom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `professeurs`
--

TRUNCATE TABLE `professeurs`;
--
-- Contenu de la table `professeurs`
--

INSERT INTO `professeurs` (`prof_id`, `prof_nom`, `prof_prenom`) VALUES
(1, 'Leroy', 'Claire'),
(2, 'Dubois', 'Marc'),
(3, 'Moreau', 'Lucie'),
(4, 'Petit', 'Thomas');

-- --------------------------------------------------------

--
-- Structure de la table `professeurs_matieres`
--

DROP TABLE IF EXISTS `professeurs_matieres`;
CREATE TABLE `professeurs_matieres` (
  `prof_mat_id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `professeurs_matieres`
--

TRUNCATE TABLE `professeurs_matieres`;
--
-- Contenu de la table `professeurs_matieres`
--

INSERT INTO `professeurs_matieres` (`prof_mat_id`, `prof_id`, `matiere_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 2),
(4, 3, 3),
(5, 4, 1),
(6, 4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

DROP TABLE IF EXISTS `rdv`;
CREATE TABLE `rdv` (
  `rdv_id` int(11) NOT NULL,
  `eleve_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `rdv_date` date NOT NULL,
  `rdv_h_deb` time NOT NULL,
  `rdv_h_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `rdv`
--

TRUNCATE TABLE `rdv`;
--
-- Contenu de la table `rdv`
--

INSERT INTO `rdv` (`rdv_id`, `eleve_id`, `matiere_id`, `prof_id`, `rdv_date`, `rdv_h_deb`, `rdv_h_fin`) VALUES
(1, 1, 1, 1, '2024-10-10', '10:00:00', '11:00:00'),
(2, 2, 1, 4, '2024-10-11', '14:00:00', '15:00:00'),
(3, 3, 2, 2, '2024-10-12', '09:30:00', '10:30:00'),
(4, 4, 3, 3, '2024-10-13', '16:00:00', '17:00:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`cours_id`),
  ADD KEY `matiere_id` (`matiere_id`);

--
-- Index pour la table `devoirs`
--
ALTER TABLE `devoirs`
  ADD PRIMARY KEY (`devoir_id`),
  ADD KEY `cours_id` (`cours_id`);

--
-- Index pour la table `eleves`
--
ALTER TABLE `eleves`
  ADD PRIMARY KEY (`eleve_id`);

--
-- Index pour la table `eleves_formations`
--
ALTER TABLE `eleves_formations`
  ADD PRIMARY KEY (`ele_frm_id`),
  ADD KEY `eleve_id` (`eleve_id`),
  ADD KEY `frm_id` (`frm_id`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`frm_id`);

--
-- Index pour la table `formations_matieres`
--
ALTER TABLE `formations_matieres`
  ADD PRIMARY KEY (`frm_mat_id`),
  ADD KEY `frm_id` (`frm_id`),
  ADD KEY `matiere_id` (`matiere_id`);

--
-- Index pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`matiere_id`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`prof_id`);

--
-- Index pour la table `professeurs_matieres`
--
ALTER TABLE `professeurs_matieres`
  ADD PRIMARY KEY (`prof_mat_id`),
  ADD KEY `prof_id` (`prof_id`),
  ADD KEY `matiere_id` (`matiere_id`);

--
-- Index pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD PRIMARY KEY (`rdv_id`),
  ADD KEY `eleve_id` (`eleve_id`),
  ADD KEY `matiere_id` (`matiere_id`),
  ADD KEY `prof_id` (`prof_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `cours_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `devoirs`
--
ALTER TABLE `devoirs`
  MODIFY `devoir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `eleves`
--
ALTER TABLE `eleves`
  MODIFY `eleve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `eleves_formations`
--
ALTER TABLE `eleves_formations`
  MODIFY `ele_frm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `frm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `formations_matieres`
--
ALTER TABLE `formations_matieres`
  MODIFY `frm_mat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `matiere_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `prof_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `professeurs_matieres`
--
ALTER TABLE `professeurs_matieres`
  MODIFY `prof_mat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `rdv`
--
ALTER TABLE `rdv`
  MODIFY `rdv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`matiere_id`);

--
-- Contraintes pour la table `devoirs`
--
ALTER TABLE `devoirs`
  ADD CONSTRAINT `devoirs_ibfk_1` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`cours_id`);

--
-- Contraintes pour la table `eleves_formations`
--
ALTER TABLE `eleves_formations`
  ADD CONSTRAINT `eleves_formations_ibfk_1` FOREIGN KEY (`eleve_id`) REFERENCES `eleves` (`eleve_id`),
  ADD CONSTRAINT `eleves_formations_ibfk_2` FOREIGN KEY (`frm_id`) REFERENCES `formations` (`frm_id`);

--
-- Contraintes pour la table `formations_matieres`
--
ALTER TABLE `formations_matieres`
  ADD CONSTRAINT `formations_matieres_ibfk_1` FOREIGN KEY (`frm_id`) REFERENCES `formations` (`frm_id`),
  ADD CONSTRAINT `formations_matieres_ibfk_2` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`matiere_id`);

--
-- Contraintes pour la table `professeurs_matieres`
--
ALTER TABLE `professeurs_matieres`
  ADD CONSTRAINT `professeurs_matieres_ibfk_1` FOREIGN KEY (`prof_id`) REFERENCES `professeurs` (`prof_id`),
  ADD CONSTRAINT `professeurs_matieres_ibfk_2` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`matiere_id`);

--
-- Contraintes pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD CONSTRAINT `rdv_ibfk_1` FOREIGN KEY (`eleve_id`) REFERENCES `eleves` (`eleve_id`),
  ADD CONSTRAINT `rdv_ibfk_2` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`matiere_id`),
  ADD CONSTRAINT `rdv_ibfk_3` FOREIGN KEY (`prof_id`) REFERENCES `professeurs` (`prof_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
