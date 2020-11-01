-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 05:59 AM
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
-- Database: `aarvi`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `details`, `video_image`, `video_url`, `video_title`, `status`, `created_at`, `updated_at`) VALUES
(2, 'History About Us', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum \r\nsuspendisse ultrices gravida. Risus commodo viverra maecenas accumsan \r\nlacus vel facilisis.\r\n                        Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. <br></div><div><br></div><div>Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur.\r\n                        Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n Sed ut perspiciatis unde omnis iste natus error sit voluptatem \r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab\r\n illo inventore veritatis et quasi architecto beatae vitae dicta sunt \r\nexplicabo. <br></div><div><br></div><div>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut \r\nodit aut fugit, sed quia consequuntur magni dolores eos qui ratione \r\nvoluptatem sequi nesciunt.</div>', 'about_2_1602159311.png', 'https://www.youtube.com/watch?v=1sZXfANXi6w', 'We\'ve funded $230,00 for 10M children around the world', 1, '2020-10-16 09:35:56', '2020-10-16 09:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `apply_awards`
--

CREATE TABLE `apply_awards` (
  `aa_id` bigint(20) UNSIGNED NOT NULL,
  `aa_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_address` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_id` int(11) NOT NULL,
  `aa_slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aa_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apply_awards`
--

INSERT INTO `apply_awards` (`aa_id`, `aa_name`, `aa_phone`, `aa_email`, `aa_address`, `aa_message`, `award_id`, `aa_slug`, `aa_status`, `created_at`, `updated_at`) VALUES
(1, 'Saidul Islam Uzzal', '01746330213', 'uzzalbd.creative@gmail.com', 'Dhanmondi', 'eqwewqewqe qwewq ewqe', 1, 'AAW5f5afeef1adb2', 1, '2020-09-11 04:37:03', NULL),
(4, 'name', '01723667788', 'name@gmail.com', 'address', 'message', 4, 'AAW5f86e013e1058', 1, '2020-10-14 11:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `award_id` bigint(20) UNSIGNED NOT NULL,
  `award_title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_reg_starting` date DEFAULT NULL,
  `award_reg_ending` date DEFAULT NULL,
  `award_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_slug` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`award_id`, `award_title`, `award_subtitle`, `award_reg_starting`, `award_reg_ending`, `award_details`, `award_image`, `award_slug`, `award_status`, `created_at`, `updated_at`) VALUES
(1, 'Volunteer of the Year 2020', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices.', '2020-09-07', '2020-12-31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmtempor incididunt ut labore et dolore magna aliqua. Quis ipsupendisse ultrices gravida. Risus commodo accumsan lacus vel facilisis.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', 'award_1_1602237521.jpg', '2020-09-07-volunteer-of-the-year-2020', 1, '2020-09-08 07:46:43', '2020-10-09 09:59:56'),
(2, 'Volunteer of the Month', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices.', '2020-09-03', '2020-10-17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmtempor incididunt ut labore et dolore magna aliqua. Quis ipsupendisse ultrices gravida. Risus commodo accumsan lacus vel facilisis.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', 'award_2_1602658262.jpg', '2020-09-03-volunteer-of-the-month', 1, '2020-09-08 07:47:19', '2020-10-14 06:51:04'),
(3, 'Volunteer of the Weeks', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices.', '2020-09-05', '2020-10-01', '', 'award_3_1599551277.jpg', '2020-09-05-volunteer-of-the-weeks', 1, '2020-09-08 07:47:57', '2020-09-13 05:11:05'),
(4, 'Best Volunteer Award', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices.', '2020-09-04', '2020-10-30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmtempor incididunt ut labore et dolore magna aliqua. Quis ipsupendisse ultrices gravida. Risus commodo accumsan lacus vel facilisis.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', 'award_4_1602237230.jpg', '2020-09-04-best-volunteer-award', 1, '2020-09-13 05:09:13', '2020-10-09 09:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `ban_id` bigint(20) UNSIGNED NOT NULL,
  `ban_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ban_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_button` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_button_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ban_slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ban_publish` int(11) NOT NULL DEFAULT 0,
  `ban_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`ban_id`, `ban_title`, `ban_details`, `ban_button`, `ban_button_url`, `ban_image`, `ban_slug`, `ban_publish`, `ban_status`, `created_at`, `updated_at`) VALUES
(1, 'One Small step to a better Future', 'Make the most of your event!', 'Join Now', '#', 'banner_1_1598620132.jpg', 'BAN205f4901e4c3bc1', 1, 1, '2020-08-28 13:08:52', '2020-08-28 13:08:53'),
(2, 'Aarvi Foundation International', 'International Based IT and  Software. ', 'View More', '#', 'banner_2_1598621335.jpg', 'BAN205f490697767ba', 1, 1, '2020-08-28 13:28:55', '2020-10-14 09:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `basics`
--

CREATE TABLE `basics` (
  `basic_id` bigint(20) UNSIGNED NOT NULL,
  `basic_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_favicon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_flogo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basics`
--

INSERT INTO `basics` (`basic_id`, `basic_title`, `basic_subtitle`, `basic_details`, `basic_logo`, `basic_favicon`, `basic_flogo`, `basic_status`, `created_at`, `updated_at`) VALUES
(1, 'Aarvi Foundation', 'International Charity Organization', 'International Social and  Charity Organization a.', 'logo_1602831391.png', 'favicon_1602831392.png', 'flogo_1602831392.png', 1, '2020-10-16 06:56:31', '2020-10-16 06:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `bcate_id` bigint(20) UNSIGNED NOT NULL,
  `bcate_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcate_slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcate_creator` int(11) NOT NULL,
  `bcate_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_photo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_creator` int(11) NOT NULL,
  `post_category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `post_tag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `post_slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_publish` int(11) NOT NULL DEFAULT 0,
  `post_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'O−', '2020-10-05 01:54:54', NULL),
(2, 'O+', '2020-10-05 01:54:54', NULL),
(3, 'A−', '2020-10-04 23:56:36', NULL),
(4, 'A+', '2020-10-05 00:57:29', NULL),
(5, 'B-', '2020-10-05 01:57:41', NULL),
(6, 'B+', '2020-10-04 23:57:41', NULL),
(7, 'AB−', '2020-10-04 23:58:20', NULL),
(8, 'AB+', '2020-10-05 02:58:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `body_texts`
--

CREATE TABLE `body_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phrase` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `body_texts`
--

INSERT INTO `body_texts` (`id`, `phrase`, `text`, `created_at`, `updated_at`) VALUES
(91, 'JOIN OUR MISSION', 'JOIN OUR MISSION', '2020-10-10 10:45:15', '2020-10-10 10:45:15'),
(92, 'How Can You Help', 'How Can You Help', '2020-10-10 10:45:15', '2020-10-10 10:45:15'),
(93, 'DONATE MONEY', 'DONATE MONEY', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(94, 'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(95, 'BECOME VOLUNTEER', 'BECOME VOLUNTEER', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(96, 'SPONSOR A CHILD', 'SPONSOR A CHILD', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(97, 'Equip children for a smarter future!', 'Equip children for a smarter future!', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(98, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(99, 'Join US for volunteer program.', 'Join US for volunteer program.', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(100, 'Join our volunteer platform under the Youth Development Program that provides the opportunity to empower the youth, facilitate volunteerism, foster self-resilience and growth as well as equipping them with the necessary tools to shape them for a meaningful future.', 'Join our volunteer platform under the Youth Development Program that provides the opportunity to empower the youth, facilitate volunteerism, foster self-resilience and growth as well as equipping them with the necessary tools to shape them for a meaningful future.', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(101, 'Education Program', 'Education Program', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(102, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore recent case.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore recent case.', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(103, 'Sign up for volunteer program.', 'Sign up for volunteer program.', '2020-10-10 10:45:16', '2020-10-10 10:45:16'),
(104, 'We serve the world\r\n                            through Charity', 'We serve the world\r\n                            through Charity', '2020-10-10 10:45:27', '2020-10-10 10:45:27'),
(105, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.', '2020-10-10 10:45:27', '2020-10-10 10:45:27'),
(106, 'Our Vision & Mission', 'Our Vision & Mission', '2020-10-10 10:45:27', '2020-10-10 10:45:27'),
(107, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-10-10 10:45:27', '2020-10-10 10:45:27'),
(108, 'QUALITY', 'QUALITY', '2020-10-10 10:45:28', '2020-10-10 10:45:28'),
(109, 'SUSTAINABILITY', 'SUSTAINABILITY', '2020-10-10 10:45:28', '2020-10-10 10:45:28'),
(110, 'INCLUSIVENESS', 'INCLUSIVENESS', '2020-10-10 10:45:28', '2020-10-10 10:45:28'),
(111, 'There are lots of ways to get involved with Aarvi. Help share our campaigns on social media, create your own campaign, contact to see if you can volunteer or find a job. Be our Partner. Donate to our Cause and Shop with us to support the locals.', 'There are lots of ways to get involved with Aarvi. Help share our campaigns on social media, create your own campaign, contact to see if you can volunteer or find a job. Be our Partner. Donate to our Cause and Shop with us to support the locals.', '2020-10-10 10:45:46', '2020-10-10 10:45:46'),
(112, 'This Earth deserves a Hero.', 'This Earth deserves a Hero.', '2020-10-10 10:45:46', '2020-10-10 10:45:46'),
(113, 'It needs YOU.', 'It needs YOU.', '2020-10-10 10:45:46', '2020-10-10 10:45:46'),
(114, 'How To Fundraise With AARVI', 'How To Fundraise With AARVI', '2020-10-10 10:46:00', '2020-10-10 10:46:00'),
(115, 'Previous AARVI Fundraisers', 'Previous AARVI Fundraisers', '2020-10-10 10:46:01', '2020-10-10 10:46:01'),
(116, 'Partnership With US', 'Partnership With US', '2020-10-14 06:30:45', '2020-10-14 06:30:45'),
(117, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.', '2020-10-14 06:30:45', '2020-10-14 06:30:45'),
(118, 'Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.', 'Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.', '2020-10-14 06:30:45', '2020-10-14 06:30:45'),
(119, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', '2020-10-14 06:30:45', '2020-10-14 06:30:45'),
(120, 'build Up Your Career', 'build Up Your Career', '2020-10-14 06:30:45', '2020-10-14 06:30:45'),
(121, 'Donate to Aarvi Foundation', 'Donate to Aarvi Foundation', '2020-10-14 06:30:45', '2020-10-14 06:30:45'),
(122, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.\r\n                            Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.\r\n                            Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.', '2020-10-14 06:30:45', '2020-10-14 06:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `subtitle`, `address`, `date`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sr. Officer/Officer, Finance Department', 'Sr. Officer/Officer, Finance Department', 'Gulshan-2 Dhaka Bangladesh', '2020-10-10', 'career_1_1602225274.jpg', 1, '2020-10-09 06:34:34', '2020-10-09 06:34:34'),
(2, 'Sr. Officer/Officer, Web Devolment', 'Sr. Officer/Officer, Web Devolment', 'Gulshan-2 Dhaka Bangladesh', '2020-10-27', 'career_2_1602225340.jpg', 1, '2020-10-09 08:28:46', '2020-10-09 08:28:46'),
(4, 'Digital Teacher', 'Digital Teacher', 'Gulshan-2 Dhaka Bangladesh', '2020-10-24', 'career_4_1602235263.jpg', 1, '2020-10-09 09:21:03', '2020-10-09 09:21:03'),
(5, 'Sr. Officer/Officer, Finance Department', 'Sr. Officer/Officer, Finance Department', 'Gulshan-2 Dhaka Bangladesh', '2020-11-12', 'career_5_1602235294.jpg', 1, '2020-10-09 09:21:34', '2020-10-09 09:21:34'),
(6, 'Sr. Officer/Officer, Finance Department', 'Sr. Officer/Officer, Finance Department', 'Gulshan-2 Dhaka Bangladesh', '2020-11-25', 'career_6_1602235340.jpg', 1, '2020-10-09 09:22:20', '2020-10-09 09:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `causes`
--

CREATE TABLE `causes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `causes`
--

INSERT INTO `causes` (`id`, `title`, `subtitle`, `details`, `country`, `date`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'COVID-19 Relief Fund', 'Lorem ipsum dolor sit amet, eiustempor adipiscing elit, sed do eiuseiusm tempor tempor incididunt ut labore.', 'Lorem ipsum dolor sit amet, eiustempor adipiscing elit, sed do eiuseiusm tempor tempor incididunt ut labore.', 'Bangladesh', '2020-10-15', 'cause_1_1602320890.jpg', 1, '2020-10-10 10:19:42', '2020-10-10 10:19:42'),
(3, 'Zakat for Education', 'Lorem ipsum dolor sit amet, eiustempor adipiscing elit, sed do eiuseiusm tempor tempor incididunt ut labore', '<div><div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;eiustempor&nbsp;adipiscing&nbsp;elit,&nbsp;sed&nbsp;do&nbsp;eiuseiusm&nbsp;tempor&nbsp;tempor&nbsp;incididunt&nbsp;ut&nbsp;labore</div></div><br>', 'Bangladesh', '2020-10-11', 'cause_3_1602321123.jpg', 1, '2020-10-10 10:19:29', '2020-10-10 10:19:29'),
(4, 'Study Tour', 'Lorem ipsum dolor sit amet, eiustempor adipiscing elit, sed do eiuseiusm tempor tempor incididunt ut labore.', '<div><div>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;eiustempor&nbsp;adipiscing&nbsp;elit,&nbsp;sed&nbsp;do&nbsp;eiuseiusm&nbsp;tempor&nbsp;tempor&nbsp;incididunt&nbsp;ut&nbsp;labore.</div></div><br>', 'Bangladesh', '2020-10-12', 'cause_4_1602321165.jpg', 1, '2020-10-10 10:19:11', '2020-10-10 10:19:11'),
(5, 'Man Returns Home After 9 Years ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the ', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book.<br>', 'Bangladesh', '2020-10-09', 'cause_5_1602321292.jpg', 1, '2020-10-10 10:23:06', '2020-10-10 10:23:06'),
(6, 'Volunteers Stepped Up as', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book.<br>', 'Bangladesh', '2020-10-08', 'cause_6_1602321362.jpg', 1, '2020-10-10 10:22:48', '2020-10-10 10:22:48'),
(7, 'First Virtual Feedback', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book.<br>', 'Bangladesh', '2020-10-07', 'cause_7_1602321403.jpg', 1, '2020-10-10 10:16:40', '2020-10-10 10:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `client_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_publish` int(11) NOT NULL DEFAULT 1,
  `client_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_title`, `client_url`, `client_logo`, `client_slug`, `client_publish`, `client_status`, `created_at`, `updated_at`) VALUES
(1, 'client', '#', 'client_1_1602670160.jpg', 'C205f86ce5079ebe', 1, 1, '2020-10-14 10:09:20', '2020-10-14 10:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `conus_id` bigint(20) UNSIGNED NOT NULL,
  `conus_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conus_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conus_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conus_sub` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conus_mess` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conus_slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conus_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactuses`
--

INSERT INTO `contactuses` (`conus_id`, `conus_name`, `conus_email`, `conus_phone`, `conus_sub`, `conus_mess`, `conus_slug`, `conus_status`, `created_at`, `updated_at`) VALUES
(1, 'Md. Saidul Islam Uzzal', 'uzzal@gmail.com', '0177121212121', NULL, NULL, 'www11', 1, '2020-06-15 07:58:49', NULL),
(2, 'Shahin Alom', 'shahin@gmail.com', '01988273232', NULL, NULL, 'ere1111', 1, '2020-06-15 07:58:49', NULL),
(3, 'Saidul Islam Uzzal', 'uzzalbd.creative@gmail.com', '01710726035', 'TestPurpose@wewe.sds', 'qeqwe qwewqewq ewqe wqeqw ewqe qwew qeqw', 'CON5f5374bad0113', 1, '2020-09-05 11:21:30', NULL),
(5, 'Rasel Ahamed', 'uzzalbd.creative@gmail.com', '01710726035', 'Test Purpose', 'qqwdqw eqwewq ewqe', 'CON5f5cb585be412', 1, '2020-09-12 11:48:21', NULL),
(6, 'admin', 'admin@gmail.com', '01723667788', 'subject', 'new message', 'CON5f7fd6abb92c8', 0, '2020-10-09 03:19:07', '2020-10-14 10:20:51'),
(7, 'name', 'name@gmail.com', '01723667788', 'subject', 'message', 'CON5f86e0ccd2cdb', 1, '2020-10-14 11:28:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `cont_id` bigint(20) UNSIGNED NOT NULL,
  `cont_phone1` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_phone2` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_phone3` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_phone4` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_email1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_email2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_email3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_email4` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_add1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_add2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_add3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_add4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`cont_id`, `cont_phone1`, `cont_phone2`, `cont_phone3`, `cont_phone4`, `cont_email1`, `cont_email2`, `cont_email3`, `cont_email4`, `cont_add1`, `cont_add2`, `cont_add3`, `cont_add4`, `cont_status`, `created_at`, `updated_at`) VALUES
(1, '+8801710726035', '', '', '', '', '', '', '', '', '', '', '', 1, '2019-10-03 01:00:00', '2020-01-23 06:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `copyrights`
--

CREATE TABLE `copyrights` (
  `copy_id` bigint(20) UNSIGNED NOT NULL,
  `copy_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_creator` int(11) NOT NULL,
  `copy_slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copy_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copyrights`
--

INSERT INTO `copyrights` (`copy_id`, `copy_title`, `copy_creator`, `copy_slug`, `copy_status`, `created_at`, `updated_at`) VALUES
(1, 'Copyright © 2019 Dashboard', 1, 'C98qw1287we2', 1, '2019-10-05 02:00:00', '2020-01-23 06:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `event_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_start` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_end` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_slug` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_subtitle`, `event_date`, `event_start`, `event_end`, `event_details`, `event_image`, `event_slug`, `event_status`, `created_at`, `updated_at`) VALUES
(1, 'One Day Online Fundraiser', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices.', '2020-10-10', '9:00 AM', '6:00 PM', '', 'event_1_1598778227.jpg', '2020-08-25-one-day-online-fundraiser', 1, '2020-08-30 11:57:44', '2020-08-30 11:57:44'),
(2, 'Blood Donate Campaign', 'Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse lorem.', '2020-10-11', '9:00 AM', '6:00 PM', '', 'event_2_1598788737.jpg', '2020-09-04-blood-donate-campaign', 1, '2020-08-30 11:58:57', '2020-08-30 11:58:58'),
(3, 'Skill Development ', 'Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse lorem.', '2020-10-12', '9:00 AM', '6:00 PM', 'Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse lorem.', 'event_3_1599308588.jpg', '2020-09-10-skill-development', 1, '2020-09-05 12:24:13', '2020-09-05 12:24:13'),
(4, 'Homeless Health Care', 'Lorem ipsum dolor sit et, consectelit sed do eiusmod tempor.', '2020-10-30', '11:00 AM', '11:30 AM', 'details', 'event_4_1602220987.jpg', '2020-10-30-homeless-health-care', 1, '2020-10-14 11:20:24', '2020-10-14 11:20:24'),
(5, 'AARVI‘s volunteer meetup', 'Lorem ipsum dolor sit et, consectelit sed do eiusmod tempor.', '2020-10-07', '10:30 AM', '11:30 AM', 'details', 'event_5_1602221151.jpg', '2020-10-07-aarvis-volunteer-meetup', 1, '2020-10-09 05:25:51', '2020-10-09 05:25:51'),
(6, 'Pledge Fundraising', 'Lorem ipsum dolor sit et, consectelit sed do eiusmod tempor.', '2020-10-06', '10:30 AM', '11:30 AM', 'details', 'event_6_1602221214.jpg', '2020-10-06-pledge-fundraising', 1, '2020-10-09 05:26:54', '2020-10-09 05:26:54'),
(7, 'COVID-19 Relief Fund', 'Lorem ipsum dolor sit et, consectelit sed do eiusmod tempor.', '2020-10-05', '10:30 AM', '11:30 AM', 'details', 'event_7_1602221269.jpg', '2020-10-05-covid-19-relief-fund', 1, '2020-10-09 05:27:49', '2020-10-09 05:27:49'),
(8, 'Food For Flood Victims', 'Lorem ipsum dolor sit et, consectelit sed do eiusmod tempor.', '2020-10-04', '10:30 AM', '11:30 AM', 'details', 'event_8_1602221327.jpg', '2020-10-04-food-for-flood-victims', 1, '2020-10-09 05:28:47', '2020-10-09 05:28:47'),
(9, 'Students Cultural Events', 'Lorem ipsum dolor sit et, consectelit sed do eiusmod tempor.', '2020-10-31', '10:30 AM', '11:30 AM', 'details', 'event_9_1602221367.jpg', '2020-10-31-students-cultural-events', 1, '2020-10-14 11:20:03', '2020-10-14 11:20:03'),
(10, 'Science Fair', 'Lorem ipsum dolor sit et, consectelit sed do eiusmod tempor.', '2020-10-30', '10:30 AM', '11:30 AM', 'details', 'event_10_1602221546.jpg', '2020-10-30-science-fair', 1, '2020-10-14 11:19:31', '2020-10-14 11:19:31');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `faq_id` bigint(20) UNSIGNED NOT NULL,
  `faq_question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_slug` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`faq_id`, `faq_question`, `faq_answer`, `faq_slug`, `faq_status`, `created_at`, `updated_at`) VALUES
(1, 'how are you?', 'fine', 'Q205f86ceb8ac95c', 1, '2020-10-14 10:11:04', '2020-10-14 10:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `fundcosts`
--

CREATE TABLE `fundcosts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fundcosts`
--

INSERT INTO `fundcosts` (`id`, `details`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Provides stationary for five students for one year', '$100', 1, '2020-10-09 11:57:57', '2020-10-09 11:58:17'),
(2, 'Provides the hygiene products needed for two children for one year', '$90', 1, '2020-10-09 12:56:58', NULL),
(3, 'Provides chairs and tables for one classroom', '$100', 1, '2020-10-14 10:03:03', '2020-10-14 10:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fun_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fun_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `title`, `details`, `image`, `fun_title`, `fun_details`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Help Bangladesh’s children break the poverty cycle today…', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n                        <br></div><div><br></div><div>Ut enim ad minim veniam, quis nostrud \r\nexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur.<br></div><div><br></div><div>\r\n                        Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n Sed ut perspiciatis unde omnis iste natus error sit voluptatem \r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab\r\n illo inventore veritatis et quasi architecto beatae vitae dicta sunt \r\nexplicabo. <br></div><div><br></div><div>                        Nemo enim ipsam voluptatem quia voluptas sit \r\naspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos \r\nqui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui \r\ndolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia\r\n non numquam eius modi tempora incidunt ut labore et dolore magnam \r\naliquam quaerat voluptatem.</div>', 'fund_2_1602243567.jpg', 'Get your community together, organise an event…', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \r\nminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip \r\nex ea commodo consequat.</div><div><br></div><div>\r\n                        Duis aute irure dolor in reprehenderit in \r\nvoluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur \r\nsint occaecat cupidatat non proident, sunt in culpa qui officia deserunt\r\n mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus \r\nerror sit voluptatem accusantium doloremque laudantium, totam rem \r\naperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto\r\n beatae vitae dicta sunt explicabo. </div>', 1, '2020-10-09 11:39:27', '2020-10-09 11:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `gallery_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gcate_id` int(11) NOT NULL,
  `gallery_photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_creator` int(11) NOT NULL,
  `gallery_status` int(11) NOT NULL DEFAULT 1,
  `gallery_home` int(11) DEFAULT NULL,
  `gallery_slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`gallery_id`, `gallery_title`, `gcate_id`, `gallery_photo`, `gallery_creator`, `gallery_status`, `gallery_home`, `gallery_slug`, `created_at`, `updated_at`) VALUES
(1, 'Aarvi Foundation Gallery', 1, 'gallery_1_1599820387.jpg', 1, 1, 1, 'G205f5b5263bab10', '2020-09-11 10:33:07', '2020-09-11 10:33:07'),
(2, 'Aarvi Foundation Gallery', 4, 'gallery_2_1599820397.jpg', 1, 1, 1, 'G205f5b526d7f09c', '2020-09-11 10:33:17', '2020-09-11 10:33:17'),
(3, 'Aarvi Foundation Gallery', 2, 'gallery_3_1599820407.jpg', 1, 1, 1, 'G205f5b52772516c', '2020-09-11 10:33:27', '2020-09-11 10:33:27'),
(4, 'Aarvi Foundation Gallery', 5, 'gallery_4_1599820423.jpg', 1, 1, 1, 'G205f5b5287287c2', '2020-09-11 10:33:43', '2020-09-11 10:33:43'),
(5, 'Aarvi Foundation Gallery', 2, 'gallery_5_1599820442.jpg', 1, 1, 1, 'G205f5b529addad1', '2020-09-11 10:34:02', '2020-09-11 10:34:02'),
(6, 'Aarvi Foundation Gallery', 3, 'gallery_6_1599820471.jpg', 1, 1, 1, 'G205f5b52b7aa2e5', '2020-09-11 10:34:31', '2020-09-11 10:34:31'),
(7, 'Aarvi Foundation Gallery', 2, 'gallery_7_1599820484.jpg', 1, 1, 1, 'G205f5b52c48c550', '2020-09-11 10:34:44', '2020-09-11 10:34:44'),
(8, 'Aarvi Foundation Gallery', 3, 'gallery_8_1599820496.jpg', 1, 1, 1, 'G205f5b52d01ec90', '2020-09-11 10:34:56', '2020-09-11 10:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `gcate_id` bigint(20) UNSIGNED NOT NULL,
  `gcate_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gcate_remarks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gcate_slug` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gcate_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`gcate_id`, `gcate_name`, `gcate_remarks`, `gcate_slug`, `gcate_status`, `created_at`, `updated_at`) VALUES
(1, 'Event', 'Foundation Image', 'event', 1, '2020-09-11 10:30:50', NULL),
(2, 'School', '...', 'school', 1, '2020-10-01 09:48:06', NULL),
(3, 'Volunteer', '...', 'volunteer', 1, '2020-10-01 09:49:03', NULL),
(4, 'Health', '...', 'health', 1, '2020-10-01 09:50:09', NULL),
(5, 'Others Program', '...', 'others-program', 1, '2020-10-01 09:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` bigint(20) NOT NULL,
  `phrase` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `phrase`, `image`, `created_at`, `updated_at`) VALUES
(31, 'contents/website/images/icon_founder_bt1.png', 'contents/website/images/icon_founder_bt1.png', '2020-10-08 12:46:21', '2020-10-08 12:46:21'),
(32, 'contents/website/images/icon_founder_bt2.png', 'contents/website/images/icon_founder_bt2.png', '2020-10-08 12:46:21', '2020-10-08 12:46:21'),
(33, 'contents/website/images/icon_founder_bt3.png', 'contents/website/images/icon_founder_bt3.png', '2020-10-08 12:46:21', '2020-10-08 12:46:21'),
(34, 'contents/website/images/icon_founder_bt4.png', 'contents/website/images/icon_founder_bt4.png', '2020-10-08 12:46:35', '2020-10-08 12:46:35'),
(35, 'contents/website/images/icon_founder_bt5.png', 'contents/website/images/icon_founder_bt5.png', '2020-10-08 12:46:35', '2020-10-08 12:46:35'),
(36, 'contents/website/images/volunteer_img.jpg', 'contents/website/images/volunteer_img.jpg', '2020-10-08 12:47:32', '2020-10-08 12:47:32'),
(37, 'contents/website/images/fundrise_img1.jpg', 'contents/website/images/fundrise_img1.jpg', '2020-10-09 03:03:44', '2020-10-09 03:03:44');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_09_115434_create_user_roles_table', 2),
(5, '2019_10_03_110128_create_social_media_table', 3),
(6, '2019_10_03_110441_create_contact_information_table', 4),
(7, '2019_10_03_110726_create_basics_table', 5),
(8, '2019_10_03_111242_create_copyrights_table', 6),
(9, '2019_10_03_111541_create_contactuses_table', 7),
(10, '2019_10_03_111751_create_banners_table', 8),
(12, '2019_10_07_121305_create_gallery_categories_table', 10),
(13, '2019_10_08_135020_create_galleries_table', 11),
(14, '2019_10_09_112129_create_tags_table', 12),
(15, '2019_10_09_113214_create_blog_categories_table', 13),
(16, '2019_10_09_144423_create_blog_posts_table', 14),
(17, '2019_11_06_113026_create_testimonials_table', 15),
(18, '2019_11_06_113603_create_newsletter_subscribers_table', 16),
(19, '2019_11_06_113847_create_pages_table', 17),
(20, '2019_11_06_114134_create_page_contents_table', 18),
(22, '2020_06_08_130628_create_events_table', 20),
(23, '2020_06_08_134112_create_services_table', 21),
(24, '2020_06_09_110932_create_clients_table', 22),
(26, '2020_06_12_150834_create_faqs_table', 24),
(27, '2020_09_08_114159_create_awards_table', 25),
(28, '2020_09_08_164932_create_apply_awards_table', 26),
(29, '2020_10_01_164341_create_partner_categories_table', 27),
(31, '2020_10_05_135229_create_blood_groups_table', 29),
(32, '2019_11_07_105710_create_teams_table', 30),
(33, '2019_10_03_112106_create_partners_table', 31),
(34, '2020_10_06_104258_create_team_categories_table', 32),
(36, '2020_10_07_213903_create_projecttypes_table', 33),
(39, '2020_10_08_102632_create_projects_table', 34),
(40, '2020_10_08_135921_create_video_categories_table', 35),
(41, '2020_06_09_124130_create_videos_table', 36),
(42, '2020_10_08_164739_create_abouts_table', 37),
(43, '2020_10_09_115733_create_careers_table', 38),
(44, '2020_10_09_163604_create_funds_table', 39),
(45, '2020_10_09_163633_create_fundcosts_table', 39),
(46, '2020_10_09_163650_create_prefunds_table', 39),
(47, '2020_10_10_104906_create_volunteerhistories_table', 40),
(48, '2020_10_10_104925_create_volunteerskills_table', 40),
(50, '2020_10_10_142938_create_causes_table', 41),
(51, '2020_10_12_121057_create_settings_table', 42),
(52, '2020_10_13_125336_create_our_missions_table', 43);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `ns_id` bigint(20) UNSIGNED NOT NULL,
  `ns_email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ns_slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ns_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`ns_id`, `ns_email`, `ns_slug`, `ns_status`, `created_at`, `updated_at`) VALUES
(1, 'uzzalbd.creative@gmail.com', 'S205f4c88d14d768', 1, '2020-08-31 05:21:21', NULL),
(2, 'uzzalbd.creative@gmail.com', 'S205f4c89191f448', 1, '2020-08-31 05:22:33', NULL),
(3, 'creative@gmail.com', 'S205f4c896955b2e', 1, '2020-08-31 05:23:53', NULL),
(4, 'bushra@gmail.com', 'S205f538390b5bf9', 1, '2020-09-05 12:24:48', NULL),
(5, 'uzzalbd.creative@gmail.com', 'S205f576d1140a8f', 1, '2020-09-08 11:37:53', NULL),
(6, 'creative@gmail.com', 'S205f576dc6c5c7d', 1, '2020-09-08 11:40:54', NULL),
(7, 'creativesystemltd@gmail.com', 'S205f576e44b26c1', 1, '2020-09-08 11:43:00', NULL),
(8, 'uzzalbd.creative@gmail.com', 'S205f5afe07c483c', 1, '2020-09-11 04:33:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `our_missions`
--

CREATE TABLE `our_missions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_missions`
--

INSERT INTO `our_missions` (`id`, `title`, `details`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(2, 'DONATE MONEY', 'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'ourmission_2_1602575168.png', 1, '2020-10-13 07:46:08', '2020-10-13 07:46:08'),
(3, 'BECOME VOLUNTEER', 'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'ourmission_3_1602575201.png', 1, '2020-10-13 07:46:41', '2020-10-13 07:46:41'),
(4, 'SPONSOR A CHILD', 'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'ourmission_4_1602575224.png', 1, '2020-10-13 07:47:04', '2020-10-13 07:47:04'),
(5, 'QUALITY', 'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'ourmission_5_1602575276.png', 1, '2020-10-13 07:47:56', '2020-10-13 07:47:56'),
(6, 'SUSTAINABILITY', 'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'ourmission_6_1602575305.png', 1, '2020-10-14 11:13:48', '2020-10-14 11:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_slug`, `page_status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home-page', 1, '2020-09-21 12:31:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `pc_id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `pc_title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pc_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pc_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pc_photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pc_slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pc_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`pc_id`, `page_id`, `pc_title`, `pc_subtitle`, `pc_details`, `pc_photo`, `pc_slug`, `pc_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Founder Message', NULL, '<h3>Leo Bushra Arabi</h3>\r\n\r\n\r\n\r\n\r\n\r\n\r\n                    \r\n\r\n\r\n\r\n\r\n\r\n<h6>Founder , AARVI Foundation</h6>\r\n\r\n\r\n\r\n\r\n\r\n\r\n                    \r\n\r\n\r\n\r\n\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n                    \r\n\r\n\r\n\r\n\r\n\r\n<p>Nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n                    \r\n\r\n\r\n\r\n\r\n\r\n<h5>Founder Message</h5>', 'founder_img1.jpg', 'founder-message', 1, '2020-09-21 13:08:29', '2020-09-21 13:08:29'),
(2, 1, 'JOIN OUR MISSION', 'How Can You Help', '<div class=\"col-lg-4 col-md-4 col-sm-6\">\r\n<div class=\"our_mission_content\">\r\n<div class=\"our_mission_content_icon\">\r\n<img src=\"images/icon_founder_bt1.png\" alt=\"\" class=\"img-fluid\" />\r\n</div>\r\n<h4>DONATE MONEY</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"col-lg-4 col-md-4 col-sm-6 mmt_30\">\r\n<div class=\"our_mission_content\">\r\n<div class=\"our_mission_content_icon our_mission_content_icon2\">\r\n<img src=\"images/icon_founder_bt2.png\" alt=\"\" class=\"img-fluid\" />\r\n</div>\r\n<h4>BECOME VOLUNTEER</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"col-lg-4 col-md-4 col-sm-6 mmt_30 smmt_30\">\r\n<div class=\"our_mission_content\">\r\n<div class=\"our_mission_content_icon our_mission_content_icon3\">\r\n<img src=\"{{asset(\'contents/website\')}}/images/icon_founder_bt3.png\" alt=\"\" class=\"img-fluid\" />\r\n</div>\r\n<h4>SPONSOR A CHILD</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n</div>\r\n</div>', NULL, 'our-mision', 1, '2020-10-07 05:15:40', '2020-10-07 05:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `partner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_publish` int(11) NOT NULL DEFAULT 1,
  `partner_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`partner_id`, `partner_type`, `partner_name`, `partner_url`, `partner_logo`, `partner_address`, `start_date`, `end_date`, `payment_condition`, `payment_comment`, `payment_date`, `partner_slug`, `partner_publish`, `partner_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'name4', '#', 'partner_1_1602929997.png', 'abc', '2020-10-06', '2020-10-07', '0', '', '', 'P205f7b1baa0f9ab', 1, 1, '2020-10-05 13:12:10', '2020-10-17 10:19:57'),
(3, '2', 'name3', '#', 'partner_3_1602929982.png', 'abc', '2020-10-06', '2020-10-07', '1', 'abc', '2020-10-08', 'P205f7b1bd88c094', 1, 1, '2020-10-05 13:12:56', '2020-10-17 10:19:42'),
(4, '1', 'name2', '#', 'partner_4_1602929958.png', 'abc', '2020-10-06', '2020-10-07', '0', '', '', 'P205f7b1c490c1fe', 1, 1, '2020-10-05 13:14:49', '2020-10-17 10:19:18'),
(6, '2', 'name1', '#', 'partner_6_1602929940.png', 'address', '2020-10-07', '2020-10-08', '1', 'description', '2020-10-21', 'P205f7c1a7a437ea', 1, 1, '2020-10-06 07:19:22', '2020-10-17 10:19:00'),
(7, '2', 'name5', '#', 'partner_7_1602929919.png', 'abc', '2020-10-13', '2020-10-14', '1', 'abc', '2020-10-20', 'P205f7c4686e2c5b', 1, 1, '2020-10-06 10:27:18', '2020-10-17 10:18:39'),
(8, '2', 'name6', '#', 'partner_8_1602929904.png', 'abc', '2020-10-14', '2020-10-15', '0', '', '', 'P205f7c47746d94e', 1, 1, '2020-10-06 10:31:16', '2020-10-17 10:18:24'),
(10, '2', 'name7', '#', 'partner_10_1602929890.png', 'abc', '2020-10-14', '2020-10-15', '0', '', '', 'P205f7c629206d51', 1, 1, '2020-10-06 12:26:58', '2020-10-17 10:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `partner_categories`
--

CREATE TABLE `partner_categories` (
  `pcate_id` bigint(20) UNSIGNED NOT NULL,
  `pcate_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcate_remarks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcate_slug` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcate_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_categories`
--

INSERT INTO `partner_categories` (`pcate_id`, `pcate_name`, `pcate_remarks`, `pcate_slug`, `pcate_status`, `created_at`, `updated_at`) VALUES
(1, 'Individual', '...', 'individual', 0, '2020-10-06 11:31:23', '2020-10-07 13:16:17'),
(2, 'Company', '...', 'company', 1, '2020-10-06 11:31:49', '2020-10-06 12:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('uzzalbd.creative@gmail.com', '$2y$10$O3aDJ6Jd1ggblvOdOL98ne2mI0tYC/g2WebALYxDtfWdS5XiepU8y', '2019-09-09 07:11:28'),
('uzzalbd.creative@gmail.com', '$2y$10$O3aDJ6Jd1ggblvOdOL98ne2mI0tYC/g2WebALYxDtfWdS5XiepU8y', '2019-09-09 07:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `prefunds`
--

CREATE TABLE `prefunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prefunds`
--

INSERT INTO `prefunds` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TARA FUND RISING 2015', 'prefund_1_1602248876.jpg', 1, '2020-10-09 13:07:56', '2020-10-09 13:07:57'),
(2, 'TARA FUND RISING 2015', 'prefund_2_1602248933.jpg', 1, '2020-10-09 13:08:53', '2020-10-09 13:08:53'),
(3, 'TARA FUND RISING 2014', 'prefund_3_1602248955.jpg', 1, '2020-10-09 13:09:15', '2020-10-09 13:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `details`, `start_date`, `end_date`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'MEET CRITICAL NEEDS', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s.<br>', '2020-10-08', '2020-10-10', 'project_6_1602142654.png', 1, '2020-10-08 07:37:33', '2020-10-08 07:37:34'),
(7, 'MEET CRITICAL NEEDS', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s.<br>', '2020-10-15', '2020-10-17', 'project_7_1602142616.png', 1, '2020-10-08 07:36:56', '2020-10-08 07:36:56'),
(8, 'Help Children Rise out of Poverty', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s.<br>', '2020-10-08', '2020-10-20', 'project_8_1602142576.jpg', 1, '2020-10-08 07:36:16', '2020-10-08 07:36:16'),
(9, 'Send a Child in India to School for a Year', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s.<br>', '2020-10-10', '2020-10-05', 'project_9_1602142522.jpg', 1, '2020-10-08 07:35:22', '2020-10-08 07:35:22'),
(10, 'Provide women and girls education', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s.<br>', '2020-10-12', '2020-10-06', 'project_10_1602142428.jpg', 1, '2020-10-08 07:33:47', '2020-10-08 07:33:48'),
(11, 'Train Women to Earn poverty.', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s.<br>', '2020-10-15', '2020-10-07', 'project_11_1602142047.jpg', 1, '2020-10-08 07:27:27', '2020-10-08 07:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `projecttypes`
--

CREATE TABLE `projecttypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projecttypes`
--

INSERT INTO `projecttypes` (`id`, `title`, `details`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Food Relief Fund', 'Lorem ipsum dolor sit amconsectetur adipiscing elit sed.', 1, '2020-10-07 16:22:09', '2020-10-07 16:22:09', NULL),
(2, 'Life Changing Care', 'Lorem ipsum dolor sit amconsectetur adipiscing elit sed.', 1, '2020-10-07 16:31:05', '2020-10-08 02:18:55', NULL),
(4, 'Education Fund', 'Lorem ipsum dolor sit amconsectetur adipiscing elit sed.', 1, '2020-10-08 01:43:12', '2020-10-08 02:19:18', NULL),
(5, 'Medical Fund', 'Lorem ipsum dolor sit amconsectetur adipiscing elit sed.', 1, '2020-10-08 02:19:45', NULL, NULL),
(6, 'Save Human Life', 'Lorem ipsum dolor sit amconsectetur adipiscing elit sed.', 1, '2020-10-08 02:20:11', NULL, NULL),
(7, 'Help Children Rise', 'Lorem ipsum dolor sit amconsectetur adipiscing elit sed.', 1, '2020-10-08 02:20:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `service_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_slug` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'founder_name', 'Leo Bushra Arabi', '2020-10-12 01:10:28', '2020-10-12 11:20:37'),
(3, 'institution_name', 'AARVI Foundation', '2020-10-12 00:10:28', '2020-10-12 08:22:51'),
(4, 'founder_message', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \r\nminim veniam, quis nostrud exercitation ullamco laboris.Nisi ut aliquip ex ea commodo consequat. Duis \r\naute irure dolor in reprehenderit in voluptate velit esse cillum dolore \r\neu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n Sed ut perspiciatis unde omnis.</p>', '2020-10-12 00:11:37', '2020-10-13 05:43:58'),
(5, 'founder_image', 'uploads/home-page/1680345833653469.jpg', '2020-10-11 23:11:37', '2020-10-12 11:37:44'),
(6, 'founder_desig', 'Founder', '2020-10-12 01:33:36', '2020-10-12 11:20:38'),
(7, 'founder_message_title', 'Founder Message', '2020-10-12 00:36:05', '2020-10-12 08:41:17'),
(8, 'miss_head_title', 'JOIN OUR MISSION', '2020-10-11 23:46:01', '2020-10-12 11:32:02'),
(9, 'miss_head_subtitle', 'How Can You Help', '2020-10-11 23:46:01', '2020-10-12 11:32:02'),
(10, 'spon_title', 'SPONSOR A CHILD', '2020-10-11 23:46:54', '2020-10-12 11:32:02'),
(11, 'spon_subtitle', 'Equip children for a smarter future!', '2020-10-11 22:46:54', '2020-10-12 11:32:02'),
(12, 'spon_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas. \r\n\r\n\r\n<br />', '2020-10-11 23:46:54', '2020-10-16 09:31:34'),
(13, 'spon_image', 'uploads/home-page/1680340067329716.jpg', '2020-10-11 23:46:54', '2020-10-12 10:06:05'),
(14, 'spon_url', 'https://www.youtube.com/watch?v=1sZXfANXi6w', '2020-10-12 02:46:54', '2020-10-12 11:38:08'),
(17, 'prog_title', 'Education Program', '2020-10-11 23:49:06', '2020-10-12 11:32:02'),
(18, 'prog_subtitle', 'Equip children for a smarter future!', '2020-10-12 01:49:06', '2020-10-12 11:32:02'),
(19, 'prog_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas. \r\n<br />', '2020-10-12 00:49:06', '2020-10-16 09:31:34'),
(20, 'prog_image', 'uploads/home-page/1680340162554652.jpg', '2020-10-11 23:49:06', '2020-10-12 10:07:36'),
(21, 'vol_title', 'Join US for volunteer program.', '2020-10-11 23:44:34', '2020-10-14 06:28:47'),
(22, 'vol_details', 'Join our volunteer platform under the Youth Development Program that provides the opportunity to empower the youth, facilitate volunteerism, foster self-resilience and growth as well as equipping them with the necessary tools to shape them for a meaningful future. \r\n<br />', '2020-10-12 01:44:34', '2020-10-16 09:38:36'),
(23, 'cause_head_title', 'Our Projects', '2020-10-12 00:58:15', '2020-10-16 06:06:36'),
(24, 'cause_head_subtitle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore recent case.', '2020-10-12 01:58:15', '2020-10-12 11:59:19'),
(25, 'about_head_title', 'We serve the world through Charity', '2020-10-15 12:12:49', '2020-10-12 12:19:26'),
(26, 'about_head_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. \r\n<br />', '2020-10-14 12:12:49', '2020-10-16 09:46:41'),
(27, 'vision_head_title', 'Our Vision & Mission', '2020-10-12 00:13:31', '2020-10-12 12:19:26'),
(28, 'vision_head_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-10-13 12:13:31', '2020-10-12 12:19:26'),
(29, 'vol_head_details', '<p>There are lots of ways to get involved with Aarvi. Help share our campaigns on social media, create your own campaign, contact to see if you can volunteer or find a job. Be our Partner. Donate to our Cause and Shop with us to support the locals. <br /></p>\r\n<p>This Earth deserves a Hero. <br /></p>\r\n<p>It needs YOU.</p>', '2020-10-13 12:51:41', '2020-10-16 09:14:37'),
(30, 'vol_form_title', 'Join our Team', '2020-10-14 12:51:41', '2020-10-12 12:56:00'),
(31, 'vol_form_subtitle', 'Our yearly membership fee is BDT 200. Email us the Confirmation code to', '2020-10-13 12:51:41', '2020-10-12 12:56:00'),
(32, 'vol_form_email', 'volunteer@aarvifoundation.com', '2020-10-12 02:51:41', '2020-10-12 12:56:00'),
(33, 'vol_form_phone', '0171-0001111', '2020-10-12 03:51:41', '2020-10-12 12:56:00'),
(34, 'vol_form_web_url', 'info@aarvifoundation.com', '2020-10-12 00:51:41', '2020-10-12 12:56:00'),
(35, 'car_head_details', '<p>There are lots of ways to get involved with Aarvi. Help share our campaigns on social media, create your own campaign, contact to see if you can volunteer or find a job. Be our Partner. Donate to our Cause and Shop with us to support the locals. <br /></p>\r\n<p>This Earth deserves a Hero. <br /></p>\r\n<p>\r\nIt needs YOU.</p>', '2020-10-11 23:05:30', '2020-10-16 09:07:27'),
(36, 'car_miss_title', 'JOIN OUR MISSION', '2020-10-12 01:05:30', '2020-10-12 13:07:01'),
(37, 'car_miss_subtitle', 'How Can You Help', '2020-10-12 00:05:30', '2020-10-12 13:07:01'),
(38, 'how_fund_title', 'How To Fundraise With AARVI', '2020-10-12 23:37:10', '2020-10-13 04:38:59'),
(39, 'pre_fund_title', 'Previous AARVI Fundraisers', '2020-10-12 23:37:10', '2020-10-13 04:39:00'),
(40, 'pre_fund_subtitle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-10-13 00:37:10', '2020-10-13 04:39:00'),
(41, 'apply_form_title', 'Apply For Awards', '2020-10-12 22:53:09', '2020-10-13 04:55:06'),
(42, 'apply_form_subtitle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-10-12 23:53:09', '2020-10-13 04:55:06'),
(43, 'donate_button_title', 'Donate to AAravi Foundation', '2020-10-12 23:53:09', '2020-10-13 04:55:06'),
(44, 'donate_button_subtitle', 'Lorem ipsum dolor sit am consectetur adipiscing elit, sed tempor incididunt ut labore et dolore magna aliqua.', '2020-10-12 22:53:09', '2020-10-13 04:55:06'),
(45, 'phone_one', '+88 017 2525 9955', '2020-10-12 22:05:10', '2020-10-13 05:11:43'),
(46, 'phone_two', '+88 017 2525 9956', '2020-10-12 23:05:10', '2020-10-13 05:11:43'),
(47, 'email_one', 'theaarvifoundation@gmail.com', '2020-10-12 23:05:10', '2020-10-13 05:11:43'),
(48, 'email_two', 'theaarvifoundation@gmail.com', '2020-10-12 22:05:10', '2020-10-13 05:11:43'),
(49, 'con_address', 'House No. 8/A/10 (Level-6), Road: #13, Dhanmondi,Dhaka - 1209', '2020-10-12 22:05:10', '2020-10-13 05:11:43'),
(50, 'message_form_title', 'Leave Us a Massage', '2020-10-12 22:05:10', '2020-10-13 05:11:43'),
(51, 'message_form_subtitle', 'With you, we can build a better nation. To volunteer or contribute to our cause, send us a message. We will get back to you soon.', '2020-10-12 22:05:10', '2020-10-13 05:11:43'),
(52, 'sub_title', 'Subscribe Us', '2020-10-12 22:30:00', '2020-10-13 05:33:27'),
(53, 'sub_subtitle', 'You will get the latest news and updates about us', '2020-10-14 05:30:00', '2020-10-13 05:33:27'),
(54, 'partner_title', 'Our Partners', '2020-10-15 05:30:00', '2020-10-13 05:33:27'),
(55, 'aarvi_details', '<div><p>Lorem ipsum dolor sit coiscing elit, sed do eiusmod incididunt ut labore et dolore magna aliqua.</p>\r\n                          <p>Quis ipsum suspendissetrices gravida. Risus commodo.</p></div>', '2020-10-15 05:30:00', '2020-10-13 05:33:27'),
(56, 'copyright', 'Copyright © 2020', '2020-10-15 05:30:00', '2020-10-13 05:33:27'),
(57, 'reserved_by', 'Aarvi-Foundation', '2020-10-14 05:30:00', '2020-10-13 05:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `sm_id` bigint(20) UNSIGNED NOT NULL,
  `sm_facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_google` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_pinterest` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_vimeo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_skype` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_rss` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`sm_id`, `sm_facebook`, `sm_twitter`, `sm_linkedin`, `sm_google`, `sm_youtube`, `sm_pinterest`, `sm_instagram`, `sm_vimeo`, `sm_skype`, `sm_rss`, `sm_status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/bushaarsh', '#', '#', NULL, '#', '#', '#', NULL, NULL, NULL, 1, '2019-10-03 00:00:00', '2020-09-21 14:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `tag_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_slug` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_creator` int(11) NOT NULL,
  `tag_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcate_id` int(11) DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_donor` tinyint(1) NOT NULL DEFAULT 0,
  `membership_status` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `tcate_id`, `designation`, `t_name`, `email`, `phone`, `blood_group`, `blood_donor`, `membership_status`, `start_date`, `end_date`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 'member1', 2, 'member', 'team', 'member@gmail.com', '01723667788', '1', 1, 1, '2020-10-06', '2020-10-08', 'team_5_1602317753.jpg', 1, '2020-10-10 08:15:53', '2020-10-10 08:15:54'),
(7, 'member2', 1, 'abc', 'abc', 'member2@gmail.com', '01723667789', '1', 1, 1, '2020-10-08', '2020-10-09', 'team_7_1602317773.jpg', 1, '2020-10-10 08:16:12', '2020-10-10 08:16:13'),
(8, 'member3', 1, 'abc', 'abc', 'member3@gmail.com', '01723667798', '6', 0, 0, '2020-10-07', '2020-10-08', 'team_8_1602317801.jpg', 1, '2020-10-10 08:16:41', '2020-10-10 08:16:41'),
(9, 'member4', 2, 'abc', 'abc', 'member4@gmail.com', '01723667701', '7', 1, 0, '2020-10-14', '2020-10-15', 'team_9_1602317819.jpg', 1, '2020-10-10 08:16:59', '2020-10-10 08:16:59'),
(10, 'member5', 3, 'abc', 'abc', 'member5@gmail.com', '01723667777', '1', 1, 0, '2020-10-27', '2020-10-28', 'team_10_1602317838.jpg', 1, '2020-10-10 08:17:18', '2020-10-10 08:17:18'),
(11, 'member6', 3, 'abc', 'abc', 'member6@gmail.com', '01723667711', '8', 1, 1, '2020-10-04', '2020-10-05', 'team_11_1602317854.jpg', 1, '2020-10-10 08:17:34', '2020-10-10 08:17:34'),
(12, 'member7', 4, 'abc', 'abc', 'member7@gmail.com', '01723667788', '5', 0, 0, '2020-10-14', '2020-10-23', 'team_12_1602317869.jpg', 1, '2020-10-10 08:17:48', '2020-10-10 08:17:49'),
(13, 'member8', 5, 'abc', 'abc', 'member8@gmail.com', '01723667701', '2', 1, 1, '2020-09-29', '2020-10-29', 'team_13_1602317884.jpg', 1, '2020-10-14 10:50:12', '2020-10-14 10:50:12'),
(14, 'member9', 5, 'member', 'team', 'member9@gmail.com', '01723667707', '4', 1, 0, '2020-10-15', '2020-10-24', 'team_14_1602672690.jpg', 1, '2020-10-14 10:51:30', '2020-10-14 10:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `team_categories`
--

CREATE TABLE `team_categories` (
  `tcate_id` bigint(20) UNSIGNED NOT NULL,
  `tcate_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcate_remarks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcate_slug` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcate_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_categories`
--

INSERT INTO `team_categories` (`tcate_id`, `tcate_name`, `tcate_remarks`, `tcate_slug`, `tcate_status`, `created_at`, `updated_at`) VALUES
(1, 'Executive Team', 'executive', 'executive-team', 1, '2020-10-06 05:12:14', '2020-10-06 05:25:38'),
(2, 'Volunteer Team', '...', 'volunteer-team', 1, '2020-10-06 05:13:12', NULL),
(3, 'Event Team', '...', 'event-team', 1, '2020-10-06 05:13:28', NULL),
(4, 'health team', '...', 'health-team', 1, '2020-10-06 05:13:41', NULL),
(5, 'Others program team', '...', 'others-program-team', 1, '2020-10-06 05:14:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `tm_id` bigint(20) UNSIGNED NOT NULL,
  `tm_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tm_designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tm_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`tm_id`, `tm_name`, `tm_designation`, `tm_company`, `tm_review`, `tm_image`, `tm_slug`, `tm_status`, `created_at`, `updated_at`) VALUES
(1, 'client', 'client', 'company', '<div>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s<br /></div>', 'client_1_1602851801.jpg', 'T5f86cdeaca853', 1, '2020-10-14 10:07:38', '2020-10-16 12:36:41'),
(3, 'client', 'client', 'company', '<div><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s<br /></div>', 'client_3_1602851846.jpg', 'T5f89934b03093', 1, '2020-10-16 12:34:19', '2020-10-16 12:37:26'),
(4, 'client', 'client', 'company', '<div><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s<br /></div>', 'client_4_1602851858.jpg', 'T5f899359ce95c', 1, '2020-10-16 12:34:33', '2020-10-16 12:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 5,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `photo`, `role_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Saidul Islam Uzzal', '01710726035', 'uzzalbd', 'uzzalbd.creative@gmail.com', NULL, '$2y$10$FT6089P.vxr3rIXi7ZDf7Oq61jcS2GafizxlTnRkpVkcJrdKTjKHq', NULL, 'user_1_1602668249.jpg', 1, 1, '2020-10-14 09:37:29', '2020-10-14 09:37:30'),
(2, 'Creative Shaper', '01966999777', 'creative', 'creative@gmail.com', NULL, '$2y$10$VE28KKsZRyokLng9jzgfdO.0MmjW6wskIIQxANBwsCBfKyAeh9wdO', NULL, 'user_2_1571380499.png', 2, 1, '2019-10-18 06:34:59', '2019-10-18 06:35:00'),
(3, 'Shahin Alom', '01725191028', 'UA3', 'shahin@gmail.com', NULL, '$2y$10$5.DM97tb4ybabUVEgIgg5.1iEjkxVbvkTjJrtZ9Slkq9ucu.ZgTqC', NULL, NULL, 5, 1, '2020-09-11 08:53:11', '2020-09-11 08:53:11'),
(4, 'Shahin Alom', '01746330213', 'UA4', 'sahin@gmail.com', NULL, '$2y$10$9Ty7BoJP6eRvfKrGZG4bI.7Dj3xrLZfZoUb1KyZhorHj0Kw57Wnku', NULL, NULL, 5, 1, '2020-09-12 11:33:46', '2020-09-12 11:33:46'),
(5, 'admin', '01723667788', 'UA5', 'admin@gmail.com', NULL, '$2y$10$FvrQ4ZVTTQoNdbq/dgGiFOy0/Ldmr6Zu83Nh0466QEOG.aH6fB3He', NULL, NULL, 5, 1, '2020-10-10 06:46:08', '2020-10-10 06:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  `role_slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `role_status`, `role_slug`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 1, '77wewew88', '2019-09-09 01:00:00', NULL),
(2, 'Admin', 1, 'wqewe55', '2019-09-08 23:00:00', NULL),
(3, 'Author', 1, 'urwwewe87e33', '2019-09-09 00:00:00', NULL),
(4, 'Editor', 1, 'wety8897qqw', '2019-09-09 01:00:00', NULL),
(5, 'Volunteer', 1, 'wewet77612uy', '2019-09-09 01:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` int(11) NOT NULL,
  `video_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `cate_id`, `video_title`, `video_url`, `image`, `video_slug`, `video_status`, `created_at`, `updated_at`) VALUES
(1, 2, 'We\'ve funded $230,00 for 10M children around the world', 'https://www.youtube.com/watch?v=1sZXfANXi6w', 'video_1_1602150819.jpg', 'V205f7ee03f5eec0', 1, '2020-10-08 09:47:43', '2020-10-08 09:53:39'),
(2, 2, 'We\'ve funded $230,00 for 10M children around the world', 'https://www.youtube.com/watch?v=1sZXfANXi6w', 'video_2_1602150926.jpg', 'V205f7ee20e7b72d', 1, '2020-10-08 09:55:26', '2020-10-08 09:55:26'),
(3, 2, 'We\'ve funded $230,00 for 10M children around the world', 'https://www.youtube.com/watch?v=1sZXfANXi6w', 'video_3_1602150939.jpg', 'V205f7ee21b35614', 1, '2020-10-08 09:55:39', '2020-10-08 09:55:39'),
(4, 2, 'We\'ve funded $230,00 for 10M children around the world', 'https://www.youtube.com/watch?v=1sZXfANXi6w', 'video_4_1602150954.jpg', 'V205f7ee22a95c58', 1, '2020-10-08 09:55:54', '2020-10-08 09:55:54'),
(5, 2, 'We\'ve funded $230,00 for 10M children around the world', 'https://www.youtube.com/watch?v=1sZXfANXi6w', 'video_5_1602150997.jpg', 'V205f7ee25541165', 1, '2020-10-08 09:56:37', '2020-10-08 09:56:37'),
(6, 2, 'We\'ve funded $230,00 for 10M children around the world', 'https://www.youtube.com/watch?v=1sZXfANXi6w', 'video_6_1602151008.jpg', 'V205f7ee2604345b', 1, '2020-10-08 09:56:48', '2020-10-08 09:56:48'),
(7, 2, 'We\'ve funded $230,00 for 10M children around the world', 'https://www.youtube.com/watch?v=1sZXfANXi6w', 'video_7_1602151046.jpg', 'V205f7ee286066f2', 1, '2020-10-08 09:57:26', '2020-10-08 09:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `video_categories`
--

CREATE TABLE `video_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_categories`
--

INSERT INTO `video_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'homepage', 0, '2020-10-08 08:24:30', '2020-10-08 09:15:38'),
(2, 'instagram', 1, '2020-10-08 08:16:36', NULL),
(4, 'aboutus', 1, '2020-10-08 09:15:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `volunteerhistories`
--

CREATE TABLE `volunteerhistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteerhistories`
--

INSERT INTO `volunteerhistories` (`id`, `title`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'More People More impact', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Quis ipsum \r\nsuspendisse ultrices gravida. Risus commodo viverra maecenas accumsan \r\nlacus vel facilisis.</div><div><br></div><div>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </div><br><br>', 'volunteerhistory_1_1602307759.jpg', 1, '2020-10-10 05:29:18', '2020-10-10 05:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `volunteerskills`
--

CREATE TABLE `volunteerskills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteerskills`
--

INSERT INTO `volunteerskills` (`id`, `title`, `skill`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Working in this role will help to develop the following skills and experience:', '<ol><li>Creativity</li><li>Curiosity</li><li>Decisiveness</li><li>Exercising professional judgement</li><li>Flexibility</li><li>Integrity</li><li>Interpersonal sensitivity</li><li>Knowledge Sharing</li><li>Leadership</li><li>Multi-tasking</li><li>Organisation</li><li>Perseverance</li><li>Persuasion</li><li>Planning and organising</li><li>Problem solving<br></li></ol><br>', 'volunteerskill_1_1602309959.jpg', 1, '2020-10-10 06:15:55', '2020-10-10 06:15:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_awards`
--
ALTER TABLE `apply_awards`
  ADD PRIMARY KEY (`aa_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `basics`
--
ALTER TABLE `basics`
  ADD PRIMARY KEY (`basic_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`bcate_id`),
  ADD UNIQUE KEY `blog_categories_bcate_name_unique` (`bcate_name`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `blog_posts_post_title_unique` (`post_title`);

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `body_texts`
--
ALTER TABLE `body_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `causes`
--
ALTER TABLE `causes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `clients_client_title_unique` (`client_title`),
  ADD UNIQUE KEY `clients_client_slug_unique` (`client_slug`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`conus_id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `copyrights`
--
ALTER TABLE `copyrights`
  ADD PRIMARY KEY (`copy_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `fundcosts`
--
ALTER TABLE `fundcosts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`gcate_id`),
  ADD UNIQUE KEY `gallery_categories_gcate_name_unique` (`gcate_name`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`ns_id`);

--
-- Indexes for table `our_missions`
--
ALTER TABLE `our_missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `pages_page_name_unique` (`page_name`);

--
-- Indexes for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`partner_id`),
  ADD UNIQUE KEY `partners_partner_name_unique` (`partner_name`),
  ADD UNIQUE KEY `partners_partner_slug_unique` (`partner_slug`);

--
-- Indexes for table `partner_categories`
--
ALTER TABLE `partner_categories`
  ADD PRIMARY KEY (`pcate_id`),
  ADD UNIQUE KEY `partner_categories_pcate_name_unique` (`pcate_name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `prefunds`
--
ALTER TABLE `prefunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projecttypes`
--
ALTER TABLE `projecttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD UNIQUE KEY `tags_tag_name_unique` (`tag_name`),
  ADD UNIQUE KEY `tag_slug` (`tag_slug`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_email_unique` (`email`);

--
-- Indexes for table `team_categories`
--
ALTER TABLE `team_categories`
  ADD PRIMARY KEY (`tcate_id`),
  ADD UNIQUE KEY `team_categories_tcate_name_unique` (`tcate_name`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteerhistories`
--
ALTER TABLE `volunteerhistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteerskills`
--
ALTER TABLE `volunteerskills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apply_awards`
--
ALTER TABLE `apply_awards`
  MODIFY `aa_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `award_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `ban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `body_texts`
--
ALTER TABLE `body_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `causes`
--
ALTER TABLE `causes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `conus_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `faq_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fundcosts`
--
ALTER TABLE `fundcosts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `gallery_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `gcate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `our_missions`
--
ALTER TABLE `our_missions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `partner_categories`
--
ALTER TABLE `partner_categories`
  MODIFY `pcate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prefunds`
--
ALTER TABLE `prefunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `projecttypes`
--
ALTER TABLE `projecttypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `team_categories`
--
ALTER TABLE `team_categories`
  MODIFY `tcate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `tm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `video_categories`
--
ALTER TABLE `video_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `volunteerhistories`
--
ALTER TABLE `volunteerhistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `volunteerskills`
--
ALTER TABLE `volunteerskills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
