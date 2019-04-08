-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 08 avr. 2019 à 16:35
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `monblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `date`, `user_id`) VALUES
(4, 'Emmanuel Macron propose une réforme du statut géologique insulaire de la Corse', 'Bastia – Au cœur d’une visite à haut risque en Corse, le président français a proposé une réforme complète du statut géologique de la Corse et de voir si le terme « insulaire » était toujours adapté au défi du monde d’aujourd’hui. Reportage.\r\n\r\n« Nous sommes en 2019, il faut arrêter de vous appeler « île », il serait temps de grandir » a concédé Emmanuel Macron devant des élus. « Je veux présenter une loi au parlement qui donnera à la Corse un nouveau statut géologique, plus performant, plus en adéquation avec notre volonté sédimentaire progressiste » explique le président. « Je veux une nouvelle géodynamique de l’offre lithostratigraphique, initiativer les directives géologiques, nous allons mettre en place un benchmark métamorphique désignant la multiplicité référentielle stratigraphique pour un meilleur relationnel tectonique qui permettra de budgétiser les décisionnels géophysiques ». Les nationalistes corses ont de leur côté rejeté ce plan, le qualifiant de « propagande lithologique continentale ».  Et d’affirmer dans un communiqué « Nous ne laisserons pas M. Macron nous dicter notre vérité ! Il faut au contraire de la pluralité institutionnelle métamorphique, il y a une nécessité de revendiquer stratigraphiquement l’héritage applicatif géologique hercynien corse ».', '2019-04-05 16:55:44', 12),
(5, 'Le coût de la vie sur Mars désormais moins élevé qu’à Paris', 'Selon une étude de l’INSEE, le coût de la vie sur Mars est désormais moins élevé qu’à Paris.\r\n\r\n« Nous ne sommes pas étonnés, nous sommes surtout fiers. Cela prouve que la qualité de vie Parisienne est désormais connue à travers l’univers tout entier ! » se réjouit la maire de Paris, Anne Hidalgo. « Espérons que ça inspirera nos amis martiens à piétonniser leurs voies sur berges » a continué l’élue.\r\n\r\nL’agence immobilière Century 21 fait même savoir qu’aujourd’hui il est plus cher de se loger dans Paris intra murros que sur la planète rouge : « A la rentrée, je conseille aux étudiants de s’installer plutôt sur Mars qu’à Paris, pour leurs études. Ça fait un petit peu de transport, mais bon, une navette spatiale le matin c’est moins pénible que la ligne 13 » souligne le PDG de Century 21.\r\n\r\nD’éminents scientifiques ont également réagi, comme les frères Bogdanov : « Cela devrait ralentir de manière significative les visites d’OVNI au-dessus de la capitale » commence Grichka, ou Igor. « Nos amis martiens risquent de moins venir nous voir, c’est dommage, elles vont nous manquer nos petites bouffes du samedi avec les hommes verts » conclue Igor, ou Grichka, l’émotion dans les yeux.', '2019-04-05 16:56:45', 12),
(6, 'Pour inciter les chômeurs à retrouver du travail, les conseillers Pôle Emploi seront équipés de LBD', 'C’est une nouvelle qui risque de faire couler beaucoup d’encre : Muriel Pénicaud a annoncé ce matin sur Europe 1 que les conseillers Pôle Emploi seront bientôt équipés de lanceurs de balles de défense afin d’inciter les chômeurs à retrouver rapidement du travail. Reportage.\r\n\r\nUne mesure qui devrait porter ses fruits rapidement selon la ministre du Travail. “Les premiers tests montrent que les chômeurs réagissent extrêmement bien aux tirs de LBD. Contrairement aux gilets jaunes dont le cuir est devenu plus résistant au cours des manifestations, les chômeurs sont très sensibles aux flashballs, la faute à une existence en intérieur en slip devant la TV. ”\r\n\r\nCôté Pôle Emploi, les employés se réjouissent de ce nouveau dispositif : “Les chômeurs ont perdu de leur arrogance et ce flegme anglais qui les caractérisait auparavant” commente Arielle, conseillère à Paris. “Ils chipotent moins quand on leur propose des postes de dame pipi ou de fiscaliste. Et puis on ne va pas se mentir, c’est toujours amusant de lire la panique dans le regard du chômeur quand on effleure notre arme du bout des doigts” s’amuse-t-elle.\r\n\r\nConseiller à Angers, Jean-Pierre partage son enthousiasme.“Je me sens à nouveau respecté au travail mais aussi dans ma vie de famille. Je peux vous dire que ma femme et les gosses mouftent moins depuis que je ramène mon LBD à la maison. J’ai même fait graver mes initiales au cul de mon arme de fonction” plaisante-t-il en nous montrant fièrement ses initiales “JP”sur son chargeur.\r\n\r\nFort de ce premier succès, la ministre du Travail ne compte pas en rester là. “Nous allons bientôt demander aux chômeurs de tatouer leurs identifiants Pôle Emploi sur la clavicule. Cela devrait renforcer leur sentiment de honte et de marginalité” témoigne-t-elle avant de décocher quelques balles à un employé en pause-café depuis 10 minutes.', '2019-04-08 09:02:44', 12);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `author`, `content`, `date`, `user_id`) VALUES
(1, 4, 'paul', 'Bouh macron', '2019-04-05 16:57:24', 12),
(2, 4, 'marc', 'blablabla les impots tout ça', '2019-04-05 16:59:16', 12),
(13, 4, 'manu', 'ceci est notre projet', '2019-04-07 21:31:24', 12),
(14, 4, 'test', 'test', '2019-04-08 08:54:42', 12);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190403095711', '2019-04-03 09:59:07'),
('20190403163759', '2019-04-03 16:38:41'),
('20190404094313', '2019-04-04 09:43:49'),
('20190404140048', '2019-04-04 14:01:10');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `rank`) VALUES
(11, 'amandine', '$2y$13$GRTjlelEPct0z/pFSNy1nuXGt7VVnBToWZaPQ7aDjT2RpYmr6h2B.', 'ROLE_ADMIN'),
(12, 'cyriak', '$2y$13$bOmuH4F03M.otNtREFCNze.4IhEmAdEX3N94bC9eULzyZt0oV3wXi', 'ROLE_ADMIN'),
(13, 'doudou', '$2y$13$SQ/wvSgy1kivx8lL2gk9r.KzOk7xXxtbVtfnslO0g0kM72iTZ8ioq', 'ROLE_USER');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66A76ED395` (`user_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5F9E962A7294869C` (`article_id`),
  ADD KEY `IDX_5F9E962AA76ED395` (`user_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_5F9E962A7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_5F9E962AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
