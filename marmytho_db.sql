-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 23 juil. 2024 à 16:58
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marmytho_db`
--
CREATE DATABASE IF NOT EXISTS `marmytho_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `marmytho_db`;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240722120742', '2024-07-22 14:08:34', 18),
('DoctrineMigrations\\Version20240722124613', '2024-07-22 14:46:45', 4),
('DoctrineMigrations\\Version20240723092136', '2024-07-23 11:22:45', 40),
('DoctrineMigrations\\Version20240723125527', '2024-07-23 14:56:13', 39),
('DoctrineMigrations\\Version20240723145618', '2024-07-23 16:56:52', 56);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`, `price`, `created_at`, `slug`) VALUES
(101, 'ingredient 0', 54.4, '2024-07-22 15:09:21', 'ingredient-0'),
(102, 'ingredient 1', 33.4, '2024-07-22 15:09:21', 'ingredient-1'),
(103, 'ingredient 2', 90.7, '2024-07-22 15:09:21', 'ingredient-2'),
(104, 'ingredient 3', 52.6, '2024-07-22 15:09:21', 'ingredient-3'),
(105, 'ingredient 4', 54.3, '2024-07-22 15:09:21', 'ingredient-4'),
(106, 'ingredient 5', 14.1, '2024-07-22 15:09:21', 'ingredient-5'),
(107, 'ingredient 6', 71, '2024-07-22 15:09:21', 'ingredient-6'),
(108, 'ingredient 7', 1.8, '2024-07-22 15:09:21', 'ingredient-7'),
(109, 'ingredient 8', 77.7, '2024-07-22 15:09:21', 'ingredient-8'),
(110, 'ingredient 9', 54.4, '2024-07-22 15:09:21', 'ingredient-9'),
(111, 'ingredient 10', 27, '2024-07-22 15:09:21', 'ingredient-10'),
(112, 'ingredient 11', 16.9, '2024-07-22 15:09:21', 'ingredient-11'),
(113, 'ingredient 12', 58.4, '2024-07-22 15:09:21', 'ingredient-12'),
(115, 'ingredient 14', 22.8, '2024-07-22 15:09:21', 'ingredient-14'),
(116, 'ingredient 15', 22.7, '2024-07-22 15:09:21', 'ingredient-15'),
(117, 'ingredient 16', 3.6, '2024-07-22 15:09:21', 'ingredient-16'),
(118, 'ingredient 17', 35.1, '2024-07-22 15:09:21', 'ingredient-17'),
(119, 'ingredient 18', 39.3, '2024-07-22 15:09:21', 'ingredient-18'),
(120, 'ingredient 19', 61.5, '2024-07-22 15:09:21', 'ingredient-19'),
(121, 'ingredient 20', 32.5, '2024-07-22 15:09:21', 'ingredient-20'),
(122, 'ingredient 21', 89.2, '2024-07-22 15:09:21', 'ingredient-21'),
(123, 'ingredient 22', 37.7, '2024-07-22 15:09:21', 'ingredient-22'),
(124, 'ingredient 23', 71, '2024-07-22 15:09:21', 'ingredient-23'),
(125, 'ingredient 24', 60.6, '2024-07-22 15:09:21', 'ingredient-24'),
(126, 'ingredient 25', 55.6, '2024-07-22 15:09:21', 'ingredient-25'),
(127, 'ingredient 26', 18.7, '2024-07-22 15:09:21', 'ingredient-26'),
(128, 'ingredient 27', 7.4, '2024-07-22 15:09:21', 'ingredient-27'),
(129, 'ingredient 28', 5.8, '2024-07-22 15:09:21', 'ingredient-28'),
(130, 'ingredient 29', 83.2, '2024-07-22 15:09:21', 'ingredient-29'),
(131, 'ingredient 30', 13.3, '2024-07-22 15:09:21', 'ingredient-30'),
(132, 'ingredient 31', 47.9, '2024-07-22 15:09:21', 'ingredient-31'),
(133, 'ingredient 32', 17.4, '2024-07-22 15:09:21', 'ingredient-32'),
(134, 'ingredient 33', 19.6, '2024-07-22 15:09:21', 'ingredient-33'),
(135, 'ingredient 34', 38.1, '2024-07-22 15:09:21', 'ingredient-34'),
(136, 'ingredient 35', 88, '2024-07-22 15:09:21', 'ingredient-35'),
(137, 'ingredient 36', 7.1, '2024-07-22 15:09:21', 'ingredient-36'),
(138, 'ingredient 37', 80.7, '2024-07-22 15:09:21', 'ingredient-37'),
(139, 'ingredient 38', 95.4, '2024-07-22 15:09:21', 'ingredient-38'),
(140, 'ingredient 39', 22.9, '2024-07-22 15:09:21', 'ingredient-39'),
(141, 'ingredient 40', 65, '2024-07-22 15:09:21', 'ingredient-40'),
(142, 'ingredient 41', 38.2, '2024-07-22 15:09:21', 'ingredient-41'),
(143, 'ingredient 42', 12, '2024-07-22 15:09:21', 'ingredient-42'),
(144, 'ingredient 43', 11.3, '2024-07-22 15:09:21', 'ingredient-43'),
(145, 'ingredient 44', 70.3, '2024-07-22 15:09:21', 'ingredient-44'),
(146, 'ingredient 45', 67, '2024-07-22 15:09:21', 'ingredient-45'),
(147, 'ingredient 46', 24.9, '2024-07-22 15:09:21', 'ingredient-46'),
(148, 'ingredient 47', 14.1, '2024-07-22 15:09:21', 'ingredient-47'),
(149, 'ingredient 48', 33, '2024-07-22 15:09:21', 'ingredient-48'),
(150, 'ingredient 49', 95.5, '2024-07-22 15:09:21', 'ingredient-49'),
(151, 'ingredient 50', 17.8, '2024-07-22 15:09:21', 'ingredient-50'),
(152, 'ingredient 51', 50.5, '2024-07-22 15:09:21', 'ingredient-51'),
(153, 'ingredient 52', 16.1, '2024-07-22 15:09:21', 'ingredient-52'),
(154, 'ingredient 53', 49.6, '2024-07-22 15:09:21', 'ingredient-53'),
(155, 'ingredient 54', 11.5, '2024-07-22 15:09:21', 'ingredient-54'),
(156, 'ingredient 55', 9.2, '2024-07-22 15:09:21', 'ingredient-55'),
(157, 'ingredient 56', 57.2, '2024-07-22 15:09:21', 'ingredient-56'),
(158, 'ingredient 57', 74.3, '2024-07-22 15:09:21', 'ingredient-57'),
(159, 'ingredient 58', 66.9, '2024-07-22 15:09:21', 'ingredient-58'),
(160, 'ingredient 59', 80.4, '2024-07-22 15:09:21', 'ingredient-59'),
(161, 'ingredient 60', 80.5, '2024-07-22 15:09:21', 'ingredient-60'),
(162, 'ingredient 61', 1.1, '2024-07-22 15:09:21', 'ingredient-61'),
(163, 'ingredient 62', 14.5, '2024-07-22 15:09:21', 'ingredient-62'),
(164, 'ingredient 63', 35.8, '2024-07-22 15:09:21', 'ingredient-63'),
(165, 'ingredient 64', 15.2, '2024-07-22 15:09:21', 'ingredient-64'),
(166, 'ingredient 65', 18.3, '2024-07-22 15:09:21', 'ingredient-65'),
(167, 'ingredient 66', 2.2, '2024-07-22 15:09:21', 'ingredient-66'),
(168, 'ingredient 67', 98.3, '2024-07-22 15:09:21', 'ingredient-67'),
(169, 'ingredient 68', 15.8, '2024-07-22 15:09:21', 'ingredient-68'),
(170, 'ingredient 69', 16.9, '2024-07-22 15:09:21', 'ingredient-69'),
(171, 'ingredient 70', 77.3, '2024-07-22 15:09:21', 'ingredient-70'),
(172, 'ingredient 71', 18.1, '2024-07-22 15:09:21', 'ingredient-71'),
(173, 'ingredient 72', 28.4, '2024-07-22 15:09:21', 'ingredient-72'),
(174, 'ingredient 73', 66.5, '2024-07-22 15:09:21', 'ingredient-73'),
(175, 'ingredient 74', 43.5, '2024-07-22 15:09:21', 'ingredient-74'),
(176, 'ingredient 75', 23.8, '2024-07-22 15:09:21', 'ingredient-75'),
(177, 'ingredient 76', 70, '2024-07-22 15:09:21', 'ingredient-76'),
(178, 'ingredient 77', 97.8, '2024-07-22 15:09:21', 'ingredient-77'),
(179, 'ingredient 78', 15.5, '2024-07-22 15:09:21', 'ingredient-78'),
(180, 'ingredient 79', 40.3, '2024-07-22 15:09:21', 'ingredient-79'),
(181, 'ingredient 80', 3.7, '2024-07-22 15:09:21', 'ingredient-80'),
(182, 'ingredient 81', 79.4, '2024-07-22 15:09:21', 'ingredient-81'),
(183, 'ingredient 82', 91.3, '2024-07-22 15:09:21', 'ingredient-82'),
(184, 'ingredient 83', 49.2, '2024-07-22 15:09:21', 'ingredient-83'),
(185, 'ingredient 84', 33, '2024-07-22 15:09:21', 'ingredient-84'),
(186, 'ingredient 85', 75.6, '2024-07-22 15:09:21', 'ingredient-85'),
(187, 'ingredient 86', 40.6, '2024-07-22 15:09:21', 'ingredient-86'),
(188, 'ingredient 87', 47.6, '2024-07-22 15:09:21', 'ingredient-87'),
(189, 'ingredient 88', 30.3, '2024-07-22 15:09:21', 'ingredient-88'),
(190, 'ingredient 89', 53.8, '2024-07-22 15:09:21', 'ingredient-89'),
(191, 'ingredient 90', 96.8, '2024-07-22 15:09:21', 'ingredient-90'),
(192, 'ingredient 91', 38.2, '2024-07-22 15:09:21', 'ingredient-91'),
(193, 'ingredient 92', 16.8, '2024-07-22 15:09:21', 'ingredient-92'),
(194, 'ingredient 93', 73.4, '2024-07-22 15:09:21', 'ingredient-93'),
(195, 'ingredient 94', 54.6, '2024-07-22 15:09:21', 'ingredient-94'),
(196, 'ingredient 95', 56.6, '2024-07-22 15:09:21', 'ingredient-95'),
(197, 'ingredient 96', 37.2, '2024-07-22 15:09:21', 'ingredient-96'),
(198, 'ingredient 97', 22.1, '2024-07-22 15:09:21', 'ingredient-97'),
(199, 'ingredient 98', 82.1, '2024-07-22 15:09:21', 'ingredient-98'),
(200, 'ingredient 99', 54.5, '2024-07-22 15:09:21', 'ingredient-99');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `number_of_plates` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `is_favorite` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `difficulty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `slug`, `duration`, `number_of_plates`, `description`, `price`, `is_favorite`, `created_at`, `updated_at`, `difficulty`) VALUES
(1, 'test', '', 20, 2, 'test test test test', 10, NULL, '2024-07-23 11:47:30', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `recipe_ingredient`
--

CREATE TABLE `recipe_ingredient` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD PRIMARY KEY (`recipe_id`,`ingredient_id`),
  ADD KEY `IDX_22D1FE1359D8A214` (`recipe_id`),
  ADD KEY `IDX_22D1FE13933FE08C` (`ingredient_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD CONSTRAINT `FK_22D1FE1359D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_22D1FE13933FE08C` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
