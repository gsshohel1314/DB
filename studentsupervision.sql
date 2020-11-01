-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 06:02 AM
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
-- Database: `studentsupervision`
--

-- --------------------------------------------------------

--
-- Table structure for table `counselling_days`
--

CREATE TABLE `counselling_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counselling_days`
--

INSERT INTO `counselling_days` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Saturday', '2019-11-12 22:00:00', NULL),
(2, 'Sunday', '2019-11-12 23:00:00', NULL),
(3, 'Monday', '2019-11-12 22:00:00', NULL),
(4, 'Tuesday', '2019-11-12 22:00:00', NULL),
(5, 'Wednesday', '2019-11-12 21:00:00', NULL),
(6, 'Thursday', '2019-11-12 22:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counselling_times`
--

CREATE TABLE `counselling_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counselling_times`
--

INSERT INTO `counselling_times` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '08:30-10:00 AM', '2019-11-12 21:00:00', NULL),
(2, '10:00-11:30 AM', '2019-11-12 22:00:00', NULL),
(3, '11:30 AM -01:00 PM', '2019-11-12 22:00:00', NULL),
(4, '01:00-02:30 PM', '2019-11-12 21:00:00', NULL),
(5, '02:30-04:00 PM', '2019-11-12 22:00:00', NULL),
(6, '04:00-05:30 PM', '2019-11-12 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `role`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Robiul Islam', 'robiulislam@gmail.com', 'Admin', 'dfsdf', 'amra sonar abangla ami tomay valobasi', '2019-12-11 06:26:01', '2019-12-11 06:26:01'),
(2, 'Robiul Islam', 'robiulislam@gmail.com', 'Admin', 'dfsdf', 'amra sonar abangla ami tomay valobasi', '2019-12-11 06:26:44', '2019-12-11 06:26:44'),
(3, 'Robiul Islam', 'robiulislam@gmail.com', 'Admin', 'gdfgfd', 'sdfsgfdsgdfsgdf', '2019-12-11 06:27:39', '2019-12-11 06:27:39'),
(4, 'Robiul Islam', 'robiulislam@gmail.com', 'Admin', 'ami', 'amra sonar abangla ami tomay valobasi', '2019-12-11 06:50:33', '2019-12-11 06:50:33'),
(5, 'Robiul Islam', 'robiulislam@gmail.com', 'Admin', 'robi', 'robiul', '2019-12-11 06:51:28', '2019-12-11 06:51:28'),
(6, 'Robiul Islam', 'robiulislam@gmail.com', 'Admin', 'document', 'document document', '2019-12-11 06:58:44', '2019-12-11 06:58:44'),
(7, 'kobir', 'kobir@gmail.com', 'Student', 'shohel', 'shohel shohel', '2019-12-11 07:21:49', '2019-12-11 07:21:49'),
(8, 'Shohel', 'shohel@gmail.com', 'Teacher', 'nothing', 'something', '2019-12-11 07:35:18', '2019-12-11 07:35:18'),
(9, 'Nasim', 'nasim@gmail.com', 'Teacher', 'document', 'amra sonar abangla ami tomay valobasi', '2019-12-13 07:01:43', '2019-12-13 07:01:43'),
(10, 'kobir', 'kobir@gmail.com', 'Student', 'teacher', 'sdfsgfdsgdfsgdf', '2019-12-13 07:07:10', '2019-12-13 07:07:10'),
(11, 'Shohel', 'shohel@gmail.com', 'Teacher', 'student', 'message send to teacher', '2019-12-13 07:09:37', '2019-12-13 07:09:37');

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
(5, '2019_10_15_072923_create_user_roles_table', 2),
(6, '2019_11_13_122447_create_counselling_times_table', 3),
(7, '2019_11_13_122508_create_counselling_days_table', 3),
(10, '2019_11_13_140932_create_teachers_table', 5),
(11, '2019_11_13_124153_create_routines_table', 6),
(21, '2014_10_12_000000_create_users_table', 10),
(22, '2019_11_17_103042_create_request_counsellings_table', 11),
(23, '2019_12_11_112029_create_messages_table', 12);

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
-- Table structure for table `request_counsellings`
--

