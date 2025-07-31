-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2025 at 08:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `la_amore_mob_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` enum('text','image','audio','video','file') NOT NULL DEFAULT 'text',
  `attachment` varchar(255) DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `seen_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `sender_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `receiver_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `message_status` varchar(255) DEFAULT NULL,
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
(1, '000001_001_01_0000001_create_user_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_27_171647_create_personal_access_tokens_table', 1),
(5, '2025_05_28_004047_create_user_links_table', 1),
(6, '2025_05_30_005134_create_messages_table', 1),
(7, '2025_06_02_213243_create_payments_table', 1),
(8, '2025_06_13_215933_create_user_supports_table', 1),
(9, '2025_07_10_203127_create_pakiges_table', 1),
(14, '2025_07_11_222602_create_plans_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_intent_id` varchar(200) DEFAULT NULL,
  `payment_for` enum('message','ring_exchange') NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvc_number` varchar(255) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `messages_added` int(11) DEFAULT NULL,
  `amount_paid` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` enum('paypal','stripe','card','google','apple') DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `ring_exchange_resion` varchar(255) DEFAULT NULL,
  `purchased_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `payment_intent_id`, `payment_for`, `name`, `phone_number`, `card_number`, `cvc_number`, `expire_date`, `country`, `postal_code`, `messages_added`, `amount_paid`, `payment_method`, `payment_status`, `ring_exchange_resion`, `purchased_at`, `created_at`, `updated_at`) VALUES
(1, 486, NULL, 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, 'pending', NULL, NULL, '2025-07-16 13:30:42', '2025-07-16 13:30:42'),
(2, 486, NULL, 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, 'pending', NULL, NULL, '2025-07-16 13:31:44', '2025-07-16 13:31:44'),
(3, 486, NULL, 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, 'pending', NULL, NULL, '2025-07-16 13:31:54', '2025-07-16 13:31:54'),
(6, 482, NULL, 'ring_exchange', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.99, NULL, 'succeeded', NULL, NULL, '2025-07-16 14:16:02', '2025-07-16 14:16:02'),
(7, 482, NULL, 'ring_exchange', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.99, NULL, 'succeeded', NULL, NULL, '2025-07-16 14:16:58', '2025-07-16 14:16:58'),
(8, 482, NULL, 'ring_exchange', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.99, NULL, 'succeeded', NULL, NULL, '2025-07-16 14:53:15', '2025-07-16 14:53:15'),
(9, 482, NULL, 'ring_exchange', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.99, NULL, 'succeeded', NULL, NULL, '2025-07-16 14:58:42', '2025-07-16 14:58:42');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 341, 'auth_token', '3e51dd35b7ee5f2829cc981bdd9f631217ba1b5601f6b15493cb266494ebb0e5', '[\"*\"]', '2025-07-11 16:24:06', NULL, '2025-07-11 16:01:47', '2025-07-11 16:24:06'),
(3, 'App\\Models\\User', 483, 'auth_token', '4e9bd0af9d8fe6629f118e63ba4538a159c7e4dc69b11340dae932cf1ab370dc', '[\"*\"]', '2025-07-11 16:40:14', NULL, '2025-07-11 16:29:45', '2025-07-11 16:40:14'),
(4, 'App\\Models\\User', 484, 'auth_token', '5b33e7dba2fd4aa72a8991f4afca2d9ceb0a79d18ffeeb0b9aca96c735ed9a23', '[\"*\"]', '2025-07-11 16:55:10', NULL, '2025-07-11 16:41:04', '2025-07-11 16:55:10'),
(5, 'App\\Models\\User', 485, 'auth_token', 'd576ae24330f207dad85e9e9f0eec23736889aeaf8dd9d3f13b40a2f6246abd7', '[\"*\"]', '2025-07-11 19:58:35', NULL, '2025-07-11 16:57:10', '2025-07-11 19:58:35'),
(6, 'App\\Models\\User', 406, 'auth_token', '3df2a98cfe6228f37f1623c48f5784da5e7d3e24acd964eb985e8253b6826c65', '[\"*\"]', NULL, NULL, '2025-07-14 11:42:52', '2025-07-14 11:42:52'),
(7, 'App\\Models\\User', 406, 'auth_token', '3f17e17a04196538f002ef2fe48e49175b1b4758c620ea71536a6fe96a7148fd', '[\"*\"]', NULL, NULL, '2025-07-14 11:47:47', '2025-07-14 11:47:47'),
(8, 'App\\Models\\User', 406, 'auth_token', '0f93aa0a7168a9a115dc9bcda8a6bc30997314a0f7bbbdc30f8248171712fde7', '[\"*\"]', '2025-07-14 11:48:59', NULL, '2025-07-14 11:47:52', '2025-07-14 11:48:59'),
(9, 'App\\Models\\User', 486, 'auth_token', 'accf88213c777a77e28639760eedad095d3b2411993660e582bd7f2003ab7c57', '[\"*\"]', '2025-07-14 16:49:19', NULL, '2025-07-14 15:36:09', '2025-07-14 16:49:19'),
(10, 'App\\Models\\User', 486, 'auth_token', '72f87fe3e60e6f648b30cc9632326bcf3b8fdb10ee82545a429d52a11c61bac8', '[\"*\"]', '2025-07-15 19:47:14', NULL, '2025-07-14 17:43:21', '2025-07-15 19:47:14'),
(11, 'App\\Models\\User', 486, 'auth_token', '2548e0a4fd281e7d0fcda56762b2d6d2a6e55f9bf2bc50c126298b9d4d01c6a0', '[\"*\"]', NULL, NULL, '2025-07-16 13:11:11', '2025-07-16 13:11:11'),
(12, 'App\\Models\\User', 486, 'auth_token', 'cd1ba6621cfc4ed1f7194a070c0e211ed2230adf5dfe783767d042e5edf6520a', '[\"*\"]', NULL, NULL, '2025-07-16 13:11:53', '2025-07-16 13:11:53'),
(13, 'App\\Models\\User', 486, 'auth_token', 'b790533291d446564f853f82861ef14de3f6b3803d957f2b9503b4e46d06a638', '[\"*\"]', '2025-07-16 13:44:24', NULL, '2025-07-16 13:12:11', '2025-07-16 13:44:24'),
(14, 'App\\Models\\User', 482, 'auth_token', '2f92d06b50b9472de3cbdc4dd8ce1b02aeddfbf23cb22bd3871a07d34ebca900', '[\"*\"]', '2025-07-16 15:23:31', NULL, '2025-07-16 13:52:49', '2025-07-16 15:23:31'),
(15, 'App\\Models\\User', 482, 'auth_token', 'a93d379e26cdaf07e82cf811f5e9d97adedb6299c2b1a7660dffca4ff4ffe4fe', '[\"*\"]', NULL, NULL, '2025-07-16 17:04:58', '2025-07-16 17:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `messages` int(11) NOT NULL DEFAULT 0,
  `rings` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `slug`, `title`, `messages`, `rings`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'messages', 'Messages', 500, 0, 4.99, '2025-07-11 17:47:32', '2025-07-11 17:47:32'),
(2, 'ring_exchange', 'Ring Exchange', 0, 1, 5.99, '2025-07-11 17:47:32', '2025-07-11 17:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `otp_last_sent_at` timestamp NULL DEFAULT NULL,
  `otp_status` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `qr_token` varchar(255) NOT NULL,
  `qr_code_link` varchar(255) DEFAULT NULL,
  `qr_code_status` varchar(255) NOT NULL DEFAULT 'pending',
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `message_limit` int(11) NOT NULL DEFAULT 500,
  `message_count` int(11) NOT NULL DEFAULT 0,
  `message_count_status` varchar(255) NOT NULL DEFAULT 'inactive',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `otp`, `otp_expires_at`, `otp_last_sent_at`, `otp_status`, `profile_image`, `qr_token`, `qr_code_link`, `qr_code_status`, `is_paid`, `message_limit`, `message_count`, `message_count_status`, `user_status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(331, 'Arthur', 'Wilder', 'qudugu@mailinator.com', NULL, NULL, NULL, NULL, 'pending', NULL, '47120117221', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(332, 'Ahmed zaky', 'Mohamed', 'ahmedzaki_18@yahoo.com', NULL, NULL, NULL, NULL, 'pending', NULL, '34677641084', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(333, 'جديدsaeed', 'المستخدمsaeed', 'momenahafrez@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '34660346188', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(334, 'Lateefa', 'Almainhail', 'lateef.12@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '13023741193', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(335, 'Hana', 'Saleh', 'Hma__uae@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '98651040091', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(336, 'Aysha', 'Alkaabi', 'ayshaalkaabi80@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '3672344828', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(337, 'Maath', 'Alalawi', 'vrxr@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '51992178204', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(338, 'Mohamed', 'Othman', 'mohamed.othman@nmc.ae', NULL, NULL, NULL, NULL, 'pending', NULL, '56364592561', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(339, 'jasem', 'Almarooqi', 'j.m.7@live.com', NULL, NULL, NULL, NULL, 'pending', NULL, '64944759478', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(340, 'خليفة محمد', 'العامري', 'khalifa4114@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '31404350394', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(341, 'Nadia', 'Ali', 'nadiaa_hassan@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '52969000640', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-11 16:25:39'),
(342, 'سلطان', 'سعيد', 'nonylive@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '55971344743', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(343, 'Rafia', 'Rashid', 'mama.alnoaimi@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '60901303134', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(344, 'محمد جمعه', 'المري', 'nada.alshihhe@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '21865647624', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(345, 'Ali', 'Alboom', 'ameerat_dubai@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '1745338867', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(346, 'Mai', 'Almehairbi', 'm.67666ma@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '71016082640', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(347, 'عبدالله', 'النيادي', 'ab1122a@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '42264182912', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(348, 'amani', 'fathi', 'amanifathi88@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '5943936159', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(349, 'Fatima', 'Ali', 'fofyeh84@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '80198292702', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(350, 'Rasha', 'Sedhom', 'msrashasedhom@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '26208939365', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(351, 'Um', 'Salha', 'um.salha@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '29259859901', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(352, 'Abu Mohammed', 'Alameri', 'zaemuae2009@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '87988091685', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(353, 'Fatima', 'Alhamadi', 'fatima.m.alhamadi@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '29131121279', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(354, 'Hamd', 'Helal', 'aml_3mry@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '48113034775', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(355, 'Az', 'Alhammadi', 'amalhammadi55@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '11407427441', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(356, 'Hedaya', 'Alkaabi', 'ghanem.mam@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '5203118631', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(357, 'ام نورة', 'المحفوظي', 'Eiman.alwheibi123@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '77266590019', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(358, 'mariam', 'alali', 'mmalali2016@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '9777931764', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(359, 'Roqaia', 'Alnaqbi', 'Tweety4r@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '17618003023', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(360, 'um', 'Saeed', 'mfh765@icloud.com', NULL, NULL, NULL, NULL, 'pending', NULL, '6182873745', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(361, 'Mufleh', 'Al Ahbabi', 'ms6027@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '59218053885', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(362, 'Sulaiman', 'AlBlooshi', 'gtrs79@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '97705756572', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(363, 'Amna', 'Suliman', 'aamna.su.alamry@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '26846233245', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(364, 'Jameela', 'Almarzooqi', 'jamool.o@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '24421022880', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(365, 'Nada', 'Al Meqbaali', 'um_hazza@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '25987383921', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(366, 'Eman', 'Alali', 'missbinuae@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '66997811439', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(367, 'Salwa', 'Asban', 'uae_4e@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '73827042462', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(368, 'Omar', 'Almarzooqi', 'joodee199@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '70272016199', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(369, 'Abdelrahman', 'AlShuwaihi', 'bo3oouf@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '64657342899', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(370, 'Asma', 'Al marzooqi', 'as-almrzoqi@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '83685112198', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(371, 'Samar', 'Said', 'sum882@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '1809647809', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(372, 'Hamda', 'Alfalahi', 'h.alfalahi100@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '43791805911', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(373, 'Marwa', 'Omar', 'justme209312@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '92787592813', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(374, 'Rafia', 'Rashid', 'mama.alnoaimi@gmaik.com', NULL, NULL, NULL, NULL, 'pending', NULL, '31407153583', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:00', NULL, '2025-07-10 15:59:00', '2025-07-10 15:59:00'),
(375, 'جديدsaeed', 'المستخدمsaeed', 'momenahfrez@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '25272467374', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(376, 'Ahmed', 'Mounir', 'prence2004@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '75593979060', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(377, 'Fareed', 'Al Ali', 'alali92@yahoo.com', NULL, NULL, NULL, NULL, 'pending', NULL, '41113020781', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(378, 'Hasan', 'Alshamsi', 'binzayed@yahoo.com', NULL, NULL, NULL, NULL, 'pending', NULL, '88085654969', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(379, 'Ahmed', 'Alalawi', 'Ayshaas70@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '45287709565', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(380, 'Latifa', 'Mobarek', 'drmassefa@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '53272227169', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(381, 'Shamaa', 'Ali', 'shamsa2020@email.com', NULL, NULL, NULL, NULL, 'pending', NULL, '46082894201', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(382, 'Abdulla al hammadi', 'Alhammadi', '5dowy.25@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '84019153072', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(383, 'Fareed', 'Al Ali', 'alali92@yahoi.com', NULL, NULL, NULL, NULL, 'pending', NULL, '95555143735', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(384, 'Ahmed', 'A', 'amalalsuwaidi82@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '39998761245', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(385, 'mariam', 'Almansoori', 'mar111iam@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '85159706790', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(386, 'Amal', 'Ahmed', 'amalalsuwaidi82@gmai.com', NULL, NULL, NULL, NULL, 'pending', NULL, '7331860112', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(387, 'Amani', 'Fathi', 'amanifathi88@gmail.com6', NULL, NULL, NULL, NULL, 'pending', NULL, '2557397663', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(388, 'Eman', 'Alali', 'miss@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '31959605637', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(389, 'Mouza', 'Almheiri', 'mozakmm@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '91539782103', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(390, 'Noura', 'Al Blooshi', 'noon-201@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '43205750066', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(391, 'Aysha', 'A', 'aisha.2x@icloud.com', NULL, NULL, NULL, NULL, 'pending', NULL, '51094526223', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(392, 'Ahmed', 'Amal', 'amalalsuwaiai82@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '87563441887', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(393, 'Sultan', 'AlAlawi', 'ssm99aa@yahoo.com', NULL, NULL, NULL, NULL, 'pending', NULL, '10611585024', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(394, 'Sultan', 'Al Alawi', 'salalawi@adnoc.ae', NULL, NULL, NULL, NULL, 'pending', NULL, '66513238416', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(395, 'Khawla', 'Alhosaani', 'koka-79@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '82169399355', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(396, 'Raya', 'Salem', 'raya.aldahry@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '13607837204', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(397, 'Kamla', 'Alderei', 'kamlaalderei@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '31112229113', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(398, 'سالم', 'صالح', 'asmafarouk550@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '34265266058', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(399, 'Fatma', 'Alkaabi', 'Fatma_ma@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '19085786732', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(400, 'Um Shahin', 'Shahin', 'Alhosani.kh88@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '76417846453', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(401, 'MOHSEN', 'SHAMLAN', 'rornro@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '46684849580', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(402, 'Husain', 'Khalifa', 'gmc.ls502@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '95713075074', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(403, 'ibrahim', 'khalil', 'ibrim71@yahoo.com', NULL, NULL, NULL, NULL, 'pending', NULL, '96557323545', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(404, 'Alkaabi', 'Alkaabi', 'alkaabi502@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '68842311144', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(405, 'Ebrahim', 'Alblooshi', 'shaddad70@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '81325840970', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(406, 'Mohamed', 'Ali', 'malkaff20@gmail.com', NULL, NULL, NULL, NULL, 'active', NULL, '55553843700', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-14 11:42:52'),
(407, 'Khawla ahmed', 'Jameel', 'Kajameel@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '41236967676', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(408, 'Hana', 'Mohamed', 'Hana_uae1@outlook.com', NULL, NULL, NULL, NULL, 'pending', NULL, '8965338255', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(409, 'Saoud', 'Alshamsi', 'silver.4889@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '90116426602', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(410, 'Amal', 'Alameri', 'Moooj30@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '65752126421', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(411, 'MOHAMED', 'ALKHOORI', 'makljz@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '27853014967', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(412, 'Reem', 'Jassem', 'reem.j_7@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '40342747555', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(413, 'Sultan', 'Almheiri', 'smka27@yahoo.com', NULL, NULL, NULL, NULL, 'pending', NULL, '17251665714', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(414, 'Ahmed', 'Al Mahmoud', 'abudhabi.2022@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '3302408596', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(415, 'Hamda', 'Alqubaisi', 'hamdaalqubais@hotmill.com', NULL, NULL, NULL, NULL, 'pending', NULL, '21745443016', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(416, 'Talal', 'Alraeesi', 'raeesi_01@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '39858757033', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(417, 'Shamsa', 'AlMheiri', 'shams.ma.90@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '78583469764', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(418, 'Shifaa', 'Aleed', 'moazmoneer.mm@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '35396483145', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(419, 'Ahmad', 'Alhammadi', 'binali.ad@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '85166903536', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(420, 'Mohamed', 'sayed ahmed', 'mhussein202@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '69019448246', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(421, 'Moza', 'Alshamsi', 'uaegirl101@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '22988895329', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(422, 'Yousif', 'Aloufi', '8005535@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '65221260640', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(423, 'Abdulla', 'Faisal', 'laila.alshaiba@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '30314126844', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(424, 'Badeea', 'Rashid', 'alrashidbadeea@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '21745699172', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(425, 'K', 'H', 'khaawla.hamad@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '50354292741', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(426, 'Saif', 'Al Menhali', 'S.minhali@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '14870576167', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(427, 'Rashed', 'Aljasmi', 'h__almarzoqi@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '38324280396', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(428, 'Salah Ali yousif', 'Obaid', 'saalqaseer@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '2219704937', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(429, 'Mohamed', 'Alqubaisi', 'alqubaisi135@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '1582955161', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(430, 'Fatima', 'AlAmeri', 'um-bakheet@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '40115692596', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(431, 'Omar', 'Alzaabi', 'onmuae@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '5070593556', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(432, 'Aysha', 'AlMaazmi', 'aysha.almazmi@live.com', NULL, NULL, NULL, NULL, 'pending', NULL, '15435303831', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(433, 'Talal', 'Alali', 'dro0ob_a_@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '89321542226', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(434, 'ALI', 'OMAR', 'LEHASHMI@GMAIL.COM', NULL, NULL, NULL, NULL, 'pending', NULL, '35248165590', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(435, 'Um', 'Hazaa', 'umhazaa2008@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '71218822803', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(436, 'Ali', 'Darwish', 'ali.ahmed.darwish@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '68524483851', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(437, 'Aliya Al Nasi', 'Aliya.a.alnasi@gmail.com', 'aliya.a.alnasi@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '43687638762', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(438, 'Mohammed', 'Alhammadi', 'najwa_mohammed@icloud.com', NULL, NULL, NULL, NULL, 'pending', NULL, '92585790055', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(439, 'Mohammed', 'Tamimi', 'layo0l@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '40514262017', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(440, 'Ibrahim', 'Almheiri', 'ibr811@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '50237918811', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(441, 'Shifaa', 'Aleef', 'shifaaaleed69@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '77224298345', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(442, 'Ali', 'Rashed', 'dxb_1983@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '42336694147', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(443, 'Maithah', 'Al ali', 'maithahalali@icloud.com', NULL, NULL, NULL, NULL, 'pending', NULL, '42424996026', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(444, 'منى', 'الجنيبي', 'munaaljunabi416@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '93938732821', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(445, 'Mohamed', 'Alhammadi', 'm_ro7@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '70487934497', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(446, 'Sabah', 'Alhosani', 's_alemarat@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '49871726214', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(447, 'Reem', 'Ali', 'reem.shopp@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '41585218686', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(448, 'Amna', 'Alshehhi', 'amfbs.99@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '28022390685', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(449, 'Fatima', 'Alnaqbi', 'tampehjj@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '95341204217', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(450, 'Aseela', 'AlSaeedi', 'alsaeedi.aseela@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '31418643063', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(451, 'Y', 'Malik', 's.1502_@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '66676365428', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(452, 'Ahmed', 'Alshamsi', 'alshamsi2000.up@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '30841323282', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(453, 'Um mohamed', 'Alzaabi', 'ahalzaabi_@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '3737408879', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(454, 'Badria', 'Saeed', 'clouds_96@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '8384645479', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(455, 'Reem', 'Ali', 'reemm.uae@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '81308905948', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(456, 'Bader Aljunaibi', 'Aljunaibi', 'al-junaibiuae@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '86701359123', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(457, 'Ghada', 'AlDhaheri', 'galdhaheri@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '56648088726', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(458, 'بطي سيف', 'القمزي', 'Butti370@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '65828036999', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(459, 'Nadia', 'Shalabi', 'nshamishalabi65@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '45031236117', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(460, 'Huda', 'Al Khoori', 'ad.hk1122@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '40968324976', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(461, 'Noora', 'Almazrouei', 'almazrouei.92@hotmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '58148403451', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(462, 'Said', 'Omar', 'farroozawwad85@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '46175107801', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(463, 'Radhwan', 'Alhosani', 'radhwan65@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '63429204765', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(464, 'Saleh', 'Alj', 'Khuloodsaleh85@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '4540449090', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(465, 'Azza', 'AlDhahri', 'azza85aldhahri@icloud.com', NULL, NULL, NULL, NULL, 'pending', NULL, '59289988461', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(466, 'test', 'name', 'Eman894.aa@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '2322750594', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(467, 'Mubashir', 'Raja', 'mubasharraja1744153@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '76110982415', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(468, 'mutal', 'ali', 'mtalali@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '12460553229', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(469, 'usam ', 'khan', 'usama@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '52503532251', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(470, 'kam', 'khan', 'kamran@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '24768896158', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(471, 'ali', 'khan', 'alikhan@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '1486290687', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(472, 'sajad', 'khan', 'sajad@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '81400228715', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(473, 'umar', 'khan', 'umar@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '30973556621', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(474, 'ali', 'khan', 'alikhan3@gmil.com', NULL, NULL, NULL, NULL, 'pending', NULL, '21516894562', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(475, 'yad', 'shah', 'yad@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '17163778351', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(476, 'rawaid', 'khan', 'rawaid@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '31128747156', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(477, 'rafa', 'khan', 'raffa@gamil.com', NULL, NULL, NULL, NULL, 'pending', NULL, '22569732713', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(478, 'raffi', 'khan', 'raffi@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '21092608237', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(479, 'sohail', 'khan', 'sohail@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '51602716192', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(480, 'umair', 'kha', 'umair@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '69227967828', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(481, 'sadam', 'hussain', 'sadam@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '1336620469', NULL, '0', 0, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-10 15:59:01'),
(482, 'tauseef', 'choohan', 'tauseefchoohan0401@gmail.com', NULL, '$2y$12$ENfndPPwy8ywJOU5FWj.dOneKp2BxzPocwm3CCSaRfRiuII06p2BW', '2025-07-16 15:36:41', '2025-07-16 15:21:42', 'active', NULL, '32151363453', NULL, '0', 1, 0, 0, '0', 1, '2025-07-10 15:59:01', NULL, '2025-07-10 15:59:01', '2025-07-16 15:21:42'),
(483, 'test', 'user', 'user@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '12345869975', NULL, '0', 0, 0, 0, '0', 1, '2025-07-11 16:28:57', NULL, '2025-07-11 16:28:57', '2025-07-11 16:29:45'),
(484, 'test1', 'tester', 'test1@gmail.com', NULL, NULL, NULL, NULL, 'active', NULL, '48330737798', NULL, '0', 0, 0, 0, '0', 1, '2025-07-11 16:28:57', NULL, '2025-07-11 16:28:57', '2025-07-11 16:41:04'),
(485, 'test2', 'test2', 'test2@gmail.com', NULL, NULL, NULL, NULL, 'active', NULL, '69836175887', NULL, '0', 0, 500, 400, '0', 1, '2025-07-11 16:56:34', NULL, '2025-07-11 16:56:34', '2025-07-11 16:57:10'),
(486, 'test3', 'tester3', 'testd3@gmail.com', NULL, NULL, NULL, NULL, 'active', NULL, '40137354418', NULL, '0', 1, 0, 1500, '0', 1, '2025-07-11 17:55:44', NULL, '2025-07-11 17:55:44', '2025-07-16 13:31:54'),
(487, 'iqbal', 'khan', 'iqbl@gmail.com', NULL, NULL, NULL, NULL, 'pending', NULL, '46422197258', NULL, '0', 0, 0, 0, '0', 1, '2025-07-16 13:52:06', NULL, '2025-07-16 13:52:06', '2025-07-16 13:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE `user_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `linked_user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_supports`
--

CREATE TABLE `user_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `help_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_supports`
--

INSERT INTO `user_supports` (`id`, `user_id`, `help_description`, `created_at`, `updated_at`) VALUES
(1, 482, 'ffdsffsdf fdfsdfsd fdfdfddd', '2025-07-16 15:23:31', '2025-07-16 15:23:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_qr_token_unique` (`qr_token`);

--
-- Indexes for table `user_links`
--
ALTER TABLE `user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_links_user_id_linked_user_id_unique` (`user_id`,`linked_user_id`),
  ADD KEY `user_links_linked_user_id_foreign` (`linked_user_id`);

--
-- Indexes for table `user_supports`
--
ALTER TABLE `user_supports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_supports_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_supports`
--
ALTER TABLE `user_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_links`
--
ALTER TABLE `user_links`
  ADD CONSTRAINT `user_links_linked_user_id_foreign` FOREIGN KEY (`linked_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_links_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_supports`
--
ALTER TABLE `user_supports`
  ADD CONSTRAINT `user_supports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
