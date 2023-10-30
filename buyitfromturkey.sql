-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 07:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buyitfromturkey`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `settings`, `created_at`, `updated_at`) VALUES
(2, 1, 'admin', 'admin@smartwork.com.tr', NULL, '$2y$10$h6Kou1XamQlSWRZw.LxL0.S38r487XxH.5NYz3IOFUWRWZurMbzuq', NULL, 'users/default.png', NULL, '2023-10-18 08:12:56', '2023-10-18 08:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `advantages`
--

CREATE TABLE `advantages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advantages`
--

INSERT INTO `advantages` (`id`, `title`, `content`, `active`, `order`, `created_at`, `updated_at`) VALUES
(1, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(2, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(3, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(4, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(5, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(6, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(7, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(8, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(9, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(10, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(11, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31'),
(12, 'In Sollicitudin Feugiat Enim Ut Ullamcorper', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', 1, NULL, '2023-10-19 05:32:00', '2023-10-19 05:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `application_orders`
--

CREATE TABLE `application_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sectors` int(11) DEFAULT NULL,
  `products_services` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price_terms` int(11) DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `request` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_orders`
--

INSERT INTO `application_orders` (`id`, `name`, `last_name`, `company_name`, `email`, `link`, `sectors`, `products_services`, `quantity`, `price_terms`, `payment_method`, `country`, `details`, `request`, `created_at`, `updated_at`) VALUES
(1, 'Nicholas Jacobson', 'Moran', 'Ryan and Hartman Inc', 'wygep@mailinator.com', 'Et eligendi do illum', 1, 1, 695, 1, 1, 1, 'Occaecat ad sapiente', 'Error ducimus assum', '2023-10-23 06:03:51', '2023-10-23 06:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) NOT NULL,
  `auditable_type` varchar(255) NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text DEFAULT NULL,
  `new_values` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(1023) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'created', 'App\\Models\\SEO', 3, '[]', '{\"title\":\"Duis velit omnis qua\",\"meta\":\"Ut odit dolor modi q\",\"header_bottom\":\"Cupidatat qui eu et \",\"body_top\":\"Deleniti temporibus \",\"body_bottom\":\"Impedit est et iur\",\"meta_title\":\"Corrupti sit labor\",\"meta_description\":\"Nostrud officiis dol\",\"meta_keyword\":\"Officiis vero doloru\",\"meta_canonical\":\"Est in architecto ex\",\"meta_ogimage\":\"Harum culpa omnis e\",\"site_name\":\"Dolan Roth\",\"id\":3}', 'http://buyitfromturkey.localhost/buyitadmin/seo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(2, 'App\\Models\\User', 2, 'updated', 'App\\Models\\SEO', 3, '{\"meta_title\":\"Corrupti sit labor\"}', '{\"meta_title\":\"Buyitfromturkey\"}', 'http://buyitfromturkey.localhost/buyitadmin/seo/3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-10 09:19:55', '2023-10-10 09:19:55'),
(3, 'App\\Models\\User', 2, 'deleted', 'App\\Models\\SiteText', 1, '{\"id\":1,\"key\":\"TEST\",\"place\":null,\"content\":\"this is content test\"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/site-texts/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-10 09:31:00', '2023-10-10 09:31:00'),
(4, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 2, '[]', '{\"content\":\"What Would You Like To Get From T\\u00fcrkiye ?\",\"key\":\"right-search-bar-title\",\"place\":null,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-10 09:37:47', '2023-10-10 09:37:47'),
(5, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 3, '[]', '{\"content\":\"Searching\",\"key\":\"Searching\",\"place\":null,\"id\":3}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-10 09:39:31', '2023-10-10 09:39:31'),
(6, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 4, '[]', '{\"content\":\"What Would You Like To <em>Get From T\\u00fcrkiye ?<\\/em>\",\"key\":\"homepage_slider_title\",\"place\":null,\"id\":4}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-10 10:36:00', '2023-10-10 10:36:00'),
(7, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 5, '[]', '{\"content\":\"We Assist You In Buying Homes Or Land In Turkey. Request A Quote Now, Let Us Find Your Perfect Property!\",\"key\":\"homepage_slider_brief\",\"place\":null,\"id\":5}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-10 10:37:16', '2023-10-10 10:37:16'),
(8, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 6, '[]', '{\"content\":\"Get an Offer\",\"key\":\"Get_an_Offer\",\"place\":null,\"id\":6}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-10 10:38:01', '2023-10-10 10:38:01'),
(9, 'App\\Models\\User', 2, 'deleted', 'App\\Models\\SiteText', 5, '{\"id\":5,\"key\":\"homepage_slider_brief\",\"place\":null,\"content\":\"We Assist You In Buying Homes Or Land In Turkey. Request A Quote Now, Let Us Find Your Perfect Property!\"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/site-texts/5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-10 10:38:38', '2023-10-10 10:38:38'),
(10, 'App\\Models\\User', 2, 'deleted', 'App\\Models\\SiteText', 4, '{\"id\":4,\"key\":\"homepage_slider_title\",\"place\":null,\"content\":\"What Would You Like To <em>Get From T\\u00fcrkiye ?<\\/em>\"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/site-texts/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-10 10:38:42', '2023-10-10 10:38:42'),
(11, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 7, '[]', '{\"content\":\"Who are we\",\"key\":\"Who_are_we\",\"place\":null,\"id\":7}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-11 03:21:40', '2023-10-11 03:21:40'),
(12, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 8, '[]', '{\"content\":\"Why Choose <span>T\\u00fcrkiye?<\\/span>\",\"key\":\"homepage_aboutUs_title\",\"place\":null,\"id\":8}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-11 03:28:19', '2023-10-11 03:28:19'),
(13, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 9, '[]', '{\"content\":\"<em>Turkey<\\/em> is an attractive option for international buyers with competitive                                 prices and high-quality products. Its strategic location and technological expertise                                 are also appealing factors. Additionally, the strong agriculture sector is                                 noteworthy.\",\"key\":\"homepage_aboutUs_brief\",\"place\":null,\"id\":9}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-11 03:28:58', '2023-10-11 03:28:58'),
(14, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 10, '[]', '{\"content\":\"What We Offer?\",\"key\":\"homepage_aboutUs_offers_title\",\"place\":null,\"id\":10}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL, '2023-10-11 06:36:05', '2023-10-11 06:36:05'),
(15, 'App\\Models\\User', 2, 'created', 'App\\Models\\OurOffer', 1, '[]', '{\"title\":\"Competitive Prices\",\"logo\":\"[{\\\"download_link\\\":\\\"our-offers\\\\\\\\October2023\\\\\\\\BprvzNLOZJw6to1FvHiF.svg\\\",\\\"original_name\\\":\\\"i1.svg\\\"}]\",\"content\":\"\",\"active\":1,\"order\":null,\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/our-offers', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 01:25:43', '2023-10-15 01:25:43'),
(16, 'App\\Models\\User', 2, 'created', 'App\\Models\\OurOffer', 2, '[]', '{\"title\":\"Quality Handicrafts                                                         and Products\",\"logo\":\"[{\\\"download_link\\\":\\\"our-offers\\\\\\\\October2023\\\\\\\\C0qlomS8qXmhYznsYxP5.svg\\\",\\\"original_name\\\":\\\"i2.svg\\\"}]\",\"content\":\"\",\"active\":1,\"order\":null,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/our-offers', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 01:58:49', '2023-10-15 01:58:49'),
(17, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 11, '[]', '{\"content\":\"How It <span>Works?<\\/span>\",\"key\":\"homepage_works_title\",\"place\":null,\"id\":11}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 02:01:42', '2023-10-15 02:01:42'),
(18, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 12, '[]', '{\"content\":\"Determine Your Needs,                                                     Check out our products and services.\",\"key\":\"How_it_works_P1_title\",\"place\":null,\"id\":12}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 02:26:20', '2023-10-15 02:26:20'),
(19, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 13, '[]', '{\"content\":\"Write to us to get a quote for the product or service you have                                                         chosen.\",\"key\":\"How_it_works_P2_title\",\"place\":null,\"id\":13}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 02:27:44', '2023-10-15 02:27:44'),
(20, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 14, '[]', '{\"content\":\"Determine Your Needs,                                                         Check out our products and services.\",\"key\":\"How_it_works_P3_title\",\"place\":null,\"id\":14}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 02:28:01', '2023-10-15 02:28:01'),
(21, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 15, '[]', '{\"content\":\"Write to us to get a quote for the product or service you have                                                         chosen.\",\"key\":\"How_it_works_P4_title\",\"place\":null,\"id\":15}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 02:28:15', '2023-10-15 02:28:15'),
(22, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 16, '[]', '{\"content\":\"Determine Your Needs,                                                         Check out our products and services.\",\"key\":\"How_it_works_P1_content\",\"place\":null,\"id\":16}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 02:29:16', '2023-10-15 02:29:16'),
(23, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 17, '[]', '{\"content\":\"Determine Your Needs,                                                         Check out our products and services.\",\"key\":\"How_it_works_P2_content\",\"place\":null,\"id\":17}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 02:29:28', '2023-10-15 02:29:28'),
(24, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 18, '[]', '{\"content\":\"Determine Your Needs,                                                         Check out our products and services.\",\"key\":\"How_it_works_P3_content\",\"place\":null,\"id\":18}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 02:29:38', '2023-10-15 02:29:38'),
(25, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 19, '[]', '{\"content\":\"Determine Your Needs,                                                         Check out our products and services.\",\"key\":\"How_it_works_P4_content\",\"place\":null,\"id\":19}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 02:29:48', '2023-10-15 02:29:48'),
(26, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 20, '[]', '{\"content\":\"Brands\",\"key\":\"homepage_brands_title\",\"place\":null,\"id\":20}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 03:11:16', '2023-10-15 03:11:16'),
(27, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 1, '[]', '{\"title\":\"Brand1\",\"image\":\"brands\\\\October2023\\\\kh6IgRulozL8XKJmlc61.png\",\"active\":1,\"order\":null,\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:21:44', '2023-10-15 04:21:44'),
(28, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 2, '[]', '{\"title\":\"Brand2\",\"image\":\"brands\\\\October2023\\\\LLEza0HYc0ej2ymnGzXy.png\",\"active\":1,\"order\":null,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:21:55', '2023-10-15 04:21:55'),
(29, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 3, '[]', '{\"title\":\"Brand3\",\"image\":\"brands\\\\October2023\\\\NPT5tYmMaFRQrZXp9BO2.png\",\"active\":1,\"order\":null,\"id\":3}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:22:22', '2023-10-15 04:22:22'),
(30, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 4, '[]', '{\"title\":\"Brand4\",\"image\":\"brands\\\\October2023\\\\nQwhhFcaOCRBoPe5lrTa.png\",\"active\":1,\"order\":null,\"id\":4}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:23:37', '2023-10-15 04:23:37'),
(31, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 5, '[]', '{\"title\":\"Brand5\",\"image\":\"brands\\\\October2023\\\\3eHgGzdtb8DZizagtucx.png\",\"active\":1,\"order\":null,\"id\":5}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:23:57', '2023-10-15 04:23:57'),
(32, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 6, '[]', '{\"title\":\"brand6\",\"image\":\"brands\\\\October2023\\\\9HXNG8CqSv7GpiZDSdAD.png\",\"active\":1,\"order\":null,\"id\":6}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:24:09', '2023-10-15 04:24:09'),
(33, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 7, '[]', '{\"title\":\"brand7\",\"image\":\"brands\\\\October2023\\\\ofkSIrHTsgUm3jeFyn9R.png\",\"active\":1,\"order\":null,\"id\":7}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:24:19', '2023-10-15 04:24:19'),
(34, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 8, '[]', '{\"title\":\"Brand8\",\"image\":\"brands\\\\October2023\\\\KQDTAs6T21104jL5v3HZ.png\",\"active\":1,\"order\":null,\"id\":8}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:24:45', '2023-10-15 04:24:45'),
(35, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 9, '[]', '{\"title\":\"Brand9\",\"image\":\"brands\\\\October2023\\\\yzLLSb55XIVSPwv6Hjx8.png\",\"active\":1,\"order\":null,\"id\":9}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:25:01', '2023-10-15 04:25:01'),
(36, 'App\\Models\\User', 2, 'created', 'App\\Models\\Brand', 10, '[]', '{\"title\":\"Brand10\",\"image\":\"brands\\\\October2023\\\\z8r60fvLyFVric2oj5w8.png\",\"active\":1,\"order\":null,\"id\":10}', 'http://buyitfromturkey.localhost/buyitadmin/brands', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:25:11', '2023-10-15 04:25:11'),
(37, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 21, '[]', '{\"content\":\"FAQ\",\"key\":\"homepage_faq_title\",\"place\":null,\"id\":21}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:37:21', '2023-10-15 04:37:21'),
(38, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 22, '[]', '{\"content\":\"Send us your questions and we\'ll answer them. All the answers you are looking for are here\",\"key\":\"homepage_faq_content\",\"place\":null,\"id\":22}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 04:37:58', '2023-10-15 04:37:58'),
(39, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 23, '[]', '{\"content\":\"bloglar\",\"key\":\"routeBlogs\",\"place\":null,\"id\":23}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 10:23:18', '2023-10-15 10:23:18'),
(40, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 24, '[]', '{\"content\":\"detay\",\"key\":\"routeBlogDetails\",\"place\":null,\"id\":24}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 10:33:41', '2023-10-15 10:33:41'),
(41, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 25, '[]', '{\"content\":\"OUR<span>BLOG<\\/span>\",\"key\":\"blogs_index_title\",\"place\":null,\"id\":25}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 10:34:57', '2023-10-15 10:34:57'),
(42, 'App\\Models\\User', 2, 'created', 'App\\Models\\BlogCategory', 2, '[]', '{\"title\":\"Travel\",\"slug\":\"travel\",\"color\":null,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 10:47:49', '2023-10-15 10:47:49'),
(43, 'App\\Models\\User', 2, 'deleted', 'App\\Models\\BlogCategory', 1, '{\"id\":1,\"title\":\"Travel\",\"slug\":\"travel\",\"color\":null}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 10:47:54', '2023-10-15 10:47:54'),
(44, 'App\\Models\\User', 2, 'created', 'App\\Models\\BlogCategory', 3, '[]', '{\"title\":\"Food\",\"slug\":\"food\",\"color\":null,\"id\":3}', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 10:48:06', '2023-10-15 10:48:06'),
(45, 'App\\Models\\User', 2, 'created', 'App\\Models\\BlogCategory', 4, '[]', '{\"title\":\"Products\",\"slug\":\"products\",\"color\":null,\"id\":4}', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-15 10:48:25', '2023-10-15 10:48:25'),
(46, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 26, '[]', '{\"content\":\"Category\",\"key\":\"Category\",\"place\":null,\"id\":26}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 05:21:27', '2023-10-16 05:21:27'),
(47, 'App\\Models\\User', 2, 'created', 'App\\Models\\BlogTag', 2, '[]', '{\"title\":\"House\",\"slug\":\"house\",\"color\":null,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/blog-tags', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 06:46:47', '2023-10-16 06:46:47'),
(48, 'App\\Models\\User', 2, 'deleted', 'App\\Models\\BlogTag', 1, '{\"id\":1,\"title\":\"House\",\"slug\":\"house\",\"color\":null}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blog-tags/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 06:46:52', '2023-10-16 06:46:52'),
(49, 'App\\Models\\User', 2, 'created', 'App\\Models\\BlogTag', 3, '[]', '{\"title\":\"Flat\",\"slug\":\"flat\",\"color\":null,\"id\":3}', 'http://buyitfromturkey.localhost/buyitadmin/blog-tags', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 06:46:59', '2023-10-16 06:46:59'),
(50, 'App\\Models\\User', 2, 'created', 'App\\Models\\Author', 2, '[]', '{\"name\":\"Mohammed Kharzom\",\"slug\":\"mk\",\"brief\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et magni temporibus voluptates adipisicing..\",\"image\":null,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/authors', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 06:47:28', '2023-10-16 06:47:28'),
(51, 'App\\Models\\User', 2, 'deleted', 'App\\Models\\Author', 2, '{\"id\":2,\"name\":\"Mohammed Kharzom\",\"brief\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et magni temporibus voluptates adipisicing..\",\"slug\":\"mk\",\"image\":null}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/authors/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 06:47:32', '2023-10-16 06:47:32'),
(52, 'App\\Models\\User', 2, 'created', 'App\\Models\\Blog', 1, '[]', '{\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \",\"author_id\":\"1\",\"blog_category_id\":\"2\",\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"is_featured\":1,\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/blogs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(53, 'App\\Models\\User', 2, 'created', 'App\\Models\\Blog', 2, '[]', '{\"title\":\"test blog\",\"slug\":\"Muhammed\",\"brief\":\"Cum fugiat iusto ip\",\"content\":\"<p>TESTSETETSTS<br>TETST<br>TESTS<br>sTES<\\/p>\",\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Recusandae Optio c\",\"meta_keyword\":\"Do quia nulla soluta\",\"meta_canonical\":\"Vitae tempore elige\",\"meta_ogimage\":\"Quibusdam nihil volu\",\"author_id\":\"1\",\"blog_category_id\":\"4\",\"date\":\"31-May-1994\",\"thumbnail_image\":\"blogs\\\\October2023\\\\BZ04r1FRnzcOPg4TQ69l.png\",\"cover_image\":\"blogs\\\\October2023\\\\5QPNwyGmw1GFkUfYRp6p.png\",\"is_featured\":1,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/blogs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 07:06:21', '2023-10-16 07:06:21'),
(54, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 27, '[]', '{\"content\":\"Show More\",\"key\":\"Show_More\",\"place\":null,\"id\":27}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 07:29:18', '2023-10-16 07:29:18'),
(55, 'App\\Models\\User', 2, 'created', 'App\\Models\\SiteText', 28, '[]', '{\"content\":\"Show Less\",\"key\":\"Show_Less\",\"place\":null,\"id\":28}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 07:29:30', '2023-10-16 07:29:30'),
(56, 'App\\Models\\User', 2, 'updated', 'App\\Models\\BlogCategory', 4, '{\"slug\":\"products\"}', '{\"slug\":\"\\u00fcr\\u00fcnler\"}', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 09:16:22', '2023-10-16 09:16:22'),
(57, 'App\\Models\\User', 2, 'updated', 'App\\Models\\BlogCategory', 3, '{\"color\":null}', '{\"color\":\"warning\"}', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories/3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 09:49:44', '2023-10-16 09:49:44'),
(58, 'App\\Models\\User', 2, 'updated', 'App\\Models\\BlogCategory', 4, '{\"color\":null}', '{\"color\":\"info\"}', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 09:49:49', '2023-10-16 09:49:49'),
(59, 'App\\Models\\User', 2, 'updated', 'App\\Models\\BlogCategory', 2, '{\"color\":null}', '{\"color\":\"success\"}', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 09:49:54', '2023-10-16 09:49:54'),
(60, 'App\\Models\\User', 2, 'updated', 'App\\Models\\Blog', 3, '{\"blog_category_id\":2,\"date\":\"10-Jul-1985\"}', '{\"blog_category_id\":\"3\",\"date\":\"1985-07-09T21:00:00.000000Z\"}', 'http://buyitfromturkey.localhost/buyitadmin/blogs/3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
(61, 'App\\Models\\User', 2, 'updated', 'App\\Models\\BlogCategory', 2, '{\"color\":\"success\"}', '{\"color\":\"bblue\"}', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 09:52:27', '2023-10-16 09:52:27'),
(62, 'App\\Models\\User', 3, 'created', 'App\\Models\\SiteText', 29, '[]', '{\"content\":\"Sayfa Bulunamad\\u0131\",\"key\":\"404title\",\"place\":\"404\",\"id\":29}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:06:10', '2023-10-18 00:06:10'),
(63, 'App\\Models\\User', 3, 'created', 'App\\Models\\SiteText', 30, '[]', '{\"key\":\"404content\",\"content\":\"\",\"place\":\"404\",\"id\":30}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:06:26', '2023-10-18 00:06:26'),
(64, 'App\\Models\\User', 3, 'updated', 'App\\Models\\SiteText', 30, '{\"content\":\"\"}', '{\"content\":\"Ncinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.\"}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts/30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:06:36', '2023-10-18 00:06:36'),
(65, 'App\\Models\\User', 3, 'created', 'App\\Models\\SiteText', 31, '[]', '{\"content\":\"Anasayfaya D\\u00f6n\",\"key\":\"404backToHomepage\",\"place\":\"404\",\"id\":31}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:07:03', '2023-10-18 00:07:03'),
(66, 'App\\Models\\User', 3, 'created', 'App\\Models\\StaticPage', 1, '[]', '{\"title\":\"Kullan\\u0131m Ko\\u015fullar\\u0131\",\"slug\":\"kullanim-kosullari\",\"content\":\"<h5>Use of our website<\\/h5>\\n<p>These Conditions are the only conditions applicable to the use of this website and replace any other, except with the prior express written consent of the Seller. These Terms are important to both you and us as they are designed to create a legally binding agreement between us protecting your rights as a customer and our rights as a company. You declare that, by placing your order, you have read and accept these Conditions without reservation.<\\/p>\\n<h5>You agree that:<\\/h5>\\n<ul>\\n<li>You may only use the website to make legally valid queries or orders<\\/li>\\n<li>You may only use the website to make legally valid queries or orders<\\/li>\\n<li>You may only use the website to make legally valid queries or orders<\\/li>\\n<li>You may only use the website to make legally valid queries or orders<\\/li>\\n<li>You may only use the website to make legally valid queries or orders<\\/li>\\n<\\/ul>\\n<p>Donec rutrum, metus non aliquet aliquam, diam elit ornare arcu, sed facilisis neque sem vel mauris. In tristique orci urna, sit amet faucibus leo ultrices eget. Phasellus ac erat mauris. Aliquam erat volutpat. Nulla leo diam, dignissim ut viverra quis, lobortis eget enim. Ut suscipit erat ac neque pellentesque, ut luctus nisl lacinia. Vivamus dignissim at eros at interdum. Curabitur ultricies mauris dui, id suscipit neque lacinia iaculis. Fusce placerat libero arcu, nec ultrices purus interdum ac. Nulla malesuada tristique ante id sodales. Mauris nec finibus nibh, quis euismod ex. Pellentesque id sollicitudin nisl. <br><br>Nam vitae quam elit. Pellentesque nisi massa, fermentum id ligula quis, dignissim malesuada eros. Aliquam fermentum imperdiet varius. Ut tristique luctus dui volutpat dapibus. Donec fermentum tempus nibh, quis rhoncus tortor fringilla eu. Aliquam nulla ligula, luctus cursus massa ut, tincidunt interdum eros. Cras varius ac est vel cursus. Donec a ligula gravida tellus commodo eleifend id nec tellus. Maecenas facilisis nunc ut elit ullamcorper auctor. Sed quam ante, rutrum sit amet porttitor in, molestie quis orci. <br><br>Donec nulla erat, tempor et laoreet sed, eleifend at orci. Duis mattis nisi vitae augue malesuada, dapibus feugiat nisi feugiat. Aenean mauris lacus, tempor quis imperdiet sed, auctor in dui. In iaculis ipsum arcu, non dictum elit suscipit eget. Quisque mattis nisl condimentum ligula mollis, vel imperdiet eros dapibus. Etiam volutpat eget eros non tincidunt. Pellentesque at sollicitudin velit, ac condimentum nisi. Nam mattis, est nec ultrices sollicitudin, nulla sem sodales orci, vel hendrerit ipsum odio congue nunc. Proin molestie in tortor id lacinia. Ut pretium nunc et eleifend lacinia. Praesent quis eleifend nibh. Integer iaculis pulvinar eros, ac consequat ex efficitur in. Aliquam nec fermentum leo. Etiam placerat hendrerit iaculis. Vestibulum finibus ex vel accumsan fringilla. <br><br>Integer massa elit, porttitor vel pulvinar ac, pretium vitae enim. Proin porttitor efficitur nulla, at lobortis ex tempor a. Morbi egestas leo ac mauris posuere, eu congue est tincidunt. Vivamus vel leo vulputate, dictum arcu sed, lobortis nulla. In viverra arcu molestie magna tempor aliquet. Nam eget congue dui. Proin vitae mauris ac dui ultricies feugiat. Aliquam erat volutpat. Nunc vel vehicula dolor. Curabitur sagittis dictum porta. Morbi non laoreet velit. Curabitur semper dolor et dictum euismod.<\\/p>\",\"meta_title\":\"Kullan\\u0131m Ko\\u015fullar\\u0131\",\"meta_description\":\"\",\"meta_keyword\":\"\",\"meta_canonical\":\"\",\"meta_ogimage\":\"\",\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/static-pages', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:24:49', '2023-10-18 00:24:49'),
(67, 'App\\Models\\User', 3, 'created', 'App\\Models\\SiteText', 32, '[]', '{\"content\":\"profil\",\"key\":\"routeProfile\",\"place\":\"profil route\",\"id\":32}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:26:35', '2023-10-18 00:26:35'),
(68, 'App\\Models\\User', 3, 'created', 'App\\Models\\SiteText', 33, '[]', '{\"content\":\"sayfa\",\"key\":\"routePage\",\"place\":\"sabit sayfa route\",\"id\":33}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:26:52', '2023-10-18 00:26:52'),
(69, 'App\\Models\\User', 3, 'created', 'App\\Models\\SiteText', 34, '[]', '{\"content\":\"iletisim\",\"key\":\"routeContact\",\"place\":\"iletisim sayfasi route\",\"id\":34}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:29:22', '2023-10-18 00:29:22'),
(70, 'App\\Models\\User', 3, 'created', 'App\\Models\\SiteText', 35, '[]', '{\"content\":\"\\u0130leti\\u015fim Formunuz Ba\\u015far\\u0131yla G\\u00f6nderilmi\\u015ftir!\",\"key\":\"Contact_Order_submitted\",\"place\":\"\\u0130leti\\u015fim Sayfas\\u0131\",\"id\":35}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:39:22', '2023-10-18 00:39:22'),
(71, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ContactUs', 1, '{\"email\":\"belisipos@mailinator.com\",\"phone1\":\"+1 (203) 292-4061\",\"phone2\":\"+1 (593) 826-4718\",\"whatsapp\":\"Ea iure aut voluptat\",\"address\":\"Dolores a qui occaec\",\"facebook\":\"Iure eligendi simili\",\"youtube\":\"Ex corrupti asperna\",\"twitter\":\"Fugiat aut adipisci\",\"instagram\":\"Reprehenderit eu in\"}', '{\"email\":\"info@buyitfromturkiye.com\",\"phone1\":\"+90 500 000 00 00\",\"phone2\":\"+90 500 000 00 00\",\"whatsapp\":\"+90 500 000 00 00\",\"address\":\"Istanbul \\/ Turkiye\",\"facebook\":\"#\",\"youtube\":\"#\",\"twitter\":\"#\",\"instagram\":\"#\"}', 'http://buyitfromturkey.localhost/buyitadmin/contact-us/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:41:52', '2023-10-18 00:41:52'),
(72, NULL, NULL, 'created', 'App\\Models\\SiteText', 36, '[]', '{\"content\":\"\\u00fcr\\u00fcnler\",\"key\":\"routeProducts\",\"place\":null,\"id\":36}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 08:16:56', '2023-10-18 08:16:56'),
(73, NULL, NULL, 'created', 'App\\Models\\SiteText', 37, '[]', '{\"content\":\"\\u00dcr\\u00fcn_Detaylar\\u0131\",\"key\":\"routeProductDetails\",\"place\":null,\"id\":37}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 08:18:47', '2023-10-18 08:18:47'),
(74, NULL, NULL, 'created', 'App\\Models\\SiteText', 38, '[]', '{\"content\":\"how_it_work\",\"key\":\"routeHowitwork\",\"place\":null,\"id\":38}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 19:57:49', '2023-10-18 19:57:49'),
(75, NULL, NULL, 'created', 'App\\Models\\SiteText', 39, '[]', '{\"content\":\"Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.\",\"key\":\"how_it_works_brief\",\"place\":null,\"id\":39}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 00:13:03', '2023-10-19 00:13:03'),
(76, NULL, NULL, 'created', 'App\\Models\\SiteText', 40, '[]', '{\"content\":\"You can reliably reach <strong>the product or service<\\/strong> you want <strong>from all                             over Turkey<\\/strong> through us.\",\"key\":\"how_it_works_footer_brief\",\"place\":null,\"id\":40}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 00:23:44', '2023-10-19 00:23:44'),
(77, NULL, NULL, 'created', 'App\\Models\\SiteText', 41, '[]', '{\"content\":\"How it works?\",\"key\":\"How_it_works_header\",\"place\":null,\"id\":41}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 00:29:59', '2023-10-19 00:29:59'),
(78, NULL, NULL, 'created', 'App\\Models\\SiteText', 42, '[]', '{\"content\":\"Contact\",\"key\":\"Contact\",\"place\":null,\"id\":42}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 00:30:10', '2023-10-19 00:30:10'),
(79, NULL, NULL, 'created', 'App\\Models\\SiteText', 43, '[]', '{\"content\":\"What we offer?\",\"key\":\"What_we_offer_header\",\"place\":null,\"id\":43}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 00:31:38', '2023-10-19 00:31:38'),
(80, NULL, NULL, 'created', 'App\\Models\\SiteText', 44, '[]', '{\"content\":\"Who Are We?\",\"key\":\"Who_Are_We_header\",\"place\":null,\"id\":44}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 00:31:59', '2023-10-19 00:31:59'),
(81, NULL, NULL, 'created', 'App\\Models\\SiteText', 45, '[]', '{\"content\":\"Why Choose Turkey?\",\"key\":\"Why_Choose_Turkey_header\",\"place\":null,\"id\":45}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 01:15:19', '2023-10-19 01:15:19'),
(82, NULL, NULL, 'created', 'App\\Models\\CoverImage', 1, '[]', '{\"title\":\"nas\\u0131l_\\u00e7al\\u0131\\u015f\\u0131r\",\"image\":\"cover-images\\\\October2023\\\\mUHlhYBI6SNf6ve380GH.png\",\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/cover-images', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 01:44:24', '2023-10-19 01:44:24'),
(83, NULL, NULL, 'updated', 'App\\Models\\SiteText', 40, '[]', '[]', 'http://buyitfromturkey.localhost/buyitadmin/site-texts/40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 01:59:28', '2023-10-19 01:59:28'),
(84, NULL, NULL, 'created', 'App\\Models\\SiteText', 46, '[]', '{\"content\":\"why_choose\",\"key\":\"routeWhyChoose\",\"place\":null,\"id\":46}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:08:45', '2023-10-19 05:08:45'),
(85, NULL, NULL, 'created', 'App\\Models\\SiteText', 47, '[]', '{\"content\":\"who_we_are\",\"key\":\"routeWhoweare\",\"place\":null,\"id\":47}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:09:08', '2023-10-19 05:09:08'),
(86, NULL, NULL, 'created', 'App\\Models\\SiteText', 48, '[]', '{\"content\":\"What_we_offer\",\"key\":\"routeWhatweoffer\",\"place\":null,\"id\":48}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:09:29', '2023-10-19 05:09:29'),
(87, NULL, NULL, 'created', 'App\\Models\\CoverImage', 2, '[]', '{\"title\":\"neden_se\\u00e7tin\",\"image\":\"cover-images\\\\October2023\\\\Pn42hmZlukcaeYES7fAW.png\",\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/cover-images', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:13:23', '2023-10-19 05:13:23'),
(88, NULL, NULL, 'created', 'App\\Models\\CoverImage', 3, '[]', '{\"title\":\"Biz_Kimiz\",\"image\":\"cover-images\\\\October2023\\\\yQdQDJ12yrtq8ETZLKPx.png\",\"id\":3}', 'http://buyitfromturkey.localhost/buyitadmin/cover-images', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:13:55', '2023-10-19 05:13:55'),
(89, NULL, NULL, 'created', 'App\\Models\\CoverImage', 4, '[]', '{\"title\":\"teklifimiz\",\"image\":\"cover-images\\\\October2023\\\\EUHixm8n6JJNml5YGgLj.png\",\"id\":4}', 'http://buyitfromturkey.localhost/buyitadmin/cover-images', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:14:19', '2023-10-19 05:14:19'),
(90, NULL, NULL, 'created', 'App\\Models\\SiteText', 49, '[]', '{\"content\":\"WHY CHOOSE <span>TURKEY?<\\/span>\",\"key\":\"why_choose_turkey_page_title\",\"place\":null,\"id\":49}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:23:38', '2023-10-19 05:23:38'),
(91, NULL, NULL, 'created', 'App\\Models\\SiteText', 50, '[]', '{\"content\":\"<strong>Turkey<\\/strong> is an attractive option for international buyers with competitive                         prices and high-quality products. Its strategic location and technological expertise are                         also appealing factors. Additionally, the strong agriculture sector is noteworthy.                         <br>                         <br>                         Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.                         <br>                         <br>                         Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         <br>                         <br>                         Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in                         vulputate. Morbi lectus felis, tincidunt sed dui sit amet, sagittis sagittis dui. Aenean                         vestibulum nisl in nisi dignissim, eu semper diam interdum.\",\"key\":\"why_choose_turkey_page_content\",\"place\":null,\"id\":50}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:28:04', '2023-10-19 05:28:04'),
(92, NULL, NULL, 'created', 'App\\Models\\SiteText', 51, '[]', '{\"content\":\"Advantages\",\"key\":\"Advantages\",\"place\":null,\"id\":51}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:29:30', '2023-10-19 05:29:30');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(93, NULL, NULL, 'created', 'App\\Models\\Advantage', 1, '[]', '{\"title\":\"\",\"content\":\"\",\"active\":1,\"order\":null,\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/advantages', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:32:10', '2023-10-19 05:32:10'),
(94, NULL, NULL, 'updated', 'App\\Models\\Advantage', 1, '{\"title\":\"\",\"content\":\"\"}', '{\"title\":\"In Sollicitudin Feugiat Enim Ut Ullamcorper\",\"content\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu\"}', 'http://buyitfromturkey.localhost/buyitadmin/advantages/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:32:31', '2023-10-19 05:32:31'),
(95, NULL, NULL, 'created', 'App\\Models\\SiteText', 52, '[]', '{\"content\":\"WHO ARE <span>WE?<\\/span>\",\"key\":\"who_we_are_page_title\",\"place\":null,\"id\":52}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:38:18', '2023-10-19 05:38:18'),
(96, NULL, NULL, 'created', 'App\\Models\\SiteText', 53, '[]', '{\"content\":\"About Us\",\"key\":\"About_Us\",\"place\":null,\"id\":53}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:39:51', '2023-10-19 05:39:51'),
(97, NULL, NULL, 'updated', 'App\\Models\\SiteText', 53, '[]', '[]', 'http://buyitfromturkey.localhost/buyitadmin/site-texts/53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:39:57', '2023-10-19 05:39:57'),
(98, NULL, NULL, 'created', 'App\\Models\\SiteText', 54, '[]', '{\"content\":\"<strong>Turkey<\\/strong> is an attractive option for international buyers with competitive                         prices and high-quality products. Its strategic location and technological expertise are                         also appealing factors. Additionally, the strong agriculture sector is noteworthy.                         <br>                         <br>                         Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.                         <br>                         <br>                         Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         <br>                         <br>                         Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in                         vulputate. Morbi lectus felis, tincidunt sed dui sit amet, sagittis sagittis dui. Aenean                         vestibulum nisl in nisi dignissim, eu semper diam interdum.\",\"key\":\"About_us_content\",\"place\":null,\"id\":54}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:40:39', '2023-10-19 05:40:39'),
(99, NULL, NULL, 'updated', 'App\\Models\\ContactUs', 1, '{\"aboutUs_video\":null}', '{\"aboutUs_video\":\"https:\\/\\/www.youtube.com\\/embed\\/5qZ2u7ZratM\"}', 'http://buyitfromturkey.localhost/buyitadmin/contact-us/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(100, NULL, NULL, 'updated', 'App\\Models\\ContactUs', 1, '{\"aboutUs_video\":null,\"aboutUs_video_image\":null}', '{\"aboutUs_video\":\"https:\\/\\/www.youtube.com\\/embed\\/5qZ2u7ZratM\",\"aboutUs_video_image\":\"contact-us\\\\October2023\\\\B6UopCfMq6sr8JRLM1gL.png\"}', 'http://buyitfromturkey.localhost/buyitadmin/contact-us/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:50:42', '2023-10-19 05:50:42'),
(101, NULL, NULL, 'created', 'App\\Models\\SiteText', 55, '[]', '{\"content\":\"Our Mission\",\"key\":\"Our_Mission\",\"place\":null,\"id\":55}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:52:42', '2023-10-19 05:52:42'),
(102, NULL, NULL, 'created', 'App\\Models\\SiteText', 56, '[]', '{\"content\":\"Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor                         elementum, pulvinar justo ac, elementum lacus.\",\"key\":\"Our_mission_content1\",\"place\":null,\"id\":56}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:53:30', '2023-10-19 05:53:30'),
(103, NULL, NULL, 'created', 'App\\Models\\SiteText', 57, '[]', '{\"key\":\"Our_mission_content2\",\"content\":\"\",\"place\":null,\"id\":57}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:53:41', '2023-10-19 05:53:41'),
(104, NULL, NULL, 'created', 'App\\Models\\SiteText', 58, '[]', '{\"content\":\"Our Values\",\"key\":\"Our_Values\",\"place\":null,\"id\":58}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:54:42', '2023-10-19 05:54:42'),
(105, NULL, NULL, 'created', 'App\\Models\\SiteText', 59, '[]', '{\"content\":\"Global Experience\",\"key\":\"Global_Experience\",\"place\":null,\"id\":59}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:56:03', '2023-10-19 05:56:03'),
(106, NULL, NULL, 'updated', 'App\\Models\\SiteText', 57, '{\"content\":\"\"}', '{\"content\":\"Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus. Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.\"}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts/57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:56:13', '2023-10-19 05:56:13'),
(107, NULL, NULL, 'created', 'App\\Models\\SiteText', 60, '[]', '{\"content\":\"Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor elementum,                     pulvinar justo ac, elementum lacus. Morbi lectus felis, tincidunt sed dui sit amet, sagittis                     sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam interdum.\",\"key\":\"Global_Experience_content\",\"place\":null,\"id\":60}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 05:57:06', '2023-10-19 05:57:06'),
(108, NULL, NULL, 'created', 'App\\Models\\SiteText', 61, '[]', '{\"content\":\"You can reliably reach <span>the product or service<\\/span> you want <br> <em>from all over                         Turkey<\\/em> through us.\",\"key\":\"team_section_brief\",\"place\":null,\"id\":61}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:00:49', '2023-10-19 06:00:49'),
(109, NULL, NULL, 'created', 'App\\Models\\SiteText', 62, '[]', '{\"content\":\"More info\",\"key\":\"More_info\",\"place\":null,\"id\":62}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:01:29', '2023-10-19 06:01:29'),
(110, NULL, NULL, 'created', 'App\\Models\\SiteText', 63, '[]', '{\"content\":\"<span>OUR<\\/span> FOUNDERS\",\"key\":\"our_founders_title\",\"place\":null,\"id\":63}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:02:39', '2023-10-19 06:02:39'),
(111, NULL, NULL, 'created', 'App\\Models\\SiteText', 64, '[]', '{\"content\":\"Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor                             elementum, pulvinar justo ac, elementum lacus.\",\"key\":\"our_founders_content\",\"place\":null,\"id\":64}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:02:55', '2023-10-19 06:02:55'),
(112, NULL, NULL, 'created', 'App\\Models\\Founder', 1, '[]', '{\"name\":\"\\u0130sim Soyisim\",\"title\":\"CTO\",\"image\":\"founders\\\\October2023\\\\xE1btkMRwAcp8h1BBHTT.png\",\"email\":\"kharzom.mohammed@gmail.com\",\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/founders', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:10:48', '2023-10-19 06:10:48'),
(113, NULL, NULL, 'created', 'App\\Models\\SiteText', 65, '[]', '{\"content\":\"Tags\",\"key\":\"Tags\",\"place\":null,\"id\":65}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:32:20', '2023-10-19 06:32:20'),
(114, NULL, NULL, 'created', 'App\\Models\\SiteText', 66, '[]', '{\"content\":\"What We <span>Offer?<\\/span>\",\"key\":\"what_we_offer_page_title\",\"place\":null,\"id\":66}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:39:43', '2023-10-19 06:39:43'),
(115, NULL, NULL, 'created', 'App\\Models\\SiteText', 67, '[]', '{\"content\":\"<strong>Turkey<\\/strong> is an attractive option for international buyers with competitive                         prices and high-quality products. Its strategic location and technological expertise are                         also appealing factors. Additionally, the strong agriculture sector is noteworthy.                         <br>                         <br>                         Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.\",\"key\":\"what_we_offer_page_content\",\"place\":null,\"id\":67}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:40:15', '2023-10-19 06:40:15'),
(116, NULL, NULL, 'updated', 'App\\Models\\OurOffer', 2, '[]', '[]', 'http://buyitfromturkey.localhost/buyitadmin/our-offers/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:44:54', '2023-10-19 06:44:54'),
(117, NULL, NULL, 'updated', 'App\\Models\\OurOffer', 1, '[]', '[]', 'http://buyitfromturkey.localhost/buyitadmin/our-offers/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:44:59', '2023-10-19 06:44:59'),
(118, NULL, NULL, 'updated', 'App\\Models\\OurOffer', 2, '{\"content\":\"\"}', '{\"content\":\"Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp\"}', 'http://buyitfromturkey.localhost/buyitadmin/our-offers/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:47:41', '2023-10-19 06:47:41'),
(119, NULL, NULL, 'updated', 'App\\Models\\OurOffer', 1, '{\"content\":\"\"}', '{\"content\":\"Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp\"}', 'http://buyitfromturkey.localhost/buyitadmin/our-offers/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 06:48:09', '2023-10-19 06:48:09'),
(120, NULL, NULL, 'created', 'App\\Models\\SiteText', 68, '[]', '{\"content\":\"product and services\",\"key\":\"product_and_services\",\"place\":null,\"id\":68}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 07:18:36', '2023-10-19 07:18:36'),
(121, NULL, NULL, 'updated', 'App\\Models\\ContactUs', 1, '{\"facebook\":\"#\",\"youtube\":\"#\",\"twitter\":\"#\",\"instagram\":\"#\"}', '{\"facebook\":\"Facebook\",\"youtube\":\"Youtube\",\"twitter\":\"Twitter\",\"instagram\":\"Instagram\"}', 'http://buyitfromturkey.localhost/buyitadmin/contact-us/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 07:25:06', '2023-10-19 07:25:06'),
(122, NULL, NULL, 'created', 'App\\Models\\SiteText', 69, '[]', '{\"content\":\"Appl\\u0131cat\\u0131on <span>for sell<\\/span>\",\"key\":\"application_form_page_title\",\"place\":null,\"id\":69}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 08:15:58', '2023-10-19 08:15:58'),
(123, NULL, NULL, 'created', 'App\\Models\\SiteText', 70, '[]', '{\"content\":\"Send us your questions and we\'ll answer them. All the answers you are looking for are here\",\"key\":\"application_form_page_brief\",\"place\":null,\"id\":70}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 08:16:30', '2023-10-19 08:16:30'),
(124, NULL, NULL, 'created', 'App\\Models\\SiteText', 71, '[]', '{\"content\":\"application\",\"key\":\"routeApplicationForm\",\"place\":null,\"id\":71}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-19 08:56:22', '2023-10-19 08:56:22'),
(125, NULL, NULL, 'created', 'App\\Models\\SiteText', 72, '[]', '{\"content\":\"get_an_offer\",\"key\":\"routeOfferForm\",\"place\":null,\"id\":72}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-23 07:05:39', '2023-10-23 07:05:39'),
(126, NULL, NULL, 'created', 'App\\Models\\SiteText', 73, '[]', '{\"content\":\"What Would You Like To Get <br> From T\\u00fcrkiye ?\",\"key\":\"homepage_get_an_offer_title\",\"place\":null,\"id\":73}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 05:49:54', '2023-10-24 05:49:54'),
(127, NULL, NULL, 'created', 'App\\Models\\SiteText', 74, '[]', '{\"content\":\"What Would You Like To Get <br> From T\\u00fcrkiye ?\",\"key\":\"homepage_make_an_application_title\",\"place\":null,\"id\":74}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 05:50:46', '2023-10-24 05:50:46'),
(128, NULL, NULL, 'deleted', 'App\\Models\\Blog', 9, '{\"id\":9,\"author_id\":1,\"blog_category_id\":2,\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"is_featured\":1,\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blogs/9', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:56:06', '2023-10-24 08:56:06'),
(129, NULL, NULL, 'deleted', 'App\\Models\\Blog', 4, '{\"id\":4,\"author_id\":1,\"blog_category_id\":2,\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"is_featured\":1,\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blogs/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:56:11', '2023-10-24 08:56:11'),
(130, NULL, NULL, 'deleted', 'App\\Models\\Blog', 3, '{\"id\":3,\"author_id\":1,\"blog_category_id\":3,\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"date\":\"1985-07-10 00:00:00\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"is_featured\":1,\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blogs/3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:56:16', '2023-10-24 08:56:16'),
(131, NULL, NULL, 'deleted', 'App\\Models\\Blog', 6, '{\"id\":6,\"author_id\":1,\"blog_category_id\":2,\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"is_featured\":1,\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blogs/6', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:56:20', '2023-10-24 08:56:20'),
(132, NULL, NULL, 'deleted', 'App\\Models\\Blog', 11, '{\"id\":11,\"author_id\":1,\"blog_category_id\":2,\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"is_featured\":1,\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blogs/11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:56:26', '2023-10-24 08:56:26'),
(133, NULL, NULL, 'deleted', 'App\\Models\\Blog', 7, '{\"id\":7,\"author_id\":1,\"blog_category_id\":2,\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"is_featured\":1,\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blogs/7', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:56:30', '2023-10-24 08:56:30'),
(134, NULL, NULL, 'deleted', 'App\\Models\\Blog', 5, '{\"id\":5,\"author_id\":1,\"blog_category_id\":2,\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"is_featured\":1,\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blogs/5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:56:35', '2023-10-24 08:56:35'),
(135, NULL, NULL, 'deleted', 'App\\Models\\Blog', 12, '{\"id\":12,\"author_id\":1,\"blog_category_id\":2,\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"is_featured\":1,\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blogs/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:56:39', '2023-10-24 08:56:39');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(136, NULL, NULL, 'deleted', 'App\\Models\\Blog', 10, '{\"id\":10,\"author_id\":1,\"blog_category_id\":2,\"title\":\"Why Do People Travel to Other Countries for                                                                 Medical Services?\",\"slug\":\"Why_Do\",\"brief\":\"Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.\",\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\",\"cover_image\":\"blogs\\\\October2023\\\\iq60XHnFwHJVSlHT0CMY.png\",\"content\":\"<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.<\\/p>\",\"is_featured\":1,\"meta_title\":\"Tempore doloremque \",\"meta_description\":\"Eum laborum Eligend\",\"meta_keyword\":\"Voluptatibus anim be\",\"meta_canonical\":\"Fugiat delectus fug\",\"meta_ogimage\":\"Quo earum magnam ea \"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/blogs/10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:56:54', '2023-10-24 08:56:54'),
(137, NULL, NULL, 'updated', 'App\\Models\\Blog', 8, '{\"blog_category_id\":2,\"date\":\"10-Jul-1985\"}', '{\"blog_category_id\":\"3\",\"date\":\"1985-07-09T21:00:00.000000Z\"}', 'http://buyitfromturkey.localhost/buyitadmin/blogs/8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:57:05', '2023-10-24 08:57:05'),
(138, NULL, NULL, 'updated', 'App\\Models\\Blog', 8, '{\"date\":\"1985-07-10 00:00:00\"}', '{\"date\":\"1985-07-09T21:00:00.000000Z\"}', 'http://buyitfromturkey.localhost/buyitadmin/blogs/8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(139, NULL, NULL, 'updated', 'App\\Models\\Blog', 8, '{\"blog_category_id\":3,\"date\":\"1985-07-10 00:00:00\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\"}', '{\"blog_category_id\":\"4\",\"date\":\"1985-07-09T21:00:00.000000Z\",\"thumbnail_image\":\"blogs\\\\October2023\\\\c7O1ORxhfRr2YyhPUhAw.png\"}', 'http://buyitfromturkey.localhost/buyitadmin/blogs/8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 08:58:40', '2023-10-24 08:58:40'),
(140, NULL, NULL, 'updated', 'App\\Models\\Blog', 1, '{\"date\":\"10-Jul-1985\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\"}', '{\"date\":\"1985-07-09T21:00:00.000000Z\",\"thumbnail_image\":\"blogs\\\\October2023\\\\0grfRD9yyxdhJve5Hqp0.png\"}', 'http://buyitfromturkey.localhost/buyitadmin/blogs/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 09:03:27', '2023-10-24 09:03:27'),
(141, NULL, NULL, 'updated', 'App\\Models\\Blog', 4, '{\"date\":\"1985-07-10 00:00:00\",\"thumbnail_image\":\"blogs\\\\October2023\\\\ye2wmXyjXMaj4mis3rSq.png\"}', '{\"date\":\"1985-07-09T21:00:00.000000Z\",\"thumbnail_image\":\"blogs\\\\October2023\\\\lawEUPYqe4a6iA2gYhRk.png\"}', 'http://buyitfromturkey.localhost/buyitadmin/blogs/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(142, NULL, NULL, 'updated', 'App\\Models\\Blog', 1, '{\"date\":\"1985-07-10 00:00:00\"}', '{\"date\":\"1985-07-09T21:00:00.000000Z\"}', 'http://buyitfromturkey.localhost/buyitadmin/blogs/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(143, NULL, NULL, 'updated', 'App\\Models\\Blog', 1, '{\"blog_category_id\":2,\"date\":\"1985-07-10 00:00:00\"}', '{\"blog_category_id\":\"4\",\"date\":\"1985-07-09T21:00:00.000000Z\"}', 'http://buyitfromturkey.localhost/buyitadmin/blogs/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 09:05:16', '2023-10-24 09:05:16'),
(144, NULL, NULL, 'created', 'App\\Models\\SiteText', 75, '[]', '{\"content\":\"bulten\",\"key\":\"routeBulten\",\"place\":null,\"id\":75}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-24 09:57:02', '2023-10-24 09:57:02'),
(145, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 76, '[]', '{\"content\":\"billing_details\",\"key\":\"routeBilling\",\"place\":null,\"id\":76}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 01:43:41', '2023-10-25 01:43:41'),
(146, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 77, '[]', '{\"content\":\"myOffers\",\"key\":\"routeMyOffers\",\"place\":null,\"id\":77}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 01:50:03', '2023-10-25 01:50:03'),
(147, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 78, '[]', '{\"content\":\"MyApplications\",\"key\":\"routeMyApplications\",\"place\":null,\"id\":78}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 01:51:00', '2023-10-25 01:51:00'),
(148, 'App\\Models\\User', 4, 'created', 'App\\Models\\ProductTag', 1, '[]', '{\"title\":\"House\",\"slug\":\"house\",\"color\":null,\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/product-tags', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 03:53:17', '2023-10-25 03:53:17'),
(149, 'App\\Models\\User', 4, 'created', 'App\\Models\\ProductTag', 2, '[]', '{\"title\":\"Flat\",\"slug\":\"flat\",\"color\":null,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/product-tags', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 03:53:44', '2023-10-25 03:53:44'),
(150, 'App\\Models\\User', 4, 'created', 'App\\Models\\ProductCategory', 1, '[]', '{\"title\":\"Real Estate\",\"slug\":\"real_estate\",\"color\":null,\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/product-categories', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 03:54:20', '2023-10-25 03:54:20'),
(151, 'App\\Models\\User', 4, 'created', 'App\\Models\\ProductSector', 1, '[]', '{\"title\":\"Secotr1\",\"slug\":\"secotr1\",\"color\":null,\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/product-sectors', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 03:55:16', '2023-10-25 03:55:16'),
(152, 'App\\Models\\User', 4, 'created', 'App\\Models\\Product', 1, '[]', '{\"title\":\"Quaerat eius possimu\",\"slug\":\"Debitis soluta deser\",\"brief\":\"Soluta excepteur mai\",\"content\":\"<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s<\\/p>\",\"product_category_id\":\"1\",\"thumbnail_image\":null,\"Images\":\"products\\\\October2023\\\\D7fzIcvcej2aUVMgzcUY.png\",\"phone\":\"+1 (368) 527-5891\",\"meta_title\":\"Et a labore quo est\",\"meta_description\":\"Aut repudiandae reru\",\"meta_keyword\":\"Aliquid nesciunt er\",\"meta_canonical\":\"Culpa eu aliquid od\",\"meta_ogimage\":\"Dolore dolore beatae\",\"id\":1}', 'http://buyitfromturkey.localhost/buyitadmin/products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 05:27:36', '2023-10-25 05:27:36'),
(153, 'App\\Models\\User', 4, 'created', 'App\\Models\\Product', 2, '[]', '{\"title\":\"Quaerat eius possimu\",\"slug\":\"Debitis soluta deser\",\"brief\":\"Soluta excepteur mai\",\"content\":\"<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s<\\/p>\",\"product_category_id\":\"1\",\"thumbnail_image\":null,\"Images\":\"products\\\\October2023\\\\nt3QHOlzmupvScJhPaDN.png\",\"phone\":\"+1 (368) 527-5891\",\"meta_title\":\"Et a labore quo est\",\"meta_description\":\"Aut repudiandae reru\",\"meta_keyword\":\"Aliquid nesciunt er\",\"meta_canonical\":\"Culpa eu aliquid od\",\"meta_ogimage\":\"Dolore dolore beatae\",\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 05:29:23', '2023-10-25 05:29:23'),
(154, 'App\\Models\\User', 4, 'deleted', 'App\\Models\\Product', 1, '{\"id\":1,\"product_category_id\":1,\"title\":\"Quaerat eius possimu\",\"slug\":\"Debitis soluta deser\",\"thumbnail_image\":null,\"Images\":\"products\\\\October2023\\\\D7fzIcvcej2aUVMgzcUY.png\",\"phone\":\"+1 (368) 527-5891\",\"brief\":\"Soluta excepteur mai\",\"content\":\"<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s<\\/p>\",\"meta_title\":\"Et a labore quo est\",\"meta_description\":\"Aut repudiandae reru\",\"meta_keyword\":\"Aliquid nesciunt er\",\"meta_canonical\":\"Culpa eu aliquid od\",\"meta_ogimage\":\"Dolore dolore beatae\"}', '[]', 'http://buyitfromturkey.localhost/buyitadmin/products/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 05:29:30', '2023-10-25 05:29:30'),
(155, 'App\\Models\\User', 4, 'updated', 'App\\Models\\Product', 2, '{\"thumbnail_image\":null}', '{\"thumbnail_image\":\"[\\\"products\\\\\\\\October2023\\\\\\\\dZOyzbqAP2j2KUzZctGf.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 05:36:41', '2023-10-25 05:36:41'),
(156, 'App\\Models\\User', 4, 'updated', 'App\\Models\\Product', 2, '{\"thumbnail_image\":\"[\\\"products\\\\\\\\October2023\\\\\\\\dZOyzbqAP2j2KUzZctGf.png\\\"]\"}', '{\"thumbnail_image\":\"products\\\\October2023\\\\CsPdddx5i5I5o76iPpOz.png\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(157, 'App\\Models\\User', 4, 'updated', 'App\\Models\\Product', 2, '{\"Images\":\"products\\\\October2023\\\\nt3QHOlzmupvScJhPaDN.png\"}', '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Nx6xGzx8YUvcKZqvZOUS.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 05:37:58', '2023-10-25 05:37:58'),
(158, 'App\\Models\\User', 4, 'created', 'App\\Models\\ProductCategory', 2, '[]', '{\"title\":\"Offer\",\"slug\":\"offer\",\"color\":null,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/product-categories', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 05:50:01', '2023-10-25 05:50:01'),
(159, 'App\\Models\\User', 4, 'updated', 'App\\Models\\Product', 3, '{\"product_category_id\":1}', '{\"product_category_id\":\"2\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 05:50:30', '2023-10-25 05:50:30'),
(160, 'App\\Models\\User', 4, 'updated', 'App\\Models\\Product', 3, '{\"thumbnail_image\":\"products\\\\October2023\\\\CsPdddx5i5I5o76iPpOz.png\"}', '{\"thumbnail_image\":\"products\\\\October2023\\\\inAscj0j8ynms27gFqpK.png\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 05:51:15', '2023-10-25 05:51:15'),
(161, 'App\\Models\\User', 4, 'updated', 'App\\Models\\Product', 2, '{\"thumbnail_image\":\"products\\\\October2023\\\\CsPdddx5i5I5o76iPpOz.png\"}', '{\"thumbnail_image\":\"products\\\\October2023\\\\eO5aR3vvnYHiq1Z5ciK6.png\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 06:05:11', '2023-10-25 06:05:11'),
(162, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 79, '[]', '{\"content\":\"results are listed according to the information you selected.\",\"key\":\"products_search_results\",\"place\":null,\"id\":79}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 07:05:31', '2023-10-25 07:05:31'),
(163, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 80, '[]', '{\"content\":\"Buy it From Turkiye\",\"key\":\"Buy_it_From_Turkiye\",\"place\":null,\"id\":80}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 07:22:00', '2023-10-25 07:22:00'),
(164, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 81, '[]', '{\"content\":\"Products                                 <br>                                 AND                                 <br>                                 SERVICES\",\"key\":\"products_and_services\",\"place\":null,\"id\":81}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 07:26:20', '2023-10-25 07:26:20'),
(165, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 82, '[]', '{\"content\":\"Search Results\",\"key\":\"Search_Results\",\"place\":null,\"id\":82}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 07:27:12', '2023-10-25 07:27:12'),
(166, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 83, '[]', '{\"content\":\"Minimizing Map\",\"key\":\"Minimizing_Map\",\"place\":null,\"id\":83}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 08:07:10', '2023-10-25 08:07:10'),
(167, 'App\\Models\\User', 4, 'created', 'App\\Models\\ProductSector', 2, '[]', '{\"title\":\"Sector2\",\"slug\":\"sector2\",\"color\":null,\"id\":2}', 'http://buyitfromturkey.localhost/buyitadmin/product-sectors', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 08:19:51', '2023-10-25 08:19:51'),
(168, 'App\\Models\\User', 4, 'created', 'App\\Models\\ProductTag', 3, '[]', '{\"title\":\"Appartment\",\"slug\":\"appartment\",\"color\":null,\"id\":3}', 'http://buyitfromturkey.localhost/buyitadmin/product-tags', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 08:23:48', '2023-10-25 08:23:48'),
(169, 'App\\Models\\User', 4, 'updated', 'App\\Models\\Product', 3, '{\"title\":\"Quaerat eius possimu\"}', '{\"title\":\"offfe products\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 08:39:50', '2023-10-25 08:39:50'),
(170, 'App\\Models\\User', 4, 'updated', 'App\\Models\\Product', 4, '{\"title\":\"Quaerat eius possimu\"}', '{\"title\":\"Sec2\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 08:40:03', '2023-10-25 08:40:03'),
(171, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 84, '[]', '{\"content\":\"Phone\",\"key\":\"Phone\",\"place\":null,\"id\":84}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-25 08:58:30', '2023-10-25 08:58:30'),
(172, NULL, NULL, 'updated', 'App\\Models\\Product', 4, '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Nx6xGzx8YUvcKZqvZOUS.png\\\"]\"}', '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/remove', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 00:06:24', '2023-10-26 00:06:24'),
(173, NULL, NULL, 'updated', 'App\\Models\\Product', 2, '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Nx6xGzx8YUvcKZqvZOUS.png\\\"]\"}', '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/remove', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 00:23:50', '2023-10-26 00:23:50'),
(174, NULL, NULL, 'updated', 'App\\Models\\Product', 2, '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\"]\"}', '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\DQ2dmUn432Rx1u2luIwH.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 00:23:59', '2023-10-26 00:23:59'),
(175, NULL, NULL, 'created', 'App\\Models\\SiteText', 85, '[]', '{\"content\":\"No images available for this product.\",\"key\":\"no_images_avaliable\",\"place\":null,\"id\":85}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 00:26:21', '2023-10-26 00:26:21'),
(176, NULL, NULL, 'updated', 'App\\Models\\Product', 2, '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\DQ2dmUn432Rx1u2luIwH.png\\\"]\"}', '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/remove', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 00:38:13', '2023-10-26 00:38:13'),
(177, NULL, NULL, 'updated', 'App\\Models\\Product', 4, '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\"]\"}', '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\W9AWrpCvTSN1snJXKelt.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 01:15:29', '2023-10-26 01:15:29'),
(178, NULL, NULL, 'updated', 'App\\Models\\Product', 4, '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\W9AWrpCvTSN1snJXKelt.png\\\"]\"}', '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\W9AWrpCvTSN1snJXKelt.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\p44slnqYx8x791vnVebX.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 01:16:45', '2023-10-26 01:16:45'),
(179, NULL, NULL, 'updated', 'App\\Models\\Product', 4, '{\"slug\":\"Sec2\",\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\W9AWrpCvTSN1snJXKelt.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\p44slnqYx8x791vnVebX.png\\\"]\"}', '{\"slug\":\"Debitis soluta deser\",\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\W9AWrpCvTSN1snJXKelt.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\p44slnqYx8x791vnVebX.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\uXBvzPjwEjpQ29N6mb2X.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\9STeBKUXaEd3gdqMRx1y.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 01:18:15', '2023-10-26 01:18:15'),
(180, NULL, NULL, 'updated', 'App\\Models\\Product', 4, '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\W9AWrpCvTSN1snJXKelt.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\p44slnqYx8x791vnVebX.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\uXBvzPjwEjpQ29N6mb2X.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\9STeBKUXaEd3gdqMRx1y.png\\\"]\"}', '{\"Images\":\"[\\\"products\\\\\\\\October2023\\\\\\\\0dmJe4l7XdDGmMTiMGFv.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\EXh8yr7alljT3S6N7t1o.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Da4356hvT8lWcAl6mHXj.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\W9AWrpCvTSN1snJXKelt.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\p44slnqYx8x791vnVebX.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\uXBvzPjwEjpQ29N6mb2X.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\9STeBKUXaEd3gdqMRx1y.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\ghe5bboICde3hp2XTUQQ.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\lIUgQBdLsTEZPbN0kfSL.png\\\",\\\"products\\\\\\\\October2023\\\\\\\\Um2p57vsPJx41NU9VXkt.png\\\"]\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 01:19:15', '2023-10-26 01:19:15'),
(181, NULL, NULL, 'updated', 'App\\Models\\Product', 4, '{\"brief\":\"Soluta excepteur mai\"}', '{\"brief\":\"<p>                             Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique                             lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel                             consectetur.                          <\\/p>                         <h4>Let us know the features of the house you want, and we will come to you with suitable                             houses and offers.<\\/h4>\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 01:21:30', '2023-10-26 01:21:30'),
(182, NULL, NULL, 'updated', 'App\\Models\\Product', 4, '{\"title\":\"Sec2\"}', '{\"title\":\"How can we buy                                 <span>a house?<\\/span>\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 01:22:03', '2023-10-26 01:22:03'),
(183, NULL, NULL, 'updated', 'App\\Models\\Product', 4, '{\"content\":\"<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s<\\/p>\"}', '{\"content\":\"<h4>Detailing<\\/h4>\\n<p>Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt<\\/p>\\n<p>&nbsp;<\\/p>\\n<h4>Technical &amp; Support<\\/h4>\\n<p>Uninterrupted technical support after sales.<\\/p>\\n<p>&nbsp;<\\/p>\\n<h4>Trustworthy Shopping<\\/h4>\\n<p>Safe shopping with 3D Secure services.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p>If you want to know more about real estate companies in Turkiye, visit our website. Please do not hesitate to contact us by mail at <strong>info@buyitfromturkiye.com.tr<\\/strong> or to call\\/WhatsApp us at <strong>+90 500 000 00 00.<\\/strong> We can help you to get in direct contact with producers or provide you with everything that you need.<\\/p>\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 01:22:59', '2023-10-26 01:22:59'),
(184, NULL, NULL, 'updated', 'App\\Models\\Product', 4, '{\"title\":\"How can we buy                                 <span>a house?<\\/span>\"}', '{\"title\":\"How can we buy <span>a house?<\\/span>\"}', 'http://buyitfromturkey.localhost/buyitadmin/products/4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 01:41:09', '2023-10-26 01:41:09'),
(185, NULL, NULL, 'created', 'App\\Models\\SiteText', 86, '[]', '{\"content\":\"Products and Services \",\"key\":\"Products_and_Services_header\",\"place\":null,\"id\":86}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 01:43:57', '2023-10-26 01:43:57'),
(186, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 87, '[]', '{\"content\":\"Billing Details\",\"key\":\"Billing_Details\",\"place\":null,\"id\":87}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 07:45:15', '2023-10-26 07:45:15'),
(187, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 88, '[]', '{\"content\":\"Yeni Adres Ekle\",\"key\":\"Add_new_address\",\"place\":null,\"id\":88}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 07:47:43', '2023-10-26 07:47:43'),
(188, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 89, '[]', '{\"content\":\"Bireysel\",\"key\":\"Individual\",\"place\":null,\"id\":89}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 08:02:51', '2023-10-26 08:02:51'),
(189, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 90, '[]', '{\"content\":\"Kurumsal\",\"key\":\"Institutional\",\"place\":null,\"id\":90}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 08:03:10', '2023-10-26 08:03:10'),
(190, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 91, '[]', '{\"content\":\"T\\u00fcrkiye, uluslararas\\u0131 al\\u0131c\\u0131lar i\\u00e7in cazip bir se\\u00e7enek\",\"key\":\"log_out_modal_message\",\"place\":null,\"id\":91}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 08:54:23', '2023-10-26 08:54:23'),
(191, 'App\\Models\\User', 4, 'created', 'App\\Models\\SiteText', 92, '[]', '{\"content\":\"\\u00c7\\u0131k\\u0131\\u015f yapmak \\u00fczere misiniz?\",\"key\":\"Are_you_about_logout\",\"place\":null,\"id\":92}', 'http://buyitfromturkey.localhost/buyitadmin/site-texts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-26 08:54:51', '2023-10-26 08:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `brief`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed Kharzom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et magni temporibus voluptates adipisicing..', 'mk', NULL, '2023-10-16 06:47:17', '2023-10-16 06:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `defualt` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`id`, `created_at`, `updated_at`, `title`, `user_id`, `name`, `last_name`, `country`, `city`, `district`, `address`, `tax_number`, `type`, `defualt`) VALUES
(3, '2023-10-26 08:50:04', '2023-10-26 11:32:30', 'Work', 4, 'Mohammed', 'Kharzom', 'Malaysia', 'Kuala Lumpur', 'Selangoer', 'Jalan Melawati 1 , Taman Melawati , 53100\r\nSerinin Tower 2 , 2-35-1', NULL, 'Institutional', 1),
(5, '2023-10-27 03:29:17', '2023-10-27 03:29:17', 'Work', 4, 'Mohammed', 'Kharzom', 'Malaysia', 'Kuala Lumpur', 'KL', 'Jalan Melawati 1 , Taman Melawati , 53100\r\nSerinin Tower 2 , 2-35-1', NULL, 'Institutional', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) NOT NULL,
  `brief` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `meta_ogimage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `author_id`, `blog_category_id`, `title`, `slug`, `brief`, `date`, `thumbnail_image`, `cover_image`, `content`, `is_featured`, `meta_title`, `meta_description`, `meta_keyword`, `meta_canonical`, `meta_ogimage`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Blog1', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '1985-07-10 00:00:00', 'blogs\\October2023\\0grfRD9yyxdhJve5Hqp0.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:00', '2023-10-24 09:05:16'),
