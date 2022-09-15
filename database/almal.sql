-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2022 at 01:37 AM
-- Server version: 10.3.34-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gulfwebi_almal2`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `full_name`, `country`, `state`, `city`, `zipcode`, `address`, `phone`, `mobile`, `country_id`, `created_at`, `updated_at`) VALUES
(8, 2, 'fdvdfv', 'kuwait', '', 'hawalli', '566', 'dfgdg', NULL, '45646', 2, '2021-09-19 07:42:49', '2021-09-19 07:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `annual_reports`
--

CREATE TABLE `annual_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `annual_reports`
--

INSERT INTO `annual_reports` (`id`, `category_id`, `title`, `image`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(9, NULL, '31 December 2010', 'annual-reports-image-1c60c0643bfd7e56526d0321bcfda260.pdf', '1', '1', '2021-12-12 07:43:21', '2022-02-06 12:03:55'),
(10, NULL, '31 December 2011', 'annual-reports-image-65a75afad128296098d30f8debab8356.pdf', '1', '2', '2021-12-12 07:47:23', '2021-12-12 07:47:23'),
(11, NULL, '31 December 2012', 'annual-reports-image-f9a278b5b85c6b3410b58d830762ec6c.pdf', '1', '3', '2021-12-12 07:57:38', '2021-12-12 07:57:38'),
(12, NULL, '31 December 2013', 'annual-reports-image-fe636b7959b6a4978f93d2efb0c123ee.pdf', '1', '4', '2021-12-12 08:30:07', '2022-02-06 12:03:51'),
(13, NULL, '31 December 2014', 'annual-reports-image-e08068103130fa2b618a941d2a241a87.pdf', '1', '5', '2021-12-12 08:35:16', '2021-12-12 08:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `value`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"size\",\"fa\":\"\\u0633\\u0627\\u06cc\\u0632\"}', '2021-09-15 10:39:45', '2021-09-15 10:39:45'),
(3, '{\"en\":\"color\",\"fa\":\"\\u0631\\u0646\\u06af\"}', '2021-09-15 10:40:07', '2021-09-15 10:40:07'),
(4, '{\"en\":\"weight\",\"fa\":\"\\u0648\\u0632\\u0646\"}', '2021-09-15 10:40:32', '2021-09-15 10:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `attr_groups`
--

CREATE TABLE `attr_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `attr_groups`
--

INSERT INTO `attr_groups` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(2, 'یشسی', '[{\"en\":\"size\",\"fa\":\"\\u0633\\u0627\\u06cc\\u0632\"},{\"en\":\"color\",\"fa\":\"\\u0631\\u0646\\u06af\"}]', '2021-09-15 10:57:29', '2021-09-15 10:57:29'),
(3, 'sefsef', '[{\"en\":\"size\",\"fa\":\"\\u0633\\u0627\\u06cc\\u0632\"},{\"en\":\"color\",\"fa\":\"\\u0631\\u0646\\u06af\"}]', '2021-09-16 04:48:48', '2021-09-16 04:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `popular` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `slug`, `parent_id`, `display_order`, `link`, `is_active`, `created_at`, `updated_at`) VALUES
(22, 'categories-image-d84b4ed5c4df89abf2bc7015516848b1.jpg', 'Our-Company', NULL, 1, NULL, 1, '2021-11-23 08:35:22', '2021-11-29 06:03:49'),
(23, 'categories-image-87430795fb4eff570c6e9591043c2930.png', 'Corporate-Overview', 22, 2, NULL, 1, '2021-11-23 08:35:46', '2021-11-29 06:06:17'),
(24, 'categories-image-643b1ebf95e69184a3f8ab831a8d9f12.png', 'Chairman\'s-Messages', 22, 3, NULL, 1, '2021-11-27 09:10:41', '2021-11-29 06:09:58'),
(25, 'categories-image-0c0790c9162745f9028ab9c42714096d.png', 'Mission-&-Vision', 22, 4, NULL, 1, '2021-11-29 06:11:14', '2021-11-29 06:11:14'),
(26, 'categories-image-6d9bc7e1468c786b9d3cbe7c8b4db638.png', 'Board-of-Directors', 22, 5, NULL, 1, '2021-11-29 06:13:50', '2021-11-29 06:13:50'),
(27, 'categories-image-7838cb254c2ae17b61d5d9844f6da099.png', 'Article-of-Association', 22, 6, NULL, 1, '2021-11-29 06:14:15', '2021-11-29 06:14:15'),
(28, 'categories-image-5faffad3d949a497357a58ad91f8b909.png', 'Our-Business', NULL, 7, NULL, 1, '2021-11-29 06:14:44', '2021-12-09 21:35:24'),
(29, 'categories-image-378c0de997d41483a69b86a43f94c82e.png', 'Corporate-Finance', 28, 8, NULL, 1, '2021-11-29 06:15:08', '2021-11-29 06:15:08'),
(30, 'categories-image-34cccd3e24b01ccb47b3c874995b84bb.png', 'Asset-Management', 28, 9, NULL, 1, '2021-11-29 06:15:32', '2021-11-29 06:15:32'),
(31, 'categories-image-9cedd609e3c83281789afbc65baec88c.png', 'Direct-&-Indirect-Investments', 28, 10, NULL, 1, '2021-11-29 06:16:05', '2021-11-29 06:16:05'),
(32, 'categories-image-c5f65fadca6b019ad378f7a9c87aec7c.png', 'Our-Products', NULL, 11, NULL, 1, '2021-11-29 06:16:30', '2021-11-29 06:16:30'),
(33, 'categories-image-5120a8288aa31ac1861fc76e6c84c9a9.png', 'Private-equity-funds', 32, 12, NULL, 1, '2021-11-29 06:17:02', '2021-11-29 06:17:02'),
(34, 'categories-image-0467264e9d7fb2fcaabe5f021b5825ea.png', 'Equity-funds', 32, 13, NULL, 1, '2021-11-29 06:17:26', '2021-11-29 06:17:26'),
(35, 'categories-image-9ccf8c7b6f3799025c28c9ca1abfe6fa.png', 'Takharoj', 32, 14, NULL, 1, '2021-11-29 06:17:53', '2021-11-29 06:17:53'),
(36, 'categories-image-cf61297878e517952cd7fb4b9ff486d3.png', 'Education-Finance', 32, 15, '/category-form/36/Education-Finance', 1, '2021-11-29 06:18:18', '2021-11-30 10:42:43'),
(37, 'categories-image-c964a1b46cba2adaab9351cfc49cfc5f.png', 'Investor-Relations', NULL, 16, NULL, 1, '2021-11-29 06:20:57', '2021-11-29 06:20:57'),
(38, 'categories-image-2d9112e7f2a0a88b77dd50133c4552b6.png', 'Disclosures', 37, 17, '/disclosures', 1, '2021-11-29 06:21:16', '2021-12-05 10:55:54'),
(39, 'categories-image-80d8e28eda3ba91278f5866114f1cafc.png', 'Major-shareholders', 37, 18, NULL, 1, '2021-11-29 06:21:44', '2021-11-29 06:21:44'),
(40, 'categories-image-abfb64991696ee7eff910fd33d3efa85.png', 'Corporate-governance', 37, 19, NULL, 1, '2021-11-29 06:22:07', '2021-11-29 06:22:07'),
(41, 'categories-image-e46af8462785ef718d240a70db6c4624.png', 'Customer-complaints-form', 37, 20, NULL, 1, '2021-11-29 06:22:32', '2021-11-29 06:22:32'),
(43, 'categories-image-bd2b1dc16d138606e31ab2e446e9d4a1.png', 'Reports', NULL, 22, NULL, 1, '2021-11-29 06:23:40', '2021-11-29 06:23:40'),
(44, 'categories-image-7323453a461c8543453d8fc51e2f06d3.png', 'Annual-reports', 43, 23, '/annual', 1, '2021-11-29 06:24:07', '2021-12-02 08:44:02'),
(45, 'categories-image-511ec50914c88bb89cea3ddacbc8c8ef.png', 'Quarterly-reports', 43, 24, '/quarterly', 1, '2021-11-29 06:24:36', '2021-12-04 12:52:23'),
(46, 'categories-image-bd2a0f5a0541261f3958ebb1712456eb.png', 'Research', 43, 25, NULL, 1, '2021-11-29 06:25:00', '2021-11-29 06:25:00'),
(47, 'categories-image-454c3086a257eb3705b30837b337db45.png', 'Media-Center', NULL, 26, NULL, 1, '2021-11-29 06:48:23', '2021-11-29 06:48:23'),
(48, 'categories-image-356c9d7ffd23f5063573ce9002cde331.png', 'News-&-Events', 47, 27, '/news-events', 1, '2021-11-29 06:50:50', '2021-11-30 05:53:44'),
(49, 'categories-image-8f3f4cc8ace059c37f36644b25a97492.png', 'Press-Release', 47, 28, NULL, 1, '2021-11-29 06:51:15', '2021-11-29 06:51:15'),
(50, 'categories-image-9c39dbacc00429d0e01c3e1c724e0794.png', 'Contact-Us', NULL, 29, NULL, 1, '2021-11-29 06:52:23', '2021-11-29 06:52:23'),
(51, 'categories-image-35749a8b503f26ed13a6b36f6b483435.png', 'Contact-Information', 50, 30, '/contact-us', 1, '2021-11-29 06:52:50', '2021-11-30 08:38:18'),
(52, 'categories-image-62ad9b0d650a3e0d4fc9a44f2485ff84.jpg', 'Available-Vacancies', 50, 31, '/available-vacancies', 1, '2021-11-29 06:53:16', '2021-12-05 11:59:17'),
(53, 'categories-image-660d3132c4b84a4b4beddf7cdcda72d0.png', 'Financial-Advisory', 29, 32, NULL, 1, '2021-11-30 09:47:51', '2021-12-10 13:44:48'),
(54, 'categories-image-4e1e9b52e5ad9cb25968b80b3d23f10d.png', 'Debt-Capital-Markets', 29, 33, NULL, 1, '2021-11-30 09:48:49', '2021-12-10 13:43:29'),
(55, 'categories-image-e03f3016e02ae982939a3a40e4d342cc.png', 'Equity-Capital-Markets', 29, 34, NULL, 1, '2021-11-30 09:49:23', '2021-12-10 13:43:42'),
(56, 'categories-image-6386b3ae96e7761e5ae8089165447e27.png', 'M&A', 29, 35, NULL, 1, '2021-11-30 09:49:49', '2021-12-10 13:43:03'),
(57, 'categories-image-afd2b5ddb7fd90ff09a64ef72925c988.png', 'Special-Situation-Investing', 29, 36, NULL, 1, '2021-11-30 09:50:18', '2021-11-30 09:50:18'),
(58, 'categories-image-56a929204139ef1654884687b090c0c9.png', 'Private-Equity', 30, 37, NULL, 1, '2021-11-30 09:51:20', '2021-11-30 09:51:20'),
(59, 'categories-image-0bd890aab7b7117a72a6efa5f18cc8d2.png', 'Public-Equity', 30, 38, NULL, 1, '2021-11-30 09:52:06', '2021-11-30 09:52:06'),
(60, 'categories-image-7e939b08a7bc322d63d9035baf9296e7.png', 'Portfolios', 30, 39, NULL, 1, '2021-11-30 09:52:49', '2021-11-30 09:52:49'),
(61, 'categories-image-f4a12d9e2a299d97fa084796ce848641.png', 'Funds', 30, 40, NULL, 1, '2021-11-30 09:53:25', '2021-11-30 09:53:25'),
(62, 'categories-image-3580c99e558658132d0e7f4f2cb2b9a3.png', 'Venture-Capital-Investing', 31, 41, NULL, 1, '2021-11-30 09:54:02', '2021-11-30 09:54:02'),
(63, 'categories-image-06a54135903487dac769047b63b4a962.png', 'Real-Estate-Investing', 31, 42, NULL, 1, '2021-11-30 09:54:29', '2021-11-30 09:54:29'),
(66, 'categories-image-5ed6c65ec022d4c66f950372cec19cce.jpg', 'testtesttesttesttest', 65, 45, 'testtesttesttesttest', 1, '2021-12-08 08:43:32', '2021-12-08 08:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`, `meta_desc`) VALUES
(37, 22, 'en', 'Our Company', 'Our Company'),
(38, 22, 'ar', 'شركتنا', 'category1'),
(39, 23, 'en', 'Corporate Overview', 'Established in early 1980, Al Mal Investment Company (KPSC) was listed on the Kuwait Stock Exchange in January 2002. The current issued and paid up capital of Al Mal is KD 31.02 Million.\r\n\r\nAl Mal is an innovation-driven, forward-looking Investment Banking and Asset Management company that offers sustainable and attractive investment opportunities in both traditional and emerging portfolios. Its investment portfolio is geographically well diversified to offer maximized returns to investors. It caters to its clients through its many subsidiaries and affiliates spread across the world.\r\n\r\nAl Mal is regulated by the Central Bank of Kuwait and the Capital Market Authority. It implements and adopts the highest level of ethical standards, internal controls and corporate governance practices.'),
(40, 23, 'ar', 'نبذة عن الشركة', 'نبذة عن الشركة'),
(41, 24, 'en', 'Chairman\'s Messages', 'Chairman\'s Messages'),
(42, 24, 'ar', 'كلمة رئيس مجلس الإدارة', 'كلمة رئيس مجلس الإدارة'),
(43, 25, 'en', 'Mission & Vision', 'Mission & Vision'),
(44, 25, 'ar', 'مهمتنا ورؤيتنا', 'مهمتنا ورؤيتنا'),
(45, 26, 'en', 'Board of Directors', 'Board of Directors'),
(46, 26, 'ar', 'مجلس الإدارة', 'مجلس الإدارة'),
(47, 27, 'en', 'Article of Association', 'Article of Association'),
(48, 27, 'ar', 'عقد التأسيس  والنظام الأساسى', 'عقد التأسيس  والنظام الأساسى'),
(49, 28, 'en', 'Our Business', 'Our Business'),
(50, 28, 'ar', 'أعمالنا', 'أعمالنا'),
(51, 29, 'en', 'Corporate Finance', 'Corporate Finance'),
(52, 29, 'ar', 'تمويل الشركات', 'تمويل الشركات'),
(53, 30, 'en', 'Asset Management', 'Asset Management'),
(54, 30, 'ar', 'أدارة الأصول', 'أدارة الأصول'),
(55, 31, 'en', 'Direct & Indirect Investments', 'Direct & Indirect Investments'),
(56, 31, 'ar', 'الاستثمارات المباشرة والغير مباشرة', 'الاستثمارات المباشرة والغير مباشرة'),
(57, 32, 'en', 'Our Products', 'Our Products'),
(58, 32, 'ar', 'منتجاتنا', 'Our Products'),
(59, 33, 'en', 'Private equity funds', 'Private equity funds'),
(60, 33, 'ar', 'صناديق الملكيات الخاصة', 'صناديق الملكيات الخاصة'),
(61, 34, 'en', 'Equity funds', 'Equity funds'),
(62, 34, 'ar', 'صناديق الإستثمار', 'صناديق الإستثمار'),
(63, 35, 'en', 'Takharoj', 'Takharoj'),
(64, 35, 'ar', 'تخارج', 'تخارج'),
(65, 36, 'en', 'Education Finance', 'Education Finance'),
(66, 36, 'ar', 'تمويل التعليم', 'تمويل التعليم'),
(67, 37, 'en', 'Investor Relations', 'Investor Relations'),
(68, 37, 'ar', 'علاقات المستثمرين', 'Investor Relations'),
(69, 38, 'en', 'Disclosures', 'Disclosures'),
(70, 38, 'ar', 'الافصاحات', 'الافصاحات'),
(71, 39, 'en', 'Major shareholders', 'Major shareholders'),
(72, 39, 'ar', 'كبار المساهمين', 'كبار المساهمين'),
(73, 40, 'en', 'Corporate governance', 'Corporate governance'),
(74, 40, 'ar', 'حوكمة الشركات', 'حوكمة الشركات'),
(75, 41, 'en', 'Customer complaints form', 'Customer complaints form'),
(76, 41, 'ar', 'نموذج شكاوى العملاء', 'نموذج شكاوى العملاء'),
(79, 43, 'en', 'Reports', 'Reports'),
(80, 43, 'ar', 'التقارير', 'Reports'),
(81, 44, 'en', 'Annual reports', 'Annual reports'),
(82, 44, 'ar', 'التقارير السنوية', 'التقارير السنوية'),
(83, 45, 'en', 'Quarterly reports', 'Quarterly reports'),
(84, 45, 'ar', 'التقارير الربع سنوية', 'التقارير الربع سنوية'),
(85, 46, 'en', 'Research', 'Research'),
(86, 46, 'ar', 'البحوث', 'البحوث'),
(87, 47, 'en', 'Media Center', 'Media Center'),
(88, 47, 'ar', 'المركز الأعلامي', 'Media Center'),
(89, 48, 'en', 'News & Events', 'News & Events'),
(90, 48, 'ar', 'الأخبار والأحداث', 'الأخبار والأحداث'),
(91, 49, 'en', 'Press Release', 'Press Release'),
(92, 49, 'ar', 'المقالات الصحفية', 'المقالات الصحفية'),
(93, 50, 'en', 'Contact Us', 'Contact Us'),
(94, 50, 'ar', 'اتصل بنا', 'Contact Us'),
(95, 51, 'en', 'Contact Information', 'Contact Information'),
(96, 51, 'ar', 'معلومات الأتصال والعنوان', 'معلومات الأتصال والعنوان'),
(97, 52, 'en', 'Available Vacancies', 'Available Vacancies'),
(98, 52, 'ar', 'الوظائف المتاحة', 'الوظائف المتاحة'),
(99, 53, 'en', 'Financial Advisory', 'Financial Advisory'),
(100, 53, 'ar', 'Financial Advisory', 'Financial Advisory'),
(101, 54, 'en', 'Debt Capital Markets', 'Debt Capital Markets'),
(102, 54, 'ar', 'Debt Capital Markets', 'Debt Capital Markets'),
(103, 55, 'en', 'Equity Capital Markets', 'Equity Capital Markets'),
(104, 55, 'ar', 'Equity Capital Markets', 'Equity Capital Markets'),
(105, 56, 'en', 'M&A', 'M&A'),
(106, 56, 'ar', 'M&A', 'M&A'),
(107, 57, 'en', 'Special Situation Investing', 'Special Situation Investing'),
(108, 57, 'ar', 'Special Situation Investing', 'Special Situation Investing'),
(109, 58, 'en', 'Private Equity', 'Private Equity'),
(110, 58, 'ar', 'Private Equity', 'Private Equity'),
(111, 59, 'en', 'Public Equity', 'Public Equity'),
(112, 59, 'ar', 'Public Equity', 'Public Equity'),
(113, 60, 'en', 'Portfolios', 'Portfolios'),
(114, 60, 'ar', 'Portfolios', 'Portfolios'),
(115, 61, 'en', 'Funds', 'Funds'),
(116, 61, 'ar', 'Funds', 'Funds'),
(117, 62, 'en', 'Venture Capital Investing', 'Venture Capital Investing'),
(118, 62, 'ar', 'Venture Capital Investing', 'Venture Capital Investing'),
(119, 63, 'en', 'Real Estate Investing', 'Real Estate Investing'),
(120, 63, 'ar', 'Real Estate Investing', 'Real Estate Investing'),
(125, 66, 'en', 'testtesttesttesttest', 'testtesttesttesttest'),
(126, 66, 'ar', 'testtesttesttesttest', 'testtesttesttest');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `description_en` text COLLATE utf8_persian_ci NOT NULL,
  `description_ar` text COLLATE utf8_persian_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `title_en`, `title_ar`, `email`, `phone`, `fax`, `description_en`, `description_ar`, `display_order`, `created_at`, `updated_at`) VALUES
(2, 'dfsf', 'fsds', 'sdfsd', 'dsfs', 'dsfsبقلبلاباللا', '<p>dsfs</p>', '<p>fsdfsd</p>', 2, '2021-11-01 09:00:31', '2021-11-01 08:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `corporate_overviews`
--

CREATE TABLE `corporate_overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_top` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corporate_overviews`
--

INSERT INTO `corporate_overviews` (`id`, `name`, `title_en`, `title_ar`, `short_description_en`, `short_description_ar`, `description_en`, `description_ar`, `image`, `image_top`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'corporate_overview', 'Corporate Overview', 'نبذة عن الشركة', 'Established in early 1980, Al Mal Investment Company (KPSC) was listed on the Kuwait Stock Exchange in January 2002. The current issued and paid-up capital of Al Mal is KD 31.02 Million.', 'تأسست شركة المال للاستثمار في أوائل عام 1980، وقد تم إدراج أسهمها في سوق الكويت للأوراق المالية في يناير 2002 .\r\nيبلغ رأس مال الشركة المدفوع 31.02 مليون دينار كويتي .', '<p><span style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; color: #6d7275; background-color: #ffffff;\">Al Mal is an innovation-driven, forward-looking Investment Banking and Asset Management company that offers sustainable and attractive investment opportunities in both traditional and emerging portfolios. Its investment portfolio is geographically well diversified to offer maximized returns to investors. It caters to its clients through its many subsidiaries and affiliates spread across the world.</span><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; color: #6d7275; background-color: #ffffff;\">Al Mal is regulated by the Central Bank of Kuwait and the Capital Market Authority. It implements and adopts the highest level of ethical standards, internal controls and corporate governance practices.</span></p>', '<p style=\"text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right; background-color: #ffffff;\">تأسست شركة المال للاستثمار في أوائل عام 1980، وقد تم إدراج أسهمها في سوق الكويت للأوراق المالية في يناير 2002 .</span><br style=\"box-sizing: border-box; color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right; background-color: #ffffff;\" /><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right; background-color: #ffffff;\">يبلغ رأس مال الشركة المدفوع 31.02 مليون دينار كويتي .</span><br style=\"box-sizing: border-box; color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right; background-color: #ffffff;\" /><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right; background-color: #ffffff;\">شركة المال للإستثمار، شركة رائدة تعتمد الإبتكار والإبداع، وتنشط في قطاع الإستثمار، ما يوفر لعملائها فرصاً استثمارية مستدامة جاذبة واعدة سواء في المحافظ التقليدية أو الناشئة. تتنوع محفظة إستثمارات الشركة قطاعياً وجغرافياً لتقديم عوائد مجزية للمستثمرين، كما وتقدم خدماتها من خلال العديد من شركاتها التابعة والزميلة المنتشرة في جميع أرجاء العالم .</span><br style=\"box-sizing: border-box; color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right; background-color: #ffffff;\" /><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right; background-color: #ffffff;\">تخضع شركة المال إلى قواعد بنك الكويت المركزي، وهيئة سوق المال، وسوق الكويت للأوراق المالية ، ووزارة التجارة والصناعة وتتبنى أعلى مستوى من المعايير الأخلاقية والضوابط الداخلية وممارسة حوكمة الشركات.</span></p>', 'corporateoverview-image-698afdb0062d8a3bc6a3317346355773.jpg', 'corporateoverview-image_top-698afdb0062d8a3bc6a3317346355773.jpg', 1, 1, '2021-11-28 06:49:45', '2022-02-09 07:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `country_resume`
--

CREATE TABLE `country_resume` (
  `id` int(11) NOT NULL,
  `country_name_en` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `country_name_ar` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `country_code` tinyint(4) NOT NULL,
  `image` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `country_resume`
--

INSERT INTO `country_resume` (`id`, `country_name_en`, `country_name_ar`, `country_code`, `image`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(6, 'Iran', 'ایران', 98, 'b-4f490b5a47c42b66822a494ea93dd70d.jpg', 1, 1, '2021-11-16 07:56:39', '2021-11-16 07:26:39'),
(7, 'test2', 'تست2', 127, 'b-550e7d6684012380190326dcca59dd52.jpg', 1, 2, '2021-11-16 11:20:58', '2021-11-16 10:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `disclosures`
--

CREATE TABLE `disclosures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` int(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disclosures`
--

INSERT INTO `disclosures` (`id`, `title_en`, `title_ar`, `details_en`, `details_ar`, `slug`, `images`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(4, 'Complementary disclosure', 'إفصاح مكمل', '<p>Complementary disclosure</p>', '<p>إفصاح مكمل</p>', 'complementary-disclosure', '302a15e2951b5b99e445b6c7dcb4f5853311368.jpg,302a15e2951b5b99e445b6c7dcb4f585328481.jpg', '1', 1, '2021-12-12 09:53:44', '2021-12-14 10:24:02'),
(5, 'Financial report 30 - 9 - 2020', 'البيانات المالية 30- 9 - 2020', '<p>Financial report 30 - 9 - 2020</p>', '<p>البيانات المالية 30- 9 - 2020</p>', 'financial-report-30-9-2020', '8e5f92572003a5ecaf54f658bf4e6d4d3434294.jpg', '1', 2, '2021-12-12 10:00:29', '2021-12-16 07:19:20'),
(6, 'Financial Report 31 Dec 2020', 'البيانات المالية 31 ديسمبر 2020', '<p>Financial Report 31 Dec 2020</p>', '<p>البيانات المالية 31 ديسمبر 2020</p>', 'financial-report-31-dec-2020', '16a65e917ea71720132a1c8b76211c979610647.jpg', '1', 3, '2021-12-12 11:52:58', '2021-12-12 11:52:58'),
(8, 'Disclosure of material information 30-November-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 30-November-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-30-november-2021', 'ef5b551e72fd1050355653fc699793e47261932.jpg,ef5b551e72fd1050355653fc699793e45470353.jpg', '1', 5, '2021-12-12 12:02:51', '2021-12-12 12:02:51'),
(9, 'Disclosure of material information 24-November-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 24-November-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-24-november-2021', '923a87c9dab127030ec3f8397bc2a9d98686542.jpg,dd3034bbfe57ad8c1f1ab1ca175f3a0d4289351.jpg', '1', 6, '2021-12-12 12:07:39', '2021-12-12 12:07:39'),
(10, 'Disclosure of material information 17-November-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 17-November-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-17-november-2021', 'b4a3e1e894c84b40b5d20097622a00d33271281.jpg,b4a3e1e894c84b40b5d20097622a00d33753464.jpg', '1', 7, '2021-12-12 12:15:02', '2021-12-12 12:15:02'),
(11, 'Disclosure of a lawsuit 16-November-2021', 'إفصاح عن الدعاوى القضائية', '<p>Disclosure of a lawsuit 16-November-2021</p>', '<p>إفصاح عن الدعاوى القضائية</p>', 'disclosure-of-a-lawsuit-16-november-2021', '47435f3fcaacb7a6b2ca79f9be7a91719547964.jpg,47435f3fcaacb7a6b2ca79f9be7a91713250443.jpg', '1', 8, '2021-12-12 12:17:30', '2021-12-12 12:17:30'),
(12, 'Complementary Disclosure 11-November-2021', 'إفصاح مكمل', '<p>Complementary Disclosure 11-November-2021</p>', '<p>إفصاح مكمل</p>', 'complementary-disclosure-11-november-2021', 'd2115f1e603f52c57c5e876356a095e95276403.jpg,d2115f1e603f52c57c5e876356a095e98502977.jpg', '1', 9, '2021-12-12 12:23:35', '2021-12-12 12:24:06'),
(13, 'Complementary disclosure 09-November-2021', 'إفصاخ مكمل', '<p>Complementary disclosure 09-November-2021</p>', '<p>إفصاخ مكمل</p>', 'complementary-disclosure-09-november-2021', '36e799250d54a8c86a6199cf5b77c8bd6870769.jpg,36e799250d54a8c86a6199cf5b77c8bd3096233.jpg', '1', 10, '2021-12-12 12:30:06', '2021-12-12 12:30:06'),
(14, 'Disclosure of material information 05-November-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 05-November-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-05-november-2021', 'c6a4b356971d883548e0cdd4c37481c25147255.jpg,83baa238f019748e033266d1d7e6ded72733135.jpg', '1', 11, '2021-12-12 12:33:11', '2021-12-16 07:28:04'),
(15, 'Nomination of a board member 28-October-2021', 'ترشيح عضو مجلس إدارة', '<p>Nomination of a board member</p>', '<p>ترشيح عضو مجلس إدارة</p>', 'nomination-of-a-board-member-28-october-2021', 'af6bfd9d2a97cdd55df375dc2ed8c9d34259227.jpg,af6bfd9d2a97cdd55df375dc2ed8c9d34085638.jpg', '1', 12, '2021-12-12 12:36:32', '2021-12-12 12:37:14'),
(16, 'Amending the announcement of the nomination of a board member 28-October-2021', 'تعديل إعلان ترشيح عضو مجلس الإدارة', '<p>Amending the announcement of the nomination of a board member 28-October-2021</p>', '<p>تعديل إعلان ترشيح عضو مجلس الإدارة</p>', 'amending-the-announcement-of-the-nomination-of-a-board-member-28-october-2021', '119adfec67e9d3970038b89967b329196476131.jpg,119adfec67e9d3970038b89967b32919986998.jpg', '1', 14, '2021-12-12 12:48:27', '2021-12-12 12:48:27'),
(17, 'Complementary disclosure 24-October-2021', 'إفصاح مكمل', '<p>Complementary disclosure 24-October-2021</p>', '<p>إفصاح مكمل</p>', 'complementary-disclosure-24-october-2021', 'd28740cbfe8e81b3715ff7dc9c28777b4881805.jpg,d28740cbfe8e81b3715ff7dc9c28777b7807524.jpg', '1', 15, '2021-12-12 12:51:56', '2021-12-12 12:52:14'),
(18, 'Disclosure of lawsuits 20-October-2021', 'إفصاح عن الدعاوى القضائية', '<p>Disclosure of lawsuits 20-October-2021</p>', '<p>إفصاح عن الدعاوى القضائية</p>', 'disclosure-of-lawsuits-20-october-2021', 'c214f26773a38682fa579798920e7f435911985.jpg,5e7077980586840d0f3d010e889dff2e3523017.jpg', '1', 16, '2021-12-14 12:08:53', '2021-12-14 12:08:53'),
(19, 'Complementary disclosure 19-October-2021', 'إفصاح مكمل', '<p>Complementary disclosure 19-October-2021</p>', '<p>إفصاح مكمل</p>', 'complementary-disclosure-19-october-2021', '416ffb821e54274db879866f50fc3b42422618.jpg,416ffb821e54274db879866f50fc3b424642430.jpg', '1', 17, '2021-12-14 12:12:14', '2021-12-14 12:12:14'),
(20, 'Disclosure of material information 17-October-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 17-October-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-17-october-2021', '05097f30f3701cc2a299d993c7a636a72377352.jpg,05097f30f3701cc2a299d993c7a636a72976939.jpg', '1', 18, '2021-12-14 12:13:51', '2021-12-14 12:13:51'),
(21, 'Complementary disclosure 12-October-2021', 'الافصاحات', '<p>Complementary disclosure 12-October-2021</p>', '<p>الافصاحات</p>', 'complementary-disclosure-12-october-2021', '4ad822eb0d9af845497f689fe66071785427879.jpg,c6fa761929974e969aea42d80f2adffc3071286.jpg', '1', 19, '2021-12-14 12:18:59', '2021-12-14 12:18:59'),
(22, 'Disclosure of material information 07-October-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 07-October-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-07-october-2021', 'e72fe5eea985a1355bc2cc6bce3ece6b1199039.jpg,e72fe5eea985a1355bc2cc6bce3ece6b2963998.jpg', '1', 20, '2021-12-14 12:21:00', '2021-12-14 12:22:22'),
(23, 'Disclosure of material information 05-October-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 05-October-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-05-october-2021', 'aacb4236b9b7e7293cb3f7338b87094b7982621.jpg,aacb4236b9b7e7293cb3f7338b87094b4791889.jpg', '1', 21, '2021-12-14 12:31:30', '2021-12-14 12:31:30'),
(24, 'Disclosure of material information 30-September-2021-1', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 30-September-2021-1</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-30-september-2021-1', '4df5cdd0cd53a87f694e69da959de41e6714240.jpg,872ab381689102f73c2df195348c0d682526295.jpg', '1', 22, '2021-12-14 12:34:41', '2021-12-14 12:34:41'),
(25, 'Disclosure of material information 30-September-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 30-September-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-30-september-2021', '60a2c774324751e6cd4c1804087945a43602777.jpg,dfec1b79da053ddfa2e723b3b15e6b344970846.jpg', '1', 23, '2021-12-14 12:37:04', '2021-12-14 12:37:04'),
(26, 'Complementary Disclosure 07-September-2021', 'إفصاح مكمل', '<p>Complementary Disclosure 07-September-2021</p>', '<p>إفصاح مكمل</p>', 'complementary-disclosure-07-september-2021', '8820d115dc6590f9ea0f15cfc300da051985609.jpg,8820d115dc6590f9ea0f15cfc300da053048947.jpg', '1', 24, '2021-12-14 12:39:45', '2021-12-14 12:39:45'),
(27, 'AGM meeting 05-September-2021', 'إجتماع الجمعية العامة', '<p>AGM meeting 05-September-2021</p>', '<p>إجتماع الجمعية العامة</p>', 'agm-meeting-05-september-2021', 'd132869fa2ccd689db422861ed1517b28851699.jpg,d132869fa2ccd689db422861ed1517b28666561.jpg', '1', 25, '2021-12-15 06:21:28', '2021-12-15 06:21:28'),
(28, 'AGM meeting 29-August-2021', 'إجتماع الجمعية العامة', '<p>AGM meeting 29-August-2021</p>', '<p>إجتماع الجمعية العامة</p>', 'agm-meeting-29-august-2021', '182d73c4f3b6fa3a7af1faf8273a4e077708108.jpg,7d786d68a0611d1afc17803af28313251783188.jpg', '1', 26, '2021-12-15 06:23:38', '2021-12-15 06:23:38'),
(29, 'Disclosure of material information 25-August-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 25-August-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-25-august-2021', '5591a282b18c0558df6e935fe895d6b71037533.jpg,5591a282b18c0558df6e935fe895d6b73014334.jpg', '1', 27, '2021-12-15 06:26:45', '2021-12-15 06:26:45'),
(30, 'Complementary Disclosure 18-August-2021', 'إفصاح مكمل', '<p>Complementary Disclosure 18-August-2021</p>', '<p>إفصاح مكمل</p>', 'complementary-disclosure-18-august-2021', '3e89399def08770dbc08169face41be25825112.jpg', '1', 28, '2021-12-15 06:29:38', '2021-12-15 06:29:38'),
(31, 'Disclosure of lawsuit 17-August-2021-1', 'إفصاح عن دعوى قضائية', '<p>Disclosure of lawsuit 17-August-2021-1</p>', '<p>إفصاح عن دعوى قضائية</p>', 'disclosure-of-lawsuit-17-august-2021-1', '3875f5ad673380b09f790f421bc47ca99843332.jpg,3875f5ad673380b09f790f421bc47ca93583864.jpg', '1', 29, '2021-12-15 06:32:53', '2021-12-16 07:50:23'),
(32, 'Disclosure of material information 12-August-2021', 'الإفصاح عن معلومات جوهرية', '<p>Disclosure of material information 12-August-2021</p>', '<p>الإفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-12-august-2021', '7c7e50e7aa7fcbd390db0460c7e11ac71353461.jpg,6ac2de21cfe48ad1dd63f05724b446943181084.jpg', '1', 30, '2021-12-15 06:37:17', '2021-12-15 06:37:17'),
(33, 'Disclosure of AGM meeting 12-August-2021', 'إفصاح تحديد إجتماع الجمعية العامة', '<p>Disclosure of AGM meeting 12-August-2021</p>', '<p>إفصاح تحديد إجتماع الجمعية العامة</p>', 'disclosure-of-agm-meeting-12-august-2021', 'd16e9a3df6eac4b7718bec4caf5b9e579744797.jpg,d16e9a3df6eac4b7718bec4caf5b9e573137333.jpg', '1', 31, '2021-12-15 06:39:38', '2021-12-15 06:39:38'),
(34, 'Disclosure of material information 05-August-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 05-August-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-05-august-2021', '7a67dd2ae9daa0514fa04d4071d967f36479167.jpg,7a67dd2ae9daa0514fa04d4071d967f33888075.jpg', '1', 32, '2021-12-15 06:43:02', '2021-12-15 06:43:02'),
(35, 'complementary disclosure 16-July-2021', 'إفصاح تكميلى', '<p>complementary disclosure 16-July-2021</p>', '<p>إفصاح تكميلى</p>', 'complementary-disclosure-16-july-2021', 'a762740329a76d8e1e5ddaf1e94f674b843266.jpg,86efda317b23b1dd6aa1c461568f0b728208664.jpg', '1', 33, '2021-12-15 06:52:34', '2021-12-15 06:52:34'),
(36, 'complementary disclosure 12-July-2021', 'إفصاح تكميلى', '<h2 style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; font-family: GE_SS_Two_Light; font-weight: 500; line-he', '<p>إفصاح تكميلى</p>', 'complementary-disclosure-12-july-2021', '16e68686d0d749effc09868e9ea6c0157597580.jpg,6b55ea6709050e1a03b9955944b0ff181998396.jpg,0a77973d3425a54541b163372fcee8d52200043.jpg,7d0abd2d8e5eb65c7e871f6ed692103b8516470.jpg,7d0abd2d8e5eb65', '1', 34, '2021-12-15 06:59:34', '2021-12-15 06:59:34'),
(37, 'Disclosure of material information 12-July-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 12-July-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-12-july-2021', 'ddb5a51a317c982fa7ab4e274424d1727456535.jpg,ddb5a51a317c982fa7ab4e274424d1727289502.jpg', '1', 35, '2021-12-15 07:03:45', '2021-12-15 07:03:45'),
(38, 'Disclosure of material information 07-July-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 07-July-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-07-july-2021', '4c06b07a857920fd055d285b7e4d56f26146661.jpg,4c06b07a857920fd055d285b7e4d56f25080595.jpg', '1', 36, '2021-12-15 07:07:38', '2021-12-15 07:07:38'),
(39, 'Disclosure of pending AGM meeting 04-July-2021', 'الإفصاح عن إجتماع الجمعية العامة المؤجل', '<p>Disclosure of pending AGM meeting 04-July-2021</p>', '<p>الإفصاح عن إجتماع الجمعية العامة المؤجل</p>', 'disclosure-of-pending-agm-meeting-04-july-2021', '0e82645c6738560615fd8d7f629b408a6657173.jpg,0e82645c6738560615fd8d7f629b408a478718.jpg', '1', 37, '2021-12-15 07:10:10', '2021-12-15 07:10:10'),
(40, 'Disclosure of material information 27-June-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 27-June-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-27-june-2021', 'cc0b24941f9fad4366b5b300b0df51131478373.jpg,cc0b24941f9fad4366b5b300b0df51134366104.jpg', '1', 38, '2021-12-15 07:19:33', '2021-12-15 07:19:33'),
(41, 'Disclosure of AGM meeting 27-June-2021', 'افصاح نتائج الجمعية العامة المؤجلة', '<p>Disclosure of AGM meeting 27-June-2021</p>', '<p>افصاح نتائج الجمعية العامة المؤجلة</p>', 'disclosure-of-agm-meeting-27-june-2021', 'c91595297ee4bf444fa32d772a5ecd1d7434454.jpg,c91595297ee4bf444fa32d772a5ecd1d6249481.jpg', '1', 39, '2021-12-15 07:22:09', '2021-12-15 07:22:09'),
(42, 'GAM Meeting 06-June-2021', 'إجتماع الجمعية العامة', '<p>GAM Meeting 06-June-2021</p>', '<p>إجتماع الجمعية العامة</p>', 'gam-meeting-06-june-2021', 'c766591e412c60118c82fa0fde827e8b7635502.jpg,3ed1f874c3ee5e24956bd6ed7e2b7caf1287139.jpg', '1', 40, '2021-12-15 07:25:34', '2021-12-15 07:25:34'),
(43, 'Disclosure of AGM meeting 06-June-2021', 'الإفصاح عن اجتماع الجمعية العمومية العادية', '<p>Disclosure of AGM meeting 06-June-2021</p>', '<p>الإفصاح عن اجتماع الجمعية العمومية العادية</p>', 'disclosure-of-agm-meeting-06-june-2021', 'e8cca32edff71db6697aebeefe891ced4586433.jpg,e8cca32edff71db6697aebeefe891ced9444385.jpg', '1', 41, '2021-12-15 07:29:33', '2021-12-15 07:29:33'),
(44, 'Disclosure of material information 14-February-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 14-February-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-14-february-2021', '4171fb6c2413bc2b59dd19768d20e43070200.jpg,4171fb6c2413bc2b59dd19768d20e4301576088.jpg', '1', 42, '2021-12-15 07:31:18', '2021-12-15 07:31:18'),
(45, 'AGM Meeting 07-February-2021', 'إجتماع الجمعية العامة', '<p>AGM Meeting 07-February-2021</p>', '<p>إجتماع الجمعية العامة</p>', 'agm-meeting-07-february-2021', '92001aab1c20cc4a22afdcca5cc1ded5621837.jpg,92001aab1c20cc4a22afdcca5cc1ded55718951.jpg', '1', 43, '2021-12-15 07:34:33', '2021-12-15 07:34:33'),
(46, 'AGM Meeting 24-January-2021', 'إجتماع الجمعية العامة', '<p>AGM Meeting 24-January-2021</p>', '<p>إجتماع الجمعية العامة</p>', 'agm-meeting-24-january-2021', 'c313e4e3ee85e01f09cdc04fa248c6227843542.jpg,c313e4e3ee85e01f09cdc04fa248c6227812522.jpg', '1', 44, '2021-12-15 07:38:29', '2021-12-15 07:38:29'),
(47, 'Disclosure of material information 11-January-2021', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 11-January-2021</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-11-january-2021', '3f51c0f2970b56190fd4f593f98a7c192884509.jpg,3f51c0f2970b56190fd4f593f98a7c197705528.jpg', '1', 45, '2021-12-15 08:35:08', '2021-12-15 08:35:08'),
(48, 'Disclosure of material information 06-January-2021', 'إفصاح عن معلومات جوهربة', '<p>Disclosure of material information 06-January-2021</p>', '<p>إفصاح عن معلومات جوهربة</p>', 'disclosure-of-material-information-06-january-2021', 'f277cfb01cc0d16104a04fdddaec550a3320332.jpg,f277cfb01cc0d16104a04fdddaec550a3836520.jpg', '1', 46, '2021-12-15 09:02:32', '2021-12-15 09:02:32'),
(49, 'Resignation of a board member 05-January-2021', 'إستقالة عضة مجلس إدارة', '<p>Resignation of a board member 05-January-2021</p>', '<p>إستقالة عضة مجلس إدارة</p>', 'resignation-of-a-board-member-05-january-2021', '9226e60f5c32bc671cc123c6f464aa116893861.jpg,98491372db26aafcae5cbdf3443d7e2c4837631.jpg,50ada141586327b3a4467073794e1bed7452993.jpg', '1', 47, '2021-12-15 10:37:36', '2021-12-15 10:37:36'),
(50, 'Faltering situation 31-December-2020', 'حالة تعثر', '<p>Faltering situation 31-December-2020</p>', '<p>حالة تعثر</p>', 'faltering-situation-31-december-2020', '0bc8f703fd80d8121b0d43dbc6113d263229323.jpg,1cefca73e376c4f4b0f1bdaca957a3017340443.jpg', '1', 48, '2021-12-15 10:42:08', '2021-12-15 10:42:08'),
(51, 'Disclosure of material information 07-October-2020', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 07-October-2020</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-07-october-2020', '5da62a28b45545d1a3004b17b28748552190197.jpg,5da62a28b45545d1a3004b17b28748556528529.jpg', '1', 49, '2021-12-15 10:45:34', '2021-12-15 10:45:34'),
(52, 'Disclosure of material information 07-October-2020-1', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 07-October-2020-1</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-07-october-2020-1', '420fad89d0820f19456faacf5591a9f33268052.jpg,24b1f8c0d44095b81f1a0c95689249741424774.jpg', '1', 50, '2021-12-15 10:49:35', '2021-12-15 10:49:35'),
(53, 'complementary disclosure 04-October-2020', 'إفصاح مكمل', '<p>complementary disclosure 04-October-2020</p>', '<p>إفصاح مكمل</p>', 'complementary-disclosure-04-october-2020', '8af2e06694bca65a62f6c39e3420ea441578585.jpg,8af2e06694bca65a62f6c39e3420ea44857584.jpg', '1', 51, '2021-12-15 10:54:20', '2021-12-15 10:54:20'),
(54, 'AGM Meeting 17-September-2020', 'إجتماع الجمعية العامة', '<p>AGM Meeting 17-September-2020</p>', '<p>إجتماع الجمعية العامة</p>', 'agm-meeting-17-september-2020', '6868e7959add4ccf3e067c93410d735c9062108.jpg,6868e7959add4ccf3e067c93410d735c1901469.jpg,920c9315b5b2abca266c6b2e144b87648334770.jpg', '1', 52, '2021-12-15 10:59:09', '2021-12-15 10:59:09'),
(55, 'AGM 2019 17-September-2020', 'إجتماع الجمعية العامة 2019', '<p>AGM 2019 17-September-2020</p>', '<p>إجتماع الجمعية العامة 2019</p>', 'agm-2019-17-september-2020', '3b97a30c79a3a9d65a863d9ea0216bd06429393.jpg,3b97a30c79a3a9d65a863d9ea0216bd07726091.jpg', '1', 53, '2021-12-15 11:02:42', '2021-12-15 11:02:42'),
(56, 'AGM report', 'AGM report', '<p>AGM report</p>', '<p>AGM report</p>', 'agm-report', '9c8ee9ac86c796e134e70324e755f8de7855115.jpg', '1', 54, '2021-12-15 11:05:54', '2021-12-15 11:05:54'),
(57, 'AGM result 10-September-2020', 'نتائج إجتماع الجمعية العامة', '<p>AGM result 10-September-2020</p>', '<p>نتائج إجتماع الجمعية العامة</p>', 'agm-result-10-september-2020', '7b2b209c22c119fc4c0f27b176eb7d929065544.jpg,7b2b209c22c119fc4c0f27b176eb7d926653232.jpg', '1', 55, '2021-12-15 11:16:09', '2021-12-15 11:16:09'),
(58, 'AGM regular appointment 27-August-2020', 'موعد الجمعية العمومية العادية', '<p>AGM regular appointment 27-August-2020</p>', '<p>موعد الجمعية العمومية العادية</p>', 'agm-regular-appointment-27-august-2020', '391ee6d43cea85cee1830c5de8d418168984840.jpg,b1f7c9c0c6cbcdab66c351a9893bea9a7278271.jpg,cae8f7823e8cda859a01ce2606b16fe74529972.jpg,5097358d53ab610ef48c7801e8264d9b4321508.jpg', '1', 56, '2021-12-15 11:20:58', '2021-12-15 11:20:58'),
(59, 'Complementary Disclosure 23-August-2020', 'إفصاح مكمل', '<p>Complementary Disclosure 23-August-2020</p>', '<p>إفصاح مكمل</p>', 'complementary-disclosure-23-august-2020', '59de777dece619284e0dc49a4416d5538830961.jpg,59de777dece619284e0dc49a4416d5534652739.jpg,fa91f8a59ef0bb9e1a0020e6b2cf2fe06988907.jpg,28e58785532431fc3d60cd677a7c82d08397366.jpg,6e63a9b4504bffc', '1', 57, '2021-12-15 11:29:06', '2021-12-15 11:29:06'),
(60, 'Complementary Disclosure 23-August-2020-1', 'إفصاح مكمل', '<p>Complementary Disclosure 23-August-2020</p>', '<p>إفصاح مكمل</p>', 'complementary-disclosure-23-august-2020-1', '81a7b4c3577148a2735af07923abb1b42963104.jpg,6de934554199dca1a258fd3c74b2070d468388.jpg,fdd85aaef14ebb91cb5d50542f469a2d5910322.jpg,b475707cbd07a5f5ddaca9e66d7b6d115828473.jpg,3cc289deb83af2c2', '1', 58, '2021-12-15 11:41:25', '2021-12-15 11:41:25'),
(61, 'Disclosure of material information 17-August-2020', 'الإفصاح عن معلومات جوهرية', '<p>Disclosure of material information 17-August-2020</p>', '<p>الإفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-17-august-2020', 'e6e4c9945ee4529488c902033cca0ae95699562.jpg,e6e4c9945ee4529488c902033cca0ae98940321.jpg', '1', 59, '2021-12-15 11:44:00', '2021-12-15 11:44:00'),
(62, 'Disclosure of material information 16-July-2020', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 16-July-2020</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-16-july-2020', '44b27ed24ae157386b219881af7393702790179.jpg,069ced9d9feb1b6aa475f37f7724add58706565.jpg', '1', 60, '2021-12-15 11:57:27', '2021-12-15 11:57:27'),
(63, 'Disclosure of material information 16-July-2020', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 16-July-2020</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-16-july-2020-1', '9ccd95be8ecab265b116629bd345ebf17264671.jpg,f7d9ebe4562ddbca1b12254564ab1ed76246941.jpg', '1', 61, '2021-12-15 12:00:08', '2021-12-15 12:00:08'),
(64, 'Disclosure of material information 16-July-2020-1', 'إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 16-July-2020-1</p>', '<p>إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-16-july-2020-1-1', '9eb062ae72e39ec91ea1cc7def5d24b7481371.jpg,cfd80d1eef43b9aed7789453c11d98265653499.jpg', '1', 62, '2021-12-15 12:07:05', '2021-12-16 08:07:51'),
(65, 'Disclosure of material information 14-July-2020', 'الإفصاح عن معلومات جوهرية', '<p>Disclosure of material information 14-July-2020</p>', '<p>الإفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-14-july-2020', 'db984fcf68e97bf9e62d604a9cd473dc1444920.jpg,fbe1409c131b891a408c18201e1e5f1a4059351.jpg', '1', 63, '2021-12-15 12:10:50', '2021-12-15 12:10:50'),
(66, 'Disclosure of material information 09-March-2020', 'الإفصاح عن معلومات جوهرية', '<p>Disclosure of material information 09-March-2020</p>', '<p>الإفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-09-march-2020', 'f924cc794cf0fec4bf462d649c82b60d6047808.jpg,f924cc794cf0fec4bf462d649c82b60d5479845.jpg', '1', 64, '2021-12-15 12:13:23', '2021-12-15 12:13:23'),
(67, 'Unusual trading 03-March-2020', 'تعقيب على تداول غير اعتيادي', '<p>Unusual trading 03-March-2020</p>', '<p>تعقيب على تداول غير اعتيادي</p>', 'unusual-trading-03-march-2020', 'f10d55d767c0578d5db73213c23674b47098435.jpg', '1', 65, '2021-12-15 12:16:11', '2021-12-15 12:16:11'),
(68, 'Unusual trading 13-February-2020', 'تداول غير إعتيادى', '<p>Unusual trading 13-February-2020</p>', '<p>تداول غير إعتيادى</p>', 'unusual-trading-13-february-2020', 'e987dd6f09f78a4ec752725ff2b5c2ad3847806.jpg', '1', 66, '2021-12-15 12:19:19', '2021-12-15 12:19:19'),
(69, 'Disclosure of material information 30-January-2020', 'الافصاحات إفصاح عن معلومات جوهرية', '<p>Disclosure of material information 30-January-2020</p>', '<p>الافصاحات إفصاح عن معلومات جوهرية</p>', 'disclosure-of-material-information-30-january-2020', '625c5a179759a4b15bf5f80653795ae25635001.jpg,625c5a179759a4b15bf5f80653795ae29840740.jpg', '1', 67, '2021-12-15 12:28:19', '2021-12-15 12:28:19'),
(70, 'Disclosure of a lawsuit 23-January-2020', 'إفصاح عن دعوة قضائية', '<p>Disclosure of a lawsuit 23-January-2020</p>', '<p>إفصاح عن دعوة قضائية</p>', 'disclosure-of-a-lawsuit-23-january-2020', 'f9cfceb3b8b0122a5d596d600638e6ab1255737.jpg,98cfddd09c92ed8fd039c2f20469f8414540059.jpg', '1', 68, '2021-12-15 12:30:22', '2021-12-15 12:30:22'),
(71, 'Disclosure of lawsuit 17-August-2021', 'إفصاح عن دعوى قضائية', '<p>Disclosure of lawsuit 17-August-2021</p>', '<p>إفصاح عن دعوى قضائية</p>', 'disclosure-of-lawsuit-17-august-2021', 'a88679cb274c1ec79f56abbb90d642803326686.jpg,a88679cb274c1ec79f56abbb90d642807535405.jpg', '1', 69, '2021-12-16 07:54:52', '2021-12-16 07:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `education_finances`
--

CREATE TABLE `education_finances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_school_id_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `installment_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_finances`
--

INSERT INTO `education_finances` (`id`, `name`, `parent_school_id_number`, `mobile`, `email`, `school`, `installment_number`, `amount`, `image`, `created_at`, `updated_at`) VALUES
(14, 'soheil', '12', '09307199929', 'Soheil@gmail.com', 'Al-Bayan Bilingual School', '9', '10', 'educations-image-84e347c96ab3cf3d2c9dbfa16f5f01db.png', '2021-12-01 09:32:44', '2021-12-01 09:32:44'),
(15, 'soheil', 'dasd', '96566444569', 'Soheil@gmail.com', 'Al-Bayan Bilingual School', '9', 'sdfs', 'educations-image-360af8701594202c195537617703620e.jpg', '2021-12-06 12:10:27', '2021-12-06 12:10:27'),
(16, 'test', '234234234', '254235325', 'oveis.farhadi@gulfclick.net', 'Al-Bayan Bilingual School', '9', '65', 'educations-image-594944b836120e33d1a15c695155b833.jpg', '2021-12-08 09:57:27', '2021-12-08 09:57:27'),
(17, 'soheil', 'asd', '96566444569', 'Soheil@gmail.com', 'Al-Bayan Bilingual School', '9', 'asda', 'educations-image-4ae80ba0ed724cdd643b3ee97d8677c2.jpg', '2022-02-09 12:21:20', '2022-02-09 12:21:20'),
(18, 'test', '55213262', '2659521', 'oveis.farhadi@gulfclick.net', 'Al-Bayan Bilingual School', '10', '30', 'educations-image-cccbc822b151dea0359196566efcad70.png', '2022-02-10 06:20:08', '2022-02-10 06:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freelancers`
--

CREATE TABLE `freelancers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `freelancers`
--

INSERT INTO `freelancers` (`id`, `package_id`, `expiration_date`, `name`, `image`, `phone`, `email`, `link`, `bio`, `category_id`, `rate_id`, `password`, `created_at`, `updated_at`) VALUES
(11, 1, '2021-11-02', 'soheil mehrandish', 'freelancers-image-6b66e6cfb4a56ff5b901a40281808d22.jpg', '09307199929', 'soheil@gmail.com', 'y8iyiyi', 'iy8iyi', NULL, NULL, '$2y$10$rIeRZQlgDfyYpV4u9rej7e9xuv4DzdB/HsoLEjEXtRria5ObWOxJK', '2021-09-28 10:57:23', '2021-10-03 12:39:53'),
(12, NULL, NULL, 'mehdi', NULL, '6876768', 'mehdi@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$qTPQXPfy1RXumeEK6M9dh.Bx4TRiO0nKnkOaSGzzKTJgYtYdD2EAK', '2021-10-04 08:19:07', '2021-10-04 08:19:07'),
(13, NULL, NULL, 'oveissssss', 'freelancers-image-3206a738ad07483e17fc5e8694189227.jpg', '65632588', 'oveisfaa@gmail.com', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'ssssssssssssssssssssssssssssssssssssssssssssss', NULL, NULL, '$2y$10$2H97PuZCVsMR77jn934uGet0mt18nk87WKpCT2JrEpSOyc6W7xNEK', '2021-10-06 10:54:54', '2021-10-06 12:43:02'),
(16, NULL, NULL, 'test77', NULL, '65656565', 'test77@gmail.com', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhh', NULL, NULL, NULL, '$2y$10$2M89JLs.h2U60ghgJHbq0u13uEdID48u6KkWMV47johOxcdImIyGC', '2021-10-06 12:44:16', '2021-10-06 13:02:01'),
(20, 1, '2021-11-06', 'ss', NULL, '2324', 'qq@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$M2prJ7WdLHd63jiVMPtY7u6qFXyiEFuOkvoYmgKCeMLT2miQWCkYS', '2021-10-07 12:57:41', '2021-10-07 13:00:30'),
(21, NULL, NULL, 'asdad', NULL, '1312', 'sssss@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$nXvOmQEPMc8qgwlY7hluseLvJOF97d2EtLjlMX4AQvmtCA2fPUCC2', '2021-10-07 12:58:42', '2021-10-07 12:58:42'),
(25, NULL, NULL, 'fsefsf', NULL, '34242', 'qqq@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$PE86X2rLHxy45f7lV1fQpufB.oON.Mgpuses/rPQt9yvFeADKa4aG', '2021-10-10 09:11:22', '2021-10-10 09:11:22'),
(26, 6, '2022-10-10', 'finaltest', NULL, '66666663', 'finaltest@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$nZjv8ZqViaxaaaM0vFXVVeJ6iEE41VPdmJfN1fvY52iVKyVgjwBHS', '2021-10-10 13:37:00', '2021-10-10 13:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_services`
--

CREATE TABLE `freelancer_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `freelancer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `freelancer_services`
--

INSERT INTO `freelancer_services` (`id`, `freelancer_id`, `name`, `price`, `short_desc`, `images`, `created_at`, `updated_at`) VALUES
(18, 7, 'gdfg', 45, 'gdfg', '59d52c98a9b8809e6d450bbdc063935c4509463.png', '2021-09-28 09:56:51', '2021-09-28 10:01:02'),
(22, 22, 'test70', 20, 'test70test70test70test70test70', '32df80755b04802c6bdac18ea263c8224438000.jpg', '2021-10-10 08:16:11', '2021-10-10 08:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_aboutus`
--

CREATE TABLE `gwc_aboutus` (
  `id` bigint(20) NOT NULL,
  `details_en` text NOT NULL,
  `details_ar` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_aboutus`
--

INSERT INTO `gwc_aboutus` (`id`, `details_en`, `details_ar`, `image`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span><span style=\"background-color: #ffffff; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px;\">Details (en)&nbsp;</span></p>', '<p><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span><label style=\"box-sizing: border-box; display: inline-block; margin-bottom: 0.5rem; font-size: 13px; color: #646c9a; font-family: Poppins, Helvetica, sans-serif; background-color: #ffffff;\">Details (ar)</label><span style=\"color: #646c9a; font-family: Poppins, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;\">&nbsp;</span></p>', 'aboutus-image-abaab804fdc9ef7ef18c2f7550b313b8.jpg', '2021-10-31 07:11:29', '2021-07-04 07:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_admins`
--

CREATE TABLE `gwc_admins` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `password_token` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_admins`
--

INSERT INTO `gwc_admins` (`id`, `name`, `email`, `mobile`, `username`, `password`, `image`, `is_active`, `created_by`, `password_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'info@gulfclick.net', '00000000', 'admin', '$2y$10$dBk.ebd0DSyQS/vyhPR5uO/anQFMB1gxoseGt6sQxFUENkkzKItHC', 'admins-image-dd9a7bd673ee2bf0dafef63b0703382b.png', 1, 1, '10e39fb7-1a15-4b10-accc-61b3f0cdb3c7', 'T3Ao62611kEwyq8JkkICyxJUUBzmafgj6BkIFPe8HG72jaKqTrytFGffBC8c', '2022-02-07 09:00:35', '2021-10-26 06:18:29'),
(5, 'test7', 'oveisfa@gmail.com', '63636363', 'test7', '$2y$10$G8ySYUvH4AIcACsAdjoapeSRom9CbtkiMClrTqUyZsIOgHyeioXaG', 'admins-image-437466cde02fce8ded4d4eec3bf04628.jpg', 1, 0, '', '', '2021-11-17 06:34:23', '2021-11-17 06:34:23'),
(6, 'almal', 'almal@gmail.com', '63254125', 'almal', '$2y$10$4VBfXaE1g2IluPy7d4hQqemeOhzs1Lr7qo9QD6MHrE6YIGtkoTxW6', 'admins-image-9e4b6f058b54625578f8c7b9a00feb3d.png', 1, 0, '', '', '2021-12-08 09:04:25', '2021-12-08 09:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_areas`
--

CREATE TABLE `gwc_areas` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `fee` double NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gwc_cities`
--

CREATE TABLE `gwc_cities` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `fee` double NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_cities`
--

INSERT INTO `gwc_cities` (`id`, `title_en`, `title_ar`, `country_id`, `fee`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'hawalli', 'hawalli', 2, 0, 1, '2021-10-31 07:11:29', '2021-10-03 12:15:40'),
(4, 'kuwait city', 'kuwait city', 2, 0, 1, '2021-10-31 07:11:29', '2021-07-12 04:02:48'),
(5, 'new york', 'new york', 1, 0, 1, '2021-10-31 07:11:29', '2021-08-16 11:45:48'),
(6, 'farwania', 'farwania', 2, 0, 1, '2021-10-31 07:11:29', '2021-07-18 07:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_countries`
--

CREATE TABLE `gwc_countries` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_countries`
--

INSERT INTO `gwc_countries` (`id`, `title_en`, `title_ar`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'usa', 'usa', 'countries-image-81ee49d2dce80d38aab37c7c3170e62f.png', 1, '2021-10-31 07:11:29', '2021-07-18 07:39:22'),
(2, 'kuwait', 'kuwait', 'countries-image-8774c08b4f3463b2ad892ee06ad14ce3.png', 1, '2021-10-31 07:11:29', '2021-07-18 07:39:36'),
(3, 'iran', 'iran', 'countries-image-ed13679bfc9d227f4eba5c39b59eb425.png', 1, '2021-10-31 07:11:29', '2021-07-18 07:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_coupons`
--

CREATE TABLE `gwc_coupons` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_type` varchar(255) NOT NULL,
  `coupon_value` double NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `price_start` double NOT NULL,
  `price_end` double NOT NULL,
  `usage_limit` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_free` tinyint(1) NOT NULL,
  `is_for` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_coupons`
--

INSERT INTO `gwc_coupons` (`id`, `title_en`, `title_ar`, `coupon_code`, `coupon_type`, `coupon_value`, `date_start`, `date_end`, `price_start`, `price_end`, `usage_limit`, `is_active`, `is_free`, `is_for`, `created_at`, `updated_at`) VALUES
(1, 'dfadsd', 'dfsafsdf', 'dsfsd', 'amount', 656.66, '2021-07-24', '2021-07-31', 200, 400, 545, 1, 0, 'web', '2021-10-31 07:11:29', '2021-07-19 08:04:05'),
(2, 'fdsfsf', 'sdfsdfsf', 'dsfsd3', 'amount', 3213, '2021-07-24', '2021-07-25', 432, 424324, 33, 1, 0, 'web', '2021-10-31 07:11:29', '2021-07-19 08:13:11'),
(3, 'qqqqqqqqq', 'wwwwwww', 'ddfsfdsf', 'amount', 7, '2021-07-21', '2021-07-22', 7777, 88888, 999, 1, 1, 'web', '2021-10-31 07:11:29', '2021-07-19 08:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_directors`
--

CREATE TABLE `gwc_directors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `display_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gwc_durations`
--

CREATE TABLE `gwc_durations` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_durations`
--

INSERT INTO `gwc_durations` (`id`, `title_en`, `title_ar`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1 month', '1 month', 1, '2021-10-31 07:11:29', '2021-07-12 10:35:46'),
(2, '3 month', '3 month', 1, '2021-10-31 07:11:29', '2021-07-12 10:36:03'),
(3, '1 year', '1 year', 1, '2021-10-31 07:11:29', '2021-07-12 10:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_featured_projects`
--

CREATE TABLE `gwc_featured_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `display_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gwc_home_about_info`
--

CREATE TABLE `gwc_home_about_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gwc_ideas`
--

CREATE TABLE `gwc_ideas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_details_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_details_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `display_order` int(11) NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gwc_logs`
--

CREATE TABLE `gwc_logs` (
  `id` int(11) NOT NULL,
  `key_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gwc_logs`
--

INSERT INTO `gwc_logs` (`id`, `key_name`, `key_id`, `message`, `created_at`, `updated_at`, `created_by`) VALUES
(4, 'logs', 1, 'Logs is deleted.(Role is edited to Admin)', '2021-06-26 11:18:04', '2021-06-26 11:18:04', 1),
(5, 'setting', 1, 'Website settings are updated', '2021-06-26 11:55:51', '2021-06-26 11:55:51', 1),
(6, 'setting', 1, 'Website settings are updated', '2021-06-26 12:11:20', '2021-06-26 12:11:20', 1),
(7, 'setting', 1, 'Website settings are updated', '2021-06-26 12:39:45', '2021-06-26 12:39:45', 1),
(8, 'setting', 1, 'Website settings are updated', '2021-06-26 12:43:30', '2021-06-26 12:43:30', 1),
(9, 'login', 1, 'Administrator(admin) is logged in to Admin Panel.', '2021-06-27 12:11:17', '2021-06-27 12:11:17', 1),
(11, 'globalPresence', 1, 'information updated', '2021-06-27 12:19:38', '2021-06-27 12:19:38', 1),
(12, 'setting', 1, 'Website settings are updated', '2021-06-27 12:45:06', '2021-06-27 12:45:06', 1),
(13, 'setting', 1, 'Website settings are updated', '2021-06-27 12:54:08', '2021-06-27 12:54:08', 1),
(14, 'developments', 1, 'A new record for developments is added. (1)', '2021-06-27 14:05:40', '2021-06-27 14:05:40', 1),
(15, 'developments', 1, 'Image is removed. (1)', '2021-06-27 14:05:48', '2021-06-27 14:05:48', 1),
(16, 'login', 1, 'Administrator(admin) is logged in to Admin Panel.', '2021-06-30 10:58:37', '2021-06-30 10:58:37', 1),
(17, 'ourservices', 1, 'A new record for ourservices is added. (fdsfd)', '2021-06-30 11:05:57', '2021-06-30 11:05:57', 1),
(18, 'ourservices', 2, 'A new record for ourservices is added. (dasa)', '2021-06-30 11:32:01', '2021-06-30 11:32:01', 1),
(19, 'ourservices', 2, 'Record for ourservices is edited. (dasa)', '2021-06-30 11:32:24', '2021-06-30 11:32:24', 1),
(20, 'privacy', 1, 'information updated', '2021-06-30 12:04:45', '2021-06-30 12:04:45', 1),
(21, 'privacy', 1, 'information updated', '2021-06-30 12:04:59', '2021-06-30 12:04:59', 1),
(22, 'role', 1, 'Role is edited to Admin', '2021-06-30 14:43:57', '2021-06-30 14:43:57', 1),
(23, 'role', 1, 'Role name is updated to Admin', '2021-06-30 14:44:02', '2021-06-30 14:44:02', 1),
(24, 'role', 1, 'Role is edited to Admin', '2021-06-30 14:44:06', '2021-06-30 14:44:06', 1),
(25, 'role', 1, 'Role is edited to Admin', '2021-06-30 14:47:47', '2021-06-30 14:47:47', 1),
(26, 'login', 1, 'Administrator(admin) is logged in to Admin Panel.', '2021-07-01 08:13:56', '2021-07-01 08:13:56', 1),
(27, 'menuTitles', 1, 'information updated', '2021-07-01 08:44:47', '2021-07-01 08:44:47', 1),
(28, 'menuTitles', 1, 'information updated', '2021-07-01 09:05:37', '2021-07-01 09:05:37', 1),
(29, 'menuTitles', 1, 'information updated', '2021-07-01 09:11:44', '2021-07-01 09:11:44', 1),
(30, 'menuTitles', 1, 'information updated', '2021-07-01 09:14:24', '2021-07-01 09:14:24', 1),
(31, 'user', 1, 'Profile is updated for Administrator', '2021-07-01 10:13:05', '2021-07-01 10:13:05', 1),
(32, 'user', 1, 'Profile is updated for Administrator', '2021-07-01 10:13:25', '2021-07-01 10:13:25', 1),
(33, 'about us', 1, 'information updated', '2021-07-01 10:58:00', '2021-07-01 10:58:00', 1),
(34, 'subjects', 1, 'A new subject is added.(General)', '2021-07-01 11:12:16', '2021-07-01 11:12:16', 1),
(35, 'subject', 1, 'Subject status is changed to 0.(General)', '2021-07-01 11:12:24', '2021-07-01 11:12:24', 1),
(36, 'subjects', 2, 'A new subject is added.(Agency)', '2021-07-01 11:12:55', '2021-07-01 11:12:55', 1),
(37, 'subject', 1, 'Subject status is changed to 1.(General)', '2021-07-01 11:13:04', '2021-07-01 11:13:04', 1),
(38, 'subject', 2, 'Subject status is changed to 1.(Agency)', '2021-07-01 11:13:05', '2021-07-01 11:13:05', 1),
(39, 'subjects', 3, 'A new subject is added.(11112222222)', '2021-07-01 11:13:18', '2021-07-01 11:13:18', 1),
(40, 'subjects', 4, 'A new subject is added.(Agency1)', '2021-07-01 11:16:30', '2021-07-01 11:16:30', 1),
(41, 'subjects', 4, 'A subject is removed.(Agency1)', '2021-07-01 11:16:35', '2021-07-01 11:16:35', 1),
(42, 'subjects', 3, 'A subject is removed.(11112222222)', '2021-07-01 11:16:38', '2021-07-01 11:16:38', 1),
(43, 'subjects', 2, 'A subject is removed.(Agency)', '2021-07-01 11:16:41', '2021-07-01 11:16:41', 1),
(44, 'subjects', 1, 'A subject is removed.(General)', '2021-07-01 11:16:44', '2021-07-01 11:16:44', 1),
(45, 'login', 1, 'Administrator(admin) is logged in to Admin Panel.', '2021-07-03 07:58:44', '2021-07-03 07:58:44', 1),
(46, 'ideas', 1, 'A new record for ideas is added. (1)', '2021-07-03 08:57:38', '2021-07-03 08:57:38', 1),
(47, 'Ideas', 2, 'A new record is added. (2)', '2021-07-03 12:55:36', '2021-07-03 12:55:36', 1),
(48, 'Ideas', 3, 'A new record is added. (3)', '2021-07-03 13:18:45', '2021-07-03 13:18:45', 1),
(49, 'Ideas', 4, 'A new record is added. (4)', '2021-07-03 13:53:23', '2021-07-03 13:53:23', 1),
(50, 'ideas', 1, 'Image is removed. (1)', '2021-07-03 14:08:35', '2021-07-03 14:08:35', 1),
(51, 'Ideas', 1, 'Record is edited. (1)', '2021-07-03 14:29:40', '2021-07-03 14:29:40', 1),
(52, 'ideas', 1, 'Image is removed. (1)', '2021-07-03 14:42:37', '2021-07-03 14:42:37', 1),
(53, 'Ideas', 1, 'Record is edited. (1)', '2021-07-03 14:42:56', '2021-07-03 14:42:56', 1),
(54, 'Ideas', 1, 'Record is edited. (1)', '2021-07-03 14:43:14', '2021-07-03 14:43:14', 1),
(55, 'Ideas', 1, 'Record is edited. (1)', '2021-07-03 14:45:48', '2021-07-03 14:45:48', 1),
(56, 'Ideas', 1, 'Record is edited. (1)', '2021-07-03 14:46:03', '2021-07-03 14:46:03', 1),
(57, 'ideas', 1, 'Image is removed. (1)', '2021-07-03 14:46:13', '2021-07-03 14:46:13', 1),
(58, 'Ideas', 1, 'Record is edited. (1)', '2021-07-03 14:46:24', '2021-07-03 14:46:24', 1),
(59, 'Ideas', 4, 'status is changed to 0 (4)', '2021-07-03 15:00:25', '2021-07-03 15:00:25', 1),
(60, 'Ideas', 3, 'status is changed to 0 (3)', '2021-07-03 15:00:46', '2021-07-03 15:00:46', 1),
(61, 'Ideas', 2, 'status is changed to 0 (2)', '2021-07-03 15:00:47', '2021-07-03 15:00:47', 1),
(62, 'Ideas', 1, 'status is changed to 0 (1)', '2021-07-03 15:00:47', '2021-07-03 15:00:47', 1),
(63, 'Ideas', 4, 'A record is removed. (4)', '2021-07-03 15:01:05', '2021-07-03 15:01:05', 1),
(64, 'Ideas', 3, 'A record is removed. (3)', '2021-07-03 15:03:39', '2021-07-03 15:03:39', 1),
(65, 'Ideas', 2, 'A record is removed. (2)', '2021-07-03 15:03:44', '2021-07-03 15:03:44', 1),
(66, 'Ideas', 1, 'A record is removed. (1)', '2021-07-03 15:03:49', '2021-07-03 15:03:49', 1),
(67, 'Ideas', 5, 'A new record is added. (5)', '2021-07-03 15:05:13', '2021-07-03 15:05:13', 1),
(68, 'Ideas', 6, 'A new record is added. (6)', '2021-07-03 15:05:46', '2021-07-03 15:05:46', 1),
(69, 'Ideas', 7, 'A new record is added. (7)', '2021-07-03 15:24:57', '2021-07-03 15:24:57', 1),
(70, 'Ideas', 8, 'A new record is added. (8)', '2021-07-03 15:30:22', '2021-07-03 15:30:22', 1),
(71, 'Ideas', 9, 'A new record is added. (9)', '2021-07-04 08:05:29', '2021-07-04 08:05:29', 1),
(72, 'Ideas', 9, 'status is changed to 1 (9)', '2021-07-04 08:05:32', '2021-07-04 08:05:32', 1),
(73, 'Ideas', 9, 'Record is edited. (9)', '2021-07-04 08:05:56', '2021-07-04 08:05:56', 1),
(74, 'Ideas', 9, 'Record is edited. (9)', '2021-07-04 08:06:07', '2021-07-04 08:06:07', 1),
(75, 'ideas', 9, 'Image is removed. (9)', '2021-07-04 08:06:16', '2021-07-04 08:06:16', 1),
(76, 'Ideas', 9, 'Record is edited. (9)', '2021-07-04 08:06:25', '2021-07-04 08:06:25', 1),
(77, 'Ideas', 9, 'A record is removed. (9)', '2021-07-04 08:06:52', '2021-07-04 08:06:52', 1),
(78, 'Aboutus', 1, 'information updated', '2021-07-04 10:17:21', '2021-07-04 10:17:21', 1),
(79, 'Aboutus', 1, 'information updated', '2021-07-04 10:17:35', '2021-07-04 10:17:35', 1),
(80, 'Aboutus', 1, 'information updated', '2021-07-04 10:17:46', '2021-07-04 10:17:46', 1),
(81, 'Aboutus', 1, 'Image is removed', '2021-07-04 10:19:03', '2021-07-04 10:19:03', 1),
(82, 'Aboutus', 1, 'information updated', '2021-07-04 10:19:26', '2021-07-04 10:19:26', 1),
(83, 'Settings', 1, 'Image is removed', '2021-07-04 11:11:01', '2021-07-04 11:11:01', 1),
(84, 'Settings', 1, 'Image is removed', '2021-07-04 11:11:05', '2021-07-04 11:11:05', 1),
(85, 'Settings', 1, 'Image is removed', '2021-07-04 11:11:08', '2021-07-04 11:11:08', 1),
(86, 'Settings', 1, 'information updated', '2021-07-04 11:22:05', '2021-07-04 11:22:05', 1),
(87, 'Settings', 1, 'information updated', '2021-07-04 12:03:27', '2021-07-04 12:03:27', 1),
(88, 'Settings', 1, 'information updated', '2021-07-04 12:04:24', '2021-07-04 12:04:24', 1),
(89, 'Settings', 1, 'Image is removed', '2021-07-04 12:04:32', '2021-07-04 12:04:32', 1),
(90, 'Settings', 1, 'information updated', '2021-07-04 12:04:47', '2021-07-04 12:04:47', 1),
(91, 'Settings', 1, 'information updated', '2021-07-04 12:05:04', '2021-07-04 12:05:04', 1),
(92, 'Aboutus', 1, 'information updated', '2021-07-04 12:05:44', '2021-07-04 12:05:44', 1),
(93, 'Aboutus', 1, 'Image is removed', '2021-07-04 12:05:50', '2021-07-04 12:05:50', 1),
(94, 'Aboutus', 1, 'information updated', '2021-07-04 12:05:58', '2021-07-04 12:05:58', 1),
(95, 'Ideas', 10, 'A new record is added. (10)', '2021-07-04 12:06:40', '2021-07-04 12:06:40', 1),
(96, 'Ideas', 10, 'Image is removed. (10)', '2021-07-04 12:07:08', '2021-07-04 12:07:08', 1),
(97, 'Ideas', 10, 'Record is edited. (10)', '2021-07-04 12:07:19', '2021-07-04 12:07:19', 1),
(98, 'Ideas', 10, 'A record is removed. (10)', '2021-07-04 12:07:34', '2021-07-04 12:07:34', 1),
(99, 'Ideas', 8, 'A record is removed. (8)', '2021-07-04 12:07:38', '2021-07-04 12:07:38', 1),
(100, 'Ideas', 7, 'A record is removed. (7)', '2021-07-04 12:07:42', '2021-07-04 12:07:42', 1),
(101, 'Ideas', 6, 'A record is removed. (6)', '2021-07-04 12:07:46', '2021-07-04 12:07:46', 1),
(102, 'Ideas', 5, 'A record is removed. (5)', '2021-07-04 12:07:50', '2021-07-04 12:07:50', 1),
(103, 'logout', 1, 'Administrator(admin) is logged out from Admin Panel.', '2021-07-04 12:12:17', '2021-07-04 12:12:17', 1),
(104, 'login', 1, 'Administrator(admin) is logged in to Admin Panel.', '2021-07-04 12:53:58', '2021-07-04 12:53:58', 1),
(105, 'role', 1, 'Role is edited to Admin', '2021-07-04 13:11:56', '2021-07-04 13:11:56', 1),
(106, 'role', 1, 'Role name is updated to Admin', '2021-07-04 13:12:04', '2021-07-04 13:12:04', 1),
(107, 'role', 1, 'Role is edited to Admin', '2021-07-04 13:12:04', '2021-07-04 13:12:04', 1),
(108, 'role', 1, 'Role is edited to Admin', '2021-07-04 13:16:11', '2021-07-04 13:16:11', 1),
(109, 'Notify Emails', 2, 'A new record is added. (2)', '2021-07-04 13:25:22', '2021-07-04 13:25:22', 1),
(110, 'Notify Emails', 3, 'A new record is added. (3)', '2021-07-04 13:25:40', '2021-07-04 13:25:40', 1),
(111, 'Notify Emails', 3, 'Record is edited. (3)', '2021-07-04 13:29:21', '2021-07-04 13:29:21', 1),
(112, 'Notify Emails', 3, 'Record is edited. (3)', '2021-07-04 13:31:03', '2021-07-04 13:31:03', 1),
(113, 'Notify Emails', 3, 'status is changed to 0 (3)', '2021-07-04 13:32:42', '2021-07-04 13:32:42', 1),
(114, 'Notify Emails', 3, 'status is changed to 1 (3)', '2021-07-04 13:32:44', '2021-07-04 13:32:44', 1),
(115, 'Notify Emails', 3, 'A record is removed. (3)', '2021-07-04 13:32:49', '2021-07-04 13:32:49', 1),
(116, 'Logs', 10, 'A record is removed. (10)', '2021-07-04 13:54:57', '2021-07-04 13:54:57', 1),
(117, 'Logs', 2, 'A record is removed. (2)', '2021-07-04 13:55:03', '2021-07-04 13:55:03', 1),
(118, 'Logs', 3, 'A record is removed. (3)', '2021-07-04 13:55:56', '2021-07-04 13:55:56', 1),
(119, 'user', 1, 'Status is changed to 0 for Administrator', '2021-07-04 14:10:29', '2021-07-04 14:10:29', 1),
(120, 'user', 1, 'Status is changed to 1 for Administrator', '2021-07-04 14:10:45', '2021-07-04 14:10:45', 1),
(121, 'role', 2, 'New Role is created as  role1', '2021-07-04 14:11:39', '2021-07-04 14:11:39', 1),
(122, 'user', 3, 'Account is created for name', '2021-07-04 14:12:53', '2021-07-04 14:12:53', 1),
(123, 'user', 3, 'Status is changed to 0 for name', '2021-07-04 14:12:59', '2021-07-04 14:12:59', 1),
(124, 'user', 3, 'Profile is updated for name', '2021-07-04 14:13:10', '2021-07-04 14:13:10', 1),
(125, 'user', 3, 'Password is changed for name1', '2021-07-04 14:13:55', '2021-07-04 14:13:55', 1),
(126, 'user', 3, 'Account is deleted for name1', '2021-07-04 14:14:06', '2021-07-04 14:14:06', 1),
(127, 'role', 1, 'Role is edited to Admin', '2021-07-04 14:14:21', '2021-07-04 14:14:21', 1),
(128, 'role', 2, 'Role is edited to role1', '2021-07-04 14:14:28', '2021-07-04 14:14:28', 1),
(129, 'role', 2, 'Role name is updated to role2', '2021-07-04 14:14:35', '2021-07-04 14:14:35', 1),
(130, 'role', 2, 'Role is edited to role2', '2021-07-04 14:14:35', '2021-07-04 14:14:35', 1),
(131, 'role', 3, 'New Role is created as  role 3', '2021-07-04 14:15:03', '2021-07-04 14:15:03', 1),
(132, 'role', 4, 'New Role is created as  role 4', '2021-07-04 14:16:45', '2021-07-04 14:16:45', 1),
(133, 'role', 5, 'New Role is created as  role6', '2021-07-04 14:17:25', '2021-07-04 14:17:25', 1),
(134, 'role', 1, 'Role is edited to Admin', '2021-07-04 14:37:27', '2021-07-04 14:37:27', 1),
(135, 'Subjects', 5, 'A new record is added. (5)', '2021-07-04 14:39:13', '2021-07-04 14:39:13', 1),
(136, 'Subjects', 6, 'A new record is added. (6)', '2021-07-04 14:39:31', '2021-07-04 14:39:31', 1),
(137, 'Subjects', 6, 'status is changed to 1 (6)', '2021-07-04 14:39:39', '2021-07-04 14:39:39', 1),
(138, 'Subjects', 6, 'status is changed to 0 (6)', '2021-07-04 14:39:42', '2021-07-04 14:39:42', 1),
(139, 'Subjects', 6, 'Record is edited. (6)', '2021-07-04 14:39:55', '2021-07-04 14:39:55', 1),
(140, 'Ideas', 11, 'A new record is added. (11)', '2021-07-04 14:40:53', '2021-07-04 14:40:53', 1),
(141, 'Subjects', 6, 'status is changed to 0 (6)', '2021-07-04 14:46:22', '2021-07-04 14:46:22', 1),
(142, 'Subjects', 6, 'A record is removed. (6)', '2021-07-04 14:46:28', '2021-07-04 14:46:28', 1),
(143, 'role', 1, 'Role is edited to Admin', '2021-07-04 15:02:59', '2021-07-04 15:02:59', 1),
(144, 'role', 1, 'Role name is updated to Admin', '2021-07-04 15:03:07', '2021-07-04 15:03:07', 1),
(145, 'role', 1, 'Role is edited to Admin', '2021-07-04 15:03:07', '2021-07-04 15:03:07', 1),
(146, 'Messages', 1, 'A record is removed. (1)', '2021-07-04 15:18:45', '2021-07-04 15:18:45', 1),
(147, 'role', 1, 'Role is edited to Admin', '2021-07-05 07:54:00', '2021-07-05 07:54:00', 1),
(148, 'role', 1, 'Role is edited to Admin', '2021-07-05 07:54:45', '2021-07-05 07:54:45', 1),
(149, 'role', 1, 'Role name is updated to Admin', '2021-07-05 07:54:51', '2021-07-05 07:54:51', 1),
(150, 'role', 1, 'Role is edited to Admin', '2021-07-05 07:54:51', '2021-07-05 07:54:51', 1),
(151, 'role', 1, 'Role is edited to Admin', '2021-07-05 07:56:53', '2021-07-05 07:56:53', 1),
(152, 'FAQ', 1, 'information updated', '2021-07-05 08:02:33', '2021-07-05 08:02:33', 1),
(153, 'FAQ', 1, 'information updated', '2021-07-05 08:02:48', '2021-07-05 08:02:48', 1),
(154, 'role', 1, 'Role is edited to Admin', '2021-07-05 08:14:47', '2021-07-05 08:14:47', 1),
(155, 'role', 1, 'Role name is updated to Admin', '2021-07-05 08:14:51', '2021-07-05 08:14:51', 1),
(156, 'role', 1, 'Role is edited to Admin', '2021-07-05 08:14:51', '2021-07-05 08:14:51', 1),
(157, 'Returns', 1, 'information updated', '2021-07-05 08:20:11', '2021-07-05 08:20:11', 1),
(158, 'role', 1, 'Role is edited to Admin', '2021-07-05 08:21:45', '2021-07-05 08:21:45', 1),
(159, 'role', 1, 'Role name is updated to Admin', '2021-07-05 08:21:50', '2021-07-05 08:21:50', 1),
(160, 'role', 1, 'Role is edited to Admin', '2021-07-05 08:21:50', '2021-07-05 08:21:50', 1),
(161, 'role', 1, 'Role is edited to Admin', '2021-07-05 08:24:51', '2021-07-05 08:24:51', 1),
(162, 'Our Mission', 1, 'information updated', '2021-07-05 08:30:13', '2021-07-05 08:30:13', 1),
(163, 'role', 1, 'Role is edited to Admin', '2021-07-05 08:31:50', '2021-07-05 08:31:50', 1),
(164, 'role', 1, 'Role name is updated to Admin', '2021-07-05 08:31:59', '2021-07-05 08:31:59', 1),
(165, 'role', 1, 'Role is edited to Admin', '2021-07-05 08:31:59', '2021-07-05 08:31:59', 1),
(166, 'Terms And Condition', 1, 'information updated', '2021-07-05 08:37:59', '2021-07-05 08:37:59', 1),
(167, 'role', 1, 'Role is edited to Admin', '2021-07-05 08:39:32', '2021-07-05 08:39:32', 1),
(168, 'role', 1, 'Role name is updated to Admin', '2021-07-05 08:39:36', '2021-07-05 08:39:36', 1),
(169, 'role', 1, 'Role is edited to Admin', '2021-07-05 08:39:37', '2021-07-05 08:39:37', 1),
(170, 'Giving back', 1, 'information updated', '2021-07-05 08:46:12', '2021-07-05 08:46:12', 1),
(171, 'Slideshows', 1, 'A new record is added. (1)', '2021-07-05 14:57:07', '2021-07-05 14:57:07', 1),
(172, 'Slideshows', 1, 'status is changed to 0 (1)', '2021-07-05 14:57:23', '2021-07-05 14:57:23', 1),
(173, 'Slideshows', 1, 'status is changed to 1 (1)', '2021-07-05 14:57:58', '2021-07-05 14:57:58', 1),
(174, 'Slideshows', 1, 'Record is edited. (1)', '2021-07-05 14:58:59', '2021-07-05 14:58:59', 1),
(175, 'Slideshows', 1, 'Image is removed. (1)', '2021-07-05 14:59:23', '2021-07-05 14:59:23', 1),
(176, 'Slideshows', 1, 'Record is edited. (1)', '2021-07-05 14:59:36', '2021-07-05 14:59:36', 1),
(177, 'Slideshows', 1, 'Record is edited. (1)', '2021-07-05 14:59:48', '2021-07-05 14:59:48', 1),
(178, 'Slideshows', 1, 'A record is removed. (1)', '2021-07-05 14:59:53', '2021-07-05 14:59:53', 1),
(179, 'role', 1, 'Role is edited to Admin', '2021-07-06 08:22:11', '2021-07-06 08:22:11', 1),
(180, 'role', 1, 'Role name is updated to Admin', '2021-07-06 08:22:18', '2021-07-06 08:22:18', 1),
(181, 'role', 1, 'Role is edited to Admin', '2021-07-06 08:22:18', '2021-07-06 08:22:18', 1),
(182, 'Single Pages', 1, 'A new record is added. (1)', '2021-07-06 08:23:31', '2021-07-06 08:23:31', 1),
(183, 'Single Pages', 2, 'A new record is added. (2)', '2021-07-06 08:23:54', '2021-07-06 08:23:54', 1),
(184, 'Single Pages', 3, 'A new record is added. (3)', '2021-07-06 08:24:22', '2021-07-06 08:24:22', 1),
(185, 'Single Pages', 3, 'Image is removed. (3)', '2021-07-06 08:25:14', '2021-07-06 08:25:14', 1),
(186, 'Single Pages', 3, 'Record is edited. (3)', '2021-07-06 08:25:18', '2021-07-06 08:25:18', 1),
(187, 'Single Pages', 3, 'Record is edited. (3)', '2021-07-06 08:25:45', '2021-07-06 08:25:45', 1),
(188, 'Single Pages', 3, 'Record is edited. (3)', '2021-07-06 08:26:13', '2021-07-06 08:26:13', 1),
(189, 'Single Pages', 3, 'A record is removed. (3)', '2021-07-06 08:30:49', '2021-07-06 08:30:49', 1),
(190, 'Single Pages', 2, 'A record is removed. (2)', '2021-07-06 08:30:53', '2021-07-06 08:30:53', 1),
(191, 'Single Pages', 1, 'A record is removed. (1)', '2021-07-06 08:30:57', '2021-07-06 08:30:57', 1),
(192, 'Single Pages', 4, 'A new record is added. (4)', '2021-07-06 08:31:36', '2021-07-06 08:31:36', 1),
(193, 'Single Pages', 5, 'A new record is added. (5)', '2021-07-06 08:32:01', '2021-07-06 08:32:01', 1),
(194, 'Single Pages', 6, 'A new record is added. (6)', '2021-07-06 08:32:35', '2021-07-06 08:32:35', 1),
(195, 'Single Pages', 6, 'Record is edited. (6)', '2021-07-06 08:32:59', '2021-07-06 08:32:59', 1),
(196, 'Single Pages', 7, 'A new record is added. (7)', '2021-07-06 08:33:28', '2021-07-06 08:33:28', 1),
(197, 'Single Pages', 8, 'A new record is added. (8)', '2021-07-06 08:33:54', '2021-07-06 08:33:54', 1),
(198, 'role', 1, 'Role is edited to Admin', '2021-07-06 09:19:57', '2021-07-06 09:19:57', 1),
(199, 'role', 1, 'Role is edited to Admin', '2021-07-06 14:41:42', '2021-07-06 14:41:42', 1),
(200, 'role', 1, 'Role is edited to Admin', '2021-07-06 14:53:58', '2021-07-06 14:53:58', 1),
(201, 'role', 1, 'Role name is updated to Admin', '2021-07-06 14:54:05', '2021-07-06 14:54:05', 1),
(202, 'role', 1, 'Role is edited to Admin', '2021-07-06 14:54:05', '2021-07-06 14:54:05', 1),
(203, 'Areas', 1, 'A new record is added. (1)', '2021-07-06 14:55:23', '2021-07-06 14:55:23', 1),
(204, 'Areas', 2, 'A new record is added. (2)', '2021-07-06 14:56:25', '2021-07-06 14:56:25', 1),
(205, 'Areas', 2, 'status is changed to 0 (2)', '2021-07-06 14:56:29', '2021-07-06 14:56:29', 1),
(206, 'Areas', 2, 'status is changed to 1 (2)', '2021-07-06 14:56:30', '2021-07-06 14:56:30', 1),
(207, 'Areas', 2, 'Record is edited. (2)', '2021-07-06 14:56:38', '2021-07-06 14:56:38', 1),
(208, 'Areas', 2, 'Record is edited. (2)', '2021-07-06 14:56:48', '2021-07-06 14:56:48', 1),
(209, 'Areas', 2, 'status is changed to 1 (2)', '2021-07-06 14:56:51', '2021-07-06 14:56:51', 1),
(210, 'Areas', 3, 'A new record is added. (3)', '2021-07-06 14:56:58', '2021-07-06 14:56:58', 1),
(211, 'Areas', 3, 'A record is removed. (3)', '2021-07-06 14:57:24', '2021-07-06 14:57:24', 1),
(212, 'Areas', 4, 'A new record is added. (4)', '2021-07-06 14:57:32', '2021-07-06 14:57:32', 1),
(213, 'role', 1, 'Role is edited to Admin', '2021-07-07 07:46:52', '2021-07-07 07:46:52', 1),
(214, 'role', 1, 'Role name is updated to Admin', '2021-07-07 07:46:58', '2021-07-07 07:46:58', 1),
(215, 'role', 1, 'Role is edited to Admin', '2021-07-07 07:46:58', '2021-07-07 07:46:58', 1),
(216, 'Areas', 5, 'A new record is added. (5)', '2021-07-07 07:52:05', '2021-07-07 07:52:05', 1),
(217, 'Areas', 6, 'A new record is added. (6)', '2021-07-07 08:21:54', '2021-07-07 08:21:54', 1),
(218, 'Areas', 6, 'status is changed to 1 (6)', '2021-07-07 08:21:59', '2021-07-07 08:21:59', 1),
(219, 'Areas', 6, 'Record is edited. (6)', '2021-07-07 08:23:06', '2021-07-07 08:23:06', 1),
(220, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-07-10 08:51:25', '2021-07-10 08:51:25', 1),
(221, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-10 09:01:10', '2021-07-10 09:01:10', 1),
(222, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-07-10 09:01:27', '2021-07-10 09:01:27', 1),
(223, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-10 09:01:37', '2021-07-10 09:01:37', 1),
(224, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-07-10 09:08:19', '2021-07-10 09:08:19', 1),
(225, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-10 09:09:24', '2021-07-10 09:09:24', 1),
(226, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-07-10 09:09:32', '2021-07-10 09:09:32', 1),
(227, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-10 11:12:11', '2021-07-10 11:12:11', 1),
(228, 'role', 1, 'Role is edited to Admin', '2021-07-10 12:24:03', '2021-07-10 12:24:03', 1),
(229, 'role', 1, 'Role name is updated to Admin', '2021-07-10 12:24:18', '2021-07-10 12:24:18', 1),
(230, 'role', 1, 'Role is edited to Admin', '2021-07-10 12:24:18', '2021-07-10 12:24:18', 1),
(231, 'role', 1, 'Role name is updated to Admin', '2021-07-10 12:24:32', '2021-07-10 12:24:32', 1),
(232, 'role', 1, 'Role is edited to Admin', '2021-07-10 12:24:32', '2021-07-10 12:24:32', 1),
(233, 'role', 1, 'Role is edited to Admin', '2021-07-10 14:01:31', '2021-07-10 14:01:31', 1),
(234, 'role', 1, 'Role name is updated to Admin', '2021-07-10 14:01:36', '2021-07-10 14:01:36', 1),
(235, 'role', 1, 'Role is edited to Admin', '2021-07-10 14:01:36', '2021-07-10 14:01:36', 1),
(236, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-11 08:01:33', '2021-07-11 08:01:33', 1),
(237, 'Admins', 2, 'A new record is added. (2)', '2021-07-11 08:17:52', '2021-07-11 08:17:52', 1),
(238, 'Admins', 2, 'status is changed to 0 (2)', '2021-07-11 08:18:15', '2021-07-11 08:18:15', 1),
(239, 'Admins', 2, 'status is changed to 1 (2)', '2021-07-11 08:18:45', '2021-07-11 08:18:45', 1),
(240, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-07-11 08:19:14', '2021-07-11 08:19:14', 1),
(241, 'login', 2, 'admin 1 is logged in to Admin Panel.', '2021-07-11 08:19:31', '2021-07-11 08:19:31', 2),
(242, 'Admins', 2, 'Record is edited. (2)', '2021-07-11 08:34:41', '2021-07-11 08:34:41', 2),
(243, 'Admins', 2, 'Record is edited. (2)', '2021-07-11 08:35:20', '2021-07-11 08:35:20', 2),
(244, 'admins', 2, 'Password is changed for admin 1', '2021-07-11 08:38:03', '2021-07-11 08:38:03', 2),
(245, 'admins', 2, 'Password is changed for admin 1', '2021-07-11 08:38:59', '2021-07-11 08:38:59', 2),
(246, 'logout', 2, 'admin 1 is logged out from Admin Panel.', '2021-07-11 08:39:25', '2021-07-11 08:39:25', 2),
(247, 'login', 2, 'admin 1 is logged in to Admin Panel.', '2021-07-11 08:39:57', '2021-07-11 08:39:57', 2),
(248, 'Admins', 2, 'Record is edited. (2)', '2021-07-11 17:32:06', '2021-07-11 17:32:06', 2),
(249, 'Admins', 2, 'Record is edited. (2)', '2021-07-11 17:32:36', '2021-07-11 17:32:36', 2),
(250, 'admins', 2, 'Password is changed for admin 1', '2021-07-11 17:33:47', '2021-07-11 17:33:47', 2),
(251, 'admins', 2, 'Password is changed for admin 1', '2021-07-11 17:35:14', '2021-07-11 17:35:14', 2),
(252, 'Admins', 2, 'A record is removed. (2)', '2021-07-11 17:39:30', '2021-07-11 17:39:30', 2),
(253, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-11 17:39:41', '2021-07-11 17:39:41', 1),
(254, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-12 07:52:10', '2021-07-12 07:52:10', 1),
(255, 'role', 1, 'Role is edited to Admin', '2021-07-12 08:05:36', '2021-07-12 08:05:36', 1),
(256, 'role', 1, 'Role name is updated to Admin', '2021-07-12 08:05:46', '2021-07-12 08:05:46', 1),
(257, 'role', 1, 'Role is edited to Admin', '2021-07-12 08:05:46', '2021-07-12 08:05:46', 1),
(258, 'role', 1, 'Role is edited to Admin', '2021-07-12 08:06:35', '2021-07-12 08:06:35', 1),
(259, 'Countries', 1, 'A new record is added. (1)', '2021-07-12 08:31:27', '2021-07-12 08:31:27', 1),
(260, 'Countries', 2, 'A new record is added. (2)', '2021-07-12 08:31:41', '2021-07-12 08:31:41', 1),
(261, 'Cities', 1, 'A new record is added. (1)', '2021-07-12 08:31:59', '2021-07-12 08:31:59', 1),
(262, 'Cities', 2, 'A new record is added. (2)', '2021-07-12 08:32:15', '2021-07-12 08:32:15', 1),
(263, 'Cities', 3, 'A new record is added. (3)', '2021-07-12 08:32:29', '2021-07-12 08:32:29', 1),
(264, 'Cities', 4, 'A new record is added. (4)', '2021-07-12 08:32:48', '2021-07-12 08:32:48', 1),
(265, 'Areas', 1, 'A new record is added. (1)', '2021-07-12 08:33:35', '2021-07-12 08:33:35', 1),
(266, 'Areas', 1, 'status is changed to 0 (1)', '2021-07-12 08:33:40', '2021-07-12 08:33:40', 1),
(267, 'Areas', 1, 'status is changed to 1 (1)', '2021-07-12 08:33:42', '2021-07-12 08:33:42', 1),
(268, 'Countries', 1, 'Record is edited. (1)', '2021-07-12 08:34:00', '2021-07-12 08:34:00', 1),
(269, 'Cities', 2, 'Record is edited. (2)', '2021-07-12 08:34:20', '2021-07-12 08:34:20', 1),
(270, 'Areas', 1, 'Record is edited. (1)', '2021-07-12 08:34:40', '2021-07-12 08:34:40', 1),
(271, 'Cities', 5, 'A new record is added. (5)', '2021-07-12 08:43:20', '2021-07-12 08:43:20', 1),
(272, 'Cities', 6, 'A new record is added. (6)', '2021-07-12 08:51:18', '2021-07-12 08:51:18', 1),
(273, 'Cities', 6, 'Record is edited. (6)', '2021-07-12 08:52:08', '2021-07-12 08:52:08', 1),
(274, 'Cities', 6, 'Record is edited. (6)', '2021-07-12 08:52:45', '2021-07-12 08:52:45', 1),
(275, 'Cities', 6, 'Record is edited. (6)', '2021-07-12 08:56:39', '2021-07-12 08:56:39', 1),
(276, 'Cities', 6, 'Record is edited. (6)', '2021-07-12 08:56:47', '2021-07-12 08:56:47', 1),
(277, 'Cities', 6, 'Record is edited. (6)', '2021-07-12 08:56:56', '2021-07-12 08:56:56', 1),
(278, 'Areas', 1, 'Record is edited. (1)', '2021-07-12 08:57:14', '2021-07-12 08:57:14', 1),
(279, 'Areas', 1, 'Record is edited. (1)', '2021-07-12 08:57:24', '2021-07-12 08:57:24', 1),
(280, 'Users', 1, 'A new record is added. (1)', '2021-07-12 12:32:34', '2021-07-12 12:32:34', 1),
(281, 'Users', 1, 'Record is edited. (1)', '2021-07-12 13:45:23', '2021-07-12 13:45:23', 1),
(282, 'Users', 1, 'status is changed to 0 (1)', '2021-07-12 13:59:33', '2021-07-12 13:59:33', 1),
(283, 'Users', 1, 'status is changed to 1 (1)', '2021-07-12 13:59:50', '2021-07-12 13:59:50', 1),
(284, 'Users', 1, 'status is changed to 0 (1)', '2021-07-12 14:00:11', '2021-07-12 14:00:11', 1),
(285, 'Users', 1, 'status is changed to 1 (1)', '2021-07-12 14:00:30', '2021-07-12 14:00:30', 1),
(286, 'Users', 1, 'status is changed to 0 (1)', '2021-07-12 14:01:17', '2021-07-12 14:01:17', 1),
(287, 'Users', 1, 'status is changed to 1 (1)', '2021-07-12 14:02:36', '2021-07-12 14:02:36', 1),
(288, 'Users', 1, 'newsletter status is changed to 0 (1)', '2021-07-12 14:02:44', '2021-07-12 14:02:44', 1),
(289, 'Users', 1, 'status is changed to 0 (1)', '2021-07-12 14:02:53', '2021-07-12 14:02:53', 1),
(290, 'Users', 1, 'newsletter status is changed to 1 (1)', '2021-07-12 14:03:04', '2021-07-12 14:03:04', 1),
(291, 'Users', 1, 'status is changed to 1 (1)', '2021-07-12 14:03:05', '2021-07-12 14:03:05', 1),
(292, 'admins', 1, 'Password is changed for Administrator', '2021-07-12 14:03:44', '2021-07-12 14:03:44', 1),
(293, 'admins', 1, 'Password is changed for Administrator', '2021-07-12 14:04:12', '2021-07-12 14:04:12', 1),
(294, 'Users', 1, 'Record is edited. (1)', '2021-07-12 14:04:33', '2021-07-12 14:04:33', 1),
(295, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-07-12 14:04:43', '2021-07-12 14:04:43', 1),
(296, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-12 14:04:59', '2021-07-12 14:04:59', 1),
(297, 'Users', 1, 'Record is edited. (1)', '2021-07-12 14:05:40', '2021-07-12 14:05:40', 1),
(298, 'Users', 1, 'A record is removed. (1)', '2021-07-12 14:06:02', '2021-07-12 14:06:02', 1),
(299, 'role', 2, 'New Role is created as  editor', '2021-07-12 14:09:39', '2021-07-12 14:09:39', 1),
(300, 'role', 2, 'Role is edited to editor', '2021-07-12 14:09:51', '2021-07-12 14:09:51', 1),
(301, 'role', 2, 'Role name is updated to editor', '2021-07-12 14:09:59', '2021-07-12 14:09:59', 1),
(302, 'role', 2, 'Role is edited to editor', '2021-07-12 14:09:59', '2021-07-12 14:09:59', 1),
(303, 'Admins', 3, 'A new record is added. (3)', '2021-07-12 14:10:44', '2021-07-12 14:10:44', 1),
(304, 'Admins', 3, 'A record is removed. (3)', '2021-07-12 14:12:04', '2021-07-12 14:12:04', 1),
(305, 'Admins', 1, 'Record is edited. (1)', '2021-07-12 14:12:21', '2021-07-12 14:12:21', 1),
(306, 'Admins', 1, 'Record is edited. (1)', '2021-07-12 14:12:47', '2021-07-12 14:12:47', 1),
(307, 'role', 1, 'Role is edited to Admin', '2021-07-12 14:18:46', '2021-07-12 14:18:46', 1),
(308, 'role', 1, 'Role name is updated to Admin', '2021-07-12 14:18:51', '2021-07-12 14:18:51', 1),
(309, 'role', 1, 'Role is edited to Admin', '2021-07-12 14:18:52', '2021-07-12 14:18:52', 1),
(310, 'Durations', 1, 'A new record is added. (1)', '2021-07-12 15:05:46', '2021-07-12 15:05:46', 1),
(311, 'Durations', 2, 'A new record is added. (2)', '2021-07-12 15:06:03', '2021-07-12 15:06:03', 1),
(312, 'Durations', 3, 'A new record is added. (3)', '2021-07-12 15:06:20', '2021-07-12 15:06:20', 1),
(313, 'Durations', 3, 'status is changed to 1 (3)', '2021-07-12 15:06:23', '2021-07-12 15:06:23', 1),
(314, 'Durations', 3, 'status is changed to 0 (3)', '2021-07-12 15:06:39', '2021-07-12 15:06:39', 1),
(315, 'Durations', 3, 'status is changed to 1 (3)', '2021-07-12 15:06:56', '2021-07-12 15:06:56', 1),
(316, 'Durations', 3, 'Record is edited. (3)', '2021-07-12 15:07:18', '2021-07-12 15:07:18', 1),
(317, 'Durations', 3, 'Record is edited. (3)', '2021-07-12 15:07:31', '2021-07-12 15:07:31', 1),
(318, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-13 07:51:09', '2021-07-13 07:51:09', 1),
(319, 'Countries', 3, 'A new record is added. (3)', '2021-07-13 08:03:39', '2021-07-13 08:03:39', 1),
(320, 'Cities', 7, 'A new record is added. (7)', '2021-07-13 08:04:10', '2021-07-13 08:04:10', 1),
(321, 'Areas', 2, 'A new record is added. (2)', '2021-07-13 08:04:37', '2021-07-13 08:04:37', 1),
(322, 'role', 1, 'Role is edited to Admin', '2021-07-13 08:49:20', '2021-07-13 08:49:20', 1),
(323, 'role', 1, 'Role name is updated to Admin', '2021-07-13 08:49:23', '2021-07-13 08:49:23', 1),
(324, 'role', 1, 'Role is edited to Admin', '2021-07-13 08:49:23', '2021-07-13 08:49:23', 1),
(325, 'role', 1, 'Role is edited to Admin', '2021-07-13 08:56:18', '2021-07-13 08:56:18', 1),
(326, 'role', 1, 'Role is edited to Admin', '2021-07-13 08:57:03', '2021-07-13 08:57:03', 1),
(327, 'SMS', 1, 'information updated', '2021-07-13 09:45:20', '2021-07-13 09:45:20', 1),
(328, 'SMS', 1, 'information updated', '2021-07-13 09:45:57', '2021-07-13 09:45:57', 1),
(329, 'SMS', 1, 'information updated', '2021-07-13 09:46:01', '2021-07-13 09:46:01', 1),
(330, 'SMS', 1, 'information updated', '2021-07-13 09:46:19', '2021-07-13 09:46:19', 1),
(331, 'SMS', 1, 'information updated', '2021-07-13 09:49:21', '2021-07-13 09:49:21', 1),
(332, 'SMS', 1, 'information updated', '2021-07-13 09:49:32', '2021-07-13 09:49:32', 1),
(333, 'Notify Emails', 2, 'status is changed to 0 (2)', '2021-07-13 09:50:07', '2021-07-13 09:50:07', 1),
(334, 'Notify Emails', 4, 'A new record is added. (4)', '2021-07-13 09:50:35', '2021-07-13 09:50:35', 1),
(335, 'Notify Emails', 4, 'status is changed to 1 (4)', '2021-07-13 09:50:52', '2021-07-13 09:50:52', 1),
(336, 'Notify Emails', 2, 'status is changed to 1 (2)', '2021-07-13 09:50:53', '2021-07-13 09:50:53', 1),
(337, 'Notify Emails', 4, 'Record is edited. (4)', '2021-07-13 09:51:03', '2021-07-13 09:51:03', 1),
(338, 'Notify Emails', 4, 'Record is edited. (4)', '2021-07-13 09:51:20', '2021-07-13 09:51:20', 1),
(339, 'Settings', 1, 'information updated', '2021-07-13 10:02:54', '2021-07-13 10:02:54', 1),
(340, 'Settings', 1, 'information updated', '2021-07-13 10:10:33', '2021-07-13 10:10:33', 1),
(341, 'Settings', 1, 'information updated', '2021-07-13 10:11:05', '2021-07-13 10:11:05', 1),
(342, 'Settings', 1, 'information updated', '2021-07-13 10:13:20', '2021-07-13 10:13:20', 1),
(343, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-07-14 08:53:49', '2021-07-14 08:53:49', 1),
(344, 'Roles', 4, 'A new record is added. (4)', '2021-07-14 11:23:39', '2021-07-14 11:23:39', 1),
(345, 'Roles', 4, 'A record is removed. (4)', '2021-07-14 11:24:06', '2021-07-14 11:24:06', 1),
(346, 'Admins', 1, 'Record is edited. (1)', '2021-07-14 12:44:59', '2021-07-14 12:44:59', 1),
(347, 'Roles', 3, 'A record is removed. (3)', '2021-07-14 12:53:17', '2021-07-14 12:53:17', 1),
(348, 'Roles', 5, 'A new record is added. (5)', '2021-07-14 12:55:03', '2021-07-14 12:55:03', 1),
(349, 'Admins', 1, 'Record is edited. (1)', '2021-07-14 12:55:21', '2021-07-14 12:55:21', 1),
(350, 'Admins', 1, 'Record is edited. (1)', '2021-07-14 12:56:32', '2021-07-14 12:56:32', 1),
(351, 'Roles', 5, 'Record is edited. (5)', '2021-07-14 12:56:50', '2021-07-14 12:56:50', 1),
(352, 'Admins', 1, 'Record is edited. (1)', '2021-07-14 12:57:04', '2021-07-14 12:57:04', 1),
(353, 'Admins', 1, 'Record is edited. (1)', '2021-07-14 12:57:23', '2021-07-14 12:57:23', 1),
(354, 'Roles', 5, 'A record is removed. (5)', '2021-07-14 12:58:05', '2021-07-14 12:58:05', 1),
(355, 'Roles', 1, 'Record is edited. (1)', '2021-07-17 08:11:59', '2021-07-17 08:11:59', 1),
(356, 'Packages', 1, 'A new record is added. (1)', '2021-07-17 09:29:29', '2021-07-17 09:29:29', 1),
(357, 'Packages', 1, 'status is changed to 0 (1)', '2021-07-17 09:31:00', '2021-07-17 09:31:00', 1),
(358, 'Packages', 1, 'Record is edited. (1)', '2021-07-17 09:31:24', '2021-07-17 09:31:24', 1),
(359, 'Countries', 1, 'Record is edited. (1)', '2021-07-18 11:06:11', '2021-07-18 11:06:11', 1),
(360, 'Countries', 2, 'Record is edited. (2)', '2021-07-18 11:06:24', '2021-07-18 11:06:24', 1),
(361, 'Countries', 3, 'Record is edited. (3)', '2021-07-18 11:06:34', '2021-07-18 11:06:34', 1),
(362, 'Countries', 2, 'Record is edited. (2)', '2021-07-18 11:06:44', '2021-07-18 11:06:44', 1),
(363, 'Countries', 2, 'Record is edited. (2)', '2021-07-18 11:06:52', '2021-07-18 11:06:52', 1),
(364, 'Countries', 2, 'Image is removed. (2)', '2021-07-18 11:06:58', '2021-07-18 11:06:58', 1),
(365, 'Countries', 2, 'Record is edited. (2)', '2021-07-18 11:07:05', '2021-07-18 11:07:05', 1),
(366, 'Cities', 2, 'Record is edited. (2)', '2021-07-18 11:20:46', '2021-07-18 11:20:46', 1),
(367, 'Cities', 1, 'Record is edited. (1)', '2021-07-18 11:21:27', '2021-07-18 11:21:27', 1),
(368, 'Cities', 1, 'Record is edited. (1)', '2021-07-18 11:21:54', '2021-07-18 11:21:54', 1),
(369, 'Areas', 1, 'Record is edited. (1)', '2021-07-18 11:27:23', '2021-07-18 11:27:23', 1),
(370, 'Areas', 2, 'Record is edited. (2)', '2021-07-18 11:27:38', '2021-07-18 11:27:38', 1),
(371, 'Cities', 2, 'Record is edited. (2)', '2021-07-18 11:28:00', '2021-07-18 11:28:00', 1),
(372, 'Countries', 1, 'Record is edited. (1)', '2021-07-18 12:09:22', '2021-07-18 12:09:22', 1),
(373, 'Countries', 2, 'Record is edited. (2)', '2021-07-18 12:09:36', '2021-07-18 12:09:36', 1),
(374, 'Countries', 3, 'Record is edited. (3)', '2021-07-18 12:09:45', '2021-07-18 12:09:45', 1),
(375, 'Cities', 6, 'Record is edited. (6)', '2021-07-18 12:10:38', '2021-07-18 12:10:38', 1),
(376, 'Cities', 6, 'Record is edited. (6)', '2021-07-18 12:10:47', '2021-07-18 12:10:47', 1),
(377, 'Cities', 2, 'Record is edited. (2)', '2021-07-18 12:11:03', '2021-07-18 12:11:03', 1),
(378, 'Cities', 5, 'Record is edited. (5)', '2021-07-18 12:11:19', '2021-07-18 12:11:19', 1),
(379, 'Cities', 5, 'Record is edited. (5)', '2021-07-18 12:11:56', '2021-07-18 12:11:56', 1),
(380, 'Roles', 1, 'Record is edited. (1)', '2021-07-18 15:12:25', '2021-07-18 15:12:25', 1),
(381, 'Roles', 1, 'Record is edited. (1)', '2021-07-19 08:03:04', '2021-07-19 08:03:04', 1),
(382, 'Packages', 2, 'A new record is added. (2)', '2021-07-19 08:13:54', '2021-07-19 08:13:54', 1),
(383, 'Package Galleries', 1, 'A new record is added. (1)', '2021-07-19 08:34:52', '2021-07-19 08:34:52', 1),
(384, 'Package Galleries', 1, 'status is changed to 0 (1)', '2021-07-19 08:39:00', '2021-07-19 08:39:00', 1),
(385, 'Package Galleries', 1, 'status is changed to 1 (1)', '2021-07-19 08:39:05', '2021-07-19 08:39:05', 1),
(386, 'Package Galleries', 1, 'Record is edited. (1)', '2021-07-19 08:40:01', '2021-07-19 08:40:01', 1),
(387, 'Package Galleries', 1, 'Record is edited. (1)', '2021-07-19 08:40:38', '2021-07-19 08:40:38', 1),
(388, 'Package Galleries', 1, 'Image is removed. (1)', '2021-07-19 08:41:03', '2021-07-19 08:41:03', 1),
(389, 'Package Galleries', 1, 'Record is edited. (1)', '2021-07-19 08:41:10', '2021-07-19 08:41:10', 1),
(390, 'Package Galleries', 2, 'A new record is added. (2)', '2021-07-19 08:42:13', '2021-07-19 08:42:13', 1),
(391, 'Package Galleries', 2, 'Record is edited. (2)', '2021-07-19 08:42:34', '2021-07-19 08:42:34', 1),
(392, 'Packages', 1, 'status is changed to 1 (1)', '2021-07-19 08:59:26', '2021-07-19 08:59:26', 1),
(393, 'Roles', 1, 'Record is edited. (1)', '2021-07-19 10:25:51', '2021-07-19 10:25:51', 1),
(394, 'Coupons', 1, 'A new record is added. (1)', '2021-07-19 12:24:14', '2021-07-19 12:24:14', 1),
(395, 'Coupons', 1, 'status is changed to 1 (1)', '2021-07-19 12:34:05', '2021-07-19 12:34:05', 1),
(396, 'Coupons', 2, 'A new record is added. (2)', '2021-07-19 12:43:11', '2021-07-19 12:43:11', 1),
(397, 'Coupons', 3, 'A new record is added. (3)', '2021-07-19 12:44:34', '2021-07-19 12:44:34', 1),
(398, 'Coupons', 3, 'Record is edited. (3)', '2021-07-19 12:59:53', '2021-07-19 12:59:53', 1),
(399, 'Single Pages', 8, 'A record is removed. (8)', '2021-07-19 14:16:56', '2021-07-19 14:16:56', 1),
(400, 'Single Pages', 1, 'A new record is added. (1)', '2021-07-19 14:18:25', '2021-07-19 14:18:25', 1),
(401, 'Notify Emails', 4, 'A record is removed. (4)', '2021-07-19 14:18:48', '2021-07-19 14:18:48', 1),
(402, 'Settings', 1, 'information updated', '2021-07-19 14:27:43', '2021-07-19 14:27:43', 1),
(403, 'Roles', 1, 'Record is edited. (1)', '2021-07-20 08:36:58', '2021-07-20 08:36:58', 1),
(404, 'Roles', 1, 'Record is edited. (1)', '2021-07-31 08:05:19', '2021-07-31 08:05:19', 1),
(405, 'Packages', 3, 'A new record is added. (3)', '2021-08-11 10:49:27', '2021-08-11 10:49:27', 1),
(406, 'Packages', 3, 'Record is edited. (3)', '2021-08-11 10:49:45', '2021-08-11 10:49:45', 1),
(407, 'Packages', 3, 'Record is edited. (3)', '2021-08-11 10:49:57', '2021-08-11 10:49:57', 1),
(408, 'Packages', 1, 'Record is edited. (1)', '2021-08-11 11:13:37', '2021-08-11 11:13:37', 1),
(409, 'Packages', 2, 'Record is edited. (2)', '2021-08-11 11:14:52', '2021-08-11 11:14:52', 1),
(410, 'Packages', 3, 'A record is removed. (3)', '2021-08-11 11:15:16', '2021-08-11 11:15:16', 1),
(411, 'Single Pages', 1, 'Record is edited. (1)', '2021-08-14 14:56:29', '2021-08-14 14:56:29', 1),
(412, 'Single Pages', 1, 'Record is edited. (1)', '2021-08-14 14:58:18', '2021-08-14 14:58:18', 1),
(413, 'Single Pages', 1, 'Record is edited. (1)', '2021-08-14 15:08:02', '2021-08-14 15:08:02', 1),
(414, 'Roles', 1, 'Record is edited. (1)', '2021-08-16 07:41:08', '2021-08-16 07:41:08', 1),
(415, 'Settings', 1, 'information updated', '2021-08-16 15:11:45', '2021-08-16 15:11:45', 1),
(416, 'Cities', 5, 'Record is edited. (5)', '2021-08-16 16:15:48', '2021-08-16 16:15:48', 1),
(417, 'Cities', 1, 'Record is edited. (1)', '2021-08-16 16:16:02', '2021-08-16 16:16:02', 1),
(418, 'Cities', 2, 'Record is edited. (2)', '2021-08-16 16:16:12', '2021-08-16 16:16:12', 1),
(419, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-08-21 12:20:19', '2021-08-21 12:20:19', 1),
(420, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-11 10:06:20', '2021-09-11 10:06:20', 1),
(421, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-09-12 10:05:07', '2021-09-12 10:05:07', 1),
(422, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-12 10:05:12', '2021-09-12 10:05:12', 1),
(423, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-13 07:57:24', '2021-09-13 07:57:24', 1),
(424, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-13 13:50:55', '2021-09-13 13:50:55', 1),
(425, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-14 10:51:21', '2021-09-14 10:51:21', 1),
(426, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-15 08:31:06', '2021-09-15 08:31:06', 1),
(427, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-16 08:06:42', '2021-09-16 08:06:42', 1),
(428, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-16 10:56:00', '2021-09-16 10:56:00', 1),
(429, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-18 08:41:39', '2021-09-18 08:41:39', 1),
(430, 'Users', 2, 'A new record is added. (2)', '2021-09-18 10:50:40', '2021-09-18 10:50:40', 1),
(431, 'Users', 2, 'Record is edited. (2)', '2021-09-18 11:11:09', '2021-09-18 11:11:09', 1),
(432, 'Users', 2, 'Record is edited. (2)', '2021-09-18 11:11:27', '2021-09-18 11:11:27', 1),
(433, 'Users', 2, 'Record is edited. (2)', '2021-09-18 11:12:18', '2021-09-18 11:12:18', 1),
(434, 'users', 2, 'Password is changed for ', '2021-09-18 11:46:54', '2021-09-18 11:46:54', 1),
(435, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-19 08:08:36', '2021-09-19 08:08:36', 1),
(436, 'Users', 2, 'A new record is added. (2)', '2021-09-19 09:19:07', '2021-09-19 09:19:07', 1),
(437, 'Users', 3, 'A new record is added. (3)', '2021-09-19 09:19:46', '2021-09-19 09:19:46', 1),
(438, 'Users', 4, 'A new record is added. (4)', '2021-09-19 09:20:59', '2021-09-19 09:20:59', 1),
(439, 'Users', 5, 'A new record is added. (5)', '2021-09-19 09:22:38', '2021-09-19 09:22:38', 1),
(440, 'Users', 6, 'A new record is added. (6)', '2021-09-19 09:32:30', '2021-09-19 09:32:30', 1),
(441, 'Users', 4, 'A record is removed. (4)', '2021-09-19 09:50:13', '2021-09-19 09:50:13', 1),
(442, 'Users', 7, 'A new record is added. (7)', '2021-09-19 09:50:24', '2021-09-19 09:50:24', 1),
(443, 'Users', 7, 'Record is edited. (7)', '2021-09-19 11:46:20', '2021-09-19 11:46:20', 1),
(444, 'Users', 7, 'Record is edited. (7)', '2021-09-19 11:46:51', '2021-09-19 11:46:51', 1),
(445, 'Users', 7, 'Record is edited. (7)', '2021-09-19 11:47:44', '2021-09-19 11:47:44', 1),
(446, 'Users', 7, 'Record is edited. (7)', '2021-09-19 11:48:31', '2021-09-19 11:48:31', 1),
(447, 'Users', 7, 'Record is edited. (7)', '2021-09-19 11:48:49', '2021-09-19 11:48:49', 1),
(448, 'Users', 7, 'Record is edited. (7)', '2021-09-19 12:05:33', '2021-09-19 12:05:33', 1),
(449, 'Users', 7, 'Record is edited. (7)', '2021-09-19 12:09:20', '2021-09-19 12:09:20', 1),
(450, 'Users', 8, 'A new record is added. (8)', '2021-09-19 12:12:49', '2021-09-19 12:12:49', 1),
(451, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-19 14:25:53', '2021-09-19 14:25:53', 1),
(452, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-20 08:16:36', '2021-09-20 08:16:36', 1),
(453, 'Slideshows', 1, 'A new record is added. (1)', '2021-09-20 11:29:23', '2021-09-20 11:29:23', 1),
(454, 'Slideshows', 1, 'Record is edited. (1)', '2021-09-20 13:33:52', '2021-09-20 13:33:52', 1),
(455, 'Slideshows', 1, 'A record is removed. (1)', '2021-09-20 13:37:04', '2021-09-20 13:37:04', 1),
(456, 'Slideshows', 2, 'A new record is added. (2)', '2021-09-20 13:38:17', '2021-09-20 13:38:17', 1),
(457, 'Slideshows', 2, 'Record is edited. (2)', '2021-09-20 13:39:12', '2021-09-20 13:39:12', 1),
(458, 'Slideshows', 2, 'Record is edited. (2)', '2021-09-20 13:39:36', '2021-09-20 13:39:36', 1),
(459, 'Slideshows', 2, 'Record is edited. (2)', '2021-09-20 14:08:18', '2021-09-20 14:08:18', 1),
(460, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-21 08:42:49', '2021-09-21 08:42:49', 1),
(461, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-22 11:12:49', '2021-09-22 11:12:49', 1),
(462, 'Single Pages', 2, 'A new record is added. (2)', '2021-09-22 16:23:25', '2021-09-22 16:23:25', 1),
(463, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-23 09:02:55', '2021-09-23 09:02:55', 1),
(464, 'Single Pages', 2, 'Record is edited. (2)', '2021-09-23 10:40:02', '2021-09-23 10:40:02', 1),
(465, 'Single Pages', 2, 'Record is edited. (2)', '2021-09-23 10:40:37', '2021-09-23 10:40:37', 1),
(466, 'Single Pages', 2, 'Record is edited. (2)', '2021-09-23 10:50:23', '2021-09-23 10:50:23', 1),
(467, 'Single Pages', 2, 'Record is edited. (2)', '2021-09-23 10:58:54', '2021-09-23 10:58:54', 1),
(468, 'Single Pages', 2, 'Record is edited. (2)', '2021-09-23 10:59:38', '2021-09-23 10:59:38', 1),
(469, 'Single Pages', 2, 'Record is edited. (2)', '2021-09-23 11:31:31', '2021-09-23 11:31:31', 1),
(470, 'Single Pages', 2, 'Record is edited. (2)', '2021-09-23 11:38:35', '2021-09-23 11:38:35', 1),
(471, 'Single Pages', 1, 'Record is edited. (1)', '2021-09-23 11:51:31', '2021-09-23 11:51:31', 1),
(472, 'Single Pages', 1, 'Record is edited. (1)', '2021-09-23 11:53:06', '2021-09-23 11:53:06', 1),
(473, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-25 09:09:28', '2021-09-25 09:09:28', 1),
(474, 'Single Pages', 1, 'Record is edited. (1)', '2021-09-25 09:14:27', '2021-09-25 09:14:27', 1),
(475, 'Single Pages', 1, 'Record is edited. (1)', '2021-09-25 10:02:07', '2021-09-25 10:02:07', 1),
(476, 'Single Pages', 3, 'A new record is added. (3)', '2021-09-25 11:22:47', '2021-09-25 11:22:47', 1),
(477, 'Single Pages', 4, 'A new record is added. (4)', '2021-09-25 14:48:34', '2021-09-25 14:48:34', 1),
(478, 'Single Pages', 4, 'Record is edited. (4)', '2021-09-25 14:52:34', '2021-09-25 14:52:34', 1),
(479, 'Single Pages', 5, 'A new record is added. (5)', '2021-09-25 14:54:39', '2021-09-25 14:54:39', 1),
(480, 'Settings', 1, 'information updated', '2021-09-25 14:59:28', '2021-09-25 14:59:28', 1),
(481, 'Settings', 1, 'information updated', '2021-09-25 15:10:52', '2021-09-25 15:10:52', 1),
(482, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-26 09:08:16', '2021-09-26 09:08:16', 1),
(483, 'Single Pages', 1, 'Record is edited. (1)', '2021-09-26 09:18:05', '2021-09-26 09:18:05', 1),
(484, 'Single Pages', 2, 'Record is edited. (2)', '2021-09-26 09:18:32', '2021-09-26 09:18:32', 1),
(485, 'Single Pages', 3, 'Record is edited. (3)', '2021-09-26 09:20:19', '2021-09-26 09:20:19', 1),
(486, 'Single Pages', 4, 'Record is edited. (4)', '2021-09-26 10:42:43', '2021-09-26 10:42:43', 1),
(487, 'Single Pages', 5, 'Record is edited. (5)', '2021-09-26 10:44:00', '2021-09-26 10:44:00', 1),
(488, 'Settings', 1, 'information updated', '2021-09-26 12:15:33', '2021-09-26 12:15:33', 1),
(489, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-28 11:12:45', '2021-09-28 11:12:45', 1),
(490, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-09-28 11:26:46', '2021-09-28 11:26:46', 1),
(491, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-09-28 12:45:58', '2021-09-28 12:45:58', 1),
(492, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-09-28 13:49:45', '2021-09-28 13:49:45', 1),
(493, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-02 16:05:03', '2021-10-02 16:05:03', 1),
(494, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-10-02 16:16:33', '2021-10-02 16:16:33', 1),
(495, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-03 11:32:29', '2021-10-03 11:32:29', 1),
(496, 'Users', 7, 'A record is removed. (7)', '2021-10-03 12:22:56', '2021-10-03 12:22:56', 1),
(497, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-03 14:33:45', '2021-10-03 14:33:45', 1),
(498, 'Single Pages', 1, 'status is changed to 0 (1)', '2021-10-03 15:45:10', '2021-10-03 15:45:10', 1),
(499, 'Single Pages', 2, 'status is changed to 0 (2)', '2021-10-03 15:45:18', '2021-10-03 15:45:18', 1),
(500, 'Single Pages', 3, 'status is changed to 0 (3)', '2021-10-03 15:45:21', '2021-10-03 15:45:21', 1),
(501, 'Single Pages', 3, 'status is changed to 1 (3)', '2021-10-03 15:45:24', '2021-10-03 15:45:24', 1),
(502, 'Single Pages', 2, 'status is changed to 1 (2)', '2021-10-03 15:45:25', '2021-10-03 15:45:25', 1),
(503, 'Single Pages', 1, 'status is changed to 1 (1)', '2021-10-03 15:45:25', '2021-10-03 15:45:25', 1),
(504, 'Cities', 1, 'status is changed to 0 (1)', '2021-10-03 15:45:34', '2021-10-03 15:45:34', 1),
(505, 'Cities', 2, 'status is changed to 0 (2)', '2021-10-03 15:45:35', '2021-10-03 15:45:35', 1),
(506, 'Cities', 3, 'status is changed to 0 (3)', '2021-10-03 15:45:35', '2021-10-03 15:45:35', 1),
(507, 'Cities', 3, 'status is changed to 1 (3)', '2021-10-03 15:45:40', '2021-10-03 15:45:40', 1),
(508, 'Cities', 2, 'status is changed to 1 (2)', '2021-10-03 15:45:40', '2021-10-03 15:45:40', 1),
(509, 'Cities', 1, 'status is changed to 1 (1)', '2021-10-03 15:45:41', '2021-10-03 15:45:41', 1),
(510, 'Single Pages', 1, 'status is changed to 0 (1)', '2021-10-03 16:09:04', '2021-10-03 16:09:04', 1),
(511, 'Single Pages', 1, 'status is changed to 1 (1)', '2021-10-03 16:09:11', '2021-10-03 16:09:11', 1),
(512, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-04 08:57:37', '2021-10-04 08:57:37', 1),
(513, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-10-04 11:03:13', '2021-10-04 11:03:13', 1);
INSERT INTO `gwc_logs` (`id`, `key_name`, `key_id`, `message`, `created_at`, `updated_at`, `created_by`) VALUES
(514, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-04 11:11:44', '2021-10-04 11:11:44', 1),
(515, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-10-04 11:12:38', '2021-10-04 11:12:38', 1),
(516, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-04 12:11:29', '2021-10-04 12:11:29', 1),
(517, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-06 14:42:52', '2021-10-06 14:42:52', 1),
(518, 'Cities', 1, 'A record is removed. (1)', '2021-10-06 14:44:13', '2021-10-06 14:44:13', 1),
(519, 'Cities', 2, 'A record is removed. (2)', '2021-10-06 14:44:18', '2021-10-06 14:44:18', 1),
(520, 'Cities', 7, 'A record is removed. (7)', '2021-10-06 14:44:26', '2021-10-06 14:44:26', 1),
(521, 'Slideshows', 2, 'Record is edited. (2)', '2021-10-06 14:46:20', '2021-10-06 14:46:20', 1),
(522, 'Slideshows', 3, 'A new record is added. (3)', '2021-10-06 14:47:38', '2021-10-06 14:47:38', 1),
(523, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-06 14:54:57', '2021-10-06 14:54:57', 1),
(524, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-06 14:54:58', '2021-10-06 14:54:58', 1),
(525, 'Single Pages', 6, 'A new record is added. (6)', '2021-10-06 15:49:15', '2021-10-06 15:49:15', 1),
(526, 'Cities', 8, 'A new record is added. (8)', '2021-10-06 15:54:48', '2021-10-06 15:54:48', 1),
(527, 'Cities', 8, 'Record is edited. (8)', '2021-10-06 15:55:01', '2021-10-06 15:55:01', 1),
(528, 'Cities', 8, 'A record is removed. (8)', '2021-10-06 15:55:06', '2021-10-06 15:55:06', 1),
(529, 'Users', 3, 'A new record is added. (3)', '2021-10-06 15:58:42', '2021-10-06 15:58:42', 1),
(530, 'Users', 3, 'Record is edited. (3)', '2021-10-06 15:58:57', '2021-10-06 15:58:57', 1),
(531, 'Users', 3, 'Record is edited. (3)', '2021-10-06 16:01:57', '2021-10-06 16:01:57', 1),
(532, 'Users', 3, 'Record is edited. (3)', '2021-10-06 16:03:13', '2021-10-06 16:03:13', 1),
(533, 'Slideshows', 3, 'Record is edited. (3)', '2021-10-06 16:38:05', '2021-10-06 16:38:05', 1),
(534, 'Slideshows', 3, 'A record is removed. (3)', '2021-10-06 16:38:16', '2021-10-06 16:38:16', 1),
(535, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-07 12:55:13', '2021-10-07 12:55:13', 1),
(536, 'Single Pages', 6, 'Record is edited. (6)', '2021-10-07 13:04:01', '2021-10-07 13:04:01', 1),
(537, 'Single Pages', 6, 'A record is removed. (6)', '2021-10-07 13:04:08', '2021-10-07 13:04:08', 1),
(538, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-10-07 13:05:51', '2021-10-07 13:05:51', 1),
(539, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-07 13:59:29', '2021-10-07 13:59:29', 1),
(540, 'Users', 4, 'A new record is added. (4)', '2021-10-07 14:00:28', '2021-10-07 14:00:28', 1),
(541, 'Users', 9, 'A new record is added. (9)', '2021-10-07 14:22:43', '2021-10-07 14:22:43', 1),
(542, 'Users', 9, 'Record is edited. (9)', '2021-10-07 14:22:58', '2021-10-07 14:22:58', 1),
(543, 'Users', 9, 'A record is removed. (9)', '2021-10-07 14:23:03', '2021-10-07 14:23:03', 1),
(544, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-10-07 16:27:01', '2021-10-07 16:27:01', 1),
(545, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-07 16:31:31', '2021-10-07 16:31:31', 1),
(546, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-10 10:28:06', '2021-10-10 10:28:06', 1),
(547, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-10-10 10:28:16', '2021-10-10 10:28:16', 1),
(548, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-10 10:29:00', '2021-10-10 10:29:00', 1),
(549, 'Single Pages', 7, 'A new record is added. (7)', '2021-10-10 10:31:33', '2021-10-10 10:31:33', 1),
(550, 'Single Pages', 7, 'Record is edited. (7)', '2021-10-10 10:32:00', '2021-10-10 10:32:00', 1),
(551, 'Single Pages', 7, 'A record is removed. (7)', '2021-10-10 10:32:48', '2021-10-10 10:32:48', 1),
(552, 'Cities', 9, 'A new record is added. (9)', '2021-10-10 10:33:27', '2021-10-10 10:33:27', 1),
(553, 'Cities', 9, 'Record is edited. (9)', '2021-10-10 10:33:40', '2021-10-10 10:33:40', 1),
(554, 'Cities', 9, 'A record is removed. (9)', '2021-10-10 10:33:51', '2021-10-10 10:33:51', 1),
(555, 'Users', 5, 'A new record is added. (5)', '2021-10-10 10:35:50', '2021-10-10 10:35:50', 1),
(556, 'Users', 5, 'Record is edited. (5)', '2021-10-10 10:36:19', '2021-10-10 10:36:19', 1),
(557, 'Users', 10, 'A new record is added. (10)', '2021-10-10 10:37:04', '2021-10-10 10:37:04', 1),
(558, 'Users', 10, 'Record is edited. (10)', '2021-10-10 10:37:21', '2021-10-10 10:37:21', 1),
(559, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-10 10:39:04', '2021-10-10 10:39:04', 1),
(560, 'Users', 5, 'A record is removed. (5)', '2021-10-10 10:45:57', '2021-10-10 10:45:57', 1),
(561, 'Users', 6, 'A new record is added. (6)', '2021-10-10 11:29:44', '2021-10-10 11:29:44', 1),
(562, 'Users', 6, 'Record is edited. (6)', '2021-10-10 11:30:06', '2021-10-10 11:30:06', 1),
(563, 'Users', 11, 'A new record is added. (11)', '2021-10-10 11:30:29', '2021-10-10 11:30:29', 1),
(564, 'Users', 6, 'A record is removed. (6)', '2021-10-10 11:30:47', '2021-10-10 11:30:47', 1),
(565, 'Slideshows', 4, 'A new record is added. (4)', '2021-10-10 11:50:27', '2021-10-10 11:50:27', 1),
(566, 'Slideshows', 4, 'Record is edited. (4)', '2021-10-10 11:50:36', '2021-10-10 11:50:36', 1),
(567, 'Slideshows', 4, 'A record is removed. (4)', '2021-10-10 11:50:41', '2021-10-10 11:50:41', 1),
(568, 'Users', 7, 'A new record is added. (7)', '2021-10-10 12:25:53', '2021-10-10 12:25:53', 1),
(569, 'Users', 7, 'Record is edited. (7)', '2021-10-10 12:26:22', '2021-10-10 12:26:22', 1),
(570, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-10-10 12:40:30', '2021-10-10 12:40:30', 1),
(571, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-10 17:05:37', '2021-10-10 17:05:37', 1),
(572, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-12 10:40:36', '2021-10-12 10:40:36', 1),
(573, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-13 09:33:19', '2021-10-13 09:33:19', 1),
(574, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-13 14:53:58', '2021-10-13 14:53:58', 1),
(575, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-17 13:15:16', '2021-10-17 13:15:16', 1),
(576, 'Slideshows', 5, 'A new record is added. (5)', '2021-10-17 13:18:23', '2021-10-17 13:18:23', 1),
(577, 'Slideshows', 5, 'Record is edited. (5)', '2021-10-17 13:18:35', '2021-10-17 13:18:35', 1),
(578, 'Slideshows', 5, 'A record is removed. (5)', '2021-10-17 13:18:42', '2021-10-17 13:18:42', 1),
(579, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-20 10:27:57', '2021-10-20 10:27:57', 1),
(580, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-21 12:49:30', '2021-10-21 12:49:30', 1),
(581, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-22 22:41:00', '2021-10-22 22:41:00', 1),
(582, 'Roles', 1, 'Record is edited. (1)', '2021-10-22 22:44:39', '2021-10-22 22:44:39', 1),
(583, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-23 00:05:38', '2021-10-23 00:05:38', 1),
(584, 'Slideshows', 6, 'A new record is added. (6)', '2021-10-23 00:08:50', '2021-10-23 00:08:50', 1),
(585, 'Services', 3, 'Record is edited. (3)', '2021-10-23 00:32:34', '2021-10-23 00:32:34', 1),
(586, 'Services', 4, 'Record is edited. (4)', '2021-10-23 00:33:12', '2021-10-23 00:33:12', 1),
(587, 'Services', 5, 'Record is edited. (5)', '2021-10-23 00:44:59', '2021-10-23 00:44:59', 1),
(588, 'Services', 6, 'Record is edited. (6)', '2021-10-23 00:45:19', '2021-10-23 00:45:19', 1),
(589, 'Services', 7, 'Record is edited. (7)', '2021-10-23 00:45:40', '2021-10-23 00:45:40', 1),
(590, 'Services', 7, 'A record is removed. (7)', '2021-10-23 00:45:47', '2021-10-23 00:45:47', 1),
(591, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-25 15:52:25', '2021-10-25 15:52:25', 1),
(592, 'Roles', 1, 'Record is edited. (1)', '2021-10-25 16:16:56', '2021-10-25 16:16:56', 1),
(593, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-26 09:25:28', '2021-10-26 09:25:28', 1),
(594, 'Settings', 1, 'Image is removed', '2021-10-26 09:25:43', '2021-10-26 09:25:43', 1),
(595, 'Settings', 1, 'information updated', '2021-10-26 09:25:56', '2021-10-26 09:25:56', 1),
(596, 'Settings', 1, 'Image is removed', '2021-10-26 09:26:05', '2021-10-26 09:26:05', 1),
(597, 'Settings', 1, 'information updated', '2021-10-26 09:26:13', '2021-10-26 09:26:13', 1),
(598, 'Settings', 1, 'information updated', '2021-10-26 09:48:13', '2021-10-26 09:48:13', 1),
(599, 'Admins', 1, 'Record is edited. (1)', '2021-10-26 09:48:29', '2021-10-26 09:48:29', 1),
(600, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-10-26 09:48:36', '2021-10-26 09:48:36', 1),
(601, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-26 09:48:41', '2021-10-26 09:48:41', 1),
(602, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-26 10:36:47', '2021-10-26 10:36:47', 1),
(603, 'Roles', 1, 'Record is edited. (1)', '2021-10-26 10:37:10', '2021-10-26 10:37:10', 1),
(604, 'Roles', 1, 'Record is edited. (1)', '2021-10-26 12:44:13', '2021-10-26 12:44:13', 1),
(605, 'Roles', 1, 'Record is edited. (1)', '2021-10-26 12:46:57', '2021-10-26 12:46:57', 1),
(606, 'Roles', 1, 'Record is edited. (1)', '2021-10-26 14:28:27', '2021-10-26 14:28:27', 1),
(607, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-27 09:31:51', '2021-10-27 09:31:51', 1),
(608, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-28 09:19:33', '2021-10-28 09:19:33', 1),
(609, 'Roles', 1, 'Record is edited. (1)', '2021-10-28 09:20:05', '2021-10-28 09:20:05', 1),
(610, 'Subsidiaries and Associates', 1, 'status is changed to 1 (1)', '2021-10-28 10:26:35', '2021-10-28 10:26:35', 1),
(611, 'Subsidiaries and Associates', 2, 'A new record is added. (2)', '2021-10-28 10:27:21', '2021-10-28 10:27:21', 1),
(612, 'Subsidiaries and Associates', 2, 'Record is edited. (2)', '2021-10-28 10:27:55', '2021-10-28 10:27:55', 1),
(613, 'Subsidiaries and Associates', 2, 'A record is removed. (2)', '2021-10-28 10:28:26', '2021-10-28 10:28:26', 1),
(614, 'Subsidiaries and Associates', 1, 'A record is removed. (1)', '2021-10-28 10:28:30', '2021-10-28 10:28:30', 1),
(615, 'Subsidiaries and Associates', 3, 'A new record is added. (3)', '2021-10-28 10:32:55', '2021-10-28 10:32:55', 1),
(616, 'Roles', 1, 'Record is edited. (1)', '2021-10-28 11:08:35', '2021-10-28 11:08:35', 1),
(617, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-10-31 10:45:57', '2021-10-31 10:45:57', 1),
(618, 'Single Pages', 1, 'Record is edited. (1)', '2021-10-31 10:48:34', '2021-10-31 10:48:34', 1),
(619, 'Single Pages', 5, 'A record is removed. (5)', '2021-10-31 10:48:40', '2021-10-31 10:48:40', 1),
(620, 'Single Pages', 1, 'Record is edited. (1)', '2021-10-31 10:51:59', '2021-10-31 10:51:59', 1),
(621, 'Single Pages', 8, 'Record is edited. (8)', '2021-10-31 11:03:47', '2021-10-31 11:03:47', 1),
(622, 'Slideshows', 7, 'A new record is added. (7)', '2021-10-31 11:12:04', '2021-10-31 11:12:04', 1),
(623, 'Contact Info', 1, 'Record is edited. (1)', '2021-10-31 12:13:33', '2021-10-31 12:13:33', 1),
(624, 'Privacy', 1, 'Record is edited. (1)', '2021-10-31 13:02:21', '2021-10-31 13:02:21', 1),
(625, 'Single Pages', 9, 'Record is edited. (9)', '2021-10-31 15:10:43', '2021-10-31 15:10:43', 1),
(626, 'Subsidiaries and Associates', 4, 'A new record is added. (4)', '2021-10-31 15:17:18', '2021-10-31 15:17:18', 1),
(627, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-01 12:01:37', '2021-11-01 12:01:37', 1),
(628, 'Contact Info', 2, 'Record is edited. (2)', '2021-11-01 12:02:07', '2021-11-01 12:02:07', 1),
(629, 'Roles', 1, 'Record is edited. (1)', '2021-11-01 14:42:40', '2021-11-01 14:42:40', 1),
(630, 'Single Pages', 1, 'Record is edited. (1)', '2021-11-01 14:43:04', '2021-11-01 14:43:04', 1),
(631, 'Roles', 1, 'Record is edited. (1)', '2021-11-01 15:15:04', '2021-11-01 15:15:04', 1),
(632, 'category countrey', 1, 'Record is edited. (1)', '2021-11-01 15:36:19', '2021-11-01 15:36:19', 1),
(633, 'category countrey', 1, 'Record is edited. (1)', '2021-11-01 15:36:46', '2021-11-01 15:36:46', 1),
(634, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-02 12:03:09', '2021-11-02 12:03:09', 1),
(635, 'Roles', 1, 'Record is edited. (1)', '2021-11-02 12:14:21', '2021-11-02 12:14:21', 1),
(636, 'Slideshows', 2, 'Record is edited. (2)', '2021-11-02 12:38:21', '2021-11-02 12:38:21', 1),
(637, 'Privacy', 1, 'Record is edited. (1)', '2021-11-02 12:58:38', '2021-11-02 12:58:38', 1),
(638, 'Subsidiaries and Associates', 5, 'A new record is added. (5)', '2021-11-02 12:59:39', '2021-11-02 12:59:39', 1),
(639, 'Subsidiaries and Associates', 3, 'Record is edited. (3)', '2021-11-02 13:00:00', '2021-11-02 13:00:00', 1),
(640, 'Subsidiaries and Associates', 3, 'Record is edited. (3)', '2021-11-02 13:03:02', '2021-11-02 13:03:02', 1),
(641, 'Single Pages', 2, 'Record is edited. (2)', '2021-11-02 13:03:42', '2021-11-02 13:03:42', 1),
(642, 'Subsidiaries and Associates', 3, 'Record is edited. (3)', '2021-11-02 13:11:27', '2021-11-02 13:11:27', 1),
(643, 'Slideshows', 8, 'A new record is added. (8)', '2021-11-02 13:16:12', '2021-11-02 13:16:12', 1),
(644, 'Single Pages', 2, 'A record is removed. (2)', '2021-11-02 13:25:38', '2021-11-02 13:25:38', 1),
(645, 'Single Pages', 1, 'Record is edited. (1)', '2021-11-02 14:03:16', '2021-11-02 14:03:16', 1),
(646, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-02 16:56:50', '2021-11-02 16:56:50', 1),
(647, 'Single Pages', 3, 'Record is edited. (3)', '2021-11-02 16:57:22', '2021-11-02 16:57:22', 1),
(648, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-03 00:47:32', '2021-11-03 00:47:32', 1),
(649, 'Single Pages', 10, 'Record is edited. (10)', '2021-11-03 00:48:52', '2021-11-03 00:48:52', 1),
(650, 'Subsidiaries and Associates', 4, 'A record is removed. (4)', '2021-11-03 00:49:15', '2021-11-03 00:49:15', 1),
(651, 'Subsidiaries and Associates', 5, 'A record is removed. (5)', '2021-11-03 00:49:19', '2021-11-03 00:49:19', 1),
(652, 'Subsidiaries and Associates', 3, 'A record is removed. (3)', '2021-11-03 00:49:23', '2021-11-03 00:49:23', 1),
(653, 'Subsidiaries and Associates', 6, 'A new record is added. (6)', '2021-11-03 00:49:42', '2021-11-03 00:49:42', 1),
(654, 'Subsidiaries and Associates', 6, 'A record is removed. (6)', '2021-11-03 01:08:50', '2021-11-03 01:08:50', 1),
(655, 'Subsidiaries and Associates', 7, 'A new record is added. (7)', '2021-11-03 01:09:02', '2021-11-03 01:09:02', 1),
(656, 'Services', 1, 'status is changed to 0 (1)', '2021-11-03 01:14:00', '2021-11-03 01:14:00', 1),
(657, 'Services', 1, 'status is changed to 1 (1)', '2021-11-03 01:14:01', '2021-11-03 01:14:01', 1),
(658, 'Subsidiaries and Associates', 7, 'Record is edited. (7)', '2021-11-03 01:14:31', '2021-11-03 01:14:31', 1),
(659, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-03 09:04:11', '2021-11-03 09:04:11', 1),
(660, 'News And Event', 1, 'Record is edited. (1)', '2021-11-03 09:19:08', '2021-11-03 09:19:08', 1),
(661, 'Subsidiaries and Associates', 7, 'Record is edited. (7)', '2021-11-03 09:20:17', '2021-11-03 09:20:17', 1),
(662, 'Subsidiaries and Associates', 8, 'A new record is added. (8)', '2021-11-03 09:22:02', '2021-11-03 09:22:02', 1),
(663, 'Subsidiaries and Associates', 9, 'A new record is added. (9)', '2021-11-03 09:23:09', '2021-11-03 09:23:09', 1),
(664, 'Subsidiaries and Associates', 7, 'A record is removed. (7)', '2021-11-03 09:28:50', '2021-11-03 09:28:50', 1),
(665, 'Subsidiaries and Associates', 8, 'A record is removed. (8)', '2021-11-03 09:28:55', '2021-11-03 09:28:55', 1),
(666, 'Subsidiaries and Associates', 9, 'A record is removed. (9)', '2021-11-03 09:29:00', '2021-11-03 09:29:00', 1),
(667, 'Subsidiaries and Associates', 10, 'A new record is added. (10)', '2021-11-03 09:29:28', '2021-11-03 09:29:28', 1),
(668, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-03 09:32:22', '2021-11-03 09:32:22', 1),
(669, 'Subsidiaries and Associates', 10, 'Record is edited. (10)', '2021-11-03 09:41:10', '2021-11-03 09:41:10', 1),
(670, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-05 17:23:57', '2021-11-05 17:23:57', 1),
(671, 'Slideshows', 9, 'A new record is added. (9)', '2021-11-05 18:34:59', '2021-11-05 18:34:59', 1),
(672, 'Subsidiaries and Associates', 10, 'A record is removed. (10)', '2021-11-05 18:38:12', '2021-11-05 18:38:12', 1),
(673, 'Subsidiaries and Associates', 11, 'A new record is added. (11)', '2021-11-05 18:38:21', '2021-11-05 18:38:21', 1),
(674, 'Subsidiaries and Associates', 11, 'A record is removed. (11)', '2021-11-05 18:39:17', '2021-11-05 18:39:17', 1),
(675, 'Subsidiaries and Associates', 12, 'A new record is added. (12)', '2021-11-05 18:39:26', '2021-11-05 18:39:26', 1),
(676, 'Subsidiaries and Associates', 12, 'A record is removed. (12)', '2021-11-05 18:47:59', '2021-11-05 18:47:59', 1),
(677, 'Subsidiaries and Associates', 13, 'A new record is added. (13)', '2021-11-05 18:48:28', '2021-11-05 18:48:28', 1),
(678, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-08 09:56:48', '2021-11-08 09:56:48', 1),
(679, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-11 08:55:46', '2021-11-11 08:55:46', 1),
(680, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-11 09:41:59', '2021-11-11 09:41:59', 1),
(681, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-11 09:57:25', '2021-11-11 09:57:25', 1),
(682, 'Roles', 1, 'Record is edited. (1)', '2021-11-11 11:08:03', '2021-11-11 11:08:03', 1),
(683, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-13 12:27:59', '2021-11-13 12:27:59', 1),
(684, 'category', 94, 'Category is removed (Office & Home tools)', '2021-11-13 15:36:51', '2021-11-13 15:36:51', 1),
(685, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-13 16:10:11', '2021-11-13 16:10:11', 1),
(686, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-14 09:46:48', '2021-11-14 09:46:48', 1),
(687, 'category', 77, 'Category is edited (OFFICE & HOME)', '2021-11-14 09:52:24', '2021-11-14 09:52:24', 1),
(688, 'category', 128, 'New category is added (tytas)', '2021-11-14 09:59:57', '2021-11-14 09:59:57', 1),
(689, 'category', 129, 'New category is added (ali)', '2021-11-14 10:00:31', '2021-11-14 10:00:31', 1),
(690, 'category', 48, 'Category is edited (DEVICES)', '2021-11-14 10:06:57', '2021-11-14 10:06:57', 1),
(691, 'category', 48, 'Category is edited (DEVICESsassd)', '2021-11-14 10:07:13', '2021-11-14 10:07:13', 1),
(692, 'category', 48, 'Category is edited (DEVICESdddddddddddddddddddddddddddd)', '2021-11-14 10:07:24', '2021-11-14 10:07:24', 1),
(693, 'category', 77, 'Category is edited (OFFICE & HOMEsssssssssssssssss)', '2021-11-14 10:07:34', '2021-11-14 10:07:34', 1),
(694, 'category', 130, 'New category is added (gfdgd)', '2021-11-14 10:08:37', '2021-11-14 10:08:37', 1),
(695, 'category', 48, 'Category is edited (DEVICESsssssssssssssssss)', '2021-11-14 10:12:20', '2021-11-14 10:12:20', 1),
(696, 'category', 130, 'Category is edited (gfdgd)', '2021-11-14 10:13:39', '2021-11-14 10:13:39', 1),
(697, 'category', 129, 'Category is edited (alihhhhhhhhhhhhhhhhh)', '2021-11-14 10:13:57', '2021-11-14 10:13:57', 1),
(698, 'category', 129, 'Category is edited (alissssssssssss)', '2021-11-14 10:14:15', '2021-11-14 10:14:15', 1),
(699, 'News And Event', 1, 'Record is edited. (1)', '2021-11-14 10:21:35', '2021-11-14 10:21:35', 1),
(700, 'category', 131, 'New category is added (Our Company)', '2021-11-14 10:25:02', '2021-11-14 10:25:02', 1),
(701, 'category', 131, 'Category is edited (Our Companyssss)', '2021-11-14 10:25:14', '2021-11-14 10:25:14', 1),
(702, 'category', 132, 'New category is added (Corporate Overview)', '2021-11-14 10:29:45', '2021-11-14 10:29:45', 1),
(703, 'category', 132, 'Category is removed (Corporate Overview)', '2021-11-14 10:34:18', '2021-11-14 10:34:18', 1),
(704, 'category', 133, 'New category is added (Corporate Overview)', '2021-11-14 10:34:50', '2021-11-14 10:34:50', 1),
(705, 'category', 131, 'Category is edited (ssssssssssssssssOur Company)', '2021-11-14 10:35:53', '2021-11-14 10:35:53', 1),
(706, 'category', 134, 'New category is added (Our Products)', '2021-11-14 10:41:38', '2021-11-14 10:41:38', 1),
(707, 'category', 131, 'Category is edited (Our Company)', '2021-11-14 12:13:38', '2021-11-14 12:13:38', 1),
(708, 'category', 131, 'Category is edited (sssOur Company)', '2021-11-14 12:13:47', '2021-11-14 12:13:47', 1),
(709, 'category', 133, 'Category is edited (Corporate Overviewssssssssssssssssssssssss)', '2021-11-14 12:15:59', '2021-11-14 12:15:59', 1),
(710, 'category', 131, 'Category is edited (Our Companyssss)', '2021-11-14 12:19:28', '2021-11-14 12:19:28', 1),
(711, 'category', 131, 'Category is removed (Our Companyssss)', '2021-11-14 12:24:04', '2021-11-14 12:24:04', 1),
(712, 'category', 134, 'Category is edited (Our Productsssssssssss)', '2021-11-14 12:33:57', '2021-11-14 12:33:57', 1),
(713, 'category', 135, 'New category is added (ytyt)', '2021-11-14 14:14:49', '2021-11-14 14:14:49', 1),
(714, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-15 10:04:08', '2021-11-15 10:04:08', 1),
(715, 'Roles', 1, 'Record is edited. (1)', '2021-11-15 10:04:41', '2021-11-15 10:04:41', 1),
(716, 'Single Page Menu', 2, 'A new record is added. (2)', '2021-11-15 11:58:49', '2021-11-15 11:58:49', 1),
(717, 'Single Page Menu', 3, 'A new record is added. (3)', '2021-11-15 12:00:10', '2021-11-15 12:00:10', 1),
(718, 'Single Page Menu', 4, 'A new record is added. (4)', '2021-11-15 12:00:55', '2021-11-15 12:00:55', 1),
(719, 'Single Page Menu', 5, 'A new record is added. (5)', '2021-11-15 12:06:05', '2021-11-15 12:06:05', 1),
(720, 'Single Page Menu', 1, 'A record is removed. (1)', '2021-11-15 12:20:44', '2021-11-15 12:20:44', 1),
(721, 'Single Page Menu', 1, 'A new record is added. (1)', '2021-11-15 12:21:47', '2021-11-15 12:21:47', 1),
(722, 'Single Page Menu', 1, 'A record is removed. (1)', '2021-11-15 12:24:14', '2021-11-15 12:24:14', 1),
(723, 'Single Page Menu', 2, 'A new record is added. (2)', '2021-11-15 12:33:36', '2021-11-15 12:33:36', 1),
(724, 'Single Page Menu', 2, 'Record is edited. (2)', '2021-11-15 12:49:10', '2021-11-15 12:49:10', 1),
(725, 'Single Page Menu', 2, 'Record is edited. (2)', '2021-11-15 12:49:26', '2021-11-15 12:49:26', 1),
(726, 'Single Page Menu', 2, 'A record is removed. (2)', '2021-11-15 12:55:54', '2021-11-15 12:55:54', 1),
(727, 'Single Page Menu', 3, 'A new record is added. (3)', '2021-11-15 12:56:37', '2021-11-15 12:56:37', 1),
(728, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-11-15 12:57:04', '2021-11-15 12:57:04', 1),
(729, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-11-15 12:57:14', '2021-11-15 12:57:14', 1),
(730, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-11-15 13:00:31', '2021-11-15 13:00:31', 1),
(731, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-11-15 13:03:55', '2021-11-15 13:03:55', 1),
(732, 'Single Page Menu', 3, 'A record is removed. (3)', '2021-11-15 13:07:25', '2021-11-15 13:07:25', 1),
(733, 'Single Page Menu', 4, 'A new record is added. (4)', '2021-11-15 13:07:44', '2021-11-15 13:07:44', 1),
(734, 'Single Page Menu', 4, 'Record is edited. (4)', '2021-11-15 13:09:35', '2021-11-15 13:09:35', 1),
(735, 'Single Page Menu', 4, 'A record is removed. (4)', '2021-11-15 13:18:39', '2021-11-15 13:18:39', 1),
(736, 'Single Page Menu', 5, 'A new record is added. (5)', '2021-11-15 13:18:59', '2021-11-15 13:18:59', 1),
(737, 'Single Page Menu', 5, 'Record is edited. (5)', '2021-11-15 13:19:10', '2021-11-15 13:19:10', 1),
(738, 'Single Page Menu', 5, 'A record is removed. (5)', '2021-11-15 13:28:58', '2021-11-15 13:28:58', 1),
(739, 'Single Page Menu', 6, 'A new record is added. (6)', '2021-11-15 13:29:17', '2021-11-15 13:29:17', 1),
(740, 'Single Page Menu', 6, 'Record is edited. (6)', '2021-11-15 13:48:30', '2021-11-15 13:48:30', 1),
(741, 'Single Page Menu', 6, 'A record is removed. (6)', '2021-11-15 13:48:35', '2021-11-15 13:48:35', 1),
(742, 'category', 1, 'Category is removed (xczc)', '2021-11-15 13:48:48', '2021-11-15 13:48:48', 1),
(743, 'category', 136, 'New category is added (Our Company)', '2021-11-15 13:50:07', '2021-11-15 13:50:07', 1),
(744, 'category', 136, 'Category is edited (Our Company)', '2021-11-15 13:56:29', '2021-11-15 13:56:29', 1),
(745, 'category', 136, 'Category is removed (Our Company)', '2021-11-15 14:09:34', '2021-11-15 14:09:34', 1),
(746, 'category', 137, 'New category is added (Our Company)', '2021-11-15 14:10:40', '2021-11-15 14:10:40', 1),
(747, 'category', 138, 'New category is added (Corporate Overview)', '2021-11-15 14:16:32', '2021-11-15 14:16:32', 1),
(748, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-16 08:50:45', '2021-11-16 08:50:45', 1),
(749, 'Single Page Menu', 7, 'A new record is added. (7)', '2021-11-16 08:52:10', '2021-11-16 08:52:10', 1),
(750, 'Single Page Menu', 7, 'Record is edited. (7)', '2021-11-16 08:55:15', '2021-11-16 08:55:15', 1),
(751, 'category', 137, 'Category is edited (Our Company)', '2021-11-16 09:19:35', '2021-11-16 09:19:35', 1),
(752, 'category', 137, 'Category is edited (Our Company)', '2021-11-16 09:21:03', '2021-11-16 09:21:03', 1),
(753, 'category', 137, 'Category is edited (Our Company)', '2021-11-16 09:21:09', '2021-11-16 09:21:09', 1),
(754, 'category countrey', 1, 'A record is removed. (1)', '2021-11-16 09:24:17', '2021-11-16 09:24:17', 1),
(755, 'category countrey', 2, 'A record is removed. (2)', '2021-11-16 09:24:20', '2021-11-16 09:24:20', 1),
(756, 'category countrey', 3, 'Record is edited. (3)', '2021-11-16 10:24:42', '2021-11-16 10:24:42', 1),
(757, 'category', 138, 'Category is edited (Corporate Overview)', '2021-11-16 10:29:38', '2021-11-16 10:29:38', 1),
(758, 'category countrey', 3, 'A record is removed. (3)', '2021-11-16 10:40:41', '2021-11-16 10:40:41', 1),
(759, 'category countrey', 4, 'Record is edited. (4)', '2021-11-16 10:41:06', '2021-11-16 10:41:06', 1),
(760, 'category countrey', 5, 'Record is edited. (5)', '2021-11-16 10:51:46', '2021-11-16 10:51:46', 1),
(761, 'category countrey', 4, 'A record is removed. (4)', '2021-11-16 10:52:28', '2021-11-16 10:52:28', 1),
(762, 'category countrey', 5, 'A record is removed. (5)', '2021-11-16 10:52:32', '2021-11-16 10:52:32', 1),
(763, 'category countrey', 6, 'Record is edited. (6)', '2021-11-16 10:53:25', '2021-11-16 10:53:25', 1),
(764, 'category countrey', 6, 'Record is edited. (6)', '2021-11-16 10:56:23', '2021-11-16 10:56:23', 1),
(765, 'category countrey', 6, 'Record is edited. (6)', '2021-11-16 10:56:39', '2021-11-16 10:56:39', 1),
(766, 'category countrey', 6, 'Record is edited. (6)', '2021-11-16 10:56:51', '2021-11-16 10:56:51', 1),
(767, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-16 12:31:33', '2021-11-16 12:31:33', 1),
(768, 'category', 1, 'New category is added (Our Service)', '2021-11-16 12:32:15', '2021-11-16 12:32:15', 1),
(769, 'category', 2, 'New category is added (sada)', '2021-11-16 12:32:43', '2021-11-16 12:32:43', 1),
(770, 'category', 3, 'New category is added (cvxv)', '2021-11-16 12:33:12', '2021-11-16 12:33:12', 1),
(771, 'category', 2, 'Category is edited (sadazzzzzzzzzzzzzzzzzzzzzzzz)', '2021-11-16 12:33:40', '2021-11-16 12:33:40', 1),
(772, 'category', 2, 'Category is edited (sadazzzzzzzzzzzzzzzzzzzzzzzz)', '2021-11-16 12:33:57', '2021-11-16 12:33:57', 1),
(773, 'category', 2, 'Category is edited (sadazzzzzzzzzzzzzzzzzzzzzzzz)', '2021-11-16 12:33:58', '2021-11-16 12:33:58', 1),
(774, 'Single Page Menu', 8, 'A new record is added. (8)', '2021-11-16 12:34:34', '2021-11-16 12:34:34', 1),
(775, 'Single Page Menu', 8, 'Record is edited. (8)', '2021-11-16 12:34:53', '2021-11-16 12:34:53', 1),
(776, 'category', 1, 'Category is removed (Our Service)', '2021-11-16 12:37:09', '2021-11-16 12:37:09', 1),
(777, 'category', 4, 'New category is added (our services)', '2021-11-16 12:38:15', '2021-11-16 12:38:15', 1),
(778, 'category', 5, 'New category is added (dfdd)', '2021-11-16 12:38:44', '2021-11-16 12:38:44', 1),
(779, 'Single Page Menu', 9, 'A new record is added. (9)', '2021-11-16 12:39:26', '2021-11-16 12:39:26', 1),
(780, 'Single Page Menu', 10, 'A new record is added. (10)', '2021-11-16 12:40:02', '2021-11-16 12:40:02', 1),
(781, 'category', 4, 'Category is removed (our services)', '2021-11-16 12:40:22', '2021-11-16 12:40:22', 1),
(782, 'category', 6, 'New category is added (our service)', '2021-11-16 12:42:49', '2021-11-16 12:42:49', 1),
(783, 'Single Page Menu', 11, 'A new record is added. (11)', '2021-11-16 12:43:20', '2021-11-16 12:43:20', 1),
(784, 'Single Page Menu', 11, 'A record is removed. (11)', '2021-11-16 12:43:33', '2021-11-16 12:43:33', 1),
(785, 'Single Page Menu', 12, 'A new record is added. (12)', '2021-11-16 13:29:15', '2021-11-16 13:29:15', 1),
(786, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-16 14:07:35', '2021-11-16 14:07:35', 1),
(787, 'Single Pages', 11, 'Record is edited. (11)', '2021-11-16 14:09:43', '2021-11-16 14:09:43', 1),
(788, 'Single Pages', 11, 'Record is edited. (11)', '2021-11-16 14:09:52', '2021-11-16 14:09:52', 1),
(789, 'Single Pages', 11, 'A record is removed. (11)', '2021-11-16 14:09:58', '2021-11-16 14:09:58', 1),
(790, 'Slideshows', 10, 'A new record is added. (10)', '2021-11-16 14:10:53', '2021-11-16 14:10:53', 1),
(791, 'Slideshows', 10, 'A record is removed. (10)', '2021-11-16 14:11:10', '2021-11-16 14:11:10', 1),
(792, 'Services', 8, 'Record is edited. (8)', '2021-11-16 14:12:14', '2021-11-16 14:12:14', 1),
(793, 'Services', 8, 'A record is removed. (8)', '2021-11-16 14:12:57', '2021-11-16 14:12:57', 1),
(794, 'Privacy', 1, 'Record is edited. (1)', '2021-11-16 14:14:55', '2021-11-16 14:14:55', 1),
(795, 'Subsidiaries and Associates', 14, 'A new record is added. (14)', '2021-11-16 14:15:57', '2021-11-16 14:15:57', 1),
(796, 'Subsidiaries and Associates', 14, 'Record is edited. (14)', '2021-11-16 14:16:17', '2021-11-16 14:16:17', 1),
(797, 'News And Event', 4, 'Record is edited. (4)', '2021-11-16 14:17:43', '2021-11-16 14:17:43', 1),
(798, 'News And Event', 4, 'A record is removed. (4)', '2021-11-16 14:17:59', '2021-11-16 14:17:59', 1),
(799, 'News And Event', 5, 'Record is edited. (5)', '2021-11-16 14:18:16', '2021-11-16 14:18:16', 1),
(800, 'News And Event', 5, 'Record is edited. (5)', '2021-11-16 14:18:52', '2021-11-16 14:18:52', 1),
(801, 'News And Event', 5, 'A record is removed. (5)', '2021-11-16 14:19:01', '2021-11-16 14:19:01', 1),
(802, 'category countrey', 7, 'Record is edited. (7)', '2021-11-16 14:20:42', '2021-11-16 14:20:42', 1),
(803, 'category countrey', 7, 'Record is edited. (7)', '2021-11-16 14:20:58', '2021-11-16 14:20:58', 1),
(804, 'category', 7, 'New category is added (test)', '2021-11-16 14:27:30', '2021-11-16 14:27:30', 1),
(805, 'category', 8, 'New category is added (test2)', '2021-11-16 14:28:25', '2021-11-16 14:28:25', 1),
(806, 'category', 9, 'New category is added (test2test2)', '2021-11-16 14:29:18', '2021-11-16 14:29:18', 1),
(807, 'category', 9, 'Category is edited (test2test2)', '2021-11-16 14:33:06', '2021-11-16 14:33:06', 1),
(808, 'category', 9, 'Category header_image is deleted (test2test2)', '2021-11-16 14:33:28', '2021-11-16 14:33:28', 1),
(809, 'category', 9, 'Category is edited (test2test2)', '2021-11-16 14:33:48', '2021-11-16 14:33:48', 1),
(810, 'category', 8, 'Category is edited (test2)', '2021-11-16 14:34:19', '2021-11-16 14:34:19', 1),
(811, 'category', 8, 'Category is removed (test2)', '2021-11-16 14:34:56', '2021-11-16 14:34:56', 1),
(812, 'category', 10, 'New category is added (fgfgh)', '2021-11-16 14:35:34', '2021-11-16 14:35:34', 1),
(813, 'category', 7, 'Category is removed (test)', '2021-11-16 14:35:44', '2021-11-16 14:35:44', 1),
(814, 'category', 6, 'Category is removed (our service)', '2021-11-16 14:35:54', '2021-11-16 14:35:54', 1),
(815, 'category', 11, 'New category is added (test2)', '2021-11-16 14:36:24', '2021-11-16 14:36:24', 1),
(816, 'Notify Emails', 5, 'A new record is added. (5)', '2021-11-16 14:40:09', '2021-11-16 14:40:09', 1),
(817, 'Admins', 4, 'A new record is added. (4)', '2021-11-16 14:42:54', '2021-11-16 14:42:54', 1),
(818, 'Roles', 2, 'A new record is added. (2)', '2021-11-16 14:58:22', '2021-11-16 14:58:22', 1),
(819, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-11-16 14:58:31', '2021-11-16 14:58:31', 1),
(820, 'login', 4, 'test is logged in to Admin Panel.', '2021-11-16 14:58:40', '2021-11-16 14:58:40', 4),
(821, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-17 09:58:15', '2021-11-17 09:58:15', 1),
(822, 'Admins', 4, 'Record is edited. (4)', '2021-11-17 09:58:37', '2021-11-17 09:58:37', 1),
(823, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-11-17 09:59:25', '2021-11-17 09:59:25', 1),
(824, 'login', 4, 'test is logged in to Admin Panel.', '2021-11-17 09:59:36', '2021-11-17 09:59:36', 4),
(825, 'logout', 4, 'test is logged out from Admin Panel.', '2021-11-17 10:00:05', '2021-11-17 10:00:05', 4),
(826, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-17 10:00:21', '2021-11-17 10:00:21', 1),
(827, 'Admins', 4, 'A record is removed. (4)', '2021-11-17 10:01:39', '2021-11-17 10:01:39', 1),
(828, 'Roles', 2, 'A record is removed. (2)', '2021-11-17 10:02:13', '2021-11-17 10:02:13', 1),
(829, 'Roles', 3, 'A new record is added. (3)', '2021-11-17 10:02:40', '2021-11-17 10:02:40', 1),
(830, 'Admins', 5, 'A new record is added. (5)', '2021-11-17 10:04:23', '2021-11-17 10:04:23', 1),
(831, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-20 08:53:19', '2021-11-20 08:53:19', 1),
(832, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-20 20:06:37', '2021-11-20 20:06:37', 1),
(833, 'Slideshows', 11, 'A new record is added. (11)', '2021-11-20 20:06:56', '2021-11-20 20:06:56', 1),
(834, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-21 09:02:37', '2021-11-21 09:02:37', 1),
(835, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2021-11-21 09:02:49', '2021-11-21 09:02:49', 1),
(836, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-23 09:16:15', '2021-11-23 09:16:15', 1),
(837, 'category', 11, 'Category is edited (test2)', '2021-11-23 09:57:01', '2021-11-23 09:57:01', 1),
(838, 'Categories', 8, 'status is changed to 1 (8)', '2021-11-23 10:33:38', '2021-11-23 10:33:38', 1),
(839, 'Categories', 12, 'status is changed to 1 (12)', '2021-11-23 10:33:44', '2021-11-23 10:33:44', 1),
(840, 'Categories', 13, 'status is changed to 1 (13)', '2021-11-23 10:33:45', '2021-11-23 10:33:45', 1),
(841, 'Categories', 14, 'status is changed to 1 (14)', '2021-11-23 10:33:45', '2021-11-23 10:33:45', 1),
(842, 'Categories', 15, 'status is changed to 1 (15)', '2021-11-23 10:33:47', '2021-11-23 10:33:47', 1),
(843, 'Categories', 16, 'status is changed to 1 (16)', '2021-11-23 10:33:47', '2021-11-23 10:33:47', 1),
(844, 'Single Pages', 1, 'A record is removed. (1)', '2021-11-23 10:52:14', '2021-11-23 10:52:14', 1),
(845, 'Single Pages', 2, 'A record is removed. (2)', '2021-11-23 10:52:26', '2021-11-23 10:52:26', 1),
(846, 'Single Pages', 3, 'A record is removed. (3)', '2021-11-23 10:52:31', '2021-11-23 10:52:31', 1),
(847, 'Single Page Menu', 1, 'A new record is added. (1)', '2021-11-23 12:07:52', '2021-11-23 12:07:52', 1),
(848, 'Single Page Menu', 1, 'Record is edited. (1)', '2021-11-23 12:34:41', '2021-11-23 12:34:41', 1),
(849, 'Single Page Menu', 1, 'Record is edited. (1)', '2021-11-23 12:35:54', '2021-11-23 12:35:54', 1),
(850, 'Single Page Menu', 1, 'Record is edited. (1)', '2021-11-23 12:36:03', '2021-11-23 12:36:03', 1),
(851, 'Single Page Menu', 1, 'Record is edited. (1)', '2021-11-23 12:37:21', '2021-11-23 12:37:21', 1),
(852, 'Single Page Menu', 1, 'Record is edited. (1)', '2021-11-23 12:37:30', '2021-11-23 12:37:30', 1),
(853, 'Single Page Menu', 1, 'Record is edited. (1)', '2021-11-23 12:38:01', '2021-11-23 12:38:01', 1),
(854, 'Single Page Menu', 1, 'Record is edited. (1)', '2021-11-23 12:53:15', '2021-11-23 12:53:15', 1),
(855, 'Single Page Menu', 1, 'Record is edited. (1)', '2021-11-23 12:54:34', '2021-11-23 12:54:34', 1),
(856, 'Single Page Menu', 1, 'Record is edited. (1)', '2021-11-23 12:57:47', '2021-11-23 12:57:47', 1),
(857, 'Single Page Menu', 1, 'A record is removed. (1)', '2021-11-23 12:58:21', '2021-11-23 12:58:21', 1),
(858, 'Single Page Menu', 2, 'A new record is added. (2)', '2021-11-23 13:00:39', '2021-11-23 13:00:39', 1),
(859, 'Single Page Menu', 2, 'Record is edited. (2)', '2021-11-23 13:00:53', '2021-11-23 13:00:53', 1),
(860, 'Single Page Menu', 2, 'Record is edited. (2)', '2021-11-23 13:01:10', '2021-11-23 13:01:10', 1),
(861, 'Single Page Menu', 2, 'A record is removed. (2)', '2021-11-23 13:01:18', '2021-11-23 13:01:18', 1),
(862, 'Slideshows', 12, 'A new record is added. (12)', '2021-11-23 13:02:34', '2021-11-23 13:02:34', 1),
(863, 'Slideshows', 13, 'A new record is added. (13)', '2021-11-23 13:08:27', '2021-11-23 13:08:27', 1),
(864, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:10:59', '2021-11-23 13:10:59', 1),
(865, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:12:09', '2021-11-23 13:12:09', 1),
(866, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:13:12', '2021-11-23 13:13:12', 1),
(867, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:13:20', '2021-11-23 13:13:20', 1),
(868, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:13:48', '2021-11-23 13:13:48', 1),
(869, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:14:31', '2021-11-23 13:14:31', 1),
(870, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:15:21', '2021-11-23 13:15:21', 1),
(871, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:15:29', '2021-11-23 13:15:29', 1),
(872, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:18:39', '2021-11-23 13:18:39', 1),
(873, 'Slideshows', 13, 'Record is edited. (13)', '2021-11-23 13:19:54', '2021-11-23 13:19:54', 1),
(874, 'Slideshows', 14, 'A new record is added. (14)', '2021-11-23 13:20:53', '2021-11-23 13:20:53', 1),
(875, 'Slideshows', 14, 'Record is edited. (14)', '2021-11-23 13:21:05', '2021-11-23 13:21:05', 1),
(876, 'Users', 7, 'status is changed to 0 (7)', '2021-11-23 13:23:21', '2021-11-23 13:23:21', 1),
(877, 'Slideshows', 14, 'status is changed to 1 (14)', '2021-11-23 13:34:54', '2021-11-23 13:34:54', 1),
(878, 'Slideshows', 13, 'status is changed to 0 (13)', '2021-11-23 13:34:57', '2021-11-23 13:34:57', 1),
(879, 'Slideshows', 13, 'status is changed to 1 (13)', '2021-11-23 13:34:58', '2021-11-23 13:34:58', 1),
(880, 'Slideshows', 13, 'status is changed to 0 (13)', '2021-11-23 13:35:00', '2021-11-23 13:35:00', 1),
(881, 'Slideshows', 14, 'status is changed to 0 (14)', '2021-11-23 13:35:05', '2021-11-23 13:35:05', 1),
(882, 'Slideshows', 14, 'status is changed to 1 (14)', '2021-11-23 13:35:09', '2021-11-23 13:35:09', 1),
(883, 'Slideshows', 13, 'status is changed to 1 (13)', '2021-11-23 13:35:10', '2021-11-23 13:35:10', 1),
(884, 'Slideshows', 14, 'A record is removed. (14)', '2021-11-23 13:35:16', '2021-11-23 13:35:16', 1),
(885, 'Slideshows', 13, 'A record is removed. (13)', '2021-11-23 13:35:20', '2021-11-23 13:35:20', 1),
(886, 'Services', 6, 'A record is removed. (6)', '2021-11-23 13:40:43', '2021-11-23 13:40:43', 1),
(887, 'Services', 5, 'status is changed to 0 (5)', '2021-11-23 13:40:46', '2021-11-23 13:40:46', 1),
(888, 'Services', 2, 'status is changed to 0 (2)', '2021-11-23 13:40:47', '2021-11-23 13:40:47', 1),
(889, 'Services', 5, 'status is changed to 1 (5)', '2021-11-23 13:40:51', '2021-11-23 13:40:51', 1),
(890, 'Services', 2, 'status is changed to 1 (2)', '2021-11-23 13:40:52', '2021-11-23 13:40:52', 1),
(891, 'Service', 5, 'status is changed to 0 (5)', '2021-11-23 13:48:25', '2021-11-23 13:48:25', 1),
(892, 'Service', 5, 'status is changed to 1 (5)', '2021-11-23 13:48:26', '2021-11-23 13:48:26', 1),
(893, 'Service', 9, 'Record is edited. (9)', '2021-11-23 13:50:42', '2021-11-23 13:50:42', 1),
(894, 'Service', 9, 'A record is removed. (9)', '2021-11-23 13:50:48', '2021-11-23 13:50:48', 1),
(895, 'Service', 5, 'A record is removed. (5)', '2021-11-23 13:50:51', '2021-11-23 13:50:51', 1),
(896, 'Service', 2, 'A record is removed. (2)', '2021-11-23 13:50:58', '2021-11-23 13:50:58', 1),
(897, 'Service', 4, 'A record is removed. (4)', '2021-11-23 13:51:02', '2021-11-23 13:51:02', 1),
(898, 'Service', 3, 'Record is edited. (3)', '2021-11-23 13:53:46', '2021-11-23 13:53:46', 1),
(899, 'Service', 3, 'Record is edited. (3)', '2021-11-23 13:54:02', '2021-11-23 13:54:02', 1),
(900, 'Service', 10, 'Record is edited. (10)', '2021-11-23 13:54:12', '2021-11-23 13:54:12', 1),
(901, 'Service', 10, 'A record is removed. (10)', '2021-11-23 13:54:17', '2021-11-23 13:54:17', 1),
(902, 'News And Event', 1, 'Record is edited. (1)', '2021-11-23 14:17:19', '2021-11-23 14:17:19', 1),
(903, 'News And Event', 1, 'Record is edited. (1)', '2021-11-23 14:30:08', '2021-11-23 14:30:08', 1),
(904, 'News And Event', 1, 'Record is edited. (1)', '2021-11-23 15:04:34', '2021-11-23 15:04:34', 1),
(905, 'News And Event', 1, 'Record is edited. (1)', '2021-11-23 15:04:46', '2021-11-23 15:04:46', 1),
(906, 'Subsidiaries and Associates', 15, 'A new record is added. (15)', '2021-11-23 15:32:03', '2021-11-23 15:32:03', 1),
(907, 'Subsidiaries and Associates', 15, 'A record is removed. (15)', '2021-11-23 15:32:13', '2021-11-23 15:32:13', 1),
(908, 'Subsidiaries and Associates', 14, 'A record is removed. (14)', '2021-11-23 15:32:17', '2021-11-23 15:32:17', 1),
(909, 'Subsidiaries and Associates', 13, 'A record is removed. (13)', '2021-11-23 15:32:21', '2021-11-23 15:32:21', 1),
(910, 'Subsidiaries and Associates', 16, 'A new record is added. (16)', '2021-11-23 15:32:29', '2021-11-23 15:32:29', 1),
(911, 'Subsidiaries and Associates', 16, 'Record is edited. (16)', '2021-11-23 15:37:30', '2021-11-23 15:37:30', 1),
(912, 'Subsidiaries and Associates', 17, 'A new record is added. (17)', '2021-11-23 15:38:36', '2021-11-23 15:38:36', 1),
(913, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-24 13:49:34', '2021-11-24 13:49:34', 1),
(914, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-25 09:37:59', '2021-11-25 09:37:59', 1),
(915, 'Single Page Menu', 3, 'A new record is added. (3)', '2021-11-25 10:15:09', '2021-11-25 10:15:09', 1),
(916, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-27 10:49:03', '2021-11-27 10:49:03', 1),
(917, 'Single Page Menu', 4, 'A new record is added. (4)', '2021-11-27 12:34:12', '2021-11-27 12:34:12', 1),
(918, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-11-27 12:37:20', '2021-11-27 12:37:20', 1),
(919, 'Single Page Menu', 4, 'Record is edited. (4)', '2021-11-27 12:41:09', '2021-11-27 12:41:09', 1),
(920, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-28 09:13:19', '2021-11-28 09:13:19', 1),
(921, 'Corporate Overview', 1, 'A new record is added. (1)', '2021-11-28 10:01:34', '2021-11-28 10:01:34', 1),
(922, 'Corporate Overview', 1, 'Record is edited. (1)', '2021-11-28 10:13:55', '2021-11-28 10:13:55', 1),
(923, 'Corporate Overview', 1, 'Record is edited. (1)', '2021-11-28 10:14:38', '2021-11-28 10:14:38', 1),
(924, 'Corporate Overview', 1, 'Record is edited. (1)', '2021-11-28 10:14:46', '2021-11-28 10:14:46', 1),
(925, 'Corporate Overview', 1, 'Record is edited. (1)', '2021-11-28 10:15:02', '2021-11-28 10:15:02', 1),
(926, 'Corporate Overview', 1, 'Record is edited. (1)', '2021-11-28 10:15:10', '2021-11-28 10:15:10', 1),
(927, 'Corporate Overview', 1, 'A record is removed. (1)', '2021-11-28 10:15:54', '2021-11-28 10:15:54', 1),
(928, 'Corporate Overview', 2, 'A new record is added. (2)', '2021-11-28 10:19:45', '2021-11-28 10:19:45', 1),
(929, 'Corporate Overview', 2, 'Record is edited. (2)', '2021-11-28 10:20:27', '2021-11-28 10:20:27', 1),
(930, 'Single Pages', 12, 'Record is edited. (12)', '2021-11-28 10:43:22', '2021-11-28 10:43:22', 1),
(931, 'Service', 11, 'Record is edited. (11)', '2021-11-28 11:01:03', '2021-11-28 11:01:03', 1),
(932, 'Service', 11, 'A record is removed. (11)', '2021-11-28 11:01:08', '2021-11-28 11:01:08', 1),
(933, 'Service', 3, 'A record is removed. (3)', '2021-11-28 11:01:14', '2021-11-28 11:01:14', 1),
(934, 'Service', 12, 'Record is edited. (12)', '2021-11-28 11:02:19', '2021-11-28 11:02:19', 1),
(935, 'Service', 13, 'Record is edited. (13)', '2021-11-28 11:02:40', '2021-11-28 11:02:40', 1),
(936, 'Service', 14, 'Record is edited. (14)', '2021-11-28 11:03:00', '2021-11-28 11:03:00', 1),
(937, 'Single Pages', 12, 'Record is edited. (12)', '2021-11-28 11:03:50', '2021-11-28 11:03:50', 1),
(938, 'News And Event', 1, 'A record is removed. (1)', '2021-11-28 11:04:24', '2021-11-28 11:04:24', 1),
(939, 'News And Event', 3, 'A record is removed. (3)', '2021-11-28 11:04:28', '2021-11-28 11:04:28', 1),
(940, 'News And Event', 6, 'Record is edited. (6)', '2021-11-28 11:08:40', '2021-11-28 11:08:40', 1),
(941, 'News And Event', 7, 'Record is edited. (7)', '2021-11-28 11:14:38', '2021-11-28 11:14:38', 1),
(942, 'News And Event', 8, 'Record is edited. (8)', '2021-11-28 11:15:13', '2021-11-28 11:15:13', 1),
(943, 'Single Pages', 13, 'Record is edited. (13)', '2021-11-28 11:16:00', '2021-11-28 11:16:00', 1),
(944, 'Single Pages', 14, 'Record is edited. (14)', '2021-11-28 11:16:37', '2021-11-28 11:16:37', 1),
(945, 'Subsidiaries and Associates', 16, 'A record is removed. (16)', '2021-11-28 11:17:06', '2021-11-28 11:17:06', 1),
(946, 'Subsidiaries and Associates', 17, 'A record is removed. (17)', '2021-11-28 11:17:10', '2021-11-28 11:17:10', 1),
(947, 'Subsidiaries and Associates', 18, 'A new record is added. (18)', '2021-11-28 11:18:18', '2021-11-28 11:18:18', 1),
(948, 'Subsidiaries and Associates', 19, 'A new record is added. (19)', '2021-11-28 11:18:37', '2021-11-28 11:18:37', 1),
(949, 'Subsidiaries and Associates', 20, 'A new record is added. (20)', '2021-11-28 11:18:59', '2021-11-28 11:18:59', 1),
(950, 'Subsidiaries and Associates', 21, 'A new record is added. (21)', '2021-11-28 11:19:15', '2021-11-28 11:19:15', 1),
(951, 'Subsidiaries and Associates', 22, 'A new record is added. (22)', '2021-11-28 11:19:44', '2021-11-28 11:19:44', 1),
(952, 'Subsidiaries and Associates', 23, 'A new record is added. (23)', '2021-11-28 11:19:58', '2021-11-28 11:19:58', 1),
(953, 'Service', 15, 'Record is edited. (15)', '2021-11-28 13:33:10', '2021-11-28 13:33:10', 1),
(954, 'Service', 15, 'Record is edited. (15)', '2021-11-28 13:37:11', '2021-11-28 13:37:11', 1),
(955, 'Service', 16, 'Record is edited. (16)', '2021-11-28 13:37:41', '2021-11-28 13:37:41', 1),
(956, 'Service', 17, 'Record is edited. (17)', '2021-11-28 13:40:31', '2021-11-28 13:40:31', 1),
(957, 'Service', 18, 'Record is edited. (18)', '2021-11-28 13:40:45', '2021-11-28 13:40:45', 1),
(958, 'Service', 18, 'Record is edited. (18)', '2021-11-28 13:41:02', '2021-11-28 13:41:02', 1),
(959, 'Service', 15, 'A record is removed. (15)', '2021-11-28 13:41:57', '2021-11-28 13:41:57', 1),
(960, 'Service', 18, 'A record is removed. (18)', '2021-11-28 13:42:26', '2021-11-28 13:42:26', 1),
(961, 'Service', 17, 'A record is removed. (17)', '2021-11-28 13:42:32', '2021-11-28 13:42:32', 1),
(962, 'Service', 16, 'A record is removed. (16)', '2021-11-28 13:42:36', '2021-11-28 13:42:36', 1),
(963, 'Service', 12, 'Record is edited. (12)', '2021-11-28 14:11:25', '2021-11-28 14:11:25', 1),
(964, 'Service', 13, 'Record is edited. (13)', '2021-11-28 14:15:06', '2021-11-28 14:15:06', 1),
(965, 'Service', 12, 'Record is edited. (12)', '2021-11-28 14:15:25', '2021-11-28 14:15:25', 1),
(966, 'Service', 14, 'Record is edited. (14)', '2021-11-28 14:15:38', '2021-11-28 14:15:38', 1),
(967, 'Settings', 1, 'information updated', '2021-11-28 15:45:26', '2021-11-28 15:45:26', 1),
(968, 'Settings', 1, 'information updated', '2021-11-28 15:59:09', '2021-11-28 15:59:09', 1),
(969, 'Settings', 1, 'information updated', '2021-11-28 16:00:10', '2021-11-28 16:00:10', 1),
(970, 'Settings', 1, 'information updated', '2021-11-28 16:01:41', '2021-11-28 16:01:41', 1),
(971, 'Settings', 1, 'information updated', '2021-11-28 16:02:33', '2021-11-28 16:02:33', 1),
(972, 'Settings', 1, 'information updated', '2021-11-28 16:04:01', '2021-11-28 16:04:01', 1),
(973, 'Single Pages', 12, 'Record is edited. (12)', '2021-11-28 16:26:42', '2021-11-28 16:26:42', 1),
(974, 'Single Pages', 13, 'Record is edited. (13)', '2021-11-28 16:26:49', '2021-11-28 16:26:49', 1),
(975, 'Single Pages', 14, 'Record is edited. (14)', '2021-11-28 16:26:56', '2021-11-28 16:26:56', 1),
(976, 'News And Event', 6, 'Record is edited. (6)', '2021-11-28 16:30:32', '2021-11-28 16:30:32', 1),
(977, 'News And Event', 7, 'Record is edited. (7)', '2021-11-28 16:30:51', '2021-11-28 16:30:51', 1),
(978, 'News And Event', 8, 'Record is edited. (8)', '2021-11-28 16:31:00', '2021-11-28 16:31:00', 1),
(979, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-29 09:29:47', '2021-11-29 09:29:47', 1),
(980, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-11-29 10:48:24', '2021-11-29 10:48:24', 1),
(981, 'Single Page Menu', 4, 'Record is edited. (4)', '2021-11-29 10:53:40', '2021-11-29 10:53:40', 1),
(982, 'Single Page Menu', 5, 'A new record is added. (5)', '2021-11-29 11:23:08', '2021-11-29 11:23:08', 1),
(983, 'Single Page Menu', 6, 'A new record is added. (6)', '2021-11-29 11:26:20', '2021-11-29 11:26:20', 1),
(984, 'Single Page Menu', 7, 'A new record is added. (7)', '2021-11-29 11:27:07', '2021-11-29 11:27:07', 1),
(985, 'Single Page Menu', 8, 'A new record is added. (8)', '2021-11-29 11:28:09', '2021-11-29 11:28:09', 1),
(986, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-29 11:33:36', '2021-11-29 11:33:36', 1),
(987, 'Single Page Menu', 8, 'Record is edited. (8)', '2021-11-29 11:40:01', '2021-11-29 11:40:01', 1),
(988, 'Single Page Menu', 9, 'A new record is added. (9)', '2021-11-29 11:41:04', '2021-11-29 11:41:04', 1),
(989, 'Single Page Menu', 10, 'A new record is added. (10)', '2021-11-29 11:43:47', '2021-11-29 11:43:47', 1),
(990, 'Single Page Menu', 11, 'A new record is added. (11)', '2021-11-29 11:46:50', '2021-11-29 11:46:50', 1);
INSERT INTO `gwc_logs` (`id`, `key_name`, `key_id`, `message`, `created_at`, `updated_at`, `created_by`) VALUES
(991, 'Single Page Menu', 12, 'A new record is added. (12)', '2021-11-29 11:48:54', '2021-11-29 11:48:54', 1),
(992, 'Single Page Menu', 13, 'A new record is added. (13)', '2021-11-29 11:49:52', '2021-11-29 11:49:52', 1),
(993, 'Single Page Menu', 14, 'A new record is added. (14)', '2021-11-29 11:50:55', '2021-11-29 11:50:55', 1),
(994, 'Single Page Menu', 14, 'Record is edited. (14)', '2021-11-29 11:52:02', '2021-11-29 11:52:02', 1),
(995, 'Single Page Menu', 15, 'A new record is added. (15)', '2021-11-29 11:53:05', '2021-11-29 11:53:05', 1),
(996, 'Single Page Menu', 16, 'A new record is added. (16)', '2021-11-29 11:53:51', '2021-11-29 11:53:51', 1),
(997, 'Single Page Menu', 17, 'A new record is added. (17)', '2021-11-29 11:54:54', '2021-11-29 11:54:54', 1),
(998, 'Single Page Menu', 18, 'A new record is added. (18)', '2021-11-29 11:55:48', '2021-11-29 11:55:48', 1),
(999, 'Single Page Menu', 18, 'Record is edited. (18)', '2021-11-29 11:57:30', '2021-11-29 11:57:30', 1),
(1000, 'Single Page Menu', 18, 'Record is edited. (18)', '2021-11-29 11:58:04', '2021-11-29 11:58:04', 1),
(1001, 'Single Page Menu', 19, 'A new record is added. (19)', '2021-11-29 11:59:46', '2021-11-29 11:59:46', 1),
(1002, 'Single Page Menu', 20, 'A new record is added. (20)', '2021-11-29 12:00:25', '2021-11-29 12:00:25', 1),
(1003, 'Single Page Menu', 21, 'A new record is added. (21)', '2021-11-29 12:01:05', '2021-11-29 12:01:05', 1),
(1004, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-11-29 12:05:32', '2021-11-29 12:05:32', 1),
(1005, 'Single Page Menu', 4, 'Record is edited. (4)', '2021-11-29 12:05:55', '2021-11-29 12:05:55', 1),
(1006, 'News And Event', 6, 'Record is edited. (6)', '2021-11-29 12:45:07', '2021-11-29 12:45:07', 1),
(1007, 'News And Event', 6, 'Record is edited. (6)', '2021-11-29 12:45:35', '2021-11-29 12:45:35', 1),
(1008, 'News And Event', 7, 'Record is edited. (7)', '2021-11-29 12:45:53', '2021-11-29 12:45:53', 1),
(1009, 'News And Event', 8, 'Record is edited. (8)', '2021-11-29 12:46:09', '2021-11-29 12:46:09', 1),
(1010, 'News And Event', 8, 'status is changed to 0 (8)', '2021-11-29 12:46:13', '2021-11-29 12:46:13', 1),
(1011, 'News And Event', 8, 'status is changed to 1 (8)', '2021-11-29 12:46:17', '2021-11-29 12:46:17', 1),
(1012, 'News And Event', 9, 'Record is edited. (9)', '2021-11-29 12:54:26', '2021-11-29 12:54:26', 1),
(1013, 'News And Event', 9, 'Record is edited. (9)', '2021-11-29 12:56:59', '2021-11-29 12:56:59', 1),
(1014, 'News And Event', 6, 'Record is edited. (6)', '2021-11-29 12:57:13', '2021-11-29 12:57:13', 1),
(1015, 'News And Event', 8, 'Record is edited. (8)', '2021-11-29 12:57:28', '2021-11-29 12:57:28', 1),
(1016, 'Quick links', 1, 'A new record is added. (1)', '2021-11-29 15:48:46', '2021-11-29 15:48:46', 1),
(1017, 'Quick links', 2, 'A new record is added. (2)', '2021-11-29 16:04:47', '2021-11-29 16:04:47', 1),
(1018, 'Quick links', 2, 'Record is edited. (2)', '2021-11-29 16:05:41', '2021-11-29 16:05:41', 1),
(1019, 'Quick links', 3, 'A new record is added. (3)', '2021-11-29 16:07:45', '2021-11-29 16:07:45', 1),
(1020, 'Quick links', 3, 'Record is edited. (3)', '2021-11-29 16:07:54', '2021-11-29 16:07:54', 1),
(1021, 'Quick links', 4, 'A new record is added. (4)', '2021-11-29 16:21:11', '2021-11-29 16:21:11', 1),
(1022, 'Quick links', 3, 'Record is edited. (3)', '2021-11-29 16:22:18', '2021-11-29 16:22:18', 1),
(1023, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-11-30 08:58:02', '2021-11-30 08:58:02', 1),
(1024, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-01 10:41:34', '2021-12-01 10:41:34', 1),
(1025, 'Single Page Menu', 22, 'A new record is added. (22)', '2021-12-01 13:39:19', '2021-12-01 13:39:19', 1),
(1026, 'Slideshows', 2, 'A record is removed. (2)', '2021-12-01 14:53:59', '2021-12-01 14:53:59', 1),
(1027, 'Slideshows', 6, 'A record is removed. (6)', '2021-12-01 14:54:03', '2021-12-01 14:54:03', 1),
(1028, 'Slideshows', 7, 'A record is removed. (7)', '2021-12-01 14:54:08', '2021-12-01 14:54:08', 1),
(1029, 'Slideshows', 8, 'A record is removed. (8)', '2021-12-01 14:54:12', '2021-12-01 14:54:12', 1),
(1030, 'Slideshows', 9, 'A record is removed. (9)', '2021-12-01 14:54:16', '2021-12-01 14:54:16', 1),
(1031, 'Slideshows', 11, 'A record is removed. (11)', '2021-12-01 14:54:20', '2021-12-01 14:54:20', 1),
(1032, 'Slideshows', 12, 'A record is removed. (12)', '2021-12-01 14:54:24', '2021-12-01 14:54:24', 1),
(1033, 'Slideshows', 15, 'A new record is added. (15)', '2021-12-01 14:56:35', '2021-12-01 14:56:35', 1),
(1034, 'Slideshows', 16, 'A new record is added. (16)', '2021-12-01 14:57:10', '2021-12-01 14:57:10', 1),
(1035, 'News And Event', 9, 'A record is removed. (9)', '2021-12-01 14:58:28', '2021-12-01 14:58:28', 1),
(1036, 'Resume', 1, 'A record is removed. (1)', '2021-12-01 15:22:41', '2021-12-01 15:22:41', 1),
(1037, 'Resume', 2, 'A record is removed. (2)', '2021-12-01 15:22:44', '2021-12-01 15:22:44', 1),
(1038, 'Quick links', 3, 'Record is edited. (3)', '2021-12-01 15:27:41', '2021-12-01 15:27:41', 1),
(1039, 'Corporate Overview', 2, 'Record is edited. (2)', '2021-12-01 15:28:47', '2021-12-01 15:28:47', 1),
(1040, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-12-01 15:50:44', '2021-12-01 15:50:44', 1),
(1041, 'Single Page Menu', 4, 'Record is edited. (4)', '2021-12-01 15:51:06', '2021-12-01 15:51:06', 1),
(1042, 'Single Page Menu', 5, 'Record is edited. (5)', '2021-12-01 15:52:53', '2021-12-01 15:52:53', 1),
(1043, 'Single Page Menu', 6, 'Record is edited. (6)', '2021-12-01 15:55:12', '2021-12-01 15:55:12', 1),
(1044, 'Single Page Menu', 7, 'Record is edited. (7)', '2021-12-01 15:57:05', '2021-12-01 15:57:05', 1),
(1045, 'Single Page Menu', 8, 'Record is edited. (8)', '2021-12-01 15:57:47', '2021-12-01 15:57:47', 1),
(1046, 'Single Page Menu', 4, 'Record is edited. (4)', '2021-12-01 16:08:15', '2021-12-01 16:08:15', 1),
(1047, 'Single Page Menu', 5, 'Record is edited. (5)', '2021-12-01 16:12:45', '2021-12-01 16:12:45', 1),
(1048, 'Single Page Menu', 6, 'Record is edited. (6)', '2021-12-01 16:15:15', '2021-12-01 16:15:15', 1),
(1049, 'Single Page Menu', 7, 'Record is edited. (7)', '2021-12-01 16:17:18', '2021-12-01 16:17:18', 1),
(1050, 'Single Page Menu', 8, 'Record is edited. (8)', '2021-12-01 16:18:14', '2021-12-01 16:18:14', 1),
(1051, 'Single Page Menu', 9, 'Record is edited. (9)', '2021-12-01 16:19:12', '2021-12-01 16:19:12', 1),
(1052, 'Single Page Menu', 10, 'Record is edited. (10)', '2021-12-01 16:20:00', '2021-12-01 16:20:00', 1),
(1053, 'Single Page Menu', 11, 'Record is edited. (11)', '2021-12-01 16:20:49', '2021-12-01 16:20:49', 1),
(1054, 'Single Page Menu', 12, 'Record is edited. (12)', '2021-12-01 16:30:03', '2021-12-01 16:30:03', 1),
(1055, 'Single Page Menu', 13, 'Record is edited. (13)', '2021-12-01 16:30:25', '2021-12-01 16:30:25', 1),
(1056, 'Single Page Menu', 14, 'Record is edited. (14)', '2021-12-01 16:30:46', '2021-12-01 16:30:46', 1),
(1057, 'Single Page Menu', 15, 'Record is edited. (15)', '2021-12-01 16:31:13', '2021-12-01 16:31:13', 1),
(1058, 'Single Page Menu', 16, 'Record is edited. (16)', '2021-12-01 16:31:29', '2021-12-01 16:31:29', 1),
(1059, 'Single Page Menu', 17, 'Record is edited. (17)', '2021-12-01 16:31:46', '2021-12-01 16:31:46', 1),
(1060, 'Single Page Menu', 22, 'Record is edited. (22)', '2021-12-01 16:33:04', '2021-12-01 16:33:04', 1),
(1061, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-02 11:22:12', '2021-12-02 11:22:12', 1),
(1062, 'Anuaal Reports', 1, 'A new record is added. (1)', '2021-12-02 11:45:25', '2021-12-02 11:45:25', 1),
(1063, 'Anuaal Reports', 1, 'A record is removed. (1)', '2021-12-02 12:03:52', '2021-12-02 12:03:52', 1),
(1064, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-04 10:03:05', '2021-12-04 10:03:05', 1),
(1065, 'Avalable Vacancies', 1, 'Record is edited. (1)', '2021-12-04 11:05:37', '2021-12-04 11:05:37', 1),
(1066, 'Avalable Vacancies', 1, 'Record is edited. (1)', '2021-12-04 11:14:35', '2021-12-04 11:14:35', 1),
(1067, 'Avalable Vacancies', 1, 'A record is removed. (1)', '2021-12-04 11:15:13', '2021-12-04 11:15:13', 1),
(1068, 'Avalable Vacancies', 2, 'Record is edited. (2)', '2021-12-04 11:15:34', '2021-12-04 11:15:34', 1),
(1069, 'Avalable Vacancies', 3, 'Record is edited. (3)', '2021-12-04 13:37:44', '2021-12-04 13:37:44', 1),
(1070, 'Avalable Vacancies', 4, 'Record is edited. (4)', '2021-12-04 13:42:12', '2021-12-04 13:42:12', 1),
(1071, 'Avalable Vacancies', 4, 'Record is edited. (4)', '2021-12-04 13:42:33', '2021-12-04 13:42:33', 1),
(1072, 'Resume', 3, 'A record is removed. (3)', '2021-12-04 14:09:55', '2021-12-04 14:09:55', 1),
(1073, 'Resume', 4, 'A record is removed. (4)', '2021-12-04 14:10:00', '2021-12-04 14:10:00', 1),
(1074, 'Resume', 5, 'A record is removed. (5)', '2021-12-04 14:10:07', '2021-12-04 14:10:07', 1),
(1075, 'Anuaal Reports', 2, 'A new record is added. (2)', '2021-12-04 15:40:52', '2021-12-04 15:40:52', 1),
(1076, 'Anuaal Reports', 3, 'A new record is added. (3)', '2021-12-04 15:56:36', '2021-12-04 15:56:36', 1),
(1077, 'Anuaal Reports', 4, 'A new record is added. (4)', '2021-12-04 15:58:29', '2021-12-04 15:58:29', 1),
(1078, 'Quarterly Reports', 1, 'A new record is added. (1)', '2021-12-04 16:02:02', '2021-12-04 16:02:02', 1),
(1079, 'Anuaal Reports', 2, 'Record is edited. (2)', '2021-12-04 16:05:25', '2021-12-04 16:05:25', 1),
(1080, 'Anuaal Reports', 2, 'Record is edited. (2)', '2021-12-04 16:06:15', '2021-12-04 16:06:15', 1),
(1081, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-05 11:25:13', '2021-12-05 11:25:13', 1),
(1082, 'Disclosure', 1, 'A new record is added. (1)', '2021-12-05 13:18:54', '2021-12-05 13:18:54', 1),
(1083, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-05 13:29:19', '2021-12-05 13:29:19', 1),
(1084, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-05 13:29:34', '2021-12-05 13:29:34', 1),
(1085, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-05 13:45:20', '2021-12-05 13:45:20', 1),
(1086, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-05 13:46:18', '2021-12-05 13:46:18', 1),
(1087, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-05 13:48:24', '2021-12-05 13:48:24', 1),
(1088, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-05 14:18:52', '2021-12-05 14:18:52', 1),
(1089, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-05 14:19:07', '2021-12-05 14:19:07', 1),
(1090, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-05 14:19:25', '2021-12-05 14:19:25', 1),
(1091, 'Single Page Menu', 11, 'Record is edited. (11)', '2021-12-05 15:03:13', '2021-12-05 15:03:13', 1),
(1092, 'Single Page Menu', 11, 'Record is edited. (11)', '2021-12-05 15:06:22', '2021-12-05 15:06:22', 1),
(1093, 'Single Page Menu', 12, 'Record is edited. (12)', '2021-12-05 15:06:49', '2021-12-05 15:06:49', 1),
(1094, 'Single Page Menu', 16, 'Record is edited. (16)', '2021-12-05 15:10:01', '2021-12-05 15:10:01', 1),
(1095, 'Single Page Menu', 16, 'Record is edited. (16)', '2021-12-05 15:15:24', '2021-12-05 15:15:24', 1),
(1096, 'Single Page Menu', 17, 'Record is edited. (17)', '2021-12-05 15:16:38', '2021-12-05 15:16:38', 1),
(1097, 'Single Page Menu', 23, 'A new record is added. (23)', '2021-12-05 15:24:25', '2021-12-05 15:24:25', 1),
(1098, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-06 08:59:39', '2021-12-06 08:59:39', 1),
(1099, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-06 21:03:16', '2021-12-06 21:03:16', 1),
(1100, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-06 21:03:27', '2021-12-06 21:03:27', 1),
(1101, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-07 10:11:40', '2021-12-07 10:11:40', 1),
(1102, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-07 10:22:02', '2021-12-07 10:22:02', 1),
(1103, 'Slideshows', 17, 'A new record is added. (17)', '2021-12-07 10:22:53', '2021-12-07 10:22:53', 1),
(1104, 'Slideshows', 17, 'A record is removed. (17)', '2021-12-07 10:22:58', '2021-12-07 10:22:58', 1),
(1105, 'Privacy', 1, 'Record is edited. (1)', '2021-12-07 10:24:18', '2021-12-07 10:24:18', 1),
(1106, 'Subsidiaries and Associates', 20, 'Record is edited. (20)', '2021-12-07 10:24:35', '2021-12-07 10:24:35', 1),
(1107, 'News And Event', 6, 'Record is edited. (6)', '2021-12-07 10:24:58', '2021-12-07 10:24:58', 1),
(1108, 'Single Pages', 15, 'Record is edited. (15)', '2021-12-07 10:28:42', '2021-12-07 10:28:42', 1),
(1109, 'Resume', 6, 'A record is removed. (6)', '2021-12-07 10:28:43', '2021-12-07 10:28:43', 1),
(1110, 'Resume', 7, 'A record is removed. (7)', '2021-12-07 10:28:47', '2021-12-07 10:28:47', 1),
(1111, 'Single Pages', 15, 'A record is removed. (15)', '2021-12-07 10:28:51', '2021-12-07 10:28:51', 1),
(1112, 'Resume', 8, 'A record is removed. (8)', '2021-12-07 10:28:53', '2021-12-07 10:28:53', 1),
(1113, 'Resume', 9, 'A record is removed. (9)', '2021-12-07 10:28:57', '2021-12-07 10:28:57', 1),
(1114, 'Resume', 10, 'A record is removed. (10)', '2021-12-07 10:29:01', '2021-12-07 10:29:01', 1),
(1115, 'Resume', 11, 'A record is removed. (11)', '2021-12-07 10:29:06', '2021-12-07 10:29:06', 1),
(1116, 'Resume', 12, 'A record is removed. (12)', '2021-12-07 10:29:10', '2021-12-07 10:29:10', 1),
(1117, 'Single Pages', 14, 'Record is edited. (14)', '2021-12-07 10:29:15', '2021-12-07 10:29:15', 1),
(1118, 'Single Pages', 14, 'Record is edited. (14)', '2021-12-07 10:29:27', '2021-12-07 10:29:27', 1),
(1119, 'Service', 19, 'Record is edited. (19)', '2021-12-07 10:31:53', '2021-12-07 10:31:53', 1),
(1120, 'Service', 19, 'Record is edited. (19)', '2021-12-07 10:33:48', '2021-12-07 10:33:48', 1),
(1121, 'Single Pages', 16, 'Record is edited. (16)', '2021-12-07 10:34:09', '2021-12-07 10:34:09', 1),
(1122, 'Service', 19, 'A record is removed. (19)', '2021-12-07 10:34:10', '2021-12-07 10:34:10', 1),
(1123, 'Single Pages', 16, 'Record is edited. (16)', '2021-12-07 10:34:33', '2021-12-07 10:34:33', 1),
(1124, 'Subsidiaries and Associates', 20, 'Record is edited. (20)', '2021-12-07 10:34:42', '2021-12-07 10:34:42', 1),
(1125, 'Single Pages', 16, 'A record is removed. (16)', '2021-12-07 10:34:57', '2021-12-07 10:34:57', 1),
(1126, 'Subsidiaries and Associates', 24, 'A new record is added. (24)', '2021-12-07 10:34:58', '2021-12-07 10:34:58', 1),
(1127, 'Subsidiaries and Associates', 24, 'A record is removed. (24)', '2021-12-07 10:35:05', '2021-12-07 10:35:05', 1),
(1128, 'News And Event', 10, 'Record is edited. (10)', '2021-12-07 10:36:01', '2021-12-07 10:36:01', 1),
(1129, 'News And Event', 10, 'Record is edited. (10)', '2021-12-07 10:36:19', '2021-12-07 10:36:19', 1),
(1130, 'News And Event', 10, 'A record is removed. (10)', '2021-12-07 10:36:25', '2021-12-07 10:36:25', 1),
(1131, 'Corporate Overview', 2, 'Record is edited. (2)', '2021-12-07 10:40:17', '2021-12-07 10:40:17', 1),
(1132, 'Corporate Overview', 2, 'Record is edited. (2)', '2021-12-07 10:40:27', '2021-12-07 10:40:27', 1),
(1133, 'Quick links', 5, 'A new record is added. (5)', '2021-12-07 10:41:00', '2021-12-07 10:41:00', 1),
(1134, 'Quick links', 5, 'A record is removed. (5)', '2021-12-07 10:41:06', '2021-12-07 10:41:06', 1),
(1135, 'Single Pages', 12, 'Record is edited. (12)', '2021-12-07 10:41:09', '2021-12-07 10:41:09', 1),
(1136, 'Quick links', 4, 'A record is removed. (4)', '2021-12-07 10:41:12', '2021-12-07 10:41:12', 1),
(1137, 'Quick links', 3, 'A record is removed. (3)', '2021-12-07 10:41:18', '2021-12-07 10:41:18', 1),
(1138, 'Quick links', 2, 'Record is edited. (2)', '2021-12-07 10:41:39', '2021-12-07 10:41:39', 1),
(1139, 'Slideshows', 18, 'A new record is added. (18)', '2021-12-07 10:46:17', '2021-12-07 10:46:17', 1),
(1140, 'Slideshows', 18, 'Record is edited. (18)', '2021-12-07 10:46:27', '2021-12-07 10:46:27', 1),
(1141, 'Slideshows', 18, 'A record is removed. (18)', '2021-12-07 10:46:31', '2021-12-07 10:46:31', 1),
(1142, 'Anuaal Reports', 2, 'Record is edited. (2)', '2021-12-07 10:46:42', '2021-12-07 10:46:42', 1),
(1143, 'Avalable Vacancies', 5, 'Record is edited. (5)', '2021-12-07 10:47:23', '2021-12-07 10:47:23', 1),
(1144, 'Avalable Vacancies', 5, 'A record is removed. (5)', '2021-12-07 10:47:35', '2021-12-07 10:47:35', 1),
(1145, 'Anuaal Reports', 2, 'Record is edited. (2)', '2021-12-07 10:48:11', '2021-12-07 10:48:11', 1),
(1146, 'Anuaal Reports', 3, 'Record is edited. (3)', '2021-12-07 10:48:27', '2021-12-07 10:48:27', 1),
(1147, 'Anuaal Reports', 4, 'Record is edited. (4)', '2021-12-07 10:48:43', '2021-12-07 10:48:43', 1),
(1148, 'Quarterly Reports', 2, 'A new record is added. (2)', '2021-12-07 10:50:44', '2021-12-07 10:50:44', 1),
(1149, 'Quarterly Reports', 1, 'Record is edited. (1)', '2021-12-07 11:02:37', '2021-12-07 11:02:37', 1),
(1150, 'Quarterly Reports', 2, 'Record is edited. (2)', '2021-12-07 11:02:47', '2021-12-07 11:02:47', 1),
(1151, 'Quarterly Reports', 1, 'Record is edited. (1)', '2021-12-07 11:22:00', '2021-12-07 11:22:00', 1),
(1152, 'Quarterly Reports', 2, 'A record is removed. (2)', '2021-12-07 11:23:26', '2021-12-07 11:23:26', 1),
(1153, 'Privacy', 1, 'Record is edited. (1)', '2021-12-07 11:23:54', '2021-12-07 11:23:54', 1),
(1154, 'Service', 12, 'status is changed to 0 (12)', '2021-12-07 11:24:06', '2021-12-07 11:24:06', 1),
(1155, 'Service', 12, 'status is changed to 1 (12)', '2021-12-07 11:24:08', '2021-12-07 11:24:08', 1),
(1156, 'Service', 12, 'status is changed to 0 (12)', '2021-12-07 11:24:10', '2021-12-07 11:24:10', 1),
(1157, 'Service', 12, 'status is changed to 1 (12)', '2021-12-07 11:24:15', '2021-12-07 11:24:15', 1),
(1158, 'Single Pages', 12, 'status is changed to 0 (12)', '2021-12-07 11:24:22', '2021-12-07 11:24:22', 1),
(1159, 'Single Pages', 12, 'status is changed to 1 (12)', '2021-12-07 11:24:23', '2021-12-07 11:24:23', 1),
(1160, 'Slideshows', 15, 'status is changed to 0 (15)', '2021-12-07 11:24:30', '2021-12-07 11:24:30', 1),
(1161, 'Slideshows', 15, 'status is changed to 1 (15)', '2021-12-07 11:24:31', '2021-12-07 11:24:31', 1),
(1162, 'Service', 12, 'status is changed to 0 (12)', '2021-12-07 11:24:36', '2021-12-07 11:24:36', 1),
(1163, 'Service', 12, 'status is changed to 1 (12)', '2021-12-07 11:24:37', '2021-12-07 11:24:37', 1),
(1164, 'Subsidiaries and Associates', 19, 'status is changed to 0 (19)', '2021-12-07 11:24:52', '2021-12-07 11:24:52', 1),
(1165, 'Subsidiaries and Associates', 19, 'status is changed to 1 (19)', '2021-12-07 11:24:53', '2021-12-07 11:24:53', 1),
(1166, 'Subsidiaries and Associates', 20, 'Record is edited. (20)', '2021-12-07 11:25:17', '2021-12-07 11:25:17', 1),
(1167, 'News And Event', 6, 'Record is edited. (6)', '2021-12-07 11:25:38', '2021-12-07 11:25:38', 1),
(1168, 'Corporate Overview', 2, 'Record is edited. (2)', '2021-12-07 11:26:15', '2021-12-07 11:26:15', 1),
(1169, 'Quick links', 2, 'Record is edited. (2)', '2021-12-07 11:26:40', '2021-12-07 11:26:40', 1),
(1170, 'Quick links', 2, 'Record is edited. (2)', '2021-12-07 11:28:18', '2021-12-07 11:28:18', 1),
(1171, 'Quick links', 2, 'Record is edited. (2)', '2021-12-07 11:28:38', '2021-12-07 11:28:38', 1),
(1172, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-07 11:29:39', '2021-12-07 11:29:39', 1),
(1173, 'Roles', 3, 'A record is removed. (3)', '2021-12-07 11:29:59', '2021-12-07 11:29:59', 1),
(1174, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-08 10:59:33', '2021-12-08 10:59:33', 1),
(1175, 'Single Pages', 17, 'Record is edited. (17)', '2021-12-08 11:52:48', '2021-12-08 11:52:48', 1),
(1176, 'Single Pages', 17, 'Record is edited. (17)', '2021-12-08 11:53:28', '2021-12-08 11:53:28', 1),
(1177, 'Single Pages', 17, 'A record is removed. (17)', '2021-12-08 11:53:32', '2021-12-08 11:53:32', 1),
(1178, 'Slideshows', 19, 'A new record is added. (19)', '2021-12-08 11:54:11', '2021-12-08 11:54:11', 1),
(1179, 'Slideshows', 19, 'Record is edited. (19)', '2021-12-08 11:55:32', '2021-12-08 11:55:32', 1),
(1180, 'Slideshows', 19, 'A record is removed. (19)', '2021-12-08 11:56:11', '2021-12-08 11:56:11', 1),
(1181, 'Service', 20, 'Record is edited. (20)', '2021-12-08 12:00:51', '2021-12-08 12:00:51', 1),
(1182, 'Service', 20, 'Record is edited. (20)', '2021-12-08 12:01:08', '2021-12-08 12:01:08', 1),
(1183, 'Service', 20, 'A record is removed. (20)', '2021-12-08 12:01:39', '2021-12-08 12:01:39', 1),
(1184, 'Subsidiaries and Associates', 25, 'A new record is added. (25)', '2021-12-08 12:04:06', '2021-12-08 12:04:06', 1),
(1185, 'Subsidiaries and Associates', 26, 'A new record is added. (26)', '2021-12-08 12:04:21', '2021-12-08 12:04:21', 1),
(1186, 'Subsidiaries and Associates', 25, 'Record is edited. (25)', '2021-12-08 12:04:29', '2021-12-08 12:04:29', 1),
(1187, 'Subsidiaries and Associates', 26, 'Record is edited. (26)', '2021-12-08 12:05:10', '2021-12-08 12:05:10', 1),
(1188, 'Subsidiaries and Associates', 25, 'Record is edited. (25)', '2021-12-08 12:05:22', '2021-12-08 12:05:22', 1),
(1189, 'Subsidiaries and Associates', 26, 'Record is edited. (26)', '2021-12-08 12:05:32', '2021-12-08 12:05:32', 1),
(1190, 'Subsidiaries and Associates', 25, 'A record is removed. (25)', '2021-12-08 12:05:46', '2021-12-08 12:05:46', 1),
(1191, 'Subsidiaries and Associates', 26, 'A record is removed. (26)', '2021-12-08 12:05:50', '2021-12-08 12:05:50', 1),
(1192, 'News And Event', 11, 'Record is edited. (11)', '2021-12-08 12:06:48', '2021-12-08 12:06:48', 1),
(1193, 'News And Event', 11, 'Record is edited. (11)', '2021-12-08 12:07:11', '2021-12-08 12:07:11', 1),
(1194, 'News And Event', 11, 'A record is removed. (11)', '2021-12-08 12:08:07', '2021-12-08 12:08:07', 1),
(1195, 'Quick links', 6, 'A new record is added. (6)', '2021-12-08 12:20:13', '2021-12-08 12:20:13', 1),
(1196, 'Quick links', 6, 'Record is edited. (6)', '2021-12-08 12:20:57', '2021-12-08 12:20:57', 1),
(1197, 'Quick links', 6, 'A record is removed. (6)', '2021-12-08 12:21:07', '2021-12-08 12:21:07', 1),
(1198, 'Anuaal Reports', 5, 'A new record is added. (5)', '2021-12-08 12:22:40', '2021-12-08 12:22:40', 1),
(1199, 'Anuaal Reports', 5, 'Record is edited. (5)', '2021-12-08 12:23:00', '2021-12-08 12:23:00', 1),
(1200, 'Anuaal Reports', 5, 'A record is removed. (5)', '2021-12-08 12:23:34', '2021-12-08 12:23:34', 1),
(1201, 'Avalable Vacancies', 6, 'Record is edited. (6)', '2021-12-08 12:23:53', '2021-12-08 12:23:53', 1),
(1202, 'Avalable Vacancies', 6, 'Record is edited. (6)', '2021-12-08 12:24:02', '2021-12-08 12:24:02', 1),
(1203, 'Avalable Vacancies', 4, 'A record is removed. (4)', '2021-12-08 12:24:23', '2021-12-08 12:24:23', 1),
(1204, 'Quarterly Reports', 3, 'A new record is added. (3)', '2021-12-08 12:25:35', '2021-12-08 12:25:35', 1),
(1205, 'Quarterly Reports', 3, 'Record is edited. (3)', '2021-12-08 12:26:00', '2021-12-08 12:26:00', 1),
(1206, 'Quarterly Reports', 3, 'A record is removed. (3)', '2021-12-08 12:26:17', '2021-12-08 12:26:17', 1),
(1207, 'Disclosure', 2, 'A new record is added. (2)', '2021-12-08 12:26:59', '2021-12-08 12:26:59', 1),
(1208, 'Disclosure', 2, 'Record is edited. (2)', '2021-12-08 12:27:40', '2021-12-08 12:27:40', 1),
(1209, 'Disclosure', 2, 'A record is removed. (2)', '2021-12-08 12:27:45', '2021-12-08 12:27:45', 1),
(1210, 'Settings', 1, 'information updated', '2021-12-08 12:30:42', '2021-12-08 12:30:42', 1),
(1211, 'Settings', 1, 'information updated', '2021-12-08 12:31:30', '2021-12-08 12:31:30', 1),
(1212, 'Settings', 1, 'information updated', '2021-12-08 12:32:12', '2021-12-08 12:32:12', 1),
(1213, 'Admins', 6, 'A new record is added. (6)', '2021-12-08 12:34:25', '2021-12-08 12:34:25', 1),
(1214, 'Roles', 4, 'A new record is added. (4)', '2021-12-08 12:35:08', '2021-12-08 12:35:08', 1),
(1215, 'Admins', 6, 'Record is edited. (6)', '2021-12-08 12:35:23', '2021-12-08 12:35:23', 1),
(1216, 'Messages', 8, 'A record is removed. (8)', '2021-12-08 12:36:36', '2021-12-08 12:36:36', 1),
(1217, 'Privacy', 1, 'Record is edited. (1)', '2021-12-08 13:03:00', '2021-12-08 13:03:00', 1),
(1218, 'Resume', 13, 'A record is removed. (13)', '2021-12-08 13:06:00', '2021-12-08 13:06:00', 1),
(1219, 'Single Page Menu', 24, 'A new record is added. (24)', '2021-12-08 13:14:19', '2021-12-08 13:14:19', 1),
(1220, 'Quick links', 7, 'A new record is added. (7)', '2021-12-08 13:26:10', '2021-12-08 13:26:10', 1),
(1221, 'Settings', 1, 'information updated', '2021-12-08 13:30:19', '2021-12-08 13:30:19', 1),
(1222, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-08 13:39:27', '2021-12-08 13:39:27', 1),
(1223, 'Anuaal Reports', 2, 'A record is removed. (2)', '2021-12-08 13:59:10', '2021-12-08 13:59:10', 1),
(1224, 'Anuaal Reports', 3, 'A record is removed. (3)', '2021-12-08 13:59:14', '2021-12-08 13:59:14', 1),
(1225, 'Anuaal Reports', 4, 'A record is removed. (4)', '2021-12-08 13:59:18', '2021-12-08 13:59:18', 1),
(1226, 'Anuaal Reports', 6, 'A new record is added. (6)', '2021-12-08 13:59:44', '2021-12-08 13:59:44', 1),
(1227, 'Quarterly Reports', 1, 'Record is edited. (1)', '2021-12-08 14:00:55', '2021-12-08 14:00:55', 1),
(1228, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-09 09:11:30', '2021-12-09 09:11:30', 1),
(1229, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-09 11:53:11', '2021-12-09 11:53:11', 1),
(1230, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-09 23:22:42', '2021-12-09 23:22:42', 1),
(1231, 'Quick links', 2, 'A record is removed. (2)', '2021-12-10 00:20:54', '2021-12-10 00:20:54', 1),
(1232, 'Quick links', 7, 'A record is removed. (7)', '2021-12-10 00:20:58', '2021-12-10 00:20:58', 1),
(1233, 'Quick links', 8, 'A new record is added. (8)', '2021-12-10 00:21:17', '2021-12-10 00:21:17', 1),
(1234, 'Quick links', 9, 'A new record is added. (9)', '2021-12-10 00:21:26', '2021-12-10 00:21:26', 1),
(1235, 'Quick links', 10, 'A new record is added. (10)', '2021-12-10 00:21:34', '2021-12-10 00:21:34', 1),
(1236, 'Quick links', 11, 'A new record is added. (11)', '2021-12-10 00:21:47', '2021-12-10 00:21:47', 1),
(1237, 'Quick links', 12, 'A new record is added. (12)', '2021-12-10 00:22:00', '2021-12-10 00:22:00', 1),
(1238, 'Quick links', 13, 'A new record is added. (13)', '2021-12-10 00:23:09', '2021-12-10 00:23:09', 1),
(1239, 'Quick links', 14, 'A new record is added. (14)', '2021-12-10 00:23:18', '2021-12-10 00:23:18', 1),
(1240, 'Subjects', 2, 'A new record is added. (2)', '2021-12-10 00:32:24', '2021-12-10 00:32:24', 1),
(1241, 'Subjects', 1, 'status is changed to 0 (1)', '2021-12-10 00:32:27', '2021-12-10 00:32:27', 1),
(1242, 'Subjects', 1, 'status is changed to 1 (1)', '2021-12-10 00:32:28', '2021-12-10 00:32:28', 1),
(1243, 'Messages', 9, 'A record is removed. (9)', '2021-12-10 00:42:57', '2021-12-10 00:42:57', 1),
(1244, 'Messages', 10, 'A record is removed. (10)', '2021-12-10 00:43:05', '2021-12-10 00:43:05', 1),
(1245, 'Messages', 11, 'A record is removed. (11)', '2021-12-10 00:43:25', '2021-12-10 00:43:25', 1),
(1246, 'Messages', 12, 'A record is removed. (12)', '2021-12-10 00:43:29', '2021-12-10 00:43:29', 1),
(1247, 'Messages', 13, 'A record is removed. (13)', '2021-12-10 00:43:35', '2021-12-10 00:43:35', 1),
(1248, 'Messages', 14, 'A record is removed. (14)', '2021-12-10 00:43:39', '2021-12-10 00:43:39', 1),
(1249, 'Messages', 15, 'A record is removed. (15)', '2021-12-10 00:43:44', '2021-12-10 00:43:44', 1),
(1250, 'Messages', 16, 'A record is removed. (16)', '2021-12-10 00:43:48', '2021-12-10 00:43:48', 1),
(1251, 'Messages', 17, 'A record is removed. (17)', '2021-12-10 00:43:51', '2021-12-10 00:43:51', 1),
(1252, 'Messages', 18, 'A record is removed. (18)', '2021-12-10 00:43:55', '2021-12-10 00:43:55', 1),
(1253, 'Messages', 19, 'A record is removed. (19)', '2021-12-10 00:43:59', '2021-12-10 00:43:59', 1),
(1254, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-10 16:31:10', '2021-12-10 16:31:10', 1),
(1255, 'News And Event', 12, 'Record is edited. (12)', '2021-12-10 18:34:34', '2021-12-10 18:34:34', 1),
(1256, 'News And Event', 12, 'Record is edited. (12)', '2021-12-10 18:35:07', '2021-12-10 18:35:07', 1),
(1257, 'News And Event', 12, 'A record is removed. (12)', '2021-12-10 18:35:12', '2021-12-10 18:35:12', 1),
(1258, 'News And Event', 6, 'Record is edited. (6)', '2021-12-10 18:36:24', '2021-12-10 18:36:24', 1),
(1259, 'News And Event', 6, 'Record is edited. (6)', '2021-12-10 18:37:11', '2021-12-10 18:37:11', 1),
(1260, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-11 00:07:30', '2021-12-11 00:07:30', 1),
(1261, 'Single Pages', 14, 'Record is edited. (14)', '2021-12-11 00:08:53', '2021-12-11 00:08:53', 1),
(1262, 'Single Pages', 14, 'Record is edited. (14)', '2021-12-11 00:09:54', '2021-12-11 00:09:54', 1),
(1263, 'Service', 21, 'Record is edited. (21)', '2021-12-11 00:27:46', '2021-12-11 00:27:46', 1),
(1264, 'Service', 21, 'A record is removed. (21)', '2021-12-11 00:28:30', '2021-12-11 00:28:30', 1),
(1265, 'Service', 14, 'Record is edited. (14)', '2021-12-11 00:29:33', '2021-12-11 00:29:33', 1),
(1266, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-11 12:39:51', '2021-12-11 12:39:51', 1),
(1267, 'Notify Emails', 6, 'A new record is added. (6)', '2021-12-11 14:20:41', '2021-12-11 14:20:41', 1),
(1268, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-12 00:03:17', '2021-12-12 00:03:17', 1),
(1269, 'Single Pages', 18, 'Record is edited. (18)', '2021-12-12 00:03:34', '2021-12-12 00:03:34', 1),
(1270, 'Single Pages', 18, 'Record is edited. (18)', '2021-12-12 00:03:47', '2021-12-12 00:03:47', 1),
(1271, 'Single Pages', 18, 'status is changed to 0 (18)', '2021-12-12 00:03:49', '2021-12-12 00:03:49', 1),
(1272, 'Single Pages', 18, 'status is changed to 1 (18)', '2021-12-12 00:03:50', '2021-12-12 00:03:50', 1),
(1273, 'Single Pages', 18, 'A record is removed. (18)', '2021-12-12 00:03:53', '2021-12-12 00:03:53', 1),
(1274, 'Slideshows', 20, 'A new record is added. (20)', '2021-12-12 00:04:16', '2021-12-12 00:04:16', 1),
(1275, 'Slideshows', 20, 'Record is edited. (20)', '2021-12-12 00:04:35', '2021-12-12 00:04:35', 1),
(1276, 'Slideshows', 20, 'Record is edited. (20)', '2021-12-12 00:04:41', '2021-12-12 00:04:41', 1),
(1277, 'Slideshows', 20, 'A record is removed. (20)', '2021-12-12 00:04:45', '2021-12-12 00:04:45', 1),
(1278, 'Service', 22, 'Record is edited. (22)', '2021-12-12 00:05:05', '2021-12-12 00:05:05', 1),
(1279, 'Service', 22, 'Record is edited. (22)', '2021-12-12 00:07:25', '2021-12-12 00:07:25', 1),
(1280, 'Service', 22, 'Record is edited. (22)', '2021-12-12 00:07:37', '2021-12-12 00:07:37', 1),
(1281, 'Service', 22, 'A record is removed. (22)', '2021-12-12 00:07:41', '2021-12-12 00:07:41', 1),
(1282, 'Service', 14, 'status is changed to 0 (14)', '2021-12-12 00:07:43', '2021-12-12 00:07:43', 1),
(1283, 'Service', 14, 'status is changed to 1 (14)', '2021-12-12 00:07:44', '2021-12-12 00:07:44', 1),
(1284, 'Subsidiaries and Associates', 27, 'A new record is added. (27)', '2021-12-12 00:19:24', '2021-12-12 00:19:24', 1),
(1285, 'Subsidiaries and Associates', 27, 'Record is edited. (27)', '2021-12-12 00:19:45', '2021-12-12 00:19:45', 1),
(1286, 'Subsidiaries and Associates', 27, 'status is changed to 0 (27)', '2021-12-12 00:19:47', '2021-12-12 00:19:47', 1),
(1287, 'Subsidiaries and Associates', 27, 'A record is removed. (27)', '2021-12-12 00:19:50', '2021-12-12 00:19:50', 1),
(1288, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-12 09:12:01', '2021-12-12 09:12:01', 1),
(1289, 'News And Event', 13, 'Record is edited. (13)', '2021-12-12 09:13:44', '2021-12-12 09:13:44', 1),
(1290, 'News And Event', 13, 'Record is edited. (13)', '2021-12-12 09:14:05', '2021-12-12 09:14:05', 1),
(1291, 'News And Event', 13, 'A record is removed. (13)', '2021-12-12 09:14:11', '2021-12-12 09:14:11', 1),
(1292, 'Anuaal Reports', 6, 'A record is removed. (6)', '2021-12-12 09:36:04', '2021-12-12 09:36:04', 1),
(1293, 'Anuaal Reports', 7, 'A new record is added. (7)', '2021-12-12 09:36:47', '2021-12-12 09:36:47', 1),
(1294, 'Anuaal Reports', 7, 'A record is removed. (7)', '2021-12-12 09:43:23', '2021-12-12 09:43:23', 1),
(1295, 'Quarterly Reports', 4, 'A new record is added. (4)', '2021-12-12 09:44:56', '2021-12-12 09:44:56', 1),
(1296, 'Quarterly Reports', 4, 'A record is removed. (4)', '2021-12-12 09:45:12', '2021-12-12 09:45:12', 1),
(1297, 'Quarterly Reports', 5, 'A new record is added. (5)', '2021-12-12 09:45:43', '2021-12-12 09:45:43', 1),
(1298, 'Anuaal Reports', 8, 'A new record is added. (8)', '2021-12-12 09:46:27', '2021-12-12 09:46:27', 1),
(1299, 'Disclosure', 3, 'A new record is added. (3)', '2021-12-12 09:52:29', '2021-12-12 09:52:29', 1),
(1300, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-12 10:10:26', '2021-12-12 10:10:26', 1),
(1301, 'Disclosure', 3, 'A record is removed. (3)', '2021-12-12 10:19:12', '2021-12-12 10:19:12', 1),
(1302, 'Disclosure', 1, 'Record is edited. (1)', '2021-12-12 10:31:13', '2021-12-12 10:31:13', 1),
(1303, 'Slideshows', 15, 'Record is edited. (15)', '2021-12-12 10:42:01', '2021-12-12 10:42:01', 1),
(1304, 'Service', 12, 'Record is edited. (12)', '2021-12-12 10:46:08', '2021-12-12 10:46:08', 1),
(1305, 'Service', 13, 'Record is edited. (13)', '2021-12-12 10:47:32', '2021-12-12 10:47:32', 1),
(1306, 'Service', 14, 'Record is edited. (14)', '2021-12-12 10:48:16', '2021-12-12 10:48:16', 1),
(1307, 'Subsidiaries and Associates', 18, 'Record is edited. (18)', '2021-12-12 10:53:33', '2021-12-12 10:53:33', 1),
(1308, 'Subsidiaries and Associates', 23, 'A record is removed. (23)', '2021-12-12 10:54:32', '2021-12-12 10:54:32', 1),
(1309, 'News And Event', 6, 'Record is edited. (6)', '2021-12-12 10:58:00', '2021-12-12 10:58:00', 1),
(1310, 'News And Event', 8, 'A record is removed. (8)', '2021-12-12 10:58:20', '2021-12-12 10:58:20', 1),
(1311, 'News And Event', 7, 'Record is edited. (7)', '2021-12-12 11:00:39', '2021-12-12 11:00:39', 1),
(1312, 'News And Event', 6, 'Record is edited. (6)', '2021-12-12 11:00:50', '2021-12-12 11:00:50', 1),
(1313, 'Corporate Overview', 2, 'Record is edited. (2)', '2021-12-12 11:09:27', '2021-12-12 11:09:27', 1),
(1314, 'Anuaal Reports', 8, 'A record is removed. (8)', '2021-12-12 11:11:57', '2021-12-12 11:11:57', 1),
(1315, 'Anuaal Reports', 9, 'A new record is added. (9)', '2021-12-12 11:13:21', '2021-12-12 11:13:21', 1),
(1316, 'Subsidiaries and Associates', 18, 'Record is edited. (18)', '2021-12-12 11:15:09', '2021-12-12 11:15:09', 1),
(1317, 'Anuaal Reports', 10, 'A new record is added. (10)', '2021-12-12 11:17:23', '2021-12-12 11:17:23', 1),
(1318, 'Subsidiaries and Associates', 18, 'Record is edited. (18)', '2021-12-12 11:25:46', '2021-12-12 11:25:46', 1),
(1319, 'Subsidiaries and Associates', 28, 'A new record is added. (28)', '2021-12-12 11:27:02', '2021-12-12 11:27:02', 1),
(1320, 'Anuaal Reports', 11, 'A new record is added. (11)', '2021-12-12 11:27:38', '2021-12-12 11:27:38', 1),
(1321, 'Anuaal Reports', 12, 'A new record is added. (12)', '2021-12-12 12:00:07', '2021-12-12 12:00:07', 1),
(1322, 'Anuaal Reports', 13, 'A new record is added. (13)', '2021-12-12 12:05:16', '2021-12-12 12:05:16', 1),
(1323, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-12-12 12:17:18', '2021-12-12 12:17:18', 1),
(1324, 'Single Page Menu', 4, 'Record is edited. (4)', '2021-12-12 12:18:22', '2021-12-12 12:18:22', 1),
(1325, 'Single Page Menu', 5, 'Record is edited. (5)', '2021-12-12 12:23:10', '2021-12-12 12:23:10', 1),
(1326, 'Single Page Menu', 3, 'Record is edited. (3)', '2021-12-12 12:24:49', '2021-12-12 12:24:49', 1),
(1327, 'Single Page Menu', 4, 'Record is edited. (4)', '2021-12-12 12:27:02', '2021-12-12 12:27:02', 1),
(1328, 'Single Page Menu', 8, 'Record is edited. (8)', '2021-12-12 12:35:24', '2021-12-12 12:35:24', 1),
(1329, 'Single Page Menu', 9, 'Record is edited. (9)', '2021-12-12 12:38:18', '2021-12-12 12:38:18', 1),
(1330, 'Single Page Menu', 9, 'Record is edited. (9)', '2021-12-12 12:39:27', '2021-12-12 12:39:27', 1),
(1331, 'Single Page Menu', 10, 'Record is edited. (10)', '2021-12-12 12:44:37', '2021-12-12 12:44:37', 1),
(1332, 'Single Page Menu', 13, 'Record is edited. (13)', '2021-12-12 13:03:31', '2021-12-12 13:03:31', 1),
(1333, 'Single Page Menu', 16, 'Record is edited. (16)', '2021-12-12 13:11:31', '2021-12-12 13:11:31', 1),
(1334, 'Single Page Menu', 18, 'Record is edited. (18)', '2021-12-12 13:15:14', '2021-12-12 13:15:14', 1),
(1335, 'Single Page Menu', 21, 'Record is edited. (21)', '2021-12-12 13:19:42', '2021-12-12 13:19:42', 1),
(1336, 'Disclosure', 1, 'A record is removed. (1)', '2021-12-12 13:21:06', '2021-12-12 13:21:06', 1),
(1337, 'Disclosure', 4, 'A new record is added. (4)', '2021-12-12 13:23:44', '2021-12-12 13:23:44', 1),
(1338, 'Disclosure', 5, 'A new record is added. (5)', '2021-12-12 13:30:29', '2021-12-12 13:30:29', 1),
(1339, 'Disclosure', 6, 'A new record is added. (6)', '2021-12-12 15:22:58', '2021-12-12 15:22:58', 1),
(1340, 'Disclosure', 7, 'A new record is added. (7)', '2021-12-12 15:24:40', '2021-12-12 15:24:40', 1),
(1341, 'Disclosure', 7, 'A record is removed. (7)', '2021-12-12 15:29:51', '2021-12-12 15:29:51', 1),
(1342, 'Disclosure', 8, 'A new record is added. (8)', '2021-12-12 15:32:51', '2021-12-12 15:32:51', 1),
(1343, 'Disclosure', 9, 'A new record is added. (9)', '2021-12-12 15:37:39', '2021-12-12 15:37:39', 1),
(1344, 'Disclosure', 10, 'A new record is added. (10)', '2021-12-12 15:45:02', '2021-12-12 15:45:02', 1),
(1345, 'Disclosure', 11, 'A new record is added. (11)', '2021-12-12 15:47:30', '2021-12-12 15:47:30', 1),
(1346, 'Disclosure', 12, 'A new record is added. (12)', '2021-12-12 15:53:35', '2021-12-12 15:53:35', 1),
(1347, 'Disclosure', 12, 'Record is edited. (12)', '2021-12-12 15:54:06', '2021-12-12 15:54:06', 1),
(1348, 'Disclosure', 13, 'A new record is added. (13)', '2021-12-12 16:00:06', '2021-12-12 16:00:06', 1),
(1349, 'Disclosure', 14, 'A new record is added. (14)', '2021-12-12 16:03:11', '2021-12-12 16:03:11', 1),
(1350, 'Disclosure', 15, 'A new record is added. (15)', '2021-12-12 16:06:32', '2021-12-12 16:06:32', 1),
(1351, 'Disclosure', 15, 'Record is edited. (15)', '2021-12-12 16:07:14', '2021-12-12 16:07:14', 1),
(1352, 'Disclosure', 16, 'A new record is added. (16)', '2021-12-12 16:18:27', '2021-12-12 16:18:27', 1),
(1353, 'Disclosure', 17, 'A new record is added. (17)', '2021-12-12 16:21:56', '2021-12-12 16:21:56', 1),
(1354, 'Disclosure', 17, 'Record is edited. (17)', '2021-12-12 16:22:14', '2021-12-12 16:22:14', 1),
(1355, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-14 10:47:00', '2021-12-14 10:47:00', 1),
(1356, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-14 13:42:48', '2021-12-14 13:42:48', 1),
(1357, 'Disclosure', 4, 'Record is edited. (4)', '2021-12-14 13:45:19', '2021-12-14 13:45:19', 1),
(1358, 'Disclosure', 4, 'Record is edited. (4)', '2021-12-14 13:54:04', '2021-12-14 13:54:04', 1),
(1359, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-14 15:26:50', '2021-12-14 15:26:50', 1),
(1360, 'Disclosure', 18, 'A new record is added. (18)', '2021-12-14 15:38:53', '2021-12-14 15:38:53', 1),
(1361, 'Disclosure', 19, 'A new record is added. (19)', '2021-12-14 15:42:14', '2021-12-14 15:42:14', 1),
(1362, 'Disclosure', 20, 'A new record is added. (20)', '2021-12-14 15:43:51', '2021-12-14 15:43:51', 1),
(1363, 'Disclosure', 21, 'A new record is added. (21)', '2021-12-14 15:48:59', '2021-12-14 15:48:59', 1),
(1364, 'Disclosure', 22, 'A new record is added. (22)', '2021-12-14 15:51:00', '2021-12-14 15:51:00', 1),
(1365, 'Disclosure', 22, 'Record is edited. (22)', '2021-12-14 15:52:22', '2021-12-14 15:52:22', 1),
(1366, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-14 15:52:49', '2021-12-14 15:52:49', 1),
(1367, 'Disclosure', 6, 'Record is edited. (6)', '2021-12-14 15:55:34', '2021-12-14 15:55:34', 1),
(1368, 'Disclosure', 23, 'A new record is added. (23)', '2021-12-14 16:01:30', '2021-12-14 16:01:30', 1),
(1369, 'Disclosure', 24, 'A new record is added. (24)', '2021-12-14 16:04:41', '2021-12-14 16:04:41', 1),
(1370, 'Disclosure', 25, 'A new record is added. (25)', '2021-12-14 16:07:04', '2021-12-14 16:07:04', 1),
(1371, 'Disclosure', 26, 'A new record is added. (26)', '2021-12-14 16:09:45', '2021-12-14 16:09:45', 1),
(1372, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-15 09:44:39', '2021-12-15 09:44:39', 1),
(1373, 'Disclosure', 27, 'A new record is added. (27)', '2021-12-15 09:51:28', '2021-12-15 09:51:28', 1),
(1374, 'Disclosure', 28, 'A new record is added. (28)', '2021-12-15 09:53:38', '2021-12-15 09:53:38', 1),
(1375, 'Disclosure', 29, 'A new record is added. (29)', '2021-12-15 09:56:45', '2021-12-15 09:56:45', 1),
(1376, 'Disclosure', 30, 'A new record is added. (30)', '2021-12-15 09:59:38', '2021-12-15 09:59:38', 1),
(1377, 'Disclosure', 31, 'A new record is added. (31)', '2021-12-15 10:02:53', '2021-12-15 10:02:53', 1),
(1378, 'Disclosure', 32, 'A new record is added. (32)', '2021-12-15 10:07:17', '2021-12-15 10:07:17', 1),
(1379, 'Disclosure', 33, 'A new record is added. (33)', '2021-12-15 10:09:38', '2021-12-15 10:09:38', 1),
(1380, 'Disclosure', 34, 'A new record is added. (34)', '2021-12-15 10:13:02', '2021-12-15 10:13:02', 1),
(1381, 'Disclosure', 35, 'A new record is added. (35)', '2021-12-15 10:22:34', '2021-12-15 10:22:34', 1),
(1382, 'Disclosure', 36, 'A new record is added. (36)', '2021-12-15 10:29:34', '2021-12-15 10:29:34', 1),
(1383, 'Disclosure', 37, 'A new record is added. (37)', '2021-12-15 10:33:45', '2021-12-15 10:33:45', 1),
(1384, 'Disclosure', 38, 'A new record is added. (38)', '2021-12-15 10:37:38', '2021-12-15 10:37:38', 1),
(1385, 'Disclosure', 39, 'A new record is added. (39)', '2021-12-15 10:40:10', '2021-12-15 10:40:10', 1),
(1386, 'Disclosure', 40, 'A new record is added. (40)', '2021-12-15 10:49:33', '2021-12-15 10:49:33', 1),
(1387, 'Disclosure', 41, 'A new record is added. (41)', '2021-12-15 10:52:09', '2021-12-15 10:52:09', 1),
(1388, 'Disclosure', 42, 'A new record is added. (42)', '2021-12-15 10:55:34', '2021-12-15 10:55:34', 1),
(1389, 'Disclosure', 43, 'A new record is added. (43)', '2021-12-15 10:59:33', '2021-12-15 10:59:33', 1),
(1390, 'Disclosure', 44, 'A new record is added. (44)', '2021-12-15 11:01:18', '2021-12-15 11:01:18', 1),
(1391, 'Disclosure', 45, 'A new record is added. (45)', '2021-12-15 11:04:33', '2021-12-15 11:04:33', 1),
(1392, 'Disclosure', 46, 'A new record is added. (46)', '2021-12-15 11:08:29', '2021-12-15 11:08:29', 1),
(1393, 'Disclosure', 47, 'A new record is added. (47)', '2021-12-15 12:05:08', '2021-12-15 12:05:08', 1),
(1394, 'Disclosure', 48, 'A new record is added. (48)', '2021-12-15 12:32:32', '2021-12-15 12:32:32', 1),
(1395, 'Disclosure', 49, 'A new record is added. (49)', '2021-12-15 14:07:36', '2021-12-15 14:07:36', 1),
(1396, 'Disclosure', 50, 'A new record is added. (50)', '2021-12-15 14:12:08', '2021-12-15 14:12:08', 1),
(1397, 'Disclosure', 51, 'A new record is added. (51)', '2021-12-15 14:15:34', '2021-12-15 14:15:34', 1),
(1398, 'Disclosure', 52, 'A new record is added. (52)', '2021-12-15 14:19:35', '2021-12-15 14:19:35', 1),
(1399, 'Disclosure', 53, 'A new record is added. (53)', '2021-12-15 14:24:20', '2021-12-15 14:24:20', 1),
(1400, 'Disclosure', 54, 'A new record is added. (54)', '2021-12-15 14:29:09', '2021-12-15 14:29:09', 1),
(1401, 'Disclosure', 55, 'A new record is added. (55)', '2021-12-15 14:32:42', '2021-12-15 14:32:42', 1),
(1402, 'Disclosure', 56, 'A new record is added. (56)', '2021-12-15 14:35:54', '2021-12-15 14:35:54', 1),
(1403, 'Disclosure', 57, 'A new record is added. (57)', '2021-12-15 14:46:09', '2021-12-15 14:46:09', 1),
(1404, 'Disclosure', 58, 'A new record is added. (58)', '2021-12-15 14:50:58', '2021-12-15 14:50:58', 1),
(1405, 'Disclosure', 59, 'A new record is added. (59)', '2021-12-15 14:59:06', '2021-12-15 14:59:06', 1),
(1406, 'Disclosure', 60, 'A new record is added. (60)', '2021-12-15 15:11:25', '2021-12-15 15:11:25', 1),
(1407, 'Disclosure', 61, 'A new record is added. (61)', '2021-12-15 15:14:00', '2021-12-15 15:14:00', 1),
(1408, 'Disclosure', 62, 'A new record is added. (62)', '2021-12-15 15:27:27', '2021-12-15 15:27:27', 1),
(1409, 'Disclosure', 63, 'A new record is added. (63)', '2021-12-15 15:30:08', '2021-12-15 15:30:08', 1),
(1410, 'Disclosure', 64, 'A new record is added. (64)', '2021-12-15 15:37:05', '2021-12-15 15:37:05', 1),
(1411, 'Disclosure', 65, 'A new record is added. (65)', '2021-12-15 15:40:50', '2021-12-15 15:40:50', 1),
(1412, 'Disclosure', 66, 'A new record is added. (66)', '2021-12-15 15:43:23', '2021-12-15 15:43:23', 1),
(1413, 'Disclosure', 67, 'A new record is added. (67)', '2021-12-15 15:46:11', '2021-12-15 15:46:11', 1),
(1414, 'Disclosure', 68, 'A new record is added. (68)', '2021-12-15 15:49:19', '2021-12-15 15:49:19', 1),
(1415, 'Disclosure', 69, 'A new record is added. (69)', '2021-12-15 15:58:19', '2021-12-15 15:58:19', 1),
(1416, 'Disclosure', 70, 'A new record is added. (70)', '2021-12-15 16:00:22', '2021-12-15 16:00:22', 1),
(1417, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-16 10:19:10', '2021-12-16 10:19:10', 1),
(1418, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-16 10:30:17', '2021-12-16 10:30:17', 1),
(1419, 'Single Page Menu', 5, 'Record is edited. (5)', '2021-12-16 10:32:06', '2021-12-16 10:32:06', 1),
(1420, 'Disclosure', 5, 'Record is edited. (5)', '2021-12-16 10:49:20', '2021-12-16 10:49:20', 1),
(1421, 'Disclosure', 14, 'Record is edited. (14)', '2021-12-16 10:58:04', '2021-12-16 10:58:04', 1),
(1422, 'Disclosure', 31, 'Record is edited. (31)', '2021-12-16 11:20:23', '2021-12-16 11:20:23', 1),
(1423, 'Disclosure', 71, 'A new record is added. (71)', '2021-12-16 11:24:52', '2021-12-16 11:24:52', 1),
(1424, 'Disclosure', 64, 'Record is edited. (64)', '2021-12-16 11:37:51', '2021-12-16 11:37:51', 1),
(1425, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-17 00:24:49', '2021-12-17 00:24:49', 1),
(1426, 'login', 1, 'Administrator is logged in to Admin Panel.', '2021-12-28 15:39:50', '2021-12-28 15:39:50', 1),
(1427, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2022-02-06 13:47:17', '2022-02-06 13:47:17', 1),
(1428, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2022-02-06 13:48:44', '2022-02-06 13:48:44', 1),
(1429, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-06 13:49:00', '2022-02-06 13:49:00', 1),
(1430, 'Single Pages', 19, 'Record is edited. (19)', '2022-02-06 13:57:43', '2022-02-06 13:57:43', 1),
(1431, 'Single Pages', 19, 'Record is edited. (19)', '2022-02-06 14:30:45', '2022-02-06 14:30:45', 1),
(1432, 'Single Pages', 19, 'A record is removed. (19)', '2022-02-06 14:30:51', '2022-02-06 14:30:51', 1),
(1433, 'Slideshows', 21, 'A new record is added. (21)', '2022-02-06 14:31:18', '2022-02-06 14:31:18', 1),
(1434, 'Slideshows', 21, 'Record is edited. (21)', '2022-02-06 14:31:39', '2022-02-06 14:31:39', 1),
(1435, 'Slideshows', 21, 'A record is removed. (21)', '2022-02-06 14:31:45', '2022-02-06 14:31:45', 1),
(1436, 'Service', 23, 'Record is edited. (23)', '2022-02-06 14:32:06', '2022-02-06 14:32:06', 1),
(1437, 'Service', 23, 'Record is edited. (23)', '2022-02-06 14:32:27', '2022-02-06 14:32:27', 1),
(1438, 'Service', 23, 'status is changed to 0 (23)', '2022-02-06 14:32:36', '2022-02-06 14:32:36', 1),
(1439, 'Service', 23, 'status is changed to 1 (23)', '2022-02-06 14:32:38', '2022-02-06 14:32:38', 1),
(1440, 'Service', 23, 'A record is removed. (23)', '2022-02-06 14:32:41', '2022-02-06 14:32:41', 1),
(1441, 'Subsidiaries and Associates', 29, 'A new record is added. (29)', '2022-02-06 14:32:59', '2022-02-06 14:32:59', 1),
(1442, 'Subsidiaries and Associates', 29, 'Record is edited. (29)', '2022-02-06 14:33:07', '2022-02-06 14:33:07', 1),
(1443, 'Subsidiaries and Associates', 29, 'Record is edited. (29)', '2022-02-06 14:33:31', '2022-02-06 14:33:31', 1),
(1444, 'Subsidiaries and Associates', 29, 'Record is edited. (29)', '2022-02-06 14:35:36', '2022-02-06 14:35:36', 1),
(1445, 'Subsidiaries and Associates', 29, 'Record is edited. (29)', '2022-02-06 14:35:42', '2022-02-06 14:35:42', 1),
(1446, 'Subsidiaries and Associates', 29, 'A record is removed. (29)', '2022-02-06 14:35:47', '2022-02-06 14:35:47', 1),
(1447, 'News And Event', 14, 'Record is edited. (14)', '2022-02-06 14:55:22', '2022-02-06 14:55:22', 1),
(1448, 'News And Event', 14, 'Record is edited. (14)', '2022-02-06 14:56:02', '2022-02-06 14:56:02', 1),
(1449, 'News And Event', 14, 'Record is edited. (14)', '2022-02-06 14:56:15', '2022-02-06 14:56:15', 1),
(1450, 'News And Event', 14, 'A record is removed. (14)', '2022-02-06 14:56:19', '2022-02-06 14:56:19', 1),
(1451, 'Single Page Menu', 16, 'Record is edited. (16)', '2022-02-06 14:59:11', '2022-02-06 14:59:11', 1),
(1452, 'Single Page Menu', 17, 'Record is edited. (17)', '2022-02-06 14:59:45', '2022-02-06 14:59:45', 1),
(1453, 'Single Page Menu', 18, 'Record is edited. (18)', '2022-02-06 15:00:05', '2022-02-06 15:00:05', 1),
(1454, 'Single Page Menu', 21, 'Record is edited. (21)', '2022-02-06 15:00:23', '2022-02-06 15:00:23', 1),
(1455, 'Single Page Menu', 23, 'Record is edited. (23)', '2022-02-06 15:00:37', '2022-02-06 15:00:37', 1),
(1456, 'Corporate Overview', 2, 'Record is edited. (2)', '2022-02-06 15:01:42', '2022-02-06 15:01:42', 1),
(1457, 'Anuaal Reports', 14, 'A new record is added. (14)', '2022-02-06 15:15:30', '2022-02-06 15:15:30', 1),
(1458, 'Anuaal Reports', 14, 'Record is edited. (14)', '2022-02-06 15:15:50', '2022-02-06 15:15:50', 1),
(1459, 'Anuaal Reports', 14, 'A record is removed. (14)', '2022-02-06 15:17:42', '2022-02-06 15:17:42', 1),
(1460, 'Anuaal Reports', 15, 'A new record is added. (15)', '2022-02-06 15:24:14', '2022-02-06 15:24:14', 1),
(1461, 'Anuaal Reports', 15, 'A record is removed. (15)', '2022-02-06 15:24:34', '2022-02-06 15:24:34', 1),
(1462, 'Anuaal Reports', 16, 'A new record is added. (16)', '2022-02-06 15:28:55', '2022-02-06 15:28:55', 1),
(1463, 'Anuaal Reports', 16, 'A record is removed. (16)', '2022-02-06 15:29:02', '2022-02-06 15:29:02', 1),
(1464, 'Avalable Vacancies', 7, 'Record is edited. (7)', '2022-02-06 15:29:17', '2022-02-06 15:29:17', 1),
(1465, 'Avalable Vacancies', 6, 'Record is edited. (6)', '2022-02-06 15:29:31', '2022-02-06 15:29:31', 1),
(1466, 'Avalable Vacancies', 7, 'Record is edited. (7)', '2022-02-06 15:29:45', '2022-02-06 15:29:45', 1),
(1467, 'Anuaal Reports', 9, 'status is changed to 0 (9)', '2022-02-06 15:33:33', '2022-02-06 15:33:33', 1),
(1468, 'Anuaal Reports', 9, 'status is changed to 1 (9)', '2022-02-06 15:33:34', '2022-02-06 15:33:34', 1);
INSERT INTO `gwc_logs` (`id`, `key_name`, `key_id`, `message`, `created_at`, `updated_at`, `created_by`) VALUES
(1469, 'Anuaal Reports', 9, 'status is changed to 0 (9)', '2022-02-06 15:33:42', '2022-02-06 15:33:42', 1),
(1470, 'Anuaal Reports', 12, 'status is changed to 0 (12)', '2022-02-06 15:33:47', '2022-02-06 15:33:47', 1),
(1471, 'Anuaal Reports', 12, 'status is changed to 1 (12)', '2022-02-06 15:33:51', '2022-02-06 15:33:51', 1),
(1472, 'Anuaal Reports', 9, 'status is changed to 1 (9)', '2022-02-06 15:33:55', '2022-02-06 15:33:55', 1),
(1473, 'Quarterly Reports', 5, 'status is changed to 0 (5)', '2022-02-06 15:34:04', '2022-02-06 15:34:04', 1),
(1474, 'Quarterly Reports', 5, 'status is changed to 1 (5)', '2022-02-06 15:34:09', '2022-02-06 15:34:09', 1),
(1475, 'Quarterly Reports', 6, 'A new record is added. (6)', '2022-02-06 15:37:38', '2022-02-06 15:37:38', 1),
(1476, 'Quarterly Reports', 6, 'Record is edited. (6)', '2022-02-06 15:37:48', '2022-02-06 15:37:48', 1),
(1477, 'Disclosure', 72, 'A new record is added. (72)', '2022-02-06 15:39:28', '2022-02-06 15:39:28', 1),
(1478, 'Disclosure', 72, 'A record is removed. (72)', '2022-02-06 15:40:11', '2022-02-06 15:40:11', 1),
(1479, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-07 11:59:27', '2022-02-07 11:59:27', 1),
(1480, 'Settings', 1, 'information updated', '2022-02-07 12:00:25', '2022-02-07 12:00:25', 1),
(1481, 'logout', 1, 'Administrator is logged out from Admin Panel.', '2022-02-07 12:00:35', '2022-02-07 12:00:35', 1),
(1482, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-07 12:27:29', '2022-02-07 12:27:29', 1),
(1483, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-08 09:01:55', '2022-02-08 09:01:55', 1),
(1484, 'News And Event', 7, 'Record is edited. (7)', '2022-02-08 09:03:24', '2022-02-08 09:03:24', 1),
(1485, 'Single Page Menu', 6, 'Record is edited. (6)', '2022-02-08 09:09:47', '2022-02-08 09:09:47', 1),
(1486, 'Single Page Menu', 7, 'Record is edited. (7)', '2022-02-08 09:10:09', '2022-02-08 09:10:09', 1),
(1487, 'Single Page Menu', 8, 'Record is edited. (8)', '2022-02-08 09:10:46', '2022-02-08 09:10:46', 1),
(1488, 'Single Page Menu', 23, 'Record is edited. (23)', '2022-02-08 09:33:57', '2022-02-08 09:33:57', 1),
(1489, 'Single Page Menu', 22, 'Record is edited. (22)', '2022-02-08 09:34:36', '2022-02-08 09:34:36', 1),
(1490, 'Single Page Menu', 20, 'Record is edited. (20)', '2022-02-08 09:35:24', '2022-02-08 09:35:24', 1),
(1491, 'Single Page Menu', 19, 'Record is edited. (19)', '2022-02-08 09:35:41', '2022-02-08 09:35:41', 1),
(1492, 'Single Page Menu', 17, 'Record is edited. (17)', '2022-02-08 09:36:46', '2022-02-08 09:36:46', 1),
(1493, 'Single Page Menu', 15, 'Record is edited. (15)', '2022-02-08 09:37:30', '2022-02-08 09:37:30', 1),
(1494, 'Single Page Menu', 14, 'Record is edited. (14)', '2022-02-08 09:38:28', '2022-02-08 09:38:28', 1),
(1495, 'Single Page Menu', 12, 'Record is edited. (12)', '2022-02-08 09:42:33', '2022-02-08 09:42:33', 1),
(1496, 'Single Page Menu', 11, 'Record is edited. (11)', '2022-02-08 09:43:01', '2022-02-08 09:43:01', 1),
(1497, 'Single Pages', 12, 'Record is edited. (12)', '2022-02-08 09:47:04', '2022-02-08 09:47:04', 1),
(1498, 'Single Pages', 13, 'Record is edited. (13)', '2022-02-08 09:47:40', '2022-02-08 09:47:40', 1),
(1499, 'Single Pages', 14, 'Record is edited. (14)', '2022-02-08 09:49:37', '2022-02-08 09:49:37', 1),
(1500, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-08 12:40:49', '2022-02-08 12:40:49', 1),
(1501, 'Settings', 1, 'information updated', '2022-02-08 12:45:19', '2022-02-08 12:45:19', 1),
(1502, 'Settings', 1, 'information updated', '2022-02-08 12:47:59', '2022-02-08 12:47:59', 1),
(1503, 'Settings', 1, 'information updated', '2022-02-08 12:49:50', '2022-02-08 12:49:50', 1),
(1504, 'Settings', 1, 'information updated', '2022-02-08 12:51:32', '2022-02-08 12:51:32', 1),
(1505, 'Settings', 1, 'information updated', '2022-02-08 12:52:03', '2022-02-08 12:52:03', 1),
(1506, 'Settings', 1, 'Image is removed', '2022-02-08 12:53:10', '2022-02-08 12:53:10', 1),
(1507, 'Settings', 1, 'information updated', '2022-02-08 12:53:27', '2022-02-08 12:53:27', 1),
(1508, 'Settings', 1, 'Image is removed', '2022-02-08 12:56:43', '2022-02-08 12:56:43', 1),
(1509, 'Settings', 1, 'information updated', '2022-02-08 12:56:51', '2022-02-08 12:56:51', 1),
(1510, 'Settings', 1, 'Image is removed', '2022-02-08 12:59:01', '2022-02-08 12:59:01', 1),
(1511, 'Settings', 1, 'information updated', '2022-02-08 12:59:10', '2022-02-08 12:59:10', 1),
(1512, 'Settings', 1, 'Image is removed', '2022-02-08 13:00:00', '2022-02-08 13:00:00', 1),
(1513, 'Settings', 1, 'information updated', '2022-02-08 13:00:11', '2022-02-08 13:00:11', 1),
(1514, 'Settings', 1, 'Image is removed', '2022-02-08 13:06:01', '2022-02-08 13:06:01', 1),
(1515, 'Settings', 1, 'information updated', '2022-02-08 13:06:13', '2022-02-08 13:06:13', 1),
(1516, 'Settings', 1, 'Image is removed', '2022-02-08 13:07:36', '2022-02-08 13:07:36', 1),
(1517, 'Settings', 1, 'information updated', '2022-02-08 13:07:47', '2022-02-08 13:07:47', 1),
(1518, 'Settings', 1, 'Image is removed', '2022-02-08 13:09:07', '2022-02-08 13:09:07', 1),
(1519, 'Settings', 1, 'information updated', '2022-02-08 13:09:20', '2022-02-08 13:09:20', 1),
(1520, 'Settings', 1, 'Image is removed', '2022-02-08 13:10:27', '2022-02-08 13:10:27', 1),
(1521, 'Settings', 1, 'information updated', '2022-02-08 13:10:38', '2022-02-08 13:10:38', 1),
(1522, 'Settings', 1, 'Image is removed', '2022-02-08 13:12:59', '2022-02-08 13:12:59', 1),
(1523, 'Settings', 1, 'information updated', '2022-02-08 13:14:33', '2022-02-08 13:14:33', 1),
(1524, 'Settings', 1, 'Image is removed', '2022-02-08 13:17:49', '2022-02-08 13:17:49', 1),
(1525, 'Settings', 1, 'Image is removed', '2022-02-08 13:17:52', '2022-02-08 13:17:52', 1),
(1526, 'Settings', 1, 'Image is removed', '2022-02-08 13:17:55', '2022-02-08 13:17:55', 1),
(1527, 'Settings', 1, 'information updated', '2022-02-08 13:18:24', '2022-02-08 13:18:24', 1),
(1528, 'Settings', 1, 'information updated', '2022-02-08 13:24:05', '2022-02-08 13:24:05', 1),
(1529, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-09 09:08:10', '2022-02-09 09:08:10', 1),
(1530, 'Settings', 1, 'Image is removed', '2022-02-09 09:10:15', '2022-02-09 09:10:15', 1),
(1531, 'Settings', 1, 'information updated', '2022-02-09 09:10:27', '2022-02-09 09:10:27', 1),
(1532, 'Settings', 1, 'information updated', '2022-02-09 09:15:53', '2022-02-09 09:15:53', 1),
(1533, 'Settings', 1, 'information updated', '2022-02-09 09:16:56', '2022-02-09 09:16:56', 1),
(1534, 'Settings', 1, 'information updated', '2022-02-09 09:18:36', '2022-02-09 09:18:36', 1),
(1535, 'Settings', 1, 'information updated', '2022-02-09 09:19:28', '2022-02-09 09:19:28', 1),
(1536, 'Settings', 1, 'information updated', '2022-02-09 09:20:17', '2022-02-09 09:20:17', 1),
(1537, 'Settings', 1, 'information updated', '2022-02-09 09:21:09', '2022-02-09 09:21:09', 1),
(1538, 'Settings', 1, 'information updated', '2022-02-09 09:23:12', '2022-02-09 09:23:12', 1),
(1539, 'Settings', 1, 'information updated', '2022-02-09 09:25:29', '2022-02-09 09:25:29', 1),
(1540, 'Single Pages', 20, 'Record is edited. (20)', '2022-02-09 09:42:35', '2022-02-09 09:42:35', 1),
(1541, 'Single Pages', 20, 'Record is edited. (20)', '2022-02-09 09:44:58', '2022-02-09 09:44:58', 1),
(1542, 'Single Pages', 20, 'A record is removed. (20)', '2022-02-09 09:45:03', '2022-02-09 09:45:03', 1),
(1543, 'Single Pages', 14, 'Record is edited. (14)', '2022-02-09 09:45:21', '2022-02-09 09:45:21', 1),
(1544, 'Slideshows', 22, 'A new record is added. (22)', '2022-02-09 09:46:01', '2022-02-09 09:46:01', 1),
(1545, 'Slideshows', 22, 'Record is edited. (22)', '2022-02-09 09:48:29', '2022-02-09 09:48:29', 1),
(1546, 'Slideshows', 22, 'A record is removed. (22)', '2022-02-09 09:48:39', '2022-02-09 09:48:39', 1),
(1547, 'Service', 24, 'Record is edited. (24)', '2022-02-09 09:50:10', '2022-02-09 09:50:10', 1),
(1548, 'Service', 24, 'Record is edited. (24)', '2022-02-09 09:53:51', '2022-02-09 09:53:51', 1),
(1549, 'Service', 24, 'A record is removed. (24)', '2022-02-09 09:54:18', '2022-02-09 09:54:18', 1),
(1550, 'Service', 25, 'Record is edited. (25)', '2022-02-09 09:55:33', '2022-02-09 09:55:33', 1),
(1551, 'Service', 25, 'A record is removed. (25)', '2022-02-09 09:58:15', '2022-02-09 09:58:15', 1),
(1552, 'Subsidiaries and Associates', 30, 'A new record is added. (30)', '2022-02-09 09:58:39', '2022-02-09 09:58:39', 1),
(1553, 'Subsidiaries and Associates', 30, 'Record is edited. (30)', '2022-02-09 09:58:49', '2022-02-09 09:58:49', 1),
(1554, 'Subsidiaries and Associates', 31, 'A new record is added. (31)', '2022-02-09 09:59:30', '2022-02-09 09:59:30', 1),
(1555, 'Subsidiaries and Associates', 30, 'A record is removed. (30)', '2022-02-09 10:00:04', '2022-02-09 10:00:04', 1),
(1556, 'Subsidiaries and Associates', 31, 'A record is removed. (31)', '2022-02-09 10:00:09', '2022-02-09 10:00:09', 1),
(1557, 'News And Event', 15, 'Record is edited. (15)', '2022-02-09 10:03:17', '2022-02-09 10:03:17', 1),
(1558, 'News And Event', 15, 'Record is edited. (15)', '2022-02-09 10:05:16', '2022-02-09 10:05:16', 1),
(1559, 'News And Event', 15, 'Record is edited. (15)', '2022-02-09 10:07:37', '2022-02-09 10:07:37', 1),
(1560, 'News And Event', 15, 'A record is removed. (15)', '2022-02-09 10:08:35', '2022-02-09 10:08:35', 1),
(1561, 'Resume', 14, 'A record is removed. (14)', '2022-02-09 10:16:42', '2022-02-09 10:16:42', 1),
(1562, 'Single Page Menu', 25, 'A new record is added. (25)', '2022-02-09 10:26:53', '2022-02-09 10:26:53', 1),
(1563, 'Single Page Menu', 25, 'Record is edited. (25)', '2022-02-09 10:27:39', '2022-02-09 10:27:39', 1),
(1564, 'Single Page Menu', 25, 'A record is removed. (25)', '2022-02-09 10:27:56', '2022-02-09 10:27:56', 1),
(1565, 'Single Page Menu', 26, 'A new record is added. (26)', '2022-02-09 10:38:37', '2022-02-09 10:38:37', 1),
(1566, 'Slideshows', 23, 'A new record is added. (23)', '2022-02-09 10:44:15', '2022-02-09 10:44:15', 1),
(1567, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-09 10:49:50', '2022-02-09 10:49:50', 1),
(1568, 'Slideshows', 15, 'Record is edited. (15)', '2022-02-09 10:50:45', '2022-02-09 10:50:45', 1),
(1569, 'Slideshows', 16, 'Record is edited. (16)', '2022-02-09 10:57:16', '2022-02-09 10:57:16', 1),
(1570, 'Corporate Overview', 2, 'Record is edited. (2)', '2022-02-09 11:04:36', '2022-02-09 11:04:36', 1),
(1571, 'Corporate Overview', 2, 'Record is edited. (2)', '2022-02-09 11:05:50', '2022-02-09 11:05:50', 1),
(1572, 'Quick links', 15, 'A new record is added. (15)', '2022-02-09 11:06:44', '2022-02-09 11:06:44', 1),
(1573, 'Quick links', 15, 'Record is edited. (15)', '2022-02-09 11:07:36', '2022-02-09 11:07:36', 1),
(1574, 'Quick links', 15, 'A record is removed. (15)', '2022-02-09 11:07:58', '2022-02-09 11:07:58', 1),
(1575, 'Anuaal Reports', 17, 'A new record is added. (17)', '2022-02-09 11:15:52', '2022-02-09 11:15:52', 1),
(1576, 'Anuaal Reports', 17, 'Record is edited. (17)', '2022-02-09 11:19:01', '2022-02-09 11:19:01', 1),
(1577, 'Anuaal Reports', 17, 'A record is removed. (17)', '2022-02-09 11:19:40', '2022-02-09 11:19:40', 1),
(1578, 'Avalable Vacancies', 8, 'Record is edited. (8)', '2022-02-09 11:20:29', '2022-02-09 11:20:29', 1),
(1579, 'Avalable Vacancies', 8, 'Record is edited. (8)', '2022-02-09 11:21:34', '2022-02-09 11:21:34', 1),
(1580, 'Avalable Vacancies', 8, 'A record is removed. (8)', '2022-02-09 11:21:54', '2022-02-09 11:21:54', 1),
(1581, 'Quarterly Reports', 7, 'A new record is added. (7)', '2022-02-09 11:26:56', '2022-02-09 11:26:56', 1),
(1582, 'Quarterly Reports', 7, 'Record is edited. (7)', '2022-02-09 11:27:37', '2022-02-09 11:27:37', 1),
(1583, 'Quarterly Reports', 7, 'A record is removed. (7)', '2022-02-09 11:27:43', '2022-02-09 11:27:43', 1),
(1584, 'Disclosure', 73, 'A new record is added. (73)', '2022-02-09 11:29:10', '2022-02-09 11:29:10', 1),
(1585, 'Disclosure', 73, 'Record is edited. (73)', '2022-02-09 11:30:08', '2022-02-09 11:30:08', 1),
(1586, 'Disclosure', 73, 'A record is removed. (73)', '2022-02-09 11:30:27', '2022-02-09 11:30:27', 1),
(1587, 'Settings', 1, 'information updated', '2022-02-09 11:32:13', '2022-02-09 11:32:13', 1),
(1588, 'Settings', 1, 'information updated', '2022-02-09 11:34:43', '2022-02-09 11:34:43', 1),
(1589, 'Admins', 7, 'A new record is added. (7)', '2022-02-09 11:38:16', '2022-02-09 11:38:16', 1),
(1590, 'Admins', 7, 'Record is edited. (7)', '2022-02-09 11:39:25', '2022-02-09 11:39:25', 1),
(1591, 'Admins', 7, 'A record is removed. (7)', '2022-02-09 11:39:35', '2022-02-09 11:39:35', 1),
(1592, 'Roles', 5, 'A new record is added. (5)', '2022-02-09 11:41:25', '2022-02-09 11:41:25', 1),
(1593, 'Subjects', 3, 'A new record is added. (3)', '2022-02-09 11:41:49', '2022-02-09 11:41:49', 1),
(1594, 'News And Event', 7, 'status is changed to 0 (7)', '2022-02-09 15:43:56', '2022-02-09 15:43:56', 1),
(1595, 'News And Event', 7, 'status is changed to 1 (7)', '2022-02-09 15:43:57', '2022-02-09 15:43:57', 1),
(1596, 'News And Event', 16, 'Record is edited. (16)', '2022-02-09 15:46:18', '2022-02-09 15:46:18', 1),
(1597, 'News And Event', 16, 'A record is removed. (16)', '2022-02-09 15:46:36', '2022-02-09 15:46:36', 1),
(1598, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-09 15:59:25', '2022-02-09 15:59:25', 1),
(1599, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-09 16:01:39', '2022-02-09 16:01:39', 1),
(1600, 'Settings', 1, 'information updated', '2022-02-09 16:02:50', '2022-02-09 16:02:50', 1),
(1601, 'Settings', 1, 'information updated', '2022-02-09 16:14:24', '2022-02-09 16:14:24', 1),
(1602, 'Settings', 1, 'information updated', '2022-02-09 16:19:05', '2022-02-09 16:19:05', 1),
(1603, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-09 22:25:52', '2022-02-09 22:25:52', 1),
(1604, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-10 09:03:38', '2022-02-10 09:03:38', 1),
(1605, 'Settings', 1, 'information updated', '2022-02-10 09:04:18', '2022-02-10 09:04:18', 1),
(1606, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-10 09:09:02', '2022-02-10 09:09:02', 1),
(1607, 'News And Event', 17, 'Record is edited. (17)', '2022-02-10 09:11:08', '2022-02-10 09:11:08', 1),
(1608, 'News And Event', 17, 'Record is edited. (17)', '2022-02-10 09:11:17', '2022-02-10 09:11:17', 1),
(1609, 'Slideshows', 24, 'A new record is added. (24)', '2022-02-10 09:16:34', '2022-02-10 09:16:34', 1),
(1610, 'Slideshows', 23, 'A record is removed. (23)', '2022-02-10 09:16:41', '2022-02-10 09:16:41', 1),
(1611, 'News And Event', 17, 'Record is edited. (17)', '2022-02-10 09:17:43', '2022-02-10 09:17:43', 1),
(1612, 'News And Event', 17, 'Record is edited. (17)', '2022-02-10 09:24:38', '2022-02-10 09:24:38', 1),
(1613, 'Single Pages', 21, 'Record is edited. (21)', '2022-02-10 09:26:27', '2022-02-10 09:26:27', 1),
(1614, 'News And Event', 17, 'Record is edited. (17)', '2022-02-10 09:29:18', '2022-02-10 09:29:18', 1),
(1615, 'Our Business', 14, 'Record is edited. (14)', '2022-02-10 09:31:49', '2022-02-10 09:31:49', 1),
(1616, 'News And Event', 17, 'Record is edited. (17)', '2022-02-10 09:32:03', '2022-02-10 09:32:03', 1),
(1617, 'Our Business', 14, 'Record is edited. (14)', '2022-02-10 09:32:21', '2022-02-10 09:32:21', 1),
(1618, 'News And Event', 18, 'Record is edited. (18)', '2022-02-10 09:32:32', '2022-02-10 09:32:32', 1),
(1619, 'Subsidiaries and Associates', 32, 'A new record is added. (32)', '2022-02-10 09:33:07', '2022-02-10 09:33:07', 1),
(1620, 'Subsidiaries and Associates', 32, 'Record is edited. (32)', '2022-02-10 09:34:51', '2022-02-10 09:34:51', 1),
(1621, 'Subsidiaries and Associates', 32, 'A record is removed. (32)', '2022-02-10 09:35:02', '2022-02-10 09:35:02', 1),
(1622, 'Single Page Menu', 27, 'A new record is added. (27)', '2022-02-10 09:37:05', '2022-02-10 09:37:05', 1),
(1623, 'News And Event', 18, 'Record is edited. (18)', '2022-02-10 09:38:56', '2022-02-10 09:38:56', 1),
(1624, 'Single Page Menu', 27, 'A record is removed. (27)', '2022-02-10 09:39:07', '2022-02-10 09:39:07', 1),
(1625, 'News And Event', 18, 'A record is removed. (18)', '2022-02-10 09:39:20', '2022-02-10 09:39:20', 1),
(1626, 'News And Event', 19, 'Record is edited. (19)', '2022-02-10 09:39:51', '2022-02-10 09:39:51', 1),
(1627, 'News And Event', 19, 'A record is removed. (19)', '2022-02-10 09:40:11', '2022-02-10 09:40:11', 1),
(1628, 'News And Event', 17, 'A record is removed. (17)', '2022-02-10 09:40:16', '2022-02-10 09:40:16', 1),
(1629, 'Anuaal Reports', 18, 'A new record is added. (18)', '2022-02-10 09:53:59', '2022-02-10 09:53:59', 1),
(1630, 'Anuaal Reports', 18, 'Record is edited. (18)', '2022-02-10 09:54:33', '2022-02-10 09:54:33', 1),
(1631, 'Anuaal Reports', 18, 'A record is removed. (18)', '2022-02-10 09:54:51', '2022-02-10 09:54:51', 1),
(1632, 'Single Pages', 21, 'A record is removed. (21)', '2022-02-10 09:56:10', '2022-02-10 09:56:10', 1),
(1633, 'Avalable Vacancies', 9, 'Record is edited. (9)', '2022-02-10 10:02:57', '2022-02-10 10:02:57', 1),
(1634, 'Avalable Vacancies', 9, 'Record is edited. (9)', '2022-02-10 10:03:44', '2022-02-10 10:03:44', 1),
(1635, 'Avalable Vacancies', 9, 'A record is removed. (9)', '2022-02-10 10:03:49', '2022-02-10 10:03:49', 1),
(1636, 'Quarterly Reports', 8, 'A new record is added. (8)', '2022-02-10 10:04:05', '2022-02-10 10:04:05', 1),
(1637, 'Quarterly Reports', 8, 'A record is removed. (8)', '2022-02-10 10:05:12', '2022-02-10 10:05:12', 1),
(1638, 'Disclosure', 74, 'A new record is added. (74)', '2022-02-10 10:05:48', '2022-02-10 10:05:48', 1),
(1639, 'Disclosure', 74, 'A record is removed. (74)', '2022-02-10 10:08:26', '2022-02-10 10:08:26', 1),
(1640, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-10 11:49:03', '2022-02-10 11:49:03', 1),
(1641, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-02-18 12:30:44', '2022-02-18 12:30:44', 1),
(1642, 'login', 1, 'Administrator is logged in to Admin Panel.', '2022-03-06 12:38:17', '2022-03-06 12:38:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gwc_menus`
--

CREATE TABLE `gwc_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `display_order` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `gwc_menus`
--

INSERT INTO `gwc_menus` (`id`, `name`, `link`, `icon`, `parent_id`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'home', 'flaticon-squares', 0, 1, 1, '2020-01-15 14:00:21', '2020-01-28 14:00:37'),
(3, 'Web Components', 'javascript:;', 'flaticon2-information', 0, 2, 1, '2020-01-15 14:07:33', '2020-04-03 14:42:20'),
(11, 'System', 'javascript:;', 'flaticon2-gear', 0, 4, 1, '2020-01-16 06:47:21', '2020-01-16 06:47:25'),
(12, 'General Settings', 'settings', 'flaticon2-gear', 11, 1, 1, '2020-01-16 06:48:00', '2020-02-17 04:45:13'),
(14, 'Users', 'users', 'flaticon2-gear', 11, 7, 0, '2020-01-16 06:50:26', '2020-07-09 04:08:10'),
(15, 'Roles', 'roles', 'test', 11, 9, 1, '2020-01-30 13:22:49', '2020-07-09 04:08:28'),
(16, 'Contact us', 'javascript:;', 'flaticon-email', 0, 13, 1, '2020-02-26 03:49:10', '2020-02-29 03:50:50'),
(17, 'Subjects', 'subjects', 'list', 16, 1, 1, NULL, NULL),
(18, 'Messages', 'messages', 'list', 16, 2, 1, '2020-02-29 03:52:18', '2020-02-29 04:15:30'),
(22, 'Slideshows', 'slideshows', 'flaticon2-information', 3, 3, 1, '2020-03-03 04:03:04', '2020-04-03 14:47:08'),
(26, 'Logs', 'logs', 'logs', 11, 6, 1, '2020-03-16 12:54:42', '2020-07-09 04:07:52'),
(36, 'Notify Emails', 'notifyemails', '1', 11, 1, 1, '2020-04-27 05:56:19', '2020-09-21 15:02:45'),
(38, 'Web Push Notification', 'javascript:;', 'flaticon2-notification', 0, 4, 1, '2020-06-08 07:55:03', '2021-02-08 07:00:31'),
(39, 'Web Push Message', 'webpush', 'list', 38, 1, 1, '2020-06-08 07:59:54', '2021-02-08 07:00:32'),
(40, 'Device Tokens', 'webpush/devicetokens', 'li', 38, 2, 1, '2020-06-08 13:26:49', '2021-02-08 07:00:32'),
(57, 'Menus', 'menus', 'flaticon-more-1', 0, 5, 0, '2021-05-16 05:33:02', '2021-05-16 05:33:02'),
(71, 'About Us', 'aboutus', '', 67, 1, 0, '2021-06-09 06:48:20', '2021-06-09 06:48:20'),
(80, 'Single pages', 'singlepages', '', 3, 1, 1, '2021-07-05 12:02:28', '2021-07-05 12:02:28'),
(84, 'Admins', 'admins', '', 11, 6, 1, '2021-07-10 08:26:33', '2021-07-10 08:26:33'),
(86, 'SMS Settings', 'sms', '', 11, 4, 0, '2021-07-13 05:56:15', '2021-07-13 05:56:15'),
(109, 'Our Business', 'services', '', 3, 100, 1, '2021-10-22 19:45:32', '2021-10-22 19:45:32'),
(110, 'Privay', 'privacys', '', 3, 100, 0, '2021-10-26 06:40:37', '2021-10-26 06:40:37'),
(111, 'contact info', 'contactsinformations', '', 16, 108, 0, '2021-10-26 13:21:43', '2021-10-26 13:21:43'),
(112, 'Subsidiaries and Associates', 'subsidiaries', '', 3, 112, 1, '2021-10-28 07:14:15', '2021-10-28 07:14:15'),
(113, 'News And Event', 'news', '', 3, 113, 1, '2021-11-01 10:00:49', '2021-11-01 10:00:49'),
(114, 'Category Country', 'categorycountrey', '', 3, 114, 0, '2021-11-01 12:33:09', '2021-11-01 12:33:09'),
(115, 'Resume', 'resumes', '', 3, 115, 1, '2021-11-02 09:12:57', '2021-11-02 09:12:57'),
(116, 'Category Menu', 'categories', '', 3, 116, 1, '2021-11-13 12:27:32', '2021-11-13 12:27:32'),
(117, 'Single page Menu', 'single-page-menu', '', 3, 117, 1, '2021-11-15 07:02:37', '2021-11-15 07:02:37'),
(118, 'Corporate Overview', 'corporateoverview', '', 3, 118, 1, '2021-11-15 07:02:37', '2021-11-15 07:02:37'),
(119, 'Quick Links', 'quicklinks', '', 3, 119, 1, NULL, NULL),
(120, 'Education Finance', 'educations', '', 3, 120, 1, NULL, NULL),
(121, 'Annual Report', 'annual-reports', '', 3, 121, 1, NULL, NULL),
(122, 'Available Vacancies', 'vacancies', '', 3, 122, 1, NULL, NULL),
(123, 'Quarterly Report', 'quarterly-reports', '', 3, 123, 1, NULL, NULL),
(124, 'Disclosures', 'disclosures', '', 3, 124, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gwc_messages`
--

CREATE TABLE `gwc_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `message` text CHARACTER SET utf8 DEFAULT NULL,
  `cip` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gwc_messages`
--

INSERT INTO `gwc_messages` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `cip`, `is_read`, `created_at`, `updated_at`) VALUES
(20, 'sefs', 'Soheil@gmail.com', NULL, NULL, 'fsef', NULL, 0, '2021-12-10 00:45:23', '2021-12-10 00:45:23'),
(21, 'admin', 'Soheil@gmail.com', NULL, 'subject2', 'dwad', NULL, 0, '2021-12-10 00:47:20', '2021-12-10 00:47:20'),
(22, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'in yek name be to mibashad', NULL, 0, '2021-12-11 09:54:14', '2021-12-11 09:54:14'),
(23, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'sadadad', NULL, 0, '2021-12-11 10:00:04', '2021-12-11 10:00:04'),
(24, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdad', NULL, 0, '2021-12-11 10:02:05', '2021-12-11 10:02:05'),
(25, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'adasda', NULL, 0, '2021-12-11 10:02:43', '2021-12-11 10:02:43'),
(26, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject2', 'dasdad', NULL, 0, '2021-12-11 10:03:40', '2021-12-11 10:03:40'),
(27, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject2', 'fasfaf', NULL, 0, '2021-12-11 10:06:16', '2021-12-11 10:06:16'),
(28, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdad', NULL, 0, '2021-12-11 10:11:28', '2021-12-11 10:11:28'),
(29, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'sss', NULL, 0, '2021-12-11 10:32:08', '2021-12-11 10:32:08'),
(30, 'soheil', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'sss', NULL, 0, '2021-12-11 10:36:52', '2021-12-11 10:36:52'),
(31, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject2', 'بسیبسب', NULL, 0, '2021-12-11 10:49:30', '2021-12-11 10:49:30'),
(32, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasd', NULL, 0, '2021-12-11 11:18:33', '2021-12-11 11:18:33'),
(33, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasd', NULL, 0, '2021-12-11 11:19:47', '2021-12-11 11:19:47'),
(34, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dsadad', NULL, 0, '2021-12-11 11:20:39', '2021-12-11 11:20:39'),
(35, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'sfafaf', NULL, 0, '2021-12-11 11:25:06', '2021-12-11 11:25:06'),
(36, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'jfgvjgjk', NULL, 0, '2021-12-11 11:28:35', '2021-12-11 11:28:35'),
(37, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'sdfsdf', NULL, 0, '2021-12-11 11:33:41', '2021-12-11 11:33:41'),
(38, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dfgfd', NULL, 0, '2021-12-11 11:35:09', '2021-12-11 11:35:09'),
(39, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject2', 'fsdfs', NULL, 0, '2021-12-11 11:37:23', '2021-12-11 11:37:23'),
(40, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasda', NULL, 0, '2021-12-11 11:40:14', '2021-12-11 11:40:14'),
(41, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'grdg', NULL, 0, '2021-12-11 11:42:29', '2021-12-11 11:42:29'),
(42, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dawad', NULL, 0, '2021-12-11 11:45:19', '2021-12-11 11:45:19'),
(43, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'fasfa', NULL, 0, '2021-12-11 11:50:53', '2021-12-11 11:50:53'),
(44, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'fgdfg', NULL, 0, '2021-12-11 11:54:01', '2021-12-11 11:54:01'),
(45, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'ftyfty', NULL, 0, '2021-12-11 12:00:08', '2021-12-11 12:00:08'),
(46, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'fasdf', NULL, 0, '2021-12-11 12:03:16', '2021-12-11 12:03:16'),
(47, 'admin', 'Soheil@gmail.com', NULL, 'subject2', 'sdfdsf', NULL, 0, '2021-12-11 12:05:15', '2021-12-11 12:05:15'),
(48, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'sdfds', NULL, 0, '2021-12-11 12:07:59', '2021-12-11 12:07:59'),
(49, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'sffe', NULL, 0, '2021-12-11 12:08:40', '2021-12-11 12:08:40'),
(50, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'afasf', NULL, 0, '2021-12-11 12:10:10', '2021-12-11 12:10:10'),
(51, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 12:12:35', '2021-12-11 12:12:35'),
(52, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dawda', NULL, 0, '2021-12-11 12:17:37', '2021-12-11 12:17:37'),
(53, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'hfghfh', NULL, 0, '2021-12-11 12:51:27', '2021-12-11 12:51:27'),
(54, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'feaf', NULL, 0, '2021-12-11 13:09:34', '2021-12-11 13:09:34'),
(55, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dawdad', NULL, 0, '2021-12-11 13:10:57', '2021-12-11 13:10:57'),
(56, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dawda', NULL, 0, '2021-12-11 13:12:38', '2021-12-11 13:12:38'),
(57, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'ghjg', NULL, 0, '2021-12-11 13:13:50', '2021-12-11 13:13:50'),
(58, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'hkhj', NULL, 0, '2021-12-11 13:14:29', '2021-12-11 13:14:29'),
(59, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'asdasd', NULL, 0, '2021-12-11 13:19:14', '2021-12-11 13:19:14'),
(60, 'admin', 'Soheil@gmail.com', NULL, 'subject 1', 'asdasd', NULL, 0, '2021-12-11 13:20:00', '2021-12-11 13:20:00'),
(61, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'gfhdfth', NULL, 0, '2021-12-11 13:21:27', '2021-12-11 13:21:27'),
(62, 'admin', 'Soheil@gmail.com', NULL, 'subject 1', 'fsef', NULL, 0, '2021-12-11 13:22:06', '2021-12-11 13:22:06'),
(63, 'soheilvaio', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'fsdfsf', NULL, 0, '2021-12-11 13:24:08', '2021-12-11 13:24:08'),
(64, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasd', NULL, 0, '2021-12-11 13:24:46', '2021-12-11 13:24:46'),
(65, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasd', NULL, 0, '2021-12-11 13:26:44', '2021-12-11 13:26:44'),
(66, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'awawe', NULL, 0, '2021-12-11 13:28:02', '2021-12-11 13:28:02'),
(67, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'wadad', NULL, 0, '2021-12-11 13:29:39', '2021-12-11 13:29:39'),
(68, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'wadad', NULL, 0, '2021-12-11 13:30:35', '2021-12-11 13:30:35'),
(69, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'wadad', NULL, 0, '2021-12-11 13:34:14', '2021-12-11 13:34:14'),
(70, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'wadad', NULL, 0, '2021-12-11 13:34:22', '2021-12-11 13:34:22'),
(71, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasda', NULL, 0, '2021-12-11 13:34:43', '2021-12-11 13:34:43'),
(72, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasda', NULL, 0, '2021-12-11 13:35:01', '2021-12-11 13:35:01'),
(73, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasda', NULL, 0, '2021-12-11 13:35:05', '2021-12-11 13:35:05'),
(74, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasda', NULL, 0, '2021-12-11 13:35:07', '2021-12-11 13:35:07'),
(75, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasda', NULL, 0, '2021-12-11 13:35:27', '2021-12-11 13:35:27'),
(76, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasda', NULL, 0, '2021-12-11 13:38:30', '2021-12-11 13:38:30'),
(77, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasda', NULL, 0, '2021-12-11 13:38:33', '2021-12-11 13:38:33'),
(78, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 13:39:30', '2021-12-11 13:39:30'),
(79, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 13:41:30', '2021-12-11 13:41:30'),
(80, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 13:41:50', '2021-12-11 13:41:50'),
(81, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 13:41:57', '2021-12-11 13:41:57'),
(82, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 13:43:15', '2021-12-11 13:43:15'),
(83, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 13:45:01', '2021-12-11 13:45:01'),
(84, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 13:45:48', '2021-12-11 13:45:48'),
(85, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 13:46:51', '2021-12-11 13:46:51'),
(86, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 13:59:54', '2021-12-11 13:59:54'),
(87, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 14:09:33', '2021-12-11 14:09:33'),
(88, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 14:10:25', '2021-12-11 14:10:25'),
(89, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dasdsad', NULL, 0, '2021-12-11 14:10:57', '2021-12-11 14:10:57'),
(90, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'kuggku', NULL, 0, '2021-12-11 14:12:15', '2021-12-11 14:12:15'),
(91, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dfdsf', NULL, 0, '2021-12-11 14:21:09', '2021-12-11 14:21:09'),
(92, 'admin', 'Soheilmehrandish@gmail.com', NULL, 'subject 1', 'dgfdxfg', NULL, 0, '2021-12-11 14:31:14', '2021-12-11 14:31:14'),
(93, 'admin', 'Soheilmehrandish@gmail.com', NULL, NULL, 'zdfsafd', NULL, 0, '2021-12-11 21:11:37', '2021-12-11 21:11:37'),
(94, 'silo', 'sssss@gmail.com', NULL, NULL, 'mesu', NULL, 0, '2021-12-11 21:12:07', '2021-12-11 21:12:07'),
(95, 'soli', 'fsdfsda@sdfsd.fgghdg', NULL, 'subject 1', 'dfgdfg', NULL, 0, '2021-12-11 21:13:30', '2021-12-11 21:13:30'),
(96, 'dasd', 'Soheil@gmail.com', NULL, 'subject 1', 'sfddsf', NULL, 0, '2021-12-11 23:11:32', '2021-12-11 23:11:32'),
(97, 'admin', 'Soheil@gmail.com', NULL, 'subject 1', 'fsdfds', NULL, 0, '2021-12-11 23:11:46', '2021-12-11 23:11:46'),
(98, 'admin', 'Soheil@gmail.com', NULL, 'subject 1', 'dasda', NULL, 0, '2021-12-11 23:43:54', '2021-12-11 23:43:54'),
(99, 'dasd', 'Soheil@gmail.com', NULL, 'subject 1', 'asda', NULL, 0, '2021-12-11 23:44:53', '2021-12-11 23:44:53'),
(100, 'test', 'oveis.farhadi@gulfclick.net', NULL, 'subject 1', 'test mood', NULL, 0, '2022-02-09 09:28:55', '2022-02-09 09:28:55'),
(101, 'soheilvaio', 'ss@gmail.com', NULL, 'subject 1', 'a new message', NULL, 0, '2022-02-09 11:53:45', '2022-02-09 11:53:45'),
(102, 'soheilvaio', 'mhdi.j77@gmail.com', NULL, 'subject 1', 'a new message 2', NULL, 0, '2022-02-09 12:30:46', '2022-02-09 12:30:46'),
(103, 'soheil', 'ss@gmail.com', NULL, 'subject 1', 'dadas', NULL, 0, '2022-02-09 12:36:53', '2022-02-09 12:36:53'),
(104, 'admin', 'Soheil@gmail.com', NULL, 'subject 1', 'dawd', NULL, 0, '2022-02-09 12:48:58', '2022-02-09 12:48:58'),
(105, 'soheilvaiooooo', 'soheil@gmail.com', NULL, 'subject 1', 'afawf', NULL, 0, '2022-02-09 12:49:52', '2022-02-09 12:49:52'),
(106, 'admin', 'Soheil@gmail.com', NULL, 'subject 1', 'dawdwad', NULL, 0, '2022-02-09 13:03:16', '2022-02-09 13:03:16'),
(107, 'admin', 'Soheil@gmail.com', NULL, 'subject 1', 'drtrdt', NULL, 0, '2022-02-09 13:20:54', '2022-02-09 13:20:54'),
(108, 'soheilvaio', 'Soheil@gmail.com', NULL, 'subject 1', 'kgk', NULL, 0, '2022-02-09 13:21:57', '2022-02-09 13:21:57'),
(109, 'admin', 'Soheil@gmail.com', NULL, 'subject 1', 'ertert', NULL, 0, '2022-02-09 13:23:14', '2022-02-09 13:23:14'),
(110, 'fsdfs', 'Soheil@gmail.com', NULL, 'subject 1', 'sdfsf', NULL, 0, '2022-02-09 13:27:10', '2022-02-09 13:27:10'),
(111, 'ryhrt', 'Soheil@gmail.com', NULL, 'subject 1', 'sefsf', NULL, 0, '2022-02-09 13:29:23', '2022-02-09 13:29:23'),
(112, 'ryhrt', 'Soheil@gmail.com', NULL, 'subject 1', 'sefsf', NULL, 0, '2022-02-09 13:31:44', '2022-02-09 13:31:44'),
(113, 'awd', 'Soheil@gmail.com', NULL, 'subject 1', 'dawd', NULL, 0, '2022-02-09 13:47:49', '2022-02-09 13:47:49'),
(114, 'admin', 'Soheil@gmail.com', NULL, 'subject 1', 'fawfaf', NULL, 0, '2022-02-09 13:48:02', '2022-02-09 13:48:02'),
(115, 'admink', 'ss@gmail.com', NULL, 'subject 1', 'awddad', NULL, 0, '2022-02-09 14:01:14', '2022-02-09 14:01:14'),
(116, 'soheil', 'mhdi.j77@gmail.com', NULL, 'subject 1', 'ewrewsr', NULL, 0, '2022-02-09 14:02:04', '2022-02-09 14:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_notify_emails`
--

CREATE TABLE `gwc_notify_emails` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_notify_emails`
--

INSERT INTO `gwc_notify_emails` (`id`, `name`, `email`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'alireza', 'mr.wrestlemania1@gmail.com', 1, 1, '2021-07-04 08:55:22', '2021-07-13 05:20:53'),
(5, 'oveis', 'oveisfa@gmail.com', 2, 1, '2021-11-16 11:10:09', '2021-11-16 11:10:09'),
(6, 'soheil', 'Soheilmehrandish@gmail.com', 3, 1, '2021-12-11 10:50:41', '2021-12-11 10:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_package_galleries`
--

CREATE TABLE `gwc_package_galleries` (
  `id` bigint(20) NOT NULL,
  `package_id` bigint(20) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_package_galleries`
--

INSERT INTO `gwc_package_galleries` (`id`, `package_id`, `title_en`, `title_ar`, `image`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 2, 'Generall', 'Generall', 'packagegalleries-image-440c8950429cb5ee1df7eb7460c41c4b.png', 1, 1, '2021-10-31 07:11:29', '2021-07-19 04:11:10'),
(2, 1, 'gallery 2', 'gallery 2', 'packagegalleries-image-0c298a87b32df8fcc8837c33ecd789b6.png', 2, 1, '2021-10-31 07:11:29', '2021-07-19 04:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_resumes`
--

CREATE TABLE `gwc_resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gwc_settings`
--

CREATE TABLE `gwc_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyname` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'setting',
  `name_en` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_per_page_front` int(11) NOT NULL DEFAULT 0,
  `item_per_page_back` int(11) NOT NULL DEFAULT 0,
  `default_sort` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ID',
  `social_google_plus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_facebook` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_twitter` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_linkedin` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_lang` tinyint(1) NOT NULL DEFAULT 0,
  `from_email` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_screen` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_screen` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_server_key` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pushy_api_token` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gwc_settings`
--

INSERT INTO `gwc_settings` (`id`, `keyname`, `name_en`, `name_ar`, `seo_description_en`, `seo_description_ar`, `seo_keywords_en`, `seo_keywords_ar`, `address_en`, `address_ar`, `email`, `phone`, `mobile`, `fax`, `logo`, `email_logo`, `favicon`, `google_analytics`, `item_per_page_front`, `item_per_page_back`, `default_sort`, `social_google_plus`, `social_facebook`, `social_instagram`, `social_twitter`, `social_linkedin`, `created_at`, `updated_at`, `is_lang`, `from_email`, `from_name`, `login_screen`, `register_screen`, `web_server_key`, `pushy_api_token`, `footer_logo`) VALUES
(1, 'setting', 'Almal', 'Almal', 'almal', 'almal', 'almal', 'almal', 'Al-Mirqab, Khalid ibn Al-Waleed Street Mazaya Tower 3, Floor 12', 'almal', 'almal@alamal.com.kw', '+965 2225 4800', '(+965) 24829937', '(+965) 24829927', 'settings-logo-6a76da3b2622eceff1595d92d010b23c.png', 'settings-email_logo-6a76da3b2622eceff1595d92d010b23c.png', 'settings-favicon-6a76da3b2622eceff1595d92d010b23c.png', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-189104010-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-189104010-1\');\r\n</script>', 50, 50, 'ASC', 'https://plus.google.com/', 'https://www.facebook.com/', 'https://instagram.com/', 'https://twitter.com/', 'https://www.linkedin.com/', '2020-02-17 04:19:31', '2022-02-10 05:34:18', 1, 'Info@almal.app', 'almal.com', 'login-527d7b7b749c9e5b35c13e9ca68ed93e.jpg', 'reg-527d7b7b749c9e5b35c13e9ca68ed93e.jpg', 'AAAA4tbNJRE:APA91bF7bgn3X2ZiyrLl07ITWlM3ynpnflZO1nMDiJxI172Eu9Py6JnzjHqWnisslsk6-RBRdrcY7pMhWczWe5RKeiKoCD5CF7ms6qGzIcg0M8uHXsvLPSt2OXH3t5xX986cFEFZ0B9X', NULL, 'settings-footer_logo-6a76da3b2622eceff1595d92d010b23c.png');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_single_pages`
--

CREATE TABLE `gwc_single_pages` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details_en` text NOT NULL,
  `details_ar` text NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_single_pages`
--

INSERT INTO `gwc_single_pages` (`id`, `title_en`, `title_ar`, `slug`, `details_en`, `details_ar`, `images`, `display_order`, `is_active`, `name`, `created_at`, `updated_at`) VALUES
(12, 'Our Business', 'Our Business', 'our-business', '<p><span style=\"color: #888490; font-family: Lora, serif; font-size: 16.002px; font-style: italic; letter-spacing: 0.32004px; text-align: center; background-color: #fafafa;\">Al Mal provides variety of services through its Corporate Finance department, which includes</span></p>', '<p><span dir=\"RTL\" lang=\"FA\" style=\"font-size: 11.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: FA;\">تقدم شركة المال خدمات متنوعة من خلال قسم تمويل الشركات ، والذي يشمل</span></p>', NULL, 1, 1, 'services', '2021-11-28 07:13:22', '2022-02-08 06:17:04'),
(13, 'News & Events', 'News & Events', 'news-events', '<p><span style=\"color: #888490; font-family: Lora, serif; font-size: 16.002px; font-style: italic; letter-spacing: 0.32004px; text-align: center; background-color: #ffffff;\">Al-Mal Investment stock skyrocketed on Wednesday,</span><br style=\"color: #888490; font-family: Lora, serif; font-size: 16.002px; font-style: italic; letter-spacing: 0.32004px; text-align: center; background-color: #ffffff;\" /><span style=\"color: #888490; font-family: Lora, serif; font-size: 16.002px; font-style: italic; letter-spacing: 0.32004px; text-align: center; background-color: #ffffff;\">powered by announcing better-than-expected financial results for the first half of 2015</span></p>', '<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"FA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;\">إرتفع سهم شركة المال الإستثمارية يوم الأربعاء ،</span></p>\r\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"FA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;\">مدعوم بالإعلان عن نتائج مالية أفضل من المتوقع للنصف الأول من عام 2015</span></p>', NULL, 2, 1, 'news_events', '2021-11-28 07:46:00', '2022-02-08 06:17:40'),
(14, 'Subsidiaries & Associates', 'Subsidiaries & Associates', 'subsidiaries-associates', '<p><span style=\"color: #888490; font-family: Lora, serif; font-size: 16.002px; font-style: italic; letter-spacing: 0.32004px; text-align: center; background-color: #fafafa;\">Meet some of the most successful clients assisted by our specialists. Contact our</span><br style=\"color: #888490; font-family: Lora, serif; font-size: 16.002px; font-style: italic; letter-spacing: 0.32004px; text-align: center; background-color: #fafafa;\" /><span style=\"color: #888490; font-family: Lora, serif; font-size: 16.002px; font-style: italic; letter-spacing: 0.32004px; text-align: center; background-color: #fafafa;\">managers for more information about partnership.</span></p>', '<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"FA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;\">تعرف على مجموعة من العملاء الأكثر نجاحًا بمعاونة خبرائنا. اتصل بنا</span></p>\r\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"FA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;\">للمدراء ولمزيد من المعلومات حول الشراكة.</span></p>', NULL, 3, 1, 'subsidiaries_associates', '2021-11-28 07:46:37', '2022-02-08 06:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_sms`
--

CREATE TABLE `gwc_sms` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `knet_en` text NOT NULL,
  `knet_ar` text NOT NULL,
  `knet_active` tinyint(1) NOT NULL,
  `cod_en` text NOT NULL,
  `cod_ar` text NOT NULL,
  `cod_active` tinyint(1) NOT NULL,
  `track_order_en` text NOT NULL,
  `track_order_ar` text NOT NULL,
  `track_order_active` tinyint(1) NOT NULL,
  `outofstock_en` text NOT NULL,
  `outofstock_ar` text NOT NULL,
  `outofstock_active` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gwc_sms`
--

INSERT INTO `gwc_sms` (`id`, `user_id`, `api_key`, `sender_name`, `knet_en`, `knet_ar`, `knet_active`, `cod_en`, `cod_ar`, `cod_active`, `track_order_en`, `track_order_ar`, `track_order_active`, `outofstock_en`, `outofstock_ar`, `outofstock_active`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 66444569, '4df40a67851392d1c00820118049c6ac', 'theboxlab', 'Thank you.\r\nYour order has been received. Your order will be delivered within 24 hours - 48 hours', 'شكرا لقد تم استلام طلبك.\r\nسيتم توصيل طلبك خلال 24 ساعة -48 ساعة', 1, 'Thank you.\r\nYour order has been received. Your order will be delivered within 24 hours - 48 hours', 'شكرا لقد تم استلام طلبك.\r\nسيتم توصيل طلبك خلال 24 ساعة -48 ساعة', 1, 'Your order status is updated . \r\nwww.kash5astore.com', 'تم تحديث حالة طلبك.\r\nwww.kash5astore.com', 1, 'We have updated the quantity of the item which was not available.\r\nvisit kash5astore.com to view updated items', 'We have updated the quantity of the item which was not available.\r\nvisit kash5astore.com to view updated items', 1, 1, '2021-10-31 07:11:29', '2021-07-13 05:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_subjects`
--

CREATE TABLE `gwc_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gwc_subjects`
--

INSERT INTO `gwc_subjects` (`id`, `title_ar`, `title_en`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'subject 1', 'subject 1', 1, 1, '2021-07-04 14:39:13', '2021-12-10 00:32:28'),
(2, 'subject2', 'subject2', 1, 2, '2021-12-10 00:32:24', '2021-12-10 00:32:24'),
(3, 'sub 3', 'sub 3', 1, 3, '2022-02-09 11:41:49', '2022-02-09 11:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `gwc_transactions`
--

CREATE TABLE `gwc_transactions` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `paymentid` varchar(255) NOT NULL,
  `presult` varchar(25) NOT NULL,
  `postdate` varchar(15) NOT NULL,
  `tranid` varchar(50) NOT NULL,
  `auth` varchar(50) NOT NULL,
  `ref` varchar(50) NOT NULL,
  `trackid` varchar(50) NOT NULL,
  `udf1` varchar(255) NOT NULL,
  `udf2` varchar(255) NOT NULL,
  `udf3` varchar(255) NOT NULL,
  `udf4` varchar(255) NOT NULL,
  `udf5` varchar(255) NOT NULL,
  `error_text` varchar(50) NOT NULL,
  `error` varchar(50) NOT NULL,
  `avr` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'notpaid',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gwc_users`
--

CREATE TABLE `gwc_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `block` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avenue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter` tinyint(4) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `password_token` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gwc_web_device_register`
--

CREATE TABLE `gwc_web_device_register` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_push_active` tinyint(1) NOT NULL DEFAULT 0,
  `device_type` enum('web','ios','android') COLLATE utf8mb4_unicode_ci DEFAULT 'web',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gwc_web_push_message`
--

CREATE TABLE `gwc_web_push_message` (
  `id` int(11) NOT NULL,
  `title` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `large_image_url` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_image_url` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `badge_image_url` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment` enum('auto','rtl','ltr') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_for` enum('mobile','web') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `how_it_works`
--

CREATE TABLE `how_it_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `display_number` int(11) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_it_works`
--

INSERT INTO `how_it_works` (`id`, `display_number`, `step`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'howitworks-image-9f597675ad97f5a2d07f6feee08b981a.png', '2021-09-25 08:59:19', '2021-09-25 11:11:17'),
(2, 1, 2, 'howitworks-image-0451f60744ffabf466e01717ba7ce3b6.png', '2021-09-25 09:00:14', '2021-09-25 11:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `how_it_work_translations`
--

CREATE TABLE `how_it_work_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `how_it_work_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_it_work_translations`
--

INSERT INTO `how_it_work_translations` (`id`, `how_it_work_id`, `locale`, `title`, `sub_title`, `description`) VALUES
(1, 1, 'en', 'How can I book a service?', 'First STEP', 'Go to the home page\r\nselect category.'),
(2, 1, 'ar', 'یشسیشی', 'شسیشسی', 'شسیش'),
(3, 2, 'en', 'How can I book a service?', 'Second STEP', 'Choose freelancer name\r\nand service name.'),
(4, 2, 'ar', 'یشسی', 'یشسی', 'شسیسشی');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title_en`, `title_ar`, `details_en`, `details_ar`, `created_at`, `updated_at`) VALUES
(6, 'test23', 'test23', '<p>test23</p>', '<p>test23</p>', '2021-12-08 08:53:53', '2022-02-06 11:59:31'),
(7, 'test1', 'dawd', '<p>dawd</p>', '<p>awd</p>', '2022-02-06 11:59:17', '2022-02-06 11:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `key`, `dir`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'ltr', '', NULL, NULL),
(2, 'Arabic', 'ar', 'rtl', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(190, '2014_10_12_000000_create_users_table', 1),
(191, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(192, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(193, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(194, '2016_06_01_000004_create_oauth_clients_table', 1),
(195, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(196, '2021_07_06_065629_create_categories_table', 1),
(197, '2021_08_23_142237_create_category_translations_table', 1),
(198, '2021_08_24_062746_create_languages_table', 1),
(199, '2021_08_24_080823_create_blogs_table', 1),
(200, '2021_08_24_091004_create_blog_categories_table', 1),
(201, '2021_08_24_133225_create_blog_translations_table', 1),
(202, '2021_09_08_125941_create_attributes_table', 1),
(203, '2021_09_08_140830_create_attr_groups_table', 1),
(204, '2021_09_08_140925_create_products_table', 1),
(205, '2021_09_08_163004_create_product_translations_table', 1),
(206, '2021_09_08_163327_create_category_product_table', 1),
(207, '2021_09_12_114401_create_category_blogs_table', 1),
(208, '2021_09_12_115641_create_category_blog_translations_table', 1),
(209, '2021_09_20_063005_create_filters_table', 1),
(210, '2021_09_20_063211_create_filter_product_table', 1),
(211, '2021_09_27_082217_create_addresses_table', 1),
(212, '2021_10_05_081237_create_shippings_table', 1),
(213, '2021_10_05_093441_create_shipping_translations_table', 1),
(215, '2021_07_10_140925_create_products_table', 2),
(216, '2021_10_05_093442_create_rates_table', 2),
(217, '2021_10_05_093443_create_freelancers_table', 2),
(218, '2021_09_20_102703_create_slideshows_table', 3),
(219, '2021_10_06_102703_create_slideshows_table', 4),
(220, '2021_09_20_141727_create_freelancer_services_table', 5),
(221, '2021_09_22_125630_create_packages_table', 6),
(224, '2021_09_25_115117_create_how_it_works_table', 7),
(225, '2021_09_25_115330_create_how_it_work_translations_table', 7),
(226, '2021_10_03_130138_user_freelancer', 8),
(227, '2021_10_04_090339_create_user_orders_table', 9),
(228, '2021_10_04_093401_create_user_payments_table', 9),
(229, '2021_11_23_115530_single_page_menu', 10),
(230, '2021_11_27_145230_create_corporate_overviews_table', 11),
(231, '2021_11_29_153531_create_quick_links_table', 12),
(232, '2021_12_01_115108_create_education_finances_table', 13),
(233, '2021_12_02_111842_create_annual_reports_table', 14),
(234, '2021_12_04_102112_create_jobs_table', 15),
(235, '2021_12_04_155001_create_quarterly_reports_table', 16),
(236, '2021_12_05_124740_create_disclosures_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Admin', 1),
(4, 'App\\Admin', 6);

-- --------------------------------------------------------

--
-- Table structure for table `news_tbl`
--

CREATE TABLE `news_tbl` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `description_ar` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `type` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `news_tbl`
--

INSERT INTO `news_tbl` (`id`, `category_id`, `title_en`, `title_ar`, `slug`, `description_en`, `description_ar`, `images`, `display_order`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(6, 48, 'Al-Mal soars to 1-yr high as financials beat fcasts', 'ارتفعت قيمة المال إلى أعلى مستوى في عام بفوز الماليين على المذيعين', 'al-mal-soars-to-1-yr-high-as-financials-beat-fcasts-1', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">Al-Mal Investment stock skyrocketed on Wednesday, powered by announcing better-than-expected financial results for the first half of 2015.</span></span></p>', '<p>قفز سهم المال للاستثمار يوم الأربعاء مدعوما بالإعلان عن نتائج مالية أفضل من المتوقع للنصف الأول من عام 2015.</p>\r\n<p>&nbsp;</p>\r\n<p>بحلول الساعة 11:30 بتوقيت الكويت ، قفز السهم 5.7٪ - وهو أكبر مكاسب ليوم واحد في سبعة أشهر - ليصل إلى 46 فلساً. أعلى مستو', 'f049a9945006d19b7c945b503a029fda9065054.jpg', 1, 1, 'NEWS', '2021-12-12 08:00:50', '2021-12-12 07:30:50'),
(7, 48, 'ABK buys 5.15% stake in Al Mal Investment – report', 'تقرير: البنك الأهلي الكويتي يشتري 5.15٪ اسهم في شركة المال للاستثمار', 'abk-buys-515-stake-in-al-mal-investment-report-1', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">Kuwait Stock Exchange showed a number of changes in equity ownership by the end of Wednesday&rsquo;s trading session.</span></span></p>', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">أظهرت سوق الكويت للأوراق المالية عددًا من التغييرات في ملكية الأسهم بنهاية جلسة تداول يوم الأربعاء.</span></span></p>', 'b81e4a50f70df33646e8d9290e16aac81691944.jpg', 2, 1, 'EVENT', '2022-02-09 12:43:57', '2022-02-09 12:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `order_track` varchar(255) NOT NULL,
  `package_id` bigint(20) NOT NULL,
  `freelancer_id` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_track`, `package_id`, `freelancer_id`, `amount`, `order_status`, `payment_status`, `status`, `payment_id`, `result`, `error`, `created_at`, `updated_at`) VALUES
(1, '81258898', 1, '11', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-02 12:57:34'),
(2, '40577953', 1, '11', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-03 05:26:11'),
(3, '40763526', 1, '11', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-03 05:29:25'),
(4, '42129434', 1, '11', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-03 05:52:04'),
(5, '42946432', 1, '11', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-03 06:05:44'),
(6, '42958385', 1, '11', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-03 06:05:59'),
(7, '43018357', 1, '11', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-03 06:06:55'),
(8, '43155786', 1, '11', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-03 06:09:18'),
(9, '43175827', 1, '11', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-03 06:09:34'),
(10, '43635188', 1, '11', 100, 'pending', 'notpaid', '0', '100202127678170961', 'NOT CAPTURED', 'Transaction Failed', '2021-10-31 07:11:30', '2021-10-03 07:58:31'),
(11, '44668969', 1, '11', 100, 'failed', 'notpaid', '', '100202127677658852', 'NOT CAPTURED', 'Transaction Failed', '2021-10-31 07:11:30', '2021-10-03 07:26:59'),
(12, '47857856', 2, '11', 150, 'success', 'paid', '', '100202127676061352', 'CAPTURED', 'Transaction Success', '2021-10-31 07:11:30', '2021-10-03 07:29:07'),
(13, '26371451', 4, '16', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-06 12:49:38'),
(14, '26613724', 1, '16', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-06 12:53:34'),
(15, '27799901', 1, '16', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-06 13:13:17'),
(16, '28152012', 1, '16', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-06 13:19:12'),
(17, '01267196', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 09:37:46'),
(18, '01835844', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 09:47:11'),
(19, '01876018', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 09:47:58'),
(20, '02067562', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 09:51:02'),
(21, '02124070', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 09:52:02'),
(22, '02189518', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 09:53:07'),
(23, '02191496', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 09:53:18'),
(24, '02252354', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 09:54:14'),
(25, '02284968', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 09:54:49'),
(26, '02771291', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 10:02:58'),
(27, '03026629', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 10:07:00'),
(28, '03222560', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 10:10:20'),
(29, '03389274', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 10:13:05'),
(30, '03536679', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 10:15:31'),
(31, '03599967', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 10:16:39'),
(32, '03718386', 1, '17', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-07 10:18:34'),
(33, '04112042', 1, '17', 100, 'success', 'paid', '1', '100202128097928921', 'CAPTURED', 'Transaction Success', '2021-10-31 07:11:30', '2021-10-07 10:27:09'),
(34, '13341105', 1, '20', 100, 'failed', 'notpaid', '0', '100202128006688144', 'NOT CAPTURED', 'Transaction Failed', '2021-10-31 07:11:30', '2021-10-07 12:59:43'),
(35, '13392044', 1, '20', 100, 'success', 'paid', '1', '100202128093292573', 'CAPTURED', 'Transaction Success', '2021-10-31 07:11:30', '2021-10-07 13:00:30'),
(36, '59196870', 1, '25', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-10 09:16:39'),
(37, '59274238', 1, '25', 100, 'pending', 'notpaid', NULL, NULL, NULL, NULL, '2021-10-31 07:11:30', '2021-10-10 09:17:55'),
(38, '74961447', 6, '26', 30, 'success', 'paid', '1', '100202128362506203', 'CAPTURED', 'Transaction Success', '2021-10-31 07:11:30', '2021-10-10 13:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(191,2) NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `duration_title`, `price`, `duration`, `description`, `created_at`, `updated_at`) VALUES
(1, 'plan A', '1 MONTH', 100.00, '30', '1 MONTH', '2021-09-22 10:08:14', '2021-09-28 09:30:39'),
(2, 'Plan B', '2 Month', 150.00, '60', '', '2021-09-22 10:14:03', '2021-09-28 09:31:08'),
(4, 'golden pack2', '32days', 10.00, '32', 'golden packgolden packgolden pack2', '2021-10-06 11:18:40', '2021-10-06 13:08:48'),
(6, 'kk pack', '1 year', 30.00, '365', 'test7000test7000test7000test7000test7000test7000', '2021-10-10 08:21:22', '2021-10-10 13:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'roles-list', 'admin', 3, '2020-02-03 12:35:28', '2020-02-03 12:35:28'),
(2, 'roles-create', 'admin', 3, '2020-02-03 12:35:28', '2020-02-03 12:35:28'),
(3, 'roles-edit', 'admin', 3, '2020-02-03 12:35:28', '2020-02-03 12:35:28'),
(4, 'roles-delete', 'admin', 3, '2020-02-03 12:35:28', '2020-02-03 12:35:28'),
(5, 'menu-list', 'admin', 0, '2020-02-03 12:35:29', '2020-02-03 12:35:29'),
(6, 'menu-create', 'admin', 0, '2020-02-03 12:35:29', '2020-02-03 12:35:29'),
(7, 'menu-edit', 'admin', 0, '2020-02-03 12:35:29', '2020-02-03 12:35:29'),
(8, 'menu-delete', 'admin', 0, '2020-02-03 12:35:29', '2020-02-03 12:35:29'),
(15, 'settings-edit', 'admin', 5, '2020-03-30 12:51:18', '2020-03-30 12:51:18'),
(17, 'logs-list', 'admin', 4, '2020-03-16 12:45:05', '2020-03-16 12:45:05'),
(18, 'logs-list-self-only', 'admin', 4, '2020-03-16 12:45:56', '2020-03-16 12:45:56'),
(19, 'logs-delete', 'admin', 4, '2020-03-16 12:45:13', '2020-03-16 12:45:13'),
(20, 'aboutus-edit', 'admin', 17, '2021-05-18 05:36:37', '2021-05-18 05:36:37'),
(25, 'webpush-list', 'admin', 9, '2021-02-08 07:03:49', '2021-02-08 07:03:49'),
(26, 'webpush-create', 'admin', 9, '2021-02-08 07:03:49', '2021-02-08 07:03:49'),
(27, 'webpush-edit', 'admin', 9, '2021-02-08 07:04:04', '2021-02-08 07:04:04'),
(28, 'webpush-delete', 'admin', 9, '2021-02-08 07:04:04', '2021-02-08 07:04:04'),
(37, 'slideshows-list', 'admin', 12, '2020-04-04 05:44:14', '2020-04-04 05:44:14'),
(38, 'slideshows-create', 'admin', 12, '2021-05-26 09:43:44', '2021-05-26 09:43:44'),
(39, 'slideshows-edit', 'admin', 12, '2020-04-04 05:44:18', '2020-04-04 05:44:18'),
(40, 'slideshows-delete', 'admin', 12, '2020-04-04 05:44:09', '2020-04-04 05:44:09'),
(69, 'subjects-list', 'admin', 8, '2020-02-29 04:56:11', '2020-02-29 04:56:11'),
(70, 'subjects-create', 'admin', 8, '2020-02-29 04:56:01', '2020-02-29 04:56:01'),
(71, 'subjects-edit', 'admin', 8, '2021-05-26 10:28:20', '2021-05-26 10:28:20'),
(72, 'subjects-delete', 'admin', 8, '2020-02-29 04:56:21', '2020-02-29 04:56:21'),
(76, 'career-list', 'admin', 0, '2021-05-17 11:09:17', '2021-05-17 11:09:17'),
(77, 'career-view', 'admin', 0, '2021-05-17 11:09:17', '2021-05-17 11:09:17'),
(78, 'career-delete', 'admin', 0, '2021-05-17 11:09:33', '2021-05-17 11:09:33'),
(241, 'notifyemails-list', 'admin', 6, '2021-07-04 10:08:34', '2021-07-04 10:08:34'),
(242, 'notifyemails-create', 'admin', 6, '2021-07-04 10:08:34', '2021-07-04 10:08:34'),
(243, 'notifyemails-edit', 'admin', 6, '2021-07-04 10:08:51', '2021-07-04 10:08:51'),
(244, 'notifyemails-delete', 'admin', 6, '2021-07-04 10:08:51', '2021-07-04 10:08:51'),
(245, 'messages-list', 'admin', 7, '2021-07-04 12:02:25', '2021-07-04 12:02:25'),
(246, 'messages-view', 'admin', 7, '2021-07-04 12:02:35', '2021-07-04 12:02:35'),
(247, 'messages-delete', 'admin', 7, '2021-07-04 12:02:47', '2021-07-04 12:02:47'),
(253, 'singlepages-list', 'admin', 11, '2021-07-05 12:00:53', '2021-07-05 12:00:53'),
(254, 'singlepages-create', 'admin', 11, '2021-07-05 12:01:09', '2021-07-05 12:01:09'),
(255, 'singlepages-edit', 'admin', 11, '2021-07-05 12:01:23', '2021-07-05 12:01:23'),
(256, 'singlepages-delete', 'admin', 11, '2021-07-05 12:01:38', '2021-07-05 12:01:38'),
(257, 'areas-list', 'admin', 15, '2021-07-06 11:40:52', '2021-07-06 11:40:52'),
(258, 'areas-create', 'admin', 15, '2021-07-06 11:41:06', '2021-07-06 11:41:06'),
(259, 'areas-edit', 'admin', 15, '2021-07-06 11:41:18', '2021-07-06 11:41:18'),
(260, 'areas-delete', 'admin', 15, '2021-07-06 11:41:33', '2021-07-06 11:41:33'),
(261, 'cities-list', 'admin', 14, '2021-07-06 11:58:13', '2021-07-06 11:58:13'),
(262, 'cities-create', 'admin', 14, '2021-07-06 11:58:26', '2021-07-06 11:58:26'),
(263, 'cities-edit', 'admin', 14, '2021-07-06 11:58:38', '2021-07-06 11:58:38'),
(264, 'cities-delete', 'admin', 14, '2021-07-06 11:58:51', '2021-07-06 11:58:51'),
(265, 'countries-list', 'admin', 13, '2021-07-10 09:05:04', '2021-07-10 09:05:04'),
(266, 'countries-create', 'admin', 13, '2021-07-10 09:05:15', '2021-07-10 09:05:15'),
(267, 'countries-edit', 'admin', 13, '2021-07-10 09:05:27', '2021-07-10 09:05:27'),
(268, 'countries-delete', 'admin', 13, '2021-07-10 09:05:38', '2021-07-10 09:05:38'),
(269, 'admins-list', 'admin', 1, '2021-07-10 09:06:00', '2021-07-10 09:06:00'),
(270, 'admins-view', 'admin', 1, '2021-07-10 09:06:17', '2021-07-10 09:06:17'),
(271, 'admins-create', 'admin', 1, '2021-07-10 09:06:30', '2021-07-10 09:06:30'),
(272, 'admins-edit', 'admin', 1, '2021-07-10 09:06:44', '2021-07-10 09:06:44'),
(273, 'admins-delete', 'admin', 1, '2021-07-10 09:07:01', '2021-07-10 09:07:01'),
(274, 'admins-changepass', 'admin', 1, '2021-07-10 11:01:19', '2021-07-10 11:01:19'),
(275, 'users-list', 'admin', 2, '2021-07-12 05:00:38', '2021-07-12 05:00:38'),
(276, 'users-create', 'admin', 2, '2021-07-12 05:00:50', '2021-07-12 05:00:50'),
(277, 'users-view', 'admin', 2, '2021-07-12 05:01:04', '2021-07-12 05:01:04'),
(278, 'users-edit', 'admin', 2, '2021-07-12 05:01:14', '2021-07-12 05:01:14'),
(279, 'users-delete', 'admin', 2, '2021-07-12 05:01:25', '2021-07-12 05:01:25'),
(280, 'users-changepass', 'admin', 2, '2021-07-12 05:01:37', '2021-07-12 05:01:37'),
(281, 'durations-list', 'admin', 16, '2021-07-12 11:17:27', '2021-07-12 11:17:27'),
(282, 'durations-create', 'admin', 16, '2021-07-12 11:17:40', '2021-07-12 11:17:40'),
(283, 'durations-edit', 'admin', 16, '2021-07-12 11:17:56', '2021-07-12 11:17:56'),
(284, 'durations-delete', 'admin', 16, '2021-07-12 11:18:23', '2021-07-12 11:18:23'),
(285, 'sms-edit', 'admin', 10, '2021-07-13 05:49:07', '2021-07-13 05:49:07'),
(286, 'packages-list', 'admin', 18, '2021-07-17 05:10:55', '2021-07-17 05:10:55'),
(287, 'packages-create', 'admin', 18, '2021-07-17 05:11:13', '2021-07-17 05:11:13'),
(288, 'packages-edit', 'admin', 18, '2021-07-17 05:11:28', '2021-07-17 05:11:28'),
(289, 'packages-delete', 'admin', 18, '2021-07-17 05:11:45', '2021-07-17 05:11:45'),
(290, 'packagegalleries-list', 'admin', 19, '2021-07-18 12:09:06', '2021-07-18 12:09:06'),
(291, 'packagegalleries-create', 'admin', 19, '2021-07-18 12:10:08', '2021-07-18 12:10:08'),
(292, 'packagegalleries-edit', 'admin', 19, '2021-07-18 12:10:21', '2021-07-18 12:10:21'),
(293, 'packagegalleries-delete', 'admin', 19, '2021-07-18 12:10:33', '2021-07-18 12:10:33'),
(294, 'coupons-list', 'admin', 20, '2021-07-19 06:02:36', '2021-07-19 06:02:36'),
(295, 'coupons-create', 'admin', 20, '2021-07-19 06:03:35', '2021-07-19 06:03:35'),
(296, 'coupons-edit', 'admin', 20, '2021-07-19 06:05:05', '2021-07-19 06:05:05'),
(297, 'coupons-delete', 'admin', 20, '2021-07-19 06:05:19', '2021-07-19 06:05:19'),
(298, 'orders-list', 'admin', 21, '2021-07-20 05:36:43', '2021-07-20 05:36:43'),
(299, 'orders-view', 'admin', 21, '2021-07-20 05:36:43', '2021-07-20 05:36:43'),
(300, 'orders-print', 'admin', 21, '2021-07-31 05:04:25', '2021-07-31 05:04:25'),
(301, 'orders-edit', 'admin', 21, '2021-07-31 05:04:43', '2021-07-31 05:04:43'),
(302, 'orders-delete', 'admin', 21, '2021-07-31 05:05:00', '2021-07-31 05:05:00'),
(303, 'transactions-list', 'admin', 22, '2021-08-15 12:30:07', '2021-08-15 12:30:07'),
(304, 'transactions-view', 'admin', 22, '2021-08-15 12:30:20', '2021-08-15 12:30:20'),
(305, 'transactions-print', 'admin', 22, '2021-08-15 12:30:37', '2021-08-15 12:30:37'),
(306, 'transactions-edit', 'admin', 22, '2021-08-15 12:31:00', '2021-08-15 12:31:00'),
(307, 'transactions-delete', 'admin', 22, '2021-08-15 12:31:13', '2021-08-15 12:31:13'),
(308, 'categories-list', 'admin', 23, '2021-09-11 10:37:06', '2021-09-11 10:37:06'),
(309, 'categories-create', 'admin', 23, '2021-09-11 10:38:14', '2021-09-11 10:38:14'),
(310, 'categories-edit', 'admin', 23, '2021-09-11 10:38:27', '2021-09-11 10:38:27'),
(311, 'categories-delete', 'admin', 23, '2021-09-11 10:38:42', '2021-09-11 10:38:42'),
(312, 'attributes-list', 'admin', 24, '2021-09-11 10:37:06', '2021-09-11 10:37:06'),
(313, 'attributes-create', 'admin', 24, '2021-09-11 10:38:14', '2021-09-11 10:38:14'),
(314, 'attributes-edit', 'admin', 24, '2021-09-11 10:38:27', '2021-09-11 10:38:27'),
(315, 'attributes-delete', 'admin', 24, '2021-09-11 10:38:42', '2021-09-11 10:38:42'),
(316, 'attribute-groups-list', 'admin', 25, '2021-09-13 05:42:40', '2021-09-13 05:42:40'),
(317, 'attribute-groups-edit', 'admin', 25, '2021-09-13 05:42:45', '2021-09-13 05:42:45'),
(318, 'attribute-groups-create', 'admin', 25, '2021-09-13 05:43:40', '2021-09-13 05:42:45'),
(319, 'attribute-groups-delete', 'admin', 25, '2021-09-13 05:43:40', '2021-09-13 05:42:45'),
(320, 'products-list', 'admin', 26, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(321, 'products-edit', 'admin', 26, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(322, 'products-create', 'admin', 26, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(323, 'products-delete', 'admin', 26, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(324, 'address-list', 'admin', 26, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(325, 'address-edit', 'admin', 26, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(326, 'address-create', 'admin', 26, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(327, 'address-delete', 'admin', 26, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(328, 'freelancers-list', 'admin', 27, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(329, 'freelancers-edit', 'admin', 27, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(330, 'freelancers-create', 'admin', 27, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(331, 'freelancers-delete', 'admin', 27, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(332, 'slideshows-list', 'admin', 28, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(333, 'slideshows-edit', 'admin', 28, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(334, 'slideshows-create', 'admin', 28, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(335, 'slideshows-delete', 'admin', 28, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(336, 'packages-list', 'admin', 29, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(337, 'packages-edit', 'admin', 29, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(338, 'packages-create', 'admin', 29, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(339, 'packages-delete', 'admin', 29, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(340, 'howitworks-list', 'admin', 29, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(341, 'howitworks-edit', 'admin', 29, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(342, 'howitworks-create', 'admin', 29, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(343, 'howitworks-delete', 'admin', 29, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(344, 'wishlist-list', 'admin', 30, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(345, 'wishlist-edit', 'admin', 30, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(346, 'wishlist-delete', 'admin', 30, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(347, 'wishlist-create', 'admin', 30, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(348, 'user-orders-create', 'admin', 31, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(349, 'user-orders-edit', 'admin', 31, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(350, 'user-orders-delete', 'admin', 31, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(351, 'user-orders-list', 'admin', 31, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(352, 'user-payments-create', 'admin', 32, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(353, 'user-payments-edit', 'admin', 32, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(354, 'user-payments-delete', 'admin', 32, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(355, 'user-payments-list', 'admin', 32, '2021-09-13 11:00:07', '2021-09-13 11:00:07'),
(356, 'services-list', 'admin', 33, '2021-10-22 19:39:55', '2021-10-22 19:39:55'),
(357, 'services-create', 'admin', 33, '2021-10-22 19:39:55', '2021-10-22 19:39:55'),
(358, 'services-edit', 'admin', 33, '2021-10-22 19:39:55', '2021-10-22 19:39:55'),
(359, 'services-delete', 'admin', 33, '2021-10-22 19:39:55', '2021-10-22 19:39:55'),
(360, 'privacys-list', 'admin', 34, '2021-10-25 13:16:22', '2021-10-25 13:16:22'),
(361, 'privacys-create', 'admin', 34, '2021-10-25 13:16:22', '2021-10-25 13:16:22'),
(362, 'privacys-edit', 'admin', 34, '2021-10-25 13:16:22', '2021-10-25 13:16:22'),
(363, 'privacys-delete', 'admin', 34, '2021-10-25 13:16:22', '2021-10-25 13:16:22'),
(364, 'contactsinformations-list', 'admin', 35, '2021-10-26 10:16:45', '2021-10-26 10:16:45'),
(365, 'contactsinformations-edit', 'admin', 35, '2021-10-26 10:16:45', '2021-10-26 10:16:45'),
(366, 'subsidiaries-list', 'admin', 36, '2021-10-27 07:58:53', '2021-10-27 07:58:53'),
(367, 'subsidiaries-create', 'admin', 36, '2021-10-27 07:58:53', '2021-10-27 07:58:53'),
(368, 'subsidiaries-edit', 'admin', 36, '2021-10-27 07:58:53', '2021-10-27 07:58:53'),
(369, 'subsidiaries-delete', 'admin', 36, '2021-10-27 07:58:53', '2021-10-27 07:58:53'),
(370, 'possibilities-list', 'admin', 37, '2021-10-28 08:08:20', '2021-10-28 08:08:20'),
(371, 'possibilities-create', 'admin', 37, '2021-10-28 08:08:20', '2021-10-28 08:08:20'),
(372, 'possibilities-edit', 'admin', 37, '2021-10-28 08:08:20', '2021-10-28 08:08:20'),
(373, 'possibilities-delete', 'admin', 37, '2021-10-28 08:08:20', '2021-10-28 08:08:20'),
(374, 'news-list', 'admin', 38, '2021-11-01 11:42:02', '2021-11-01 11:42:02'),
(375, 'news-create', 'admin', 38, '2021-11-01 11:42:02', '2021-11-01 11:42:02'),
(376, 'news-edit', 'admin', 38, '2021-11-01 11:42:02', '2021-11-01 11:42:02'),
(377, 'news-delete', 'admin', 38, '2021-11-01 11:42:02', '2021-11-01 11:42:02'),
(382, 'categorycountrey-list', 'admin', 39, '2021-11-01 12:12:56', '2021-11-01 12:12:56'),
(383, 'categorycountrey-create', 'admin', 39, '2021-11-01 12:12:56', '2021-11-01 12:12:56'),
(384, 'categorycountrey-edit', 'admin', 39, '2021-11-01 12:12:56', '2021-11-01 12:12:56'),
(385, 'categorycountrey-delete', 'admin', 39, '2021-11-01 12:12:56', '2021-11-01 12:12:56'),
(386, 'resumes-list', 'admin', 40, '2021-11-02 09:12:19', '2021-11-02 09:12:19'),
(387, 'resumes-create', 'admin', 40, '2021-11-02 09:12:19', '2021-11-02 09:12:19'),
(388, 'resumes-delete', 'admin', 40, '2021-11-02 09:12:19', '2021-11-02 09:12:19'),
(389, 'category-list', 'admin', 41, '2021-11-11 08:06:47', '2021-11-11 08:06:47'),
(390, 'category-create', 'admin', 41, '2021-11-11 08:06:47', '2021-11-11 08:06:47'),
(391, 'category-edit', 'admin', 41, '2021-11-11 08:06:47', '2021-11-11 08:06:47'),
(392, 'category-delete', 'admin', 41, '2021-11-11 08:06:47', '2021-11-11 08:06:47'),
(393, 'single-page-menu-list', 'admin', 42, '2021-11-14 12:11:08', '2021-11-14 12:11:08'),
(394, 'single-page-menu-create', 'admin', 42, '2021-11-14 12:11:08', '2021-11-14 12:11:08'),
(395, 'single-page-menu-edit', 'admin', 42, '2021-11-14 12:11:08', '2021-11-14 12:11:08'),
(396, 'single-page-menu-delete', 'admin', 42, '2021-11-14 12:11:08', '2021-11-14 12:11:08'),
(397, 'corporateoverview-list', 'admin', 43, '2021-11-27 12:11:01', '2021-11-27 12:11:01'),
(398, 'corporateoverview-edit', 'admin', 43, '2021-11-27 12:11:05', '2021-11-27 12:11:05'),
(399, 'corporateoverview-delete', 'admin', 43, '2021-11-27 12:11:27', '2021-11-27 12:11:27'),
(400, 'corporateoverview-create', 'admin', 43, '2021-11-27 12:11:37', '2021-11-27 12:11:37'),
(401, 'quicklinks-list', 'admin', 44, '2021-11-29 12:44:05', '2021-11-29 12:44:05'),
(402, 'quicklinks-edit', 'admin', 44, '2021-11-29 12:44:09', '2021-11-29 12:44:09'),
(403, 'quicklinks-delete', 'admin', 44, '2021-11-29 12:44:33', '2021-11-29 12:44:33'),
(404, 'quicklinks-create', 'admin', 44, '2021-11-29 12:44:45', '2021-11-29 12:44:45'),
(405, 'educations-list', 'admin', 45, '2021-12-01 09:49:56', '2021-12-01 09:49:56'),
(406, 'annual-reports-list', 'admin', 46, '2021-12-02 08:23:54', '2021-12-02 08:23:54'),
(407, 'annual-reports-delete', 'admin', 46, '2021-12-02 08:24:05', '2021-12-02 08:24:05'),
(408, 'annual-reports-edit', 'admin', 46, '2021-12-02 08:24:16', '2021-12-02 08:24:16'),
(409, 'annual-reports-create', 'admin', 46, '2021-12-02 08:24:29', '2021-12-02 08:24:29'),
(410, 'vacancies-create', 'admin', 47, '2021-12-04 07:28:03', '2021-12-04 07:28:03'),
(411, 'vacancies-delete', 'admin', 47, '2021-12-04 07:28:17', '2021-12-04 07:28:17'),
(412, 'vacancies-edit', 'admin', 47, '2021-12-04 07:28:26', '2021-12-04 07:28:26'),
(413, 'vacancies-list', 'admin', 47, '2021-12-04 07:29:39', '2021-12-04 07:29:39'),
(414, 'quarterly-reports-list', 'admin', 48, '2021-12-04 12:52:24', '2021-12-04 12:52:24'),
(415, 'quarterly-reports-create', 'admin', 48, '2021-12-04 12:52:39', '2021-12-04 12:52:39'),
(416, 'quarterly-reports-delete', 'admin', 48, '2021-12-04 12:52:51', '2021-12-04 12:52:51'),
(417, 'quarterly-reports-edit', 'admin', 48, '2021-12-04 12:53:07', '2021-12-04 12:53:07'),
(418, 'disclosures-list', 'admin', 49, '2021-12-05 09:50:22', '2021-12-05 09:50:22'),
(419, 'disclosures-edit', 'admin', 49, '2021-12-05 09:50:34', '2021-12-05 09:50:34'),
(420, 'disclosures-delete', 'admin', 49, '2021-12-05 09:50:46', '2021-12-05 09:50:46'),
(421, 'disclosures-create', 'admin', 49, '2021-12-05 09:50:48', '2021-12-05 09:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `title`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'Admins', 1, '2021-07-14 06:35:32', '2021-07-14 06:35:32'),
(2, 'Users', 2, '2021-07-14 06:36:07', '2021-07-14 06:36:07'),
(3, 'Roles', 3, '2021-07-14 06:38:07', '2021-07-14 06:38:07'),
(4, 'Logs', 4, '2021-07-14 06:39:26', '2021-07-14 06:39:26'),
(5, 'Settings', 5, '2021-07-14 06:42:45', '2021-07-14 06:42:45'),
(6, 'Notify Emails', 6, '2021-07-14 06:43:48', '2021-07-14 06:43:48'),
(7, 'Messages', 7, '2021-07-14 06:44:49', '2021-07-14 06:44:49'),
(8, 'Subjects', 8, '2021-07-14 06:45:35', '2021-07-14 06:45:35'),
(9, 'WebPush', 9, '2021-07-14 06:47:06', '2021-07-14 06:47:06'),
(10, 'SMS', 10, '2021-07-14 06:47:57', '2021-07-14 06:47:57'),
(11, 'Single Pages', 11, '2021-07-14 06:49:42', '2021-07-14 06:49:42'),
(12, 'SlideShows', 12, '2021-07-14 06:50:30', '2021-07-14 06:50:30'),
(13, 'Countries', 13, '2021-07-14 06:51:58', '2021-07-14 06:51:58'),
(14, 'Cities', 14, '2021-07-14 06:52:37', '2021-07-14 06:52:37'),
(15, 'Areas', 15, '2021-07-14 06:53:21', '2021-07-14 06:53:21'),
(16, 'Package Durations', 16, '2021-07-14 06:54:30', '2021-07-14 06:54:30'),
(17, 'About us', 17, '2021-07-14 06:55:14', '2021-07-14 06:55:14'),
(18, 'Packages', 18, '2021-07-17 05:10:45', '2021-07-17 05:10:45'),
(19, 'Package Galleries', 19, '2021-07-18 12:08:53', '2021-07-18 12:08:53'),
(20, 'Coupons', 20, '2021-07-19 06:02:28', '2021-07-19 06:02:28'),
(21, 'Orders', 21, '2021-07-20 05:36:00', '2021-07-20 05:36:00'),
(22, 'Transactions', 22, '2021-08-15 12:29:08', '2021-08-15 12:29:08'),
(23, 'Categories', 23, '2021-09-11 10:37:45', '2021-09-11 10:37:45'),
(24, 'Attributes', 24, '2021-09-12 11:35:27', '2021-09-12 11:35:27'),
(25, 'Attribute Groups', 25, '2021-09-13 05:44:53', '2021-09-13 05:44:53'),
(26, 'Products', 26, '2021-09-13 11:03:47', '2021-09-13 11:03:47'),
(27, 'Freelancer', 27, '2021-09-20 07:34:02', '2021-09-20 07:34:02'),
(28, 'Slideshows', 28, '2021-09-20 07:34:13', '2021-09-20 07:34:13'),
(33, 'Services', 33, '2021-10-22 19:36:44', '2021-10-22 19:36:44'),
(34, 'Privay Policy', 34, '2021-10-25 13:14:03', '2021-10-25 13:14:03'),
(35, 'Contact info', 35, '2021-10-26 10:14:59', '2021-10-26 10:14:59'),
(36, 'Subsidiaries and Associates', 36, '2021-10-27 07:15:14', '2021-10-27 07:15:14'),
(37, 'Possibilities', 37, '2021-10-28 08:01:28', '2021-10-28 08:01:28'),
(38, 'News', 38, '2021-11-01 10:02:25', '2021-11-01 10:02:25'),
(39, 'Category Country', 39, '2021-11-01 12:08:04', '2021-11-01 12:08:04'),
(40, 'Resume', 40, '2021-11-02 09:04:10', '2021-11-02 09:04:10'),
(41, 'Category', 41, '2021-11-11 07:59:22', '2021-11-11 07:59:22'),
(42, 'Single Page Menu', 42, '2021-11-14 12:07:54', '2021-11-14 12:07:54'),
(43, 'Corporate Overview', 43, '2021-11-27 12:14:05', '2021-11-27 12:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `possibilities`
--

CREATE TABLE `possibilities` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `display_order` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `description_en` text COLLATE utf8_persian_ci NOT NULL,
  `description_ar` text COLLATE utf8_persian_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'test22', 'test22', '<p>test222</p>', '<p>test2</p>', 1, '2021-12-08 10:03:00', '2021-12-08 09:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` bigint(20) NOT NULL,
  `final_price` bigint(20) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL DEFAULT 0,
  `best` tinyint(1) NOT NULL DEFAULT 0,
  `special_discount` tinyint(1) NOT NULL DEFAULT 0,
  `attr_id` int(10) UNSIGNED NOT NULL,
  `attr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `count_existing` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quarterly_reports`
--

CREATE TABLE `quarterly_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quarterly_reports`
--

INSERT INTO `quarterly_reports` (`id`, `title`, `image`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(5, 'test', 'quarterly-reports-image-792f53c0d327a18bc7bf5bdd800bdeda.docx', '1', '1', '2021-12-12 06:15:43', '2022-02-06 12:04:09'),
(6, 'dsadad', 'quarterly-reports-image-a6349087674400dedc63aa53930c54da.jpg', '1', '2', '2022-02-06 12:07:38', '2022-02-06 12:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `quick_links`
--

CREATE TABLE `quick_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_links`
--

INSERT INTO `quick_links` (`id`, `category_id`, `title_en`, `title_ar`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(8, 23, NULL, NULL, 1, 1, '2021-12-09 20:51:17', '2021-12-09 20:51:17'),
(9, 24, NULL, NULL, 2, 1, '2021-12-09 20:51:26', '2021-12-09 20:51:26'),
(10, 25, NULL, NULL, 3, 1, '2021-12-09 20:51:34', '2021-12-09 20:51:34'),
(11, 26, NULL, NULL, 4, 1, '2021-12-09 20:51:47', '2021-12-09 20:51:47'),
(12, 27, NULL, NULL, 5, 1, '2021-12-09 20:52:00', '2021-12-09 20:52:00'),
(13, 51, NULL, NULL, 6, 1, '2021-12-09 20:53:09', '2021-12-09 20:53:09'),
(14, 52, NULL, NULL, 7, 1, '2021-12-09 20:53:18', '2021-12-09 20:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number_people` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rate` double(8,2) NOT NULL DEFAULT 5.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `number_people`, `rate`, `created_at`, `updated_at`) VALUES
(1, 0, 5.00, '2021-09-20 04:56:19', '2021-09-20 04:56:19'),
(2, 0, 5.00, '2021-09-21 04:38:07', '2021-09-21 04:38:07'),
(3, 0, 5.00, '2021-09-21 07:39:04', '2021-09-21 07:39:04'),
(4, 0, 5.00, '2021-10-06 12:37:52', '2021-10-06 12:37:52'),
(5, 0, 5.00, '2021-10-06 12:39:50', '2021-10-06 12:39:50'),
(6, 0, 5.00, '2021-10-07 10:58:42', '2021-10-07 10:58:42'),
(7, 0, 5.00, '2021-10-07 12:08:08', '2021-10-07 12:08:08'),
(8, 0, 5.00, '2021-10-10 08:14:31', '2021-10-10 08:14:31'),
(9, 0, 5.00, '2021-10-10 08:16:55', '2021-10-10 08:16:55'),
(10, 0, 5.00, '2021-10-21 09:21:39', '2021-10-21 09:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2020-02-03 12:35:44', '2020-02-03 12:35:44'),
(4, 'test', 'admin', '2021-12-08 09:05:08', '2021-12-08 09:05:08'),
(5, 'top admin', 'admin', '2022-02-09 08:11:25', '2022-02-09 08:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(17, 1),
(18, 1),
(19, 1),
(15, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(285, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(20, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(388, 1),
(389, 1),
(390, 1),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(275, 4),
(280, 4),
(1, 4),
(242, 4),
(246, 4),
(71, 4),
(26, 4),
(389, 4),
(269, 5),
(270, 5),
(271, 5),
(272, 5),
(273, 5),
(274, 5),
(275, 5),
(276, 5),
(277, 5),
(278, 5),
(279, 5),
(280, 5),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(17, 5),
(18, 5),
(19, 5),
(15, 5),
(241, 5),
(242, 5),
(243, 5),
(244, 5),
(245, 5),
(246, 5),
(247, 5),
(69, 5),
(70, 5),
(71, 5),
(72, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(285, 5),
(253, 5),
(254, 5),
(255, 5),
(256, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(265, 5),
(266, 5),
(267, 5),
(268, 5),
(261, 5),
(262, 5),
(263, 5),
(264, 5),
(257, 5),
(258, 5),
(259, 5),
(260, 5),
(281, 5),
(282, 5),
(283, 5),
(284, 5),
(20, 5),
(286, 5),
(287, 5);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_en`, `title_ar`, `details_en`, `details_ar`, `icon`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(12, 'Corporate Finance', 'تمويل الشركات', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; text-align: center; background-color: #fafafa;\">Al Mal provides variety of services through its Corporate Finance department, which includes</span></p>', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; text-align: center; background-color: #fafafa;\">يقدم المال خدمات متنوعة من خلال قسم تمويل الشركات ، والذي يشمل</span></p>', 'services-icon-b7fc4ac908b9b317a87940c436f7039f.png', 1, 1, '2021-11-28 07:32:19', '2021-12-12 07:16:08'),
(13, 'Asset Management', 'إدارة الأصول', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; text-align: center; background-color: #fafafa;\">Al Mal\'s clients get access to a wide range of equity, fixed income, liquidity and alternative investment products through its Asset Management</span></p>', '<p>يمكن لعملاء المال الوصول إلى مجموعة واسعة من الأسهم والدخل الثابت والسيولة ومنتجات الاستثمار البديلة من خلال إدارة الأصول</p>', 'services-icon-c70163488933695067c7405c02566f3d.png', 1, 2, '2021-11-28 07:32:40', '2021-12-12 07:17:32'),
(14, 'Direct and Indirect Investment', 'الاستثمار المباشر وغير المباشر', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; text-align: center; background-color: #fafafa;\">Under the Direct and Indirect Investment sphere, Al Mal currently focuses on the following areas of interest</span></p>', '<p style=\"text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px; background-color: #fafafa;\">في إطار مجال الاستثمار المباشر وغير المباشر ، تركز المال حاليًا على مجالات الاهتمام التالية</span></span></p>', 'services-icon-3762656905d31a96ca14f003614d5640.png', 1, 3, '2021-11-28 07:33:00', '2022-02-10 06:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_translations`
--

CREATE TABLE `shipping_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `single_page_menu`
--

CREATE TABLE `single_page_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `single_page_menu`
--

INSERT INTO `single_page_menu` (`id`, `category_id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `header_image`, `image`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 23, 'Corporate Overview', 'نبذة عن الشركة', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">Established in early 1980, Al Mal Investment Company (KPSC) was listed on the Kuwait Stock Exchange in January 2002. The current issued and paid up capital of Al Mal is KD 31.02 Million.</span><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">Al Mal is an innovation-driven, forward-looking Investment Banking and Asset Management company that offers sustainable and attractive investment opportunities in both traditional and emerging portfolios. Its investment portfolio is geographically well diversified to offer maximized returns to investors. It caters to its clients through its many subsidiaries and affiliates spread across the world.</span><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">Al Mal is regulated by the Central Bank of Kuwait and the Capital Market Authority. It implements and adopts the highest level of ethical standards, internal controls and corporate governance practices.</span></p>', '<p style=\"text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">تأسست شركة المال للاستثمار في أوائل عام 1980، وقد تم إدراج أسهمها في سوق الكويت للأوراق المالية في يناير 2002 .</span></span></p>\r\n<p style=\"text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">يبلغ رأس مال الشركة المدفوع 31.02 مليون دينار كويتي .</span></span></p>\r\n<p style=\"text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">شركة المال للإستثمار، شركة رائدة تعتمد الإبتكار والإبداع، وتنشط في قطاع الإستثمار، ما يوفر لعملائها فرصاً استثمارية مستدامة جاذبة واعدة سواء في المحافظ التقليدية أو الناشئة. تتنوع محفظة إستثمارات الشركة قطاعياً وجغرافياً لتقديم عوائد مجزية للمستثمرين، كما وتقدم خدماتها من خلال العديد من شركاتها التابعة والزميلة المنتشرة في جميع أرجاء العالم .</span></span></p>\r\n<p style=\"text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">تخضع شركة المال إلى قواعد بنك الكويت المركزي، وهيئة سوق المال، وسوق الكويت للأوراق المالية ، ووزارة التجارة والصناعة وتتبنى أعلى مستوى من المعايير الأخلاقية والضوابط الداخلية وممارسة حوكمة الشركات.</span></span></p>', 'single-page-menu-header_image-52010a67bd85dbebd4d19fb141613e7b.jpg', 'single-page-menu-image-52010a67bd85dbebd4d19fb141613e7b.jpg', 1, 1, '2021-11-25 06:45:09', '2021-12-12 08:54:49'),
(4, 24, 'Chairman\'s Message', 'كلمة رئيس مجلس الإدارة', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', '<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">بفضل قرابة عقود ثلاثة من الجهود الدؤوبه المخلصة، ارتقت شركة المال للإستثمار لتصل إلى مكانة تُحسد عليها سواء على صعيد محافظها الاستثمارية المتنوعة، أو في قاعدة عملائها العريضة الواسعة .</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">واليوم، تتنوع أصول الشركة لتغطي 19 بلداً، عبر 9 قطاعات مختلفة من فئات الأصول، بما فيها الأسهم الخاصة، والعقارات، وسندات الدخل الثابت. تحرص شركة المال للإستثمار على اتباع سياسات استراتيجية منضبطة لتوزيع الأصول، وذلك بهدف ضمان الاختيار الأمثل لفئات الأصول، وتحديد القطاعات الاستثمارية والجغرافية، ما يحقق أكبر فائض من العوائد الشاملة بأقل نسبة من المخاطر .</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">وفي العام 2013، شهدت شركة المال للإستثمار إعادة شاملة لهيكلها التنظيمي والرأسمالي، مما أفضى إلى تواجد مؤثر وفعال في قطاع الإستثمار.</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">ومن أبرز عوامل النجاح والنمو الرئيسية للشركة :</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">فريق إدارى متماسك قوي.</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">تركيز مؤثر على المنتجات المبتكرة والجديدة، بما يواكب احتياجات السوق .</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">اتباع استثمار مسئول اجتماعياً، إنطلاقاً من المسئوليه الإجتماعية للشركة .</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">الإلتزام بأعلى مستويات السلوك المهني والأخلاقي.</span></span></p>', 'single-page-menu-header_image-8dae1064e9a45bbd3a2531dd69166953.jpg', 'single-page-menu-image-8dae1064e9a45bbd3a2531dd69166953.jpg', 2, 1, '2021-11-27 09:04:12', '2021-12-12 08:57:02'),
(5, 25, 'Mission & Vision', 'المهمة والرؤية', '<p class=\"MsoNormal\"><span style=\"font-size: 10pt;\">Mission</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 10pt;\">To invest ethically and prudently in assets, create wealth, and maximize value to shareholders.</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 10pt;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 10pt;\">Vision</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 10pt;\">To be among the top 5 investment companies in the region renowned for innovation and the successful pursuit of distressed investment opportunities.</span></p>', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\"><strong>مهمة</strong></span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\"><strong>الاستثمار بشكل أخلاقي وحكيم في الأصول ، وخلق الثروة ، وتعظيم القيمة للمساهمين.</strong></span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\"><strong>&nbsp;</strong></span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\"><strong>رؤية</strong></span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\"><strong>أن نكون من بين أفضل 5 شركات استثمارية في المنطقة مشهورة بالابتكار والسعي الناجح لفرص الاستثمار المتعثرة.</strong></span></span></p>', 'single-page-menu-header_image-71f2454aff4ef03e67c40195722c2572.jpg', 'single-page-menu-image-71f2454aff4ef03e67c40195722c2572.jpg', 3, 1, '2021-11-29 07:53:08', '2021-12-16 07:02:06'),
(6, 26, 'Board of Directors', 'مجلس الادارة', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', 'single-page-menu-header_image-bfed950b26361c2a40dc4be626bc1069.jpg', 'single-page-menu-image-6224589d7b4e0e475878fd4b0051ce81.png', 4, 1, '2021-11-29 07:56:20', '2022-02-08 05:39:47'),
(7, 27, 'Article of Association', 'بند التأسيس', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', 'single-page-menu-header_image-9b4e763cf930b6849b527947f80da54b.jpg', 'single-page-menu-image-e03e5a94939757ffa8ce6251963dc651.png', 5, 1, '2021-11-29 07:57:07', '2022-02-08 05:40:09'),
(8, 29, 'Corporate Financeee', 'تمويل الشركات', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Al Mal provides variety of services through its Corporate Finance department, which includes:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Financial Advisory</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Debt Capital Markets</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Equity Capital Markets</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">M &amp; A</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Special Situation Investing</li>\r\n</ul>', '<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">تقدم شركة المال للإستثمارالعديد من الخدمات من خلال إدارة تمويل الشركات . تشمل هذه الخدمات :</span></span></p>\r\n<ul>\r\n<li style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></li>\r\n<li style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">الاستشارات المالية</span></span></li>\r\n<li style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">أسواق رأس المال المقترض</span></span></li>\r\n<li style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">أسواق أسهم رأس المال</span></span></li>\r\n<li style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">الدمج والاستحواذ</span></span></li>\r\n<li style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">إستمارات الوضع الخاص</span></span></li>\r\n</ul>', 'single-page-menu-header_image-ba35359b68922d2a11d18d53ab1bc4c2.jpg', 'single-page-menu-image-ba35359b68922d2a11d18d53ab1bc4c2.jpg', 6, 1, '2021-11-29 07:58:09', '2022-02-08 05:40:46'),
(9, 30, 'Asset Management', 'أدارة الأصول', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Al Mal provides variety of services through its Corporate Finance department, which includes:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Financial Advisory</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Debt Capital Markets</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Equity Capital Markets</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">M &amp; A</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Special Situation Investing</li>\r\n</ul>', '<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">يتمتع عملاء شركة المال للإستثمار بمجموعة واسعة من الخدمات مثل إدارة الملكيات ، الدخل الثابت ،السيولة والمنتجات الإستثمارية البديلة وذلك من خلال إدارة الأصول بالشركة .</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">ويتألف فريق إدارة الأصول بالشركة من مجموعة من المدراء المهنيين والذين على دراية شاملة بمايلي:</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<ul>\r\n<li style=\"text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">الملكيات الخاصة</span></span></li>\r\n<li style=\"text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">الأسهم العامة</span></span></li>\r\n<li style=\"text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">المحافظ الإستثمارية</span></span></li>\r\n<li style=\"text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">الصناديق الإستثمارية</span></span></li>\r\n</ul>', 'single-page-menu-header_image-b438ace8caedd286c2622bab7043c565.jpg', 'single-page-menu-image-2be905c3df04d892cbc90c5e07159b3a.jpg', 7, 1, '2021-11-29 08:11:04', '2021-12-12 09:09:27'),
(10, 31, 'Direct & Indirect Investments', 'الاستثمارات المباشرة والغير مباشرة', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Under the Direct and Indirect Investment sphere, Al Mal currently focuses on the following areas of interest:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Venture capital investing</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Real estate investing</li>\r\n</ul>', '<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">في مجال الإستثمارات المباشرة وغير المباشرة ،ترتكز شركة المال للإستثمار حاليا على المجالات التالية :</span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<ul>\r\n<li style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">رأس المال المغامر</span></span></li>\r\n<li style=\"line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; background-color: #fafafa; text-align: right;\"><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">الإستثمار العقاري</span></span></li>\r\n</ul>', 'single-page-menu-header_image-a2e273878b31f73ec152885fdffaed02.jpg', 'single-page-menu-image-a2e273878b31f73ec152885fdffaed02.jpg', 8, 1, '2021-11-29 08:13:47', '2021-12-12 09:14:37');
INSERT INTO `single_page_menu` (`id`, `category_id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `header_image`, `image`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(11, 33, 'Private equity funds', 'صناديق الأسهم الخاصة', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Canaan Equity Offshore C.V.</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The objectives of the Partnership are to acquire and hold a limited partnership interest in Canaan Equity L.P., a Delaware limited partnership (the \"Fund\"), to be a limited partner thereof, and to take all actions as a limited partner thereof and to purchase or otherwise acquire, sell, exchange or otherwise dispose of and deal with real and personal property and rights of all kinds, including distributions of cash or securities from the Fund.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">2 April 1997</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Canaan Equity II Offshore C.V.</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The objectives of the Partnership are to acquire and hold a limited partnership interest in Canaan Equity II L.P., a Delaware limited partnership (the \"Fund\"), to be a limited partner thereof, and to take all actions as a limited partner thereof and to purchase or otherwise acquire, sell, exchange or otherwise dispose of and deal with real and personal property and rights of all kinds, including distributions of cash or securities from the Fund.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">15 October 1999</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 21,000,000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Canaan Equity III Offshore C.V.</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The objectives of the Partnership are to acquire and hold a limited partnership interest in Canaan Equity III L.P., a Delaware limited partnership (the \"Fund\"), to be a limited partner thereof, and to take all actions as a limited partner thereof and to purchase or otherwise acquire, sell, exchange or otherwise dispose of and deal with real and personal property and rights of all kinds, including distributions of cash or securities from the Fund.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">16 January 2001</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 35,250,000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Corporate Mezzanine II</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The purpose is to assemble in Corporate Mezzanine ll, L.P. (the \"Fund\"), investors from different areas outside the United States and to pool capital of such investors to achieve above market rates of super return by providing Mezzanine Financing facilities to sound small and medium sized U.S. entrepreneurial companies. The Fund is a Limited Partnership organized in the British Virgin Islands.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">16 January 2001</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 67,500,000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Corporate Mezzanine III</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The purpose is to assemble in Corporate Mezzanine III, L.P. (the \"Fund\") investors from different areas outside the United States and to pool capital of such investors to achieve above-market rates of current return by providing mezzanine financing facilities to sound small and medium sized U.S. entrepreneurial companies. The Fund is a Limited Partnership organized in the British Virgin Islands.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">1 July 2002</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 85,350,000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Corporate Mezzanine IV</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The purpose is to assemble in Corporate Mezzanine IV, L.P. (the \"Fund\") investors from different areas outside the United States and to pool capital of such investors to achieve above-market rates of current return by providing mezzanine financing facilities to sound small and medium sized U.S. entrepreneurial companies. The Fund is a Limited Partnership organized in the British Virgin Islands.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">1 March 2006</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 92,300,000</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Canaan Equity Offshore C.V.</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The objectives of the Partnership are to acquire and hold a limited partnership interest in Canaan Equity L.P., a Delaware limited partnership (the \"Fund\"), to be a limited partner thereof, and to take all actions as a limited partner thereof and to purchase or otherwise acquire, sell, exchange or otherwise dispose of and deal with real and personal property and rights of all kinds, including distributions of cash or securities from the Fund.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">2 April 1997</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Canaan Equity II Offshore C.V.</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The objectives of the Partnership are to acquire and hold a limited partnership interest in Canaan Equity II L.P., a Delaware limited partnership (the \"Fund\"), to be a limited partner thereof, and to take all actions as a limited partner thereof and to purchase or otherwise acquire, sell, exchange or otherwise dispose of and deal with real and personal property and rights of all kinds, including distributions of cash or securities from the Fund.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">15 October 1999</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 21,000,000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Canaan Equity III Offshore C.V.</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The objectives of the Partnership are to acquire and hold a limited partnership interest in Canaan Equity III L.P., a Delaware limited partnership (the \"Fund\"), to be a limited partner thereof, and to take all actions as a limited partner thereof and to purchase or otherwise acquire, sell, exchange or otherwise dispose of and deal with real and personal property and rights of all kinds, including distributions of cash or securities from the Fund.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">16 January 2001</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 35,250,000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Corporate Mezzanine II</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The purpose is to assemble in Corporate Mezzanine ll, L.P. (the \"Fund\"), investors from different areas outside the United States and to pool capital of such investors to achieve above market rates of super return by providing Mezzanine Financing facilities to sound small and medium sized U.S. entrepreneurial companies. The Fund is a Limited Partnership organized in the British Virgin Islands.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">16 January 2001</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 67,500,000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Corporate Mezzanine III</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The purpose is to assemble in Corporate Mezzanine III, L.P. (the \"Fund\") investors from different areas outside the United States and to pool capital of such investors to achieve above-market rates of current return by providing mezzanine financing facilities to sound small and medium sized U.S. entrepreneurial companies. The Fund is a Limited Partnership organized in the British Virgin Islands.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">1 July 2002</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 85,350,000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\"><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Corporate Mezzanine IV</strong></p>\r\n<table style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; border-spacing: 0px; color: #6d7275; background-color: #fafafa;\">\r\n<tbody style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px; width: 150px;\">Purpose</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">The purpose is to assemble in Corporate Mezzanine IV, L.P. (the \"Fund\") investors from different areas outside the United States and to pool capital of such investors to achieve above-market rates of current return by providing mezzanine financing facilities to sound small and medium sized U.S. entrepreneurial companies. The Fund is a Limited Partnership organized in the British Virgin Islands.</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Type</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Closed end fund</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Inception</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">1 March 2006</td>\r\n</tr>\r\n<tr style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">Fund Size</td>\r\n<td style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border-color: rgba(128, 128, 128, 0.2); outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; padding: 4px;\">USD 92,300,000</td>\r\n</tr>\r\n</tbody>\r\n</table>', '.annual:hover {\r\n    border: solid 1px #0058a2;\r\n', 'single-page-menu-image-7df1c0acf5b9117fe50bdba3bdcea140.png', 9, 1, '2021-11-29 08:16:50', '2022-02-08 06:13:01');
INSERT INTO `single_page_menu` (`id`, `category_id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `header_image`, `image`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(12, 34, 'Equity funds', 'صناديق الأسهم', '<h3 style=\"font-family: Poppins, sans-serif; font-size: 1.857em; font-weight: 500; line-height: 1.3em; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0.6667em 0px 0.6em; color: #28262b; background-color: #fafafa;\">Under Construction</h3>', '<h3 style=\"font-family: Poppins, sans-serif; font-size: 1.857em; font-weight: 500; line-height: 1.3em; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0.6667em 0px 0.6em; color: #28262b; background-color: #fafafa;\">Under Construction</h3>', 'single-page-menu-header_image-280454da400d0187463f7e2213f0e34f.jpg', 'single-page-menu-image-280454da400d0187463f7e2213f0e34f.png', 10, 1, '2021-11-29 08:18:54', '2022-02-08 06:12:33'),
(13, 35, 'Takharoj', 'تخارج', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">Launched by Al Mal Investment Company (K.P.S.C.), Takharoj is the region&rsquo;s first web-based application that can connect minority investors in Unlisted Securities together, enabling them to be heard and empowering them to get more value from their minority shares in return. By submitting their basic investment information, the shareholders can become part of a sizeable shareholding block with the power to negotiate optimal outcomes, as well as benefit from short and long-term solutions based on thorough analysis conducted by Al Mal&rsquo;s experts. These solutions cater to the minority investors who lack control over their investments, whose voices are not heard, their share value is either stuck or stagnating, or have a hard time getting valuable financial information or return.</span><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">Takharoj</span><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">Website:&nbsp;</span><a style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; text-decoration-line: none; background: #fafafa; transition: all 0.3s ease 0s; color: #28262b;\" href=\"http://takharoj.com/\" target=\"_blank\" rel=\"noopener\">www.takharoj.com</a><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">Phone: +(965) 2225 4800</span></p>', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">قامت شركة المال للاستثمار (ش.م.ك.ع) بإطلاق (تخارج) الذي يعتبر أول تطبيق على الإنترنت يتيح ويمكّن الأقلية من أصحاب الأسهم غير المدرجة بالتواصل فيما بينهم، ويمنحهم حضوراً أكثر فعالية ويمكنهم تبعاً لذلك من تحقيق عوائد أعلى من الاسهم التي يملكونها. بمجرّد إدخال بياناتهم الاستثمارية عبر التطبيق،ينضم مساهمو الأقلية إلى كتلة كبيرة من المساهمين يمكن لها التفاوض لتحقيق أفضل النتائج، كما والإستفادة من حلول على المدى القصير والطويل بالإستناد إلى التحاليل المقدّمة من خبراء الاستثمار في شركة المال. هذه الحلول تلبي حاجات مساهمي الاقلية الذين يفتقرون إلى السيطرة على استثماراتهم، والذين لا حضور لهم، والذين تكون أسهمهم غير منتجة بسبب تعليقها أو ركودها، أو الذين يصعب عليهم الحصول على معلومات مالية قيّمة أو على العوائد.</span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">تخارج</span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">الموقع الإلكتروني: <a href=\"http://www.takharoj.com/\">www.takharoj.com</a></span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">تلفون : 22254800(965)+</span></span></p>', 'single-page-menu-header_image-890ac920f9203842c60333d916c4a5be.jpg', 'single-page-menu-image-8736e96e3b3d645969be3abdead3503a.png', 11, 1, '2021-11-29 08:19:52', '2021-12-12 09:33:31'),
(14, 36, 'Education Finance', 'تمويل التعليم', '<h3 style=\"font-family: Poppins, sans-serif; font-size: 1.857em; font-weight: 500; line-height: 1.3em; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0.6667em 0px 0.6em; color: #28262b; background-color: #fafafa;\">FINANCE THEIR EDUCATION THE LIGHTER WAY</h3>\r\n<h4 style=\"font-family: Poppins, sans-serif; font-size: 1.286em; font-weight: 500; line-height: 1.3em; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 0.75em; color: #28262b; background-color: #fafafa;\">DIVIDE ANNUAL TUITION FEES WITH UP TO 10 SMALLER MONTHLY INSTALLMENTS AND UP TO 3 MONTHS GRACE PERIOD</h4>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">We have done our homework so you don&rsquo;t have to put your kids&rsquo; future on hold Now with our new Education Financing plan, paying for school tuition fees has never been more manageable. Here are a few good reasons why signing up with Al Mal Investment Company is the smart choice:</span></p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Up to 10 monthly installments</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">2.5% ﬂat interest rate</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Zero upfront payment</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Up to 3 months grace period from loan approval</li>\r\n</ul>\r\n<p><strong style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; color: #6d7275; background-color: #fafafa;\">Documents Required</strong><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">To process and review your eligibility for a loan from Al Mal Investment Company, please submit the following documents:</span></p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Credit Application</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Ci-Net Customer Consent Form</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Civil ID Copy</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Passport Copy (with Kuwait Residence Visa page for foreigners)</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Salary Certiﬁcate (along with a copy of Authorized Signatory Certiﬁcate)</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Bank Statement (reﬂecting past three months&rsquo; salaries credited in bank)</li>\r\n</ul>', '<h3 style=\"font-family: Poppins, sans-serif; font-size: 1.857em; font-weight: 500; line-height: 1.3em; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0.6667em 0px 0.6em; color: #28262b; background-color: #fafafa;\">FINANCE THEIR EDUCATION THE LIGHTER WAY</h3>\r\n<h4 style=\"font-family: Poppins, sans-serif; font-size: 1.286em; font-weight: 500; line-height: 1.3em; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 0.75em; color: #28262b; background-color: #fafafa;\">DIVIDE ANNUAL TUITION FEES WITH UP TO 10 SMALLER MONTHLY INSTALLMENTS AND UP TO 3 MONTHS GRACE PERIOD</h4>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">We have done our homework so you don&rsquo;t have to put your kids&rsquo; future on hold Now with our new Education Financing plan, paying for school tuition fees has never been more manageable. Here are a few good reasons why signing up with Al Mal Investment Company is the smart choice:</span></p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Up to 10 monthly installments</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">2.5% ﬂat interest rate</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Zero upfront payment</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Up to 3 months grace period from loan approval</li>\r\n</ul>\r\n<p><strong style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; color: #6d7275; background-color: #fafafa;\">Documents Required</strong><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><br style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\" /><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">To process and review your eligibility for a loan from Al Mal Investment Company, please submit the following documents:</span></p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Credit Application</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Ci-Net Customer Consent Form</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Civil ID Copy</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Passport Copy (with Kuwait Residence Visa page for foreigners)</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Salary Certiﬁcate (along with a copy of Authorized Signatory Certiﬁcate)</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Bank Statement (reﬂecting past three months&rsquo; salaries credited in bank)</li>\r\n</ul>', 'single-page-menu-header_image-a73e38334d8c8b2d6106cba2aae9be93.jpg', 'single-page-menu-image-13ddff18ea6d6b7cd077d580a5702936.png', 12, 1, '2021-11-29 08:20:55', '2022-02-08 06:08:28'),
(15, 38, 'Disclosures', 'الإفصاحات', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', 'single-page-menu-header_image-4a407d02729bf45dec34a97f121a2f40.jpg', 'single-page-menu-image-79ba5337ff344fc44fb4ab694ca66c39.png', 13, 1, '2021-11-29 08:23:05', '2022-02-08 06:07:30'),
(16, 39, 'Major shareholders', 'كبار المساهمين', '<h3 style=\"font-family: Poppins, sans-serif; font-size: 1.857em; font-weight: 500; line-height: 1.3em; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0.6667em 0px 0.6em; color: #28262b; background-color: #fafafa;\"><span style=\"color: #6d7275; font-size: 14px;\">Ream Real Estate Company &ndash; 21.224 % indirect</span><br style=\"color: #6d7275; font-size: 14px;\" /><br style=\"color: #6d7275; font-size: 14px;\" /><span style=\"color: #6d7275; font-size: 14px;\">Al-Watani Investment Company ( Electronic Account 1 ) &ndash; 6.18 %</span></h3>', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">كبار المساهمين</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right;\">&nbsp;</p>\r\n<div style=\"margin-left: 2em;\">\r\n<ul class=\"co_list\" style=\"box-sizing: border-box; margin: 0px 2em 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; float: right;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 6px 15px 6px 0px; border: 0px; outline: 0px; vertical-align: baseline; background: url(\'../images/list_over.png\') right center no-repeat transparent; list-style: none;\">شركة الريم العقارية&nbsp; &ndash; 21.2424 % غير مباشر&nbsp;</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 6px 15px 6px 0px; border: 0px; outline: 0px; vertical-align: baseline; background: url(\'../images/list_over.png\') right center no-repeat transparent; list-style: none;\">شركة الوطنى لللإستثمار ( حساب إلكترونى 1 )&ndash; 6.18 %</li>\r\n</ul>\r\n</div>', 'single-page-menu-header_image-67568bb3a904ed42d7a9b07ee804765d.jpg', 'single-page-menu-image-6369808f0ef7ace60a471d66a6e48f77.png', 14, 1, '2021-11-29 08:23:50', '2022-02-06 11:29:11'),
(17, 40, 'Corporate Governance', 'حوكمة الشركات', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Al-Mal Investment Company is committed to comply with corporate governance rules by applying a wide set of policies and procedures to boost the main objective of Corporate Governance which protect investors , and the segregation between the executive management and board of directors which review company&rsquo;s plans and policies.<br /><br /><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Complying with Corporate Governance rules boost the following:</strong><br /><br /></p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Compliance with ethical behaviors and professional code of conduct to achieve company&rsquo;s related parties interest &amp; approach the principle of transparency for presenting financial &amp; non- financial information.</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Develop integrated system for control and accountability and activate stakeholder&rsquo;s policies and procedures to achieve their rules therein.</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Disclosure &amp; transparency to ensure the protection of all stakeholders&rsquo; rights and compliance with CMA instructions therein.</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Proper organization and administrative and appropriate distributions for duties and responsibilities.</li>\r\n</ul>', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Al-Mal Investment Company is committed to comply with corporate governance rules by applying a wide set of policies and procedures to boost the main objective of Corporate Governance which protect investors , and the segregation between the executive management and board of directors which review company&rsquo;s plans and policies.<br /><br /><strong style=\"font-family: inherit; font-style: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Complying with Corporate Governance rules boost the following:</strong><br /><br /></p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Compliance with ethical behaviors and professional code of conduct to achieve company&rsquo;s related parties interest &amp; approach the principle of transparency for presenting financial &amp; non- financial information.</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Develop integrated system for control and accountability and activate stakeholder&rsquo;s policies and procedures to achieve their rules therein.</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Disclosure &amp; transparency to ensure the protection of all stakeholders&rsquo; rights and compliance with CMA instructions therein.</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Proper organization and administrative and appropriate distributions for duties and responsibilities.</li>\r\n</ul>', 'single-page-menu-header_image-b5f3f91010a612eca7182c24a6ac7bae.jpg', 'single-page-menu-image-f4e9771443e55956687d316655661310.png', 15, 1, '2021-11-29 08:24:54', '2022-02-08 06:06:46'),
(18, 41, 'Customer complaints form', 'حوكمة الشركات', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">Al-Mal Investment Company is committed to comply with corporate governance rules&nbsp; by applying a wide set of policies and procedures to boost the main objective of Corporate Governance which&nbsp; protect investors , and the segregation between the executive management and board of directors which review company&rsquo;s plans and policies.&nbsp;</span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">Complying with Corporate Governance rules boost the following:</span></span></p>\r\n<ul>\r\n<li><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">Compliance with ethical behaviors and professional code of conduct to achieve company&rsquo;s related parties interest &amp; approach the principle of transparency for presenting financial &amp; non- financial information.</span></span></li>\r\n<li><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">Develop integrated system for control and accountability and activate stakeholder&rsquo;s policies and procedures to achieve their rules therein.Disclosure &amp; transparency to ensure the protection of all stakeholders&rsquo; rights and compliance with CMA instructions therein.</span></span></li>\r\n<li><span style=\"color: #6d7275; font-family: Poppins, sans-serif;\"><span style=\"font-size: 14px;\">Proper organization and administrative and appropriate distributions for duties and responsibilities.</span></span></li>\r\n</ul>', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">تلتزم شركة المال للإستثمار بتطبيق قواعد الحوكمة الرشيدة&nbsp; عن طريق تطبيق&nbsp; مجموعة من السياسات والإجراءات التي من شأنها تعزيز الهدف الرئيس للحوكمة وهو حماية المستثمرين ،وفصل السلطة بين الإدارة التنفيذية للشركة ومجلس إدارة الشركة الذي يعد ويراجع الخطط والسياسات في الشركة.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">يهدف تطبيق قواعد الحوكمة الرشيدة لشركة المال للإستثمار على توثيق مايلي :&nbsp;</span></span></p>\r\n<ul>\r\n<li style=\"box-sizing: border-box; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">الإلتزام بالأخلاقيات ووضع قواعد للسلوك المهني الرشيد والتوازن في تحقيق مصالح كافة الأطراف ذات العلاقة بالشركة والشفافية عند عرض المعلومات المالية وغير المالية.</span></span></li>\r\n<li style=\"box-sizing: border-box; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">وضع نظام متكامل للرقابة والمسائلة وتفعيل سياسات وإجراءات أصحاب المصالح لإبراز دورهم في الرقابة على الشركة.</span></span></li>\r\n<li style=\"box-sizing: border-box; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">الإفصاح والشفافية لضمان حماية حقوق أصحاب المصالح وإلتزاما بتعليمات هيئة أسواق المال الخاصة بذلك الشأن.</span></span></li>\r\n<li style=\"box-sizing: border-box; border: 0px; outline: 0px; vertical-align: baseline; background: #ffffff; text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light;\"><span style=\"font-size: 14px;\">التنظيم الإداري السليم وتوزيع الصلاحيات والمسئوليات والفصل في الاختصاصات .</span></span></li>\r\n</ul>', 'single-page-menu-header_image-65047a986d70152bd1390b2db4b571a1.jpg', 'single-page-menu-image-0d0f02606f345d5a03cb5e8b09b24653.png', 16, 1, '2021-11-29 08:25:48', '2022-02-06 11:30:05'),
(19, 44, 'Annual Reports', 'تقارير سنوية', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', 'single-page-menu-header_image-0ed6f7a0efd8256cbca5e6db7de941d3.png', 'single-page-menu-image-045c8aceba7b8b9a8e0a6d6a7c93e896.png', 17, 1, '2021-11-29 08:29:46', '2022-02-08 06:05:41'),
(20, 45, 'Quarterly reports', 'تقارير ربع سنوية', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', '<p style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; color: #6d7275; background-color: #fafafa;\">Nearly three decades of dedicated and relentless efforts have lifted Al Mal Investment Company to enviable heights, both in its diversified portfolios of investments and in its vast clientele. Today, Al Mal&rsquo;s assets are well diversified across 19 countries, 9 sectors and wide spectrum of assets classes including private equities, real estate and fixed income. Our disciplined Strategic Assets Allocation approach ensures that asset classes, sectors and geographical allocations are chosen carefully to maximize our overall expected excess return per unit of risk. In 2013, Al Mal went through a major organizational and capital restructuring that positioned Al Mal firmly in the investment sector.<br /><br />Key drivers of success and growth at Al Mal are:</p>\r\n<ul style=\"font-family: Poppins, sans-serif; font-size: 14px; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin: 0px 0px 1.75em; padding-left: 1.5em; color: #6d7275; background-color: #fafafa;\">\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong management team</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Strong focus on innovative and new products, in line with market demand</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Socially Responsible Investing (SRI) that is commitment towards the society we live in</li>\r\n<li style=\"font-family: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; border: 0px; outline: 0px; -webkit-font-smoothing: antialiased; overflow-wrap: break-word; margin-bottom: 0.5em;\">Adherence to the highest level of professional conduct and ethical standards.</li>\r\n</ul>', 'single-page-menu-header_image-0b3c1a973c164c481ff55f3af497e0d9.png', 'single-page-menu-image-0b3c1a973c164c481ff55f3af497e0d9.png', 18, 1, '2021-11-29 08:30:24', '2022-02-08 06:05:24'),
(21, 46, 'Research', 'البحوث', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">UNDER CONSTRUCTION</span></p>', '<p style=\"text-align: right;\"><span style=\"color: #7a7a7a; font-family: GE_SS_Two_Light; font-size: 14px; text-align: right; background-color: #ffffff;\">قيد الانشاء</span></p>', 'single-page-menu-header_image-cd94bb81ef7a5d11347bc1deaecf772d.jpg', 'single-page-menu-image-47ad1bb9869b167aa25397f6b6f39fee.png', 19, 1, '2021-11-29 08:31:05', '2022-02-06 11:30:23'),
(22, 22, 'Our Company', 'شركتنا', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">Our Company</span></p>', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">Our Company</span></p>', 'single-page-menu-header_image-b2b62107ab4f29e8a14bfbfe1b6a2391.jpg', 'single-page-menu-image-b2b62107ab4f29e8a14bfbfe1b6a2391.jpg', 20, 1, '2021-12-01 10:09:19', '2022-02-08 06:04:36'),
(23, 49, 'UNDER CONSTRUCTION', 'تحت الإنشاء', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">UNDER CONSTRUCTION</span></p>', '<p><span style=\"color: #6d7275; font-family: Poppins, sans-serif; font-size: 14px; background-color: #fafafa;\">UNDER CONSTRUCTION</span></p>', 'single-page-menu-header_image-9d8439381d7ec027c071a992fe9231d4.jpg', 'single-page-menu-image-27645718dbba058730c20d0d77fbee89.png', 21, 1, '2021-12-05 11:54:25', '2022-02-08 06:03:57'),
(24, 71, 'test', 'test', '<p>test</p>', '<p>test</p>', 'single-page-menu-header_image-6eca413b64d0f179dfb7fa8953a43465.jpg', 'single-page-menu-image-6eca413b64d0f179dfb7fa8953a43465.png', 22, 1, '2021-12-08 09:44:19', '2021-12-08 09:44:19'),
(26, 76, 'test', 'test', '<p>testtesttesttesttest</p>', '<p>testtesttesttesttesttest</p>', 'single-page-menu-header_image-989cefb91adb4f07881f4dd46624215b.png', 'single-page-menu-image-989cefb91adb4f07881f4dd46624215b.png', 23, 1, '2022-02-09 07:08:37', '2022-02-09 07:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

CREATE TABLE `slideshows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_or_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slideshows`
--

INSERT INTO `slideshows` (`id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `link`, `type`, `link_or_id`, `image`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(15, 'Al MAL Investment Company (KPSC)', 'شركة المال للإستثمار ش.م.ك', '<p>Established in Early 1980, AL MAL Investment Company (KPSC) was Listed on the Kuwait Stock&nbsp;Exchange in January 2002. &lt;br/&gt;The Current Issued and Paid Up Capital of AL MAL is KD 66.9 Million.</p>', '<p style=\"text-align: right;\">تأسست شركة المال للاستثمار في أوائل عام 1980، وقد تم إدراج أسهمها في سوق الكويت للأوراق المالية في يناير 2002 . - يبلغ رأس مال الشركة المدفوع 66.9 مليون دينار كويتي .</p>', 'http://google.com', NULL, NULL, 'slideshows-image-a1d8f656fd33d8d24985a2270cd93bf2.jpg', 1, 1, '2021-12-01 11:26:35', '2022-02-09 07:20:45'),
(16, 'Al MAL Investment Company (KPSC)', 'Al MAL Investment Company (KPSC)', '<p>Established in Early 1980, AL MAL Investment Company (KPSC) was Listed on the Kuwait Stock&nbsp;Exchange in January 2002. &lt;br/&gt;The Current Issued and Paid Up Capital of AL MAL is KD 66.9 Million.</p>', '<p>Established in Early 1980, AL MAL Investment Company (KPSC) was Listed on the Kuwait Stock&nbsp;Exchange in January 2002. &lt;br/&gt;The Current Issued and Paid Up Capital of AL MAL is KD 66.9 Million.</p>', 'http://google.com', NULL, NULL, 'slideshows-image-3fe992a885f655df3969016ffcfe283c.jpg', 2, 1, '2021-12-01 11:27:10', '2022-02-09 07:27:16'),
(24, 'test', 'test', '<p>testtesttest</p>', '<p>testtesttesttest</p>', 'https://road.gulfweb.ir', NULL, NULL, 'slideshows-image-9d700bbae04d6296c0e4de321d0c197c.png', 4, 1, '2022-02-10 05:46:34', '2022-02-10 05:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `submit_resume`
--

CREATE TABLE `submit_resume` (
  `id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `nationality` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `submit_resume`
--

INSERT INTO `submit_resume` (`id`, `job_id`, `title`, `first_name`, `last_name`, `email`, `telephone`, `mobile`, `resume`, `nationality`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(15, 6, 'awrawr', 'soheil', 'sefsef', 'Soheil@gmail.com', '66666666', '96566444569', 'resume-image-df90147cf0ef7110887a7b92f490af5e.jpg', 'Aruba', 0, 0, '2022-02-09 12:23:52', '2022-02-09 12:23:52'),
(16, 6, 'wdqdqdwqd', 'soheil', 'mehrandish', 'Soheilmehrandish@gmail.com', '09307199929', '09307199929', '', 'Aruba', 0, 0, '2022-02-09 19:38:30', '2022-02-09 19:38:30'),
(17, 6, 'asdad', 'sad', 'asd', 'Soheilmehrandish@gmail.com', '66666666', '96566444569', 'resume-image-f56a8d11052378294612575934e3ba9a.jpg', 'Azerbaijan', 0, 0, '2022-02-09 20:05:41', '2022-02-09 20:05:41'),
(18, 6, 'awdad', 'dawd', 'dawd', 'Soheilmehrandish@gmail.com', '66666666', '96566444569', 'resume-image-b56a2f558d3be2ede56efc0b0228c1ea.jpg', 'American Sa', 0, 0, '2022-02-09 20:09:50', '2022-02-09 20:09:50'),
(19, 6, 'qwdqd', 'soheil', 'mehrandish', 'Soheilmehrandish@gmail.com', '09307199929', '96566444569', 'resume-image-847ec835c6d5212d0f3dd6ec8628c066.jpg', 'Albania', 0, 0, '2022-02-09 20:12:06', '2022-02-09 20:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `subsidiaries`
--

CREATE TABLE `subsidiaries` (
  `id` bigint(20) NOT NULL,
  `comapy_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `subsidiaries`
--

INSERT INTO `subsidiaries` (`id`, `comapy_name`, `image`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(18, 'Insurance', 'subsidiaries-image-e55390e87ece201eba08b30f5ca6f5ef.jpg', 1, 1, '2021-12-12 08:25:46', '2021-12-12 07:55:46'),
(19, 'company 2', 'subsidiaries-image-5adda0b4826bb5ae821184709bf4188d.jpg', 2, 1, '2021-12-07 08:24:53', '2021-12-07 07:54:53'),
(20, 'company 3', 'subsidiaries-image-b210aff0a6d047f98e94506c221074c2.jpg', 3, 1, '2021-12-07 08:25:17', '2021-12-07 07:55:17'),
(21, 'company 4', 'subsidiaries-image-f82e1e627cdeef5eec3a09dfe65c449e.jpg', 4, 1, '2021-11-28 07:49:15', '2021-11-28 07:49:15'),
(22, 'company 5', 'subsidiaries-image-a5692eb1b32461d0786e78996403d534.jpg', 5, 1, '2021-11-28 07:49:44', '2021-11-28 07:49:44'),
(28, 'company 6', 'subsidiaries-image-9afdb09a4a9488064ebc5c75a9a1380b.jpg', 6, 1, '2021-12-12 07:57:02', '2021-12-12 07:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mobile`, `email`, `birthday`, `image`, `gender`, `email_verified_at`, `password`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'soheil', 'mehramdish', '09307199929', 'so@gmail.com', '2021-09-18', 'users-image-0dd64537cb487f478055e6f374ee28c3.jpg', 'male', NULL, '$2y$10$P3qwJy4S2U0x17xFIotXL.lmU36alCCzyOzamnwqksgMxyGRGt1Im', 0, NULL, '2021-09-18 06:20:40', '2021-10-06 12:31:36'),
(3, 'oveiss', 'farhadi', '36447177', 'oveisfaa@gmail.com', '2021-10-13', 'users-image-663ece67f2057cf4714bbf2983d86575.jpg', 'male', NULL, '$2y$10$JLBxhfwccxH96mU/jF4bVu7k0.26eRyPfvy29ex08MwMSI9gbWo3K', 1, NULL, '2021-10-06 12:28:42', '2021-10-06 12:33:17'),
(4, 'asdad', 'dasdad', '332324', 'sssss@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$YDInsYJvFw8opZ5MKohOJuztM4EEBVtx5nyd3N2XCHFrJKiGpRkcG', 1, NULL, '2021-10-07 10:30:28', '2021-10-07 10:30:28'),
(7, 'test', 'test', '63636363', 'test@gmail.com', '1989-10-14', 'users-image-afd1e88aab28445031bb57698321dfd5.jpg', 'male', NULL, '$2y$10$LH98pGiW9SUPVrr9QgxxXuQzNvMaYr2kozsvPajQtkjOx3P/OKf46', 0, NULL, '2021-10-10 08:55:53', '2021-11-23 09:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_freelancer`
--

CREATE TABLE `user_freelancer` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `freelancer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_freelancer`
--

INSERT INTO `user_freelancer` (`user_id`, `freelancer_id`) VALUES
(2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `order_track` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `track_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `annual_reports`
--
ALTER TABLE `annual_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attr_groups`
--
ALTER TABLE `attr_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_sku_unique` (`sku`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_translations_blog_id_locale_unique` (`blog_id`,`locale`),
  ADD KEY `blog_translations_locale_index` (`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporate_overviews`
--
ALTER TABLE `corporate_overviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_resume`
--
ALTER TABLE `country_resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disclosures`
--
ALTER TABLE `disclosures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_finances`
--
ALTER TABLE `education_finances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freelancers`
--
ALTER TABLE `freelancers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD KEY `freelancers_category_id_foreign` (`category_id`),
  ADD KEY `freelancers_rate_id_foreign` (`rate_id`),
  ADD KEY `freelancers_package_id_foreign` (`package_id`) USING BTREE;

--
-- Indexes for table `freelancer_services`
--
ALTER TABLE `freelancer_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freelancer_services_freelancer_id_foreign` (`freelancer_id`);

--
-- Indexes for table `gwc_aboutus`
--
ALTER TABLE `gwc_aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_admins`
--
ALTER TABLE `gwc_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_areas`
--
ALTER TABLE `gwc_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_cities`
--
ALTER TABLE `gwc_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_countries`
--
ALTER TABLE `gwc_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_coupons`
--
ALTER TABLE `gwc_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_directors`
--
ALTER TABLE `gwc_directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_durations`
--
ALTER TABLE `gwc_durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_featured_projects`
--
ALTER TABLE `gwc_featured_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_home_about_info`
--
ALTER TABLE `gwc_home_about_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_ideas`
--
ALTER TABLE `gwc_ideas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gwc_newsevents_author_id_foreign` (`author_id`);

--
-- Indexes for table `gwc_logs`
--
ALTER TABLE `gwc_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_menus`
--
ALTER TABLE `gwc_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_messages`
--
ALTER TABLE `gwc_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_notify_emails`
--
ALTER TABLE `gwc_notify_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_package_galleries`
--
ALTER TABLE `gwc_package_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_resumes`
--
ALTER TABLE `gwc_resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_settings`
--
ALTER TABLE `gwc_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_single_pages`
--
ALTER TABLE `gwc_single_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_sms`
--
ALTER TABLE `gwc_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_subjects`
--
ALTER TABLE `gwc_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_transactions`
--
ALTER TABLE `gwc_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_users`
--
ALTER TABLE `gwc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_web_device_register`
--
ALTER TABLE `gwc_web_device_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc_web_push_message`
--
ALTER TABLE `gwc_web_push_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_it_works`
--
ALTER TABLE `how_it_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_it_work_translations`
--
ALTER TABLE `how_it_work_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `how_it_work_translations_how_it_work_id_locale_unique` (`how_it_work_id`,`locale`),
  ADD KEY `how_it_work_translations_locale_index` (`locale`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_tbl`
--
ALTER TABLE `news_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `possibilities`
--
ALTER TABLE `possibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`);

--
-- Indexes for table `quarterly_reports`
--
ALTER TABLE `quarterly_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_links`
--
ALTER TABLE `quick_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_translations`
--
ALTER TABLE `shipping_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipping_translations_shipping_id_locale_unique` (`shipping_id`,`locale`),
  ADD KEY `shipping_translations_locale_index` (`locale`);

--
-- Indexes for table `single_page_menu`
--
ALTER TABLE `single_page_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submit_resume`
--
ALTER TABLE `submit_resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subsidiaries`
--
ALTER TABLE `subsidiaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_freelancer`
--
ALTER TABLE `user_freelancer`
  ADD KEY `user_freelancer_user_id_foreign` (`user_id`),
  ADD KEY `user_freelancer_freelancer_id_foreign` (`freelancer_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_orders_user_id_foreign` (`user_id`),
  ADD KEY `user_orders_service_id_foreign` (`service_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_payments_order_id_foreign` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `annual_reports`
--
ALTER TABLE `annual_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attr_groups`
--
ALTER TABLE `attr_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `corporate_overviews`
--
ALTER TABLE `corporate_overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country_resume`
--
ALTER TABLE `country_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `disclosures`
--
ALTER TABLE `disclosures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `education_finances`
--
ALTER TABLE `education_finances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `freelancers`
--
ALTER TABLE `freelancers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `freelancer_services`
--
ALTER TABLE `freelancer_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `gwc_aboutus`
--
ALTER TABLE `gwc_aboutus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gwc_admins`
--
ALTER TABLE `gwc_admins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gwc_areas`
--
ALTER TABLE `gwc_areas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gwc_cities`
--
ALTER TABLE `gwc_cities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gwc_countries`
--
ALTER TABLE `gwc_countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gwc_coupons`
--
ALTER TABLE `gwc_coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gwc_directors`
--
ALTER TABLE `gwc_directors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gwc_durations`
--
ALTER TABLE `gwc_durations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gwc_featured_projects`
--
ALTER TABLE `gwc_featured_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gwc_home_about_info`
--
ALTER TABLE `gwc_home_about_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gwc_ideas`
--
ALTER TABLE `gwc_ideas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gwc_logs`
--
ALTER TABLE `gwc_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1643;

--
-- AUTO_INCREMENT for table `gwc_menus`
--
ALTER TABLE `gwc_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `gwc_messages`
--
ALTER TABLE `gwc_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `gwc_notify_emails`
--
ALTER TABLE `gwc_notify_emails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gwc_package_galleries`
--
ALTER TABLE `gwc_package_galleries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gwc_resumes`
--
ALTER TABLE `gwc_resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gwc_settings`
--
ALTER TABLE `gwc_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gwc_single_pages`
--
ALTER TABLE `gwc_single_pages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `gwc_sms`
--
ALTER TABLE `gwc_sms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gwc_subjects`
--
ALTER TABLE `gwc_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gwc_transactions`
--
ALTER TABLE `gwc_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gwc_users`
--
ALTER TABLE `gwc_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gwc_web_device_register`
--
ALTER TABLE `gwc_web_device_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gwc_web_push_message`
--
ALTER TABLE `gwc_web_push_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `how_it_works`
--
ALTER TABLE `how_it_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `how_it_work_translations`
--
ALTER TABLE `how_it_work_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `news_tbl`
--
ALTER TABLE `news_tbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `possibilities`
--
ALTER TABLE `possibilities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quarterly_reports`
--
ALTER TABLE `quarterly_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quick_links`
--
ALTER TABLE `quick_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_translations`
--
ALTER TABLE `shipping_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `single_page_menu`
--
ALTER TABLE `single_page_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `submit_resume`
--
ALTER TABLE `submit_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subsidiaries`
--
ALTER TABLE `subsidiaries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD CONSTRAINT `blog_translations_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `freelancers`
--
ALTER TABLE `freelancers`
  ADD CONSTRAINT `freelancers_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `freelancers_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `freelancers_rate_id_foreign` FOREIGN KEY (`rate_id`) REFERENCES `rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gwc_ideas`
--
ALTER TABLE `gwc_ideas`
  ADD CONSTRAINT `gwc_newsevents_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `gwc_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `how_it_work_translations`
--
ALTER TABLE `how_it_work_translations`
  ADD CONSTRAINT `how_it_work_translations_how_it_work_id_foreign` FOREIGN KEY (`how_it_work_id`) REFERENCES `how_it_works` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping_translations`
--
ALTER TABLE `shipping_translations`
  ADD CONSTRAINT `shipping_translations_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_freelancer`
--
ALTER TABLE `user_freelancer`
  ADD CONSTRAINT `user_freelancer_freelancer_id_foreign` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_freelancer_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD CONSTRAINT `user_orders_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `freelancer_services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD CONSTRAINT `user_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `user_orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
