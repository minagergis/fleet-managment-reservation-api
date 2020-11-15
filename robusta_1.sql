-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2020 at 10:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robusta_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `seat_number`, `trip_id`, `created_at`, `updated_at`) VALUES
(1, '12', 1, '2020-11-14 13:16:24', '2020-11-14 13:16:24'),
(2, '12', 3, '2020-11-14 13:16:24', '2020-11-14 13:16:24'),
(3, '12', 2, '2020-11-14 13:16:24', '2020-11-14 13:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alexandria', NULL, NULL),
(2, 'Aswan', NULL, NULL),
(3, 'Asyut', NULL, NULL),
(4, 'Beheira', NULL, NULL),
(5, 'Beni Suef', NULL, NULL),
(6, 'Cairo', NULL, NULL),
(7, 'Dakahlia', NULL, NULL),
(8, 'Damitta', NULL, NULL),
(9, 'Faiyoum', NULL, NULL),
(10, 'Gharbia', NULL, NULL),
(11, 'Giza', NULL, NULL),
(12, 'Ismalia', NULL, NULL),
(13, 'Kafr elsheikh', NULL, NULL),
(14, 'Luxor', NULL, NULL),
(15, 'Matruh', NULL, NULL),
(16, 'Minya', NULL, NULL),
(17, 'Munofia', NULL, NULL),
(18, 'New valley', NULL, NULL),
(19, 'North Sinai', NULL, NULL),
(20, 'Port said', NULL, NULL),
(21, 'Qualibia', NULL, NULL),
(22, 'Red sea', NULL, NULL),
(23, 'Sharkia', NULL, NULL),
(24, 'Suhag', NULL, NULL),
(25, 'South sinai', NULL, NULL),
(26, 'Suiz', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_14_123403_create_destinations_table', 2),
(5, '2020_11_14_123408_create_routes_table', 2),
(6, '2020_11_14_123412_create_trips_table', 2),
(7, '2020_11_14_123420_create_buses_table', 2),
(8, '2020_11_14_123429_create_seats_table', 2),
(9, '2020_11_14_124505_create_trip_route_table', 2);

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
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` bigint(20) UNSIGNED NOT NULL,
  `to` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `cost`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, '30', 6, 10, '2020-11-14 12:52:55', '2020-11-14 12:52:55'),
(2, '30', 10, 4, '2020-11-14 12:52:55', '2020-11-14 12:52:55'),
(3, '30', 4, 1, '2020-11-14 12:56:04', '2020-11-14 12:56:04'),
(4, '30', 6, 26, '2020-11-14 12:57:08', '2020-11-14 12:57:08'),
(5, '30', 26, 25, '2020-11-14 12:57:08', '2020-11-14 12:57:08'),
(6, '30', 6, 9, '2020-11-14 12:59:05', '2020-11-14 12:59:05'),
(7, '30', 9, 16, '2020-11-14 12:59:05', '2020-11-14 12:59:05'),
(8, '30', 16, 3, '2020-11-14 13:00:02', '2020-11-14 13:00:02'),
(9, '30', 3, 14, '2020-11-14 13:00:02', '2020-11-14 13:00:02'),
(10, '30', 14, 2, '2020-11-14 13:00:02', '2020-11-14 13:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `passenger_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `passenger_name`, `bus_id`, `route_id`, `created_at`, `updated_at`) VALUES
(1, 'Mina', 1, 1, NULL, NULL),
(2, 'Mina', 1, 1, NULL, NULL),
(3, 'Mina', 1, 1, NULL, NULL),
(4, 'Mina', 1, 1, NULL, NULL),
(5, 'Mina', 1, 1, NULL, NULL),
(6, 'Mina', 1, 1, NULL, NULL),
(7, 'Mina', 1, 2, NULL, NULL),
(8, 'Mina', 1, 2, NULL, NULL),
(9, 'Mina', 1, 2, NULL, NULL),
(10, 'Mina', 1, 2, NULL, NULL),
(11, 'Mina', 1, 2, NULL, NULL),
(12, 'Mina', 1, 2, NULL, NULL),
(13, 'Mina', 1, 3, NULL, NULL),
(14, 'Mina', 1, 3, NULL, NULL),
(15, 'Mina', 1, 3, NULL, NULL),
(16, 'Mina', 1, 3, NULL, NULL),
(17, 'Mina', 1, 3, NULL, NULL),
(18, 'Mina', 1, 3, NULL, NULL),
(19, 'Mina', 1, 1, NULL, NULL),
(20, 'Mina', 1, 1, NULL, NULL),
(21, 'Mina', 1, 1, NULL, NULL),
(22, 'Mina', 1, 1, NULL, NULL),
(23, 'Mina', 1, 1, NULL, NULL),
(24, 'Mina', 1, 1, NULL, NULL),
(25, 'Mina', 1, 2, NULL, NULL),
(26, 'Mina', 1, 2, NULL, NULL),
(27, 'Mina', 1, 2, NULL, NULL),
(28, 'Mina', 1, 2, NULL, NULL),
(29, 'Mina', 1, 2, NULL, NULL),
(30, 'Mina', 1, 2, NULL, NULL),
(31, 'Mina', 1, 3, NULL, NULL),
(32, 'Mina', 1, 3, NULL, NULL),
(33, 'Mina', 1, 3, NULL, NULL),
(34, 'Mina', 1, 3, NULL, NULL),
(35, 'Mina', 1, 3, NULL, NULL),
(36, 'Mina', 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cairo - Alexandria', '2020-11-14 13:05:19', '2020-11-14 13:05:19'),
(2, 'Cairo - Dahab', '2020-11-14 13:05:19', '2020-11-14 13:05:19'),
(3, 'Cairo - Aswan', '2020-11-14 13:05:19', '2020-11-14 13:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `trip_route`
--

CREATE TABLE `trip_route` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_route`
--

INSERT INTO `trip_route` (`id`, `trip_id`, `route_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-11-14 13:07:12', '2020-11-14 13:07:12'),
(2, 1, 2, '2020-11-14 13:07:12', '2020-11-14 13:07:12'),
(3, 1, 3, '2020-11-14 13:07:12', '2020-11-14 13:07:12'),
(4, 2, 4, '2020-11-14 13:07:12', '2020-11-14 13:07:12'),
(5, 2, 5, '2020-11-14 13:07:12', '2020-11-14 13:07:12'),
(6, 3, 6, '2020-11-14 13:07:12', '2020-11-14 13:07:12'),
(7, 3, 7, '2020-11-14 13:07:12', '2020-11-14 13:07:12'),
(8, 3, 8, '2020-11-14 13:07:12', '2020-11-14 13:07:12'),
(9, 3, 9, '2020-11-14 13:07:12', '2020-11-14 13:07:12'),
(10, 3, 10, '2020-11-14 13:07:12', '2020-11-14 13:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alberta Stiedemann', 'tschneider@example.net', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bxwQSNYX3B', '2020-11-14 10:47:03', '2020-11-14 10:47:03'),
(2, 'Kavon Pollich', 'upton.geoffrey@example.org', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xia2M2lfph', '2020-11-14 10:47:03', '2020-11-14 10:47:03'),
(3, 'Dr. Clare Conroy Jr.', 'mgerlach@example.net', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B1tnt6S3lh', '2020-11-14 10:47:03', '2020-11-14 10:47:03'),
(4, 'Kaylah Fadel', 'dschamberger@example.org', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R7oPAmXAzG', '2020-11-14 10:47:03', '2020-11-14 10:47:03'),
(5, 'Mckenzie Goodwin', 'virginie15@example.org', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CQkulJ81nC', '2020-11-14 10:47:03', '2020-11-14 10:47:03'),
(6, 'Christine Reilly', 'ndickinson@example.com', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L0Gz3gNkp1', '2020-11-14 10:47:03', '2020-11-14 10:47:03'),
(7, 'Mariano Ortiz III', 'ckub@example.org', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BaJ5EKKi2q', '2020-11-14 10:47:03', '2020-11-14 10:47:03'),
(8, 'Woodrow Jenkins', 'vincenza.veum@example.net', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WSRlThCkub', '2020-11-14 10:47:03', '2020-11-14 10:47:03'),
(9, 'Hertha Rath PhD', 'grant.demond@example.net', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'czbO8nkWlk', '2020-11-14 10:47:03', '2020-11-14 10:47:03'),
(10, 'Claudia Murazik', 'shanelle53@example.com', '2020-11-14 10:47:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y3vo9v4QW8', '2020-11-14 10:47:03', '2020-11-14 10:47:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buses_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routes_from_foreign` (`from`),
  ADD KEY `routes_to_foreign` (`to`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seats_bus_id_foreign` (`bus_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_route`
--
ALTER TABLE `trip_route`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_route_trip_id_foreign` (`trip_id`),
  ADD KEY `trip_route_route_id_foreign` (`route_id`);

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
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trip_route`
--
ALTER TABLE `trip_route`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `buses_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_from_foreign` FOREIGN KEY (`from`) REFERENCES `destinations` (`id`),
  ADD CONSTRAINT `routes_to_foreign` FOREIGN KEY (`to`) REFERENCES `destinations` (`id`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`),
  ADD CONSTRAINT `seats_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`);

--
-- Constraints for table `trip_route`
--
ALTER TABLE `trip_route`
  ADD CONSTRAINT `trip_route_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`),
  ADD CONSTRAINT `trip_route_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