CREATE TABLE `request_counsellings` (
  `id` int(10) UNSIGNED NOT NULL,
  `tName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_counsellings`
--

INSERT INTO `request_counsellings` (`id`, `tName`, `tEmail`, `sName`, `sEmail`, `day`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shohel', 'shohel@gmail.com', 'kobir', 'kobir@gmail.com', 'Saturday', '08:30-10:00 AM', 0, '2019-12-09 12:55:52', '2019-12-09 13:30:05'),
(2, 'Nasim', 'nasim@gmail.com', 'kobir', 'kobir@gmail.com', 'Saturday', '08:30-10:00 AM', 1, '2019-12-09 12:57:55', '2019-12-09 13:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`id`, `name`, `email`, `initial`, `day`, `time`, `created_at`, `updated_at`) VALUES
(1, 'Shohel', 'shohel@gmail.com', 'SH', 'Saturday', '08:30-10:00 AM', '2019-11-17 04:16:05', '2019-11-17 04:16:05'),
(2, 'Shohel', 'shohel@gmail.com', 'SH', 'Sunday', '10:00-11:30 AM', '2019-11-17 04:17:01', '2019-11-17 04:17:01'),
(3, 'Shohel', 'shohel@gmail.com', 'SH', 'Monday', '11:30 AM -01:00 PM', '2019-11-17 04:17:16', '2019-11-17 04:17:16'),
(4, 'Nasim', 'nasim@gmail.com', 'NS', 'Saturday', '08:30-10:00 AM', '2019-11-17 04:17:32', '2019-11-17 04:17:32'),
(5, 'Rokon', 'rokon@gmail.com', 'RO', 'Saturday', '08:30-10:00 AM', '2019-11-17 04:17:49', '2019-11-17 04:17:49'),
(6, 'Nasim', 'nasim@gmail.com', 'NS', 'Thursday', '04:00-05:30 PM', '2019-11-17 04:18:06', '2019-11-17 04:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `initial`, `created_at`, `updated_at`) VALUES
(1, 'Rokon', 'rokon@gmail.com', 'RO', '2019-11-17 04:07:37', '2019-11-17 04:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 3,
  `phone` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `phone`, `status`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Nasim', 'nasim@gmail.com', 2, 1725667870, 1, '$2y$10$Rto7/yMwDX.x614lqNbJAOdAA3xfLCmciPOU2Vpv/0yblCxqRWCLy', 'fvg7rkdBD3dlwZAXprlTE03dcy2WyBSiLfa3cJ8Rjn9lJ78JYrFnv6oQZofO', '2019-12-09 12:24:26', '2019-12-09 13:14:18', NULL),
(6, 'Rashel', 'rashel@gmail.com', 3, 1725668833, 1, '$2y$10$w/oSW5CQg78Y2U8smgraR..FX30SWiEKPYxAtILQlefcEOEYuKu9i', 'jT0mYlyUaOqEnyEwSUiKq6kydtrNQDwfwyVgdJQwwFqJbKyRUX4KMYHGghzu', '2019-12-09 12:26:00', '2019-12-09 12:26:22', NULL),
(7, 'admin', 'admin@gmail.com', 1, 1725669988, 1, '$2y$10$.iUvLBr9pQhqLaV7tJiMNO97t6ht75WlDE5TEJhfWk8L1MkePPU52', 'eWLuII4VGGIMZGQWLuMtUrIZHtbJIEZjx7Hc5o7G7MTvXOI8R4ARVUQMIYA5', '2020-10-11 06:32:26', '2020-10-11 06:32:26', NULL),
(8, 'a', 'a@gmail.com', 1, 1723554433, 1, '$2y$10$/IB2mvemRoxQMUHacs3/TO3IrIFVNK/k/owyIRKF3zWgK0Ta0kL6a', 'PgnKzWPmmO46vL51hnjXdEZemKyAZcfozSEQ74zHWReaP3VFVQD7BXaJuzP9', '2020-10-31 13:16:21', '2020-10-31 13:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, '2019-10-14 21:00:00', NULL),
(2, 'Teacher', 1, '2019-10-14 21:00:00', NULL),
(3, 'Student', 1, '2019-10-14 21:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counselling_days`
--
ALTER TABLE `counselling_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counselling_times`
--
ALTER TABLE `counselling_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `request_counsellings`
--
ALTER TABLE `request_counsellings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`),
  ADD UNIQUE KEY `teachers_initial_unique` (`initial`);

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
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `user_roles_role_name_unique` (`role_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counselling_days`
--
ALTER TABLE `counselling_days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `counselling_times`
--
ALTER TABLE `counselling_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `request_counsellings`
--
ALTER TABLE `request_counsellings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
