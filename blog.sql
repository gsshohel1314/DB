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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(7, 'Laravel', 'laravel', 'laravel_2020-03-24_5e79bfc36cf50.jpg', '2020-03-24 02:07:32', '2020-03-24 02:07:32'),
(8, 'Php', 'php', 'php_2020-03-24_5e79c00598748.png', '2020-03-24 02:08:38', '2020-03-24 02:08:38'),
(9, 'Django', 'django', 'django_2020-03-31_5e82c9c2c89d7.png', '2020-03-30 22:40:37', '2020-03-30 22:40:37'),
(10, 'Java', 'java', 'java_2020-03-31_5e82ca1e9088a.jpg', '2020-03-30 22:42:06', '2020-03-30 22:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, NULL, NULL),
(3, 2, 8, '2020-03-25 02:35:11', '2020-03-25 02:35:11'),
(4, 3, 8, '2020-03-25 02:46:11', '2020-03-25 02:46:11'),
(6, 5, 7, '2020-03-26 22:28:32', '2020-03-26 22:28:32'),
(7, 5, 8, '2020-03-26 22:28:32', '2020-03-26 22:28:32'),
(9, 7, 7, '2020-03-26 22:56:18', '2020-03-26 22:56:18'),
(10, 8, 7, '2020-03-27 07:45:38', '2020-03-27 07:45:38'),
(11, 9, 7, '2020-03-27 22:59:52', '2020-03-27 22:59:52'),
(12, 10, 7, '2020-03-27 23:01:46', '2020-03-27 23:01:46'),
(13, 11, 8, '2020-03-27 23:30:50', '2020-03-27 23:30:50'),
(14, 12, 7, '2020-03-27 23:54:27', '2020-03-27 23:54:27'),
(15, 13, 7, '2020-03-27 23:58:36', '2020-03-27 23:58:36'),
(16, 13, 8, '2020-03-27 23:58:36', '2020-03-27 23:58:36'),
(17, 14, 7, '2020-03-28 00:32:45', '2020-03-28 00:32:45'),
(18, 15, 7, '2020-03-28 00:55:07', '2020-03-28 00:55:07'),
(19, 16, 7, '2020-03-28 00:57:54', '2020-03-28 00:57:54'),
(20, 17, 7, '2020-03-28 01:11:20', '2020-03-28 01:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(2, 17, 1, 'This is another comment', '2020-04-02 21:36:54', '2020-04-02 21:36:54'),
(4, 15, 2, 'This is new comment', '2020-04-03 22:57:51', '2020-04-03 22:57:51'),
(5, 17, 2, 'This is new comment', '2020-04-03 22:59:29', '2020-04-03 22:59:29'),
(7, 8, 2, 'This is new comment', '2020-04-03 23:08:17', '2020-04-03 23:08:17');

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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_21_024120_create_roles_table', 2),
(5, '2014_10_12_000000_create_users_table', 3),
(6, '2020_03_22_135159_create_tags_table', 4),
(7, '2020_03_24_045221_create_categories_table', 5),
(8, '2020_03_24_152554_create_posts_table', 6),
(9, '2020_03_24_152732_create_category_post_table', 6),
(10, '2020_03_24_152831_create_post_tag_table', 6),
(11, '2020_03_28_025614_create_subscribers_table', 7),
(12, '2020_04_01_044147_create_post_user_table', 8),
(13, '2020_04_03_022654_create_comments_table', 9);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(2, 1, 'New devoloping course start updated', 'new-devoloping-course-start-updated', 'new-devoloping-course-start-updated-2020-03-25-5e7b337b0dca4.png', '<p>This is new post body updated</p>', 5, 1, 1, '2020-03-25 02:35:11', '2020-09-09 04:06:24'),
(3, 1, 'Graphic design new course start', 'graphic-design-new-course-start', 'graphic-design-new-course-start-2020-03-25-5e7b1a52bec5e.jpg', '<p>graphic design course body</p>', 2, 1, 1, '2020-03-25 02:46:11', '2020-09-09 04:03:42'),
(5, 2, 'Post from author nasim kobir  nasim kobir nasim kobir nasim kobir nasim kobir nasim kobir', 'post-from-author', 'post-from-author-2020-03-27-5e7d80ef7e546.jpg', '<p>Test post form author</p>', 3, 0, 0, '2020-03-26 22:28:32', '2020-04-06 20:58:40'),
(7, 1, 'Shohel Rana post', 'shohel-rana-post', 'amr-sonar-bangla-ami-update-2020-03-27-5e7d8a3cc9a53.jpg', '<p>author post amar sonar bangla ami tomay valobasi</p>', 5, 1, 1, '2020-03-26 22:56:18', '2020-09-09 04:07:36'),
(8, 2, 'Laravel course start', 'laravel-course-start', 'laravel-course-start-2020-03-27-5e7e03806122b.jpg', '<p>Laravel course start from sunday</p>', 5, 1, 1, '2020-03-27 07:45:38', '2020-09-09 04:06:30'),
(10, 2, 'new notification post', 'new-notification-post', 'new-notification-post-2020-03-28-5e7eda398e1f7.jpg', '<p>new notification post testing</p>', 3, 1, 1, '2020-03-27 23:01:45', '2020-04-15 05:22:39'),
(11, 5, 'database class', 'database-class', 'database-class-2020-03-28-5e7ee10921e2d.png', '<p>database class start from next sunday</p>', 1, 1, 1, '2020-03-27 23:30:50', '2020-04-04 22:32:53'),
(12, 1, 'new admin post', 'new-admin-post', 'new-admin-post-2020-03-28-5e7ee69304ec1.jpg', '<p>new admin post send subscriber</p>', 1, 1, 1, '2020-03-27 23:54:27', '2020-08-23 03:23:14'),
(13, 1, 'admin post two', 'admin-post-two', 'admin-post-two-2020-03-28-5e7ee78b4f3cf.png', '<p>admin post two send subscriber</p>', 1, 1, 1, '2020-03-27 23:58:36', '2020-04-04 22:27:02'),
(14, 1, 'queue post', 'queue-post', 'queue-post-2020-03-28-5e7eef8c9c5f5.jpg', '<p>queue post send</p>', 2, 1, 1, '2020-03-28 00:32:45', '2020-09-09 04:06:04'),
(15, 1, 'post one', 'post-one', 'post-one-2020-03-28-5e7ef4cad807a.jpg', '<p>post one send</p>', 5, 1, 1, '2020-03-28 00:55:07', '2020-04-15 04:52:22'),
(16, 1, 'asdashashkha', 'asdashashkha', 'asdashashkha-2020-03-28-5e7ef57202308.jpg', '<p>gshdshhhllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll</p>', 2, 0, 1, '2020-03-28 00:57:54', '2020-04-04 22:35:02'),
(17, 1, 'djhkwkjk', 'djhkwkjk', 'djhkwkjk-2020-03-28-5e7ef89864005.jpg', '<p>vjhhjhgjjgjjhj</p>', 9, 1, 0, '2020-03-28 01:11:20', '2020-04-15 04:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 2, 2, '2020-03-25 02:35:11', '2020-03-25 02:35:11'),
(4, 3, 3, '2020-03-25 02:46:11', '2020-03-25 02:46:11'),
(6, 5, 1, '2020-03-26 22:28:32', '2020-03-26 22:28:32'),
(7, 5, 2, '2020-03-26 22:28:32', '2020-03-26 22:28:32'),
(9, 7, 1, '2020-03-26 22:56:18', '2020-03-26 22:56:18'),
(10, 8, 1, '2020-03-27 07:45:38', '2020-03-27 07:45:38'),
(11, 9, 1, '2020-03-27 22:59:52', '2020-03-27 22:59:52'),
(12, 10, 1, '2020-03-27 23:01:46', '2020-03-27 23:01:46'),
(13, 11, 2, '2020-03-27 23:30:50', '2020-03-27 23:30:50'),
(14, 12, 1, '2020-03-27 23:54:27', '2020-03-27 23:54:27'),
(15, 13, 1, '2020-03-27 23:58:36', '2020-03-27 23:58:36'),
(16, 13, 2, '2020-03-27 23:58:36', '2020-03-27 23:58:36'),
(17, 13, 3, '2020-03-27 23:58:36', '2020-03-27 23:58:36'),
(18, 14, 1, '2020-03-28 00:32:45', '2020-03-28 00:32:45'),
(19, 15, 1, '2020-03-28 00:55:07', '2020-03-28 00:55:07'),
(20, 16, 1, '2020-03-28 00:57:54', '2020-03-28 00:57:54'),
(21, 17, 1, '2020-03-28 01:11:20', '2020-03-28 01:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 12, 1, '2020-04-01 04:37:35', '2020-04-01 04:37:35'),
(8, 16, 2, '2020-04-01 04:39:50', '2020-04-01 04:39:50'),
(10, 12, 2, '2020-04-01 04:40:13', '2020-04-01 04:40:13'),
(11, 14, 2, '2020-04-01 04:40:23', '2020-04-01 04:40:23'),
(12, 17, 1, '2020-04-01 20:45:03', '2020-04-01 20:45:03'),
(13, 16, 1, '2020-04-01 20:47:19', '2020-04-01 20:47:19'),
(14, 11, 1, '2020-04-01 21:28:30', '2020-04-01 21:28:30'),
(15, 10, 2, '2020-04-14 04:25:56', '2020-04-14 04:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(4, 'gsshohel1314@gmail.com', '2020-03-27 21:54:17', '2020-03-27 21:54:17'),
(5, 'shohel@gmail.com', '2020-03-27 23:56:24', '2020-03-27 23:56:24'),
(6, 'rana@gmail.com', '2020-03-27 23:56:46', '2020-03-27 23:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2020-03-22 09:58:06', '2020-03-22 09:58:06'),
(2, 'Php', 'php', '2020-03-22 10:14:18', '2020-03-22 10:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Shohel Rana', 'shohel', 'gsshohel1314@gmail.com', NULL, '$2y$10$/Duof6B3Kkf0Fui06GY/IuCk0P5OUdTcHfUNNhWkV8orobK1T3KN2', 'shohel-rana-2020-03-31-5e82e90ccf5c7.jpg', 'I am shohle rana. I am a student of dafffodil univarsity. univarsity update', NULL, '2020-04-07 18:00:00', '2020-03-31 21:43:45'),
(2, 2, 'Nasim Kobir', 'nasim', 'nasim@gmail.com', NULL, '$2y$10$bYj.KZMtjfG0WH64ebnASuQ3k/K7GKTBr0xArIyvVphJsL1fStvY2', 'nasim-kobir-2020-04-01-5e841618bb3f8.jpg', 'author test successfull', NULL, '2020-04-01 18:00:00', '2020-03-31 22:23:21'),
(5, 2, 'Md. Author', 'author', 'author@gmail.com', NULL, '$2y$10$be4wkpiSlH7Xz3RULl77BOAZof6jMwm1oHCguXqCiEtTAREowvsxa', 'default.png', 'amar sonar bangla ami tomay valobasi', NULL, '2020-04-06 22:51:41', '2020-04-06 22:51:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
