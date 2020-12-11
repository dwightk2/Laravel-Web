-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2020 at 06:56 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larion`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('166fcdf199b174450c02eb23758605aef46cbf292a48a44cc6389c8c6041d201be89947d1d56753c', 1, 1, NULL, '[]', 0, '2020-12-04 09:41:26', '2020-12-04 09:41:26', '2021-12-04 02:41:26'),
('187cc68666b3b311cbae3f12864f1649dd411b6c9c01333dbc2c89a120d355295b0f835b828018d7', 1, 1, NULL, '[]', 0, '2020-12-04 09:41:37', '2020-12-04 09:41:37', '2021-12-04 02:41:37'),
('29dbb1de9a5a5bc7db34265c75d68a212837b9efa8ff646290cbaf59433bf23c376123bc38fad5ae', 1, 1, NULL, '[]', 0, '2020-12-04 09:28:01', '2020-12-04 09:28:01', '2021-12-04 02:28:01'),
('29fe719538c1fd1c8a58a26301d642845da9ecef2c4594782079809323086b81ec03ee051908be66', 1, 1, NULL, '[]', 0, '2020-12-04 09:20:26', '2020-12-04 09:20:26', '2021-12-04 02:20:26'),
('2f1ee17b87e0fd937b19a0826d16afd46c691a3350f1b5a4e555828d8d578fa46f7104a2c66c7e0b', 1, 1, NULL, '[]', 0, '2020-12-05 01:11:16', '2020-12-05 01:11:16', '2021-12-04 18:11:16'),
('3eea064feb25e41ea98bfc1635f705163252381752301d68e8cac10044ef5cbce3e5c51d81f99cc9', 1, 1, NULL, '[]', 0, '2020-12-04 07:53:24', '2020-12-04 07:53:24', '2021-12-04 00:53:24'),
('6043c5f19d3a436025e9bbbd76b802f99e516b6e171099cf05a56b4cd4c67d30c09808e34342bab9', 1, 1, NULL, '[]', 0, '2020-12-04 09:41:18', '2020-12-04 09:41:18', '2021-12-04 02:41:18'),
('73a6355fa2e64df7b9d0ca0fe0d9d34bf56a5dd03a15224d1590d7836c435389ccd781fd73ffd456', 1, 1, NULL, '[]', 0, '2020-12-04 09:27:57', '2020-12-04 09:27:57', '2021-12-04 02:27:57'),
('ac6353184c1cf1739da05e2cdfbfc19f8659106679bd576cbf182a08ea63df4f2f4dd8c97cdab3ed', 1, 1, NULL, '[]', 0, '2020-12-05 01:11:11', '2020-12-05 01:11:11', '2021-12-04 18:11:11'),
('dbb7ea7a9665717d232095a6f3c728cd6394aa7511a641de157d8b3cd0f98b28bd5b906f247b64e0', 1, 1, NULL, '[]', 0, '2020-12-04 12:43:15', '2020-12-04 12:43:15', '2021-12-04 05:43:15'),
('df7bcc2c438226a3771e70f4db5744921cf48c3b44f32a2e8ba0f44963c0aacd79b1ffe26f37e570', 1, 1, NULL, '[]', 0, '2020-12-05 01:13:15', '2020-12-05 01:13:15', '2021-12-04 18:13:15'),
('f53c0a0052a8bf3cb6c03ee6885b3870937fb53ce5d7ee2a58e898c138894742dbe5203328989a0d', 1, 1, NULL, '[]', 0, '2020-12-05 07:54:51', '2020-12-05 07:54:51', '2021-12-05 00:54:51'),
('fedb0e90ffa487a3c6d98fb5c851c8917a9c79e6675e317ac2dc0e9b8a94a9e5e6e1381dc513ec07', 1, 1, NULL, '[]', 0, '2020-12-04 09:41:32', '2020-12-04 09:41:32', '2021-12-04 02:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Larion', 'zs4jnLeaBRI8Zq82RGMXWoyfKql7NqczDCMot5i9', 'users', 'http://localhost', 0, 1, 0, '2020-12-03 06:25:59', '2020-12-03 06:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0af0c010248e4e1be2e04ab81a38d667556b1f175ea550e5218abe84673b7abc54f2be1afc114f1e', '73a6355fa2e64df7b9d0ca0fe0d9d34bf56a5dd03a15224d1590d7836c435389ccd781fd73ffd456', 0, '2021-12-04 02:27:57'),
('18ed74f2d964a9cb15d96436b824bc208f98aad090b248e666a9ef3aaa3329ac27d3b93ca6f55b96', '166fcdf199b174450c02eb23758605aef46cbf292a48a44cc6389c8c6041d201be89947d1d56753c', 0, '2021-12-04 02:41:26'),
('205cf2f2b824b6ec27e3e0f13658e9f00051ec44d9796cd53452a5879f83f3d1fd0713fb4b0655f5', '3eea064feb25e41ea98bfc1635f705163252381752301d68e8cac10044ef5cbce3e5c51d81f99cc9', 0, '2021-12-04 00:53:24'),
('2628a8f3e2f0e2f01601d9a8bf54ce1bc7d371df1b47a61d296e1b69ef74e53c16e50df8aacb28c2', '2f1ee17b87e0fd937b19a0826d16afd46c691a3350f1b5a4e555828d8d578fa46f7104a2c66c7e0b', 0, '2021-12-04 18:11:16'),
('36042d2356fd2645ff9ce5053554c0d35ca50bde889f7e1d158fa2eb03bec1244acb31e971d184ef', '187cc68666b3b311cbae3f12864f1649dd411b6c9c01333dbc2c89a120d355295b0f835b828018d7', 0, '2021-12-04 02:41:37'),
('3dad0ed0dc8d3cdde76c819d7ab09de0c00605788731f7c7a3b153d445c545948e93545e6c3231b8', '6043c5f19d3a436025e9bbbd76b802f99e516b6e171099cf05a56b4cd4c67d30c09808e34342bab9', 0, '2021-12-04 02:41:18'),
('6a642fc6aa9383240bb87cf0ccca435ca5c63b0882b0188499307a710fcb3f97b0e979124ac40df4', 'fedb0e90ffa487a3c6d98fb5c851c8917a9c79e6675e317ac2dc0e9b8a94a9e5e6e1381dc513ec07', 0, '2021-12-04 02:41:32'),
('88752de885769701a875a71b3aeef1d30c34bfcd6a67a5b52e964e4c0812ae632768ed04bca88c22', 'ac6353184c1cf1739da05e2cdfbfc19f8659106679bd576cbf182a08ea63df4f2f4dd8c97cdab3ed', 0, '2021-12-04 18:11:12'),
('88e5fd36e1c3d10e69708e5eab9b466d2fc123e9f9f98516155a2a084261fa4d3a8a8c5b477f82ff', 'f53c0a0052a8bf3cb6c03ee6885b3870937fb53ce5d7ee2a58e898c138894742dbe5203328989a0d', 0, '2021-12-05 00:54:51'),
('908b9357d25bd8b4b545f2378b2f75c1419e45c95bccd7a30a1b8b952eddc65192474bbea87353b0', 'df7bcc2c438226a3771e70f4db5744921cf48c3b44f32a2e8ba0f44963c0aacd79b1ffe26f37e570', 0, '2021-12-04 18:13:15'),
('b5c5ab5ca545f9701361171d018af8418a76fa2787583cfbfebadaa0f7c92a0216d8ec09df94eb30', '29fe719538c1fd1c8a58a26301d642845da9ecef2c4594782079809323086b81ec03ee051908be66', 0, '2021-12-04 02:20:26'),
('d6ed20cac8e559fec224c98d54558d55b482b253fcebff66a546e7ff1f21f79555e42313bebb514a', 'dbb7ea7a9665717d232095a6f3c728cd6394aa7511a641de157d8b3cd0f98b28bd5b906f247b64e0', 0, '2021-12-04 05:43:15'),
('f27f1fb9d8afce5fc1a99982fa597715823e458a2e687d15d0fcf8b24b0f6749763e556d2323cebc', '29dbb1de9a5a5bc7db34265c75d68a212837b9efa8ff646290cbaf59433bf23c376123bc38fad5ae', 0, '2021-12-04 02:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dwight Koenning', 'dwight@dektech.ca', NULL, '$2y$10$R6Tr1p6KDDWl/pNbeDD6xO3SN/ZmGKMXVKIFJarEXDYUEixoOaHvu', NULL, '2020-12-04 07:45:09', '2020-12-04 07:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hero` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `villain` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
