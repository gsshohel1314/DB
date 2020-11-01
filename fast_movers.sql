-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 06:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast_movers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `phone`, `email`, `email_verified_at`, `password`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'admin', 'admin', '01723667788', 'admin@gmail.com', NULL, '$2y$10$C.0jPxQfhCfm5cb7cBh.Pu76abH9dFmkJD508hfYDomjIzMLR2Pge', 'admin-5f917d4786c82.jpg', 1, NULL, '2020-10-22 06:38:32', '2020-10-22 06:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zones`
--

CREATE TABLE `delivery_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_zones`
--

INSERT INTO `delivery_zones` (`id`, `name`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Inside Dhaka', '10', 1, '2020-10-19 23:28:29', NULL),
(2, 'Outside Dhaka', '15', 1, '2020-10-20 03:28:29', NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2014_10_12_000000_create_users_table', 2),
(7, '2020_10_04_072347_create_admins_table', 2),
(8, '2020_10_20_044144_create_pickup_areas_table', 3),
(9, '2020_10_20_044202_create_pickup_products_table', 3),
(11, '2020_10_20_092639_create_delivery_zones_table', 5),
(13, '2020_10_20_052459_create_shops_table', 6),
(16, '2020_10_21_125358_create_parcel_locations_table', 8),
(17, '2020_10_21_064041_create_parcel_requests_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `parcel_locations`
--

CREATE TABLE `parcel_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parcel_locations`
--

INSERT INTO `parcel_locations` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'panding', 1, '2020-10-20 23:55:40', NULL),
(2, 'on the way', 1, '2020-10-20 23:55:40', NULL),
(3, 'complete', 1, '2020-10-23 22:23:40', NULL),
(4, 'cancelled', 1, '2020-10-23 22:23:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parcel_requests`
--

CREATE TABLE `parcel_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `track_id` bigint(20) NOT NULL,
  `location_id` bigint(20) NOT NULL DEFAULT 1,
  `shop_id` bigint(20) NOT NULL,
  `cous_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cous_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cous_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collect_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_sell_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `approve` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parcel_requests`
--

INSERT INTO `parcel_requests` (`id`, `track_id`, `location_id`, `shop_id`, `cous_name`, `cous_phone`, `cous_address`, `invoice_id`, `parcel_weight`, `collect_amount`, `pro_sell_price`, `instruction`, `status`, `approve`, `created_at`, `updated_at`) VALUES
(19, 327479, 1, 3, 'Rahim', '01723445577', 'dhaka', '123', '10kg', '1000', '1000', 'nothing', 1, 0, '2020-10-23 23:46:35', '2020-10-23 23:46:35'),
(20, 738356, 3, 4, 'korim', '01723445599', 'dhaka', '12345', '15kg', '1500', '1500', 'something', 1, 0, '2020-10-23 23:50:25', '2020-10-23 23:58:10'),
(21, 189994, 2, 5, 'kamal', '01723445570', 'rajshahi', '1234', '20kg', '2000', '2000', 'nothing', 1, 0, '2020-10-23 23:53:10', '2020-10-23 23:57:38');

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
-- Table structure for table `pickup_areas`
--

CREATE TABLE `pickup_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_areas`
--

INSERT INTO `pickup_areas` (`id`, `name`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '10', 1, '2020-10-19 22:57:01', '2020-10-24 00:02:21'),
(2, 'Dhanmondi(Dhaka)', '10', 1, '2020-10-19 22:57:28', '2020-10-24 00:02:04'),
(3, 'Rajshahi', '15', 1, '2020-10-19 22:57:57', '2020-10-24 00:01:49'),
(4, 'Syllet', '15', 1, '2020-10-19 22:58:08', '2020-10-24 00:01:36'),
(5, 'Natore', '15', 1, '2020-10-19 22:58:21', '2020-10-24 00:01:21'),
(6, 'Borishal', '15', 1, '2020-10-19 22:58:34', '2020-10-24 00:01:11'),
(7, 'Uttora(Dhaka)', '10', 1, '2020-10-19 22:58:48', '2020-10-24 00:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_products`
--

CREATE TABLE `pickup_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_products`
--

INSERT INTO `pickup_products` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'product1', 1, '2020-10-19 23:18:09', '2020-10-19 23:18:09'),
(2, 'product2', 1, '2020-10-19 23:18:23', '2020-10-19 23:18:23'),
(3, 'product3', 1, '2020-10-19 23:18:32', '2020-10-19 23:18:32'),
(4, 'product4', 1, '2020-10-19 23:18:41', '2020-10-19 23:18:41'),
(5, 'product5', 1, '2020-10-19 23:18:49', '2020-10-19 23:18:49'),
(6, 'product6', 1, '2020-10-19 23:18:59', '2020-10-19 23:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cous_id` bigint(20) NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_area_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deli_zone_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coup_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `cous_id`, `shop_name`, `shop_address`, `shop_email`, `pick_address`, `pick_area_id`, `pick_phone`, `pick_type_id`, `deli_zone_id`, `ref_id`, `coup_code`, `status`, `created_at`, `updated_at`) VALUES
(3, 13, 'Shop1', 'Dhaka', 'shop1@gmail.com', 'Dhaka', '1', '01723445566', '1', '1', '123', '123', 1, '2020-10-23 23:44:37', '2020-10-23 23:44:37'),
(4, 14, 'Shop2', 'dhaka', 'shop2@gmail.com', 'dhaka', '2', '01723445522', '2', '1', '123', '123', 1, '2020-10-23 23:48:46', '2020-10-23 23:48:46'),
(5, 15, 'Shop3', 'dhaka', 'shop3@gmail.com', 'dhaka', '3', '01723445560', '3', '2', '123', '123', 1, '2020-10-23 23:52:10', '2020-10-23 23:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `email_verified_at`, `password`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 'coustomer', 'coustomer', '01723445566', 'coustomer@gmail.com', NULL, '$2y$10$yjAObxSLfxxIPp9WVw4K9.65qMWzmRyYGlLjT8QcwbYGHb6vRJqHy', NULL, 1, NULL, '2020-10-23 23:42:42', '2020-10-23 23:42:42'),
(14, 'coustomer2', 'coustomer2', '01723445588', 'coustomer2@gmail.com', NULL, '$2y$10$cNGnIf62cJ2Likg1izvFu./4upjTqKZXMQeGYt3uJDaldy.FX6zVC', NULL, 1, NULL, '2020-10-23 23:47:51', '2020-10-23 23:47:51'),
(15, 'coustomer3', 'coustomer3', '01723445580', 'coustomer3@gmail.com', NULL, '$2y$10$u1Z.jpVn7JpRrURzKbMz2euNJ2KIWKH3kNfmBeGytlGauhRzU6Mkq', NULL, 1, NULL, '2020-10-23 23:51:25', '2020-10-23 23:51:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `delivery_zones`
--
ALTER TABLE `delivery_zones`
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
-- Indexes for table `parcel_locations`
--
ALTER TABLE `parcel_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcel_requests`
--
ALTER TABLE `parcel_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pickup_areas`
--
ALTER TABLE `pickup_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_products`
--
ALTER TABLE `pickup_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shops_shop_email_unique` (`shop_email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `delivery_zones`
--
ALTER TABLE `delivery_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `parcel_locations`
--
ALTER TABLE `parcel_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parcel_requests`
--
ALTER TABLE `parcel_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pickup_areas`
--
ALTER TABLE `pickup_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pickup_products`
--
ALTER TABLE `pickup_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
