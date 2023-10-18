-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Eki 2023, 03:11:48
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `buyitfromturkey`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@smartwork.com.tr', '2023-10-17 20:15:40', '$2y$10$LW1XM91iMM6lNUwZdhVf3.amspnZwHqF/rNCdDXQJuj209Oc9l4TK', NULL, 'users/default.png', NULL, '2023-10-17 20:15:40', '2023-10-17 20:15:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `advantages`
--

CREATE TABLE `advantages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(1023) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `audits`
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
(71, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ContactUs', 1, '{\"email\":\"belisipos@mailinator.com\",\"phone1\":\"+1 (203) 292-4061\",\"phone2\":\"+1 (593) 826-4718\",\"whatsapp\":\"Ea iure aut voluptat\",\"address\":\"Dolores a qui occaec\",\"facebook\":\"Iure eligendi simili\",\"youtube\":\"Ex corrupti asperna\",\"twitter\":\"Fugiat aut adipisci\",\"instagram\":\"Reprehenderit eu in\"}', '{\"email\":\"info@buyitfromturkiye.com\",\"phone1\":\"+90 500 000 00 00\",\"phone2\":\"+90 500 000 00 00\",\"whatsapp\":\"+90 500 000 00 00\",\"address\":\"Istanbul \\/ Turkiye\",\"facebook\":\"#\",\"youtube\":\"#\",\"twitter\":\"#\",\"instagram\":\"#\"}', 'http://buyitfromturkey.localhost/buyitadmin/contact-us/1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2023-10-18 00:41:52', '2023-10-18 00:41:52');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `authors`
--

INSERT INTO `authors` (`id`, `name`, `brief`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed Kharzom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et magni temporibus voluptates adipisicing..', 'mk', NULL, '2023-10-16 06:47:17', '2023-10-16 06:47:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `billing_details`
--

CREATE TABLE `billing_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_ogimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blogs`
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
-- Tablo için tablo yapısı `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(2, 'Travel', 'travel', 'bblue', '2023-10-15 10:47:00', '2023-10-16 09:52:27'),
(3, 'Food', 'food', 'warning', '2023-10-15 10:48:00', '2023-10-16 09:49:44'),
(4, 'Products', 'ürünler', 'info', '2023-10-15 10:48:00', '2023-10-16 09:49:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `blog_tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `blog_id`, `blog_tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(2, 'House', 'house', NULL, '2023-10-16 06:46:47', '2023-10-16 06:46:47'),
(3, 'Flat', 'flat', NULL, '2023-10-16 06:46:59', '2023-10-16 06:46:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `brands`
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
-- Tablo için tablo yapısı `bultens`
--

CREATE TABLE `bultens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact_orders`
--

CREATE TABLE `contact_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contact_orders`
--

INSERT INTO `contact_orders` (`id`, `first_name`, `last_name`, `email`, `message`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'Lesley', 'Bradshaw', 'tytut@mailinator.com', 'Ex ut reprehenderit', 'Kristen Kemp', '2023-10-18 00:50:48', '2023-10-18 00:50:48'),
(2, 'Robin', 'Walter', 'qylyw@mailinator.com', 'Optio nisi vel iste', 'Ruth Bell', '2023-10-18 00:52:03', '2023-10-18 00:52:03'),
(3, 'Zane', '', 'kiluvifud@mailinator.com', 'Nostrud non ipsum nu', '', '2023-10-18 00:54:15', '2023-10-18 00:54:15'),
(4, 'Colby', '', 'navutoleno@mailinator.com', 'Temporibus deleniti', '', '2023-10-18 01:09:21', '2023-10-18 01:09:21'),
(5, 'Paki', 'Mccoy', 'hykynu@mailinator.com', 'Sint tenetur enim a', 'Fiona Noel', '2023-10-18 01:11:33', '2023-10-18 01:11:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo_tr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `phone1`, `phone2`, `whatsapp`, `address`, `map`, `facebook`, `youtube`, `twitter`, `instagram`, `site_logo_tr`, `site_logo_en`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'info@buyitfromturkiye.com', '+90 500 000 00 00', '+90 500 000 00 00', '+90 500 000 00 00', 'Istanbul / Turkiye', 'Animi voluptates fa', '#', '#', '#', '#', 'Excepturi deserunt v', 'Ea ut consequuntur n', 'Vel deserunt totam s', '2023-10-04 06:39:00', '2023-10-18 00:41:52');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `corporate_pages`
--

CREATE TABLE `corporate_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_ogimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cover_images`
--

CREATE TABLE `cover_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_rows`
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
(279, 32, 'subject', 'text', 'Subject', 0, 1, 1, 1, 1, 1, '{}', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_types`
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
(29, 'authors', 'authors', 'Author', 'Authors', 'voyager-person', 'App\\Models\\Author', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-16 06:41:26', '2023-10-16 06:41:26'),
(30, 'admins', 'admins', 'Admin', 'Admins', 'voyager-people', 'App\\Models\\Admin', NULL, 'App\\Http\\Controllers\\VoyagerAdminController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2023-10-17 20:22:10', '2023-10-17 20:22:32'),
(31, 'static_pages', 'static-pages', 'Sabit Sayfa', 'Sabit Sayfalar', 'voyager-file-text', 'App\\Models\\StaticPage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-10-18 00:23:26', '2023-10-18 00:23:26'),
(32, 'contact_orders', 'contact-orders', 'İletişim Formu', 'İletişim Formları', 'voyager-mail', 'App\\Models\\ContactOrder', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-18 00:31:02', '2023-10-18 00:33:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `founders`
--

CREATE TABLE `founders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `is_homepage` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `f_a_q_s`
--

INSERT INTO `f_a_q_s` (`id`, `title`, `content`, `order`, `is_homepage`, `created_at`, `updated_at`) VALUES
(1, 'How can I place an order for products from Turkey if I\'m located outside the                                     country?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:49:26', '2023-10-15 04:49:26'),
(2, 'What is the estimated delivery time for international orders?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:49:44', '2023-10-15 04:49:44'),
(3, 'Which payment methods do you accept?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:50:01', '2023-10-15 04:50:01'),
(4, 'Which payment methods do you accept?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:50:00', '2023-10-15 04:50:28'),
(5, 'Which payment methods do you accept?', 'Simply visit our website and create an account. Next, select the desired                                             products and add them to your cart. To complete the order, choose one of                                             our payment methods. Afterward, you can select shipping options for the                                             delivery of your items to your international address.', NULL, 1, '2023-10-15 04:50:23', '2023-10-15 04:50:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `get_offers`
--

CREATE TABLE `get_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `institutionals`
--

CREATE TABLE `institutionals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `languages`
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
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-09-12 07:29:31', '2023-09-12 07:29:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menu_items`
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
(37, 1, 'İletişim Formları', '', '_self', 'voyager-mail', NULL, NULL, 23, '2023-10-18 00:31:02', '2023-10-18 00:31:02', 'voyager.contact-orders.index', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `metas`
--

CREATE TABLE `metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_ogimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
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
(76, '2023_10_18_033125_add_email_to_contact_orders_table', 22);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `our_offers`
--

CREATE TABLE `our_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `our_offers`
--

INSERT INTO `our_offers` (`id`, `title`, `logo`, `content`, `active`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Competitive Prices', '[{\"download_link\":\"our-offers\\\\October2023\\\\BprvzNLOZJw6to1FvHiF.svg\",\"original_name\":\"i1.svg\"}]', '', 1, NULL, '2023-10-15 01:25:43', '2023-10-15 01:25:43'),
(2, 'Quality Handicrafts                                                         and Products', '[{\"download_link\":\"our-offers\\\\October2023\\\\C0qlomS8qXmhYznsYxP5.svg\",\"original_name\":\"i2.svg\"}]', '', 1, NULL, '2023-10-15 01:58:49', '2023-10-15 01:58:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
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
(160, 'delete_contact_orders', 'contact_orders', '2023-10-18 00:31:02', '2023-10-18 00:31:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permission_role`
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
(160, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `product_sector_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_ogimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_sliders`
--

CREATE TABLE `products_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_sectors`
--

CREATE TABLE `product_sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(2, 'user', 'Normal User', '2023-09-12 07:29:31', '2023-09-12 07:29:31'),
(3, 'panel_admin', 'Panel Admin', '2023-10-17 20:20:17', '2023-10-17 20:20:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sell_offers`
--

CREATE TABLE `sell_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_bottom` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_top` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_bottom` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_ogimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `seo`
--

INSERT INTO `seo` (`id`, `title`, `meta`, `header_bottom`, `body_top`, `body_bottom`, `meta_title`, `meta_description`, `meta_keyword`, `meta_canonical`, `meta_ogimage`, `site_name`, `created_at`, `updated_at`) VALUES
(3, 'Duis velit omnis qua', 'Ut odit dolor modi q', 'Cupidatat qui eu et ', 'Deleniti temporibus ', 'Impedit est et iur', 'Buyitfromturkey', 'Nostrud officiis dol', 'Officiis vero doloru', 'Est in architecto ex', 'Harum culpa omnis e', 'Dolan Roth', '2023-10-04 10:18:00', '2023-10-10 09:19:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `title`, `color`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Real Estate', NULL, '[{\"download_link\":\"services\\\\October2023\\\\VmTcPiIChbfSRsEU270D.svg\",\"original_name\":\"realestate.svg\"}]', 'Real_Estate', '2023-10-10 10:04:31', '2023-10-10 10:04:31'),
(2, 'Travel Around', NULL, '[{\"download_link\":\"services\\\\October2023\\\\ESY2Ww50YDFs1VQLquQN.svg\",\"original_name\":\"travel.svg\"}]', 'Travel_Around', '2023-10-10 10:26:36', '2023-10-10 10:26:36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
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
-- Tablo için tablo yapısı `similar_products`
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
-- Tablo için tablo yapısı `site_texts`
--

CREATE TABLE `site_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `site_texts`
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
(35, 'Contact_Order_submitted', 'İletişim Sayfası', 'İletişim Formunuz Başarıyla Gönderilmiştir!', '2023-10-18 00:39:22', '2023-10-18 00:39:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `brief`, `slug`, `image`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'What Would You Like To <em>Get From Türkiye ?</em>', 'We Assist You In Buying Homes Or Land In Turkey. Request A Quote Now, Let Us Find Your Perfect Property!', 'slider_1', 'sliders\\October2023\\l4kL3dUos5MnJDJ37r5l.png', 1, 1, '2023-10-10 11:20:39', '2023-10-10 11:20:39'),
(2, 'What Would You Like To 2 <em>Get From Türkiye ?</em>', 'We Assist You In Buying Homes Or Land In Turkey. Request A Quote Now, Let Us Find Your Perfect Property! 2 2', 'slider_2', 'sliders\\October2023\\MH25PJVi8xYJHZ62iOZ5.png', 2, 1, '2023-10-10 11:21:14', '2023-10-10 11:21:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `static_pages`
--

CREATE TABLE `static_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_ogimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `static_pages`
--

INSERT INTO `static_pages` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `meta_keyword`, `meta_canonical`, `meta_ogimage`, `created_at`, `updated_at`) VALUES
(1, 'Kullanım Koşulları', 'kullanim-kosullari', '<h5>Use of our website</h5>\n<p>These Conditions are the only conditions applicable to the use of this website and replace any other, except with the prior express written consent of the Seller. These Terms are important to both you and us as they are designed to create a legally binding agreement between us protecting your rights as a customer and our rights as a company. You declare that, by placing your order, you have read and accept these Conditions without reservation.</p>\n<h5>You agree that:</h5>\n<ul>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n<li>You may only use the website to make legally valid queries or orders</li>\n</ul>\n<p>Donec rutrum, metus non aliquet aliquam, diam elit ornare arcu, sed facilisis neque sem vel mauris. In tristique orci urna, sit amet faucibus leo ultrices eget. Phasellus ac erat mauris. Aliquam erat volutpat. Nulla leo diam, dignissim ut viverra quis, lobortis eget enim. Ut suscipit erat ac neque pellentesque, ut luctus nisl lacinia. Vivamus dignissim at eros at interdum. Curabitur ultricies mauris dui, id suscipit neque lacinia iaculis. Fusce placerat libero arcu, nec ultrices purus interdum ac. Nulla malesuada tristique ante id sodales. Mauris nec finibus nibh, quis euismod ex. Pellentesque id sollicitudin nisl. <br><br>Nam vitae quam elit. Pellentesque nisi massa, fermentum id ligula quis, dignissim malesuada eros. Aliquam fermentum imperdiet varius. Ut tristique luctus dui volutpat dapibus. Donec fermentum tempus nibh, quis rhoncus tortor fringilla eu. Aliquam nulla ligula, luctus cursus massa ut, tincidunt interdum eros. Cras varius ac est vel cursus. Donec a ligula gravida tellus commodo eleifend id nec tellus. Maecenas facilisis nunc ut elit ullamcorper auctor. Sed quam ante, rutrum sit amet porttitor in, molestie quis orci. <br><br>Donec nulla erat, tempor et laoreet sed, eleifend at orci. Duis mattis nisi vitae augue malesuada, dapibus feugiat nisi feugiat. Aenean mauris lacus, tempor quis imperdiet sed, auctor in dui. In iaculis ipsum arcu, non dictum elit suscipit eget. Quisque mattis nisl condimentum ligula mollis, vel imperdiet eros dapibus. Etiam volutpat eget eros non tincidunt. Pellentesque at sollicitudin velit, ac condimentum nisi. Nam mattis, est nec ultrices sollicitudin, nulla sem sodales orci, vel hendrerit ipsum odio congue nunc. Proin molestie in tortor id lacinia. Ut pretium nunc et eleifend lacinia. Praesent quis eleifend nibh. Integer iaculis pulvinar eros, ac consequat ex efficitur in. Aliquam nec fermentum leo. Etiam placerat hendrerit iaculis. Vestibulum finibus ex vel accumsan fringilla. <br><br>Integer massa elit, porttitor vel pulvinar ac, pretium vitae enim. Proin porttitor efficitur nulla, at lobortis ex tempor a. Morbi egestas leo ac mauris posuere, eu congue est tincidunt. Vivamus vel leo vulputate, dictum arcu sed, lobortis nulla. In viverra arcu molestie magna tempor aliquet. Nam eget congue dui. Proin vitae mauris ac dui ultricies feugiat. Aliquam erat volutpat. Nunc vel vehicula dolor. Curabitur sagittis dictum porta. Morbi non laoreet velit. Curabitur semper dolor et dictum euismod.</p>', 'Kullanım Koşulları', '', '', '', '', '2023-10-18 00:24:49', '2023-10-18 00:24:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `translations`
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
(102, 'blogs', 'meta_ogimage', 3, 'en', 'Quo earum magnam ea ', '2023-10-16 09:50:26', '2023-10-16 09:50:26'),
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
(150, 'contact_us', 'linkedin', 1, 'en', 'Vel deserunt totam s', '2023-10-18 00:41:53', '2023-10-18 00:41:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `birth_date`, `country`, `phone`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'MKT3', 'mktarakji@smartwork.com.tr', '10/01/2023', 'US', '+90563523432', 'users/default.png', NULL, '$2y$10$TlsQ/YH6wo/mPmQNCWteGuyHk3D8PvVySkLzXYsiWH3LQt/HDBvi2', 'XIqb2WXbRJRFFlrpMuPkC12lfvW9j6AMeqTVNJmt5TOZJogJdgIOiXUMYrLp', '2023-10-17 21:51:39', '2023-10-17 23:22:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_role_id_foreign` (`role_id`);

--
-- Tablo için indeksler `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Tablo için indeksler `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_author_id_foreign` (`author_id`),
  ADD KEY `blogs_blog_category_id_foreign` (`blog_category_id`);

--
-- Tablo için indeksler `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tag_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_tag_blog_tag_id_foreign` (`blog_tag_id`);

--
-- Tablo için indeksler `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bultens`
--
ALTER TABLE `bultens`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`);

--
-- Tablo için indeksler `contact_orders`
--
ALTER TABLE `contact_orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `corporate_pages`
--
ALTER TABLE `corporate_pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cover_images`
--
ALTER TABLE `cover_images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Tablo için indeksler `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `founders`
--
ALTER TABLE `founders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `get_offers`
--
ALTER TABLE `get_offers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `institutionals`
--
ALTER TABLE `institutionals`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Tablo için indeksler `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Tablo için indeksler `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `our_offers`
--
ALTER TABLE `our_offers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Tablo için indeksler `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`),
  ADD KEY `products_product_sector_id_foreign` (`product_sector_id`);

--
-- Tablo için indeksler `products_sliders`
--
ALTER TABLE `products_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_sectors`
--
ALTER TABLE `product_sectors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_product_tag_id_foreign` (`product_tag_id`);

--
-- Tablo için indeksler `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Tablo için indeksler `sell_offers`
--
ALTER TABLE `sell_offers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Tablo için indeksler `similar_products`
--
ALTER TABLE `similar_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `similar_products_product_id_foreign` (`product_id`),
  ADD KEY `similar_products_semi_product_id_foreign` (`semi_product_id`);

--
-- Tablo için indeksler `site_texts`
--
ALTER TABLE `site_texts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Tablo için indeksler `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `advantages`
--
ALTER TABLE `advantages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Tablo için AUTO_INCREMENT değeri `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `bultens`
--
ALTER TABLE `bultens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `contact_orders`
--
ALTER TABLE `contact_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `corporate_pages`
--
ALTER TABLE `corporate_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cover_images`
--
ALTER TABLE `cover_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- Tablo için AUTO_INCREMENT değeri `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `founders`
--
ALTER TABLE `founders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `get_offers`
--
ALTER TABLE `get_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `institutionals`
--
ALTER TABLE `institutionals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Tablo için AUTO_INCREMENT değeri `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Tablo için AUTO_INCREMENT değeri `our_offers`
--
ALTER TABLE `our_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products_sliders`
--
ALTER TABLE `products_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `product_sectors`
--
ALTER TABLE `product_sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `sell_offers`
--
ALTER TABLE `sell_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `similar_products`
--
ALTER TABLE `similar_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `site_texts`
--
ALTER TABLE `site_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Tablo kısıtlamaları `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `blogs_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`);

--
-- Tablo kısıtlamaları `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD CONSTRAINT `blog_tag_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `blog_tag_blog_tag_id_foreign` FOREIGN KEY (`blog_tag_id`) REFERENCES `blog_tags` (`id`);

--
-- Tablo kısıtlamaları `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`);

--
-- Tablo kısıtlamaları `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`),
  ADD CONSTRAINT `products_product_sector_id_foreign` FOREIGN KEY (`product_sector_id`) REFERENCES `product_sectors` (`id`);

--
-- Tablo kısıtlamaları `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_tag_product_tag_id_foreign` FOREIGN KEY (`product_tag_id`) REFERENCES `product_tags` (`id`);

--
-- Tablo kısıtlamaları `similar_products`
--
ALTER TABLE `similar_products`
  ADD CONSTRAINT `similar_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `similar_products_semi_product_id_foreign` FOREIGN KEY (`semi_product_id`) REFERENCES `products` (`id`);

--
-- Tablo kısıtlamaları `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
