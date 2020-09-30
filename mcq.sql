-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 11:46 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcq`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Entertainment: Board Games', '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(2, 'Politics', '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(3, 'Entertainment: Video Games', '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(4, 'Entertainment: Japanese Anime & Manga', '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(5, 'Geography', '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(6, 'History', '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(7, 'Entertainment: Musicals & Theatres', '2020-09-30 15:05:24', '2020-09-30 15:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2020_09_28_132045_create_questions_table', 1),
(23, '2020_09_28_133032_create_categories_table', 1),
(24, '2020_09_30_155731_create_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'In a standard game of Monopoly, what colour are the two cheapest properties?', 'Green', 'Yellow', 'Blue', 'Brown', 3, 1, '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(2, 'Before 2011, Capitalist Radio was known by a different name. What was that name?', 'True Conservative Radio', 'True Republican Radio', 'Texan Capitalist Radio', 'United Capitalists', 0, 2, '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(3, 'Which of the following Pacific Islander countries is ruled by a constitutional monarchy?', 'Palau', 'Fiji', 'Tonga', 'Kiribati', 2, 2, '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(4, 'Why was the character Trevor Philips discharged from the Air Force?', 'Injuries', 'Mental Health Issues', 'Disease', 'Danger to Others', 1, 3, '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(5, 'Which of these stages is not playable in Super Smash Bros. for Wii U?', 'Bridge of Eldin', '75m', 'Miiverse', 'Fountain of Dreams', 3, 3, '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(6, 'In PUBATTLE GROUNDS which ammo type does the M24 use?', '5.56mm', '7.62mm', '9mm', '.300 Magnum', 1, 3, '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(7, 'Which of the following anime of the mecha genre began airing in 1982?', 'Mobile Suit Gundam', 'Armored Trooper VOTOMS', 'The Super Dimension Fortress Macross', 'Neon Genesis Evangelion', 2, 4, '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(8, 'Which of the following Japanese islands is the biggest?', 'Honshu', 'Hokkaido', 'Shikoku', 'Kyushu', 0, 5, '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(9, 'In 1939, Britain and France declared war on Germany after it invaded which country?', 'Czechoslovakia', 'Poland', 'Austria', 'Hungary', 1, 6, '2020-09-30 15:05:24', '2020-09-30 15:05:24'),
(10, 'After England, more Shakespeare plays are set in this present day country than in any other.', 'United States', 'Greece', 'Italy', 'France', 2, 7, '2020-09-30 15:05:24', '2020-09-30 15:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `right_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrong_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notAttempt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` decimal(8,2) DEFAULT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `right_answer`, `wrong_answer`, `notAttempt`, `attempt_question`, `score`, `candidate_id`, `created_at`, `updated_at`) VALUES
(1, '1', '0', '0', '1', '100.00', 2, '2020-09-30 15:55:31', '2020-09-30 15:55:31'),
(2, '1', '1', '0', '2', '50.00', 3, '2020-09-30 16:02:55', '2020-09-30 16:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 1, NULL, '$2y$10$gTCtkj7yqoaVgXcGZhUYueDQUfEeemIsD2q/pkLWpLvH4YUgtG7AS', NULL, '2020-09-30 15:42:22', '2020-09-30 15:42:22'),
(2, 'Manish', 'manish@gmail.com', 0, NULL, '$2y$10$74rxLgTk7T2MB0A/RoCLvumNrBDKffPKxDeYL/FF.d0mZA4sFLXWa', NULL, '2020-09-30 15:45:00', '2020-09-30 15:45:00'),
(3, 'Ajay', 'ajay@gmail.com', 0, NULL, '$2y$10$1mX4AJmQhQU9XN.jwsDavO11D./7GAlYHF6CKQioya6e7Fh8p/Dcu', NULL, '2020-09-30 16:02:20', '2020-09-30 16:02:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
