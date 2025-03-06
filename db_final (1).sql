-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2025 at 11:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `subtasks`
--

CREATE TABLE `subtasks` (
  `id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `subtask` varchar(255) NOT NULL,
  `status` enum('open','close') DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subtasks`
--

INSERT INTO `subtasks` (`id`, `task_id`, `subtask`, `status`) VALUES
(18, 3, 'iqro', 'open'),
(19, 3, ' quran', 'open'),
(20, 1, 'indonesia', 'open'),
(21, 1, 'bahasa inggris', 'open'),
(22, 1, 'ipa', 'open'),
(23, 5, 'iqro', 'open'),
(24, 5, 'alquran', 'open'),
(25, 6, 'ngepel', 'open'),
(26, 6, 'nyapu', 'open'),
(27, 7, ' mm', 'open'),
(28, 7, 'nnj', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `due_date` date DEFAULT NULL,
  `priority` enum('Biasa','Cukup Penting','Sangat Penting') NOT NULL,
  `taskstatus` enum('open','close') DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `due_date`, `priority`, `taskstatus`) VALUES
(1, 'belajar', '2025-02-22', 'Biasa', 'open'),
(3, 'Mengaji', '2025-02-23', 'Cukup Penting', 'open'),
(5, 'ngaji', '2025-02-25', 'Sangat Penting', 'open'),
(6, 'rumah', '2025-02-26', 'Cukup Penting', 'open'),
(7, 'ngaji', '2025-02-27', 'Biasa', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(3, 'nairaa', '$2y$10$sLNHjrfxu9gJc/kbQ3KPduWNQxBMr12Y0yHVGufElQhpfh4EKFFJ6', 'naira@gmail.com'),
(14, 'likara', '$2y$10$QFRwTEvi1voHHqcohA7umOVe00vbNXJjZr7pz2uaFZqZcqf9Rd6YW', 'lika@gmail.com'),
(15, 'irma', '$2y$10$tCIvH6/uX4/ujYtyEVun2u7Y3X7V.EG5htD/FYBjxDPDq5jelXEuG', 'irmanuryanti75@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subtasks`
--
ALTER TABLE `subtasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subtasks`
--
ALTER TABLE `subtasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subtasks`
--
ALTER TABLE `subtasks`
  ADD CONSTRAINT `subtasks_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
