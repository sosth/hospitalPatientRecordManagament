-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 28 jan. 2024 à 04:56
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `yasminesafahospital`
--

-- --------------------------------------------------------

--
-- Structure de la table `channel`
--

CREATE TABLE `channel` (
  `channelno` varchar(255) NOT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `patientname` varchar(255) DEFAULT NULL,
  `roomno` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `channel`
--

INSERT INTO `channel` (`channelno`, `doctorname`, `patientname`, `roomno`, `date`) VALUES
('CH001', 'DS001', 'PS002', '8', '2024-01-06'),
('CH002', 'DS002', 'PS002', '10', '2024-01-05'),
('CH003', 'DS003', 'PS003', '14', '2024-01-19'),
('CH004', 'DS004', 'PS004', '7', '2024-01-17'),
('CH005', 'DS003', 'PS006', '9', '2024-01-12'),
('CH006', 'DS003', 'PS002', '11', '2024-01-19'),
('CH007', 'DS005', 'PS007', '18', '2024-01-19'),
('CH008', 'DS001', 'PS006', '12', '2024-01-16'),
('CH009', 'DS003', 'PS006', '21', '2024-01-06'),
('CH010', 'DS004', 'PS006', '9', '2024-01-06'),
('CH011', 'DS006', 'PS008', '17', '2024-01-11');

-- --------------------------------------------------------

--
-- Structure de la table `doctor`
--

CREATE TABLE `doctor` (
  `doctorno` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `channelfee` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `log_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `doctor`
--

INSERT INTO `doctor` (`doctorno`, `name`, `special`, `qualification`, `channelfee`, `phone`, `room`, `log_id`) VALUES
('DS001', 'yasmine ouazzine', 'surgeon', 'harvard graduated', '2500', '0600453470', '8', '1'),
('DS002', 'kaoutar ouazzine', 'Cardiology', 'stanford graduated', '5677', '0796567419', '10', '2'),
('DS003', 'ouazzine hiba', 'brain surgeon', 'pen graduated', '4355', '0777877707', '14', '3'),
('DS004', 'safa bechchaa', 'therapist', 'harvard degree', '3000', '0656765501', '7', '4'),
('DS005', 'terminal', 'lung doctor', 'pen graduated', '2345', '0987654321', '14', '10'),
('DS006', 'pr chergui meriyem', 'heart surgeon', 'harvard', '1234', '1234567890', '19', '8');

-- --------------------------------------------------------

--
-- Structure de la table `moreinformations`
--

CREATE TABLE `moreinformations` (
  `Patcond_no` varchar(255) NOT NULL,
  `Channel_No` varchar(255) DEFAULT NULL,
  `Health_Condition_Patient_State` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `doctorname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `moreinformations`
--

INSERT INTO `moreinformations` (`Patcond_no`, `Channel_No`, `Health_Condition_Patient_State`, `Description`, `doctorname`) VALUES
('PA001', 'CH001', 'Allergies', 'peanuts allergie', 'yasmine ouazzine'),
('PA002', 'CH007', 'Cancer', 'lung cancer', 'pr meriyem chergui'),
('PA003', 'CH011', 'Heart Disease', 'severe', 'pr chergui meriyem'),
('PA004', 'CH007', 'Cancer', 'breast cancer', 'terminal');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `patientno` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `patient_condition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`patientno`, `name`, `phone`, `address`, `patient_condition`) VALUES
('PS001', 'kaoutar attanan', '0665443322', 'haj fateh lot elkhousama habiba', NULL),
('PS003', 'hanane assendale', '0787665610', 'agadir', NULL),
('PS005', 'taha mohaddere', '0665342945', 'ain chok', NULL),
('PS006', 'saida saad', '0765456781', 'just to test the channel from the start', NULL),
('PS007', 'papa yoyo', '0987654321', 'khouzama', NULL),
('PS008', 'saida o', '1234567890', 'sebata', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `utype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `utype`) VALUES
(1, 'ouazzine', 'yasmine', '1234567890', 'Doctor'),
(2, 'ouazzine', 'kaoutar', '23456790', 'Doctor'),
(3, 'hiba', 'ouazzine', '123456789', 'Doctor'),
(4, 'safa', 'bechchaa', '1234567890', 'Doctor'),
(5, 'karimi', 'mohamedamine', '22042002', 'Receptionist'),
(6, 'darkaoui', 'khadija', '1234567890', 'Receptionist'),
(7, 'ibtissam', 'echchaibi', '123456654321', 'Receptionist'),
(8, 'pr meriyem', 'chergui', '123456789', 'Doctor'),
(9, 'kawtar ', 'saeda', '234567', 'Doctor'),
(10, 'ouazzine', 'terminal', '123456789', 'Doctor'),
(11, 'ouazzine xx', 'tt', '2345678', 'Doctor');

-- --------------------------------------------------------

--
-- Structure de la table `visit`
--

CREATE TABLE `visit` (
  `visit_id` varchar(255) NOT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `visit_price` varchar(255) DEFAULT NULL,
  `visit_times` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `visit`
--

INSERT INTO `visit` (`visit_id`, `patient_name`, `visit_price`, `visit_times`, `description`) VALUES
('VS001', 'kaoutar attanan', '2500', '1', 'first time'),
('VS003', 'hanane assendale', '4355', '6', 'just a visit to check the wound'),
('VS004', 'siham aouisse', '3001', '2', 'second time');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channelno`);

--
-- Index pour la table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorno`);

--
-- Index pour la table `moreinformations`
--
ALTER TABLE `moreinformations`
  ADD PRIMARY KEY (`Patcond_no`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientno`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
