-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2025 at 12:48 AM
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_otp:15', 'i:1;', 1749066255),
('laravel_cache_otp:15:timer', 'i:1749066255;', 1749066255),
('laravel_cache_otp:155', 'i:1;', 1749060791),
('laravel_cache_otp:155:timer', 'i:1749060791;', 1749060791),
('laravel_cache_otp:163', 'i:1;', 1749056206),
('laravel_cache_otp:163:timer', 'i:1749056206;', 1749056206),
('laravel_cache_otp:166:timer', 'i:1748563905;', 1748563905),
('laravel_cache_otp:168', 'i:1;', 1748564259),
('laravel_cache_otp:168:timer', 'i:1748564259;', 1748564259),
('laravel_cache_otp:169', 'i:1;', 1748562140),
('laravel_cache_otp:169:timer', 'i:1748562140;', 1748562140),
('laravel_cache_otp:170', 'i:2;', 1749065023),
('laravel_cache_otp:170:timer', 'i:1749065023;', 1749065023),
('laravel_cache_otp:173', 'i:1;', 1749065107),
('laravel_cache_otp:173:timer', 'i:1749065107;', 1749065107),
('laravel_cache_otp:25', 'i:1;', 1749073876),
('laravel_cache_otp:25:timer', 'i:1749073876;', 1749073876);

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"5ef36c41-1c97-44f2-8563-27396c3f0816\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748558280,\"delay\":null}', 0, NULL, 1748558280, 1748558280),
(2, 'default', '{\"uuid\":\"44178c53-4529-4a1e-be29-e07a0a953198\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748558380,\"delay\":null}', 0, NULL, 1748558380, 1748558380),
(3, 'default', '{\"uuid\":\"d374f27b-b33c-4275-9062-c76966615b2c\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748558434,\"delay\":null}', 0, NULL, 1748558434, 1748558434),
(4, 'default', '{\"uuid\":\"f3a0ff19-2af6-44ed-9f9d-a6247482a450\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748558583,\"delay\":null}', 0, NULL, 1748558583, 1748558583),
(5, 'default', '{\"uuid\":\"9595ec49-6fab-4771-a751-3acd7dbda7cf\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748558701,\"delay\":null}', 0, NULL, 1748558701, 1748558701),
(6, 'default', '{\"uuid\":\"51c23e5b-b9f3-46ca-a3bc-a0098e2e412a\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748559119,\"delay\":null}', 0, NULL, 1748559119, 1748559119),
(7, 'default', '{\"uuid\":\"c9a227cd-9c92-42a7-a511-b508f98bcab6\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748559881,\"delay\":null}', 0, NULL, 1748559881, 1748559881),
(8, 'default', '{\"uuid\":\"973fddfb-82a4-4c5a-9e5f-a1c300498379\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748559943,\"delay\":null}', 0, NULL, 1748559943, 1748559943),
(9, 'default', '{\"uuid\":\"6a834ea4-a1db-4b0c-aab9-3b3e55d6f6ba\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748559978,\"delay\":null}', 0, NULL, 1748559978, 1748559978),
(10, 'default', '{\"uuid\":\"9ae151e4-ff23-4967-9f92-bc92c5d97a41\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748559983,\"delay\":null}', 0, NULL, 1748559983, 1748559983),
(11, 'default', '{\"uuid\":\"b6ad4340-ab5f-4aea-8567-c668f353f6ec\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748560058,\"delay\":null}', 0, NULL, 1748560058, 1748560058),
(12, 'default', '{\"uuid\":\"d9be7a10-6a12-4ea4-acf3-b3809059dc17\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748560213,\"delay\":null}', 0, NULL, 1748560213, 1748560213),
(13, 'default', '{\"uuid\":\"699d516f-f6b7-49d1-9ea4-bd38a272540d\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748561097,\"delay\":null}', 0, NULL, 1748561097, 1748561097),
(14, 'default', '{\"uuid\":\"1c05bd5d-682f-405f-afc9-7dd65032aa15\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748564572,\"delay\":null}', 0, NULL, 1748564572, 1748564572),
(15, 'default', '{\"uuid\":\"6114ca58-801a-4682-9518-6e0ca17e664b\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566458,\"delay\":null}', 0, NULL, 1748566458, 1748566458),
(16, 'default', '{\"uuid\":\"34faa6bf-8bcc-4e86-9fe2-2d0d16b2c29e\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566462,\"delay\":null}', 0, NULL, 1748566462, 1748566462),
(17, 'default', '{\"uuid\":\"bdafb6dc-bb63-4cdb-9b92-b304d818e35f\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566464,\"delay\":null}', 0, NULL, 1748566464, 1748566464),
(18, 'default', '{\"uuid\":\"b673e5d5-567f-4352-8882-f4a9a587cbc7\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566466,\"delay\":null}', 0, NULL, 1748566466, 1748566466),
(19, 'default', '{\"uuid\":\"555bb556-5c2c-4e86-86ec-273441560e9e\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566546,\"delay\":null}', 0, NULL, 1748566546, 1748566546),
(20, 'default', '{\"uuid\":\"0333e3ef-28d1-4f72-92cb-f21476620fc6\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566549,\"delay\":null}', 0, NULL, 1748566549, 1748566549),
(21, 'default', '{\"uuid\":\"79f8fb0b-3f34-4a7b-a168-6fafc5e861f7\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566550,\"delay\":null}', 0, NULL, 1748566550, 1748566550),
(22, 'default', '{\"uuid\":\"0afe9f7c-fb1b-49f1-9fdc-866ec84c8845\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566655,\"delay\":null}', 0, NULL, 1748566655, 1748566655),
(23, 'default', '{\"uuid\":\"f4eef04e-3638-46de-ac40-5e32064385c8\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566658,\"delay\":null}', 0, NULL, 1748566658, 1748566658),
(24, 'default', '{\"uuid\":\"0bc0cf42-1038-4c0e-ba3b-e4b46da3f613\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566659,\"delay\":null}', 0, NULL, 1748566659, 1748566659),
(25, 'default', '{\"uuid\":\"ebaf1f42-cc01-4250-b20d-5cc38d97d0d8\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748566663,\"delay\":null}', 0, NULL, 1748566663, 1748566663),
(26, 'default', '{\"uuid\":\"89c5624b-3efd-44a1-aaea-225116c3c12c\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748623615,\"delay\":null}', 0, NULL, 1748623615, 1748623615),
(27, 'default', '{\"uuid\":\"56e011ca-7aff-4319-bdff-aa51596303f4\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748626013,\"delay\":null}', 0, NULL, 1748626013, 1748626013),
(28, 'default', '{\"uuid\":\"210f262c-4794-403c-9c1c-06688ece65f1\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748626212,\"delay\":null}', 0, NULL, 1748626212, 1748626212),
(29, 'default', '{\"uuid\":\"cc5c96aa-3468-40ae-a18f-3aabc9e204ab\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748626385,\"delay\":null}', 0, NULL, 1748626385, 1748626385),
(30, 'default', '{\"uuid\":\"71363bbf-af57-4cb3-9b9c-708fbbe54fbb\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748630702,\"delay\":null}', 0, NULL, 1748630702, 1748630702),
(31, 'default', '{\"uuid\":\"79173b1a-b113-49b9-b494-c109930cc993\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748630749,\"delay\":null}', 0, NULL, 1748630749, 1748630749),
(32, 'default', '{\"uuid\":\"8c65196e-f52a-434b-9037-cf583749e287\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1748649383,\"delay\":null}', 0, NULL, 1748649383, 1748649383);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `type`, `attachment`, `is_seen`, `seen_at`, `status`, `sender_deleted`, `receiver_deleted`, `created_at`, `updated_at`) VALUES
(1, 161, 168, 'fdfd', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-29 19:54:18', '2025-05-29 19:54:18'),
(2, 161, 168, 'fdfd', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-29 19:54:22', '2025-05-29 19:54:22'),
(3, 161, 168, 'fdfd', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-29 19:54:24', '2025-05-29 19:54:24'),
(4, 161, 168, 'fdfd', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-29 19:54:26', '2025-05-29 19:54:26'),
(5, 161, 169, 'fdfd', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-29 19:55:46', '2025-05-29 19:55:46'),
(6, 161, 169, 'fdfd', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-29 19:55:49', '2025-05-29 19:55:49'),
(7, 161, 169, 'fdfd', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-29 19:55:50', '2025-05-29 19:55:50'),
(8, 168, 161, 'fdfd', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-29 19:57:35', '2025-05-29 19:57:35'),
(9, 168, 161, 'fdfd', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-29 19:57:38', '2025-05-29 19:57:38'),
(10, 168, 161, 'fdfd', 'text', NULL, 0, NULL, 'active', 1, 0, '2025-05-29 19:57:39', '2025-05-30 14:04:30'),
(11, 168, 161, 'fdfd', 'text', NULL, 0, NULL, 'active', 1, 0, '2025-05-29 19:57:43', '2025-05-30 13:14:07'),
(12, 168, 163, 'Today Message', 'text', NULL, 0, NULL, 'active', 0, 0, '2025-05-30 11:46:52', '2025-05-30 11:46:52'),
(13, 168, 163, 'fdfdfdffdf delted\r\n', 'file', '[\"chat_uploads\\/oSyrYl7iFDutZ31jpLHvEb48IdQlauY4g8wBFGfC.jpg\"]', 0, NULL, 'active', 0, 0, '2025-05-30 12:26:53', '2025-05-30 14:06:54'),
(14, 168, 163, NULL, 'file', '[\"chat_uploads\\/WboAWkYTBSzdZULSetaheJQD4ABKDoAAHx4tw85q.jpg\",\"chat_uploads\\/3G0SaqWNuf30u90Cx1HQrNbNg16f52Wk2uxLS1UB.jpg\",\"chat_uploads\\/B9OZG1oPspBT0xQ4DirdbszowapDVsPNRoROWfB3.jpg\"]', 1, NULL, 'active', 1, 0, '2025-05-30 12:30:12', '2025-05-30 12:41:15'),
(15, 168, 163, 'Today Message', 'file', '[\"chat_uploads\\/3u9zb4R0258eTd8RzdLhsaW7TUkv8onD3AAFCTiq.jpg\",\"chat_uploads\\/LrABCeNA4MSB8UTpDgvKsXRW9vQkJVscxLYmRdOk.jpg\",\"chat_uploads\\/k7wt4oG4dMBAsmIpxN8UxG2dDAP6om1is0v3Kyt1.jpg\"]', 0, NULL, 'active', 0, 0, '2025-05-30 12:33:05', '2025-05-30 12:33:05'),
(16, 163, 168, 'seennn testniig  message\r\n\r\n', 'text', NULL, 1, '2025-06-02 13:05:22', 'active', 0, 0, NULL, '2025-06-02 13:05:22'),
(17, 168, 163, 'Today Message', 'file', '[\"chat_uploads\\/gtTVrZByiGI3FTUDYUPurpk394Lv6ufNX4QYs3Rb.jpg\",\"chat_uploads\\/brriJ9XGxJG4qxP5FEodNIyqEK829nuEkmerq97k.jpg\",\"chat_uploads\\/0KwOd4hdahFbxuQrjPSHbVTDDbdfQaN5mKqV7LT3.jpg\"]', 0, NULL, 'active', 0, 0, '2025-05-30 13:45:02', '2025-05-30 13:45:02'),
(18, 168, 163, 'Today Message', 'file', '[\"chat_uploads\\/5nyOImGRS50IqDO7rgvlPEN7YKWmS5hpGDEZrs30.jpg\",\"chat_uploads\\/Bf4ui5Shvn8pse2kbDCge0Kz5uzAhy3VNppw5dFB.jpg\",\"chat_uploads\\/DAuJYXV4Orz96fFoDapy4ZY2jk0QJF9kXWBvkVGG.jpg\"]', 0, NULL, 'active', 0, 0, '2025-05-30 13:45:49', '2025-05-30 13:45:49'),
(19, 168, 163, 'Today Message ssdsds', 'file', '[\"chat_uploads\\/RC6RTQbbwM8U4rTfm0bEkqzc5leCedKyYD0cgDE4.jpg\",\"chat_uploads\\/GVIVEOI0x1SQlOXRsZUAdENIffWAjKg5C4YVNLle.jpg\",\"chat_uploads\\/iyhluPMot6LWPdQhD933UfJ5xYRsSP18w7r9s8NV.jpg\"]', 0, NULL, 'active', 0, 0, '2025-05-30 18:56:23', '2025-05-30 18:56:23');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_27_171647_create_personal_access_tokens_table', 2),
(5, '0001_01_01_000000_create_users_table1111', 3),
(6, '000001_001_01_0000001_create_user_table', 4),
(7, '2025_05_28_004047_create_user_links_table', 5),
(8, '2025_05_29_190602_create_messages_table', 6),
(9, '2025_05_29_192230_create_messages_table', 7),
(10, '2025_05_30_005134_create_messages_table', 8),
(11, '2025_06_02_213243_create_payments_table', 9);

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
(4, 'App\\Models\\User', 164, 'auth_token', 'b457d725c1d0146aac5adb224ec36e647435500136c74d7027c178dc1db46a48', '[\"*\"]', '2025-05-28 16:25:40', NULL, '2025-05-28 15:52:19', '2025-05-28 16:25:40'),
(5, 'App\\Models\\User', 163, 'auth_token', 'c07cfd93f2bd6f59d2e348df0e39b29ff8b1b32639758abdeef5a111f88d646a', '[\"*\"]', '2025-05-28 16:47:06', NULL, '2025-05-28 16:30:18', '2025-05-28 16:47:06'),
(6, 'App\\Models\\User', 169, 'auth_token', '9afe1a6ea3dfadfad1c2fab9813bc795d07cf9902aa9ddc0ad1e19bfc5432adc', '[\"*\"]', '2025-05-28 18:07:43', NULL, '2025-05-28 16:58:38', '2025-05-28 18:07:43'),
(8, 'App\\Models\\User', 151, 'auth_token', '74442adbbeb2817c6ccff39ccee630321d5e03bf98086daff0436e20ba46b40f', '[\"*\"]', '2025-05-29 11:49:53', NULL, '2025-05-29 11:45:13', '2025-05-29 11:49:53'),
(9, 'App\\Models\\User', 161, 'auth_token', '670dc8b18a4d2b7ac24dfcaee6a098082a94f7eff6fa88b93906cfbfdf87db7e', '[\"*\"]', '2025-05-29 17:19:29', NULL, '2025-05-29 11:58:55', '2025-05-29 17:19:29'),
(10, 'App\\Models\\User', 161, 'auth_token', '3697d90e17062b1883c706d470654c3b0b05c5cebe1193e5c8db171a4879375e', '[\"*\"]', '2025-05-29 18:39:02', NULL, '2025-05-29 17:23:55', '2025-05-29 18:39:02'),
(11, 'App\\Models\\User', 163, 'auth_token', '57d5744d222c1a59ee6877ac071a4fc606cfa001547981b1e2314bc015de297a', '[\"*\"]', NULL, NULL, '2025-05-29 19:06:51', '2025-05-29 19:06:51'),
(13, 'App\\Models\\User', 168, 'auth_token', 'fcc9b0173a188c876a53e998f02fbcb478a182ec9ed8c5411a805556e0b589aa', '[\"*\"]', NULL, NULL, '2025-05-29 19:17:01', '2025-05-29 19:17:01'),
(14, 'App\\Models\\User', 168, 'auth_token', 'ddffa9e66779cb6fd5d520382073374bb59264736b64237696c22f3acc3a5c38', '[\"*\"]', '2025-05-29 19:21:40', NULL, '2025-05-29 19:18:04', '2025-05-29 19:21:40'),
(15, 'App\\Models\\User', 168, 'auth_token', 'ef1132e61f9762ec82af6bbdffc6a5d53624ee2e8128862905103ba29581088b', '[\"*\"]', '2025-05-29 19:22:52', NULL, '2025-05-29 19:22:42', '2025-05-29 19:22:52'),
(16, 'App\\Models\\User', 161, 'auth_token', 'bb4130e13bcc1dcb66cbec98fffc8917284b3047b08703c30f93e118f445370b', '[\"*\"]', NULL, NULL, '2025-05-29 19:24:31', '2025-05-29 19:24:31'),
(17, 'App\\Models\\User', 161, 'auth_token', '59fb988fb3e7827b7970f6b821419ce3ff42d4489b215db175f03b4a109e1c8a', '[\"*\"]', '2025-05-29 19:56:20', NULL, '2025-05-29 19:25:11', '2025-05-29 19:56:20'),
(18, 'App\\Models\\User', 168, 'auth_token', '8fc683974ecaf9f69c75249a930cc367806d00728ede46f4f925b2e4ac6b7376', '[\"*\"]', '2025-05-30 19:25:32', NULL, '2025-05-29 19:57:15', '2025-05-30 19:25:32'),
(19, 'App\\Models\\User', 168, 'auth_token', '8f61e11a72f540ca57f0e44992e0ace74a8f680af4531dc7bed85c5bd526707b', '[\"*\"]', '2025-06-02 12:49:31', NULL, '2025-06-02 11:40:19', '2025-06-02 12:49:31'),
(21, 'App\\Models\\User', 168, 'auth_token', 'e965426a5a165661ba54989559014901606cd1afae2f507f32d375f934669400', '[\"*\"]', NULL, NULL, '2025-06-02 13:03:05', '2025-06-02 13:03:05'),
(22, 'App\\Models\\User', 168, 'auth_token', 'e9a89daaab0fad54ac7720450adb2b5aa5b3db3140bcb84859714fb79c1df6ca', '[\"*\"]', NULL, NULL, '2025-06-02 13:03:32', '2025-06-02 13:03:32'),
(23, 'App\\Models\\User', 168, 'auth_token', 'aed330ac82c89ab861eb9dc17cd1946943f5fdca175f779c97d1501916310ad1', '[\"*\"]', '2025-06-02 16:25:47', NULL, '2025-06-02 13:03:48', '2025-06-02 16:25:47'),
(24, 'App\\Models\\User', 168, 'auth_token', '8871c7e635d34fa448bba3f6da58f27d8a8ff9f1ec833fe7e0c94ae16c52dc79', '[\"*\"]', NULL, NULL, '2025-06-04 11:38:05', '2025-06-04 11:38:05'),
(25, 'App\\Models\\User', 23, 'auth_token', '99e12663b08a9aedec1a1a7ab7780f07e81b5440d5e25c8317b88b73c9bef0c0', '[\"*\"]', NULL, NULL, '2025-06-04 11:39:28', '2025-06-04 11:39:28'),
(26, 'App\\Models\\User', 37, 'auth_token', 'e6044f2891c8527365cbbe888978c16bc6f1a6fc56f891ae2159b55866884644', '[\"*\"]', NULL, NULL, '2025-06-04 11:40:37', '2025-06-04 11:40:37'),
(27, 'App\\Models\\User', 37, 'auth_token', 'adc8d6014a5bbda4960e40f54de5c10ea42a0a4a553668e5bc216c9d1bcb9105', '[\"*\"]', NULL, NULL, '2025-06-04 11:46:47', '2025-06-04 11:46:47'),
(28, 'App\\Models\\User', 37, 'auth_token', 'c110d800956e3c423b8659bdf89787a060de02fb680bbb4ba906eefee918d462', '[\"*\"]', NULL, NULL, '2025-06-04 11:48:07', '2025-06-04 11:48:07'),
(29, 'App\\Models\\User', 145, 'auth_token', 'c84cff49cc830e554a32cb0fa1b3451c0abfe801cf0873f66d471d1ad5058573', '[\"*\"]', NULL, NULL, '2025-06-04 11:49:17', '2025-06-04 11:49:17'),
(31, 'App\\Models\\User', 152, 'auth_token', '5cceffa022eaef544c12d304303ea3e7b9da9ea6d60e29e9efb7a5dd2a464dcc', '[\"*\"]', '2025-06-04 12:46:10', NULL, '2025-06-04 11:53:21', '2025-06-04 12:46:10'),
(32, 'App\\Models\\User', 168, 'auth_token', '62bd2208afd931af33f15c01503eea442af1fb7df36c3f3d6244deb540c24923', '[\"*\"]', NULL, NULL, '2025-06-04 12:20:16', '2025-06-04 12:20:16'),
(33, 'App\\Models\\User', 155, 'auth_token', '675d4829fa66dd67374822bc00fa6d639925967eb63e5cda413eeace1eef2d12', '[\"*\"]', NULL, NULL, '2025-06-04 13:12:22', '2025-06-04 13:12:22'),
(34, 'App\\Models\\User', 155, 'auth_token', '7a7810c3d04dce30678c2075e09415e6004c8f33612b8af56abd824a311f30df', '[\"*\"]', NULL, NULL, '2025-06-04 13:14:04', '2025-06-04 13:14:04'),
(35, 'App\\Models\\User', 173, 'auth_token', 'c53f7a5957455f6ca04d3730870558b2b5f5627120a528c5fb81c2d7ef038366', '[\"*\"]', NULL, NULL, '2025-06-04 13:22:16', '2025-06-04 13:22:16'),
(36, 'App\\Models\\User', 173, 'auth_token', '3013d8cdcd321f58761828b41f6e30a78b3613e12b9004b6f2291f54ccedb8c4', '[\"*\"]', NULL, NULL, '2025-06-04 13:22:52', '2025-06-04 13:22:52'),
(37, 'App\\Models\\User', 173, 'auth_token', '9de762569628c358abf24adb94ed6447eb1ae215379a0e2579b7613e5905ffa3', '[\"*\"]', NULL, NULL, '2025-06-04 13:22:57', '2025-06-04 13:22:57'),
(38, 'App\\Models\\User', 173, 'auth_token', '673f66cb9813849de378cdca1200657891ff7629832673b3a347926d6e89ab3e', '[\"*\"]', NULL, NULL, '2025-06-04 13:24:25', '2025-06-04 13:24:25'),
(39, 'App\\Models\\User', 173, 'auth_token', '0683d5a96565094f8abea981cb82f26a47bbb85871f4835e4a3b0452d3a64567', '[\"*\"]', NULL, NULL, '2025-06-04 13:24:59', '2025-06-04 13:24:59'),
(40, 'App\\Models\\User', 173, 'auth_token', 'e7a23c83b77e654118abd827a5fa060c3dd860fb42e054e095f6c3be75c0f5c7', '[\"*\"]', NULL, NULL, '2025-06-04 13:26:10', '2025-06-04 13:26:10'),
(41, 'App\\Models\\User', 173, 'auth_token', '9262e3e35a20ecb02e7b61f811ba74d37689aab959a0fc3d53831b009b5da072', '[\"*\"]', NULL, NULL, '2025-06-04 13:28:59', '2025-06-04 13:28:59'),
(42, 'App\\Models\\User', 170, 'auth_token', '4eed1a177d1e54625cd592905ac319e264a3755b464ee8bdd44f42c89dd3b59b', '[\"*\"]', NULL, NULL, '2025-06-04 13:36:33', '2025-06-04 13:36:33'),
(43, 'App\\Models\\User', 170, 'auth_token', '433f8ede3dd502a55491baa869eabc1a450aae2acf3414e43bcfb6edaa8fd411', '[\"*\"]', '2025-06-04 17:18:29', NULL, '2025-06-04 13:36:58', '2025-06-04 17:18:29'),
(44, 'App\\Models\\User', 173, 'auth_token', 'f9af21ea738dcb9a7054a6ed7ef7fb3d6160b5f00f7d69da87c68920ab34ee24', '[\"*\"]', NULL, NULL, '2025-06-04 13:46:21', '2025-06-04 13:46:21'),
(45, 'App\\Models\\User', 173, 'auth_token', '0baabafb68766897c634a7c3db33ab9f918ec6e219e5ae4534718bc274120939', '[\"*\"]', NULL, NULL, '2025-06-04 13:50:02', '2025-06-04 13:50:02'),
(46, 'App\\Models\\User', 173, 'auth_token', '2560d533b3c377fa7206e4caa4d528a25f7cdb1ee3bdf48950036d8fd7e8302f', '[\"*\"]', NULL, NULL, '2025-06-04 13:52:06', '2025-06-04 13:52:06'),
(47, 'App\\Models\\User', 15, 'auth_token', '4509c78aab41f15df1ba275d61569c42025390ad5578493b50ba097de63188c9', '[\"*\"]', NULL, NULL, '2025-06-04 14:43:30', '2025-06-04 14:43:30'),
(48, 'App\\Models\\User', 155, 'auth_token', '173d12ab0c43dab06c1e3a425db1685c58eadb1a236e43f7be7f343c826053cc', '[\"*\"]', '2025-06-04 16:47:18', NULL, '2025-06-04 14:58:12', '2025-06-04 16:47:18'),
(49, 'App\\Models\\User', 15, 'auth_token', 'a8391d2c5e7b77d2d99860f01d56090160c1c67a82828f19acf238770887b44b', '[\"*\"]', '2025-06-04 16:33:13', NULL, '2025-06-04 15:02:22', '2025-06-04 16:33:13'),
(50, 'App\\Models\\User', 15, 'auth_token', 'f3a670d10f293a0687e5fc05da3614228acd99bd2b776f68045e01fc20d569d8', '[\"*\"]', '2025-06-04 17:03:41', NULL, '2025-06-04 16:55:39', '2025-06-04 17:03:41'),
(51, 'App\\Models\\User', 155, 'auth_token', 'f932686fc238f150aeb2ebc8f9206fdd2ad84a3bb6f73e53e6751389768d3d7c', '[\"*\"]', NULL, NULL, '2025-06-04 17:09:24', '2025-06-04 17:09:24'),
(52, 'App\\Models\\User', 15, 'auth_token', 'ce9adce1bf9845e1582dcd75a91824cf9303550fab4554d465253ed7b3f412ed', '[\"*\"]', '2025-06-04 17:09:58', NULL, '2025-06-04 17:09:48', '2025-06-04 17:09:58'),
(53, 'App\\Models\\User', 15, 'auth_token', '9bfb6b99d34e90070c8a0e18232982977dbe2adc79f12f7f748a7226c5d7f99c', '[\"*\"]', NULL, NULL, '2025-06-04 17:10:12', '2025-06-04 17:10:12'),
(54, 'App\\Models\\User', 15, 'auth_token', 'ffdc32bff3c1b221485e54b69771eb4eb3e18cc9e7c95ab4ab6e726aec055180', '[\"*\"]', NULL, NULL, '2025-06-04 17:11:26', '2025-06-04 17:11:26'),
(55, 'App\\Models\\User', 15, 'auth_token', '6e19ffb6a8a00b793998281f7d362dcdf9057036043d7e392c33aa3df0e29c99', '[\"*\"]', NULL, NULL, '2025-06-04 17:11:54', '2025-06-04 17:11:54'),
(56, 'App\\Models\\User', 15, 'auth_token', 'e56c808f8838ecfd8ac18d39c2774be60bded54e1c95595ac72595ac6c4821a2', '[\"*\"]', NULL, NULL, '2025-06-04 17:17:06', '2025-06-04 17:17:06'),
(57, 'App\\Models\\User', 15, 'auth_token', 'fda98e5cdc31cae1bbaa83c02939750b7b6317cf742104658799412f26c15cd9', '[\"*\"]', '2025-06-04 17:19:32', NULL, '2025-06-04 17:17:14', '2025-06-04 17:19:32');

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
  `qr_token` varchar(255) DEFAULT NULL,
  `qr_code_link` varchar(255) DEFAULT NULL,
  `qr_code_status` varchar(255) NOT NULL DEFAULT 'inactive',
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `message_limit` int(11) NOT NULL DEFAULT 500,
  `message_count` int(11) NOT NULL DEFAULT 0,
  `message_count_status` varchar(255) NOT NULL DEFAULT 'inactive',
  `user_status` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `otp`, `otp_expires_at`, `otp_last_sent_at`, `otp_status`, `profile_image`, `qr_token`, `qr_code_link`, `qr_code_status`, `is_paid`, `message_limit`, `message_count`, `message_count_status`, `user_status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(0, 'Arthur', 'Wilder', 'qudugu@mailinator.com', NULL, NULL, NULL, NULL, '0', NULL, 'tokendsds', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 13:52:01', NULL, '2025-05-27 13:52:01', '2025-05-27 13:52:01'),
(7, 'Ahmed zaky', 'Mohamed', 'ahmedzaki_18@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, 'fdfd', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:04:30', NULL, '2025-05-27 14:04:30', '2025-05-27 14:04:30'),
(9, 'جديدsaeed', 'المستخدمsaeed', 'momenahafrez@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:05:01', NULL, '2025-05-27 14:05:01', '2025-05-27 14:05:01'),
(15, 'shams', 'udeen', 'lateef.12@gmail.com', NULL, NULL, NULL, NULL, 'active', 'profile_images/K7qF7RL2cSNlzvAF46PCewF9SwtqR0W2n1keTGRm.jpg', '46301837', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:10:02', NULL, '2025-05-27 14:10:02', '2025-06-04 17:19:32'),
(17, 'Hana', 'Saleh', 'Hma__uae@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '63466181238', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:11:01', NULL, '2025-05-27 14:11:01', '2025-05-27 14:11:01'),
(19, 'Aysha', 'Alkaabi', 'ayshaalkaabi80@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '82850483990', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:12:01', NULL, '2025-05-27 14:12:01', '2025-05-27 14:12:01'),
(21, 'Maath', 'Alalawi', 'vrxr@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '65678043243', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:12:22', NULL, '2025-05-27 14:12:22', '2025-05-27 14:12:22'),
(23, 'Mohamed', 'Othman', 'mohamed.othman@nmc.ae', NULL, NULL, NULL, NULL, '', NULL, '9765261156', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:13:01', NULL, '2025-05-27 14:13:01', '2025-05-27 14:13:01'),
(25, 'jasem', 'Almarooqi', 'j.m.7@live.com', NULL, '$2y$12$dbz8mt80U9b4Q1ECtr.qVOlY55mbn4.dF0SHAsMt0z/4ZFqfvbpxG', '2025-06-04 17:05:16', '2025-06-04 16:50:16', 'pending', NULL, '23572778591', NULL, '0', 0, 0, 0, '0', '0', '2025-05-27 14:14:40', NULL, '2025-05-27 14:14:40', '2025-06-04 16:50:16'),
(27, 'خليفة محمد', 'العامري', 'khalifa4114@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '16470741690', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:15:01', NULL, '2025-05-27 14:15:01', '2025-05-27 14:15:01'),
(29, 'Nadia', 'Ali', 'nadiaa_hassan@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '78835111757', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:15:27', NULL, '2025-05-27 14:15:27', '2025-05-27 14:15:27'),
(31, 'سلطان', 'سعيد', 'nonylive@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:16:40', NULL, '2025-05-27 14:16:40', '2025-05-27 14:16:40'),
(33, 'Rafia', 'Rashid', 'mama.alnoaimi@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '33834877927', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:41', NULL, '2025-05-27 14:19:41', '2025-05-27 14:19:41'),
(34, 'محمد جمعه', 'المري', 'nada.alshihhe@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:41', NULL, '2025-05-27 14:19:41', '2025-05-27 14:19:41'),
(35, 'Ali', 'Alboom', 'ameerat_dubai@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:41', NULL, '2025-05-27 14:19:41', '2025-05-27 14:19:41'),
(36, 'imran', 'Almehairbi', 'm.67666ma@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '3ed12366-b617-4484-ab2e-dc048e6c10b0', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:41', NULL, '2025-05-27 14:19:41', '2025-05-28 19:59:26'),
(37, 'عبدالله', 'النيادي', 'ab1122a@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:41', NULL, '2025-05-27 14:19:41', '2025-05-27 14:19:41'),
(38, 'amani', 'fathi', 'amanifathi88@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:41', NULL, '2025-05-27 14:19:41', '2025-05-27 14:19:41'),
(39, 'Fatima', 'Ali', 'fofyeh84@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(40, 'Rasha', 'Sedhom', 'msrashasedhom@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(41, 'Um', 'Salha', 'um.salha@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(42, 'Abu Mohammed', 'Alameri', 'zaemuae2009@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(43, 'Fatima', 'Alhamadi', 'fatima.m.alhamadi@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(44, 'Hamd', 'Helal', 'aml_3mry@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(45, 'Az', 'Alhammadi', 'amalhammadi55@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '86293333096', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(46, 'Hedaya', 'Alkaabi', 'ghanem.mam@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '66251154271', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(47, 'ام نورة', 'المحفوظي', 'Eiman.alwheibi123@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '66824966128', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(48, 'mariam', 'alali', 'mmalali2016@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '39434503033', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(49, 'Roqaia', 'Alnaqbi', 'Tweety4r@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '62826691819', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(50, 'um', 'Saeed', 'mfh765@icloud.com', NULL, NULL, NULL, NULL, '', NULL, '38539902247', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(51, 'Mufleh', 'Al Ahbabi', 'ms6027@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '54143577771', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(52, 'Sulaiman', 'AlBlooshi', 'gtrs79@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '41158879152', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(53, 'Amna', 'Suliman', 'aamna.su.alamry@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '8200389245', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(54, 'Jameela', 'Almarzooqi', 'jamool.o@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '44439471610', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(55, 'Nada', 'Al Meqbaali', 'um_hazza@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(56, 'Eman', 'Alali', 'missbinuae@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(57, 'Salwa', 'Asban', 'uae_4e@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(58, 'Omar', 'Almarzooqi', 'joodee199@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(59, 'Abdelrahman', 'AlShuwaihi', 'bo3oouf@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(60, 'Asma', 'Al marzooqi', 'as-almrzoqi@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(61, 'Samar', 'Said', 'sum882@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(62, 'Hamda', 'Alfalahi', 'h.alfalahi100@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(63, 'Marwa', 'Omar', 'justme209312@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(64, 'Rafia', 'Rashid', 'mama.alnoaimi@gmaik.com', NULL, NULL, NULL, NULL, '', NULL, '90749803301', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(65, 'جديدsaeed', 'المستخدمsaeed', 'momenahfrez@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(66, 'Ahmed', 'Mounir', 'prence2004@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '7802598974', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(67, 'Fareed', 'Al Ali', 'alali92@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, '33866733564', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(68, 'Hasan', 'Alshamsi', 'binzayed@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, '24483452044', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(69, 'Ahmed', 'Alalawi', 'Ayshaas70@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '96025830994', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(70, 'Latifa', 'Mobarek', 'drmassefa@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '51539224834', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(71, 'Shamaa', 'Ali', 'shamsa2020@email.com', NULL, NULL, NULL, NULL, '', NULL, '37134372916', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(72, 'Abdulla al hammadi', 'Alhammadi', '5dowy.25@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '63717022632', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(73, 'Fareed', 'Al Ali', 'alali92@yahoi.com', NULL, NULL, NULL, NULL, '', NULL, '10194835866', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(74, 'Ahmed', 'A', 'amalalsuwaidi82@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '2037108236', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(75, 'mariam', 'Almansoori', 'mar111iam@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '98966417655', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(76, 'Amal', 'Ahmed', 'amalalsuwaidi82@gmai.com', NULL, NULL, NULL, NULL, '', NULL, '92245826054', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(77, 'Amani', 'Fathi', 'amanifathi88@gmail.com6', NULL, NULL, NULL, NULL, '', NULL, '7804778423', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(78, 'Eman', 'Alali', 'miss@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '66759323573', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(79, 'Mouza', 'Almheiri', 'mozakmm@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '45971624318', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(80, 'Noura', 'Al Blooshi', 'noon-201@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '15529586405', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(81, 'Aysha', 'A', 'aisha.2x@icloud.com', NULL, NULL, NULL, NULL, '', NULL, '75234891744', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(82, 'Ahmed', 'Amal', 'amalalsuwaiai82@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '33714396327', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(83, 'Sultan', 'AlAlawi', 'ssm99aa@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, '20656624024', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(84, 'Sultan', 'Al Alawi', 'salalawi@adnoc.ae', NULL, NULL, NULL, NULL, '', NULL, '52761277950', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(85, 'Khawla', 'Alhosaani', 'koka-79@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '90363159029', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(86, 'Raya', 'Salem', 'raya.aldahry@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '86357414338', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(87, 'Kamla', 'Alderei', 'kamlaalderei@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '81254199248', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(88, 'سالم', 'صالح', 'asmafarouk550@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '67927024114', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(89, 'Fatma', 'Alkaabi', 'Fatma_ma@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '64083653673', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(90, 'Um Shahin', 'Shahin', 'Alhosani.kh88@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '61252467160', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(91, 'MOHSEN', 'SHAMLAN', 'rornro@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '87620073131', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(92, 'Husain', 'Khalifa', 'gmc.ls502@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '19379415088', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(93, 'ibrahim', 'khalil', 'ibrim71@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, '38239132575', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(94, 'Alkaabi', 'Alkaabi', 'alkaabi502@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '2111352551', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(95, 'Ebrahim', 'Alblooshi', 'shaddad70@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '49770930671', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(96, 'Mohamed', 'Ali', 'malkaff20@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '2945376994', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(97, 'Khawla ahmed', 'Jameel', 'Kajameel@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '10435954731', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(98, 'Hana', 'Mohamed', 'Hana_uae1@outlook.com', NULL, NULL, NULL, NULL, '', NULL, '81120456951', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(99, 'Saoud', 'Alshamsi', 'silver.4889@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '74985820212', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(100, 'Amal', 'Alameri', 'Moooj30@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '49344312368', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(101, 'MOHAMED', 'ALKHOORI', 'makljz@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '22002015633', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(102, 'Reem', 'Jassem', 'reem.j_7@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '64796283444', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(103, 'Sultan', 'Almheiri', 'smka27@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, '49932545430', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(104, 'Ahmed', 'Al Mahmoud', 'abudhabi.2022@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '15375417307', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(105, 'Hamda', 'Alqubaisi', 'hamdaalqubais@hotmill.com', NULL, NULL, NULL, NULL, '', NULL, '27486761971', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(106, 'Talal', 'Alraeesi', 'raeesi_01@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '22811657531', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(107, 'Shamsa', 'AlMheiri', 'shams.ma.90@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '44424289416', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(108, 'Shifaa', 'Aleed', 'moazmoneer.mm@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '48563494664', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(109, 'Ahmad', 'Alhammadi', 'binali.ad@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '59845965972', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(110, 'Mohamed', 'sayed ahmed', 'mhussein202@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '16366198907', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(111, 'Moza', 'Alshamsi', 'uaegirl101@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '40756989849', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(112, 'Yousif', 'Aloufi', '8005535@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '12247238392', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(113, 'Abdulla', 'Faisal', 'laila.alshaiba@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '50264140932', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(114, 'Badeea', 'Rashid', 'alrashidbadeea@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '22335140740', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(115, 'K', 'H', 'khaawla.hamad@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '87542852606', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(116, 'Saif', 'Al Menhali', 'S.minhali@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '13317527585', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(117, 'Rashed', 'Aljasmi', 'h__almarzoqi@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '80388883378', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(118, 'Salah Ali yousif', 'Obaid', 'saalqaseer@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '93924603548', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(119, 'Mohamed', 'Alqubaisi', 'alqubaisi135@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '26346964759', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(120, 'Fatima', 'AlAmeri', 'um-bakheet@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '94196984530', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(121, 'Omar', 'Alzaabi', 'onmuae@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '29303900470', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(122, 'Aysha', 'AlMaazmi', 'aysha.almazmi@live.com', NULL, NULL, NULL, NULL, '', NULL, '97071127733', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(123, 'Talal', 'Alali', 'dro0ob_a_@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '70040663450', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(124, 'ALI', 'OMAR', 'LEHASHMI@GMAIL.COM', NULL, NULL, NULL, NULL, '', NULL, '47886383578', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(125, 'Um', 'Hazaa', 'umhazaa2008@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '64495932735', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(126, 'Ali', 'Darwish', 'ali.ahmed.darwish@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '12187358345', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(127, 'Aliya Al Nasi', 'Aliya.a.alnasi@gmail.com', 'aliya.a.alnasi@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '99370744013', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(128, 'Mohammed', 'Alhammadi', 'najwa_mohammed@icloud.com', NULL, NULL, NULL, NULL, '', NULL, '26320425931', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(129, 'Mohammed', 'Tamimi', 'layo0l@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '57796920882', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(130, 'Ibrahim', 'Almheiri', 'ibr811@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '53452786250', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(131, 'Shifaa', 'Aleef', 'shifaaaleed69@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '17840552720', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(132, 'Ali', 'Rashed', 'dxb_1983@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '98125807921', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(133, 'Maithah', 'Al ali', 'maithahalali@icloud.com', NULL, NULL, NULL, NULL, '', NULL, '49028548856', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(134, 'منى', 'الجنيبي', 'munaaljunabi416@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '56037583597', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(135, 'Mohamed', 'Alhammadi', 'm_ro7@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '66654294138', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(136, 'Sabah', 'Alhosani', 's_alemarat@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '25079789283', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(137, 'Reem', 'Ali', 'reem.shopp@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '50526321286', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(138, 'Amna', 'Alshehhi', 'amfbs.99@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '68173602895', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(139, 'Fatima', 'Alnaqbi', 'tampehjj@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '70701137475', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(140, 'Aseela', 'AlSaeedi', 'alsaeedi.aseela@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '81108985841', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(141, 'Y', 'Malik', 's.1502_@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '74845166195', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(142, 'Ahmed', 'Alshamsi', 'alshamsi2000.up@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '88111233491', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(143, 'Um mohamed', 'Alzaabi', 'ahalzaabi_@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '50153249206', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(144, 'Badria', 'Saeed', 'clouds_96@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '59205532868', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(145, 'Reem', 'Ali', 'reemm.uae@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '47846291236', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(146, 'Bader Aljunaibi', 'Aljunaibi', 'al-junaibiuae@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(147, 'Ghada', 'AlDhaheri', 'galdhaheri@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(148, 'بطي سيف', 'القمزي', 'Butti370@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(149, 'Nadia', 'Shalabi', 'nshamishalabi65@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(150, 'Huda', 'Al Khoori', 'ad.hk1122@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(151, 'khalil', 'khan', 'almazrouei.92@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-29 11:49:32'),
(152, 'Said', 'Omar', 'farroozawwad85@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '8b0771d1-50e2-434b-95ff-2c5732569232', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-06-04 12:46:12'),
(153, 'Radhwan', 'Alhosani', 'radhwan65@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(154, 'Saleh', 'Alj', 'Khuloodsaleh85@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(155, 'shams', 'khan', 'azza85aldhahri@icloud.com', NULL, NULL, NULL, NULL, 'active', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-06-04 16:18:11'),
(156, 'test', 'name', 'Eman894.aa@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(157, 'Mubashir', 'Raja', 'mubasharraja1744153@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(158, 'mutal', 'ali', 'mtalali@gmail.com', NULL, '$2y$12$mn1yDGkIvOIOzZf5VfbAQ.sJd8bK4nWdxGRv6eqQNiCkOhiwLqJNa', '2025-05-27 16:32:26', '2025-05-27 16:17:27', '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 16:17:27'),
(159, 'usam ', 'khan', 'usama@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(160, 'kam', 'khan', 'kamran@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(161, 'ali', 'khan', 'alikhan@gmail.com', NULL, NULL, NULL, NULL, 'active', NULL, '063c3bb9-e3f9-4dd5-a08b-c0006b6bebb0', NULL, '0', 0, 500, 67, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-29 19:55:50'),
(162, 'sajad', 'khan', 'sajad@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(163, 'umar', 'khan', 'umar@gmail.com', NULL, '$2y$12$bVf/sdmPPkX7bw.TAfZkluL.jg7mZu/YRZ4C/qXu4gToJm84EE.gK', '2025-06-04 12:10:46', '2025-06-04 11:55:46', 'pending', NULL, 'a7267344-5b09-4a47-9c5e-dc918345f61f', NULL, '0', 0, 0, 0, '0', '0', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-06-04 11:55:46'),
(164, 'ali', 'khan', 'abdulmutafdds5432d@gmail.com', NULL, '$2y$12$V.TtSfzu.loaTjSg3wHkA.XnQaJEnQaqOEI93r4KZGuc1s1PD6zQe', '2025-06-04 12:00:37', '2025-06-04 11:45:38', '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-06-04 11:45:38'),
(165, 'yad', 'shah', 'yad@gmail.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(166, 'rawaid', 'khan', 'rawaid@gmail.com', NULL, NULL, NULL, NULL, 'active', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-29 19:11:22'),
(167, 'rafa', 'khan', 'raffa@gamil.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:19:42', NULL, '2025-05-27 14:19:42', '2025-05-27 14:19:42'),
(168, 'shams', 'khan', 'raffi@gmail.com', NULL, NULL, NULL, NULL, 'active', 'profile_images/iyOYIlxmR5LiVudDJkK7Mw6HAEn4Gd9oLsSTmz0s.jpg', 'a4e9ffd6-a022-4da7-8b8f-1640f9fc35cb', NULL, '0', 0, 500, 22, '0', '1', '2025-05-27 14:32:01', NULL, '2025-05-27 14:32:01', '2025-05-30 18:56:23'),
(169, 'sohail', 'khan', 'sohail@gmail.com', NULL, '$2y$12$qVaZDG5BSPUbD3fpmEdXmOTrEfIO7NY7Sw/JqvLDpTUXrWgQ4qa1S', '2025-05-29 18:56:20', '2025-05-29 18:41:20', 'active', '                                                                                                            ', '70a57fea-fc5e-40fa-82ab-41b020154770', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 14:33:01', NULL, '2025-05-27 14:33:01', '2025-05-29 18:41:20'),
(170, 'shams', 'khan', 'umair@gmail.com', NULL, '$2y$12$gFTOzts.vpz9h0Qdn7g89uhQTZ0oho8qQMNFcNPKlWWyUdaAERXOC', '2025-06-04 14:38:07', '2025-06-04 14:23:08', 'pending', 'profile_images/6NSUU4knmDu5hEDb43xQNbUucanZUngKEVQBSAOY.jpg', '', NULL, '0', 0, 0, 0, '0', '0', '2025-05-27 15:49:02', NULL, '2025-05-27 15:49:02', '2025-06-04 17:18:29'),
(171, 'ali', 'khan', 'alikhan3@gmil.com', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '0', 0, 0, 0, '0', '1', '2025-05-27 16:30:01', NULL, '2025-05-27 16:30:01', '2025-05-27 16:30:01'),
(172, 'sadam', 'hussain', 'sadam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '30461552615', NULL, '0', 0, 0, 0, '0', '1', '2025-06-04 13:05:01', NULL, '2025-06-04 13:05:01', '2025-06-04 13:05:01'),
(173, 'iqbal', 'khan', 'iqbl@gmail.com', NULL, '$2y$12$qumc2W3Ne1Qr3JVD7xwUtetSXF4wWXlOiGrhTXX6ZD0JZUbqVtsXK', '2025-06-04 14:39:06', '2025-06-04 14:24:07', 'pending', NULL, '8768058656', NULL, '0', 0, 0, 0, '0', '0', '2025-06-04 13:08:02', NULL, '2025-06-04 13:08:02', '2025-06-04 14:24:07');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`id`, `user_id`, `linked_user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 169, 163, 'active', '2025-05-28 17:45:20', '2025-05-28 17:45:20'),
(2, 36, 163, 'active', '2025-05-28 18:11:35', '2025-05-28 18:11:35'),
(3, 36, 169, 'active', '2025-05-28 18:11:47', '2025-05-28 18:11:47'),
(4, 161, 163, 'active', '2025-05-29 12:01:09', '2025-05-29 12:01:09'),
(5, 161, 169, 'active', '2025-05-29 12:01:22', '2025-05-29 12:01:22'),
(6, 161, 36, 'active', '2025-05-29 12:01:41', '2025-05-29 12:01:41'),
(7, 168, 163, 'active', '2025-05-29 19:21:02', '2025-05-29 19:21:02'),
(8, 168, 161, 'active', '2025-05-29 19:21:10', '2025-05-29 19:21:10');

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
  ADD UNIQUE KEY `users_email_unique` (`email`);
ALTER TABLE `users` ADD FULLTEXT KEY `users_qr_token_unique` (`qr_token`);

--
-- Indexes for table `user_links`
--
ALTER TABLE `user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_links_user_id_linked_user_id_unique` (`user_id`,`linked_user_id`),
  ADD KEY `user_links_linked_user_id_foreign` (`linked_user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
