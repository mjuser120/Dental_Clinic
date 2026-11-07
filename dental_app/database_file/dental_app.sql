-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 07:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `doc_id` int(100) NOT NULL DEFAULT 0,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_email` varchar(255) DEFAULT NULL,
  `clinic_branch` varchar(255) DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int(255) NOT NULL DEFAULT 0,
  `contact_no` varchar(255) DEFAULT NULL,
  `patient_address` varchar(255) DEFAULT NULL,
  `date_appointment` date DEFAULT NULL,
  `time_appointment` time DEFAULT NULL,
  `date_inserted` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `doc_id`, `patient_name`, `patient_email`, `clinic_branch`, `date_birth`, `gender`, `age`, `contact_no`, `patient_address`, `date_appointment`, `time_appointment`, `date_inserted`) VALUES
(1, 1, 'marben', 'email@gmail.com', 'asdasdasd', '2024-01-10', 'Male', 23, '0971271727127', '54A Gulgowski Villages', '2024-01-15', '09:00:00', '2024-01-10'),
(2, 1, 'dave', 'dave@gmail.com', 'duma city', '2024-01-08', 'Male', 25, '09712372173', '54A Gulgowski Villages', '2024-01-16', '12:00:00', '2024-01-10'),
(3, 1, 'Pherjohn', 'marbz.gwapo@gmail.com', 'dumaguete', '2019-02-13', 'Male', 24, '098213123', '54A Gulgowski Villages', '2024-01-17', '13:00:00', '2024-01-11'),
(4, 1, 'Pherjohn', 'marbenbenetez@gmail.com', 'Quezon City', '2024-01-08', 'Male', 25, '09759310456', '54A Gulgowski Villages', '2024-01-13', '10:00:00', '2024-01-11'),
(5, 1, 'Jhin jhin', 'marbenbenetez@gmail.com', 'Manila City', '2023-11-05', 'FeMale', 27, '09759310456', '54A Gulgowski Villages', '2024-01-24', '13:00:00', '2024-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions_hist`
--

CREATE TABLE `prescriptions_hist` (
  `id` int(11) NOT NULL,
  `patient` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `date_inserted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptions_hist`
--

INSERT INTO `prescriptions_hist` (`id`, `patient`, `doctor`, `date_inserted`) VALUES
(1, 'dave', 'Jennifer Roberts', '2024-01-11 15:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `app_id` int(100) NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `price` int(255) NOT NULL DEFAULT 0,
  `quantity` int(255) NOT NULL DEFAULT 0,
  `total` int(255) NOT NULL DEFAULT 0,
  `cash` int(255) NOT NULL DEFAULT 0,
  `t_change` int(255) NOT NULL DEFAULT 0,
  `date_inserted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `app_id`, `description`, `price`, `quantity`, `total`, `cash`, `t_change`, `date_inserted`) VALUES
(1, 1, 'Check-up', 600, 1, 600, 1000, 400, '2024-01-11 10:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(249) NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `verified` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `resettable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `roles_mask` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `registered` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED DEFAULT NULL,
  `force_logout` mediumint(7) UNSIGNED NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `doc_id` varchar(255) DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  `role` int(4) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL DEFAULT 'https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI='
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `status`, `verified`, `resettable`, `roles_mask`, `registered`, `last_login`, `force_logout`, `address`, `contact_no`, `gender`, `doc_id`, `b_date`, `role`, `url`) VALUES
(1, 'admin@gmail.com', '$2y$10$8.bdbn09x3wr9Gqk00FFQ.52PaY1KynvCBtbLKvBm/yIVeTdmWa5C', 'Jennifer Roberts', 0, 1, 1, 0, 1704760907, 1705018587, 0, '54A Gulgowski Villages', ' 09759310456', 'Male', '2322333', '2024-01-11', 0, 'files/3.png');

-- --------------------------------------------------------

--
-- Table structure for table `users_confirmations`
--

CREATE TABLE `users_confirmations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(249) NOT NULL,
  `selector` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_confirmations`
--

INSERT INTO `users_confirmations` (`id`, `user_id`, `email`, `selector`, `token`, `expires`) VALUES
(1, 1, 'admin@gmail.com', 'DGkSS5iUENlKDSGa', '$2y$10$VHuhbH0eGc.3LKSyJe.i2OJHppG1HCsAVVcP4AEGWdaxkLp0vkjKW', 1704847307);

-- --------------------------------------------------------

--
-- Table structure for table `users_remembered`
--

CREATE TABLE `users_remembered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `selector` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_resets`
--

CREATE TABLE `users_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `selector` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_throttling`
--

CREATE TABLE `users_throttling` (
  `bucket` varchar(44) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `tokens` float UNSIGNED NOT NULL,
  `replenished_at` int(10) UNSIGNED NOT NULL,
  `expires_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_throttling`
--

INSERT INTO `users_throttling` (`bucket`, `tokens`, `replenished_at`, `expires_at`) VALUES
('ejWtPDKvxt-q7LZ3mFjzUoIWKJYzu47igC8Jd9mffFk', 74, 1705018586, 1705558586),
('CUeQSH1MUnRpuE3Wqv_fI3nADvMpK_cg6VpYK37vgIw', 4, 1704760907, 1705192907);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions_hist`
--
ALTER TABLE `prescriptions_hist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_confirmations`
--
ALTER TABLE `users_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `email_expires` (`email`,`expires`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users_remembered`
--
ALTER TABLE `users_remembered`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `users_resets`
--
ALTER TABLE `users_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user_expires` (`user`,`expires`);

--
-- Indexes for table `users_throttling`
--
ALTER TABLE `users_throttling`
  ADD PRIMARY KEY (`bucket`),
  ADD KEY `expires_at` (`expires_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prescriptions_hist`
--
ALTER TABLE `prescriptions_hist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_confirmations`
--
ALTER TABLE `users_confirmations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_remembered`
--
ALTER TABLE `users_remembered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_resets`
--
ALTER TABLE `users_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
