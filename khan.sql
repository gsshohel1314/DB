-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 06:01 AM
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
-- Database: `khan`
--

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
(11, 'YOUR PROJECT HASSLE-FREE', 'CREATIVE / MULTIPURPOSE / COLORFUL', 'view more', '#', 'banner_11_1599297352.jpg', 'BAN205f535747f0779', 1, 1, '2020-09-05 09:15:51', '2020-09-05 09:15:55'),
(12, 'YOUR PROJECT HASSLE-FREE', 'CREATIVE / MULTIPURPOSE / COLORFUL', 'view more', '#', 'banner_12_1599299292.jpg', 'BAN205f5357e967729', 1, 1, '2020-09-05 09:18:33', '2020-09-10 12:40:43');

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
(1, 'Khan Solutions', 'International Software Company', 'Khan Solutions is International Based Software Company.', 'logo_1570104088.png', 'favicon_1570104089.png', 'flogo_1570104089.png', 1, '2020-01-19 10:54:18', '2020-01-19 10:54:18');

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

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`bcate_id`, `bcate_name`, `bcate_slug`, `bcate_creator`, `bcate_status`, `created_at`, `updated_at`) VALUES
(1, 'wordpress', 'wordpress', 3, 1, '2020-09-06 12:19:24', NULL),
(2, 'web design', 'web-design', 3, 1, '2020-09-07 04:35:58', '2020-09-10 12:49:50');

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
  `post_category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_tag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`post_id`, `post_title`, `post_details`, `post_photo`, `post_creator`, `post_category`, `post_tag`, `post_slug`, `post_status`, `created_at`, `updated_at`) VALUES
(26, 'The Top 50 Marketing Influencers On Chat', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'post_26_1599541371.jpg', 3, '2,1', '2', 'the-top-50-marketing-influencers-on-chat', 1, '2020-09-08 05:02:51', '2020-09-13 11:49:40'),
(27, 'The Complete Guide To Every New Emoji', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'post_27_1599541411.jpg', 3, '2', '2,3', 'the-complete-guide-to-every-new-emoji', 1, '2020-09-08 05:03:31', '2020-09-13 11:49:36'),
(28, 'Andora Takes First Step Toward On-Demand Streaming', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'post_28_1599541441.jpg', 3, '2', '3', 'andora-takes-first-step-toward-on-demand-streaming', 1, '2020-09-08 05:04:01', '2020-09-13 11:49:30'),
(29, 'Internet Kiosks Go Offline After Many People Use', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'post_29_1599541479.jpg', 3, '2,1', '2,3', 'internet-kiosks-go-offline-after-many-people-use', 1, '2020-09-08 05:04:39', '2020-09-08 05:04:39'),
(30, 'The Top 50 Marketing Influencers On graph', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'post_30_1599541507.jpg', 3, '1', '2', 'the-top-50-marketing-influencers-on-graph', 1, '2020-09-08 05:05:07', '2020-09-08 05:05:07'),
(31, 'The Complete Guide To Every New tools', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'post_31_1599541539.jpg', 3, '1', '2', 'the-complete-guide-to-every-new-tools', 1, '2020-09-08 05:05:39', '2020-09-08 05:05:41'),
(32, 'The Complete Guide To Every New technology', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'post_32_1599541580.jpg', 3, '1', '3', 'the-complete-guide-to-every-new-technology', 1, '2020-09-08 05:06:20', '2020-09-08 05:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `client_reviews`
--

CREATE TABLE `client_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_reviews`
--

INSERT INTO `client_reviews` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'one', 1, '2020-09-13 09:50:12', NULL),
(2, 'two', 1, '2020-09-13 05:51:13', NULL),
(3, 'three', 1, '2020-09-13 04:51:39', NULL),
(4, 'four', 1, '2020-09-13 03:51:39', NULL),
(5, 'five', 1, '2020-09-13 11:52:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `replay_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `replay_id`, `comment`, `created_at`, `updated_at`) VALUES
(16, 27, 3, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '2020-09-10 06:31:19', '2020-09-10 06:31:19'),
(17, 27, 3, 16, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '2020-09-10 06:31:27', '2020-09-10 06:31:27'),
(18, 27, 3, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '2020-09-10 06:31:36', '2020-09-10 06:31:36'),
(19, 27, 3, 18, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '2020-09-10 06:31:46', '2020-09-10 06:31:46'),
(20, 27, 3, 16, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', '2020-09-10 06:31:57', '2020-09-10 06:31:57'),
(21, 27, 3, 18, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', '2020-09-10 09:18:42', '2020-09-10 09:18:42'),
(22, 26, 3, NULL, 'Download Google Translate and enjoy it on your iPhone, iPad, and iPod touch. ... Instant camera translation: Translate text in images instantly by just pointing ...', '2020-09-10 09:34:31', '2020-09-10 09:34:31'),
(23, 26, 3, 22, 'Download Google Translate and enjoy it on your iPhone, iPad, and iPod touch. ... Instant camera translation: Translate text in images instantly by just pointing ...', '2020-09-10 09:34:48', '2020-09-10 09:34:48'),
(24, 26, 3, 22, 'Google Translate and enjoy it on your iPhone, iPad, and iPod touch. ... Instant camera translation: Translate text in images instantly by just pointing ....', '2020-09-10 10:09:19', '2020-09-10 10:09:19'),
(25, 26, 3, NULL, 'Goodbye, Prettify. Hello highlight.js! Swapping out our Syntax Highlighter', '2020-09-10 10:25:06', '2020-09-10 10:25:06'),
(26, 26, 3, NULL, 'Goodbye, Prettify. Hello highlight.js! Swapping out our Syntax Highlighter', '2020-09-10 10:25:37', '2020-09-10 10:25:37'),
(27, 26, 3, NULL, 'Goodbye, Prettify. Hello highlight.js! Swapping out our Syntax Highlighter', '2020-09-10 10:25:58', '2020-09-10 10:25:58'),
(28, 26, 3, 25, 'Goodbye, Prettify. Hello highlight.js! Swapping out our Syntax Highlighter', '2020-09-10 10:28:17', '2020-09-10 10:28:17'),
(29, 28, 3, NULL, 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.', '2020-09-10 10:34:21', '2020-09-10 10:34:21'),
(30, 28, 3, 29, 'lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th', '2020-09-10 10:34:40', '2020-09-10 10:34:40');

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
(1, 'abc', 'admin@gmail.com', NULL, 'fsdfsdf', 'dsfsdfssssssssssssssssssssssss', 'CON5f536439d05b7', 1, '2020-09-05 10:11:05', '2020-09-10 12:53:13'),
(2, 'qdqweqweqwe', 'admin@gmail.com', NULL, 'qdqwewqeqwe', 'sadddddddddddddddddddddddd', 'CON5f5872cdeb6ee', 0, '2020-09-09 06:14:37', '2020-09-10 13:04:06'),
(3, 'admin', 'admin@gmail.com', NULL, 'message', 'message', 'CON5f8a97e178a7e', 1, '2020-10-17 07:06:09', NULL);

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
(1, '(123) 456 74700', '(123) 456 78700', '', '', 'info@domain.com', '', '', '', '121 King Street, Melbourne, Victoria 3000, AUS.', '', '', '', 1, '2019-10-03 01:00:00', '2020-01-19 11:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `copyrights`
--

CREATE TABLE `copyrights` (
  `copy_id` bigint(20) UNSIGNED NOT NULL,
  `copy_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_creator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copy_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copyrights`
--

INSERT INTO `copyrights` (`copy_id`, `copy_title`, `copy_creator`, `copy_slug`, `copy_status`, `created_at`, `updated_at`) VALUES
(1, 'Copyright © 2020', 'Khan Solutions', 'C98qw1287we2', 1, '2019-10-05 02:00:00', '2020-09-09 07:52:31');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `gallery_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gcate_id` int(11) NOT NULL,
  `gallery_photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_creator` int(11) NOT NULL,
  `gallery_status` int(11) NOT NULL DEFAULT 1,
  `gallery_slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, '2019_10_03_112106_create_partners_table', 9),
(12, '2019_10_07_121305_create_gallery_categories_table', 10),
(13, '2019_10_08_135020_create_galleries_table', 11),
(14, '2019_10_09_112129_create_tags_table', 12),
(15, '2019_10_09_113214_create_blog_categories_table', 13),
(16, '2019_10_09_144423_create_blog_posts_table', 14),
(17, '2019_11_06_113026_create_testimonials_table', 15),
(18, '2019_11_06_113603_create_newsletter_subscribers_table', 16),
(19, '2019_11_06_113847_create_pages_table', 17),
(20, '2019_11_06_114134_create_page_contents_table', 18),
(21, '2019_11_07_105710_create_teams_table', 19),
(22, '2020_09_05_164816_create_services_table', 20),
(23, '2020_09_06_111054_create_service_categories_table', 21),
(24, '2020_09_06_134528_create_project_categories_table', 22),
(25, '2020_09_06_143240_create_projects_table', 23),
(26, '2020_09_09_171747_create_comments_table', 24),
(27, '2020_09_13_154640_create_client_reviews_table', 25);

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

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `pc_id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `pc_title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pc_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pc_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pc_photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pc_slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pc_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `partner_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_publish` int(11) NOT NULL DEFAULT 1,
  `partner_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`partner_id`, `partner_title`, `partner_url`, `partner_logo`, `partner_slug`, `partner_publish`, `partner_status`, `created_at`, `updated_at`) VALUES
(1, 'Company Name', '#', 'partner_1_1579437513.png', 'P205e244dc94f361', 1, 1, '2020-01-19 12:38:33', '2020-01-19 12:38:33'),
(3, 'Company Name-02', '#', 'partner_3_1579437556.png', 'P205e244df415904', 1, 1, '2020-01-19 12:39:16', '2020-01-19 12:39:16'),
(4, 'Company Name-03', '#', 'partner_4_1579437577.png', 'P205e244e09b1fce', 1, 1, '2020-01-19 12:39:37', '2020-01-19 12:39:37'),
(5, 'Company Name-04', '#', 'partner_5_1579437593.png', 'P205e244e1942008', 1, 0, '2020-01-19 12:39:53', '2020-09-10 13:01:53'),
(6, 'Company Name-05', '#', 'partner_6_1579437606.png', 'P205e244e265a99a', 1, 1, '2020-01-19 12:40:06', '2020-01-19 12:40:06'),
(7, 'The Top 50 Marketing Influencers On Chat', '#', 'partner_7_1599742746.png', 'P205f5a2319e9cc8', 1, 1, '2020-09-10 12:59:05', '2020-09-10 12:59:51');

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
('uzzalbd.creative@gmail.com', '$2y$10$O3aDJ6Jd1ggblvOdOL98ne2mI0tYC/g2WebALYxDtfWdS5XiepU8y', '2019-09-09 07:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_cat_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `pro_cat_id`, `name`, `status`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 't-shart design', 1, 't-shart-design_2020-09-13.jpg', '2020-09-06 08:52:35', '2020-09-13 05:08:42', '2020-09-13 05:08:42'),
(3, 5, 'them customize', 1, 'them-customize_2020-09-06.jpg', '2020-09-06 09:10:48', '2020-09-06 09:11:28', NULL),
(4, 4, 'admin panel design', 1, 'admin-panel-design_2020-09-06.jpg', '2020-09-06 09:12:05', '2020-09-13 08:44:29', '2020-09-13 08:44:29'),
(5, 5, 'website design', 1, 'website-design_2020-09-06.jpg', '2020-09-06 09:12:27', '2020-09-15 05:49:48', NULL),
(6, 4, 'website developing', 1, 'website-developing_2020-09-06.jpg', '2020-09-06 09:12:57', '2020-09-13 08:44:29', '2020-09-13 08:44:29'),
(7, 4, 'development', 1, 'development_2020-09-06.jpg', '2020-09-06 09:14:04', '2020-09-13 08:44:29', '2020-09-13 08:44:29'),
(8, 4, 'new project', 1, 'new-project_2020-09-12.jpg', '2020-09-12 13:18:44', '2020-10-17 07:04:35', NULL),
(9, 5, 'another project', 1, 'another-project_2020-09-13.jpg', '2020-09-13 04:23:40', '2020-09-15 05:49:53', NULL),
(10, 4, 'new project', 0, 'new-project_2020-09-13.jpg', '2020-09-13 08:25:40', '2020-09-13 08:35:20', '2020-09-13 08:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'seo ranking', 1, '2020-09-06 09:08:46', '2020-09-13 08:48:44', NULL),
(5, 'wordpress', 1, '2020-09-06 09:09:01', '2020-09-06 09:09:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `details`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(29, 'seo ranking', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 1, 'b-advantages__icon stroke flaticon-worldwide', '2020-09-06 09:34:41', '2020-09-06 09:34:41', NULL),
(30, 'web development', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 1, 'b-advantages__icon stroke flaticon-worldwide', '2020-09-12 11:04:47', '2020-09-12 11:12:33', NULL),
(33, 'Web Design', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 1, 'b-advantages__icon stroke flaticon-worldwide', '2020-09-12 11:13:21', '2020-09-12 11:13:49', NULL);

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
  `sm_flickr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `social_media` (`sm_id`, `sm_facebook`, `sm_twitter`, `sm_linkedin`, `sm_google`, `sm_youtube`, `sm_pinterest`, `sm_flickr`, `sm_vimeo`, `sm_skype`, `sm_rss`, `sm_status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'https://twitter.com/', 'https://bd.linkedin.com/', 'https://www.google.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', '#', '#', 'https://www.skype.com/en/', '#', 1, '2019-10-03 00:00:00', '2019-10-03 12:06:57');

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

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`, `tag_slug`, `tag_creator`, `tag_status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 3, 1, '2020-09-06 12:19:04', NULL),
(2, 'seo ranking', 'seo-ranking', 3, 1, '2020-09-07 04:40:54', NULL),
(3, 'web development', 'web-development', 3, 1, '2020-09-07 04:41:03', '2020-09-10 12:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `team_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_facebook` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_twitter` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_linkedin` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_pinterest` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_google` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_youtube` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_slug` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_publish` int(11) NOT NULL DEFAULT 0,
  `team_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `team_designation`, `team_details`, `team_photo`, `team_facebook`, `team_twitter`, `team_linkedin`, `team_pinterest`, `team_google`, `team_youtube`, `team_slug`, `team_publish`, `team_status`, `created_at`, `updated_at`) VALUES
(1, 'Saidul Islam Uzzal', 'CEO', 'eqwe wqewq ewq', NULL, 'a', 'b', 'c', 'd', 'e', 'f', 'T5dc407f718bbc', 0, 1, '2019-11-07 12:03:03', NULL),
(2, 'Saidul Islam Uzzal', 'CEO', 'rtrt y yryr r yyry r', NULL, 'https://www.facebook.com/', '#', 'http://linkedin.com/', 'pin', 'goo', 'youtube.com', 'T5dc7b12b69f22', 0, 1, '2019-11-10 06:41:47', NULL),
(3, 'Saidul Islam Uzzal', 'CEO', 'rtrt y yryr r yyry r', NULL, 'https://www.facebook.com/', '#', 'http://linkedin.com/', 'pin', 'goo', 'youtube.com', 'T5dc7b149b5843', 0, 1, '2019-11-10 06:42:17', NULL),
(6, 'admin', 'CEO', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'team_6_1599995424.jpg', '#', '#', '#', '#', '#', '#', 'T5f5dfe20d703d', 0, 1, '2020-09-13 11:10:24', '2020-09-13 11:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `tm_id` bigint(20) UNSIGNED NOT NULL,
  `tm_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tm_designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_opinion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_review` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tm_slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tm_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`tm_id`, `tm_name`, `tm_designation`, `tm_company`, `tm_opinion`, `tm_review`, `tm_logo`, `tm_image`, `tm_slug`, `tm_status`, `created_at`, `updated_at`) VALUES
(5, 'abc', 'CEO', 'xyz company', 'As am hastily invited settled at limited civilly fortune me. Really spring in extent an by. Judge but built gay party world. Of so am he remember although required. Bachelor unpacked be advanced at. Confined in declared marianne is vicinity', '4', 'logo_5_1599556784.png', 'client_5_1599556785.jpg', 'T5f574cb0bdb9f', 1, '2020-09-08 09:19:44', '2020-09-08 09:19:45'),
(6, 'def', 'CEO', 'xyz company', 'As am hastily invited settled at limited civilly fortune me. Really spring in extent an by. Judge but built gay party world. Of so am he remember although required. Bachelor unpacked be advanced at. Confined in declared marianne is vicinity', '2', 'logo_6_1599557105.png', 'client_6_1599557105.jpg', 'T5f574df1c6f69', 1, '2020-09-08 09:25:05', '2020-09-08 09:25:06'),
(7, 'jhon', 'CEO', 'XYZ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', '1', 'logo_7_1599566258.png', 'client_7_1599566259.jpg', 'T5f5771b29d671', 1, '2020-09-08 11:57:38', '2020-09-08 11:57:39'),
(9, 'new client', 'ceo', 'xyz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '3', 'client_logo_9_1599992207.png', 'client_9_1599992138.jpg', 'T5f5dee013666e', 1, '2020-09-13 10:01:37', '2020-09-13 10:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Saidul Islam Uzzal', '01710726035', 'uzzalbd', 'uzzalbd.creative@gmail.com', NULL, '$2y$10$FT6089P.vxr3rIXi7ZDf7Oq61jcS2GafizxlTnRkpVkcJrdKTjKHq', NULL, 'user_1_1568273089.jpg', 1, 1, '2019-09-12 07:24:49', '2019-10-18 05:40:25'),
(2, 'Creative Shaper', '01966999777', 'creative', 'creative@gmail.com', NULL, '$2y$10$VE28KKsZRyokLng9jzgfdO.0MmjW6wskIIQxANBwsCBfKyAeh9wdO', NULL, 'user_2_1571380499.png', 2, 1, '2019-10-18 06:34:59', '2019-10-18 06:35:00'),
(3, 'Admin', '01744556688', 'admin', 'admin@gmail.com', NULL, '$2y$10$xAB2QTP4iNpV/36v6/dT7.nJfqHVScbcUp5LthoQCcMD5nodseDx.', NULL, 'user_2_1571380499.png 	', 1, 1, '2020-09-10 10:57:30', '2020-09-10 12:32:13');

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
(5, 'Subscriber', 1, 'wewet77612uy', '2019-09-09 01:00:00', NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `client_reviews`
--
ALTER TABLE `client_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD UNIQUE KEY `partners_partner_title_unique` (`partner_title`),
  ADD UNIQUE KEY `partners_partner_slug_unique` (`partner_slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`team_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `ban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `basics`
--
ALTER TABLE `basics`
  MODIFY `basic_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `bcate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `client_reviews`
--
ALTER TABLE `client_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `conus_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `cont_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `copyrights`
--
ALTER TABLE `copyrights`
  MODIFY `copy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `gallery_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `gcate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `ns_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `pc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `sm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `tm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
