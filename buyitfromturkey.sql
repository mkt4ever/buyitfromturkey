-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 04:55 PM
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
(61, 'App\\Models\\User', 2, 'updated', 'App\\Models\\BlogCategory', 2, '{\"color\":\"success\"}', '{\"color\":\"bblue\"}', 'http://buyitfromturkey.localhost/buyitadmin/blog-categories/2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-16 09:52:27', '2023-10-16 09:52:27');

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
(1, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(2, 1, 4, 'test blog', 'Muhammed', 'Cum fugiat iusto ip', '31-May-1994', 'blogs\\October2023\\BZ04r1FRnzcOPg4TQ69l.png', 'blogs\\October2023\\5QPNwyGmw1GFkUfYRp6p.png', '<p>TESTSETETSTS<br>TETST<br>TESTS<br>sTES</p>', 1, 'Tempore doloremque ', 'Recusandae Optio c', 'Do quia nulla soluta', 'Vitae tempore elige', 'Quibusdam nihil volu', '2023-10-16 07:06:21', '2023-10-16 07:06:21'),
(3, 1, 3, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '1985-07-10 00:00:00', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:00', '2023-10-16 09:50:26'),
(4, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(5, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(6, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(7, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(8, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(9, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(10, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(11, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05'),
(12, 1, 2, 'Why Do People Travel to Other Countries for                                                                 Medical Services?', 'Why_Do', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '10-Jul-1985', 'blogs\\October2023\\ye2wmXyjXMaj4mis3rSq.png', 'blogs\\October2023\\iq60XHnFwHJVSlHT0CMY.png', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', 1, 'Tempore doloremque ', 'Eum laborum Eligend', 'Voluptatibus anim be', 'Fugiat delectus fug', 'Quo earum magnam ea ', '2023-10-16 06:51:05', '2023-10-16 06:51:05');

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
(3, 2, 2, NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `phone1`, `phone2`, `whatsapp`, `address`, `map`, `facebook`, `youtube`, `twitter`, `instagram`, `site_logo_tr`, `site_logo_en`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'belisipos@mailinator.com', '+1 (203) 292-4061', '+1 (593) 826-4718', 'Ea iure aut voluptat', 'Dolores a qui occaec', 'Animi voluptates fa', 'Iure eligendi simili', 'Ex corrupti asperna', 'Fugiat aut adipisci', 'Reprehenderit eu in', 'Excepturi deserunt v', 'Ea ut consequuntur n', 'Vel deserunt totam s', '2023-10-04 06:39:00', '2023-10-04 06:39:00');

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
(42, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 15),
(43, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
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
(223, 28, 'brief', 'text', 'Brief', 0, 1, 1, 1, 1, 1, '{}', 8),
(224, 28, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(225, 28, 'thumbnail_image', 'image', 'Thumbnail Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(226, 28, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{}', 11),
(227, 28, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 12),
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
(245, 28, 'blog_belongstomany_blog_tag_relationship', 'relationship', 'blog_tags', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\BlogTag\",\"table\":\"blog_tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blog_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 21);

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
(6, 'contact_us', 'contact-us', 'Contact U', 'Contact Us', 'voyager-telephone', 'App\\Models\\ContactUs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-04 06:38:40', '2023-10-04 06:38:40'),
(14, 'seo', 'seo', 'SEO', 'SEO', 'voyager-world', 'App\\Models\\SEO', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-04 10:11:56', '2023-10-04 10:11:56'),
(15, 'services', 'services', 'Service', 'Services', 'voyager-trophy', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-10 09:48:35', '2023-10-10 10:04:09'),
(16, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-dot-3', 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-10 11:19:32', '2023-10-10 11:19:32'),
(17, 'our_offers', 'our-offers', 'Our Offer', 'Our Offers', 'voyager-medal-rank-star', 'App\\Models\\OurOffer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-11 06:45:03', '2023-10-11 06:45:03'),
(18, 'brands', 'brands', 'Brand', 'Brands', 'voyager-ticket', 'App\\Models\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-15 03:48:44', '2023-10-15 03:48:44'),
(22, 'f_a_q_s', 'f-a-q-s', 'F A Q', 'F A Q', 'voyager-question', 'App\\Models\\FAQ', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-15 04:48:25', '2023-10-15 04:48:25'),
(23, 'languages', 'languages', 'Language', 'Languages', 'voyager-font', 'App\\Models\\Language', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-15 10:16:51', '2023-10-15 10:16:51'),
(24, 'blog_categories', 'blog-categories', 'Blog Category', 'Blog Categories', 'voyager-categories', 'App\\Models\\BlogCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-15 10:45:51', '2023-10-16 09:51:27'),
(25, 'cover_images', 'cover-images', 'Cover Image', 'Cover Images', 'voyager-photo', 'App\\Models\\CoverImage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-15 10:55:32', '2023-10-15 10:55:32'),
(27, 'blog_tags', 'blog-tags', 'Blog Tag', 'Blog Tags', 'voyager-tag', 'App\\Models\\BlogTag', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-16 06:37:18', '2023-10-16 06:37:18'),
(28, 'blogs', 'blogs', 'Blog', 'Blogs', 'voyager-file-text', 'App\\Models\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-16 06:39:01', '2023-10-16 09:36:15'),
(29, 'authors', 'authors', 'Author', 'Authors', 'voyager-person', 'App\\Models\\Author', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-16 06:41:26', '2023-10-16 06:41:26');

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
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-09-12 07:29:31', '2023-09-12 07:29:31', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-09-12 07:29:31', '2023-09-12 07:29:31', 'voyager.settings.index', NULL),
(11, 1, 'Site Texts', '', '_self', 'voyager-character', NULL, NULL, 15, '2023-10-03 05:50:23', '2023-10-03 05:50:23', 'voyager.site-texts.index', NULL),
(12, 1, 'Contact Us', '', '_self', 'voyager-telephone', NULL, NULL, 16, '2023-10-04 06:38:40', '2023-10-04 06:38:40', 'voyager.contact-us.index', NULL),
(20, 1, 'SEO', '', '_self', 'voyager-world', NULL, NULL, 17, '2023-10-04 10:11:56', '2023-10-04 10:11:56', 'voyager.seo.index', NULL),
(21, 1, 'Services', '', '_self', 'voyager-trophy', NULL, NULL, 18, '2023-10-10 09:48:35', '2023-10-10 09:48:35', 'voyager.services.index', NULL),
(22, 1, 'Sliders', '', '_self', 'voyager-dot-3', NULL, NULL, 19, '2023-10-10 11:19:32', '2023-10-10 11:19:32', 'voyager.sliders.index', NULL),
(23, 1, 'Our Offers', '', '_self', 'voyager-medal-rank-star', NULL, NULL, 20, '2023-10-11 06:45:03', '2023-10-11 06:45:03', 'voyager.our-offers.index', NULL),
(24, 1, 'Brands', '', '_self', 'voyager-ticket', NULL, NULL, 21, '2023-10-15 03:48:44', '2023-10-15 03:48:44', 'voyager.brands.index', NULL),
(28, 1, 'F A Q', '', '_self', 'voyager-question', NULL, NULL, 22, '2023-10-15 04:48:25', '2023-10-15 04:48:25', 'voyager.f-a-q-s.index', NULL),
(29, 1, 'Languages', '', '_self', 'voyager-font', NULL, NULL, 23, '2023-10-15 10:16:51', '2023-10-15 10:16:51', 'voyager.languages.index', NULL),
(30, 1, 'Blog Categories', '', '_self', 'voyager-categories', NULL, NULL, 24, '2023-10-15 10:45:51', '2023-10-15 10:45:51', 'voyager.blog-categories.index', NULL),
(31, 1, 'Cover Images', '', '_self', 'voyager-photo', NULL, NULL, 25, '2023-10-15 10:55:32', '2023-10-15 10:55:32', 'voyager.cover-images.index', NULL),
(32, 1, 'Blog Tags', '', '_self', 'voyager-tag', NULL, NULL, 26, '2023-10-16 06:37:18', '2023-10-16 06:37:18', 'voyager.blog-tags.index', NULL),
(33, 1, 'Blogs', '', '_self', 'voyager-file-text', NULL, NULL, 27, '2023-10-16 06:39:01', '2023-10-16 06:39:01', 'voyager.blogs.index', NULL),
(34, 1, 'Authors', '', '_self', 'voyager-person', NULL, NULL, 28, '2023-10-16 06:41:26', '2023-10-16 06:41:26', 'voyager.authors.index', NULL);

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
(54, '2023_09_18_152241_create_blog_tag_table', 19);

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
(1, 'Competitive Prices', '[{\"download_link\":\"our-offers\\\\October2023\\\\BprvzNLOZJw6to1FvHiF.svg\",\"original_name\":\"i1.svg\"}]', '', 1, NULL, '2023-10-15 01:25:43', '2023-10-15 01:25:43'),
(2, 'Quality Handicrafts                                                         and Products', '[{\"download_link\":\"our-offers\\\\October2023\\\\C0qlomS8qXmhYznsYxP5.svg\",\"original_name\":\"i2.svg\"}]', '', 1, NULL, '2023-10-15 01:58:49', '2023-10-15 01:58:49');

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
(145, 'delete_authors', 'authors', '2023-10-16 06:41:26', '2023-10-16 06:41:26');

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
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1);

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
(2, 'user', 'Normal User', '2023-09-12 07:29:31', '2023-09-12 07:29:31');

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
(28, 'Show_Less', NULL, 'Show Less', '2023-10-16 07:29:30', '2023-10-16 07:29:30');

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
(94, 'blogs', 'title', 3, 'en', 'Why Do People Travel to Other Countries for                                                                 Medical Services?', '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
(95, 'blogs', 'slug', 3, 'en', 'Why_Do', '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
(96, 'blogs', 'brief', 3, 'en', 'Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper                                                             mollis at id                                                             massa. Fusce eu lorem sodales, elementum augue nec, fringilla                                                             leo.                                                             Phasellus metus mi, placerat sit amet lorem eu, vulputate                                                             scelerisque                                                             enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim                                                             ut                                                             ullamcorper.', '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
(97, 'blogs', 'content', 3, 'en', '<p>Sed sed tincidunt urna. Sed ac sapien id tortor ullamcorper &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; mollis at id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; massa. Fusce eu lorem sodales, elementum augue nec, fringilla &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; leo. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phasellus metus mi, placerat sit amet lorem eu, vulputate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; scelerisque &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; enim. Curabitur id rutrum turpis. In sollicitudin feugiat enim &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ullamcorper.</p>', '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
(98, 'blogs', 'meta_title', 3, 'en', 'Tempore doloremque ', '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
(99, 'blogs', 'meta_description', 3, 'en', 'Eum laborum Eligend', '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
(100, 'blogs', 'meta_keyword', 3, 'en', 'Voluptatibus anim be', '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
(101, 'blogs', 'meta_canonical', 3, 'en', 'Fugiat delectus fug', '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
(102, 'blogs', 'meta_ogimage', 3, 'en', 'Quo earum magnam ea ', '2023-10-16 09:50:26', '2023-10-16 09:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(2, 1, 'admin', 'admin@smartwork.com.tr', 'users/default.png', NULL, '$2y$10$LlJ0Sy9JyUZ3eG./X1cdnekFTvGVLKUUooyflpA6OhPExhaTXpT/6', NULL, NULL, '2023-09-25 06:06:17', '2023-09-25 06:06:17');

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
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
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
-- Indexes for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cover_images`
--
ALTER TABLE `cover_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `our_offers`
--
ALTER TABLE `our_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `site_texts`
--
ALTER TABLE `site_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

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