(2, 1, 4, 'Blog2', 'Muhammed', 'Cum fugiat iusto ip', '31-May-1994', 'blogs\\October2023\\BZ04r1FRnzcOPg4TQ69l.png', 'blogs\\October2023\\5QPNwyGmw1GFkUfYRp6p.png', '<p>TESTSETETSTS<br>TETST<br>TESTS<br>sTES</p>', 1, 'Tempore doloremque ', 'Recusandae Optio c', 'Do quia nulla soluta', 'Vitae tempore elige', 'Quibusdam nihil volu', '2023-10-16 07:06:21', '2023-10-16 07:06:21'),
(4, 1, 3, 'Blog3', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '1985-07-10 00:00:00', 'blogs\\October2023\\lawEUPYqe4a6iA2gYhRk.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:00', '2023-10-24 09:03:38'),
(8, 1, 4, 'Blog4', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '1985-07-10 00:00:00', 'blogs\\October2023\\c7O1ORxhfRr2YyhPUhAw.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:00', '2023-10-24 08:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(2, 'Travel', 'travel', 'bblue', '2023-10-15 10:47:00', '2023-10-16 09:52:27'),
(3, 'Food', 'food', 'warning', '2023-10-15 10:48:00', '2023-10-16 09:49:44'),
(4, 'Products', 'ürünler', 'info', '2023-10-15 10:48:00', '2023-10-16 09:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `blog_tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `blog_id`, `blog_tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 8, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(2, 'House', 'house', NULL, '2023-10-16 06:46:47', '2023-10-16 06:46:47'),
(3, 'Flat', 'flat', NULL, '2023-10-16 06:46:59', '2023-10-16 06:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `active`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Brand1', 'brands\\October2023\\kh6IgRulozL8XKJmlc61.png', 1, NULL, '2023-10-15 04:21:44', '2023-10-15 04:21:44'),
(2, 'Brand2', 'brands\\October2023\\LLEza0HYc0ej2ymnGzXy.png', 1, NULL, '2023-10-15 04:21:55', '2023-10-15 04:21:55'),
(3, 'Brand3', 'brands\\October2023\\NPT5tYmMaFRQrZXp9BO2.png', 1, NULL, '2023-10-15 04:22:22', '2023-10-15 04:22:22'),
(4, 'Brand4', 'brands\\October2023\\nQwhhFcaOCRBoPe5lrTa.png', 1, NULL, '2023-10-15 04:23:37', '2023-10-15 04:23:37'),
(5, 'Brand5', 'brands\\October2023\\3eHgGzdtb8DZizagtucx.png', 1, NULL, '2023-10-15 04:23:57', '2023-10-15 04:23:57'),
(6, 'brand6', 'brands\\October2023\\9HXNG8CqSv7GpiZDSdAD.png', 1, NULL, '2023-10-15 04:24:09', '2023-10-15 04:24:09'),
(7, 'brand7', 'brands\\October2023\\ofkSIrHTsgUm3jeFyn9R.png', 1, NULL, '2023-10-15 04:24:19', '2023-10-15 04:24:19'),
(8, 'Brand8', 'brands\\October2023\\KQDTAs6T21104jL5v3HZ.png', 1, NULL, '2023-10-15 04:24:45', '2023-10-15 04:24:45'),
(9, 'Brand9', 'brands\\October2023\\yzLLSb55XIVSPwv6Hjx8.png', 1, NULL, '2023-10-15 04:25:01', '2023-10-15 04:25:01'),
(10, 'Brand10', 'brands\\October2023\\z8r60fvLyFVric2oj5w8.png', 1, NULL, '2023-10-15 04:25:11', '2023-10-15 04:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `bultens`
--

CREATE TABLE `bultens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bultens`
--

INSERT INTO `bultens` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'sadsa@sad.cpm', '2023-10-24 10:13:15', '2023-10-24 10:13:15'),
(2, 'superadmin@tealive.com.my', '2023-10-29 10:45:30', '2023-10-29 10:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_orders`
--

CREATE TABLE `contact_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_orders`
--

INSERT INTO `contact_orders` (`id`, `first_name`, `last_name`, `email`, `message`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'Lesley', 'Bradshaw', 'tytut@mailinator.com', 'Ex ut reprehenderit', 'Kristen Kemp', '2023-10-18 00:50:48', '2023-10-18 00:50:48'),
(2, 'Robin', 'Walter', 'qylyw@mailinator.com', 'Optio nisi vel iste', 'Ruth Bell', '2023-10-18 00:52:03', '2023-10-18 00:52:03'),
(3, 'Zane', '', 'kiluvifud@mailinator.com', 'Nostrud non ipsum nu', '', '2023-10-18 00:54:15', '2023-10-18 00:54:15'),
(4, 'Colby', '', 'navutoleno@mailinator.com', 'Temporibus deleniti', '', '2023-10-18 01:09:21', '2023-10-18 01:09:21'),
(5, 'Paki', 'Mccoy', 'hykynu@mailinator.com', 'Sint tenetur enim a', 'Fiona Noel', '2023-10-18 01:11:33', '2023-10-18 01:11:33'),
(6, 'Cruz', '', 'noxasaq@mailinator.com', 'Magna cum et cum vol', '', '2023-10-24 19:55:27', '2023-10-24 19:55:27'),
(7, 'Bell', '', 'busudi@mailinator.com', 'Dolor doloribus natu', '', '2023-10-24 19:55:36', '2023-10-24 19:55:36'),
(8, 'Vance', '', 'hodixeq@mailinator.com', 'Corrupti officiis s', '', '2023-10-24 19:56:38', '2023-10-24 19:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `map` varchar(500) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `site_logo_tr` varchar(255) DEFAULT NULL,
  `site_logo_en` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `aboutUs_video` varchar(255) DEFAULT NULL,
  `aboutUs_video_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `phone1`, `phone2`, `whatsapp`, `address`, `map`, `facebook`, `youtube`, `twitter`, `instagram`, `site_logo_tr`, `site_logo_en`, `linkedin`, `created_at`, `updated_at`, `aboutUs_video`, `aboutUs_video_image`) VALUES
(1, 'info@buyitfromturkiye.com', '+90 500 000 00 00', '+90 500 000 00 00', '+90 500 000 00 00', 'Istanbul / Turkiye', 'Animi voluptates fa', 'Facebook', 'Youtube', 'Twitter', 'Instagram', 'Excepturi deserunt v', 'Ea ut consequuntur n', 'Vel deserunt totam s', '2023-10-04 06:39:00', '2023-10-19 07:25:06', 'https://www.youtube.com/embed/5qZ2u7ZratM', 'contact-us\\October2023\\B6UopCfMq6sr8JRLM1gL.png');

-- --------------------------------------------------------

--
-- Table structure for table `corporate_pages`
--

CREATE TABLE `corporate_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `meta_ogimage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cover_images`
--

CREATE TABLE `cover_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cover_images`
--

INSERT INTO `cover_images` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'nasıl_çalışır', 'cover-images\\October2023\\mUHlhYBI6SNf6ve380GH.png', '2023-10-19 01:44:24', '2023-10-19 01:44:24'),
(2, 'neden_seçtin', 'cover-images\\October2023\\Pn42hmZlukcaeYES7fAW.png', '2023-10-19 05:13:22', '2023-10-19 05:13:22'),
(3, 'Biz_Kimiz', 'cover-images\\October2023\\yQdQDJ12yrtq8ETZLKPx.png', '2023-10-19 05:13:55', '2023-10-19 05:13:55'),
(4, 'teklifimiz', 'cover-images\\October2023\\EUHixm8n6JJNml5YGgLj.png', '2023-10-19 05:14:19', '2023-10-19 05:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'key', 'text', 'Key', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'place', 'text', 'Place', 0, 1, 1, 1, 1, 1, '{}', 4),
(25, 4, 'content', 'text', 'Content', 1, 1, 1, 1, 1, 1, '{}', 3),
(26, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(28, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(29, 6, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 2),
(30, 6, 'phone1', 'text', 'Phone1', 0, 1, 1, 1, 1, 1, '{}', 3),
(31, 6, 'phone2', 'text', 'Phone2', 0, 1, 1, 1, 1, 1, '{}', 4),
(32, 6, 'whatsapp', 'text', 'Whatsapp', 0, 1, 1, 1, 1, 1, '{}', 5),
(33, 6, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 6),
(34, 6, 'map', 'text', 'Map', 0, 1, 1, 1, 1, 1, '{}', 7),
(35, 6, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 8),
(36, 6, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 9),
(37, 6, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 10),
(38, 6, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 11),
(39, 6, 'site_logo_tr', 'text', 'Site Logo Tr', 0, 1, 1, 1, 1, 1, '{}', 12),
(40, 6, 'site_logo_en', 'text', 'Site Logo En', 0, 1, 1, 1, 1, 1, '{}', 13),
(41, 6, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 14),
(42, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 17),
(43, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(142, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(143, 14, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(144, 14, 'meta', 'text', 'Meta', 0, 1, 1, 1, 1, 1, '{}', 3),
(145, 14, 'header_bottom', 'text', 'Header Bottom', 0, 1, 1, 1, 1, 1, '{}', 4),
(146, 14, 'body_top', 'text', 'Body Top', 0, 1, 1, 1, 1, 1, '{}', 5),
(147, 14, 'body_bottom', 'text', 'Body Bottom', 0, 1, 1, 1, 1, 1, '{}', 6),
(148, 14, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 7),
(149, 14, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(150, 14, 'meta_keyword', 'text', 'Meta Keyword', 0, 1, 1, 1, 1, 1, '{}', 9),
(151, 14, 'meta_canonical', 'text', 'Meta Canonical', 0, 1, 1, 1, 1, 1, '{}', 10),
(152, 14, 'meta_ogimage', 'text', 'Meta Ogimage', 0, 1, 1, 1, 1, 1, '{}', 11),
(153, 14, 'site_name', 'text', 'Site Name', 0, 1, 1, 1, 1, 1, '{}', 12),
(154, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(155, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(156, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(157, 15, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(158, 15, 'color', 'text', 'Color', 0, 1, 1, 1, 1, 1, '{}', 3),
(159, 15, 'image', 'file', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(160, 15, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 5),
(161, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(162, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(163, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(164, 16, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(165, 16, 'brief', 'text', 'Brief', 0, 1, 1, 1, 1, 1, '{}', 3),
(166, 16, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 4),
(167, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(168, 16, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 6),
(169, 16, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 7),
(170, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(171, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(172, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(173, 17, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(174, 17, 'logo', 'file', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 3),
(175, 17, 'content', 'text', 'Content', 0, 1, 1, 1, 1, 1, '{}', 4),
(176, 17, 'active', 'checkbox', 'Active', 0, 1, 1, 1, 1, 1, '{}', 5),
(177, 17, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 6),
(178, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(179, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(180, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(181, 18, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(182, 18, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(183, 18, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 4),
(184, 18, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 5),
(185, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(186, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(187, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(188, 22, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(189, 22, 'content', 'text', 'Content', 1, 1, 1, 1, 1, 1, '{}', 3),
(190, 22, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 4),
(191, 22, 'is_homepage', 'checkbox', 'Is Homepage', 0, 1, 1, 1, 1, 1, '{}', 5),
(192, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(193, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(194, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(195, 23, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 2),
(196, 23, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(197, 23, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 1, '{}', 4),
(198, 23, 'active', 'checkbox', 'Active', 0, 1, 1, 1, 1, 1, '{}', 5),
(199, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(200, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(201, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(202, 24, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(203, 24, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 3),
(204, 24, 'color', 'select_dropdown', 'Color', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"primary\":\"Purpule\",\"warning\":\"Orange\",\"info\":\"Blue\",\"bblue\":\"Light blue\",\"danger\":\"Red\",\"success\":\"Green\"}}', 4),
(205, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(206, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(207, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(208, 25, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(209, 25, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(210, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(211, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(212, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(213, 27, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(214, 27, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 3),
(215, 27, 'color', 'text', 'Color', 0, 1, 1, 1, 1, 1, '{}', 4),
(216, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(217, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(218, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(219, 28, 'author_id', 'text', 'Author Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(220, 28, 'blog_category_id', 'text', 'Blog Category Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(221, 28, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 6),
(222, 28, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 7),
(223, 28, 'brief', 'text', 'Brief', 0, 0, 0, 1, 1, 1, '{}', 8),
(224, 28, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(225, 28, 'thumbnail_image', 'image', 'Thumbnail Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(226, 28, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{}', 11),
(227, 28, 'content', 'rich_text_box', 'Content', 0, 0, 0, 1, 1, 1, '{}', 12),
(228, 28, 'is_featured', 'checkbox', 'Is Featured', 1, 1, 1, 1, 1, 1, '{}', 13),
(229, 28, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(230, 28, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 15),
(231, 28, 'meta_keyword', 'text', 'Meta Keyword', 0, 1, 1, 1, 1, 1, '{}', 16),
(232, 28, 'meta_canonical', 'text', 'Meta Canonical', 0, 1, 1, 1, 1, 1, '{}', 17),
(233, 28, 'meta_ogimage', 'text', 'Meta Ogimage', 0, 1, 1, 1, 1, 1, '{}', 18),
(234, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 19),
(235, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(236, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(237, 29, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(238, 29, 'brief', 'text', 'Brief', 0, 1, 1, 1, 1, 1, '{}', 3),
(239, 29, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 4),
(240, 29, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(241, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(242, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(243, 28, 'blog_belongsto_author_relationship', 'relationship', 'authors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Author\",\"table\":\"authors\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"audits\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(244, 28, 'blog_belongsto_blog_category_relationship', 'relationship', 'blog_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\BlogCategory\",\"table\":\"blog_categories\",\"type\":\"belongsTo\",\"column\":\"blog_category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"audits\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(245, 28, 'blog_belongstomany_blog_tag_relationship', 'relationship', 'blog_tags', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\BlogTag\",\"table\":\"blog_tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blog_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 21),
(246, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(247, 30, 'role_id', 'text', 'Role Id', 0, 0, 0, 0, 0, 0, '{}', 2),
(248, 30, 'name', 'text', 'Ad', 1, 1, 1, 1, 1, 1, '{}', 3),
(249, 30, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(250, 30, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 5),
(251, 30, 'password', 'text', 'Password', 1, 0, 0, 0, 0, 0, '{}', 6),
(252, 30, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 7),
(253, 30, 'avatar', 'text', 'Resim', 0, 1, 1, 1, 1, 1, '{}', 8),
(254, 30, 'settings', 'text', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 9),
(255, 30, 'created_at', 'timestamp', 'Oluşturma Tarihi', 0, 1, 1, 0, 0, 0, '{}', 10),
(256, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(257, 30, 'user_belongsto_role_relationship', 'relationship', 'Rol', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(258, 30, 'user_belongstomany_role_relationship', 'relationship', 'Roller', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(259, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(260, 31, 'title', 'text', 'Başlık', 0, 1, 1, 1, 1, 1, '{}', 2),
(261, 31, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 3),
(262, 31, 'content', 'rich_text_box', 'İçerik', 1, 1, 1, 1, 1, 1, '{}', 4),
(263, 31, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(264, 31, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(265, 31, 'meta_keyword', 'text', 'Meta Keyword', 0, 1, 1, 1, 1, 1, '{}', 7),
(266, 31, 'meta_canonical', 'text', 'Meta Canonical', 0, 1, 1, 1, 1, 1, '{}', 8),
(267, 31, 'meta_ogimage', 'text', 'Meta Ogimage', 0, 1, 1, 1, 1, 1, '{}', 9),
(268, 31, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(269, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(270, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(271, 32, 'first_name', 'text', 'Ad', 1, 1, 1, 1, 1, 1, '{}', 2),
(272, 32, 'last_name', 'text', 'Soyad', 1, 1, 1, 1, 1, 1, '{}', 3),
(275, 32, 'created_at', 'timestamp', 'Oluşturma Tarihi', 0, 1, 1, 0, 0, 0, '{}', 7),
(276, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(277, 32, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(278, 32, 'message', 'text_area', 'Message', 1, 1, 1, 1, 1, 1, '{}', 6),
(279, 32, 'subject', 'text', 'Subject', 0, 1, 1, 1, 1, 1, '{}', 5),
(280, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(281, 33, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(282, 33, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 3),
(283, 33, 'color', 'text', 'Color', 0, 1, 1, 1, 1, 1, '{}', 4),
(284, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(285, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(286, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(287, 34, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(288, 34, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 3),
(289, 34, 'color', 'text', 'Color', 0, 1, 1, 1, 1, 1, '{}', 4),
(290, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(291, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(292, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(293, 35, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(294, 35, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 3),
(295, 35, 'color', 'text', 'Color', 0, 1, 1, 1, 1, 1, '{}', 4),
(296, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(297, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(298, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(299, 36, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(300, 36, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(301, 36, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 4),
(302, 36, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 5),
(303, 36, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(304, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(305, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(306, 37, 'product_category_id', 'text', 'Product Category Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(308, 37, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(309, 37, 'thumbnail_image', 'image', 'Thumbnail Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(310, 37, 'Images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 7),
(311, 37, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 8),
(312, 37, 'brief', 'text', 'Brief', 0, 1, 1, 1, 1, 1, '{}', 9),
(313, 37, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 10),
(314, 37, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 11),
(315, 37, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 12),
(316, 37, 'meta_keyword', 'text', 'Meta Keyword', 0, 1, 1, 1, 1, 1, '{}', 13),
(317, 37, 'meta_canonical', 'text', 'Meta Canonical', 0, 1, 1, 1, 1, 1, '{}', 14),
(318, 37, 'meta_ogimage', 'text', 'Meta Ogimage', 0, 1, 1, 1, 1, 1, '{}', 15),
(319, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(320, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(321, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(322, 38, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(323, 38, 'content', 'text', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(324, 38, 'active', 'checkbox', 'Active', 0, 1, 1, 1, 1, 1, '{}', 4),
(325, 38, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 5),
(326, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(327, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(328, 6, 'aboutUs_video', 'text', 'AboutUs Video', 0, 1, 1, 1, 1, 1, '{}', 15),
(329, 6, 'aboutUs_video_image', 'image', 'AboutUs Video Image', 0, 1, 1, 1, 1, 1, '{}', 16),
(330, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(331, 39, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(332, 39, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(333, 39, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(334, 39, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(335, 39, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(336, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(337, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(338, 40, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(339, 40, 'last_name', 'text', 'Last Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(340, 40, 'company_name', 'text', 'Company Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(341, 40, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(342, 40, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 6),
(343, 40, 'sectors', 'text', 'Sectors', 0, 1, 1, 1, 1, 1, '{}', 7),
(344, 40, 'products_services', 'text', 'Products Services', 0, 1, 1, 1, 1, 1, '{}', 8),
(345, 40, 'quantity', 'text', 'Quantity', 0, 1, 1, 1, 1, 1, '{}', 9),
(346, 40, 'price_terms', 'text', 'Price Terms', 0, 1, 1, 1, 1, 1, '{}', 10),
(347, 40, 'payment_method', 'text', 'Payment Method', 0, 1, 1, 1, 1, 1, '{}', 11),
(348, 40, 'country', 'text', 'Country', 0, 1, 1, 1, 1, 1, '{}', 12),
(349, 40, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 13),
(350, 40, 'request', 'text', 'Request', 0, 1, 1, 1, 1, 1, '{}', 14),
(351, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 15),
(352, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(353, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(354, 41, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 2),
(355, 41, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(356, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(357, 24, 'blog_category_hasmany_blog_relationship', 'relationship', 'blogs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Blog\",\"table\":\"blogs\",\"type\":\"hasMany\",\"column\":\"blog_category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"admins\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(358, 37, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 6),
(359, 37, 'product_belongsto_product_category_relationship', 'relationship', 'product_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsTo\",\"column\":\"product_category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"admins\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(360, 37, 'product_belongstomany_product_sector_relationship', 'relationship', 'product_sectors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductSector\",\"table\":\"product_sectors\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"product_sector\",\"pivot\":\"1\",\"taggable\":\"on\"}', 18),
(361, 37, 'product_belongstomany_product_tag_relationship', 'relationship', 'product_tags', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductTag\",\"table\":\"product_tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"product_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 19);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(4, 'site_texts', 'site-texts', 'Site Text', 'Site Texts', 'voyager-character', 'App\\Models\\SiteText', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-03 05:50:23', '2023-10-03 05:50:23'),
(6, 'contact_us', 'contact-us', 'Contact U', 'Contact Us', 'voyager-telephone', 'App\\Models\\ContactUs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-04 06:38:40', '2023-10-19 05:50:19'),
(14, 'seo', 'seo', 'SEO', 'SEO', 'voyager-world', 'App\\Models\\SEO', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-04 10:11:56', '2023-10-04 10:11:56'),
(15, 'services', 'services', 'Service', 'Services', 'voyager-trophy', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-10 09:48:35', '2023-10-10 10:04:09'),
(16, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-dot-3', 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-10 11:19:32', '2023-10-10 11:19:32'),
(17, 'our_offers', 'our-offers', 'Our Offer', 'Our Offers', 'voyager-medal-rank-star', 'App\\Models\\OurOffer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-11 06:45:03', '2023-10-11 06:45:03'),
(18, 'brands', 'brands', 'Brand', 'Brands', 'voyager-ticket', 'App\\Models\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-15 03:48:44', '2023-10-15 03:48:44'),
(22, 'f_a_q_s', 'f-a-q-s', 'F A Q', 'F A Q', 'voyager-question', 'App\\Models\\FAQ', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-15 04:48:25', '2023-10-15 04:48:25'),
(23, 'languages', 'languages', 'Language', 'Languages', 'voyager-font', 'App\\Models\\Language', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-15 10:16:51', '2023-10-15 10:16:51'),
(24, 'blog_categories', 'blog-categories', 'Blog Category', 'Blog Categories', 'voyager-categories', 'App\\Models\\BlogCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-15 10:45:51', '2023-10-24 20:06:42'),
(25, 'cover_images', 'cover-images', 'Cover Image', 'Cover Images', 'voyager-photo', 'App\\Models\\CoverImage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-15 10:55:32', '2023-10-15 10:55:32'),
(27, 'blog_tags', 'blog-tags', 'Blog Tag', 'Blog Tags', 'voyager-tag', 'App\\Models\\BlogTag', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-16 06:37:18', '2023-10-16 06:37:18'),
(28, 'blogs', 'blogs', 'Blog', 'Blogs', 'voyager-file-text', 'App\\Models\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-16 06:39:01', '2023-10-24 08:55:42'),
(29, 'authors', 'authors', 'Author', 'Authors', 'voyager-person', 'App\\Models\\Author', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-16 06:41:26', '2023-10-16 06:41:26'),
(30, 'admins', 'admins', 'Admin', 'Admins', 'voyager-people', 'App\\Models\\Admin', NULL, 'App\\Http\\Controllers\\VoyagerAdminController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2023-10-17 20:22:10', '2023-10-17 20:22:32'),
(31, 'static_pages', 'static-pages', 'Sabit Sayfa', 'Sabit Sayfalar', 'voyager-file-text', 'App\\Models\\StaticPage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-18 00:23:26', '2023-10-18 00:23:26'),
(32, 'contact_orders', 'contact-orders', 'İletişim Formu', 'İletişim Formları', 'voyager-mail', 'App\\Models\\ContactOrder', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-18 00:31:02', '2023-10-18 00:33:35'),
(33, 'product_tags', 'product-tags', 'Product Tag', 'Product Tags', 'voyager-tag', 'App\\Models\\ProductTag', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-18 08:20:39', '2023-10-18 08:20:39'),
(34, 'product_categories', 'product-categories', 'Product Category', 'Product Categories', 'voyager-categories', 'App\\Models\\ProductCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-18 08:21:01', '2023-10-18 08:21:01'),
(35, 'product_sectors', 'product-sectors', 'Product Sector', 'Product Sectors', 'voyager-location', 'App\\Models\\ProductSector', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-18 08:21:27', '2023-10-18 08:21:27'),
(36, 'products_sliders', 'products-sliders', 'Products Slider', 'Products Sliders', 'voyager-dot-3', 'App\\Models\\ProductsSlider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-18 08:22:13', '2023-10-18 08:22:13'),
(37, 'products', 'products', 'Product', 'Products', 'voyager-treasure', 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-18 08:22:52', '2023-10-25 05:37:04'),
(38, 'advantages', 'advantages', 'Advantage', 'Advantages', 'voyager-check', 'App\\Models\\Advantage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-19 05:19:19', '2023-10-19 05:19:19'),
(39, 'founders', 'founders', 'Founder', 'Founders', 'voyager-people', 'App\\Models\\Founder', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-19 06:09:09', '2023-10-19 06:09:09'),
(40, 'application_orders', 'application-orders', 'Application Order', 'Application Orders', 'voyager-receipt', 'App\\Models\\ApplicationOrder', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-22 05:08:52', '2023-10-22 05:08:52'),
(41, 'bultens', 'bultens', 'Bulten', 'Bultens', 'voyager-mail', 'App\\Models\\Bulten', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-24 10:14:20', '2023-10-24 10:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `founders`
--

CREATE TABLE `founders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `founders`
--

INSERT INTO `founders` (`id`, `name`, `title`, `image`, `email`, `created_at`, `updated_at`) VALUES
(1, 'İsim Soyisim', 'CTO', 'founders\\October2023\\xE1btkMRwAcp8h1BBHTT.png', 'kharzom.mohammed@gmail.com', '2023-10-19 06:10:48', '2023-10-19 06:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `order` int(11) DEFAULT NULL,
  `is_homepage` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_q_s`
--

INSERT INTO `f_a_q_s` (`id`, `title`, `content`, `order`, `is_homepage`, `created_at`, `updated_at`) VALUES
(1, 'How can I place an order for products from Turkey if I\'m located outside the                                     country?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:49:26', '2023-10-15 04:49:26'),
(2, 'What is the estimated delivery time for international orders?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:49:44', '2023-10-15 04:49:44'),
(3, 'Which payment methods do you accept?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:50:01', '2023-10-15 04:50:01'),
(4, 'Which payment methods do you accept?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:50:00', '2023-10-15 04:50:28'),
(5, 'Which payment methods do you accept?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:50:23', '2023-10-15 04:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `get_offers`
--

CREATE TABLE `get_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutionals`
--

CREATE TABLE `institutionals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `title`, `locale`, `active`, `created_at`, `updated_at`) VALUES
(1, 'tr', 'Türkçe', 'tr_TR', 1, '2023-02-28 04:50:25', '2023-03-09 18:19:47'),
(2, 'en', 'English', 'en_US', 1, '2023-02-28 04:50:39', '2023-04-10 08:55:05'),
(3, 'ar', 'العربية', NULL, 1, '2023-02-28 04:50:52', '2023-08-09 06:34:42'),
(4, 'de', 'Deutsch', 'de_DE', 0, '2023-02-28 04:51:01', '2023-05-03 13:22:03'),
(5, 'ru', 'Русский', NULL, 0, '2023-02-28 04:51:11', '2023-02-28 04:51:11'),
(6, 'fr', 'Français', 'fr_FR', 1, '2023-05-03 13:20:57', '2023-05-16 21:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-09-12 07:29:31', '2023-09-12 07:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2023-09-12 07:29:31', '2023-10-17 20:22:48', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2023-09-12 07:29:31', '2023-10-17 20:22:48', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-09-12 07:29:31', '2023-10-17 20:22:48', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-09-12 07:29:31', '2023-10-17 20:22:48', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-09-12 07:29:31', '2023-10-17 20:22:48', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-09-12 07:29:31', '2023-10-17 20:22:48', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2023-09-12 07:29:31', '2023-10-17 20:22:48', 'voyager.settings.index', NULL),
(11, 1, 'Site Texts', '', '_self', 'voyager-character', NULL, NULL, 8, '2023-10-03 05:50:23', '2023-10-17 20:22:48', 'voyager.site-texts.index', NULL),
(12, 1, 'Contact Us', '', '_self', 'voyager-telephone', NULL, NULL, 9, '2023-10-04 06:38:40', '2023-10-17 20:22:48', 'voyager.contact-us.index', NULL),
(20, 1, 'SEO', '', '_self', 'voyager-world', NULL, NULL, 10, '2023-10-04 10:11:56', '2023-10-17 20:22:48', 'voyager.seo.index', NULL),
(21, 1, 'Services', '', '_self', 'voyager-trophy', NULL, NULL, 11, '2023-10-10 09:48:35', '2023-10-17 20:22:48', 'voyager.services.index', NULL),
(22, 1, 'Sliders', '', '_self', 'voyager-dot-3', NULL, NULL, 12, '2023-10-10 11:19:32', '2023-10-17 20:22:48', 'voyager.sliders.index', NULL),
(23, 1, 'Our Offers', '', '_self', 'voyager-medal-rank-star', NULL, NULL, 13, '2023-10-11 06:45:03', '2023-10-17 20:22:48', 'voyager.our-offers.index', NULL),
(24, 1, 'Brands', '', '_self', 'voyager-ticket', NULL, NULL, 14, '2023-10-15 03:48:44', '2023-10-17 20:22:48', 'voyager.brands.index', NULL),
(28, 1, 'F A Q', '', '_self', 'voyager-question', NULL, NULL, 15, '2023-10-15 04:48:25', '2023-10-17 20:22:48', 'voyager.f-a-q-s.index', NULL),
(29, 1, 'Languages', '', '_self', 'voyager-font', NULL, NULL, 16, '2023-10-15 10:16:51', '2023-10-17 20:22:48', 'voyager.languages.index', NULL),
(30, 1, 'Blog Categories', '', '_self', 'voyager-categories', NULL, NULL, 17, '2023-10-15 10:45:51', '2023-10-17 20:22:48', 'voyager.blog-categories.index', NULL),
(31, 1, 'Cover Images', '', '_self', 'voyager-photo', NULL, NULL, 18, '2023-10-15 10:55:32', '2023-10-17 20:22:48', 'voyager.cover-images.index', NULL),
(32, 1, 'Blog Tags', '', '_self', 'voyager-tag', NULL, NULL, 19, '2023-10-16 06:37:18', '2023-10-17 20:22:48', 'voyager.blog-tags.index', NULL),
(33, 1, 'Blogs', '', '_self', 'voyager-file-text', NULL, NULL, 20, '2023-10-16 06:39:01', '2023-10-17 20:22:48', 'voyager.blogs.index', NULL),
(34, 1, 'Authors', '', '_self', 'voyager-person', NULL, NULL, 21, '2023-10-16 06:41:26', '2023-10-17 20:22:48', 'voyager.authors.index', NULL),
(35, 1, 'Admins', '', '_self', 'voyager-people', NULL, NULL, 3, '2023-10-17 20:22:10', '2023-10-17 20:22:48', 'voyager.admins.index', NULL),
(36, 1, 'Sabit Sayfalar', '', '_self', 'voyager-file-text', NULL, NULL, 22, '2023-10-18 00:23:26', '2023-10-18 00:23:26', 'voyager.static-pages.index', NULL),
(37, 1, 'İletişim Formları', '', '_self', 'voyager-mail', NULL, NULL, 23, '2023-10-18 00:31:02', '2023-10-18 00:31:02', 'voyager.contact-orders.index', NULL),
(38, 1, 'Product Tags', '', '_self', 'voyager-tag', NULL, 43, 1, '2023-10-18 08:20:39', '2023-10-18 08:24:07', 'voyager.product-tags.index', NULL),
(39, 1, 'Product Categories', '', '_self', 'voyager-categories', NULL, 43, 2, '2023-10-18 08:21:01', '2023-10-18 08:24:08', 'voyager.product-categories.index', NULL),
(40, 1, 'Product Sectors', '', '_self', 'voyager-location', NULL, 43, 3, '2023-10-18 08:21:27', '2023-10-18 08:24:09', 'voyager.product-sectors.index', NULL),
(41, 1, 'Products Sliders', '', '_self', 'voyager-dot-3', NULL, 43, 4, '2023-10-18 08:22:13', '2023-10-18 08:24:10', 'voyager.products-sliders.index', NULL),
(42, 1, 'Products', '', '_self', 'voyager-treasure', NULL, 43, 5, '2023-10-18 08:22:52', '2023-10-18 08:24:12', 'voyager.products.index', NULL),
(43, 1, 'Products Management', '', '_self', 'voyager-treasure', '#000000', NULL, 24, '2023-10-18 08:23:34', '2023-10-18 08:24:06', NULL, ''),
(44, 1, 'Advantages', '', '_self', 'voyager-check', NULL, NULL, 25, '2023-10-19 05:19:19', '2023-10-19 05:19:19', 'voyager.advantages.index', NULL),
(45, 1, 'Founders', '', '_self', 'voyager-people', NULL, NULL, 26, '2023-10-19 06:09:09', '2023-10-19 06:09:09', 'voyager.founders.index', NULL),
(46, 1, 'Application Orders', '', '_self', 'voyager-receipt', NULL, NULL, 27, '2023-10-22 05:08:52', '2023-10-22 05:08:52', 'voyager.application-orders.index', NULL),
(47, 1, 'Bultens', '', '_self', 'voyager-mail', NULL, NULL, 28, '2023-10-24 10:14:20', '2023-10-24 10:14:20', 'voyager.bultens.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `meta_ogimage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2023_09_13_175337_create_site_texts_table', 3),
(27, '2023_09_18_160319_create_contact_us_table', 4),
(34, '2023_09_13_174719_create_seo_table', 5),
(35, '2023_10_04_181505_create_audits_table', 6),
(36, '2023_09_26_172515_create_static_pages_table', 7),
(37, '2023_09_18_163105_create_languages_table', 8),
(39, '2023_10_10_174148_create_services_table', 9),
(40, '2023_09_18_160627_create_sliders_table', 10),
(41, '2023_10_11_144335_create_our_offers_table', 11),
(42, '2023_09_18_155740_create_brands_table', 12),
(45, '2023_09_18_155755_create_f_a_q_s_table', 13),
(46, '2023_09_13_180341_create_blog_categories_table', 14),
(47, '2023_10_15_185334_create_cover_images_table', 15),
(51, '2023_09_13_175447_create_authors_table', 16),
(52, '2023_09_18_144119_create_blogs_table', 17),
(53, '2023_09_18_144044_create_blog_tags_table', 18),
(54, '2023_09_18_152241_create_blog_tag_table', 19),
(55, '2023_09_18_152631_create_comments_table', 20),
(56, '2023_09_18_155917_create_bultens_table', 20),
(57, '2023_09_18_160428_create_contact_orders_table', 20),
(58, '2023_09_18_160519_create_institutionals_table', 20),
(59, '2023_09_18_160549_create_founders_table', 20),
(60, '2023_09_18_160725_create_sell_offers_table', 20),
(61, '2023_09_18_160944_create_get_offers_table', 20),
(62, '2023_09_18_161449_create_product_tags_table', 20),
(63, '2023_09_18_161511_create_product_categories_table', 20),
(64, '2023_09_18_161528_create_product_sectors_table', 20),
(65, '2023_09_18_161701_create_products_table', 20),
(66, '2023_09_18_161740_create_product_tag_table', 20),
(67, '2023_09_18_162107_create_advantages_table', 20),
(68, '2023_09_18_162757_create_billing_details_table', 20),
(69, '2023_09_18_162912_create_corporate_pages_table', 20),
(70, '2023_09_26_171444_create_metas_table', 20),
(71, '2023_10_17_161702_create_similar_products_table', 20),
(72, '2023_10_17_181458_create_products_sliders_table', 20),
(73, '2023_10_17_225949_create_admins_table', 20),
(74, '2023_10_17_230016_drop_role_id_column_from_users_table', 20),
(75, '2023_10_18_004239_add_info_to_users_table', 21),
(76, '2023_10_18_033125_add_email_to_contact_orders_table', 22),
(78, '2023_10_19_134551_add_video_contact_us', 23),
(79, '2023_10_22_123501_create_application_orders_table', 24),
(83, '2023_10_22_131317_create_offer_orders_table', 25),
(84, '2023_10_25_125917_add_slug_products', 25),
(86, '2023_10_25_131624_create_product_sector_table', 26),
(87, '2023_10_26_155240_add_columns_billing_details', 27);

-- --------------------------------------------------------

--
-- Table structure for table `offer_orders`
--

CREATE TABLE `offer_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sectors` int(11) DEFAULT NULL,
  `products_services` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price_terms` int(11) DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `request` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `our_offers`
--

CREATE TABLE `our_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_offers`
--

INSERT INTO `our_offers` (`id`, `title`, `logo`, `content`, `active`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Competitive Prices', '[{\"download_link\":\"our-offers\\\\October2023\\\\BprvzNLOZJw6to1FvHiF.svg\",\"original_name\":\"i1.svg\"}]', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', 1, NULL, '2023-10-15 01:25:00', '2023-10-19 06:48:09'),
(2, 'Quality Handicrafts                                                         and Products', '[{\"download_link\":\"our-offers\\\\October2023\\\\C0qlomS8qXmhYznsYxP5.svg\",\"original_name\":\"i2.svg\"}]', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', 1, NULL, '2023-10-15 01:58:00', '2023-10-19 06:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(2, 'browse_bread', NULL, '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(3, 'browse_database', NULL, '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(4, 'browse_media', NULL, '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(5, 'browse_compass', NULL, '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(6, 'browse_menus', 'menus', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(7, 'read_menus', 'menus', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(8, 'edit_menus', 'menus', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(9, 'add_menus', 'menus', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(10, 'delete_menus', 'menus', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(11, 'browse_roles', 'roles', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(12, 'read_roles', 'roles', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(13, 'edit_roles', 'roles', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(14, 'add_roles', 'roles', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(15, 'delete_roles', 'roles', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(16, 'browse_users', 'users', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(17, 'read_users', 'users', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(18, 'edit_users', 'users', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(19, 'add_users', 'users', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(20, 'delete_users', 'users', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(21, 'browse_settings', 'settings', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(22, 'read_settings', 'settings', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(23, 'edit_settings', 'settings', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(24, 'add_settings', 'settings', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(25, 'delete_settings', 'settings', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(26, 'browse_site_texts', 'site_texts', '2023-10-03 05:50:23', '2023-10-03 05:50:23'),
(27, 'read_site_texts', 'site_texts', '2023-10-03 05:50:23', '2023-10-03 05:50:23'),
(28, 'edit_site_texts', 'site_texts', '2023-10-03 05:50:23', '2023-10-03 05:50:23'),
(29, 'add_site_texts', 'site_texts', '2023-10-03 05:50:23', '2023-10-03 05:50:23'),
(30, 'delete_site_texts', 'site_texts', '2023-10-03 05:50:23', '2023-10-03 05:50:23'),
(31, 'browse_contact_us', 'contact_us', '2023-10-04 06:38:40', '2023-10-04 06:38:40'),
(32, 'read_contact_us', 'contact_us', '2023-10-04 06:38:40', '2023-10-04 06:38:40'),
(33, 'edit_contact_us', 'contact_us', '2023-10-04 06:38:40', '2023-10-04 06:38:40'),
(34, 'add_contact_us', 'contact_us', '2023-10-04 06:38:40', '2023-10-04 06:38:40'),
(35, 'delete_contact_us', 'contact_us', '2023-10-04 06:38:40', '2023-10-04 06:38:40'),
(71, 'browse_seo', 'seo', '2023-10-04 10:11:56', '2023-10-04 10:11:56'),
(72, 'read_seo', 'seo', '2023-10-04 10:11:56', '2023-10-04 10:11:56'),
(73, 'edit_seo', 'seo', '2023-10-04 10:11:56', '2023-10-04 10:11:56'),
(74, 'add_seo', 'seo', '2023-10-04 10:11:56', '2023-10-04 10:11:56'),
(75, 'delete_seo', 'seo', '2023-10-04 10:11:56', '2023-10-04 10:11:56'),
(76, 'browse_services', 'services', '2023-10-10 09:48:35', '2023-10-10 09:48:35'),
(77, 'read_services', 'services', '2023-10-10 09:48:35', '2023-10-10 09:48:35'),
(78, 'edit_services', 'services', '2023-10-10 09:48:35', '2023-10-10 09:48:35'),
(79, 'add_services', 'services', '2023-10-10 09:48:35', '2023-10-10 09:48:35'),
(80, 'delete_services', 'services', '2023-10-10 09:48:35', '2023-10-10 09:48:35'),
(81, 'browse_sliders', 'sliders', '2023-10-10 11:19:32', '2023-10-10 11:19:32'),
(82, 'read_sliders', 'sliders', '2023-10-10 11:19:32', '2023-10-10 11:19:32'),
(83, 'edit_sliders', 'sliders', '2023-10-10 11:19:32', '2023-10-10 11:19:32'),
(84, 'add_sliders', 'sliders', '2023-10-10 11:19:32', '2023-10-10 11:19:32'),
(85, 'delete_sliders', 'sliders', '2023-10-10 11:19:32', '2023-10-10 11:19:32'),
(86, 'browse_our_offers', 'our_offers', '2023-10-11 06:45:03', '2023-10-11 06:45:03'),
(87, 'read_our_offers', 'our_offers', '2023-10-11 06:45:03', '2023-10-11 06:45:03'),
(88, 'edit_our_offers', 'our_offers', '2023-10-11 06:45:03', '2023-10-11 06:45:03'),
(89, 'add_our_offers', 'our_offers', '2023-10-11 06:45:03', '2023-10-11 06:45:03'),
(90, 'delete_our_offers', 'our_offers', '2023-10-11 06:45:03', '2023-10-11 06:45:03'),
(91, 'browse_brands', 'brands', '2023-10-15 03:48:44', '2023-10-15 03:48:44'),
(92, 'read_brands', 'brands', '2023-10-15 03:48:44', '2023-10-15 03:48:44'),
(93, 'edit_brands', 'brands', '2023-10-15 03:48:44', '2023-10-15 03:48:44'),
(94, 'add_brands', 'brands', '2023-10-15 03:48:44', '2023-10-15 03:48:44'),
(95, 'delete_brands', 'brands', '2023-10-15 03:48:44', '2023-10-15 03:48:44'),
(111, 'browse_f_a_q_s', 'f_a_q_s', '2023-10-15 04:48:25', '2023-10-15 04:48:25'),
(112, 'read_f_a_q_s', 'f_a_q_s', '2023-10-15 04:48:25', '2023-10-15 04:48:25'),
(113, 'edit_f_a_q_s', 'f_a_q_s', '2023-10-15 04:48:25', '2023-10-15 04:48:25'),
(114, 'add_f_a_q_s', 'f_a_q_s', '2023-10-15 04:48:25', '2023-10-15 04:48:25'),
(115, 'delete_f_a_q_s', 'f_a_q_s', '2023-10-15 04:48:25', '2023-10-15 04:48:25'),
(116, 'browse_languages', 'languages', '2023-10-15 10:16:51', '2023-10-15 10:16:51'),
(117, 'read_languages', 'languages', '2023-10-15 10:16:51', '2023-10-15 10:16:51'),
(118, 'edit_languages', 'languages', '2023-10-15 10:16:51', '2023-10-15 10:16:51'),
(119, 'add_languages', 'languages', '2023-10-15 10:16:51', '2023-10-15 10:16:51'),
(120, 'delete_languages', 'languages', '2023-10-15 10:16:51', '2023-10-15 10:16:51'),
(121, 'browse_blog_categories', 'blog_categories', '2023-10-15 10:45:51', '2023-10-15 10:45:51'),
(122, 'read_blog_categories', 'blog_categories', '2023-10-15 10:45:51', '2023-10-15 10:45:51'),
(123, 'edit_blog_categories', 'blog_categories', '2023-10-15 10:45:51', '2023-10-15 10:45:51'),
(124, 'add_blog_categories', 'blog_categories', '2023-10-15 10:45:51', '2023-10-15 10:45:51'),
(125, 'delete_blog_categories', 'blog_categories', '2023-10-15 10:45:51', '2023-10-15 10:45:51'),
(126, 'browse_cover_images', 'cover_images', '2023-10-15 10:55:32', '2023-10-15 10:55:32'),
(127, 'read_cover_images', 'cover_images', '2023-10-15 10:55:32', '2023-10-15 10:55:32'),
(128, 'edit_cover_images', 'cover_images', '2023-10-15 10:55:32', '2023-10-15 10:55:32'),
(129, 'add_cover_images', 'cover_images', '2023-10-15 10:55:32', '2023-10-15 10:55:32'),
(130, 'delete_cover_images', 'cover_images', '2023-10-15 10:55:32', '2023-10-15 10:55:32'),
(131, 'browse_blog_tags', 'blog_tags', '2023-10-16 06:37:18', '2023-10-16 06:37:18'),
(132, 'read_blog_tags', 'blog_tags', '2023-10-16 06:37:18', '2023-10-16 06:37:18'),
(133, 'edit_blog_tags', 'blog_tags', '2023-10-16 06:37:18', '2023-10-16 06:37:18'),
(134, 'add_blog_tags', 'blog_tags', '2023-10-16 06:37:18', '2023-10-16 06:37:18'),
(135, 'delete_blog_tags', 'blog_tags', '2023-10-16 06:37:18', '2023-10-16 06:37:18'),
(136, 'browse_blogs', 'blogs', '2023-10-16 06:39:01', '2023-10-16 06:39:01'),
(137, 'read_blogs', 'blogs', '2023-10-16 06:39:01', '2023-10-16 06:39:01'),
(138, 'edit_blogs', 'blogs', '2023-10-16 06:39:01', '2023-10-16 06:39:01'),
(139, 'add_blogs', 'blogs', '2023-10-16 06:39:01', '2023-10-16 06:39:01'),
(140, 'delete_blogs', 'blogs', '2023-10-16 06:39:01', '2023-10-16 06:39:01'),
(141, 'browse_authors', 'authors', '2023-10-16 06:41:26', '2023-10-16 06:41:26'),
(142, 'read_authors', 'authors', '2023-10-16 06:41:26', '2023-10-16 06:41:26'),
(143, 'edit_authors', 'authors', '2023-10-16 06:41:26', '2023-10-16 06:41:26'),
(144, 'add_authors', 'authors', '2023-10-16 06:41:26', '2023-10-16 06:41:26'),
(145, 'delete_authors', 'authors', '2023-10-16 06:41:26', '2023-10-16 06:41:26'),
(146, 'browse_admins', 'admins', '2023-10-17 20:22:10', '2023-10-17 20:22:10'),
(147, 'read_admins', 'admins', '2023-10-17 20:22:10', '2023-10-17 20:22:10'),
(148, 'edit_admins', 'admins', '2023-10-17 20:22:10', '2023-10-17 20:22:10'),
(149, 'add_admins', 'admins', '2023-10-17 20:22:10', '2023-10-17 20:22:10'),
(150, 'delete_admins', 'admins', '2023-10-17 20:22:10', '2023-10-17 20:22:10'),
(151, 'browse_static_pages', 'static_pages', '2023-10-18 00:23:26', '2023-10-18 00:23:26'),
(152, 'read_static_pages', 'static_pages', '2023-10-18 00:23:26', '2023-10-18 00:23:26'),
(153, 'edit_static_pages', 'static_pages', '2023-10-18 00:23:26', '2023-10-18 00:23:26'),
(154, 'add_static_pages', 'static_pages', '2023-10-18 00:23:26', '2023-10-18 00:23:26'),
(155, 'delete_static_pages', 'static_pages', '2023-10-18 00:23:26', '2023-10-18 00:23:26'),
(156, 'browse_contact_orders', 'contact_orders', '2023-10-18 00:31:02', '2023-10-18 00:31:02'),
(157, 'read_contact_orders', 'contact_orders', '2023-10-18 00:31:02', '2023-10-18 00:31:02'),
(158, 'edit_contact_orders', 'contact_orders', '2023-10-18 00:31:02', '2023-10-18 00:31:02'),
(159, 'add_contact_orders', 'contact_orders', '2023-10-18 00:31:02', '2023-10-18 00:31:02'),
(160, 'delete_contact_orders', 'contact_orders', '2023-10-18 00:31:02', '2023-10-18 00:31:02'),
(161, 'browse_product_tags', 'product_tags', '2023-10-18 08:20:39', '2023-10-18 08:20:39'),
(162, 'read_product_tags', 'product_tags', '2023-10-18 08:20:39', '2023-10-18 08:20:39'),
(163, 'edit_product_tags', 'product_tags', '2023-10-18 08:20:39', '2023-10-18 08:20:39'),
(164, 'add_product_tags', 'product_tags', '2023-10-18 08:20:39', '2023-10-18 08:20:39'),
(165, 'delete_product_tags', 'product_tags', '2023-10-18 08:20:39', '2023-10-18 08:20:39'),
(166, 'browse_product_categories', 'product_categories', '2023-10-18 08:21:01', '2023-10-18 08:21:01'),
(167, 'read_product_categories', 'product_categories', '2023-10-18 08:21:01', '2023-10-18 08:21:01'),
(168, 'edit_product_categories', 'product_categories', '2023-10-18 08:21:01', '2023-10-18 08:21:01'),
(169, 'add_product_categories', 'product_categories', '2023-10-18 08:21:01', '2023-10-18 08:21:01'),
(170, 'delete_product_categories', 'product_categories', '2023-10-18 08:21:01', '2023-10-18 08:21:01'),
(171, 'browse_product_sectors', 'product_sectors', '2023-10-18 08:21:27', '2023-10-18 08:21:27'),
(172, 'read_product_sectors', 'product_sectors', '2023-10-18 08:21:27', '2023-10-18 08:21:27'),
(173, 'edit_product_sectors', 'product_sectors', '2023-10-18 08:21:27', '2023-10-18 08:21:27'),
(174, 'add_product_sectors', 'product_sectors', '2023-10-18 08:21:27', '2023-10-18 08:21:27'),
(175, 'delete_product_sectors', 'product_sectors', '2023-10-18 08:21:27', '2023-10-18 08:21:27'),
(176, 'browse_products_sliders', 'products_sliders', '2023-10-18 08:22:13', '2023-10-18 08:22:13'),
(177, 'read_products_sliders', 'products_sliders', '2023-10-18 08:22:13', '2023-10-18 08:22:13'),
(178, 'edit_products_sliders', 'products_sliders', '2023-10-18 08:22:13', '2023-10-18 08:22:13'),
(179, 'add_products_sliders', 'products_sliders', '2023-10-18 08:22:13', '2023-10-18 08:22:13'),
(180, 'delete_products_sliders', 'products_sliders', '2023-10-18 08:22:13', '2023-10-18 08:22:13'),
(181, 'browse_products', 'products', '2023-10-18 08:22:52', '2023-10-18 08:22:52'),
(182, 'read_products', 'products', '2023-10-18 08:22:52', '2023-10-18 08:22:52'),
(183, 'edit_products', 'products', '2023-10-18 08:22:52', '2023-10-18 08:22:52'),
(184, 'add_products', 'products', '2023-10-18 08:22:52', '2023-10-18 08:22:52'),
(185, 'delete_products', 'products', '2023-10-18 08:22:52', '2023-10-18 08:22:52'),
(186, 'browse_advantages', 'advantages', '2023-10-19 05:19:19', '2023-10-19 05:19:19'),
(187, 'read_advantages', 'advantages', '2023-10-19 05:19:19', '2023-10-19 05:19:19'),
(188, 'edit_advantages', 'advantages', '2023-10-19 05:19:19', '2023-10-19 05:19:19'),
(189, 'add_advantages', 'advantages', '2023-10-19 05:19:19', '2023-10-19 05:19:19'),
(190, 'delete_advantages', 'advantages', '2023-10-19 05:19:19', '2023-10-19 05:19:19'),
(191, 'browse_founders', 'founders', '2023-10-19 06:09:09', '2023-10-19 06:09:09'),
(192, 'read_founders', 'founders', '2023-10-19 06:09:09', '2023-10-19 06:09:09'),
(193, 'edit_founders', 'founders', '2023-10-19 06:09:09', '2023-10-19 06:09:09'),
(194, 'add_founders', 'founders', '2023-10-19 06:09:09', '2023-10-19 06:09:09'),
(195, 'delete_founders', 'founders', '2023-10-19 06:09:09', '2023-10-19 06:09:09'),
(196, 'browse_application_orders', 'application_orders', '2023-10-22 05:08:52', '2023-10-22 05:08:52'),
(197, 'read_application_orders', 'application_orders', '2023-10-22 05:08:52', '2023-10-22 05:08:52'),
(198, 'edit_application_orders', 'application_orders', '2023-10-22 05:08:52', '2023-10-22 05:08:52'),
(199, 'add_application_orders', 'application_orders', '2023-10-22 05:08:52', '2023-10-22 05:08:52'),
(200, 'delete_application_orders', 'application_orders', '2023-10-22 05:08:52', '2023-10-22 05:08:52'),
(201, 'browse_bultens', 'bultens', '2023-10-24 10:14:20', '2023-10-24 10:14:20'),
(202, 'read_bultens', 'bultens', '2023-10-24 10:14:20', '2023-10-24 10:14:20'),
(203, 'edit_bultens', 'bultens', '2023-10-24 10:14:20', '2023-10-24 10:14:20'),
(204, 'add_bultens', 'bultens', '2023-10-24 10:14:20', '2023-10-24 10:14:20'),
(205, 'delete_bultens', 'bultens', '2023-10-24 10:14:20', '2023-10-24 10:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(30, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(35, 1),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(75, 1),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(91, 1),
(91, 3),
(92, 1),
(92, 3),
(93, 1),
(93, 3),
(94, 1),
(94, 3),
(95, 1),
(95, 3),
(111, 1),
(111, 3),
(112, 1),
(112, 3),
(113, 1),
(113, 3),
(114, 1),
(114, 3),
(115, 1),
(115, 3),
(116, 1),
(116, 3),
(117, 1),
(117, 3),
(118, 1),
(118, 3),
(119, 1),
(120, 1),
(121, 1),
(121, 3),
(122, 1),
(122, 3),
(123, 1),
(123, 3),
(124, 1),
(124, 3),
(125, 1),
(125, 3),
(126, 1),
(126, 3),
(127, 1),
(127, 3),
(128, 1),
(128, 3),
(129, 1),
(129, 3),
(130, 1),
(130, 3),
(131, 1),
(131, 3),
(132, 1),
(132, 3),
(133, 1),
(133, 3),
(134, 1),
(134, 3),
(135, 1),
(135, 3),
(136, 1),
(136, 3),
(137, 1),
(137, 3),
(138, 1),
(138, 3),
(139, 1),
(139, 3),
(140, 1),
(140, 3),
(141, 1),
(141, 3),
(142, 1),
(142, 3),
(143, 1),
(143, 3),
(144, 1),
(144, 3),
(145, 1),
(145, 3),
(146, 1),
(146, 3),
(147, 1),
(147, 3),
(148, 1),
(148, 3),
(149, 1),
(149, 3),
(150, 1),
(150, 3),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `Images` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `brief` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `meta_ogimage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_category_id`, `title`, `slug`, `thumbnail_image`, `Images`, `phone`, `brief`, `content`, `meta_title`, `meta_description`, `meta_keyword`, `meta_canonical`, `meta_ogimage`, `created_at`, `updated_at`) VALUES
(2, 1, 'Quaerat eius possimu', 'Quaerat eius possimu', 'products\\October2023\\eO5aR3vvnYHiq1Z5ciK6.png', '[\"products\\\\October2023\\\\0dmJe4l7XdDGmMTiMGFv.png\",\"products\\\\October2023\\\\EXh8yr7alljT3S6N7t1o.png\",\"products\\\\October2023\\\\Da4356hvT8lWcAl6mHXj.png\"]', '+1 (368) 527-5891', 'Soluta excepteur mai', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', 'Et a labore quo est', 'Aut repudiandae reru', 'Aliquid nesciunt er', 'Culpa eu aliquid od', 'Dolore dolore beatae', '2023-10-25 05:29:00', '2023-10-26 00:38:13'),
(3, 2, 'offfe products', 'offfe products', 'products\\October2023\\inAscj0j8ynms27gFqpK.png', '[\"products\\\\October2023\\\\0dmJe4l7XdDGmMTiMGFv.png\",\"products\\\\October2023\\\\EXh8yr7alljT3S6N7t1o.png\",\"products\\\\October2023\\\\Da4356hvT8lWcAl6mHXj.png\",\"products\\\\October2023\\\\Nx6xGzx8YUvcKZqvZOUS.png\"]', '+1 (368) 527-5891', 'Soluta excepteur mai', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', 'Et a labore quo est', 'Aut repudiandae reru', 'Aliquid nesciunt er', 'Culpa eu aliquid od', 'Dolore dolore beatae', '2023-10-25 05:29:00', '2023-10-25 08:39:50'),
(4, 2, 'How can we buy <span>a house?</span>', 'Sec2', 'products\\October2023\\inAscj0j8ynms27gFqpK.png', '[\"products\\\\October2023\\\\0dmJe4l7XdDGmMTiMGFv.png\",\"products\\\\October2023\\\\EXh8yr7alljT3S6N7t1o.png\",\"products\\\\October2023\\\\Da4356hvT8lWcAl6mHXj.png\",\"products\\\\October2023\\\\W9AWrpCvTSN1snJXKelt.png\",\"products\\\\October2023\\\\p44slnqYx8x791vnVebX.png\",\"products\\\\October2023\\\\uXBvzPjwEjpQ29N6mb2X.png\",\"products\\\\October2023\\\\9STeBKUXaEd3gdqMRx1y.png\",\"products\\\\October2023\\\\ghe5bboICde3hp2XTUQQ.png\",\"products\\\\October2023\\\\lIUgQBdLsTEZPbN0kfSL.png\",\"products\\\\October2023\\\\Um2p57vsPJx41NU9VXkt.png\"]', '+1 (368) 527-5891', '<p>                             Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique                             lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel                             consectetur.                          </p>                         <h4>Let us know the features of the house you want, and we will come to you with suitable                             houses and offers.</h4>', '<h4>Detailing</h4>\n<p>Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt</p>\n<p>&nbsp;</p>\n<h4>Technical &amp; Support</h4>\n<p>Uninterrupted technical support after sales.</p>\n<p>&nbsp;</p>\n<h4>Trustworthy Shopping</h4>\n<p>Safe shopping with 3D Secure services.</p>\n<p>&nbsp;</p>\n<p>If you want to know more about real estate companies in Turkiye, visit our website. Please do not hesitate to contact us by mail at <strong>info@buyitfromturkiye.com.tr</strong> or to call/WhatsApp us at <strong>+90 500 000 00 00.</strong> We can help you to get in direct contact with producers or provide you with everything that you need.</p>', 'Et a labore quo est', 'Aut repudiandae reru', 'Aliquid nesciunt er', 'Culpa eu aliquid od', 'Dolore dolore beatae', '2023-10-25 05:29:00', '2023-10-26 01:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `products_sliders`
--

CREATE TABLE `products_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Real Estate', 'real_estate', NULL, '2023-10-25 03:54:20', '2023-10-25 03:54:20'),
(2, 'Offer', 'offer', NULL, '2023-10-25 05:50:01', '2023-10-25 05:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_sector`
--

CREATE TABLE `product_sector` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_sector_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sector`
--

INSERT INTO `product_sector` (`id`, `product_id`, `product_sector_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(3, 4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sectors`
--

CREATE TABLE `product_sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sectors`
--

INSERT INTO `product_sectors` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Secotr1', 'secotr1', NULL, '2023-10-25 03:55:16', '2023-10-25 03:55:16'),
(2, 'Sector2', 'sector2', NULL, '2023-10-25 08:19:51', '2023-10-25 08:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `product_tag_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'House', 'house', NULL, '2023-10-25 03:53:17', '2023-10-25 03:53:17'),
(2, 'Flat', 'flat', NULL, '2023-10-25 03:53:44', '2023-10-25 03:53:44'),
(3, 'Appartment', 'appartment', NULL, '2023-10-25 08:23:48', '2023-10-25 08:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(2, 'user', 'Normal User', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(3, 'panel_admin', 'Panel Admin', '2023-10-17 20:20:17', '2023-10-17 20:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `sell_offers`
--

CREATE TABLE `sell_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta` longtext DEFAULT NULL,
  `header_bottom` longtext DEFAULT NULL,
  `body_top` longtext DEFAULT NULL,
  `body_bottom` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `meta_ogimage` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `title`, `meta`, `header_bottom`, `body_top`, `body_bottom`, `meta_title`, `meta_description`, `meta_keyword`, `meta_canonical`, `meta_ogimage`, `site_name`, `created_at`, `updated_at`) VALUES
(3, 'Duis velit omnis qua', 'Ut odit dolor modi q', 'Cupidatat qui eu et ', 'Deleniti temporibus ', 'Impedit est et iur', 'Buyitfromturkey', 'Nostrud officiis dol', 'Officiis vero doloru', 'Est in architecto ex', 'Harum culpa omnis e', 'Dolan Roth', '2023-10-04 10:18:00', '2023-10-10 09:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `color`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Real Estate', NULL, '[{\"download_link\":\"services\\\\October2023\\\\VmTcPiIChbfSRsEU270D.svg\",\"original_name\":\"realestate.svg\"}]', 'Real_Estate', '2023-10-10 10:04:31', '2023-10-10 10:04:31'),
(2, 'Travel Around', NULL, '[{\"download_link\":\"services\\\\October2023\\\\ESY2Ww50YDFs1VQLquQN.svg\",\"original_name\":\"travel.svg\"}]', 'Travel_Around', '2023-10-10 10:26:36', '2023-10-10 10:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `similar_products`
--

CREATE TABLE `similar_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `semi_product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_texts`
--

CREATE TABLE `site_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_texts`
--

INSERT INTO `site_texts` (`id`, `key`, `place`, `content`, `created_at`, `updated_at`) VALUES
(2, 'right-search-bar-title', NULL, 'What Would You Like To Get From Türkiye ?', '2023-10-10 09:37:47', '2023-10-10 09:37:47'),
(3, 'Searching', NULL, 'Searching', '2023-10-10 09:39:31', '2023-10-10 09:39:31'),
(6, 'Get_an_Offer', NULL, 'Get an Offer', '2023-10-10 10:38:01', '2023-10-10 10:38:01'),
(7, 'Who_are_we', NULL, 'Who are we', '2023-10-11 03:21:40', '2023-10-11 03:21:40'),
(8, 'homepage_aboutUs_title', NULL, 'Why Choose <span>Türkiye?</span>', '2023-10-11 03:28:19', '2023-10-11 03:28:19'),
(9, 'homepage_aboutUs_brief', NULL, '<em>Turkey</em> is an attractive option for international buyers with competitive                                 prices and high-quality products. Its strategic location and technological expertise                                 are also appealing factors. Additionally, the strong agriculture sector is                                 noteworthy.', '2023-10-11 03:28:58', '2023-10-11 03:28:58'),
(10, 'homepage_aboutUs_offers_title', NULL, 'What We Offer?', '2023-10-11 06:36:05', '2023-10-11 06:36:05'),
(11, 'homepage_works_title', NULL, 'How It <span>Works?</span>', '2023-10-15 02:01:42', '2023-10-15 02:01:42'),
(12, 'How_it_works_P1_title', NULL, 'Determine Your Needs,                                                     Check out our products and services.', '2023-10-15 02:26:20', '2023-10-15 02:26:20'),
(13, 'How_it_works_P2_title', NULL, 'Write to us to get a quote for the product or service you have                                                         chosen.', '2023-10-15 02:27:44', '2023-10-15 02:27:44'),
(14, 'How_it_works_P3_title', NULL, 'Determine Your Needs,                                                         Check out our products and services.', '2023-10-15 02:28:01', '2023-10-15 02:28:01'),
(15, 'How_it_works_P4_title', NULL, 'Write to us to get a quote for the product or service you have                                                         chosen.', '2023-10-15 02:28:15', '2023-10-15 02:28:15'),
(16, 'How_it_works_P1_content', NULL, 'Determine Your Needs,                                                         Check out our products and services.', '2023-10-15 02:29:16', '2023-10-15 02:29:16'),
(17, 'How_it_works_P2_content', NULL, 'Determine Your Needs,                                                         Check out our products and services.', '2023-10-15 02:29:28', '2023-10-15 02:29:28'),
(18, 'How_it_works_P3_content', NULL, 'Determine Your Needs,                                                         Check out our products and services.', '2023-10-15 02:29:38', '2023-10-15 02:29:38'),
(19, 'How_it_works_P4_content', NULL, 'Determine Your Needs,                                                         Check out our products and services.', '2023-10-15 02:29:48', '2023-10-15 02:29:48'),
(20, 'homepage_brands_title', NULL, 'Brands', '2023-10-15 03:11:16', '2023-10-15 03:11:16'),
(21, 'homepage_faq_title', NULL, 'FAQ', '2023-10-15 04:37:21', '2023-10-15 04:37:21'),
(22, 'homepage_faq_content', NULL, 'Send us your questions and we\'ll answer them. All the answers you are looking for are here', '2023-10-15 04:37:58', '2023-10-15 04:37:58'),
(23, 'routeBlogs', NULL, 'bloglar', '2023-10-15 10:23:18', '2023-10-15 10:23:18'),
(24, 'routeBlogDetails', NULL, 'detay', '2023-10-15 10:33:41', '2023-10-15 10:33:41'),
(25, 'blogs_index_title', NULL, 'OUR<span>BLOG</span>', '2023-10-15 10:34:57', '2023-10-15 10:34:57'),
(26, 'Category', NULL, 'Category', '2023-10-16 05:21:27', '2023-10-16 05:21:27'),
(27, 'Show_More', NULL, 'Show More', '2023-10-16 07:29:18', '2023-10-16 07:29:18'),
(28, 'Show_Less', NULL, 'Show Less', '2023-10-16 07:29:30', '2023-10-16 07:29:30'),
(29, '404title', '404', 'Sayfa Bulunamadı', '2023-10-18 00:06:10', '2023-10-18 00:06:10'),
(30, '404content', '404', 'Ncinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.', '2023-10-18 00:06:00', '2023-10-18 00:06:36'),
(31, '404backToHomepage', '404', 'Anasayfaya Dön', '2023-10-18 00:07:03', '2023-10-18 00:07:03'),
(32, 'routeProfile', 'profil route', 'profil', '2023-10-18 00:26:35', '2023-10-18 00:26:35'),
(33, 'routePage', 'sabit sayfa route', 'sayfa', '2023-10-18 00:26:52', '2023-10-18 00:26:52'),
(34, 'routeContact', 'iletisim sayfasi route', 'iletisim', '2023-10-18 00:29:22', '2023-10-18 00:29:22'),
(35, 'Contact_Order_submitted', 'İletişim Sayfası', 'İletişim Formunuz Başarıyla Gönderilmiştir!', '2023-10-18 00:39:22', '2023-10-18 00:39:22'),
(36, 'routeProducts', NULL, 'ürünler', '2023-10-18 08:16:56', '2023-10-18 08:16:56'),
(37, 'routeProductDetails', NULL, 'Ürün_Detayları', '2023-10-18 08:18:47', '2023-10-18 08:18:47'),
(38, 'routeHowitwork', NULL, 'how_it_work', '2023-10-18 19:57:49', '2023-10-18 19:57:49'),
(39, 'how_it_works_brief', NULL, 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.', '2023-10-19 00:13:03', '2023-10-19 00:13:03'),
(40, 'how_it_works_footer_brief', NULL, 'You can reliably reach <strong>the product or service</strong> you want <strong>from all                             over Turkey</strong> through us.', '2023-10-19 00:23:00', '2023-10-19 01:59:28'),
(41, 'How_it_works_header', NULL, 'How it works?', '2023-10-19 00:29:59', '2023-10-19 00:29:59'),
(42, 'Contact', NULL, 'Contact', '2023-10-19 00:30:10', '2023-10-19 00:30:10'),
(43, 'What_we_offer_header', NULL, 'What we offer?', '2023-10-19 00:31:38', '2023-10-19 00:31:38'),
(44, 'Who_Are_We_header', NULL, 'Who Are We?', '2023-10-19 00:31:59', '2023-10-19 00:31:59'),
(45, 'Why_Choose_Turkey_header', NULL, 'Why Choose Turkey?', '2023-10-19 01:15:19', '2023-10-19 01:15:19'),
(46, 'routeWhyChoose', NULL, 'why_choose', '2023-10-19 05:08:45', '2023-10-19 05:08:45'),
(47, 'routeWhoweare', NULL, 'who_we_are', '2023-10-19 05:09:08', '2023-10-19 05:09:08'),
(48, 'routeWhatweoffer', NULL, 'What_we_offer', '2023-10-19 05:09:29', '2023-10-19 05:09:29'),
(49, 'why_choose_turkey_page_title', NULL, 'WHY CHOOSE <span>TURKEY?</span>', '2023-10-19 05:23:38', '2023-10-19 05:23:38'),
(50, 'why_choose_turkey_page_content', NULL, '<strong>Turkey</strong> is an attractive option for international buyers with competitive                         prices and high-quality products. Its strategic location and technological expertise are                         also appealing factors. Additionally, the strong agriculture sector is noteworthy.                         <br>                         <br>                         Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.                         <br>                         <br>                         Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         <br>                         <br>                         Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in                         vulputate. Morbi lectus felis, tincidunt sed dui sit amet, sagittis sagittis dui. Aenean                         vestibulum nisl in nisi dignissim, eu semper diam interdum.', '2023-10-19 05:28:04', '2023-10-19 05:28:04'),
(51, 'Advantages', NULL, 'Advantages', '2023-10-19 05:29:30', '2023-10-19 05:29:30'),
(52, 'who_we_are_page_title', NULL, 'WHO ARE <span>WE?</span>', '2023-10-19 05:38:18', '2023-10-19 05:38:18'),
(53, 'About_Us', NULL, 'About Us', '2023-10-19 05:39:00', '2023-10-19 05:39:57'),
(54, 'About_us_content', NULL, '<strong>Turkey</strong> is an attractive option for international buyers with competitive                         prices and high-quality products. Its strategic location and technological expertise are                         also appealing factors. Additionally, the strong agriculture sector is noteworthy.                         <br>                         <br>                         Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.                         <br>                         <br>                         Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         <br>                         <br>                         Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in                         vulputate. Morbi lectus felis, tincidunt sed dui sit amet, sagittis sagittis dui. Aenean                         vestibulum nisl in nisi dignissim, eu semper diam interdum.', '2023-10-19 05:40:39', '2023-10-19 05:40:39'),
(55, 'Our_Mission', NULL, 'Our Mission', '2023-10-19 05:52:42', '2023-10-19 05:52:42'),
(56, 'Our_mission_content1', NULL, 'Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor                         elementum, pulvinar justo ac, elementum lacus.', '2023-10-19 05:53:30', '2023-10-19 05:53:30'),
(57, 'Our_mission_content2', NULL, 'Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus. Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.', '2023-10-19 05:53:00', '2023-10-19 05:56:13'),
(58, 'Our_Values', NULL, 'Our Values', '2023-10-19 05:54:42', '2023-10-19 05:54:42'),
(59, 'Global_Experience', NULL, 'Global Experience', '2023-10-19 05:56:03', '2023-10-19 05:56:03'),
(60, 'Global_Experience_content', NULL, 'Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor elementum,                     pulvinar justo ac, elementum lacus. Morbi lectus felis, tincidunt sed dui sit amet, sagittis                     sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam interdum.', '2023-10-19 05:57:06', '2023-10-19 05:57:06'),
(61, 'team_section_brief', NULL, 'You can reliably reach <span>the product or service</span> you want <br> <em>from all over                         Turkey</em> through us.', '2023-10-19 06:00:49', '2023-10-19 06:00:49'),
(62, 'More_info', NULL, 'More info', '2023-10-19 06:01:29', '2023-10-19 06:01:29'),
(63, 'our_founders_title', NULL, '<span>OUR</span> FOUNDERS', '2023-10-19 06:02:39', '2023-10-19 06:02:39'),
(64, 'our_founders_content', NULL, 'Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor                             elementum, pulvinar justo ac, elementum lacus.', '2023-10-19 06:02:55', '2023-10-19 06:02:55'),
(65, 'Tags', NULL, 'Tags', '2023-10-19 06:32:20', '2023-10-19 06:32:20'),
(66, 'what_we_offer_page_title', NULL, 'What We <span>Offer?</span>', '2023-10-19 06:39:43', '2023-10-19 06:39:43'),
(67, 'what_we_offer_page_content', NULL, '<strong>Turkey</strong> is an attractive option for international buyers with competitive                         prices and high-quality products. Its strategic location and technological expertise are                         also appealing factors. Additionally, the strong agriculture sector is noteworthy.                         <br>                         <br>                         Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.', '2023-10-19 06:40:15', '2023-10-19 06:40:15'),
(68, 'product_and_services', NULL, 'product and services', '2023-10-19 07:18:36', '2023-10-19 07:18:36'),
(69, 'application_form_page_title', NULL, 'Applıcatıon <span>for sell</span>', '2023-10-19 08:15:58', '2023-10-19 08:15:58'),
(70, 'application_form_page_brief', NULL, 'Send us your questions and we\'ll answer them. All the answers you are looking for are here', '2023-10-19 08:16:30', '2023-10-19 08:16:30'),
(71, 'routeApplicationForm', NULL, 'application', '2023-10-19 08:56:22', '2023-10-19 08:56:22'),
(72, 'routeOfferForm', NULL, 'get_an_offer', '2023-10-23 07:05:39', '2023-10-23 07:05:39'),
(73, 'homepage_get_an_offer_title', NULL, 'What Would You Like To Get <br> From Türkiye ?', '2023-10-24 05:49:53', '2023-10-24 05:49:53'),
(74, 'homepage_make_an_application_title', NULL, 'What Would You Like To Get <br> From Türkiye ?', '2023-10-24 05:50:46', '2023-10-24 05:50:46'),
(75, 'routeBulten', NULL, 'bulten', '2023-10-24 09:57:02', '2023-10-24 09:57:02'),
(76, 'routeBilling', NULL, 'billing_details', '2023-10-25 01:43:41', '2023-10-25 01:43:41'),
(77, 'routeMyOffers', NULL, 'myOffers', '2023-10-25 01:50:03', '2023-10-25 01:50:03'),
(78, 'routeMyApplications', NULL, 'MyApplications', '2023-10-25 01:51:00', '2023-10-25 01:51:00'),
(79, 'products_search_results', NULL, 'results are listed according to the information you selected.', '2023-10-25 07:05:31', '2023-10-25 07:05:31'),
(80, 'Buy_it_From_Turkiye', NULL, 'Buy it From Turkiye', '2023-10-25 07:22:00', '2023-10-25 07:22:00'),
(81, 'products_and_services', NULL, 'Products                                 <br>                                 AND                                 <br>                                 SERVICES', '2023-10-25 07:26:20', '2023-10-25 07:26:20'),
(82, 'Search_Results', NULL, 'Search Results', '2023-10-25 07:27:12', '2023-10-25 07:27:12'),
(83, 'Minimizing_Map', NULL, 'Minimizing Map', '2023-10-25 08:07:10', '2023-10-25 08:07:10'),
(84, 'Phone', NULL, 'Phone', '2023-10-25 08:58:30', '2023-10-25 08:58:30'),
(85, 'no_images_avaliable', NULL, 'No images available for this product.', '2023-10-26 00:26:21', '2023-10-26 00:26:21'),
(86, 'Products_and_Services_header', NULL, 'Products and Services ', '2023-10-26 01:43:57', '2023-10-26 01:43:57'),
(87, 'Billing_Details', NULL, 'Billing Details', '2023-10-26 07:45:15', '2023-10-26 07:45:15'),
(88, 'Add_new_address', NULL, 'Yeni Adres Ekle', '2023-10-26 07:47:43', '2023-10-26 07:47:43'),
(89, 'Individual', NULL, 'Bireysel', '2023-10-26 08:02:51', '2023-10-26 08:02:51'),
(90, 'Institutional', NULL, 'Kurumsal', '2023-10-26 08:03:10', '2023-10-26 08:03:10'),
(91, 'log_out_modal_message', NULL, 'Türkiye, uluslararası alıcılar için cazip bir seçenek', '2023-10-26 08:54:23', '2023-10-26 08:54:23'),
(92, 'Are_you_about_logout', NULL, 'Çıkış yapmak üzere misiniz?', '2023-10-26 08:54:51', '2023-10-26 08:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `brief`, `slug`, `image`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'What Would You Like To <em>Get From Türkiye ?</em>', 'We Assist You In Buying Homes Or Land In Turkey. Request A Quote Now, Let Us Find Your Perfect Property!', 'slider_1', 'sliders\\October2023\\l4kL3dUos5MnJDJ37r5l.png', 1, 1, '2023-10-10 11:20:39', '2023-10-10 11:20:39'),
(2, 'What Would You Like To 2 <em>Get From Türkiye ?</em>', 'We Assist You In Buying Homes Or Land In Turkey. Request A Quote Now, Let Us Find Your Perfect Property! 2 2', 'slider_2', 'sliders\\October2023\\MH25PJVi8xYJHZ62iOZ5.png', 2, 1, '2023-10-10 11:21:14', '2023-10-10 11:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE `static_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(255) DEFAULT NULL,
  `meta_ogimage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `meta_keyword`, `meta_canonical`, `meta_ogimage`, `created_at`, `updated_at`) VALUES
(1, 'Kullanım Koşulları', 'kullanim-kosullari', '<h5>Use of our website</h5>\n<p>These Conditions are the only conditions applicable to the use of this website and replace any other, except with the prior express written consent of the Seller. These Terms are important to both you and us as they are designed to create a legally binding agreement between us protecting your rights as a customer and our rights as a company. You declare that, by placing your order, you have read and accept these Conditions without reservation.</p>\n<h5>You agree that:</h5>\n<ul>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n</ul>\n<p>Donec rutrum, metus non aliquet aliquam, diam elit ornare arcu, sed facilisis neque sem vel mauris. In tristique orci urna, sit amet faucibus leo ultrices eget. Phasellus ac erat mauris. Aliquam erat volutpat. Nulla leo diam, dignissim ut viverra quis, lobortis eget enim. Ut suscipit erat ac neque pellentesque, ut luctus nisl lacinia. Vivamus dignissim at eros at interdum. Curabitur ultricies mauris dui, id suscipit neque lacinia iaculis. Fusce placerat libero arcu, nec ultrices purus interdum ac. Nulla malesuada tristique ante id sodales. Mauris nec finibus nibh, quis euismod ex. Pellentesque id sollicitudin nisl. <br><br>Nam vitae quam elit. Pellentesque nisi massa, fermentum id ligula quis, dignissim malesuada eros. Aliquam fermentum imperdiet varius. Ut tristique luctus dui volutpat dapibus. Donec fermentum tempus nibh, quis rhoncus tortor fringilla eu. Aliquam nulla ligula, luctus cursus massa ut, tincidunt interdum eros. Cras varius ac est vel cursus. Donec a ligula gravida tellus commodo eleifend id nec tellus. Maecenas facilisis nunc ut elit ullamcorper auctor. Sed quam ante, rutrum sit amet porttitor in, molestie quis orci. <br><br>Donec nulla erat, tempor et laoreet sed, eleifend at orci. Duis mattis nisi vitae augue malesuada, dapibus feugiat nisi feugiat. Aenean mauris lacus, tempor quis imperdiet sed, auctor in dui. In iaculis ipsum arcu, non dictum elit suscipit eget. Quisque mattis nisl condimentum ligula mollis, vel imperdiet eros dapibus. Etiam volutpat eget eros non tincidunt. Pellentesque at sollicitudin velit, ac condimentum nisi. Nam mattis, est nec ultrices sollicitudin, nulla sem sodales orci, vel hendrerit ipsum odio congue nunc. Proin molestie in tortor id lacinia. Ut pretium nunc et eleifend lacinia. Praesent quis eleifend nibh. Integer iaculis pulvinar eros, ac consequat ex efficitur in. Aliquam nec fermentum leo. Etiam placerat hendrerit iaculis. Vestibulum finibus ex vel accumsan fringilla. <br><br>Integer massa elit, porttitor vel pulvinar ac, pretium vitae enim. Proin porttitor efficitur nulla, at lobortis ex tempor a. Morbi egestas leo ac mauris posuere, eu congue est tincidunt. Vivamus vel leo vulputate, dictum arcu sed, lobortis nulla. In viverra arcu molestie magna tempor aliquet. Nam eget congue dui. Proin vitae mauris ac dui ultricies feugiat. Aliquam erat volutpat. Nunc vel vehicula dolor. Curabitur sagittis dictum porta. Morbi non laoreet velit. Curabitur semper dolor et dictum euismod.</p>', 'Kullanım Koşulları', '', '', '', '', '2023-10-18 00:24:49', '2023-10-18 00:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_rows', 'display_name', 58, 'en', 'Id', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(2, 'data_rows', 'display_name', 59, 'en', 'Title', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(3, 'data_rows', 'display_name', 60, 'en', 'Meta', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(4, 'data_rows', 'display_name', 61, 'en', 'Header Bottom', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(5, 'data_rows', 'display_name', 62, 'en', 'Body Top', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(6, 'data_rows', 'display_name', 63, 'en', 'Body Bottom', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(7, 'data_rows', 'display_name', 64, 'en', 'Meta Title', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(8, 'data_rows', 'display_name', 65, 'en', 'Meta Description', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(9, 'data_rows', 'display_name', 66, 'en', 'Meta Keyword', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(10, 'data_rows', 'display_name', 67, 'en', 'Meta Canonical', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(11, 'data_rows', 'display_name', 68, 'en', 'Meta Ogimage', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(12, 'data_rows', 'display_name', 69, 'en', 'Site Name', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(13, 'data_rows', 'display_name', 70, 'en', 'Created At', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(14, 'data_rows', 'display_name', 71, 'en', 'Updated At', '2023-10-04 09:49:38', '2023-10-04 09:49:38'),
(17, 'data_rows', 'display_name', 100, 'en', 'Id', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(18, 'data_rows', 'display_name', 101, 'en', 'Title', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(19, 'data_rows', 'display_name', 102, 'en', 'Meta', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(20, 'data_rows', 'display_name', 103, 'en', 'Header Bottom', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(21, 'data_rows', 'display_name', 104, 'en', 'Body Top', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(22, 'data_rows', 'display_name', 105, 'en', 'Body Bottom', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(23, 'data_rows', 'display_name', 106, 'en', 'Meta Title', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(24, 'data_rows', 'display_name', 107, 'en', 'Meta Description', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(25, 'data_rows', 'display_name', 108, 'en', 'Meta Keyword', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(26, 'data_rows', 'display_name', 109, 'en', 'Meta Canonical', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(27, 'data_rows', 'display_name', 110, 'en', 'Meta Ogimage', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(28, 'data_rows', 'display_name', 111, 'en', 'Site Name', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(29, 'data_rows', 'display_name', 112, 'en', 'Created At', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(30, 'data_rows', 'display_name', 113, 'en', 'Updated At', '2023-10-04 10:05:28', '2023-10-04 10:05:28'),
(33, 'seo', 'title', 3, 'en', 'Dolore accusantium e', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(34, 'seo', 'meta', 3, 'en', 'Occaecat molestiae v', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(35, 'seo', 'header_bottom', 3, 'en', 'Tenetur sit dolores ', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(36, 'seo', 'body_top', 3, 'en', 'Minima et cillum non', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(37, 'seo', 'body_bottom', 3, 'en', 'Laudantium quia ita', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(38, 'seo', 'meta_title', 3, 'en', 'Possimus animi iru', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(39, 'seo', 'meta_description', 3, 'en', 'Sit qui sit blanditi', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(40, 'seo', 'meta_keyword', 3, 'en', 'Ea mollit ex ab iste', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(41, 'seo', 'meta_canonical', 3, 'en', 'Est quibusdam odit c', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(42, 'seo', 'meta_ogimage', 3, 'en', 'Commodo in molestiae', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(43, 'seo', 'site_name', 3, 'en', 'Hakeem Reed', '2023-10-04 10:18:40', '2023-10-04 10:18:40'),
(44, 'data_rows', 'display_name', 156, 'en', 'Id', '2023-10-10 10:04:09', '2023-10-10 10:04:09'),
(45, 'data_rows', 'display_name', 157, 'en', 'Title', '2023-10-10 10:04:09', '2023-10-10 10:04:09'),
(46, 'data_rows', 'display_name', 158, 'en', 'Color', '2023-10-10 10:04:09', '2023-10-10 10:04:09'),
(47, 'data_rows', 'display_name', 159, 'en', 'Image', '2023-10-10 10:04:09', '2023-10-10 10:04:09'),
(48, 'data_rows', 'display_name', 160, 'en', 'Slug', '2023-10-10 10:04:09', '2023-10-10 10:04:09'),
(49, 'data_rows', 'display_name', 161, 'en', 'Created At', '2023-10-10 10:04:09', '2023-10-10 10:04:09'),
(50, 'data_rows', 'display_name', 162, 'en', 'Updated At', '2023-10-10 10:04:09', '2023-10-10 10:04:09'),
(51, 'data_types', 'display_name_singular', 15, 'en', 'Service', '2023-10-10 10:04:09', '2023-10-10 10:04:09'),
(52, 'data_types', 'display_name_plural', 15, 'en', 'Services', '2023-10-10 10:04:09', '2023-10-10 10:04:09'),
(55, 'site_texts', 'content', 23, 'en', 'blogs', '2023-10-15 10:23:18', '2023-10-15 10:23:18'),
(56, 'site_texts', 'content', 24, 'en', 'detail', '2023-10-15 10:33:41', '2023-10-15 10:33:41'),
(57, 'data_rows', 'display_name', 218, 'en', 'Id', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(58, 'data_rows', 'display_name', 219, 'en', 'Author Id', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(59, 'data_rows', 'display_name', 220, 'en', 'Blog Category Id', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(60, 'data_rows', 'display_name', 221, 'en', 'Title', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(61, 'data_rows', 'display_name', 222, 'en', 'Slug', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(62, 'data_rows', 'display_name', 223, 'en', 'Brief', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(63, 'data_rows', 'display_name', 224, 'en', 'Date', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(64, 'data_rows', 'display_name', 225, 'en', 'Thumbnail Image', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(65, 'data_rows', 'display_name', 226, 'en', 'Cover Image', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(66, 'data_rows', 'display_name', 227, 'en', 'Content', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(67, 'data_rows', 'display_name', 228, 'en', 'Is Featured', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(68, 'data_rows', 'display_name', 229, 'en', 'Meta Title', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(69, 'data_rows', 'display_name', 230, 'en', 'Meta Description', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(70, 'data_rows', 'display_name', 231, 'en', 'Meta Keyword', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(71, 'data_rows', 'display_name', 232, 'en', 'Meta Canonical', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(72, 'data_rows', 'display_name', 233, 'en', 'Meta Ogimage', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(73, 'data_rows', 'display_name', 234, 'en', 'Created At', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(74, 'data_rows', 'display_name', 235, 'en', 'Updated At', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(75, 'data_rows', 'display_name', 243, 'en', 'authors', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(76, 'data_rows', 'display_name', 244, 'en', 'blog_categories', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(77, 'data_types', 'display_name_singular', 28, 'en', 'Blog', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(78, 'data_types', 'display_name_plural', 28, 'en', 'Blogs', '2023-10-16 06:43:27', '2023-10-16 06:43:27'),
(79, 'data_rows', 'display_name', 245, 'en', 'blog_tags', '2023-10-16 06:45:50', '2023-10-16 06:45:50'),
(80, 'blog_categories', 'title', 4, 'en', 'Products', '2023-10-16 09:16:22', '2023-10-16 09:16:22'),
(81, 'blog_categories', 'slug', 4, 'en', 'products', '2023-10-16 09:16:22', '2023-10-16 09:16:22'),
(82, 'data_rows', 'display_name', 201, 'en', 'Id', '2023-10-16 09:40:13', '2023-10-16 09:40:13'),
(83, 'data_rows', 'display_name', 202, 'en', 'Title', '2023-10-16 09:40:13', '2023-10-16 09:40:13'),
(84, 'data_rows', 'display_name', 203, 'en', 'Slug', '2023-10-16 09:40:13', '2023-10-16 09:40:13'),
(85, 'data_rows', 'display_name', 204, 'en', 'Color', '2023-10-16 09:40:13', '2023-10-16 09:40:13'),
(86, 'data_rows', 'display_name', 205, 'en', 'Created At', '2023-10-16 09:40:13', '2023-10-16 09:40:13'),
(87, 'data_rows', 'display_name', 206, 'en', 'Updated At', '2023-10-16 09:40:13', '2023-10-16 09:40:13'),
(88, 'data_types', 'display_name_singular', 24, 'en', 'Blog Category', '2023-10-16 09:40:13', '2023-10-16 09:40:13'),
(89, 'data_types', 'display_name_plural', 24, 'en', 'Blog Categories', '2023-10-16 09:40:13', '2023-10-16 09:40:13'),
(90, 'blog_categories', 'title', 3, 'en', 'Food', '2023-10-16 09:49:44', '2023-10-16 09:49:44'),
(91, 'blog_categories', 'slug', 3, 'en', 'food', '2023-10-16 09:49:44', '2023-10-16 09:49:44'),
(92, 'blog_categories', 'title', 2, 'en', 'Travel', '2023-10-16 09:49:54', '2023-10-16 09:49:54'),
(93, 'blog_categories', 'slug', 2, 'en', 'travel', '2023-10-16 09:49:54', '2023-10-16 09:49:54'),
(103, 'data_rows', 'display_name', 246, 'en', 'Id', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(104, 'data_rows', 'display_name', 247, 'en', 'Role Id', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(105, 'data_rows', 'display_name', 248, 'en', 'Ad', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(106, 'data_rows', 'display_name', 249, 'en', 'Email', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(107, 'data_rows', 'display_name', 250, 'en', 'Email Verified At', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(108, 'data_rows', 'display_name', 251, 'en', 'Password', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(109, 'data_rows', 'display_name', 252, 'en', 'Remember Token', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(110, 'data_rows', 'display_name', 253, 'en', 'Resim', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(111, 'data_rows', 'display_name', 254, 'en', 'Settings', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(112, 'data_rows', 'display_name', 255, 'en', 'Oluşturma Tarihi', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(113, 'data_rows', 'display_name', 256, 'en', 'Updated At', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(114, 'data_types', 'display_name_singular', 30, 'en', 'Admin', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(115, 'data_types', 'display_name_plural', 30, 'en', 'Admins', '2023-10-17 20:22:33', '2023-10-17 20:22:33'),
(116, 'site_texts', 'content', 29, 'en', 'Page Not Found', '2023-10-18 00:06:10', '2023-10-18 00:06:10'),
(117, 'site_texts', 'content', 30, 'en', 'Ncinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.', '2023-10-18 00:06:26', '2023-10-18 00:06:26'),
(118, 'site_texts', 'content', 30, 'fr', 'Ncinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.', '2023-10-18 00:06:36', '2023-10-18 00:06:36'),
(119, 'site_texts', 'content', 30, 'de', 'Ncinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.', '2023-10-18 00:06:36', '2023-10-18 00:06:36'),
(120, 'site_texts', 'content', 30, 'ar', 'Ncinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.', '2023-10-18 00:06:36', '2023-10-18 00:06:36'),
(121, 'site_texts', 'content', 31, 'en', 'Back to homepage', '2023-10-18 00:07:03', '2023-10-18 00:07:03'),
(122, 'static_pages', 'title', 1, 'en', 'Terms Of Use', '2023-10-18 00:24:49', '2023-10-18 00:24:49'),
(123, 'static_pages', 'slug', 1, 'en', 'terms-of-use', '2023-10-18 00:24:51', '2023-10-18 00:24:51'),
(124, 'static_pages', 'content', 1, 'en', '<h5>Use of our website</h5>\n<p>These Conditions are the only conditions applicable to the use of this website and replace any other, except with the prior express written consent of the Seller. These Terms are important to both you and us as they are designed to create a legally binding agreement between us protecting your rights as a customer and our rights as a company. You declare that, by placing your order, you have read and accept these Conditions without reservation.</p>\n<h5>You agree that:</h5>\n<ul>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n</ul>\n<p>Donec rutrum, metus non aliquet aliquam, diam elit ornare arcu, sed facilisis neque sem vel mauris. In tristique orci urna, sit amet faucibus leo ultrices eget. Phasellus ac erat mauris. Aliquam erat volutpat. Nulla leo diam, dignissim ut viverra quis, lobortis eget enim. Ut suscipit erat ac neque pellentesque, ut luctus nisl lacinia. Vivamus dignissim at eros at interdum. Curabitur ultricies mauris dui, id suscipit neque lacinia iaculis. Fusce placerat libero arcu, nec ultrices purus interdum ac. Nulla malesuada tristique ante id sodales. Mauris nec finibus nibh, quis euismod ex. Pellentesque id sollicitudin nisl. <br><br>Nam vitae quam elit. Pellentesque nisi massa, fermentum id ligula quis, dignissim malesuada eros. Aliquam fermentum imperdiet varius. Ut tristique luctus dui volutpat dapibus. Donec fermentum tempus nibh, quis rhoncus tortor fringilla eu. Aliquam nulla ligula, luctus cursus massa ut, tincidunt interdum eros. Cras varius ac est vel cursus. Donec a ligula gravida tellus commodo eleifend id nec tellus. Maecenas facilisis nunc ut elit ullamcorper auctor. Sed quam ante, rutrum sit amet porttitor in, molestie quis orci. <br><br>Donec nulla erat, tempor et laoreet sed, eleifend at orci. Duis mattis nisi vitae augue malesuada, dapibus feugiat nisi feugiat. Aenean mauris lacus, tempor quis imperdiet sed, auctor in dui. In iaculis ipsum arcu, non dictum elit suscipit eget. Quisque mattis nisl condimentum ligula mollis, vel imperdiet eros dapibus. Etiam volutpat eget eros non tincidunt. Pellentesque at sollicitudin velit, ac condimentum nisi. Nam mattis, est nec ultrices sollicitudin, nulla sem sodales orci, vel hendrerit ipsum odio congue nunc. Proin molestie in tortor id lacinia. Ut pretium nunc et eleifend lacinia. Praesent quis eleifend nibh. Integer iaculis pulvinar eros, ac consequat ex efficitur in. Aliquam nec fermentum leo. Etiam placerat hendrerit iaculis. Vestibulum finibus ex vel accumsan fringilla. <br><br>Integer massa elit, porttitor vel pulvinar ac, pretium vitae enim. Proin porttitor efficitur nulla, at lobortis ex tempor a. Morbi egestas leo ac mauris posuere, eu congue est tincidunt. Vivamus vel leo vulputate, dictum arcu sed, lobortis nulla. In viverra arcu molestie magna tempor aliquet. Nam eget congue dui. Proin vitae mauris ac dui ultricies feugiat. Aliquam erat volutpat. Nunc vel vehicula dolor. Curabitur sagittis dictum porta. Morbi non laoreet velit. Curabitur semper dolor et dictum euismod.</p>', '2023-10-18 00:24:51', '2023-10-18 00:24:51'),
(125, 'static_pages', 'meta_title', 1, 'en', 'Terms Of Use', '2023-10-18 00:24:51', '2023-10-18 00:24:51'),
(126, 'site_texts', 'content', 32, 'en', 'profile', '2023-10-18 00:26:36', '2023-10-18 00:26:36'),
(127, 'site_texts', 'content', 33, 'en', 'page', '2023-10-18 00:26:54', '2023-10-18 00:26:54'),
(128, 'site_texts', 'content', 34, 'en', 'contact', '2023-10-18 00:29:23', '2023-10-18 00:29:23'),
(129, 'data_rows', 'display_name', 270, 'en', 'Id', '2023-10-18 00:33:35', '2023-10-18 00:33:35'),
(130, 'data_rows', 'display_name', 271, 'en', 'Ad', '2023-10-18 00:33:37', '2023-10-18 00:33:37'),
(131, 'data_rows', 'display_name', 272, 'en', 'Soyad', '2023-10-18 00:33:37', '2023-10-18 00:33:37'),
(132, 'data_rows', 'display_name', 277, 'en', 'email', '2023-10-18 00:33:37', '2023-10-18 00:33:37'),
(133, 'data_rows', 'display_name', 278, 'en', 'Mesaj', '2023-10-18 00:33:37', '2023-10-18 00:33:37'),
(134, 'data_rows', 'display_name', 279, 'en', 'Konu', '2023-10-18 00:33:37', '2023-10-18 00:33:37'),
(135, 'data_rows', 'display_name', 275, 'en', 'Oluşturma Tarihi', '2023-10-18 00:33:37', '2023-10-18 00:33:37'),
(136, 'data_rows', 'display_name', 276, 'en', 'Updated At', '2023-10-18 00:33:37', '2023-10-18 00:33:37'),
(137, 'data_types', 'display_name_singular', 32, 'en', 'İletişim Formu', '2023-10-18 00:33:37', '2023-10-18 00:33:37'),
(138, 'data_types', 'display_name_plural', 32, 'en', 'İletişim Formları', '2023-10-18 00:33:37', '2023-10-18 00:33:37'),
(139, 'site_texts', 'content', 35, 'en', 'Contact Form submitted successfully', '2023-10-18 00:39:23', '2023-10-18 00:39:23'),
(140, 'contact_us', 'email', 1, 'en', 'belisipos@mailinator.com', '2023-10-18 00:41:52', '2023-10-18 00:41:52'),
(141, 'contact_us', 'phone1', 1, 'en', '+1 (203) 292-4061', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(142, 'contact_us', 'phone2', 1, 'en', '+1 (593) 826-4718', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(143, 'contact_us', 'whatsapp', 1, 'en', 'Ea iure aut voluptat', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(144, 'contact_us', 'address', 1, 'en', 'Dolores a qui occaec', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(145, 'contact_us', 'map', 1, 'en', 'Animi voluptates fa', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(146, 'contact_us', 'facebook', 1, 'en', 'Iure eligendi simili', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(147, 'contact_us', 'youtube', 1, 'en', 'Ex corrupti asperna', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(148, 'contact_us', 'twitter', 1, 'en', 'Fugiat aut adipisci', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(149, 'contact_us', 'instagram', 1, 'en', 'Reprehenderit eu in', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(150, 'contact_us', 'linkedin', 1, 'en', 'Vel deserunt totam s', '2023-10-18 00:41:53', '2023-10-18 00:41:53'),
(151, 'site_texts', 'content', 36, 'en', 'products', '2023-10-18 08:16:57', '2023-10-18 08:16:57'),
(152, 'site_texts', 'content', 37, 'en', 'product_details', '2023-10-18 08:18:47', '2023-10-18 08:18:47'),
(153, 'menu_items', 'title', 43, 'en', 'Products', '2023-10-18 08:24:02', '2023-10-18 08:24:02'),
(154, 'site_texts', 'content', 38, 'en', 'how_it_work', '2023-10-18 19:57:49', '2023-10-18 19:57:49'),
(155, 'site_texts', 'content', 39, 'en', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.', '2023-10-19 00:13:03', '2023-10-19 00:13:03'),
(156, 'site_texts', 'content', 40, 'en', 'You can reliably reach <strong>the product or service</strong> you want <strong>from all                             over Turkey</strong> through us.', '2023-10-19 00:23:44', '2023-10-19 00:23:44'),
(157, 'site_texts', 'content', 41, 'en', 'How it works?', '2023-10-19 00:29:59', '2023-10-19 00:29:59'),
(158, 'site_texts', 'content', 42, 'en', 'Contact', '2023-10-19 00:30:11', '2023-10-19 00:30:11'),
(159, 'site_texts', 'content', 43, 'en', 'What we offer?', '2023-10-19 00:31:38', '2023-10-19 00:31:38'),
(160, 'site_texts', 'content', 44, 'en', 'Who Are We?', '2023-10-19 00:31:59', '2023-10-19 00:31:59'),
(161, 'site_texts', 'content', 45, 'en', 'Why Choose Turkey?', '2023-10-19 01:15:19', '2023-10-19 01:15:19'),
(162, 'site_texts', 'content', 40, 'fr', 'You can reliably reach <strong>the product or service</strong> you want <strong>from all                             over Turkey</strong> through us.', '2023-10-19 01:59:29', '2023-10-19 01:59:29'),
(163, 'site_texts', 'content', 40, 'de', 'You can reliably reach <strong>the product or service</strong> you want <strong>from all                             over Turkey</strong> through us.', '2023-10-19 01:59:29', '2023-10-19 01:59:29'),
(164, 'site_texts', 'content', 40, 'ar', 'You can reliably reach <strong>the product or service</strong> you want <strong>from all                             over Turkey</strong> through us.', '2023-10-19 01:59:29', '2023-10-19 01:59:29'),
(165, 'site_texts', 'content', 46, 'en', 'why_choose', '2023-10-19 05:08:45', '2023-10-19 05:08:45'),
(166, 'site_texts', 'content', 47, 'en', 'who_we_are', '2023-10-19 05:09:08', '2023-10-19 05:09:08'),
(167, 'site_texts', 'content', 48, 'en', 'What_we_offer', '2023-10-19 05:09:29', '2023-10-19 05:09:29'),
(168, 'site_texts', 'content', 49, 'en', 'WHY CHOOSE <span>TURKEY?</span>', '2023-10-19 05:23:38', '2023-10-19 05:23:38'),
(169, 'site_texts', 'content', 50, 'en', '<strong>Turkey</strong> is an attractive option for international buyers with competitive                         prices and high-quality products. Its strategic location and technological expertise are                         also appealing factors. Additionally, the strong agriculture sector is noteworthy.                         <br>                         <br>                         Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.                         <br>                         <br>                         Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         <br>                         <br>                         Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in                         vulputate. Morbi lectus felis, tincidunt sed dui sit amet, sagittis sagittis dui. Aenean                         vestibulum nisl in nisi dignissim, eu semper diam interdum.', '2023-10-19 05:28:04', '2023-10-19 05:28:04'),
(170, 'site_texts', 'content', 51, 'en', 'Advantages', '2023-10-19 05:29:30', '2023-10-19 05:29:30'),
(171, 'advantages', 'title', 1, 'en', 'In Sollicitudin Feugiat Enim Ut Ullamcorper', '2023-10-19 05:32:10', '2023-10-19 05:32:10'),
(172, 'advantages', 'content', 1, 'en', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', '2023-10-19 05:32:10', '2023-10-19 05:32:10'),
(173, 'advantages', 'title', 1, 'fr', 'In Sollicitudin Feugiat Enim Ut Ullamcorper', '2023-10-19 05:32:31', '2023-10-19 05:32:31'),
(174, 'advantages', 'title', 1, 'de', 'In Sollicitudin Feugiat Enim Ut Ullamcorper', '2023-10-19 05:32:31', '2023-10-19 05:32:31'),
(175, 'advantages', 'title', 1, 'ar', 'In Sollicitudin Feugiat Enim Ut Ullamcorper', '2023-10-19 05:32:31', '2023-10-19 05:32:31'),
(176, 'advantages', 'content', 1, 'fr', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', '2023-10-19 05:32:31', '2023-10-19 05:32:31'),
(177, 'advantages', 'content', 1, 'de', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', '2023-10-19 05:32:31', '2023-10-19 05:32:31'),
(178, 'advantages', 'content', 1, 'ar', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper mollis at id massa. Fusce eu', '2023-10-19 05:32:31', '2023-10-19 05:32:31'),
(179, 'site_texts', 'content', 52, 'en', 'WHO ARE <span>WE?</span>', '2023-10-19 05:38:18', '2023-10-19 05:38:18'),
(180, 'site_texts', 'content', 53, 'en', 'About Us', '2023-10-19 05:39:51', '2023-10-19 05:39:57'),
(181, 'site_texts', 'content', 53, 'fr', 'About_Us', '2023-10-19 05:39:57', '2023-10-19 05:39:57'),
(182, 'site_texts', 'content', 53, 'de', 'About_Us', '2023-10-19 05:39:57', '2023-10-19 05:39:57'),
(183, 'site_texts', 'content', 53, 'ar', 'About_Us', '2023-10-19 05:39:57', '2023-10-19 05:39:57'),
(184, 'site_texts', 'content', 54, 'en', '<strong>Turkey</strong> is an attractive option for international buyers with competitive                         prices and high-quality products. Its strategic location and technological expertise are                         also appealing factors. Additionally, the strong agriculture sector is noteworthy.                         <br>                         <br>                         Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.                         <br>                         <br>                         Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         <br>                         <br>                         Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in                         vulputate. Morbi lectus felis, tincidunt sed dui sit amet, sagittis sagittis dui. Aenean                         vestibulum nisl in nisi dignissim, eu semper diam interdum.', '2023-10-19 05:40:39', '2023-10-19 05:40:39'),
(185, 'data_rows', 'display_name', 28, 'en', 'Id', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(186, 'data_rows', 'display_name', 29, 'en', 'Email', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(187, 'data_rows', 'display_name', 30, 'en', 'Phone1', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(188, 'data_rows', 'display_name', 31, 'en', 'Phone2', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(189, 'data_rows', 'display_name', 32, 'en', 'Whatsapp', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(190, 'data_rows', 'display_name', 33, 'en', 'Address', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(191, 'data_rows', 'display_name', 34, 'en', 'Map', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(192, 'data_rows', 'display_name', 35, 'en', 'Facebook', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(193, 'data_rows', 'display_name', 36, 'en', 'Youtube', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(194, 'data_rows', 'display_name', 37, 'en', 'Twitter', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(195, 'data_rows', 'display_name', 38, 'en', 'Instagram', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(196, 'data_rows', 'display_name', 39, 'en', 'Site Logo Tr', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(197, 'data_rows', 'display_name', 40, 'en', 'Site Logo En', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(198, 'data_rows', 'display_name', 41, 'en', 'Linkedin', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(199, 'data_rows', 'display_name', 42, 'en', 'Created At', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(200, 'data_rows', 'display_name', 43, 'en', 'Updated At', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(201, 'data_types', 'display_name_singular', 6, 'en', 'Contact U', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(202, 'data_types', 'display_name_plural', 6, 'en', 'Contact Us', '2023-10-19 05:47:14', '2023-10-19 05:47:14'),
(203, 'data_rows', 'display_name', 28, 'fr', 'Id', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(204, 'data_rows', 'display_name', 28, 'de', 'Id', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(205, 'data_rows', 'display_name', 28, 'ar', 'Id', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(206, 'data_rows', 'display_name', 29, 'fr', 'Email', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(207, 'data_rows', 'display_name', 29, 'de', 'Email', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(208, 'data_rows', 'display_name', 29, 'ar', 'Email', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(209, 'data_rows', 'display_name', 30, 'fr', 'Phone1', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(210, 'data_rows', 'display_name', 30, 'de', 'Phone1', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(211, 'data_rows', 'display_name', 30, 'ar', 'Phone1', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(212, 'data_rows', 'display_name', 31, 'fr', 'Phone2', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(213, 'data_rows', 'display_name', 31, 'de', 'Phone2', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(214, 'data_rows', 'display_name', 31, 'ar', 'Phone2', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(215, 'data_rows', 'display_name', 32, 'fr', 'Whatsapp', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(216, 'data_rows', 'display_name', 32, 'de', 'Whatsapp', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(217, 'data_rows', 'display_name', 32, 'ar', 'Whatsapp', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(218, 'data_rows', 'display_name', 33, 'fr', 'Address', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(219, 'data_rows', 'display_name', 33, 'de', 'Address', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(220, 'data_rows', 'display_name', 33, 'ar', 'Address', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(221, 'data_rows', 'display_name', 34, 'fr', 'Map', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(222, 'data_rows', 'display_name', 34, 'de', 'Map', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(223, 'data_rows', 'display_name', 34, 'ar', 'Map', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(224, 'data_rows', 'display_name', 35, 'fr', 'Facebook', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(225, 'data_rows', 'display_name', 35, 'de', 'Facebook', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(226, 'data_rows', 'display_name', 35, 'ar', 'Facebook', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(227, 'data_rows', 'display_name', 36, 'fr', 'Youtube', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(228, 'data_rows', 'display_name', 36, 'de', 'Youtube', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(229, 'data_rows', 'display_name', 36, 'ar', 'Youtube', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(230, 'data_rows', 'display_name', 37, 'fr', 'Twitter', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(231, 'data_rows', 'display_name', 37, 'de', 'Twitter', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(232, 'data_rows', 'display_name', 37, 'ar', 'Twitter', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(233, 'data_rows', 'display_name', 38, 'fr', 'Instagram', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(234, 'data_rows', 'display_name', 38, 'de', 'Instagram', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(235, 'data_rows', 'display_name', 38, 'ar', 'Instagram', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(236, 'data_rows', 'display_name', 39, 'fr', 'Site Logo Tr', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(237, 'data_rows', 'display_name', 39, 'de', 'Site Logo Tr', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(238, 'data_rows', 'display_name', 39, 'ar', 'Site Logo Tr', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(239, 'data_rows', 'display_name', 40, 'fr', 'Site Logo En', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(240, 'data_rows', 'display_name', 40, 'de', 'Site Logo En', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(241, 'data_rows', 'display_name', 40, 'ar', 'Site Logo En', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(242, 'data_rows', 'display_name', 41, 'fr', 'Linkedin', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(243, 'data_rows', 'display_name', 41, 'de', 'Linkedin', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(244, 'data_rows', 'display_name', 41, 'ar', 'Linkedin', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(245, 'data_rows', 'display_name', 42, 'fr', 'Created At', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(246, 'data_rows', 'display_name', 42, 'de', 'Created At', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(247, 'data_rows', 'display_name', 42, 'ar', 'Created At', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(248, 'data_rows', 'display_name', 43, 'fr', 'Updated At', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(249, 'data_rows', 'display_name', 43, 'de', 'Updated At', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(250, 'data_rows', 'display_name', 43, 'ar', 'Updated At', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(251, 'data_rows', 'display_name', 328, 'en', 'AboutUs Video', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(252, 'data_types', 'display_name_singular', 6, 'fr', 'Contact U', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(253, 'data_types', 'display_name_singular', 6, 'de', 'Contact U', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(254, 'data_types', 'display_name_singular', 6, 'ar', 'Contact U', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(255, 'data_types', 'display_name_plural', 6, 'fr', 'Contact Us', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(256, 'data_types', 'display_name_plural', 6, 'de', 'Contact Us', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(257, 'data_types', 'display_name_plural', 6, 'ar', 'Contact Us', '2023-10-19 05:48:15', '2023-10-19 05:48:15'),
(258, 'contact_us', 'email', 1, 'fr', 'belisipos@mailinator.com', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(259, 'contact_us', 'email', 1, 'de', 'belisipos@mailinator.com', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(260, 'contact_us', 'email', 1, 'ar', 'belisipos@mailinator.com', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(261, 'contact_us', 'phone1', 1, 'fr', '+1 (203) 292-4061', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(262, 'contact_us', 'phone1', 1, 'de', '+1 (203) 292-4061', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(263, 'contact_us', 'phone1', 1, 'ar', '+1 (203) 292-4061', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(264, 'contact_us', 'phone2', 1, 'fr', '+1 (593) 826-4718', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(265, 'contact_us', 'phone2', 1, 'de', '+1 (593) 826-4718', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(266, 'contact_us', 'phone2', 1, 'ar', '+1 (593) 826-4718', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(267, 'contact_us', 'whatsapp', 1, 'fr', 'Ea iure aut voluptat', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(268, 'contact_us', 'whatsapp', 1, 'de', 'Ea iure aut voluptat', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(269, 'contact_us', 'whatsapp', 1, 'ar', 'Ea iure aut voluptat', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(270, 'contact_us', 'address', 1, 'fr', 'Dolores a qui occaec', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(271, 'contact_us', 'address', 1, 'de', 'Dolores a qui occaec', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(272, 'contact_us', 'address', 1, 'ar', 'Dolores a qui occaec', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(273, 'contact_us', 'map', 1, 'fr', 'Animi voluptates fa', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(274, 'contact_us', 'map', 1, 'de', 'Animi voluptates fa', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(275, 'contact_us', 'map', 1, 'ar', 'Animi voluptates fa', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(276, 'contact_us', 'facebook', 1, 'fr', 'Iure eligendi simili', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(277, 'contact_us', 'facebook', 1, 'de', 'Iure eligendi simili', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(278, 'contact_us', 'facebook', 1, 'ar', 'Iure eligendi simili', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(279, 'contact_us', 'youtube', 1, 'fr', 'Ex corrupti asperna', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(280, 'contact_us', 'youtube', 1, 'de', 'Ex corrupti asperna', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(281, 'contact_us', 'youtube', 1, 'ar', 'Ex corrupti asperna', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(282, 'contact_us', 'twitter', 1, 'fr', 'Fugiat aut adipisci', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(283, 'contact_us', 'twitter', 1, 'de', 'Fugiat aut adipisci', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(284, 'contact_us', 'twitter', 1, 'ar', 'Fugiat aut adipisci', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(285, 'contact_us', 'instagram', 1, 'fr', 'Reprehenderit eu in', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(286, 'contact_us', 'instagram', 1, 'de', 'Reprehenderit eu in', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(287, 'contact_us', 'instagram', 1, 'ar', 'Reprehenderit eu in', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(288, 'contact_us', 'linkedin', 1, 'fr', 'Vel deserunt totam s', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(289, 'contact_us', 'linkedin', 1, 'de', 'Vel deserunt totam s', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(290, 'contact_us', 'linkedin', 1, 'ar', 'Vel deserunt totam s', '2023-10-19 05:48:26', '2023-10-19 05:48:26'),
(291, 'data_rows', 'display_name', 328, 'fr', 'AboutUs Video', '2023-10-19 05:50:19', '2023-10-19 05:50:19'),
(292, 'data_rows', 'display_name', 328, 'de', 'AboutUs Video', '2023-10-19 05:50:19', '2023-10-19 05:50:19'),
(293, 'data_rows', 'display_name', 328, 'ar', 'AboutUs Video', '2023-10-19 05:50:19', '2023-10-19 05:50:19'),
(294, 'site_texts', 'content', 55, 'en', 'Our Mission', '2023-10-19 05:52:43', '2023-10-19 05:52:43'),
(295, 'site_texts', 'content', 56, 'en', 'Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor                         elementum, pulvinar justo ac, elementum lacus.', '2023-10-19 05:53:31', '2023-10-19 05:53:31'),
(296, 'site_texts', 'content', 57, 'en', 'Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor                         elementum, pulvinar justo ac, elementum lacus.', '2023-10-19 05:53:41', '2023-10-19 05:53:41'),
(297, 'site_texts', 'content', 58, 'en', 'Our Values', '2023-10-19 05:54:42', '2023-10-19 05:54:42'),
(298, 'site_texts', 'content', 59, 'en', 'Global Experience', '2023-10-19 05:56:03', '2023-10-19 05:56:03'),
(299, 'site_texts', 'content', 57, 'fr', 'Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor                         elementum, pulvinar justo ac, elementum lacus.', '2023-10-19 05:56:13', '2023-10-19 05:56:13'),
(300, 'site_texts', 'content', 57, 'de', 'Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor                         elementum, pulvinar justo ac, elementum lacus.', '2023-10-19 05:56:13', '2023-10-19 05:56:13'),
(301, 'site_texts', 'content', 57, 'ar', 'Aenean at lacinia est. Quisque eleifend mattis bibendum. In mattis turpis velit. Mauris at                         mattis ipsum. Nam sodales eu ante vel consectetur. Mauris purus lectus, finibus et leo vel,                         lacinia semper augue. Phasellus et tortor elementum, pulvinar justo ac, elementum lacus.                         Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor                         elementum, pulvinar justo ac, elementum lacus.', '2023-10-19 05:56:13', '2023-10-19 05:56:13'),
(302, 'site_texts', 'content', 60, 'en', 'Mauris purus lectus, finibus et leo vel, lacinia semper augue. Phasellus et tortor elementum,                     pulvinar justo ac, elementum lacus. Morbi lectus felis, tincidunt sed dui sit amet, sagittis                     sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam interdum.', '2023-10-19 05:57:06', '2023-10-19 05:57:06'),
(303, 'site_texts', 'content', 61, 'en', 'You can reliably reach <span>the product or service</span> you want <br> <em>from all over                         Turkey</em> through us.', '2023-10-19 06:00:49', '2023-10-19 06:00:49'),
(304, 'site_texts', 'content', 62, 'en', 'More info', '2023-10-19 06:01:29', '2023-10-19 06:01:29'),
(305, 'site_texts', 'content', 63, 'en', '<span>OUR</span> FOUNDERS', '2023-10-19 06:02:39', '2023-10-19 06:02:39'),
(306, 'site_texts', 'content', 65, 'en', 'Tags', '2023-10-19 06:32:20', '2023-10-19 06:32:20'),
(307, 'site_texts', 'content', 66, 'en', 'What We <span>Offer?</span>', '2023-10-19 06:39:43', '2023-10-19 06:39:43'),
(308, 'site_texts', 'content', 67, 'en', '<strong>Turkey</strong> is an attractive option for international buyers with competitive                         prices and high-quality products. Its strategic location and technological expertise are                         also appealing factors. Additionally, the strong agriculture sector is noteworthy.                         <br>                         <br>                         Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia                         orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur.                         Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur                         elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec                         eu sem elit. Etiam commodo ut ante in vulputate. Morbi lectus felis, tincidunt sed dui sit                         amet, sagittis sagittis dui. Aenean vestibulum nisl in nisi dignissim, eu semper diam                         interdum.', '2023-10-19 06:40:15', '2023-10-19 06:40:15'),
(309, 'our_offers', 'title', 2, 'en', 'Quality Handicrafts                                                         and Products', '2023-10-19 06:44:54', '2023-10-19 06:44:54'),
(310, 'our_offers', 'content', 2, 'en', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', '2023-10-19 06:44:54', '2023-10-19 06:44:54'),
(311, 'our_offers', 'title', 1, 'en', 'Competitive Prices', '2023-10-19 06:44:59', '2023-10-19 06:44:59'),
(312, 'our_offers', 'content', 1, 'en', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', '2023-10-19 06:44:59', '2023-10-19 06:44:59'),
(313, 'our_offers', 'title', 2, 'fr', 'Quality Handicrafts                                                         and Products', '2023-10-19 06:47:41', '2023-10-19 06:47:41'),
(314, 'our_offers', 'title', 2, 'de', 'Quality Handicrafts                                                         and Products', '2023-10-19 06:47:41', '2023-10-19 06:47:41'),
(315, 'our_offers', 'title', 2, 'ar', 'Quality Handicrafts                                                         and Products', '2023-10-19 06:47:41', '2023-10-19 06:47:41'),
(316, 'our_offers', 'content', 2, 'fr', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', '2023-10-19 06:47:41', '2023-10-19 06:47:41'),
(317, 'our_offers', 'content', 2, 'de', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', '2023-10-19 06:47:41', '2023-10-19 06:47:41'),
(318, 'our_offers', 'content', 2, 'ar', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', '2023-10-19 06:47:41', '2023-10-19 06:47:41'),
(319, 'our_offers', 'title', 1, 'fr', 'Competitive Prices', '2023-10-19 06:48:09', '2023-10-19 06:48:09'),
(320, 'our_offers', 'title', 1, 'de', 'Competitive Prices', '2023-10-19 06:48:09', '2023-10-19 06:48:09'),
(321, 'our_offers', 'title', 1, 'ar', 'Competitive Prices', '2023-10-19 06:48:09', '2023-10-19 06:48:09'),
(322, 'our_offers', 'content', 1, 'fr', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', '2023-10-19 06:48:09', '2023-10-19 06:48:09'),
(323, 'our_offers', 'content', 1, 'de', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', '2023-10-19 06:48:09', '2023-10-19 06:48:09'),
(324, 'our_offers', 'content', 1, 'ar', 'Aenean sollicitudin arcu lorem, vel posuere augue finibus in. Phasellus tristique lacinia orci, vitae elementum metus condimentum vel. Morbi accumsan quis purus vel consectetur. Proin id dapibus erat. Nam quam sem, mollis in lectus ac, aliquam dapibus metus. Curabitur elementum mi id purus vehicula congue. Suspendisse vel arcu non mi laoreet tincidunt. Donec eu sem elit. Etiam commodo ut ante in vulp', '2023-10-19 06:48:09', '2023-10-19 06:48:09'),
(325, 'site_texts', 'content', 68, 'en', 'product and services', '2023-10-19 07:18:36', '2023-10-19 07:18:36'),
(326, 'site_texts', 'content', 69, 'en', 'Applıcatıon <span>for sell</span>', '2023-10-19 08:15:58', '2023-10-19 08:15:58'),
(327, 'site_texts', 'content', 70, 'en', 'Send us your questions and we\'ll answer them. All the answers you are looking for are here', '2023-10-19 08:16:30', '2023-10-19 08:16:30'),
(328, 'site_texts', 'content', 71, 'en', 'application', '2023-10-19 08:56:22', '2023-10-19 08:56:22'),
(329, 'site_texts', 'content', 72, 'en', 'get_an_offer', '2023-10-23 07:05:39', '2023-10-23 07:05:39'),
(330, 'site_texts', 'content', 73, 'en', 'What Would You Like To Get <br> From Türkiye ?', '2023-10-24 05:49:54', '2023-10-24 05:49:54'),
(331, 'site_texts', 'content', 74, 'en', 'What Would You Like To Get <br> From Türkiye ?', '2023-10-24 05:50:46', '2023-10-24 05:50:46'),
(332, 'data_rows', 'display_name', 218, 'fr', 'Id', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(333, 'data_rows', 'display_name', 218, 'de', 'Id', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(334, 'data_rows', 'display_name', 218, 'ar', 'Id', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(335, 'data_rows', 'display_name', 219, 'fr', 'Author Id', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(336, 'data_rows', 'display_name', 219, 'de', 'Author Id', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(337, 'data_rows', 'display_name', 219, 'ar', 'Author Id', '2023-10-24 08:55:06', '2023-10-24 08:55:06');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(338, 'data_rows', 'display_name', 220, 'fr', 'Blog Category Id', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(339, 'data_rows', 'display_name', 220, 'de', 'Blog Category Id', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(340, 'data_rows', 'display_name', 220, 'ar', 'Blog Category Id', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(341, 'data_rows', 'display_name', 221, 'fr', 'Title', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(342, 'data_rows', 'display_name', 221, 'de', 'Title', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(343, 'data_rows', 'display_name', 221, 'ar', 'Title', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(344, 'data_rows', 'display_name', 222, 'fr', 'Slug', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(345, 'data_rows', 'display_name', 222, 'de', 'Slug', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(346, 'data_rows', 'display_name', 222, 'ar', 'Slug', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(347, 'data_rows', 'display_name', 223, 'fr', 'Brief', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(348, 'data_rows', 'display_name', 223, 'de', 'Brief', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(349, 'data_rows', 'display_name', 223, 'ar', 'Brief', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(350, 'data_rows', 'display_name', 224, 'fr', 'Date', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(351, 'data_rows', 'display_name', 224, 'de', 'Date', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(352, 'data_rows', 'display_name', 224, 'ar', 'Date', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(353, 'data_rows', 'display_name', 225, 'fr', 'Thumbnail Image', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(354, 'data_rows', 'display_name', 225, 'de', 'Thumbnail Image', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(355, 'data_rows', 'display_name', 225, 'ar', 'Thumbnail Image', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(356, 'data_rows', 'display_name', 226, 'fr', 'Cover Image', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(357, 'data_rows', 'display_name', 226, 'de', 'Cover Image', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(358, 'data_rows', 'display_name', 226, 'ar', 'Cover Image', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(359, 'data_rows', 'display_name', 227, 'fr', 'Content', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(360, 'data_rows', 'display_name', 227, 'de', 'Content', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(361, 'data_rows', 'display_name', 227, 'ar', 'Content', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(362, 'data_rows', 'display_name', 228, 'fr', 'Is Featured', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(363, 'data_rows', 'display_name', 228, 'de', 'Is Featured', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(364, 'data_rows', 'display_name', 228, 'ar', 'Is Featured', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(365, 'data_rows', 'display_name', 229, 'fr', 'Meta Title', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(366, 'data_rows', 'display_name', 229, 'de', 'Meta Title', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(367, 'data_rows', 'display_name', 229, 'ar', 'Meta Title', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(368, 'data_rows', 'display_name', 230, 'fr', 'Meta Description', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(369, 'data_rows', 'display_name', 230, 'de', 'Meta Description', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(370, 'data_rows', 'display_name', 230, 'ar', 'Meta Description', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(371, 'data_rows', 'display_name', 231, 'fr', 'Meta Keyword', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(372, 'data_rows', 'display_name', 231, 'de', 'Meta Keyword', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(373, 'data_rows', 'display_name', 231, 'ar', 'Meta Keyword', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(374, 'data_rows', 'display_name', 232, 'fr', 'Meta Canonical', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(375, 'data_rows', 'display_name', 232, 'de', 'Meta Canonical', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(376, 'data_rows', 'display_name', 232, 'ar', 'Meta Canonical', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(377, 'data_rows', 'display_name', 233, 'fr', 'Meta Ogimage', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(378, 'data_rows', 'display_name', 233, 'de', 'Meta Ogimage', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(379, 'data_rows', 'display_name', 233, 'ar', 'Meta Ogimage', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(380, 'data_rows', 'display_name', 234, 'fr', 'Created At', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(381, 'data_rows', 'display_name', 234, 'de', 'Created At', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(382, 'data_rows', 'display_name', 234, 'ar', 'Created At', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(383, 'data_rows', 'display_name', 235, 'fr', 'Updated At', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(384, 'data_rows', 'display_name', 235, 'de', 'Updated At', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(385, 'data_rows', 'display_name', 235, 'ar', 'Updated At', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(386, 'data_rows', 'display_name', 243, 'fr', 'authors', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(387, 'data_rows', 'display_name', 243, 'de', 'authors', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(388, 'data_rows', 'display_name', 243, 'ar', 'authors', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(389, 'data_rows', 'display_name', 244, 'fr', 'blog_categories', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(390, 'data_rows', 'display_name', 244, 'de', 'blog_categories', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(391, 'data_rows', 'display_name', 244, 'ar', 'blog_categories', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(392, 'data_rows', 'display_name', 245, 'fr', 'blog_tags', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(393, 'data_rows', 'display_name', 245, 'de', 'blog_tags', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(394, 'data_rows', 'display_name', 245, 'ar', 'blog_tags', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(395, 'data_types', 'display_name_singular', 28, 'fr', 'Blog', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(396, 'data_types', 'display_name_singular', 28, 'de', 'Blog', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(397, 'data_types', 'display_name_singular', 28, 'ar', 'Blog', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(398, 'data_types', 'display_name_plural', 28, 'fr', 'Blogs', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(399, 'data_types', 'display_name_plural', 28, 'de', 'Blogs', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(400, 'data_types', 'display_name_plural', 28, 'ar', 'Blogs', '2023-10-24 08:55:06', '2023-10-24 08:55:06'),
(401, 'blogs', 'title', 8, 'en', 'Why Do People Travel to Other Countries for                                                                 Medical Services?', '2023-10-24 08:57:06', '2023-10-24 08:57:06'),
(402, 'blogs', 'slug', 8, 'en', 'Why_Do', '2023-10-24 08:57:06', '2023-10-24 08:57:06'),
(403, 'blogs', 'brief', 8, 'en', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-24 08:57:06', '2023-10-24 08:57:06'),
(404, 'blogs', 'content', 8, 'en', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-24 08:57:06', '2023-10-24 08:57:06'),
(405, 'blogs', 'meta_title', 8, 'en', 'Tempore doloremque ', '2023-10-24 08:57:06', '2023-10-24 08:57:06'),
(406, 'blogs', 'meta_description', 8, 'en', 'Eum laborum Eligend', '2023-10-24 08:57:06', '2023-10-24 08:57:06'),
(407, 'blogs', 'meta_keyword', 8, 'en', 'Voluptatibus anim be', '2023-10-24 08:57:06', '2023-10-24 08:57:06'),
(408, 'blogs', 'meta_canonical', 8, 'en', 'Fugiat delectus fug', '2023-10-24 08:57:06', '2023-10-24 08:57:06'),
(409, 'blogs', 'meta_ogimage', 8, 'en', 'Quo earum magnam ea ', '2023-10-24 08:57:06', '2023-10-24 08:57:06'),
(410, 'blogs', 'title', 8, 'fr', 'Why Do People Travel to Other Countries for                                                                 Medical Services?', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(411, 'blogs', 'title', 8, 'de', 'Why Do People Travel to Other Countries for                                                                 Medical Services?', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(412, 'blogs', 'title', 8, 'ar', 'Why Do People Travel to Other Countries for                                                                 Medical Services?', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(413, 'blogs', 'slug', 8, 'fr', 'Why_Do', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(414, 'blogs', 'slug', 8, 'de', 'Why_Do', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(415, 'blogs', 'slug', 8, 'ar', 'Why_Do', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(416, 'blogs', 'brief', 8, 'fr', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(417, 'blogs', 'brief', 8, 'de', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(418, 'blogs', 'brief', 8, 'ar', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(419, 'blogs', 'content', 8, 'fr', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(420, 'blogs', 'content', 8, 'de', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(421, 'blogs', 'content', 8, 'ar', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(422, 'blogs', 'meta_title', 8, 'fr', 'Tempore doloremque ', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(423, 'blogs', 'meta_title', 8, 'de', 'Tempore doloremque ', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(424, 'blogs', 'meta_title', 8, 'ar', 'Tempore doloremque ', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(425, 'blogs', 'meta_description', 8, 'fr', 'Eum laborum Eligend', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(426, 'blogs', 'meta_description', 8, 'de', 'Eum laborum Eligend', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(427, 'blogs', 'meta_description', 8, 'ar', 'Eum laborum Eligend', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(428, 'blogs', 'meta_keyword', 8, 'fr', 'Voluptatibus anim be', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(429, 'blogs', 'meta_keyword', 8, 'de', 'Voluptatibus anim be', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(430, 'blogs', 'meta_keyword', 8, 'ar', 'Voluptatibus anim be', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(431, 'blogs', 'meta_canonical', 8, 'fr', 'Fugiat delectus fug', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(432, 'blogs', 'meta_canonical', 8, 'de', 'Fugiat delectus fug', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(433, 'blogs', 'meta_canonical', 8, 'ar', 'Fugiat delectus fug', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(434, 'blogs', 'meta_ogimage', 8, 'fr', 'Quo earum magnam ea ', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(435, 'blogs', 'meta_ogimage', 8, 'de', 'Quo earum magnam ea ', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(436, 'blogs', 'meta_ogimage', 8, 'ar', 'Quo earum magnam ea ', '2023-10-24 08:57:13', '2023-10-24 08:57:13'),
(437, 'blogs', 'title', 1, 'en', 'Blog1', '2023-10-24 09:03:28', '2023-10-24 09:03:28'),
(438, 'blogs', 'slug', 1, 'en', 'Why_Do', '2023-10-24 09:03:28', '2023-10-24 09:03:28'),
(439, 'blogs', 'brief', 1, 'en', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-24 09:03:28', '2023-10-24 09:03:28'),
(440, 'blogs', 'content', 1, 'en', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-24 09:03:28', '2023-10-24 09:03:28'),
(441, 'blogs', 'meta_title', 1, 'en', 'Tempore doloremque ', '2023-10-24 09:03:28', '2023-10-24 09:03:28'),
(442, 'blogs', 'meta_description', 1, 'en', 'Eum laborum Eligend', '2023-10-24 09:03:28', '2023-10-24 09:03:28'),
(443, 'blogs', 'meta_keyword', 1, 'en', 'Voluptatibus anim be', '2023-10-24 09:03:28', '2023-10-24 09:03:28'),
(444, 'blogs', 'meta_canonical', 1, 'en', 'Fugiat delectus fug', '2023-10-24 09:03:28', '2023-10-24 09:03:28'),
(445, 'blogs', 'meta_ogimage', 1, 'en', 'Quo earum magnam ea ', '2023-10-24 09:03:28', '2023-10-24 09:03:28'),
(446, 'blogs', 'title', 4, 'en', 'Blog3', '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(447, 'blogs', 'slug', 4, 'en', 'Why_Do', '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(448, 'blogs', 'brief', 4, 'en', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(449, 'blogs', 'content', 4, 'en', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(450, 'blogs', 'meta_title', 4, 'en', 'Tempore doloremque ', '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(451, 'blogs', 'meta_description', 4, 'en', 'Eum laborum Eligend', '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(452, 'blogs', 'meta_keyword', 4, 'en', 'Voluptatibus anim be', '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(453, 'blogs', 'meta_canonical', 4, 'en', 'Fugiat delectus fug', '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(454, 'blogs', 'meta_ogimage', 4, 'en', 'Quo earum magnam ea ', '2023-10-24 09:03:38', '2023-10-24 09:03:38'),
(455, 'blogs', 'title', 1, 'fr', 'Blog1', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(456, 'blogs', 'title', 1, 'de', 'Blog1', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(457, 'blogs', 'title', 1, 'ar', 'Blog1', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(458, 'blogs', 'slug', 1, 'fr', 'Why_Do', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(459, 'blogs', 'slug', 1, 'de', 'Why_Do', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(460, 'blogs', 'slug', 1, 'ar', 'Why_Do', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(461, 'blogs', 'brief', 1, 'fr', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(462, 'blogs', 'brief', 1, 'de', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(463, 'blogs', 'brief', 1, 'ar', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(464, 'blogs', 'content', 1, 'fr', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(465, 'blogs', 'content', 1, 'de', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(466, 'blogs', 'content', 1, 'ar', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(467, 'blogs', 'meta_title', 1, 'fr', 'Tempore doloremque ', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(468, 'blogs', 'meta_title', 1, 'de', 'Tempore doloremque ', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(469, 'blogs', 'meta_title', 1, 'ar', 'Tempore doloremque ', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(470, 'blogs', 'meta_description', 1, 'fr', 'Eum laborum Eligend', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(471, 'blogs', 'meta_description', 1, 'de', 'Eum laborum Eligend', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(472, 'blogs', 'meta_description', 1, 'ar', 'Eum laborum Eligend', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(473, 'blogs', 'meta_keyword', 1, 'fr', 'Voluptatibus anim be', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(474, 'blogs', 'meta_keyword', 1, 'de', 'Voluptatibus anim be', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(475, 'blogs', 'meta_keyword', 1, 'ar', 'Voluptatibus anim be', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(476, 'blogs', 'meta_canonical', 1, 'fr', 'Fugiat delectus fug', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(477, 'blogs', 'meta_canonical', 1, 'de', 'Fugiat delectus fug', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(478, 'blogs', 'meta_canonical', 1, 'ar', 'Fugiat delectus fug', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(479, 'blogs', 'meta_ogimage', 1, 'fr', 'Quo earum magnam ea ', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(480, 'blogs', 'meta_ogimage', 1, 'de', 'Quo earum magnam ea ', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(481, 'blogs', 'meta_ogimage', 1, 'ar', 'Quo earum magnam ea ', '2023-10-24 09:04:13', '2023-10-24 09:04:13'),
(482, 'site_texts', 'content', 75, 'en', 'bulten', '2023-10-24 09:57:02', '2023-10-24 09:57:02'),
(483, 'data_rows', 'display_name', 201, 'fr', 'Id', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(484, 'data_rows', 'display_name', 201, 'de', 'Id', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(485, 'data_rows', 'display_name', 201, 'ar', 'Id', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(486, 'data_rows', 'display_name', 202, 'fr', 'Title', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(487, 'data_rows', 'display_name', 202, 'de', 'Title', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(488, 'data_rows', 'display_name', 202, 'ar', 'Title', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(489, 'data_rows', 'display_name', 203, 'fr', 'Slug', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(490, 'data_rows', 'display_name', 203, 'de', 'Slug', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(491, 'data_rows', 'display_name', 203, 'ar', 'Slug', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(492, 'data_rows', 'display_name', 204, 'fr', 'Color', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(493, 'data_rows', 'display_name', 204, 'de', 'Color', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(494, 'data_rows', 'display_name', 204, 'ar', 'Color', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(495, 'data_rows', 'display_name', 205, 'fr', 'Created At', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(496, 'data_rows', 'display_name', 205, 'de', 'Created At', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(497, 'data_rows', 'display_name', 205, 'ar', 'Created At', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(498, 'data_rows', 'display_name', 206, 'fr', 'Updated At', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(499, 'data_rows', 'display_name', 206, 'de', 'Updated At', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(500, 'data_rows', 'display_name', 206, 'ar', 'Updated At', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(501, 'data_rows', 'display_name', 357, 'en', 'blogs', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(502, 'data_types', 'display_name_singular', 24, 'fr', 'Blog Category', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(503, 'data_types', 'display_name_singular', 24, 'de', 'Blog Category', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(504, 'data_types', 'display_name_singular', 24, 'ar', 'Blog Category', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(505, 'data_types', 'display_name_plural', 24, 'fr', 'Blog Categories', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(506, 'data_types', 'display_name_plural', 24, 'de', 'Blog Categories', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(507, 'data_types', 'display_name_plural', 24, 'ar', 'Blog Categories', '2023-10-24 20:06:43', '2023-10-24 20:06:43'),
(508, 'site_texts', 'content', 76, 'en', 'billing_details', '2023-10-25 01:43:41', '2023-10-25 01:43:41'),
(509, 'site_texts', 'content', 77, 'en', 'myOffers', '2023-10-25 01:50:03', '2023-10-25 01:50:03'),
(510, 'site_texts', 'content', 78, 'en', 'MyApplications', '2023-10-25 01:51:01', '2023-10-25 01:51:01'),
(511, 'product_tags', 'title', 1, 'en', 'House', '2023-10-25 03:53:17', '2023-10-25 03:53:17'),
(512, 'product_tags', 'slug', 1, 'en', 'house', '2023-10-25 03:53:18', '2023-10-25 03:53:18'),
(513, 'product_tags', 'title', 2, 'en', 'Flat', '2023-10-25 03:53:44', '2023-10-25 03:53:44'),
(514, 'product_tags', 'slug', 2, 'en', 'flat', '2023-10-25 03:53:45', '2023-10-25 03:53:45'),
(515, 'product_categories', 'title', 1, 'en', 'Real Estate', '2023-10-25 03:54:20', '2023-10-25 03:54:20'),
(516, 'product_categories', 'slug', 1, 'en', 'real_estate', '2023-10-25 03:54:20', '2023-10-25 03:54:20'),
(517, 'product_sectors', 'title', 1, 'en', 'Secotr1', '2023-10-25 03:55:16', '2023-10-25 03:55:16'),
(518, 'product_sectors', 'slug', 1, 'en', 'secotr1', '2023-10-25 03:55:16', '2023-10-25 03:55:16'),
(519, 'data_rows', 'display_name', 305, 'en', 'Id', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(520, 'data_rows', 'display_name', 306, 'en', 'Product Category Id', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(521, 'data_rows', 'display_name', 307, 'en', 'Product Sector Id', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(522, 'data_rows', 'display_name', 308, 'en', 'Title', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(523, 'data_rows', 'display_name', 309, 'en', 'Thumbnail Image', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(524, 'data_rows', 'display_name', 310, 'en', 'Images', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(525, 'data_rows', 'display_name', 311, 'en', 'Phone', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(526, 'data_rows', 'display_name', 312, 'en', 'Brief', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(527, 'data_rows', 'display_name', 313, 'en', 'Content', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(528, 'data_rows', 'display_name', 314, 'en', 'Meta Title', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(529, 'data_rows', 'display_name', 315, 'en', 'Meta Description', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(530, 'data_rows', 'display_name', 316, 'en', 'Meta Keyword', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(531, 'data_rows', 'display_name', 317, 'en', 'Meta Canonical', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(532, 'data_rows', 'display_name', 318, 'en', 'Meta Ogimage', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(533, 'data_rows', 'display_name', 319, 'en', 'Created At', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(534, 'data_rows', 'display_name', 320, 'en', 'Updated At', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(535, 'data_types', 'display_name_singular', 37, 'en', 'Product', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(536, 'data_types', 'display_name_plural', 37, 'en', 'Products', '2023-10-25 05:05:51', '2023-10-25 05:05:51'),
(537, 'data_rows', 'display_name', 305, 'fr', 'Id', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(538, 'data_rows', 'display_name', 305, 'de', 'Id', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(539, 'data_rows', 'display_name', 305, 'ar', 'Id', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(540, 'data_rows', 'display_name', 306, 'fr', 'Product Category Id', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(541, 'data_rows', 'display_name', 306, 'de', 'Product Category Id', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(542, 'data_rows', 'display_name', 306, 'ar', 'Product Category Id', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(543, 'data_rows', 'display_name', 307, 'fr', 'Product Sector Id', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(544, 'data_rows', 'display_name', 307, 'de', 'Product Sector Id', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(545, 'data_rows', 'display_name', 307, 'ar', 'Product Sector Id', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(546, 'data_rows', 'display_name', 308, 'fr', 'Title', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(547, 'data_rows', 'display_name', 308, 'de', 'Title', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(548, 'data_rows', 'display_name', 308, 'ar', 'Title', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(549, 'data_rows', 'display_name', 358, 'en', 'Slug', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(550, 'data_rows', 'display_name', 309, 'fr', 'Thumbnail Image', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(551, 'data_rows', 'display_name', 309, 'de', 'Thumbnail Image', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(552, 'data_rows', 'display_name', 309, 'ar', 'Thumbnail Image', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(553, 'data_rows', 'display_name', 310, 'fr', 'Images', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(554, 'data_rows', 'display_name', 310, 'de', 'Images', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(555, 'data_rows', 'display_name', 310, 'ar', 'Images', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(556, 'data_rows', 'display_name', 311, 'fr', 'Phone', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(557, 'data_rows', 'display_name', 311, 'de', 'Phone', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(558, 'data_rows', 'display_name', 311, 'ar', 'Phone', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(559, 'data_rows', 'display_name', 312, 'fr', 'Brief', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(560, 'data_rows', 'display_name', 312, 'de', 'Brief', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(561, 'data_rows', 'display_name', 312, 'ar', 'Brief', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(562, 'data_rows', 'display_name', 313, 'fr', 'Content', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(563, 'data_rows', 'display_name', 313, 'de', 'Content', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(564, 'data_rows', 'display_name', 313, 'ar', 'Content', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(565, 'data_rows', 'display_name', 314, 'fr', 'Meta Title', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(566, 'data_rows', 'display_name', 314, 'de', 'Meta Title', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(567, 'data_rows', 'display_name', 314, 'ar', 'Meta Title', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(568, 'data_rows', 'display_name', 315, 'fr', 'Meta Description', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(569, 'data_rows', 'display_name', 315, 'de', 'Meta Description', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(570, 'data_rows', 'display_name', 315, 'ar', 'Meta Description', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(571, 'data_rows', 'display_name', 316, 'fr', 'Meta Keyword', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(572, 'data_rows', 'display_name', 316, 'de', 'Meta Keyword', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(573, 'data_rows', 'display_name', 316, 'ar', 'Meta Keyword', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(574, 'data_rows', 'display_name', 317, 'fr', 'Meta Canonical', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(575, 'data_rows', 'display_name', 317, 'de', 'Meta Canonical', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(576, 'data_rows', 'display_name', 317, 'ar', 'Meta Canonical', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(577, 'data_rows', 'display_name', 318, 'fr', 'Meta Ogimage', '2023-10-25 05:19:23', '2023-10-25 05:19:23');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(578, 'data_rows', 'display_name', 318, 'de', 'Meta Ogimage', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(579, 'data_rows', 'display_name', 318, 'ar', 'Meta Ogimage', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(580, 'data_rows', 'display_name', 319, 'fr', 'Created At', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(581, 'data_rows', 'display_name', 319, 'de', 'Created At', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(582, 'data_rows', 'display_name', 319, 'ar', 'Created At', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(583, 'data_rows', 'display_name', 320, 'fr', 'Updated At', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(584, 'data_rows', 'display_name', 320, 'de', 'Updated At', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(585, 'data_rows', 'display_name', 320, 'ar', 'Updated At', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(586, 'data_types', 'display_name_singular', 37, 'fr', 'Product', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(587, 'data_types', 'display_name_singular', 37, 'de', 'Product', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(588, 'data_types', 'display_name_singular', 37, 'ar', 'Product', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(589, 'data_types', 'display_name_plural', 37, 'fr', 'Products', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(590, 'data_types', 'display_name_plural', 37, 'de', 'Products', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(591, 'data_types', 'display_name_plural', 37, 'ar', 'Products', '2023-10-25 05:19:23', '2023-10-25 05:19:23'),
(592, 'data_rows', 'display_name', 358, 'fr', 'Slug', '2023-10-25 05:22:05', '2023-10-25 05:22:05'),
(593, 'data_rows', 'display_name', 358, 'de', 'Slug', '2023-10-25 05:22:05', '2023-10-25 05:22:05'),
(594, 'data_rows', 'display_name', 358, 'ar', 'Slug', '2023-10-25 05:22:05', '2023-10-25 05:22:05'),
(595, 'data_rows', 'display_name', 359, 'en', 'product_categories', '2023-10-25 05:23:32', '2023-10-25 05:23:32'),
(596, 'data_rows', 'display_name', 359, 'fr', 'product_categories', '2023-10-25 05:25:36', '2023-10-25 05:25:36'),
(597, 'data_rows', 'display_name', 359, 'de', 'product_categories', '2023-10-25 05:25:37', '2023-10-25 05:25:37'),
(598, 'data_rows', 'display_name', 359, 'ar', 'product_categories', '2023-10-25 05:25:37', '2023-10-25 05:25:37'),
(599, 'data_rows', 'display_name', 360, 'en', 'product_sectors', '2023-10-25 05:25:37', '2023-10-25 05:25:37'),
(600, 'data_rows', 'display_name', 360, 'fr', 'product_sectors', '2023-10-25 05:26:33', '2023-10-25 05:26:33'),
(601, 'data_rows', 'display_name', 360, 'de', 'product_sectors', '2023-10-25 05:26:33', '2023-10-25 05:26:33'),
(602, 'data_rows', 'display_name', 360, 'ar', 'product_sectors', '2023-10-25 05:26:33', '2023-10-25 05:26:33'),
(603, 'data_rows', 'display_name', 361, 'en', 'product_tags', '2023-10-25 05:26:33', '2023-10-25 05:26:33'),
(604, 'products', 'title', 2, 'en', 'Quaerat eius possimu', '2023-10-25 05:36:41', '2023-10-25 05:36:41'),
(605, 'products', 'slug', 2, 'en', 'Debitis soluta deser', '2023-10-25 05:36:41', '2023-10-25 05:36:41'),
(606, 'products', 'brief', 2, 'en', 'Soluta excepteur mai', '2023-10-25 05:36:41', '2023-10-25 05:36:41'),
(607, 'products', 'content', 2, 'en', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 05:36:41', '2023-10-25 05:36:41'),
(608, 'data_rows', 'display_name', 361, 'fr', 'product_tags', '2023-10-25 05:37:04', '2023-10-25 05:37:04'),
(609, 'data_rows', 'display_name', 361, 'de', 'product_tags', '2023-10-25 05:37:04', '2023-10-25 05:37:04'),
(610, 'data_rows', 'display_name', 361, 'ar', 'product_tags', '2023-10-25 05:37:04', '2023-10-25 05:37:04'),
(611, 'products', 'title', 2, 'fr', 'Quaerat eius possimu', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(612, 'products', 'title', 2, 'de', 'Quaerat eius possimu', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(613, 'products', 'title', 2, 'ar', 'Quaerat eius possimu', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(614, 'products', 'slug', 2, 'fr', 'Debitis soluta deser', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(615, 'products', 'slug', 2, 'de', 'Debitis soluta deser', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(616, 'products', 'slug', 2, 'ar', 'Debitis soluta deser', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(617, 'products', 'brief', 2, 'fr', 'Soluta excepteur mai', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(618, 'products', 'brief', 2, 'de', 'Soluta excepteur mai', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(619, 'products', 'brief', 2, 'ar', 'Soluta excepteur mai', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(620, 'products', 'content', 2, 'fr', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(621, 'products', 'content', 2, 'de', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(622, 'products', 'content', 2, 'ar', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 05:37:44', '2023-10-25 05:37:44'),
(623, 'product_categories', 'title', 2, 'en', 'Offer', '2023-10-25 05:50:01', '2023-10-25 05:50:01'),
(624, 'product_categories', 'slug', 2, 'en', 'offer', '2023-10-25 05:50:01', '2023-10-25 05:50:01'),
(625, 'products', 'title', 3, 'en', 'offfe products', '2023-10-25 05:50:30', '2023-10-25 05:51:15'),
(626, 'products', 'slug', 3, 'en', 'Debitis soluta deser', '2023-10-25 05:50:30', '2023-10-25 05:50:30'),
(627, 'products', 'brief', 3, 'en', 'Soluta excepteur mai', '2023-10-25 05:50:30', '2023-10-25 05:50:30'),
(628, 'products', 'content', 3, 'en', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 05:50:30', '2023-10-25 05:50:30'),
(629, 'products', 'title', 3, 'fr', 'Quaerat eius possimu', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(630, 'products', 'title', 3, 'de', 'Quaerat eius possimu', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(631, 'products', 'title', 3, 'ar', 'Quaerat eius possimu', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(632, 'products', 'slug', 3, 'fr', 'Debitis soluta deser', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(633, 'products', 'slug', 3, 'de', 'Debitis soluta deser', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(634, 'products', 'slug', 3, 'ar', 'Debitis soluta deser', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(635, 'products', 'brief', 3, 'fr', 'Soluta excepteur mai', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(636, 'products', 'brief', 3, 'de', 'Soluta excepteur mai', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(637, 'products', 'brief', 3, 'ar', 'Soluta excepteur mai', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(638, 'products', 'content', 3, 'fr', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(639, 'products', 'content', 3, 'de', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(640, 'products', 'content', 3, 'ar', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 05:51:16', '2023-10-25 05:51:16'),
(641, 'site_texts', 'content', 79, 'en', 'results are listed according to the information you selected.', '2023-10-25 07:05:31', '2023-10-25 07:05:31'),
(642, 'site_texts', 'content', 80, 'en', 'Buy it From Turkiye', '2023-10-25 07:22:00', '2023-10-25 07:22:00'),
(643, 'site_texts', 'content', 81, 'en', 'Products                                 <br>                                 AND                                 <br>                                 SERVICES', '2023-10-25 07:26:21', '2023-10-25 07:26:21'),
(644, 'site_texts', 'content', 82, 'en', 'Search Results', '2023-10-25 07:27:12', '2023-10-25 07:27:12'),
(645, 'site_texts', 'content', 83, 'en', 'Minimizing Map', '2023-10-25 08:07:10', '2023-10-25 08:07:10'),
(646, 'product_sectors', 'title', 2, 'en', 'Sector2', '2023-10-25 08:19:51', '2023-10-25 08:19:51'),
(647, 'product_sectors', 'slug', 2, 'en', 'sector2', '2023-10-25 08:19:51', '2023-10-25 08:19:51'),
(648, 'product_tags', 'title', 3, 'en', 'Appartment', '2023-10-25 08:23:48', '2023-10-25 08:23:48'),
(649, 'product_tags', 'slug', 3, 'en', 'appartment', '2023-10-25 08:23:48', '2023-10-25 08:23:48'),
(650, 'products', 'title', 4, 'en', 'Sec2', '2023-10-25 08:27:09', '2023-10-25 08:27:25'),
(651, 'products', 'slug', 4, 'en', 'Debitis soluta deser', '2023-10-25 08:27:10', '2023-10-25 08:27:10'),
(652, 'products', 'brief', 4, 'en', 'Soluta excepteur mai', '2023-10-25 08:27:10', '2023-10-25 08:27:10'),
(653, 'products', 'content', 4, 'en', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 08:27:10', '2023-10-25 08:27:10'),
(654, 'products', 'title', 4, 'fr', 'Quaerat eius possimu', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(655, 'products', 'title', 4, 'de', 'Quaerat eius possimu', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(656, 'products', 'title', 4, 'ar', 'Quaerat eius possimu', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(657, 'products', 'slug', 4, 'fr', 'Debitis soluta deser', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(658, 'products', 'slug', 4, 'de', 'Debitis soluta deser', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(659, 'products', 'slug', 4, 'ar', 'Debitis soluta deser', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(660, 'products', 'brief', 4, 'fr', 'Soluta excepteur mai', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(661, 'products', 'brief', 4, 'de', 'Soluta excepteur mai', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(662, 'products', 'brief', 4, 'ar', 'Soluta excepteur mai', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(663, 'products', 'content', 4, 'fr', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(664, 'products', 'content', 4, 'de', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(665, 'products', 'content', 4, 'ar', '<p>TESTSTES&nbsp; FSD FDS FDS Ff sdf s df sdf sdf s</p>', '2023-10-25 08:27:25', '2023-10-25 08:27:25'),
(666, 'site_texts', 'content', 84, 'en', 'Phone', '2023-10-25 08:58:30', '2023-10-25 08:58:30'),
(667, 'site_texts', 'content', 85, 'en', 'No images available for this product.', '2023-10-26 00:26:21', '2023-10-26 00:26:21'),
(668, 'site_texts', 'content', 86, 'en', 'Products and Services ', '2023-10-26 01:43:57', '2023-10-26 01:43:57'),
(669, 'site_texts', 'content', 87, 'en', 'Billing Details', '2023-10-26 07:45:15', '2023-10-26 07:45:15'),
(670, 'site_texts', 'content', 88, 'en', 'Add new address', '2023-10-26 07:47:44', '2023-10-26 07:47:44'),
(671, 'site_texts', 'content', 89, 'en', 'Individual', '2023-10-26 08:02:51', '2023-10-26 08:02:51'),
(672, 'site_texts', 'content', 90, 'en', 'Institutional', '2023-10-26 08:03:10', '2023-10-26 08:03:10'),
(673, 'site_texts', 'content', 91, 'en', 'Turkey is an attractive option for international buyers with', '2023-10-26 08:54:23', '2023-10-26 08:54:23'),
(674, 'site_texts', 'content', 92, 'en', 'Are you about logout', '2023-10-26 08:54:51', '2023-10-26 08:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `birth_date`, `country`, `phone`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'MKT3', 'mktarakji@smartwork.com.tr', '10/01/2023', 'US', '+90563523432', 'users/default.png', NULL, '$2y$10$TlsQ/YH6wo/mPmQNCWteGuyHk3D8PvVySkLzXYsiWH3LQt/HDBvi2', 'XIqb2WXbRJRFFlrpMuPkC12lfvW9j6AMeqTVNJmt5TOZJogJdgIOiXUMYrLp', '2023-10-17 21:51:39', '2023-10-17 23:22:19'),
(4, 'Mohammed Kharzom', 'kharzom.mohammed@gmail.com', NULL, NULL, NULL, 'users/default.png', NULL, '$2y$10$DvJ1cm2P6Uts9XuVWUjOe.27YbGBMCqCW8V29Fp.tf11GWuuA/vCS', NULL, '2023-10-25 01:32:44', '2023-10-25 01:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_role_id_foreign` (`role_id`);

--
-- Indexes for table `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_orders`
--
ALTER TABLE `application_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_author_id_foreign` (`author_id`),
  ADD KEY `blogs_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tag_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_tag_blog_tag_id_foreign` (`blog_tag_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bultens`
--
ALTER TABLE `bultens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contact_orders`
--
ALTER TABLE `contact_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporate_pages`
--
ALTER TABLE `corporate_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cover_images`
--
ALTER TABLE `cover_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `founders`
--
ALTER TABLE `founders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `get_offers`
--
ALTER TABLE `get_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutionals`
--
ALTER TABLE `institutionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_orders`
--
ALTER TABLE `offer_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_offers`
--
ALTER TABLE `our_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`);

--
-- Indexes for table `products_sliders`
--
ALTER TABLE `products_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sector`
--
ALTER TABLE `product_sector`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sector_product_id_foreign` (`product_id`),
  ADD KEY `product_sector_product_sector_id_foreign` (`product_sector_id`);

--
-- Indexes for table `product_sectors`
--
ALTER TABLE `product_sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_product_tag_id_foreign` (`product_tag_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sell_offers`
--
ALTER TABLE `sell_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `similar_products`
--
ALTER TABLE `similar_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `similar_products_product_id_foreign` (`product_id`),
  ADD KEY `similar_products_semi_product_id_foreign` (`semi_product_id`);

--
-- Indexes for table `site_texts`
--
ALTER TABLE `site_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

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
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advantages`
--
ALTER TABLE `advantages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `application_orders`
--
ALTER TABLE `application_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bultens`
--
ALTER TABLE `bultens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_orders`
--
ALTER TABLE `contact_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `corporate_pages`
--
ALTER TABLE `corporate_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cover_images`
--
ALTER TABLE `cover_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `founders`
--
ALTER TABLE `founders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `get_offers`
--
ALTER TABLE `get_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutionals`
--
ALTER TABLE `institutionals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `offer_orders`
--
ALTER TABLE `offer_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `our_offers`
--
ALTER TABLE `our_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_sliders`
--
ALTER TABLE `products_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_sector`
--
ALTER TABLE `product_sector`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sectors`
--
ALTER TABLE `product_sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sell_offers`
--
ALTER TABLE `sell_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `similar_products`
--
ALTER TABLE `similar_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_texts`
--
ALTER TABLE `site_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=675;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD CONSTRAINT `billing_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `blogs_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`);

--
-- Constraints for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD CONSTRAINT `blog_tag_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `blog_tag_blog_tag_id_foreign` FOREIGN KEY (`blog_tag_id`) REFERENCES `blog_tags` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`);

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `product_sector`
--
ALTER TABLE `product_sector`
  ADD CONSTRAINT `product_sector_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_sector_product_sector_id_foreign` FOREIGN KEY (`product_sector_id`) REFERENCES `product_sectors` (`id`);

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_tag_product_tag_id_foreign` FOREIGN KEY (`product_tag_id`) REFERENCES `product_tags` (`id`);

--
-- Constraints for table `similar_products`
--
ALTER TABLE `similar_products`
  ADD CONSTRAINT `similar_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `similar_products_semi_product_id_foreign` FOREIGN KEY (`semi_product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
