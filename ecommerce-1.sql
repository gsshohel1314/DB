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
-- Database: `ecommerce-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `slug`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Men', 'men-2019-07-23.jpg', 'men', 'amar sonar bangla ami tomay valobasi', 1, '2019-07-23 10:09:54', '2019-09-14 20:01:18', NULL),
(7, 'Women', 'women-2019-07-23.jpg', 'women', 'amar sonar bangla ami tomay valobasi', 0, '2019-07-23 10:10:21', '2019-09-14 20:00:44', '2019-09-14 20:00:44'),
(8, 'Kids', 'kids-2019-07-23.jpg', 'kids', 'amar sonar bangla ami tomay valobasi', 1, '2019-07-23 10:10:47', '2019-07-23 10:10:47', NULL),
(9, 'Easy', 'easy-2019-07-23.jpg', 'easy', 'amar sonar bangla ami tomay valobasi', 0, '2019-07-23 10:11:13', '2019-09-14 19:57:03', NULL),
(10, 'yellow', 'yellow-2019-07-23.jpg', 'yellow', 'amar sonar bangla ami tomay valobasi', 1, '2019-07-23 10:11:57', '2019-07-23 10:39:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'men', 'men', 1, '2019-07-17 02:06:17', '2019-07-17 04:06:47', NULL),
(2, 'kids', 'kids', 0, '2019-07-17 02:07:11', '2019-07-17 02:07:11', NULL),
(3, 'women', 'women', 1, '2019-07-17 02:07:21', '2019-07-17 05:33:32', NULL),
(8, 'weding', 'weding', 1, '2019-07-17 04:05:53', '2019-07-17 05:33:10', '2019-07-17 05:33:10'),
(9, 'Jewellery', 'jewellery', 1, '2019-07-23 17:58:21', '2019-07-23 17:58:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-07-25 04:29:57', '2019-07-25 04:29:57'),
(2, 1, 3, '2019-07-25 04:29:57', '2019-07-25 04:29:57'),
(3, 2, 1, '2019-07-25 04:34:45', '2019-07-25 04:34:45'),
(4, 2, 3, '2019-07-25 04:34:45', '2019-07-25 04:34:45'),
(5, 3, 1, '2019-07-25 05:48:02', '2019-07-25 05:48:02'),
(6, 3, 3, '2019-07-25 05:48:02', '2019-07-25 05:48:02'),
(7, 4, 1, '2019-07-25 05:51:41', '2019-07-25 05:51:41'),
(8, 4, 3, '2019-07-25 05:51:41', '2019-07-25 05:51:41'),
(9, 5, 1, '2019-07-25 05:55:15', '2019-07-25 05:55:15'),
(10, 5, 3, '2019-07-25 05:55:15', '2019-07-25 05:55:15'),
(11, 1, 1, '2019-07-25 08:11:37', '2019-07-25 08:11:37'),
(12, 1, 3, '2019-07-25 08:11:37', '2019-07-25 08:11:37'),
(13, 2, 1, '2019-08-26 14:51:24', '2019-08-26 14:51:24'),
(14, 2, 3, '2019-08-26 14:51:24', '2019-08-26 14:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Blue', 1, NULL, NULL),
(2, 'Black', 1, NULL, NULL),
(3, 'Green', 1, NULL, NULL),
(4, 'White', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-07-25 04:29:57', '2019-07-25 04:29:57'),
(2, 1, 2, '2019-07-25 04:29:57', '2019-07-25 04:29:57'),
(3, 2, 1, '2019-07-25 04:34:45', '2019-07-25 04:34:45'),
(4, 2, 2, '2019-07-25 04:34:45', '2019-07-25 04:34:45'),
(5, 2, 3, '2019-07-25 04:34:45', '2019-07-25 04:34:45'),
(6, 3, 1, '2019-07-25 05:48:02', '2019-07-25 05:48:02'),
(7, 3, 2, '2019-07-25 05:48:02', '2019-07-25 05:48:02'),
(8, 4, 1, '2019-07-25 05:51:41', '2019-07-25 05:51:41'),
(9, 4, 2, '2019-07-25 05:51:41', '2019-07-25 05:51:41'),
(10, 5, 1, '2019-07-25 05:55:15', '2019-07-25 05:55:15'),
(11, 5, 2, '2019-07-25 05:55:15', '2019-07-25 05:55:15'),
(12, 1, 1, '2019-07-25 08:11:37', '2019-07-25 08:11:37'),
(13, 1, 2, '2019-07-25 08:11:37', '2019-07-25 08:11:37'),
(14, 2, 1, '2019-08-26 14:51:24', '2019-08-26 14:51:24'),
(15, 2, 2, '2019-08-26 14:51:24', '2019-08-26 14:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `contact_uses`
--

CREATE TABLE `contact_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_uses`
--

INSERT INTO `contact_uses` (`id`, `name`, `email`, `phone`, `subject`, `message`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'saddam', 'saddam@gmail.com', '01723668877', 'Lorem ipsum dolor sit amet amr sonar bangla ami tomay valobasi', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim', 'CON5d2a01dc53cba', 1, '2019-07-13 16:07:56', NULL),
(4, 'saddam', 'saddam@gmail.com', '01723668877', 'Lorem ipsum dolor sit amet amr sonar bangla ami tomay valobasi', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim.', 'CON5d2a057133c05', 1, '2019-07-16 16:23:13', NULL),
(5, 'pritom', 'pritom@gmail.com', '01723668877', 'Lorem ipsum dolor sit amet amr sonar bangla ami tomay valobasi', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim.', 'CON5d2a9a7c2555c', 1, '2019-07-14 02:59:08', NULL),
(6, 'shohel', 'gsshohel1314@gmail.com', '01723559950', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim.', 'CON5d2ac022616b6', 1, '2019-07-14 05:39:46', NULL),
(7, 'shohel', 'gsshohel1314@gmail.com', '01723559950', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim.', 'CON5d2ac04a23703', 1, '2019-07-14 05:40:26', NULL),
(8, 'shohel', 'gsshohel1314@gmail.com', '01723559950', 'Lorem ipsum dolor', 'amar sonar bangla ami tomay valobasi', 'CON5d2ac14988218', 1, '2019-07-14 05:44:41', NULL),
(9, 'shohel', 'gsshohel1314@gmail.com', '01723559950', 'Lorem ipsum dolor', 'amar sonar bangla ami tomay valobasi', 'CON5d2ac189e0581', 1, '2019-07-14 05:45:45', NULL),
(10, 'shohel', 'gsshohel1314@gmail.com', '01723559950', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempo', 'CON5d2ac1efd2fd1', 1, '2019-07-14 05:47:27', NULL),
(11, 'shohel', 'gsshohel1314@gmail.com', '01723668877', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim', 'CON5d2ac26222453', 1, '2019-07-14 05:49:22', NULL),
(12, 'pritom', 'gsshohel1314@gmail.com', '01856989850', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim.', 'CON5d2ac2ab3be21', 1, '2019-07-14 05:50:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `facebook`, `twitter`, `linkedin`, `youtube`, `google`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', '44', '22', '55', '33', 1, '2019-07-15 06:00:00', '2019-07-15 04:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_12_082522_create_user_roles_table', 2),
(4, '2019_07_13_205329_create_contact_uses_table', 3),
(5, '2019_07_15_093422_create_media_table', 4),
(6, '2019_07_15_121402_create_categories_table', 5),
(7, '2019_07_17_194634_create_brands_table', 6),
(8, '2019_07_23_173608_create_products_table', 7),
(9, '2019_07_23_174932_create_colors_table', 8),
(10, '2019_07_23_175422_create_color_product_table', 9),
(11, '2019_07_23_180059_create_images_table', 10),
(12, '2019_07_25_095433_create_category_product_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES
(12, 'tshart_2019-07-25_5d39677ae3124.jpg', 1, '2019-07-25 08:25:31', '2019-07-25 08:25:31'),
(13, 'tshart_2019-07-25_5d39679815d32.jpg', 1, '2019-07-25 08:26:00', '2019-07-25 08:26:00'),
(14, 'pant_2019-08-26_5d63f1ebe9eaa.jpg', 2, '2019-08-26 14:51:24', '2019-08-26 14:51:24'),
(15, 'pant_2019-08-26_5d63f1ec80082.jpg', 2, '2019-08-26 14:51:24', '2019-08-26 14:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `sales` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `price`, `discount`, `stock`, `sales`, `status`, `short_description`, `long_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 'tshart', 100.00, 10.00, 50, 0, 1, 'Lorem Ipsum is simply dummy text of the printing andg industry.', 'Lorem Ipsum is simply dummy text of the printing andg industry.', '2019-07-25 08:11:37', '2019-07-27 04:28:42', NULL),
(2, 8, 'pant', 100.00, 10.00, 20, 0, 1, 'amr sonar bangla ami tomay valobasi', 'amr sonar bangla ami tomay valobasi', '2019-08-26 14:51:24', '2019-08-26 15:02:05', '2019-08-26 15:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '---',
  `role_id` int(11) NOT NULL DEFAULT 5,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shohel', 'shohel@gmail.com', '01723559950', 1, '$2y$10$PqsMAUNb6pde/RQ8NrOS9.owFr3e/s8UQV2Gw3rio.0fOXguFdMTa', 'pICuZ08D3uVVVUiwTDmorMJAm63spqoMHSw2nWHrddl92kw3ojAoxSX4qHuf', '2019-06-28 03:24:59', '2019-06-28 03:24:59'),
(2, 'rana', 'rana@gmail.com', '01521475890', 2, '$2y$10$sPRL9DmrU8zkvf94NyomAeOIsUEKmwNTquEsrYtju8iTaeDxzLLzu', 'Ic3CMHUbhdC2KwZooeyMi4gJCqsURKYckqo4rKwv6x8USSfZEChFnpU25snZ', '2019-07-11 04:23:52', '2019-07-11 04:23:52'),
(15, 'happy', 'happy@gmail.com', '01723669988', 3, '$2y$10$sMWm/Me1yEzfHt5hJdQ1f.bgCJIQY6z/b1uoCZSRe1t8FzfyEybiW', '9ASCd4z6KmFADCXOLvnibcTgpockmh1q3cgzR8f2LU1ujMlSueJpr4YRPi33', '2019-07-11 17:00:01', NULL),
(16, 'saddam hosian', 'saddam@gmail.com', '01923565656', 4, '$2y$10$fGRJHfORjMqtyQKBJfMlIuj5qafs/w1BFWGYCLAeA85eC/ZEITgV2', '8XFo3NPE1OpiUVuQLiPdJlX4uFAR7ju5JfWHj1sNC1HZvBjc2TveuQK1Hp7U', '2019-07-11 17:00:53', '2019-07-13 04:34:35'),
(17, 'masud rana', 'masud@gmail.com', '01856989850', 4, '$2y$10$OCY8ViQ3aXooGObnoyzFp.A/IssFvy1mSJP92.Hg6a8ZQaCoKcgi.', NULL, '2019-07-12 03:13:00', '2019-07-13 04:41:58'),
(18, 'pritom kundo', 'pritom@gmail.com', '01723668877', 5, '$2y$10$9TAE/mi75ncrcBNwyYl6.eX1bzclyJssDjTWwi5v69FgxgtxGNvG6', '0e67GOeoLZUTbef9RfUpg0MpxyZrErwqHcSjeaeSPf27D6ZoKSHK6r1T9WqH', '2019-07-12 17:20:51', '2019-07-13 04:41:14'),
(19, 'sami', 'sami@gmail.com', '01723668877', 4, '$2y$10$AjlDXQE09Om517SsIZUuoeHtAx1zeuVOgBYRop1otuRK6X9/TRH2C', NULL, '2019-07-17 02:09:07', NULL),
(20, 'raihan', 'raihan@gmail.com', '01723668877', 5, '$2y$10$ehlLtKUlka9TKouSNfFc2ectOpNr7SAhEfCzBPMOq2T3XenugKNCu', NULL, '2019-07-17 02:11:54', NULL),
(21, 'nasim', 'nasim@gmail.com', '01856989850', 5, '$2y$10$AEgw35giU3BpIkCrEorWsOpavjjsTNVDiE9HsJ9qgsJ.G6vTdedHi', NULL, '2019-07-17 02:12:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 1, '2019-07-12 00:00:00', NULL),
(2, 'admin', 1, '2019-07-12 01:00:00', NULL),
(3, 'author', 1, '2019-07-12 05:00:00', NULL),
(4, 'editor', 1, '2019-07-09 18:00:00', NULL),
(5, 'subscriber', 1, '2019-07-12 04:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_uses`
--
ALTER TABLE `contact_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
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
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_uses`
--
ALTER TABLE `contact_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
