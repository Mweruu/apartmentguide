-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 02:29 PM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'JVEVccHIalHLwIL41uMnOJDfC0p59ohS', 1, '2019-11-15 04:53:30', '2019-11-15 04:53:30', '2019-11-15 04:53:30'),
(2, 2, 'bUiPYBbscR6j5dhSlWSesCy0LEXp7LDG', 1, '2021-01-03 17:23:28', '2021-01-03 17:23:28', '2021-01-03 17:23:28'),
(3, 1, 'dtG3n9fA2nz5TPWNuYP1nCFwtfgtVY3Q', 1, '2021-01-12 20:51:55', '2021-01-12 20:51:55', '2021-01-12 20:51:55'),
(4, 1, 'j34UyDusAYW6Qv7W8R9Phy1eS7J6x7VH', 1, '2021-01-12 20:57:53', '2021-01-12 20:57:53', '2021-01-12 20:57:53'),
(5, 1, 'zybfCxjzArgxYwys3SFXJFr5GtrR4fVh', 1, '2021-04-15 01:12:40', '2021-04-15 01:12:40', '2021-04-15 01:12:40'),
(6, 1, 'CdxxFEhkLAEjMbXfwV0sGfYouD04RXxR', 1, '2021-04-18 09:20:14', '2021-04-18 09:20:14', '2021-04-18 09:20:14'),
(7, 1, '5QGfTcVcYiXHzILQHh84iziigUT1Asfo', 1, '2021-04-29 20:46:36', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(8, 1, 'b6OPzC5TBqVWQUjUE6MwNt1xW50BQCiq', 1, '2021-06-11 20:56:49', '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-20 23:40:26', '2021-11-20 23:40:26'),
(2, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-11-20 23:47:41', '2021-11-20 23:47:41'),
(3, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-21 00:11:46', '2021-11-21 00:11:46'),
(4, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":\"1\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties\\\",\\\"id\\\":2,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Properties\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/agents\\\",\\\"id\\\":3,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Agents\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"id\\\":4,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"News\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/careers\\\",\\\"id\\\":5,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Careers\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"id\\\":6,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/careers\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2021-11-21 00:22:01', '2021-11-21 00:22:01'),
(5, 1, 'menu_location', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":\"1\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties\\\",\\\"id\\\":2,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Properties\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/agents\\\",\\\"id\\\":3,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Agents\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"id\\\":4,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"News\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/careers\\\",\\\"id\\\":5,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Careers\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"id\\\":6,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/careers\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2021-11-21 00:22:01', '2021-11-21 00:22:01'),
(6, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"title\\\":\\\"Sale\\\",\\\"id\\\":\\\"2\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"News\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"Agents\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/agents\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Careers\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/careers\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/careers\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2021-11-21 00:47:57', '2021-11-21 00:47:57'),
(7, 1, 'menu_location', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"title\\\":\\\"Sale\\\",\\\"id\\\":\\\"2\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"News\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"Agents\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/agents\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Careers\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/careers\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/careers\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2021-11-21 00:47:57', '2021-11-21 00:47:57'),
(8, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":\"4 5\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"id\\\":2,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/agents\\\",\\\"id\\\":3,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Agents\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"id\\\":6,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/agents\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2021-11-21 00:48:35', '2021-11-21 00:48:35'),
(9, 1, 'menu_location', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":\"4 5\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"id\\\":2,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/agents\\\",\\\"id\\\":3,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Agents\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"id\\\":6,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/agents\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2021-11-21 00:48:35', '2021-11-21 00:48:35'),
(10, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":\"3\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"id\\\":2,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"id\\\":6,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":1,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/properties?type=sale\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2021-11-21 00:48:58', '2021-11-21 00:48:58'),
(11, 1, 'menu_location', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":\"3\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"id\\\":2,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"id\\\":6,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":1,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/properties?type=sale\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2021-11-21 00:48:58', '2021-11-21 00:48:58'),
(12, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2021-11-21 00:49:52', '2021-11-21 00:49:52'),
(13, 1, 'menu_location', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2021-11-21 00:49:52', '2021-11-21 00:49:52'),
(14, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"37\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"About us\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2021-11-21 00:52:34', '2021-11-21 00:52:34'),
(15, 1, 'menu_location', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"37\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"About us\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2021-11-21 00:52:34', '2021-11-21 00:52:34'),
(16, 1, 'page', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Location\",\"slug\":\"location\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Location\",\"is_featured\":\"0\",\"content\":\"<p>Location<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 13, 'Location', 'info', '2021-11-21 00:55:38', '2021-11-21 00:55:38'),
(17, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"37\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"38\\\",\\\"title\\\":\\\"About us\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/about-us\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Location\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2021-11-21 00:57:21', '2021-11-21 00:57:21'),
(18, 1, 'menu_location', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"37\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"38\\\",\\\"title\\\":\\\"About us\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/about-us\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Location\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2021-11-21 00:57:22', '2021-11-21 00:57:22'),
(19, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"37\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"38\\\",\\\"title\\\":\\\"About us\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/about-us\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"39\\\",\\\"title\\\":\\\"Location\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/location\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"title\\\":\\\"Contact Us\\\",\\\"id\\\":\\\"6\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact Us\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2021-11-21 00:57:55', '2021-11-21 00:57:55'),
(20, 1, 'menu_location', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"37\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"38\\\",\\\"title\\\":\\\"About us\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/about-us\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"39\\\",\\\"title\\\":\\\"Location\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/location\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"title\\\":\\\"Contact Us\\\",\\\"id\\\":\\\"6\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact Us\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2021-11-21 00:57:55', '2021-11-21 00:57:55'),
(21, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"37\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"title\\\":\\\"About Us\\\",\\\"id\\\":\\\"38\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/about-us\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"39\\\",\\\"title\\\":\\\"Location\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/location\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact Us\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact Us\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2021-11-21 00:58:25', '2021-11-21 00:58:25'),
(22, 1, 'menu_location', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Sale\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"37\\\",\\\"title\\\":\\\"Rent\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"title\\\":\\\"About Us\\\",\\\"id\\\":\\\"38\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/about-us\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"39\\\",\\\"title\\\":\\\"Location\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/location\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"Contact Us\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact Us\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2021-11-21 00:58:25', '2021-11-21 00:58:25'),
(23, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"More information\",\"deleted_nodes\":\"11\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties\\\",\\\"id\\\":12,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"All properties\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=sale\\\",\\\"id\\\":13,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Houses for sale\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/properties?type=rent\\\",\\\"id\\\":14,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Houses for rent\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Houses for rent\",\"custom-url\":\"\\/properties?type=rent\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 3, 'More information', 'primary', '2021-11-21 01:00:45', '2021-11-21 01:00:45'),
(24, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"About\",\"deleted_nodes\":\"9\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/about-us\\\",\\\"id\\\":7,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"About us\\\",\\\"referenceId\\\":3,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"id\\\":8,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Contact us\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/terms-conditions\\\",\\\"id\\\":10,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Terms & Conditions\\\",\\\"referenceId\\\":5,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Terms & Conditions\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 2, 'About', 'primary', '2021-11-21 01:01:18', '2021-11-21 01:01:18'),
(25, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Location\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"id\\\":15,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Latest news\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/house-architecture\\\",\\\"id\\\":16,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"House architecture\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/house-design\\\",\\\"id\\\":17,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"House design\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/building-materials\\\",\\\"id\\\":18,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Building materials\\\",\\\"referenceId\\\":6,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Building materials\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Location', 'primary', '2021-11-21 01:02:01', '2021-11-21 01:02:01'),
(26, 1, 'account', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"first_name\":\"Meredith\",\"last_name\":\"Goodwin\",\"username\":\"brendan55\",\"company\":null,\"phone\":\"+15700404779\",\"dob\":\"1997-06-28 00:00:00\",\"email\":\"mattie.volkman@hotmail.com\",\"is_featured\":\"0\",\"password\":null,\"password_confirmation\":null,\"submit\":\"save\",\"avatar_image\":\"accounts\\/8.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 10, 'Meredith Goodwin', 'primary', '2021-11-21 01:15:04', '2021-11-21 01:15:04'),
(27, 1, 'page', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Location\",\"slug\":\"location\",\"slug_id\":\"230\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Location\",\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[properties-by-locations][\\/properties-by-locations]<\\/shortcode>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 13, 'Location', 'primary', '2021-11-21 01:23:38', '2021-11-21 01:23:38'),
(28, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Location\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"id\\\":15,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Latest news\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/house-architecture\\\",\\\"id\\\":16,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"House architecture\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/house-design\\\",\\\"id\\\":17,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"House design\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/building-materials\\\",\\\"id\\\":18,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Building materials\\\",\\\"referenceId\\\":6,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Building materials\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Location', 'primary', '2021-11-21 01:26:25', '2021-11-21 01:26:25'),
(29, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Location11\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"id\\\":15,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Latest news\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/house-architecture\\\",\\\"id\\\":16,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"House architecture\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/house-design\\\",\\\"id\\\":17,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"House design\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/building-materials\\\",\\\"id\\\":18,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Building materials\\\",\\\"referenceId\\\":6,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Building materials\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Location11', 'primary', '2021-11-21 01:26:59', '2021-11-21 01:26:59'),
(30, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Location11\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"15\\\",\\\"title\\\":\\\"Latest news\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"title\\\":\\\"House architecture ss\\\",\\\"id\\\":\\\"16\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/news\\/house-architecture\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"17\\\",\\\"title\\\":\\\"House design\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/news\\/house-design\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"18\\\",\\\"title\\\":\\\"Building materials\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/news\\/building-materials\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Building materials\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Location11', 'primary', '2021-11-21 01:27:23', '2021-11-21 01:27:23'),
(31, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Location11\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"15\\\",\\\"title\\\":\\\"Latest news\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"title\\\":\\\"House architecture\\\",\\\"id\\\":\\\"16\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/news\\/house-architecture\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"17\\\",\\\"title\\\":\\\"House design\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/news\\/house-design\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"18\\\",\\\"title\\\":\\\"Building materials\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/news\\/building-materials\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Building materials\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Location11', 'primary', '2021-11-21 01:27:58', '2021-11-21 01:27:58'),
(32, 1, 'menu', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Location\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\\",\\\"id\\\":15,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Latest news\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/house-architecture\\\",\\\"id\\\":16,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"House architecture\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/house-design\\\",\\\"id\\\":17,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"House design\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/news\\/building-materials\\\",\\\"id\\\":18,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Building materials\\\",\\\"referenceId\\\":6,\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Building materials\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Location', 'primary', '2021-11-21 01:28:16', '2021-11-21 01:28:16'),
(33, 1, 'city', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Alhambra\",\"slug\":\"alhambra\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"castillo-de-disneyland-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Alhambra', 'primary', '2021-11-21 01:40:13', '2021-11-21 01:40:13'),
(34, 1, 'city', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Anaheim\",\"slug\":\"anaheim\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"2009-0726-ca-bakersfield-truxtontower-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Anaheim', 'primary', '2021-11-21 01:41:10', '2021-11-21 01:41:10'),
(35, 1, 'city', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Oakland\",\"slug\":\"oakland\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"goldengatebridge-001-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 2, 'Oakland', 'primary', '2021-11-21 01:41:58', '2021-11-21 01:41:58'),
(36, 1, 'city', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Bakersfield\",\"slug\":\"bakersfield\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"los-angeles-winter-2016-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 3, 'Bakersfield', 'primary', '2021-11-21 01:42:27', '2021-11-21 01:42:27'),
(37, 1, 'city', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"San Francisco\",\"slug\":\"san-francisco\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"oaklandnightskylineandlakemerritt-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 5, 'San Francisco', 'primary', '2021-11-21 01:43:51', '2021-11-21 01:43:51');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(38, 1, 'page', '{\"_token\":\"O1c5G9TnXPkCOsVdpTjNGU6YVKu9rDTWBxG4uSLY\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[properties-by-locations][\\/properties-by-locations]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[properties-for-sale][\\/properties-for-sale]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[properties-for-rent][\\/properties-for-rent]<\\/shortcode><p>&nbsp;<\\/p>\",\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-11-21 01:47:05', '2021-11-21 01:47:05'),
(39, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-11-21 02:00:35', '2021-11-21 02:00:35'),
(40, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-21 22:11:21', '2021-11-21 22:11:21'),
(41, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-24 05:22:38', '2021-11-24 05:22:38'),
(42, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-11-24 05:23:04', '2021-11-24 05:23:04'),
(43, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-24 06:26:42', '2021-11-24 06:26:42'),
(44, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-24 21:39:12', '2021-11-24 21:39:12'),
(45, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-11-24 21:39:32', '2021-11-24 21:39:32'),
(46, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-25 22:05:38', '2021-11-25 22:05:38'),
(47, 1, 'page', '{\"_token\":\"SZ7JfR6m9LnHMhQCoq9addPw4jmMz4mxpEkYOKWV\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[properties-by-locations][\\/properties-by-locations]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[properties-for-sale][\\/properties-for-sale]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[properties-for-rent][\\/properties-for-rent]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[listing-banner][\\/listing-banner]<\\/shortcode>\",\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-11-25 22:06:39', '2021-11-25 22:06:39'),
(48, 1, 'page', '{\"_token\":\"SZ7JfR6m9LnHMhQCoq9addPw4jmMz4mxpEkYOKWV\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[we_located_to_live][\\/we_located_to_live]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[properties-by-locations][\\/properties-by-locations]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[properties-for-sale][\\/properties-for-sale]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[properties-for-rent][\\/properties-for-rent]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[listing-banner][\\/listing-banner]<\\/shortcode>\",\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-11-25 22:09:57', '2021-11-25 22:09:57'),
(49, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-11-25 22:25:02', '2021-11-25 22:25:02'),
(50, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-25 22:52:09', '2021-11-25 22:52:09'),
(51, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-11-25 22:55:27', '2021-11-25 22:55:27'),
(52, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-26 23:36:35', '2021-11-26 23:36:35'),
(53, 1, 'menu', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Location', 'danger', '2021-11-26 23:37:59', '2021-11-26 23:37:59'),
(54, 1, 'menu', '{\"_token\":\"fOi1gUU5p8Tu9DWZ3GX9DjHrsZIcmrIQ5J1auB9U\",\"name\":\"Location\",\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 9, 'Location', 'info', '2021-11-26 23:39:20', '2021-11-26 23:39:20'),
(55, 1, 'menu', '{\"_token\":\"fOi1gUU5p8Tu9DWZ3GX9DjHrsZIcmrIQ5J1auB9U\",\"name\":\"Location\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Westlands\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Westlands\",\"custom-url\":\"#\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 9, 'Location', 'primary', '2021-11-26 23:40:30', '2021-11-26 23:40:30'),
(56, 1, 'menu', '{\"_token\":\"fOi1gUU5p8Tu9DWZ3GX9DjHrsZIcmrIQ5J1auB9U\",\"name\":\"Location\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"40\\\",\\\"title\\\":\\\"Westlands\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Dagoretti North\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Langata\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"North\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"North\",\"custom-url\":null,\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 9, 'Location', 'primary', '2021-11-26 23:41:59', '2021-11-26 23:41:59'),
(57, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-27 02:25:59', '2021-11-27 02:25:59'),
(58, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-27 02:25:59', '2021-11-27 02:25:59'),
(59, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-11-27 02:29:02', '2021-11-27 02:29:02'),
(60, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-27 02:32:52', '2021-11-27 02:32:52'),
(61, 1, 'state', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Langata\",\"abbreviation\":null,\"country_id\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Langata', 'primary', '2021-11-27 02:35:45', '2021-11-27 02:35:45'),
(62, 1, 'menu', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Location\",\"deleted_nodes\":\"43\",\"menu_nodes\":\"[{\\\"id\\\":\\\"40\\\",\\\"title\\\":\\\"Westlands\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"title\\\":\\\"Dagoretti North\\\",\\\"id\\\":\\\"41\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"42\\\",\\\"title\\\":\\\"Langata\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Dagoretti North\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Dagoretti North\",\"custom-url\":null,\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 9, 'Location', 'primary', '2021-11-27 03:05:52', '2021-11-27 03:05:52'),
(63, 1, 'country', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Kenya\",\"nationality\":\"Kenya\",\"order\":\"0\",\"is_default\":\"0\",\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Kenya', 'primary', '2021-11-27 03:07:27', '2021-11-27 03:07:27'),
(64, 1, 'city', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Westlands\",\"slug\":\"westlands\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"castillo-de-disneyland-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Westlands', 'primary', '2021-11-27 03:08:11', '2021-11-27 03:08:11'),
(65, 1, 'city', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Dagoretti North\",\"slug\":\"dagorettinorth\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"goldengatebridge-001-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 2, 'Dagoretti North', 'primary', '2021-11-27 03:08:42', '2021-11-27 03:08:42'),
(66, 1, 'city', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Langata\",\"slug\":\"langata\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"los-angeles-winter-2016-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 3, 'Langata', 'primary', '2021-11-27 03:09:17', '2021-11-27 03:09:17'),
(67, 1, 'city', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Nairobi\",\"slug\":\"nairobi\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"2009-0726-ca-bakersfield-truxtontower-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Nairobi', 'primary', '2021-11-27 03:09:56', '2021-11-27 03:09:56'),
(68, 1, 'city', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Mombasa\",\"slug\":\"mombasa\",\"state_id\":\"1\",\"country_id\":\"1\",\"is_featured\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"oaklandnightskylineandlakemerritt-410x270.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 5, 'Mombasa', 'primary', '2021-11-27 03:10:34', '2021-11-27 03:10:34'),
(69, 1, 'state', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Swahili\",\"abbreviation\":null,\"country_id\":\"1\",\"order\":\"0\",\"is_default\":\"0\",\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Swahili', 'primary', '2021-11-27 03:11:10', '2021-11-27 03:11:10'),
(70, 1, 'menu', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Location\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"40\\\",\\\"title\\\":\\\"Westlands\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"41\\\",\\\"title\\\":\\\"Dagoretti North\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"42\\\",\\\"title\\\":\\\"Langata\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"title\\\":\\\"Mombasa\\\",\\\"id\\\":\\\"44\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Mombasa\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 9, 'Location', 'primary', '2021-11-27 03:12:24', '2021-11-27 03:12:24'),
(71, 1, 'menu', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"Location\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"title\\\":\\\"Nairobi\\\",\\\"id\\\":\\\"40\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"41\\\",\\\"title\\\":\\\"Dagoretti North\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"42\\\",\\\"title\\\":\\\"Langata\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"#\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"44\\\",\\\"title\\\":\\\"Mombasa\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Mombasa\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 9, 'Location', 'primary', '2021-11-27 03:12:51', '2021-11-27 03:12:51'),
(72, 1, 'property', '{\"_token\":\"APv3qfm4gvVtFPhjUWwiqc2uMKkJNHZM8uuN2e86\",\"name\":\"\\bVilla for sale at Bermuda Dunes\",\"slug\":\"42460-buccaneer-court\",\"slug_id\":\"4\",\"model\":\"Botble\\\\RealEstate\\\\Models\\\\Property\",\"type\":\"sale\",\"is_featured\":\"1\",\"description\":\"This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy,\",\"content\":\"<p>This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club. Chiseled glass entry doors lead you into a magnificent Italian Marble entry that encompasses the entire hallway and living room with a fireplace. The vast great room, with raised ceilings, captures the pool, golf, lake and dynamic southern, mountain views. There\'s a lovely Library with built in shelves on one wall. There\\u2019s a sunken wet bar, with Italian Marble flooring, that provides views of the golf course and surrounding mountains.<\\/p>\",\"images\":[null,\"properties\\/vintageconnoisseur-hp-scaled.jpg\",\"properties\\/modern-beautiful-flat-roof.jpg\",\"properties\\/home-modular-kitchen-500x500.jpeg\",\"properties\\/download-1.jpg\",\"properties\\/500.jpg\"],\"city_id\":\"1\",\"location\":\"Bermuda Dunes, Riverside County, CA 92203, USA\",\"latitude\":\"43.982274\",\"longitude\":\"-76.182356\",\"number_bedroom\":\"4\",\"number_bathroom\":\"3\",\"number_floor\":\"1\",\"square\":\"480\",\"price\":\"1295000.00\",\"currency_id\":\"1\",\"period\":\"month\",\"never_expired\":\"1\",\"auto_renew\":\"0\",\"facilities\":{\"1\":{\"id\":\"1\",\"distance\":\"6km\"},\"2\":{\"id\":\"2\",\"distance\":\"10km\"},\"3\":{\"id\":\"3\",\"distance\":\"10km\"},\"4\":{\"id\":\"4\",\"distance\":\"2km\"},\"5\":{\"id\":\"5\",\"distance\":\"11km\"},\"6\":{\"id\":\"6\",\"distance\":\"5km\"},\"7\":{\"id\":\"7\",\"distance\":\"11km\"},\"8\":{\"id\":\"8\",\"distance\":\"12km\"},\"9\":{\"id\":\"9\",\"distance\":\"20km\"},\"10\":{\"id\":\"10\",\"distance\":\"5km\"},\"11\":{\"id\":\"11\",\"distance\":\"17km\"}},\"features\":[\"2\",\"5\",\"6\"],\"video\":{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"},\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"selling\",\"moderation_status\":\"approved\",\"categories\":[\"3\"],\"project_id\":\"4\",\"author_id\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Villa for sale at Bermuda Dunes', 'primary', '2021-11-27 03:35:35', '2021-11-27 03:35:35'),
(73, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-11-27 03:36:04', '2021-11-27 03:36:04'),
(74, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-27 03:45:47', '2021-11-27 03:45:47'),
(75, 1, 'account', '{\"_token\":\"CnrcOjLLIxZaQnozGby2KmWmLQLBgflRVvX6ML9M\",\"first_name\":\"Cade\",\"last_name\":\"Lowe\",\"username\":\"kameronkovacek\",\"company\":null,\"phone\":\"+18602354265\",\"dob\":\"2021-02-08 00:00:00\",\"email\":\"rmurazik@hotmail.com\",\"is_featured\":\"1\",\"is_change_password\":\"1\",\"password\":\"password\",\"password_confirmation\":\"password\",\"submit\":\"save\",\"avatar_image\":\"accounts\\/1.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 2, 'Cade Lowe', 'primary', '2021-11-27 03:46:37', '2021-11-27 03:46:37'),
(76, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-11-27 03:46:47', '2021-11-27 03:46:47'),
(77, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-11-27 04:29:21', '2021-11-27 04:29:21'),
(78, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-05 03:54:02', '2021-12-05 03:54:02'),
(79, 1, 'account', '{\"_token\":\"k6YHEoEY1GpSAVsDmyq2UELxjVeQEKi6OwJ0PYRa\",\"first_name\":\"Claude\",\"last_name\":\"Beahan\",\"username\":\"amiraheller\",\"company\":null,\"phone\":\"+13469809078\",\"dob\":\"2010-08-23 00:00:00\",\"email\":\"vern52@barrows.biz\",\"is_featured\":\"0\",\"is_change_password\":\"1\",\"password\":\"password\",\"password_confirmation\":\"password\",\"submit\":\"save\",\"avatar_image\":\"accounts\\/9.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 11, 'Claude Beahan', 'primary', '2021-12-05 03:57:39', '2021-12-05 03:57:39'),
(80, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-05 03:57:50', '2021-12-05 03:57:50'),
(81, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-05 06:16:15', '2021-12-05 06:16:15'),
(82, 1, 'account', '{\"_token\":\"uDGPX7lsU2dWrehmYRBIszvjQOpleAzGTIuMXE35\",\"first_name\":\"Claude\",\"last_name\":\"Beahan\",\"username\":\"amiraheller\",\"company\":null,\"phone\":\"+13469809078\",\"dob\":\"2010-08-23 00:00:00\",\"email\":\"vern52@barrows.biz\",\"is_featured\":\"0\",\"password\":null,\"password_confirmation\":null,\"submit\":\"save\",\"avatar_image\":\"properties\\/modern-beautiful-flat-roof-1.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 11, 'Claude Beahan', 'primary', '2021-12-05 06:19:16', '2021-12-05 06:19:16'),
(83, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-05 06:19:30', '2021-12-05 06:19:30'),
(84, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-05 06:22:02', '2021-12-05 06:22:02'),
(85, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-05 06:22:24', '2021-12-05 06:22:24'),
(86, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-05 06:25:53', '2021-12-05 06:25:53'),
(87, 1, 'project', '{\"_token\":\"eWcKajj6FChZABnaZLldaakuIVRAdJhgBTf1Ev92\",\"name\":\"The Avila Apartments\",\"slug\":\"park\",\"slug_id\":\"28\",\"model\":\"Botble\\\\RealEstate\\\\Models\\\\Project\",\"is_featured\":\"0\",\"description\":\"Within the historical peninsula, there is a very special area where you will never find a similar one. Unique sea view with a historical texture of Istanbul.\\u00a0In the bustling city life, in the middle of all transportation possibilities. Large landscaping areas, cafes, shopping opportunities.\",\"content\":\"<p>A profoundly special project amidst history and Istanbul. In the heart of the Historical Peninsula, Select Lifestyle Alternatives ranging from 1+1 to 6+1, in limited numbers\\u2026. A timeless aesthetic enriched in perfect details .<\\/p><h4><b><strong>Why you should buy a house from this project?<\\/strong><\\/b><\\/h4><ul><li>1.&nbsp;Within the historical peninsula, there is a very special area where you will never find a similar one.<\\/li><li>2.&nbsp;Unique sea view with a historical texture of Istanbul.<\\/li><li>3.&nbsp;In the bustling city life, in the middle of all transportation possibilities.<\\/li><li>4. 1+1 to 6+1 very special, suitable for all needs loft apartments<\\/li><li>5.Large landscaping areas, cafes, shopping opportunities.<\\/li><\\/ul>\",\"images\":[null,\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"],\"city_id\":\"5\",\"location\":\"Singapore Island, Singapore\",\"latitude\":\"43.481307\",\"longitude\":\"-74.862851\",\"number_block\":\"2\",\"number_floor\":\"4\",\"number_flat\":\"125\",\"price_from\":null,\"price_to\":null,\"currency_id\":\"1\",\"facilities\":[{\"id\":null},{\"distance\":null}],\"features\":[\"1\",\"3\",\"5\",\"6\",\"7\"],\"video\":{\"thumbnail\":null,\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"},\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"status\":\"selling\",\"categories\":[\"3\"],\"investor_id\":\"10\",\"date_finish\":\"2019-11-19\",\"date_sell\":\"2019-03-11\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 6, 'The Avila Apartments', 'primary', '2021-12-05 06:36:14', '2021-12-05 06:36:14'),
(88, 1, 'project', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'Walnut Park Apartments', 'danger', '2021-12-05 06:36:38', '2021-12-05 06:36:38'),
(89, 1, 'project', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 6, 'The Avila Apartments', 'danger', '2021-12-05 06:36:47', '2021-12-05 06:36:47'),
(90, 1, 'project', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 5, 'Aydos Forest Apartments', 'danger', '2021-12-05 06:36:47', '2021-12-05 06:36:47'),
(91, 1, 'project', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 4, 'Aegean Villas', 'danger', '2021-12-05 06:36:48', '2021-12-05 06:36:48'),
(92, 1, 'project', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 3, 'Mimaroba Paradise', 'danger', '2021-12-05 06:36:48', '2021-12-05 06:36:48'),
(93, 1, 'project', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 2, 'Osaka Heights', 'danger', '2021-12-05 06:36:48', '2021-12-05 06:36:48'),
(94, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-05 22:46:20', '2021-12-05 22:46:20'),
(95, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-05 22:47:27', '2021-12-05 22:47:27'),
(96, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-05 23:01:24', '2021-12-05 23:01:24'),
(97, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-05 23:01:35', '2021-12-05 23:01:35'),
(98, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-07 22:13:38', '2021-12-07 22:13:38'),
(99, 1, 'project', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 12, 'Khu chung cư The Avila', 'danger', '2021-12-07 22:33:30', '2021-12-07 22:33:30'),
(100, 1, 'project', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 11, 'Chung cư rừng Aydos', 'danger', '2021-12-07 22:33:30', '2021-12-07 22:33:30'),
(101, 1, 'project', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 10, 'Khu biệt thự Aegean', 'danger', '2021-12-07 22:33:30', '2021-12-07 22:33:30'),
(102, 1, 'project', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 9, 'Thiên đường Mimaroba', 'danger', '2021-12-07 22:33:31', '2021-12-07 22:33:31'),
(103, 1, 'project', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 8, 'Dự án Osaka Heights', 'danger', '2021-12-07 22:33:31', '2021-12-07 22:33:31'),
(104, 1, 'project', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\"],\"class\":\"Botble\\\\RealEstate\\\\Tables\\\\ProjectTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 1, 7, 'Căn hộ Walnut Park', 'danger', '2021-12-07 22:33:31', '2021-12-07 22:33:31'),
(105, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-08 22:00:17', '2021-12-08 22:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `location`, `salary`, `content`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Sales Manager (Up to 2600$)', 'Ho Chi Minh, Viet Nam', '1300$ - 2600$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Applicants receive a salary from 1300 USD to 2600 USD<br />\r\n- Fully enjoy the regimes according to Vietnam&#39;s Labor Law: Social insurance, health insurance, unemployment insurance<br />\r\n- Trained to improve expertise and capacity in suitable positions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Coordinate with the Investment Department in organizing the collection, analysis, evaluation of market information and submitting proposals for planning the project&#39;s products and investment cooperation plans (if any);<br />\r\n- Acting as a focal point of exploitation and trading with customers, managing trading floors and distributors;<br />\r\n- Checking and approving the selection of sales units, management units for exploitation, operation and investment cooperation;<br />\r\n- Leading the negotiation and management of contracts with customers, sales units, management of exploitation, operation and investment cooperation;<br />\r\n- Prepare and submit a price approval for the sale, lease, and cooperation prices of all real estate projects;<br />\r\n- Develop sales plans, sales policies, support and promotions;<br />\r\n- Coordinate with member companies (Project Management Board) to collect and hand over product records (technical documents, red books, sales contracts ...) to hand over customers;<br />\r\n- Deploy customer support activities;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Preferred age: 30-35<br />\r\n- University degree in Business Administration, Economics, or related industries.<br />\r\n- Over 03 years of experience in assuming the position of Real Estate Business City<br />\r\n- Priority with a certificate of real estate broker, certificate of real estate trading floor management<br />\r\n- Good planning, operating, and control skills<br />\r\n- Good communication, negotiation and problem-solving skills</span></span></p>', 'published', '2019-11-30 19:43:10', '2019-11-30 19:46:53', NULL),
(2, 'Trưởng Phòng Kinh Doanh ( Lương lên tới 60tr)', 'Ho Chi Minh, Viet Nam', '30,000,000 VND-60,000,000 VND', '<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">C&Aacute;C PH&Uacute;C LỢI D&Agrave;NH CHO BẠN</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Ứng vi&ecirc;n được hưởng mức lương từ 30.000.000 VND đến 60.000.000 VND</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Được hưởng đầy đủ c&aacute;c chế độ theo Luật lao động Việt Nam: BHXH, BHYT, BHTN</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Được đ&agrave;o tạo n&acirc;ng cao chuy&ecirc;n m&ocirc;n, năng lực tại c&aacute;c vị tr&iacute; ph&ugrave; hợp</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">M&Ocirc; TẢ C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Phối hợp với ph&ograve;ng Đầu tư tổ chức thu thập, ph&acirc;n t&iacute;ch, đ&aacute;nh gi&aacute; th&ocirc;ng tin thị trường v&agrave; tr&igrave;nh đề xuất hoạch định c&aacute;c sản phẩm của dự &aacute;n, c&aacute;c phương &aacute;n hợp t&aacute;c đầu tư (nếu c&oacute;);<br />\r\n- Đầu mối khai th&aacute;c v&agrave; giao dịch với kh&aacute;ch h&agrave;ng, quản l&yacute; c&aacute;c s&agrave;n giao dịch, c&aacute;c nh&agrave; ph&acirc;n phối b&aacute;n h&agrave;ng;<br />\r\n- Kiểm tra, tr&igrave;nh duyệt lựa chọn c&aacute;c đơn vị b&aacute;n h&agrave;ng, đơn vị quản l&yacute; khai th&aacute;c, vận h&agrave;nh v&agrave; hợp t&aacute;c đầu tư;<br />\r\n- Chủ tr&igrave; đ&agrave;m ph&aacute;n v&agrave; quản l&yacute; c&aacute;c hợp đồng với kh&aacute;ch h&agrave;ng, c&aacute;c đơn vị b&aacute;n h&agrave;ng, quản l&yacute; khai th&aacute;c, vận h&agrave;nh v&agrave; hợp t&aacute;c đầu tư;<br />\r\n- Lập, tr&igrave;nh duyệt gi&aacute; b&aacute;n, gi&aacute; thu&ecirc;, gi&aacute; hợp t&aacute;c c&aacute;c sản phẩm của to&agrave;n bộ c&aacute;c dự &aacute;n bất động sản;<br />\r\n- X&acirc;y dựng kế hoạch b&aacute;n h&agrave;ng, ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng, hỗ trợ v&agrave; khuyến mại;<br />\r\n- Phối hợp với c&ocirc;ng ty th&agrave;nh vi&ecirc;n (Ban quản l&yacute; dự &aacute;n) tập hợp v&agrave; b&agrave;n giao hồ sơ sản phẩm (hồ sơ kỹ thuật, sổ đỏ, hợp đồng mua b&aacute;n&hellip;) b&agrave;n giao kh&aacute;ch h&agrave;ng;<br />\r\n- Triển khai c&aacute;c hoạt động hỗ trợ kh&aacute;ch h&agrave;ng;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Độ tuổi ưu ti&ecirc;n: 30-35<br />\r\n- Tốt nghiệp Đại học c&aacute;c ng&agrave;nh Quản trị kinh doanh, Kinh tế, hoặc c&aacute;c ng&agrave;nh nghề c&oacute; li&ecirc;n quan.<br />\r\n- Tr&ecirc;n 03 năm kinh nghiệm đảm nhận vị tr&iacute; TP kinh doanh Bất Động Sản<br />\r\n- Ưu ti&ecirc;n c&oacute; chứng chỉ m&ocirc;i giới BĐS, chứng chỉ quản l&yacute; s&agrave;n GD BĐS<br />\r\n- Kỹ năng lập kế hoạch, điều h&agrave;nh, v&agrave; kiểm so&aacute;t c&ocirc;ng việc tốt<br />\r\n- Kỹ năng giao tiếp, đ&agrave;m ph&aacute;n, giải quyết vấn đề tốt</span></span></p>', 'published', '2019-11-30 19:49:07', '2019-11-30 19:49:29', NULL),
(3, 'Senior Real Estate Consultant Demo', 'Ho Chi Minh, Viet Nam', 'From 1500$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Basic salary 500$&nbsp;/ month.<br />\r\n- Access to diverse sources of goods and opportunities from reputable investors.<br />\r\n- Retrospective salary policy up to 2400$-7000$&nbsp;/ year.<br />\r\n- Commission of 22-50% and a commission 1000$ / successful transaction in the month.<br />\r\n- Effective bonus 0.6-3% of annual revenue.<br />\r\n- A place to build your personal brand in a standard and different way.<br />\r\n- Attend seminars on real estate every 6 months.<br />\r\n- Participate in the course on negotiation skills (Win - Win), language of sales (Language of Sales), customer mind marketing (SOI), customer conversion from social networks (Go Social)<br />\r\n- Unlimited promotion opportunities.<br />\r\n- Working with professional space and modern open office design.<br />\r\n- Welfare policy, domestic and foreign tourism ...<br />\r\n- Decentralized, democratic, financial transparency, considering brokerage is a business partner.<br />\r\n- Environmentally friendly, is the place where brokers are connected with regular activities</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Quantity: 30 employees<br />\r\n- Find and exploit potential customers for real estate products valued from 2000 USD / m2 in the high-end and luxury segment;<br />\r\n- Deploying activities to find customers, coordinate with teams to realize sales targets<br />\r\n- Advise customers on information related to products and projects of the Company;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Graduating from college or higher<br />\r\n- Good appearance, male height from 1.68m, female from 1.58m. Age from 22-35 years old<br />\r\n- Priority to candidates who know foreign languages ​​and have 1 year or more experience in the field of real estate, banking and finance.<br />\r\n- Have financial goals, work and life.<br />\r\n- Desire to achieve big goals.<br />\r\n- Diligent, persistent, honest.</span></span></p>', 'published', '2019-11-30 19:52:42', '2021-01-03 17:26:17', NULL),
(4, 'Chuyên Viên Tư Vấn Bất Động Sản Cao Cấp', 'Ho Chi Minh, Viet Nam', 'Từ 30,000,000 VND', '<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">C&Aacute;C PH&Uacute;C LỢI D&Agrave;NH CHO BẠN</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Lương cơ bản 10 triệu/th&aacute;ng.<br />\r\n- Tiếp cận nguồn h&agrave;ng đa dạng v&agrave; cơ hội từ c&aacute;c chủ đầu tư uy t&iacute;n.<br />\r\n- Ch&iacute;nh s&aacute;ch hồi tố lương l&ecirc;n đến 48-144 triệu/năm.<br />\r\n- Hoa hồng 22-50% v&agrave; được tạm ứng hoa hồng 20 triệu/ giao dịch th&agrave;nh c&ocirc;ng trong th&aacute;ng.<br />\r\n- Thưởng hiệu quả 0.6-3% doanh thu năm.<br />\r\n- Nơi x&acirc;y dựng thương hiệu c&aacute; nh&acirc;n một c&aacute;ch chuẩn mực v&agrave; kh&aacute;c biệt.<br />\r\n- Được tham dự c&aacute;c chuy&ecirc;n đề về bất động sản 6 th&aacute;ng 1 lần.<br />\r\n- Được tham dự kh&oacute;a học về kỹ năng đ&agrave;m ph&aacute;n (Win - Win), ng&ocirc;n ngữ b&aacute;n h&agrave;ng (Language of Sales), marketing chiếm t&acirc;m tr&iacute; kh&aacute;ch h&agrave;ng (SOI), chuyển đổi kh&aacute;ch h&agrave;ng từ mạng x&atilde; hội (Go Social)<br />\r\n- Cơ hội thăng tiến kh&ocirc;ng giới hạn.<br />\r\n- Được l&agrave;m việc với kh&ocirc;ng gian chuy&ecirc;n nghiệp v&agrave; thiết kế văn ph&ograve;ng mở hiện đại.<br />\r\n- Ch&iacute;nh s&aacute;ch ph&uacute;c lợi, du lịch trong v&agrave; ngo&agrave;i nước...<br />\r\n- Ph&acirc;n quyền, d&acirc;n chủ, minh bạch t&agrave;i ch&iacute;nh, xem m&ocirc;i giới l&agrave; đối t&aacute;c kinh doanh.<br />\r\n- M&ocirc;i trường th&acirc;n thiện, l&agrave; nơi kết nối m&ocirc;i giới với c&aacute;c hoạt động được tổ chức thường xuy&ecirc;n</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">M&Ocirc; TẢ C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Số lượng: 30 nh&acirc;n vi&ecirc;n<br />\r\n- T&igrave;m kiếm v&agrave; khai th&aacute;c nguồn kh&aacute;ch h&agrave;ng tiềm năng cho c&aacute;c sản phẩm bất động sản c&oacute; gi&aacute; trị từ 2000 USD/m2 thuộc ph&acirc;n kh&uacute;c cao cấp, hạng sang ;<br />\r\n- Triển khai c&aacute;c hoạt động t&igrave;m kiếm kh&aacute;ch h&agrave;ng, phối hợp với đội nh&oacute;m để thực hiện chỉ ti&ecirc;u doanh số<br />\r\n- Tư vấn cho kh&aacute;ch h&agrave;ng c&aacute;c th&ocirc;ng tin li&ecirc;n quan đến sản phẩm, dự &aacute;n của C&ocirc;ng ty;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Tốt nghiệp Cao đẳng trở l&ecirc;n<br />\r\n- Ngoại h&igrave;nh ưu nh&igrave;n, nam cao từ 1,68m, nữ từ 1,58m. Độ tuổi từ 22- 35 tuổi<br />\r\n- Ưu ti&ecirc;n ứng vi&ecirc;n biết ngoại ngữ v&agrave; c&oacute; kinh nghiệm 1 năm trở l&ecirc;n trong lĩnh vực BĐS, ng&acirc;n h&agrave;ng, t&agrave;i ch&iacute;nh.<br />\r\n- C&oacute; mục ti&ecirc;u về t&agrave;i ch&iacute;nh, c&ocirc;ng việc v&agrave; cuộc sống.<br />\r\n- Kh&aacute;t khao đạt được c&aacute;c mục ti&ecirc;u lớn.<br />\r\n- Si&ecirc;ng năng, ki&ecirc;n tr&igrave;, trung thực.</span></span></p>', 'published', '2019-11-30 19:56:50', '2019-11-30 19:56:50', NULL),
(5, 'Ads cun', 'aaa', 'bbb', '<p>ddd</p>', 'published', '2021-01-03 17:26:32', '2021-01-03 17:26:42', 'ccc');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'News', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(2, 'House architecture', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(3, 'Kiến trúc nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(4, 'House design', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(5, 'Thiết kế nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(6, 'Building materials', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(7, 'Vật liệu xây dựng', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(8, 'Tin tức', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-22 01:26:08', '2019-11-22 01:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `order`, `is_default`, `is_featured`, `image`, `status`, `created_at`, `updated_at`, `slug`, `record_id`) VALUES
(1, 'Westlands', 1, 1, 0, 0, 1, 'castillo-de-disneyland-410x270.jpg', 'published', '2019-11-18 08:18:42', '2021-11-27 03:08:11', 'westlands', NULL),
(2, 'Dagoretti North', 1, 1, 0, 0, 1, 'goldengatebridge-001-410x270.jpg', 'published', '2019-11-18 08:23:14', '2021-11-27 03:08:42', 'dagorettinorth', NULL),
(3, 'Langata', 1, 1, 0, 0, 1, 'los-angeles-winter-2016-410x270.jpg', 'published', '2019-11-18 08:26:54', '2021-11-27 03:09:17', 'langata', NULL),
(4, 'Nairobi', 1, 1, 0, 0, 1, '2009-0726-ca-bakersfield-truxtontower-410x270.jpg', 'published', '2019-11-18 08:27:57', '2021-11-27 03:09:56', 'nairobi', NULL),
(5, 'Mombasa', 1, 1, 0, 0, 1, 'oaklandnightskylineandlakemerritt-410x270.jpg', 'published', '2019-11-18 08:29:18', '2021-11-27 03:10:34', 'mombasa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kenya', 'Kenya', 0, 0, 'published', '2019-11-18 08:17:29', '2021-11-27 03:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_pages', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(2, 'widget_total_users', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(3, 'widget_total_plugins', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(4, 'widget_total_themes', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(5, 'widget_audit_logs', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(6, 'widget_posts_recent', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(7, 'widget_analytics_general', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(8, 'widget_analytics_page', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(9, 'widget_analytics_browser', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(10, 'widget_analytics_referrer', '2019-11-15 18:54:50', '2019-11-15 18:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 7, 0, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(2, NULL, 1, 5, 1, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(3, NULL, 1, 6, 2, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(4, NULL, 1, 8, 3, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(5, NULL, 1, 9, 4, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(6, NULL, 1, 10, 5, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `reference_id`, `lang_meta_code`, `reference_type`, `lang_meta_origin`) VALUES
(3, 1, 'en_US', 'Botble\\RealEstate\\Models\\Property', '404601a719bd38c609172d77df408ba1'),
(4, 2, 'en_US', 'Botble\\RealEstate\\Models\\Property', '9fd22570b6527cea3f74256bc5beeade'),
(5, 3, 'en_US', 'Botble\\RealEstate\\Models\\Property', '657ce80dc667a53aed03ea05f3977ff0'),
(6, 4, 'en_US', 'Botble\\RealEstate\\Models\\Property', '6be7679ead5366a6369167210fd247a0'),
(7, 1, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '13cf1f003e0c62806dd7ad26f048b91d'),
(8, 2, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'f2356c699c6653bffaff97dd9387717d'),
(12, 3, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'e8c67bae0a5f47fa54a4a76a875daf3f'),
(13, 4, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'd57fa54aad5abc3f0caec4fb0e4e0907'),
(14, 5, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '2d253e85c0394609682b9dbe77705bdb'),
(16, 5, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ac45379b9b6134531a834400a7d9175c'),
(17, 6, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '150d1429049e27e62396ed759719ada4'),
(18, 7, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'a7dd32dd31e9b85768892b17c4b6283b'),
(19, 8, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'bc3b21d633995dfaaa528eeb34b804ca'),
(20, 6, 'en_US', 'Botble\\RealEstate\\Models\\Property', '976a11dca6f828f42ef579a8b3671b56'),
(21, 7, 'en_US', 'Botble\\RealEstate\\Models\\Property', '141e080b1eff418e2977b5efdbfe799a'),
(22, 1, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b55b725e9ba113942275849272e2969b'),
(23, 2, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '8b391f8d425ee376f0378860cbc205ae'),
(24, 3, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'c9199634afef0d21b9ed76f0438c1d92'),
(25, 4, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'ae7c96e8601ae6be06b85cb1b035498d'),
(26, 5, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '12f47dc443a0c4c9ed8dd3f48e43ef24'),
(27, 6, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '35466099783edd979365b6d42380217a'),
(28, 7, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0f2d227a5e8b165455e69574d168d628'),
(29, 8, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '9c7f8c61383d7ea76f817fcd2224363f'),
(30, 9, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'a714f38063f2a21302b72ca0c9ebf69d'),
(31, 10, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '3752c23672cc11767202d85776490354'),
(32, 11, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '33ba5096310a9bb0d2cbed1ebab2f00e'),
(33, 12, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b9df16fdbc60e5d1d446560fa55780ad'),
(34, 13, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'aa340b8dd1304e49d7b6e3be7bb939cb'),
(35, 14, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0dc7c295282a2e338f97f9ac56d3e707'),
(36, 15, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '7e37f52d065e2ac7f71cec27528ff1a7'),
(38, 8, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ccf2b58508febe22dae3fe588d1f7f36'),
(39, 9, 'en_US', 'Botble\\RealEstate\\Models\\Property', '18e0c764a6457fa1677a1710cc219337'),
(40, 10, 'en_US', 'Botble\\RealEstate\\Models\\Property', '2c9217b2ce21882234bfaf9222893fc9'),
(41, 11, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'dad4f25ae76974a87d59084f82dae01b'),
(42, 1, 'en_US', 'Botble\\Blog\\Models\\Category', '8804d947c9dfc67caa38c6d758c533fb'),
(43, 12, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4be0c322dda4d57a9ae43c4bb5b7b608'),
(44, 1, 'en_US', 'Botble\\Blog\\Models\\Post', '3034c8b36dad04a9618bdcdc69180371'),
(45, 1, 'en_US', 'Botble\\Blog\\Models\\Tag', 'cb81f9780b7fcdcb490a2dc412bf2dc8'),
(46, 2, 'en_US', 'Botble\\Blog\\Models\\Post', '6fd6f18d826fcd7ac743126287d55207'),
(47, 2, 'en_US', 'Botble\\Blog\\Models\\Tag', 'b1f1b44f1eb59e622269e868a16d4ead'),
(48, 3, 'en_US', 'Botble\\Blog\\Models\\Post', 'ec03adaaea66669a5e1bfaed629064e7'),
(49, 4, 'en_US', 'Botble\\Blog\\Models\\Post', '918b57465f9da91a7af4d3a35aa8f696'),
(50, 3, 'en_US', 'Botble\\Blog\\Models\\Tag', '3facfab60703e4bb17ce679a63d04d6e'),
(55, 13, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'cb46b75d51f5b9ca4f7ea650ae885169'),
(56, 14, 'en_US', 'Botble\\RealEstate\\Models\\Property', '702833126d23884c8fa5f965b7fa3870'),
(57, 15, 'en_US', 'Botble\\RealEstate\\Models\\Property', '73a8f9e2401b54cca959e1a0a5fb9c9e'),
(58, 16, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4aba3c5a608665c657affb7c59fce1e5'),
(59, 17, 'en_US', 'Botble\\RealEstate\\Models\\Property', '417317c4e6d4e390e19b87986cc52aa0'),
(60, 1, 'en_US', 'Botble\\Location\\Models\\Country', 'd3ec07a0e1406ee80d3d859777b7b403'),
(61, 1, 'en_US', 'Botble\\Location\\Models\\State', 'f8416c3653b14061d905348dad9577c6'),
(62, 1, 'en_US', 'Botble\\Location\\Models\\City', 'df3764fba83146dcf2a3dae1d4abffa8'),
(63, 2, 'en_US', 'Botble\\Location\\Models\\City', '61291cff6bb4da3bd0aaba956100e568'),
(64, 3, 'en_US', 'Botble\\Location\\Models\\City', '0da803b1790ee6927eb6c477a3a500f5'),
(65, 4, 'en_US', 'Botble\\Location\\Models\\City', '89e6959f3cb7f50f9b864818156fea61'),
(66, 5, 'en_US', 'Botble\\Location\\Models\\City', '63f5769d3fdefb7c291ab281762685c1'),
(67, 8, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'c09bc25d9cac53fcd354de939c7f8fae'),
(68, 7, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'd1b060fd0e6aa2e4f835e5c2f8bf90b9'),
(69, 6, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '537595c55d88eb72832a869fd9527c9d'),
(70, 5, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'b2ca2731181c95b88a0e07086d249e9b'),
(71, 4, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'f16c14be9c2c35b834804c4aaf532e4d'),
(72, 3, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '627860eba0af8ba4ca8c5e3dba813e76'),
(73, 2, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '4daead6cb916d9ee6d0abf535757c12d'),
(74, 1, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '945456922bc6901572ccfeaf1754647c'),
(122, 2, 'en_US', 'Botble\\Blog\\Models\\Category', '6675f12d6ce53d9ed753a54bca8d67b0'),
(124, 4, 'en_US', 'Botble\\Blog\\Models\\Category', '745e79e10f12a0f66d19ae3b4dad987a'),
(126, 6, 'en_US', 'Botble\\Blog\\Models\\Category', 'f1ba0f3404bb5b827cfaa552a6894c0f'),
(144, 1, 'en_US', 'Botble\\Career\\Models\\Career', '09e2cc1ea05bd7c9dd60cfd54725975c'),
(146, 3, 'en_US', 'Botble\\Career\\Models\\Career', 'dcd6eb9e2a31b96825a0c519101c098e'),
(161, 1, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '4c9e7a0ee9344da781f8f10481e0335b'),
(162, 2, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '3dd78243e38a8bc41c7e8cd908af82d7'),
(163, 3, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '1c2ee66999173592cc8569b72e004387'),
(164, 4, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '202f330c763b2c793965c07fbca0ebc8'),
(165, 5, 'en_US', 'Botble\\RealEstate\\Models\\Facility', 'f21d7f6838d1ac489dd07bdd2152d089'),
(166, 6, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '213f9bb1d92be72bf70a1f989d93cbcf'),
(167, 7, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '83a092c92af08ffca16e3b0f2c7aebeb'),
(168, 8, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '21a48678967dcbd7d28d6111de0b8add'),
(169, 9, 'en_US', 'Botble\\RealEstate\\Models\\Facility', 'd542823ce99de761331bf698fefa39ee'),
(170, 10, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '693daebf15c3b74b003ce432cdb214de'),
(171, 11, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '8cd328ddcbadeb5d8e3f7e166e06ee65'),
(194, 5, 'en_US', 'Botble\\Career\\Models\\Career', '9d36fac293afaacbe2deeaaccc00f346'),
(291, 1, 'en_US', 'Botble\\RealEstate\\Models\\Category', '5d5d4684367522c764a3bf2dd2cb2f4b'),
(292, 2, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'a041e86cb0e705de7a1e730c769ea2da'),
(293, 3, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'b575980187351ebf72abf18281b3377c'),
(294, 4, 'en_US', 'Botble\\RealEstate\\Models\\Category', '914c85970887f23b4e2eb633a6d0b679'),
(295, 5, 'en_US', 'Botble\\RealEstate\\Models\\Category', '90cf92a09eec78cfe1e3c88409efc634'),
(296, 6, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'a6ff72080cd2a3241951d825ac7e13e0'),
(297, 1, 'en_US', 'Botble\\Page\\Models\\Page', '1865f73f3ac68d6d9feea10eb71769ee'),
(298, 2, 'en_US', 'Botble\\Page\\Models\\Page', 'a2d5a00f4a91b438d5609aa48a7918b7'),
(299, 3, 'en_US', 'Botble\\Page\\Models\\Page', 'cc4011f84845a571a78c51d7f166f523'),
(300, 4, 'en_US', 'Botble\\Page\\Models\\Page', '55f2c6c1ef080c25759312d1ec71072e'),
(301, 5, 'en_US', 'Botble\\Page\\Models\\Page', '70086a0b0ece23913a977e2282f19cfd'),
(302, 6, 'en_US', 'Botble\\Page\\Models\\Page', 'b3d600b4ef64e839b895bda57773ea55'),
(309, 1, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', 'ea4bb7f1808c4f1736d7b7ed1286ae10'),
(310, 1, 'en_US', 'Botble\\Menu\\Models\\Menu', '8de4bcd9b0294defc73f2f48315362b2'),
(311, 2, 'en_US', 'Botble\\Menu\\Models\\Menu', '06c563c0895de348da020e73550b8e58'),
(312, 3, 'en_US', 'Botble\\Menu\\Models\\Menu', 'af33555f16636f7cd5921fb1d08ea668'),
(319, 9, 'en_US', 'Botble\\Blog\\Models\\Post', 'ad4e052b18f37ab5bb038760cb14fb1e'),
(320, 10, 'en_US', 'Botble\\Blog\\Models\\Post', '7e9baf39c5c29f31bb0d06d04a1c0ea1'),
(321, 11, 'en_US', 'Botble\\Blog\\Models\\Post', '297a670cfa3cbe2ccaecf98f839f759b'),
(322, 12, 'en_US', 'Botble\\Blog\\Models\\Post', '5679fe5640df77651a10cdf837f396ee'),
(323, 13, 'en_US', 'Botble\\Blog\\Models\\Post', '8196e2aaf75d1fc8a64b7343703d2878'),
(324, 14, 'en_US', 'Botble\\Blog\\Models\\Post', '974fa9522c40d35cf3bdcd8a7989d227'),
(325, 15, 'en_US', 'Botble\\Blog\\Models\\Post', 'cee1da113b7baafd0b0448d9cd50b5a5'),
(326, 16, 'en_US', 'Botble\\Blog\\Models\\Post', '1682ac96d28b0127596f9e079d208045'),
(327, 17, 'en_US', 'Botble\\Blog\\Models\\Post', '8c830776118764025c538ef66dc28554'),
(328, 18, 'en_US', 'Botble\\Blog\\Models\\Post', '70991de5edf42555e2ab39a865e317d0'),
(329, 19, 'en_US', 'Botble\\Blog\\Models\\Post', '75607f81ada2ab73d07f78141fa60aa7'),
(330, 20, 'en_US', 'Botble\\Blog\\Models\\Post', '2ee45f68451c11219a2a3201f9c154ff'),
(331, 21, 'en_US', 'Botble\\Blog\\Models\\Post', '88da5f3d0f516bbc1cb3676f60010bf1'),
(332, 22, 'en_US', 'Botble\\Blog\\Models\\Post', '275afb9427bb7b0208451b256ecabde3'),
(333, 23, 'en_US', 'Botble\\Blog\\Models\\Post', 'f84355148dd7a99d0762c0b3f82f2c13'),
(334, 24, 'en_US', 'Botble\\Blog\\Models\\Post', 'a37a8adcf1777bca81ea8e3ab27a7f7a'),
(351, 13, 'en_US', 'Botble\\Page\\Models\\Page', '450b8bea8012a188b455db2dfc802e97'),
(352, 9, 'en_US', 'Botble\\Menu\\Models\\Menu', 'cb9b93dd483ffe41d1f221be3c65c8c4');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(899, 0, '1', 45, 'image/jpeg', 11752, 'accounts/1.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(900, 0, '10', 45, 'image/jpeg', 27814, 'accounts/10.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(901, 0, '2', 45, 'image/jpeg', 19005, 'accounts/2.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(902, 0, '3', 45, 'image/jpeg', 20400, 'accounts/3.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(903, 0, '4', 45, 'image/jpeg', 26819, 'accounts/4.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(904, 0, '5', 45, 'image/jpeg', 14367, 'accounts/5.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(905, 0, '6', 45, 'image/jpeg', 12367, 'accounts/6.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(906, 0, '7', 45, 'image/jpeg', 20652, 'accounts/7.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(907, 0, '8', 45, 'image/jpeg', 21164, 'accounts/8.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(908, 0, '9', 45, 'image/jpeg', 6084, 'accounts/9.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(910, 0, 'asset-3-at-3x', 47, 'image/png', 76833, 'general/asset-3-at-3x.png', '[]', '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL),
(911, 0, 'asset-4-at-3x', 47, 'image/png', 84067, 'general/asset-4-at-3x.png', '[]', '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL),
(912, 0, 'copyright', 47, 'image/jpeg', 128544, 'general/copyright.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(913, 0, 'termsconditions-pagedesktop', 47, 'image/jpeg', 185151, 'general/termsconditions-pagedesktop.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(914, 0, 'video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri', 47, 'image/jpeg', 63143, 'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(915, 0, 'vietnam-office-4', 47, 'image/jpeg', 214366, 'general/vietnam-office-4.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(916, 0, '1', 48, 'image/jpeg', 66997, 'news/1.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(917, 0, '10', 48, 'image/jpeg', 66858, 'news/10.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(918, 0, '11', 48, 'image/jpeg', 86492, 'news/11.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(919, 0, '12', 48, 'image/jpeg', 91376, 'news/12.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(920, 0, '13', 48, 'image/jpeg', 82991, 'news/13.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(921, 0, '14', 48, 'image/jpeg', 66997, 'news/14.jpg', '[]', '2021-06-11 20:56:52', '2021-06-11 20:56:52', NULL),
(922, 0, '15', 48, 'image/jpeg', 111450, 'news/15.jpg', '[]', '2021-06-11 20:56:52', '2021-06-11 20:56:52', NULL),
(923, 0, '16', 48, 'image/jpeg', 464807, 'news/16.jpg', '[]', '2021-06-11 20:56:52', '2021-06-11 20:56:52', NULL),
(924, 0, '2', 48, 'image/jpeg', 51884, 'news/2.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(925, 0, '3', 48, 'image/jpeg', 132835, 'news/3.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(926, 0, '4', 48, 'image/jpeg', 948302, 'news/4.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(927, 0, '5', 48, 'image/jpeg', 66858, 'news/5.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(928, 0, '6', 48, 'image/jpeg', 328317, 'news/6.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(929, 0, '7', 48, 'image/jpeg', 249538, 'news/7.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(930, 0, '8', 48, 'image/jpeg', 147871, 'news/8.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(931, 0, '9', 48, 'image/jpeg', 194815, 'news/9.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(932, 0, 'banner', 1, 'image/jpeg', 239032, 'banner/banner.jpg', '[]', '2021-06-11 20:56:55', '2021-06-11 20:56:55', NULL),
(933, 0, '2009-0726-ca-bakersfield-truxtontower', 49, 'image/jpeg', 686056, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(934, 0, 'castillo-de-disneyland', 49, 'image/jpeg', 412609, 'cities/castillo-de-disneyland.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(935, 0, 'goldengatebridge-001', 49, 'image/jpeg', 371864, 'cities/goldengatebridge-001.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(936, 0, 'los-angeles-winter-2016', 49, 'image/jpeg', 254681, 'cities/los-angeles-winter-2016.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(937, 0, 'oaklandnightskylineandlakemerritt', 49, 'image/jpeg', 433073, 'cities/oaklandnightskylineandlakemerritt.jpg', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(938, 0, 'favicon', 50, 'image/png', 3110, 'logo/favicon.png', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(939, 0, 'logo-white', 50, 'image/png', 18120, 'logo/logo-white.png', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(940, 0, 'logo', 50, 'image/png', 23910, 'logo/logo.png', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(941, 0, '1', 51, 'image/jpeg', 750839, 'projects/1.jpg', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(942, 0, '11', 51, 'image/jpeg', 1729433, 'projects/11.jpg', '[]', '2021-06-11 20:56:58', '2021-06-11 20:56:58', NULL),
(943, 0, '12', 51, 'image/jpeg', 942082, 'projects/12.jpg', '[]', '2021-06-11 20:56:58', '2021-06-11 20:56:58', NULL),
(944, 0, '13', 51, 'image/jpeg', 562580, 'projects/13.jpg', '[]', '2021-06-11 20:56:59', '2021-06-11 20:56:59', NULL),
(945, 0, '14', 51, 'image/jpeg', 1259051, 'projects/14.jpg', '[]', '2021-06-11 20:56:59', '2021-06-11 20:56:59', NULL),
(946, 0, '2', 51, 'image/jpeg', 431985, 'projects/2.jpg', '[]', '2021-06-11 20:57:00', '2021-06-11 20:57:00', NULL),
(947, 0, '21', 51, 'image/jpeg', 173885, 'projects/21.jpg', '[]', '2021-06-11 20:57:00', '2021-06-11 20:57:00', NULL),
(948, 0, '22', 51, 'image/jpeg', 94488, 'projects/22.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(949, 0, '23', 51, 'image/jpeg', 90740, 'projects/23.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(950, 0, '24', 51, 'image/jpeg', 96624, 'projects/24.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(951, 0, '25', 51, 'image/jpeg', 138699, 'projects/25.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(952, 0, '26', 51, 'image/jpeg', 121747, 'projects/26.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(953, 0, '3', 51, 'image/jpeg', 450933, 'projects/3.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(954, 0, '5', 51, 'image/jpeg', 206027, 'projects/5.jpg', '[]', '2021-06-11 20:57:02', '2021-06-11 20:57:02', NULL),
(955, 0, '1-1', 52, 'image/jpeg', 750839, 'properties/1-1.jpg', '[]', '2021-06-11 20:57:02', '2021-06-11 20:57:02', NULL),
(956, 0, '1-2', 52, 'image/jpeg', 1587777, 'properties/1-2.jpg', '[]', '2021-06-11 20:57:03', '2021-06-11 20:57:03', NULL),
(957, 0, '1-3', 52, 'image/jpeg', 646056, 'properties/1-3.jpg', '[]', '2021-06-11 20:57:03', '2021-06-11 20:57:03', NULL),
(958, 0, '1', 52, 'image/jpeg', 80373, 'properties/1.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(959, 0, '10-1', 52, 'image/jpeg', 198455, 'properties/10-1.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(960, 0, '10', 52, 'image/jpeg', 255695, 'properties/10.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(961, 0, '11-1', 52, 'image/jpeg', 127294, 'properties/11-1.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(962, 0, '11', 52, 'image/jpeg', 79403, 'properties/11.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(963, 0, '12', 52, 'image/jpeg', 86373, 'properties/12.jpg', '[]', '2021-06-11 20:57:05', '2021-06-11 20:57:05', NULL),
(964, 0, '13', 52, 'image/jpeg', 82991, 'properties/13.jpg', '[]', '2021-06-11 20:57:05', '2021-06-11 20:57:05', NULL),
(965, 0, '14', 52, 'image/jpeg', 66997, 'properties/14.jpg', '[]', '2021-06-11 20:57:05', '2021-06-11 20:57:05', NULL),
(966, 0, '15', 52, 'image/jpeg', 111450, 'properties/15.jpg', '[]', '2021-06-11 20:57:06', '2021-06-11 20:57:06', NULL),
(967, 0, '2-1', 52, 'image/jpeg', 431985, 'properties/2-1.jpg', '[]', '2021-06-11 20:57:06', '2021-06-11 20:57:06', NULL),
(968, 0, '2-2', 52, 'image/jpeg', 260049, 'properties/2-2.jpg', '[]', '2021-06-11 20:57:06', '2021-06-11 20:57:06', NULL),
(969, 0, '2-3', 52, 'image/jpeg', 684758, 'properties/2-3.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(970, 0, '2', 52, 'image/jpeg', 93464, 'properties/2.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(971, 0, '21', 52, 'image/jpeg', 85475, 'properties/21.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(972, 0, '22-1', 52, 'image/jpeg', 94488, 'properties/22-1.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(973, 0, '22', 52, 'image/jpeg', 713091, 'properties/22.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(974, 0, '23', 52, 'image/jpeg', 111948, 'properties/23.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(975, 0, '24-1', 52, 'image/jpeg', 96624, 'properties/24-1.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(976, 0, '24', 52, 'image/jpeg', 69034, 'properties/24.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(977, 0, '3-1', 52, 'image/jpeg', 450933, 'properties/3-1.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(978, 0, '3-2', 52, 'image/jpeg', 124405, 'properties/3-2.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(979, 0, '3-3', 52, 'image/jpeg', 762723, 'properties/3-3.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(980, 0, '3', 52, 'image/jpeg', 70442, 'properties/3.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(981, 0, '31', 52, 'image/jpeg', 33300, 'properties/31.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(982, 0, '311', 52, 'image/jpeg', 22270, 'properties/311.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(983, 0, '32', 52, 'image/jpeg', 18100, 'properties/32.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(984, 0, '32223-43914-378', 52, 'image/jpeg', 716445, 'properties/32223-43914-378.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(985, 0, '33', 52, 'image/jpeg', 21031, 'properties/33.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(986, 0, '34', 52, 'image/jpeg', 19947, 'properties/34.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(987, 0, '35', 52, 'image/jpeg', 24653, 'properties/35.jpg', '[]', '2021-06-11 20:57:10', '2021-06-11 20:57:10', NULL),
(988, 0, '4-1', 52, 'image/jpeg', 433537, 'properties/4-1.jpg', '[]', '2021-06-11 20:57:10', '2021-06-11 20:57:10', NULL),
(989, 0, '4-2', 52, 'image/jpeg', 642443, 'properties/4-2.jpg', '[]', '2021-06-11 20:57:10', '2021-06-11 20:57:10', NULL),
(990, 0, '4', 52, 'image/jpeg', 96537, 'properties/4.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(991, 0, '411', 52, 'image/jpeg', 29035, 'properties/411.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(992, 0, '42', 52, 'image/jpeg', 24790, 'properties/42.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(993, 0, '421834935dbc9ef3aaa42', 52, 'image/jpeg', 538188, 'properties/421834935dbc9ef3aaa42.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(994, 0, '43', 52, 'image/jpeg', 20920, 'properties/43.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(995, 0, '44', 52, 'image/jpeg', 17781, 'properties/44.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(996, 0, '5-1', 52, 'image/jpeg', 86536, 'properties/5-1.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(997, 0, '5-2', 52, 'image/jpeg', 656323, 'properties/5-2.jpg', '[]', '2021-06-11 20:57:12', '2021-06-11 20:57:12', NULL),
(998, 0, '5', 52, 'image/jpeg', 206027, 'properties/5.jpg', '[]', '2021-06-11 20:57:12', '2021-06-11 20:57:12', NULL),
(999, 0, '6-1', 52, 'image/jpeg', 252518, 'properties/6-1.jpg', '[]', '2021-06-11 20:57:12', '2021-06-11 20:57:12', NULL),
(1000, 0, '6-2', 52, 'image/jpeg', 76855, 'properties/6-2.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1001, 0, '6', 52, 'image/jpeg', 51884, 'properties/6.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1002, 0, '7-1', 52, 'image/jpeg', 46086, 'properties/7-1.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1003, 0, '7-2', 52, 'image/jpeg', 172462, 'properties/7-2.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1004, 0, '7', 52, 'image/jpeg', 464807, 'properties/7.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1005, 0, '71', 52, 'image/jpeg', 127638, 'properties/71.jpg', '[]', '2021-06-11 20:57:14', '2021-06-11 20:57:14', NULL),
(1006, 0, '72', 52, 'image/jpeg', 99746, 'properties/72.jpg', '[]', '2021-06-11 20:57:14', '2021-06-11 20:57:14', NULL),
(1007, 0, '73', 52, 'image/jpeg', 99089, 'properties/73.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1008, 0, '74', 52, 'image/jpeg', 108268, 'properties/74.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1009, 0, '75', 52, 'image/jpeg', 144040, 'properties/75.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1010, 0, '78', 52, 'image/jpeg', 132835, 'properties/78.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1011, 0, '79', 52, 'image/jpeg', 128490, 'properties/79.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1012, 0, '8-1', 52, 'image/jpeg', 35774, 'properties/8-1.jpg', '[]', '2021-06-11 20:57:16', '2021-06-11 20:57:16', NULL),
(1013, 0, '8-2', 52, 'image/jpeg', 116324, 'properties/8-2.jpg', '[]', '2021-06-11 20:57:16', '2021-06-11 20:57:16', NULL),
(1014, 0, '8', 52, 'image/jpeg', 542999, 'properties/8.jpg', '[]', '2021-06-11 20:57:16', '2021-06-11 20:57:16', NULL),
(1015, 0, '9-1', 52, 'image/jpeg', 82701, 'properties/9-1.jpg', '[]', '2021-06-11 20:57:17', '2021-06-11 20:57:17', NULL),
(1016, 0, '9', 52, 'image/jpeg', 98602, 'properties/9.jpg', '[]', '2021-06-11 20:57:17', '2021-06-11 20:57:17', NULL),
(1017, 0, 'a1-1', 52, 'image/jpeg', 244411, 'properties/a1-1.jpg', '[]', '2021-06-11 20:57:17', '2021-06-11 20:57:17', NULL),
(1018, 0, 'a1-2', 52, 'image/jpeg', 213475, 'properties/a1-2.jpg', '[]', '2021-06-11 20:57:17', '2021-06-11 20:57:17', NULL),
(1019, 0, 'a1', 52, 'image/jpeg', 104460, 'properties/a1.jpg', '[]', '2021-06-11 20:57:18', '2021-06-11 20:57:18', NULL),
(1020, 0, 'a10', 52, 'image/jpeg', 135558, 'properties/a10.jpg', '[]', '2021-06-11 20:57:18', '2021-06-11 20:57:18', NULL),
(1021, 0, 'a2-1', 52, 'image/jpeg', 58090, 'properties/a2-1.jpg', '[]', '2021-06-11 20:57:18', '2021-06-11 20:57:18', NULL),
(1022, 0, 'a2-2', 52, 'image/jpeg', 110869, 'properties/a2-2.jpg', '[]', '2021-06-11 20:57:18', '2021-06-11 20:57:18', NULL),
(1023, 0, 'a2', 52, 'image/jpeg', 79585, 'properties/a2.jpg', '[]', '2021-06-11 20:57:19', '2021-06-11 20:57:19', NULL),
(1024, 0, 'a3-1', 52, 'image/jpeg', 103281, 'properties/a3-1.jpg', '[]', '2021-06-11 20:57:19', '2021-06-11 20:57:19', NULL),
(1025, 0, 'a3-2', 52, 'image/jpeg', 180354, 'properties/a3-2.jpg', '[]', '2021-06-11 20:57:19', '2021-06-11 20:57:19', NULL),
(1026, 0, 'a3', 52, 'image/jpeg', 182143, 'properties/a3.jpg', '[]', '2021-06-11 20:57:19', '2021-06-11 20:57:19', NULL),
(1027, 0, 'a4-1', 52, 'image/jpeg', 93023, 'properties/a4-1.jpg', '[]', '2021-06-11 20:57:20', '2021-06-11 20:57:20', NULL),
(1028, 0, 'a4-2', 52, 'image/jpeg', 91918, 'properties/a4-2.jpg', '[]', '2021-06-11 20:57:20', '2021-06-11 20:57:20', NULL),
(1029, 0, 'a4', 52, 'image/jpeg', 79498, 'properties/a4.jpg', '[]', '2021-06-11 20:57:20', '2021-06-11 20:57:20', NULL),
(1030, 0, 'a5-1', 52, 'image/jpeg', 184906, 'properties/a5-1.jpg', '[]', '2021-06-11 20:57:21', '2021-06-11 20:57:21', NULL),
(1031, 0, 'a5', 52, 'image/jpeg', 116582, 'properties/a5.jpg', '[]', '2021-06-11 20:57:21', '2021-06-11 20:57:21', NULL),
(1032, 0, 'a6-1', 52, 'image/jpeg', 581176, 'properties/a6-1.jpg', '[]', '2021-06-11 20:57:21', '2021-06-11 20:57:21', NULL),
(1033, 0, 'a6', 52, 'image/jpeg', 82219, 'properties/a6.jpg', '[]', '2021-06-11 20:57:21', '2021-06-11 20:57:21', NULL),
(1034, 0, 'a7', 52, 'image/jpeg', 436253, 'properties/a7.jpg', '[]', '2021-06-11 20:57:22', '2021-06-11 20:57:22', NULL),
(1035, 0, 'a8', 52, 'image/jpeg', 220787, 'properties/a8.jpg', '[]', '2021-06-11 20:57:22', '2021-06-11 20:57:22', NULL),
(1036, 0, 'a9', 52, 'image/jpeg', 174424, 'properties/a9.jpg', '[]', '2021-06-11 20:57:22', '2021-06-11 20:57:22', NULL),
(1037, 0, 'b1', 52, 'image/jpeg', 169643, 'properties/b1.jpg', '[]', '2021-06-11 20:57:23', '2021-06-11 20:57:23', NULL),
(1038, 0, 'b2', 52, 'image/jpeg', 92903, 'properties/b2.jpg', '[]', '2021-06-11 20:57:23', '2021-06-11 20:57:23', NULL),
(1039, 0, 'b3', 52, 'image/jpeg', 130884, 'properties/b3.jpg', '[]', '2021-06-11 20:57:23', '2021-06-11 20:57:23', NULL),
(1040, 0, 'b4-1', 52, 'image/jpeg', 151288, 'properties/b4-1.jpg', '[]', '2021-06-11 20:57:23', '2021-06-11 20:57:23', NULL),
(1041, 0, 'b4', 52, 'image/jpeg', 101182, 'properties/b4.jpg', '[]', '2021-06-11 20:57:24', '2021-06-11 20:57:24', NULL),
(1042, 0, 'b5-1', 52, 'image/jpeg', 136853, 'properties/b5-1.jpg', '[]', '2021-06-11 20:57:24', '2021-06-11 20:57:24', NULL),
(1043, 0, 'b5', 52, 'image/jpeg', 69849, 'properties/b5.jpg', '[]', '2021-06-11 20:57:24', '2021-06-11 20:57:24', NULL),
(1044, 0, 'b6', 52, 'image/jpeg', 104434, 'properties/b6.jpg', '[]', '2021-06-11 20:57:24', '2021-06-11 20:57:24', NULL),
(1045, 0, 'download', 52, 'image/jpeg', 10833, 'properties/download.jpg', '[]', '2021-06-11 20:57:25', '2021-06-11 20:57:25', NULL),
(1046, 0, 'e1', 52, 'image/jpeg', 1105244, 'properties/e1.jpg', '[]', '2021-06-11 20:57:25', '2021-06-11 20:57:25', NULL),
(1047, 0, 'e2', 52, 'image/jpeg', 1062944, 'properties/e2.jpg', '[]', '2021-06-11 20:57:25', '2021-06-11 20:57:25', NULL),
(1048, 0, 'e3', 52, 'image/jpeg', 1113759, 'properties/e3.jpg', '[]', '2021-06-11 20:57:26', '2021-06-11 20:57:26', NULL),
(1049, 0, 'e4', 52, 'image/jpeg', 1003508, 'properties/e4.jpg', '[]', '2021-06-11 20:57:26', '2021-06-11 20:57:26', NULL),
(1050, 0, 'e5', 52, 'image/jpeg', 948302, 'properties/e5.jpg', '[]', '2021-06-11 20:57:26', '2021-06-11 20:57:26', NULL),
(1051, 0, 'e7', 52, 'image/jpeg', 916078, 'properties/e7.jpg', '[]', '2021-06-11 20:57:27', '2021-06-11 20:57:27', NULL),
(1052, 0, 'e8', 52, 'image/jpeg', 820972, 'properties/e8.jpg', '[]', '2021-06-11 20:57:27', '2021-06-11 20:57:27', NULL),
(1053, 0, 'p1', 52, 'image/jpeg', 198758, 'properties/p1.jpg', '[]', '2021-06-11 20:57:28', '2021-06-11 20:57:28', NULL),
(1054, 0, 'p2', 52, 'image/jpeg', 427643, 'properties/p2.jpg', '[]', '2021-06-11 20:57:28', '2021-06-11 20:57:28', NULL),
(1055, 0, 'property-video-thumb', 52, 'image/jpeg', 26909, 'properties/property-video-thumb.jpg', '[]', '2021-06-11 20:57:29', '2021-06-11 20:57:29', NULL),
(1056, 0, 'q1', 52, 'image/jpeg', 458500, 'properties/q1.jpg', '[]', '2021-06-11 20:57:29', '2021-06-11 20:57:29', NULL),
(1057, 0, 'q2', 52, 'image/jpeg', 233211, 'properties/q2.jpg', '[]', '2021-06-11 20:57:29', '2021-06-11 20:57:29', NULL),
(1058, 0, 'q3', 52, 'image/jpeg', 328317, 'properties/q3.jpg', '[]', '2021-06-11 20:57:29', '2021-06-11 20:57:29', NULL),
(1059, 0, 'q6', 52, 'image/jpeg', 249538, 'properties/q6.jpg', '[]', '2021-06-11 20:57:30', '2021-06-11 20:57:30', NULL),
(1060, 0, 'q7', 52, 'image/jpeg', 147871, 'properties/q7.jpg', '[]', '2021-06-11 20:57:30', '2021-06-11 20:57:30', NULL),
(1061, 0, 'q8', 52, 'image/jpeg', 194815, 'properties/q8.jpg', '[]', '2021-06-11 20:57:30', '2021-06-11 20:57:30', NULL),
(1062, 0, 't1', 52, 'image/jpeg', 66858, 'properties/t1.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1063, 0, 't2', 52, 'image/jpeg', 86492, 'properties/t2.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1064, 0, 't3', 52, 'image/jpeg', 91376, 'properties/t3.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1065, 0, 't4', 52, 'image/jpeg', 77280, 'properties/t4.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1066, 0, 't5', 52, 'image/jpeg', 94036, 'properties/t5.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1067, 0, 'wp1a', 52, 'image/jpeg', 168494, 'properties/wp1a.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1068, 0, 'avatar', 53, 'image/jpeg', 151486, 'users/avatar.jpg', '[]', '2021-06-11 20:57:32', '2021-06-11 20:57:32', NULL),
(1069, 1, 'logo', 0, 'image/png', 18488, 'logo.png', '[]', '2021-11-21 00:25:38', '2021-11-21 00:25:38', NULL),
(1070, 1, 'logo-white', 0, 'image/png', 15127, 'logo-white.png', '[]', '2021-11-21 00:28:09', '2021-11-21 00:28:09', NULL),
(1071, 1, 'favicon-150x150', 0, 'image/png', 8583, 'favicon-150x150.png', '[]', '2021-11-21 00:29:01', '2021-11-21 00:29:01', NULL),
(1072, 1, 'banner-1', 1, 'image/jpeg', 133688, 'banner/banner-1.jpg', '[]', '2021-11-21 00:40:05', '2021-11-21 00:40:05', NULL),
(1073, 1, 'castillo-de-disneyland-410x270', 0, 'image/jpeg', 41798, 'castillo-de-disneyland-410x270.jpg', '[]', '2021-11-21 01:39:45', '2021-11-21 01:39:45', NULL),
(1074, 1, '2009-0726-ca-bakersfield-truxtontower-410x270', 0, 'image/jpeg', 43064, '2009-0726-ca-bakersfield-truxtontower-410x270.jpg', '[]', '2021-11-21 01:40:43', '2021-11-21 01:40:43', NULL),
(1075, 1, 'goldengatebridge-001-410x270', 0, 'image/jpeg', 48020, 'goldengatebridge-001-410x270.jpg', '[]', '2021-11-21 01:41:49', '2021-11-21 01:41:49', NULL),
(1076, 1, 'los-angeles-winter-2016-410x270', 0, 'image/jpeg', 41531, 'los-angeles-winter-2016-410x270.jpg', '[]', '2021-11-21 01:42:17', '2021-11-21 01:42:17', NULL),
(1077, 1, 'oaklandnightskylineandlakemerritt-410x270', 0, 'image/jpeg', 35127, 'oaklandnightskylineandlakemerritt-410x270.jpg', '[]', '2021-11-21 01:43:40', '2021-11-21 01:43:40', NULL),
(1078, 1, '500', 52, 'image/jpeg', 192287, 'properties/500.jpg', '[]', '2021-11-27 03:34:49', '2021-11-27 03:34:49', NULL),
(1079, 1, 'download-1', 52, 'image/jpeg', 7182, 'properties/download-1.jpg', '[]', '2021-11-27 03:34:52', '2021-11-27 03:34:52', NULL),
(1080, 1, 'home-modular-kitchen-500x500', 52, 'image/jpeg', 40184, 'properties/home-modular-kitchen-500x500.jpeg', '[]', '2021-11-27 03:34:53', '2021-11-27 03:34:53', NULL),
(1081, 1, 'modern-beautiful-flat-roof', 52, 'image/jpeg', 311227, 'properties/modern-beautiful-flat-roof.jpg', '[]', '2021-11-27 03:34:56', '2021-11-27 03:34:56', NULL),
(1082, 1, 'VintageConnoisseur-HP-scaled', 52, 'image/jpeg', 538359, 'properties/vintageconnoisseur-hp-scaled.jpg', '[]', '2021-11-27 03:34:58', '2021-11-27 03:34:58', NULL),
(1083, 1, 'modern-beautiful-flat-roof-1', 52, 'image/jpeg', 311227, 'properties/modern-beautiful-flat-roof-1.jpg', '[]', '2021-12-05 06:19:04', '2021-12-05 06:19:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Banners', 'banner', 0, '2019-11-16 02:00:43', '2019-11-16 02:00:50', NULL),
(45, 0, 'accounts', 'accounts', 0, '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(47, 0, 'general', 'general', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL),
(48, 0, 'news', 'news', 0, '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(49, 0, 'cities', 'cities', 0, '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(50, 0, 'logo', 'logo', 0, '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(51, 0, 'projects', 'projects', 0, '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(52, 0, 'properties', 'properties', 0, '2021-06-11 20:57:02', '2021-06-11 20:57:02', NULL),
(53, 0, 'users', 'users', 0, '2021-06-11 20:57:32', '2021-06-11 20:57:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 'About', 'about', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(3, 'More information', 'more-information', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(9, 'Location', 'location', 'published', '2021-11-26 23:39:19', '2021-11-26 23:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 5, 'main-menu', '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT 0,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(2, 1, 0, 0, NULL, '/properties?type=sale', '', 0, 'Sale', '', '_self', 0, '2021-06-11 20:56:49', '2021-11-21 00:47:57'),
(6, 1, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', '', 4, 'Contact Us', '', '_self', 0, '2021-06-11 20:56:49', '2021-11-21 00:57:55'),
(7, 2, 0, 3, 'Botble\\Page\\Models\\Page', '/about-us', '', 0, 'About us', '', '_self', 0, '2021-06-11 20:56:49', '2021-11-21 01:01:18'),
(8, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', '', 1, 'Contact us', '', '_self', 0, '2021-06-11 20:56:49', '2021-11-21 01:01:18'),
(10, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/terms-conditions', '', 2, 'Terms & Conditions', '', '_self', 0, '2021-06-11 20:56:49', '2021-11-21 01:01:18'),
(12, 3, 0, 0, NULL, '/properties', '', 0, 'All properties', '', '_self', 0, '2021-06-11 20:56:49', '2021-11-21 01:00:45'),
(13, 3, 0, 0, NULL, '/properties?type=sale', '', 1, 'Houses for sale', '', '_self', 0, '2021-06-11 20:56:49', '2021-11-21 01:00:45'),
(14, 3, 0, 0, NULL, '/properties?type=rent', '', 2, 'Houses for rent', '', '_self', 0, '2021-06-11 20:56:49', '2021-11-21 01:00:46'),
(19, 5, 0, 0, NULL, '/projects', NULL, 0, 'Dự án', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(20, 5, 0, 0, NULL, '/properties', NULL, 0, 'Nhà - Căn Hộ', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(21, 5, 0, 0, NULL, '/agents', NULL, 0, 'Đại lý', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(22, 5, 0, 8, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Tin tức', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(23, 5, 0, 0, NULL, '/careers', NULL, 0, 'Tuyển dụng', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(24, 5, 0, 10, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(25, 6, 0, 9, 'Botble\\Page\\Models\\Page', '/ve-chung-toi', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(26, 6, 0, 10, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(27, 6, 0, 0, NULL, '/careers', NULL, 0, 'Tuyển dụng', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(28, 6, 0, 11, 'Botble\\Page\\Models\\Page', '/dieu-khoan-va-quy-dinh', NULL, 0, 'Điều khoản và quy định', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(29, 7, 0, 0, NULL, '/projects', NULL, 0, 'Dự án', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(30, 7, 0, 0, NULL, '/properties', NULL, 0, 'Nhà - Căn hộ', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(31, 7, 0, 0, NULL, '/properties?type=sale', NULL, 0, 'Nhà bán', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(32, 7, 0, 0, NULL, '/properties?type=rent', NULL, 0, 'Nhà cho thuê', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(33, 8, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Tin tức mới nhất', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(34, 8, 0, 3, 'Botble\\Blog\\Models\\Category', '/news/kien-truc-nha', NULL, 0, 'Kiến trúc nhà', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(35, 8, 0, 5, 'Botble\\Blog\\Models\\Category', '/news/thiet-ke-nha', NULL, 0, 'Thiết kế nhà', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(36, 8, 0, 7, 'Botble\\Blog\\Models\\Category', '/news/vat-lieu-xay-dung', NULL, 0, 'Vật liệu xây dựng', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(37, 1, 0, 0, NULL, '/properties?type=rent', '', 1, 'Rent', '', '_self', 0, '2021-11-21 00:49:52', '2021-11-21 00:49:52'),
(38, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/about-us', '', 2, 'About Us', '', '_self', 0, '2021-11-21 00:52:34', '2021-11-21 00:58:25'),
(39, 1, 0, 13, 'Botble\\Page\\Models\\Page', '/location', '', 3, 'Location', '', '_self', 0, '2021-11-21 00:57:22', '2021-11-21 00:57:55'),
(40, 9, 0, 0, NULL, '#', '', 0, 'Nairobi', '', '_self', 0, '2021-11-26 23:40:30', '2021-11-27 03:12:51'),
(41, 9, 0, 0, NULL, '#', '', 1, 'Dagoretti North', '', '_self', 0, '2021-11-26 23:41:59', '2021-11-26 23:41:59'),
(42, 9, 0, 0, NULL, '#', '', 2, 'Langata', '', '_self', 0, '2021-11-26 23:42:00', '2021-11-26 23:42:00'),
(44, 9, 0, 0, NULL, '/', '', 3, 'Mombasa', '', '_self', 0, '2021-11-27 03:05:54', '2021-11-27 03:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `reference_id`, `meta_key`, `meta_value`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 20:34:59', '2019-11-17 20:34:59'),
(2, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 20:53:34', '2019-11-17 20:53:34'),
(3, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 21:09:55', '2019-11-17 21:09:55'),
(5, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(8, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 00:47:52', '2019-11-18 00:47:52'),
(9, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:05:58', '2019-11-18 01:05:58'),
(10, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:12:07', '2019-11-18 01:12:07'),
(12, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:49:36', '2019-11-18 01:49:36'),
(13, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:02:19', '2019-11-18 02:02:19'),
(14, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:16:53', '2019-11-18 02:16:53'),
(15, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:22:48', '2019-11-18 02:22:48'),
(16, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(17, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:47:05', '2019-11-18 02:47:05'),
(18, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(19, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(20, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(21, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(22, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:59:01', '2019-11-18 02:59:01'),
(23, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(24, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(29, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:23:02', '2019-11-18 07:23:02'),
(30, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:36:29', '2019-11-18 07:36:29'),
(31, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:44:44', '2019-11-18 07:44:44'),
(32, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:59:14', '2019-11-18 07:59:14'),
(33, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 08:13:07', '2019-11-18 08:13:07'),
(40, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:03:11', '2019-11-21 06:03:11'),
(42, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(52, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(53, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(54, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(55, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(56, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(57, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(58, 28, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 29, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 30, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 31, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 32, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 33, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 34, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-22 01:26:08', '2019-11-22 01:26:08'),
(66, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:26:31', '2019-11-22 01:26:31'),
(67, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:29:45', '2019-11-22 01:29:45'),
(68, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:33:23', '2019-11-22 01:33:23'),
(69, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:39:38', '2019-11-22 01:39:38'),
(74, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(79, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2021-01-03 17:26:32', '2021-01-03 17:26:32'),
(80, 2, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(81, 4, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-11-27 03:35:35'),
(82, 6, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(83, 8, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(84, 10, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(85, 12, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(86, 14, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(87, 16, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(88, 18, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(89, 20, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(90, 22, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(91, 24, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(92, 26, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(93, 28, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(94, 30, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(95, 32, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(96, 34, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_07_15_042406_change_site_title_from_settings_to_theme_options', 1),
(19, '2019_08_13_033145_remove_unused_columns_in_users_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_09_07_030654_update_menu_nodes_table', 1),
(22, '2019_09_07_045041_update_slugs_table', 1),
(23, '2019_09_07_050405_update_slug_reference_for_page', 1),
(24, '2019_09_08_014859_update_meta_boxes_table', 1),
(25, '2019_09_08_015629_update_meta_box_data_for_page', 1),
(26, '2019_09_12_073711_update_media_url', 1),
(27, '2019_09_12_073711_update_media_url_for_current_data', 1),
(28, '2019_10_20_002256_remove_parent_id_in_pages_table', 1),
(31, '2018_06_22_032304_create_real_estate_table', 2),
(32, '2015_06_29_025744_create_audit_history', 3),
(33, '2015_06_18_033822_create_blog_table', 4),
(34, '2019_09_07_035526_update_menu_node_reference_type_for_category', 4),
(35, '2019_09_07_050058_update_slug_reference_for_blog', 4),
(36, '2019_09_07_155716_update_language_meta_for_blog', 4),
(37, '2019_09_08_015552_update_meta_box_data_for_blog', 4),
(38, '2019_10_20_002342_remove_parent_id_in_tags_table', 4),
(39, '2016_10_03_032336_create_languages_table', 5),
(40, '2019_09_07_154718_update_lang_meta_table', 5),
(41, '2017_10_24_154832_create_newsletter_table', 6),
(42, '2016_06_17_091537_create_contacts_table', 7),
(43, '2015_08_15_122343_create_notes_table', 8),
(44, '2019_11_18_035125_add_column_type_into_re_properties_table', 9),
(45, '2019_11_18_035712_create_investor_table', 9),
(46, '2019_11_18_040153_update_real_estates_table', 9),
(47, '2019_11_18_041228_drop_table_re_property_categories', 10),
(48, '2019_11_18_082146_create_currencies_table', 11),
(49, '2019_11_18_061011_create_country_table', 12),
(50, '2019_11_18_061730_create_state_table', 12),
(51, '2019_11_18_062515_create_city_table', 12),
(52, '2019_11_19_063851_create_project_features_table', 13),
(53, '2019_11_21_090830_update_project_and_property_table', 14),
(54, '2019_11_21_130139_add_price_to_projects_table', 15),
(55, '2019_11_14_210650_create_consults_table', 16),
(56, '2019_11_26_024326_update_property_type', 17),
(57, '2019_06_24_211801_create_career_table', 18),
(58, '2019_12_03_123314_add_column_slug_into_cities_table', 19),
(59, '2019_12_03_124417_add_column_city_id_into_table_properties_and_projects', 19),
(60, '2017_05_18_080441_create_payment_tables', 20),
(61, '2019_12_10_140938_create_vendor_table', 20),
(62, '2019_12_15_025938_update_column_images_in_real_estate_tables', 20),
(63, '2019_12_17_064316_add_column_period_to_table_re_properties', 20),
(64, '2019_12_24_033049_add_column_author_into_re_properties_table', 20),
(65, '2019_12_24_083810_vendor_create_package_table', 20),
(66, '2019_12_27_004653_update_vendors_table_with_package_data', 20),
(68, '2020_01_08_002704_real_estate_create_type_table', 21),
(69, '2020_01_10_133700_change_re_types_to_re_categories', 22),
(70, '2016_10_07_193005_create_translations_table', 23),
(71, '2020_01_23_133752_update_account_tables', 24),
(72, '2020_02_03_144309_update_column_payment_channel', 25),
(73, '2020_02_06_143217_update_vendor_table', 26),
(74, '2020_02_11_133026_add_description_to_table_payments', 27),
(75, '2020_02_11_140823_create_transactions_table', 27),
(76, '2020_02_23_111922_fix_column_number_block_in_re_properties_table', 27),
(77, '2020_03_24_151004_add_moderation_status_into_properties_table', 28),
(78, '2020_03_25_030953_create_table_vendor_packages', 29),
(79, '2020_03_25_083610_add_column_expire_date_into_re_properties_table', 30),
(80, '2020_03_26_081108_add_column_auto_renew_to_re_properties_table', 31),
(81, '2020_03_16_072752_add_column_abbreviation_to_states_table', 32),
(82, '2020_03_28_020724_make_column_user_id_nullable_table_revisions', 33),
(83, '2020_03_23_093053_update_payments_table', 34),
(84, '2020_04_22_074304_add_column_never_expired_to_re_properties_table', 35),
(85, '2020_05_26_014304_add_column_provider_to_oauth_clients_table', 36),
(86, '2020_07_27_085437_add_icon_to_re_features', 37),
(90, '2020_08_21_102728_real_estate_create_facility_table', 38),
(91, '2020_08_22_024455_rename_table_for_accounts', 39),
(92, '2020_08_26_130439_add_column_username_into_table_re_accounts', 40),
(93, '2020_09_09_110653_update_table_careers', 41),
(94, '2020_09_15_111419_fix_old_data_for_re_properties', 42),
(95, '2020_10_05_030817_make_column_charge_id_nullable', 43),
(96, '2020_10_18_134416_fix_audit_logs_table', 44),
(97, '2020_10_24_133432_change_column_distance_to_string', 45),
(99, '2020_10_31_053746_add_column_description_into_re_categories_table', 46),
(100, '2019_01_05_053554_create_jobs_table', 47),
(101, '2020_12_05_112556_change_contact_page_to_a_page', 48),
(102, '2021_02_11_031126_update_price_column_in_projects_and_properties', 49),
(103, '2021_02_16_092633_remove_default_value_for_author_type', 50),
(104, '2021_03_08_024049_add_lat_long_into_real_estate_tables', 51),
(105, '2021_03_27_144913_add_customer_type_into_table_payments', 52),
(106, '2021_05_24_034720_make_column_currency_nullable', 53),
(107, '2021_06_10_091950_add_column_is_featured_to_table_re_accounts', 54),
(108, '2021_07_07_021757_update_table_account_activity_logs', 55),
(109, '2021_07_18_101839_fix_old_theme_options', 56),
(110, '2021_08_05_134214_fix_social_link_theme_options', 57),
(111, '2021_08_09_161302_add_metadata_column_to_payments_table', 58),
(112, '2021_09_29_042758_create_re_categories_multilevel_table', 59),
(113, '2021_10_19_020859_update_metadata_field', 60),
(114, '2021_10_31_031254_add_company_to_accounts_table', 61);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<shortcode class=\"bb-shortcode\">[we_located_to_live][/we_located_to_live]</shortcode><shortcode class=\"bb-shortcode\">[properties-by-locations][/properties-by-locations]</shortcode><shortcode class=\"bb-shortcode\">[properties-for-sale][/properties-for-sale]</shortcode><shortcode class=\"bb-shortcode\">[properties-for-rent][/properties-for-rent]</shortcode><shortcode class=\"bb-shortcode\">[listing-banner][/listing-banner]</shortcode>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-11-25 22:09:57'),
(2, 'News', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(3, 'About us', '<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/vietnam-office-4.jpg\" /></p>\n', 1, NULL, 'default', 0, 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(4, 'Contact', '<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(5, 'Terms & Conditions', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n', 1, NULL, 'default', 0, 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(6, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(7, 'Trang chủ', '<div>[featured-projects][/featured-projects]</div><div>[properties-by-locations][/properties-by-locations]</div><div>[properties-for-sale][/properties-for-sale]</div><div>[properties-for-rent][/properties-for-rent]</div><div>[featured-agents title=\"Đại lý nổi bật\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Nhà/căn hộ đã xem\" description=\"Các căn hộ/nhà mà bạn đã xem.\"][/recently-viewed-properties]</div><div>[latest-news][/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(8, 'Tin tức', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(9, 'Về chúng tôi', '<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. SƠ LƯỢC VỀ C&Ocirc;NG TY</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Được th&agrave;nh lập ng&agrave;y 28 - 08 -1993 (tiền th&acirc;n l&agrave; c&ocirc;ng ty TNHH X&acirc;y Dựng Trường Thịnh Ph&aacute;t), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, x&acirc;y biệt thự cho thu&ecirc;.&nbsp;<br />\nVới khẩu hiệu &nbsp;&ldquo;Đ&aacute;nh bật thời gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; c&ugrave;ng chiến lược ph&aacute;t triển bền vững, lấy Bất Động Sản l&agrave;m lĩnh vực trọng t&acirc;m, Flex Home kh&ocirc;ng ngừng kết nối giữa người cần mua v&agrave; người cần b&aacute;n trong lĩnh vực bất động sản, đưa mọi người x&iacute;ch lại gần nhau hơn, vượt qua khoảng c&aacute;ch về thời gian v&agrave; kh&ocirc;ng gian, l&agrave; nơi đ&aacute;ng tin tưởng cho sự đầu tư bất động sản - một lĩnh vực kh&ocirc;ng ngừng ph&aacute;t triển qua thời gian.</span></span></p>\n\n<blockquote>\n<h3 style=\"text-align: center;\"><span style=\"font-size:24px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><em><strong><span style=\"color:#1abc9c;\">&ldquo;Đ&aacute;nh bật thời gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; </span></strong></em></span></span></h3>\n</blockquote>\n\n<h3 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/asset-4-at-3x.png\" style=\"width: 90%;\" /></h3>\n\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. TẦM NH&Igrave;N</strong></span></span></h4>\n\n<ul>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&acirc;u t&oacute;m địa b&agrave;n trong nước.</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vươn xa khắp c&aacute;c ch&acirc;u lục.</span></span></li>\n</ul>\n\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. SỨ MẠNG</strong></span></span></h4>\n\n<ul>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Kiến tạo cộng đồng</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">X&acirc;y dựng điểm đến</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vun đắp niềm vui</span></span></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/vietnam-office-4.jpg\" style=\"width: 100%;\" /></p>\n\n<p>&nbsp;</p>\n', 1, NULL, 'default', 0, 'Được thành lập ngày 28 - 08 -1993 (tiền thân là công ty TNHH Xây Dựng Trường Thịnh Phát), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, xây biệt thự cho thuê. Với khẩu hiệu  “Đánh bật thời gian, xuyên qua không gian” cùng chiến lược phát triển bền vững, Flex Home không ngừng kết nối giữa người cần mua và người cần bán trong lĩnh vực bất động sản', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(10, 'Liên hệ', '<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Tìm đường đi</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(11, 'Điều khoản và quy định', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Việc truy cập v&agrave; sử dụng trang web của Flex Home phụ thuộc v&agrave;o những điều khoản, điều kiện dưới đ&acirc;y, v&agrave; luật ph&aacute;p li&ecirc;n quan của Việt Nam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Quyền t&aacute;c giả&nbsp;</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Quyền t&aacute;c giả v&agrave; c&aacute;c quyền sở hữu tr&iacute; tuệ kh&aacute;c đối với mọi văn bản, h&igrave;nh ảnh, &acirc;m thanh, phần mềm v&agrave; c&aacute;c nội dung kh&aacute;c tr&ecirc;n trang web n&agrave;y thuộc quyền sở hữu của Flex Home c&ugrave;ng c&aacute;c c&ocirc;ng ty th&agrave;nh vi&ecirc;n. Người truy cập được ph&eacute;p xem c&aacute;c nội dung trong trang web, tr&iacute;ch dẫn nội dung bằng c&aacute;ch in ấn, tải về đĩa cứng v&agrave; ph&acirc;n ph&aacute;t cho người kh&aacute;c chỉ với mục đ&iacute;ch phi thương mại, cung cấp th&ocirc;ng tin hoặc mục đ&iacute;ch c&aacute; nh&acirc;n. Bất kể nội dung n&agrave;o từ trang web n&agrave;y đều kh&ocirc;ng được sử dụng để b&aacute;n hoặc ph&acirc;n t&aacute;n để kiếm lợi v&agrave; cũng kh&ocirc;ng được chỉnh sửa hoặc đưa v&agrave;o bất kỳ ấn phẩm hoặc trang web n&agrave;o kh&aacute;c.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Nội dung</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&ocirc;ng tin tr&ecirc;n trang web n&agrave;y được bi&ecirc;n soạn với sự tin tưởng cao độ nhưng chỉ d&agrave;nh cho c&aacute;c mục đ&iacute;ch nghi&ecirc;n cứu th&ocirc;ng tin tổng qu&aacute;t. Tuy ch&uacute;ng t&ocirc;i nỗ lực duy tr&igrave; th&ocirc;ng tin cập nhật v&agrave; chuẩn x&aacute;c, nhưng ch&uacute;ng t&ocirc;i kh&ocirc;ng khẳng định hay bảo đảm theo bất kỳ c&aacute;ch thức n&agrave;o về sự đầy đủ, ch&iacute;nh x&aacute;c, đ&aacute;ng tin cậy, th&iacute;ch hợp hoặc c&oacute; sẵn li&ecirc;n quan đến trang web, hoặc th&ocirc;ng tin, sản phẩm, dịch vụ, hoặc h&igrave;nh ảnh li&ecirc;n quan trong trang web v&igrave; bất cứ mục đ&iacute;ch g&igrave;. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home v&agrave; mọi nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, v&agrave; c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm g&igrave; đối với bất kỳ tổn thất, thiệt hại hoặc chi ph&iacute; ph&aacute;t sinh do việc truy cập v&agrave; sử dụng trang web n&agrave;y v&agrave; c&aacute;c trang web được kết nối với n&oacute;, bao gồm nhưng kh&ocirc;ng giới hạn, việc mất đi lợi nhuận, c&aacute;c khoản lỗ trực tiếp hoặc gi&aacute;n tiếp. Ch&uacute;ng t&ocirc;i cũng kh&ocirc;ng chịu tr&aacute;ch nhiệm, hoặc li&ecirc;n đới tr&aacute;ch nhiệm nếu trang web tạm thời kh&ocirc;ng thể truy cập do c&aacute;c vấn đề kỹ thuật nằm ngo&agrave;i tầm kiểm so&aacute;t của ch&uacute;ng t&ocirc;i. Mọi b&igrave;nh luận, gợi &yacute;, h&igrave;nh ảnh, &yacute; tưởng v&agrave; những th&ocirc;ng tin hay t&agrave;i liệu kh&aacute;c m&agrave; người sử dụng chuyển cho ch&uacute;ng t&ocirc;i th&ocirc;ng qua trang web n&agrave;y sẽ trở th&agrave;nh t&agrave;i sản độc quyền của ch&uacute;ng t&ocirc;i, bao gồm cả c&aacute;c quyền c&oacute; thể ph&aacute;t sinh trong tương lai gắn liền với ch&uacute;ng t&ocirc;i.</span></span></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Lưu &yacute; c&aacute;c trang web được kết nối</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Tại nhiều điểm trong trang web, người sử dụng c&oacute; thể nhận được c&aacute;c kết nối đến c&aacute;c trang web kh&aacute;c li&ecirc;n quan đến một kh&iacute;a cạnh cụ thể. Điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; ch&uacute;ng t&ocirc;i c&oacute; li&ecirc;n quan đến những trang web hay c&ocirc;ng ty sở hữu những trang web n&agrave;y. D&ugrave; ch&uacute;ng t&ocirc;i c&oacute; &yacute; định kết nối người sử dụng đến c&aacute;c trang web cần quan t&acirc;m, nhưng ch&uacute;ng t&ocirc;i v&agrave; c&aacute;c nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, hoặc c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm hoặc li&ecirc;n đới chịu tr&aacute;ch nhiệm g&igrave; đối với c&aacute;c trang web kh&aacute;c v&agrave; th&ocirc;ng tin chứa đựng trong đ&oacute;.</span></span></p>\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n', 1, NULL, 'default', 0, 'Quyền tác giả và các quyền sở hữu trí tuệ khác đối với mọi văn bản, hình ảnh, âm thanh, phần mềm và các nội dung khác trên trang web này thuộc quyền sở hữu của Flex Home cùng các công ty thành viên. Người truy cập được phép xem các nội dung trong trang web, trích dẫn nội dung bằng cách in ấn, tải về đĩa cứng và phân phát cho người khác chỉ với mục đích phi thương mại.', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(12, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(13, 'Location', '<shortcode class=\"bb-shortcode\">[properties-by-locations][/properties-by-locations]</shortcode>', 1, NULL, 'default', 0, 'Location', 'published', '2021-11-21 00:55:38', '2021-11-21 01:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store by real estate negotiations', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '<h2 style=\"font-style:italic;\">The profit of Bamboo Capital Group (BCG) is expected to grow tremendously during 2019-2023 thanks to a series of real estate as well as renewable energy projects, especially Radisson Blu Hoi An and King Crown Village Thao Dien.</h2>\r\n\r\n<p>BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.</p>\r\n\r\n<p>BCG expects to reach the after-tax profit of VND312 billion ($13.56 million) this year, VND681.5 ($29.6 million) in 2020, and VND826.5 billion ($35.93 million) in 2023. In real estate, BCG has implemented the Radisson Blu Hoi An project with the scale of 734 apartments and coastal villas, King Crown Village Thao Dien in District 2, Ho Chi Minh City with 17 villas in the first phase and serviced apartments and a hotel, as well as offices for lease in the second phase.</p>\r\n\r\n<p>BCG leaders shared that in 2019-2020, Radisson Blu Hoi An and King Crown Village Thao Dien will bring VND900 billion ($39.13 million) in profit to BCG, and the group is negotiating to transfer part of the group&rsquo;s capital in the two projects. BCG owns a hundred per cent in Radisson Blu Hoi An, and 48.5 per cent in King Crown Village Thao Dien.</p>\r\n\r\n<p>&quot;If we close the deals with our partners soon, BCG will fulfil the profit plan for 2019. Currently, the deal is still in progress, but we are confident in implementing our 2019 profit plan. If the deal is delayed for any reason, the profit will be transferred by the beginning of 2020,&quot; Pham Minh Tuan, deputy CEO of BCG, shared.</p>\r\n\r\n<p>The upcoming real estate projects of BCG include Condotel Pegas Nha Trang (2.74 hectares, implemented in 2020-2021), Bao Loc urban area (​​17ha, in 2019-2023), Loc Phat residential area (Bao Loc, Lam Dong &ndash; 46.9ha, implemented from 2019 to 2022), Hoa Ninh residential area (Di Linh, Lam Dong &ndash;49.3ha, implemented in 2020-2023), Hiep Binh Chanh urban area (​​6.3ha, implemented in 2020-2022).</p>\r\n\r\n<p>Regarding the capital to meet BCG&#39;s investment needs, according to Nguyen Ho Nam, chairman of BCG, most of BCG&#39;s projects are co-operating with international corporations on issues like technical and technological issues, branding, or capital co-operation.</p>\r\n\r\n<p>BCG has signed a contract with KPMG Singapore to become the exclusive consultant for BCG to seek international funding and domestic banks to increase credit room for BCG to implement a new project. Along with that, BCG received capital contributions from South Korean investors including Hanwha Energy involved in solar power plant projects and real estate firm Woomi.</p>\r\n\r\n<p>BCG is also working with a strategic partner from Europe. In the field of renewable energy, BCG finished two solar energy projects in Long An with the total capacity of over 140MW. Of these, the BCG-CME Long An 1 solar power plant, which in BCG holds 37.5 per cent, has the capacity of 40.5MW and is expected to bring revenue of VND140-150 billion ($6.1-6.5 million) per year from 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) has the capacity of 100.5MW and is expected to launch operations in this November, bringing revenue of about VND320 billion per year from 2020. BCG has a 32.5 per cent stake in GAIA.</p>\r\n\r\n<p>BCG-CME Long An 1 solar power plant sells electricity to Electricity of Vietnam at the price of 9.35 US cent per kW for 20 years, while GAIA hopes to sell electricity at 8.72 US cent per kW. In addition to the two projects above, BCG is trying to complete procedures for other solar power plants in Long An (100MW), Dak Lak (50MW), Gia Lai (300MW), Tay Ninh (165MW), a surface solar power plant in Quang Nam (200MW), a wind power plant in Soc Trang (50MW).</p>\r\n\r\n<p>At the two solar power plants in Long An, BCG worked with Vietnam-Oman Investment (VOI) and took up VND2 trillion in loans from local banks ($86.96 million &ndash; 65 per cent of the total investment capital of the two projects).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/1-2.jpg', 579, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(2, 'Private Home Sales Drop 27% In October', 'New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the Urban Redevelopment Authority (URA).\r\nAccording to URA data, developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month', '<p>New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the&nbsp;Urban Redevelopment Authority (URA).</p>\r\n\r\n<p><strong>According to URA data,&nbsp;developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month.</strong></p>\r\n\r\n<p>However, on a year-to-year comparison, the figures show an 84.9% increase.</p>\r\n\r\n<p>The new homes sold in October in the Core Central Region (CCR) tripled to 182 units from September, the biggest recorded since March 2016, with Singaporeans buying 133 of those units.</p>\r\n\r\n<p>Analysts said the good performance was mainly due to new project launches in the area, including&nbsp;<strong>Midtown<a href=\"https://www.propertyguru.com.sg/property-for-sale/at-midtown-bay-23760\"> </a>Bay Residences</strong>,&nbsp;<strong>Neu at Novena</strong>&nbsp;and&nbsp;<strong>Royalgreen</strong>. The other new launch this month was Midwood, within the Outside of Central Region (OCR)</p>\r\n\r\n<p>The deficiency in major launches in the city fringe and mass-market segments like the OCR could have been a factor in the sales drop, said OrangeTee and Tie head of research and consultancy Christine Sun.</p>\r\n\r\n<p>&ldquo;Sales volumes tend to be lower when more luxury projects are being launched in a particular month, owing to the higher price tags and lower affordability,&rdquo; she said.</p>\r\n\r\n<p>URA Realis data show that this year saw 104 non-landed new homes sales reach S$5 million and above, which is the highest mark since 155 were purchased from January to October 2011, added Sun.</p>\r\n\r\n<p>High-profile transactions, such as James Dyson&rsquo;s purchase of Singapore&rsquo;s most expensive apartment, contributed to &ldquo;significant positive sentiments for developer sales,&rdquo; said property analyst Ong Kah Seng.</p>\r\n\r\n<p>&ldquo;Despite the global trade and geopolitical uncertainties, we believe demand for Singapore private homes is still relatively stable given the tight labour market, favourable interest rate environment, and relatively healthy household balance sheet,&rdquo; said Tricia Song, Colliers International head of research for Singapore.</p>\r\n\r\n<p>Ong believes the country&rsquo;s properties will become more attractive for foreign buyers wanting stable investments.</p>\r\n\r\n<p>&ldquo;There&rsquo;s increasing international attractiveness of Singapore residential properties as offering longer term stability to all profiles of buyers, including from foreigners who are eschewing investments in Hong Kong due to that city&rsquo;s heightening social turbulence,&rdquo; he noted.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/2-2.jpg', 212, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(3, 'Singapore Overtakes Hong Kong In Terms Of Property Investment Prospects', 'Singapore now claims the top spot for real estate investment prospects in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.', '<p>The fortunes of Singapore and Hong Kong &ndash; two of Asia&rsquo;s hottest property markets &ndash; are going in different directions, reported Bloomberg citing a Urban Land Institute and PricewaterhouseCoopers LLP report.</p>\r\n\r\n<p><strong>Singapore now claims the top spot for real estate investment prospects&nbsp;in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.</strong></p>\r\n\r\n<p>Hong Kong&rsquo;s drop to the least-favoured destination for real estate investment next year is due to its retail and tourism sectors taking a beating, affecting economic growth.</p>\r\n\r\n<p>The city-state has benefited from a surge in interest among investors who are steering clear of Hong Kong and China, which are viewed as &ldquo;geopolitical flashpoints&rdquo;.</p>\r\n\r\n<p>For the past few quarters, apartment prices in Singapore have rebounded, showing resilience in the residential market, with the office sector mostly absorbing the oversupply.</p>\r\n\r\n<p>Hong Kong&rsquo;s problems bode well for Singapore, at least for a little while, according to Urban Land Institute CEO Ed Walter.</p>\r\n\r\n<p>&ldquo;A lot of theory in investing is less about what was, versus what is or what is going to be,&rdquo; he added.</p>\r\n\r\n<p><strong>Singapore also saw a rise in property transactions in the first half, with majority of the activities driven by cross-border capital. Deals amounted to $4.9 billion (S$6.6 billion) in the period, a 73% year-on-year growth.</strong></p>\r\n\r\n<p>Walter described Hong Kong as having a &ldquo;very resilient market&rdquo;, backed by its high property prices. He believes that after the protests, sectors such as retail can recover quickly.</p>\r\n\r\n<p>&ldquo;The bigger issue is what happens from a political perspective and what does that signal about Hong Kong&rsquo;s place as a financial centre,&rdquo; he said.</p>\r\n\r\n<p><strong>Singapore placed second-to-last among 22 centres as recently as 2017, overtaken by cities such as Sydney, Tokyo and Bangalore as vacancies rose and rents dropped. In 2017, Hong Kong placed 18th.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/3-2.jpg\" style=\"width: 820px; height: 410px;\" /></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/6-1.jpg', 832, NULL, '2021-06-11 20:56:55', '2021-06-11 20:57:43'),
(4, 'S. Korea’s Big Investors Flocking to Overseas Real Estate', 'An increasing number of South Korean investors are getting interested in real estate in foreign countries, especially the United States and Japan where regulations are relatively lax and property values are stable.', '<h2>KEB Hana Bank held a seminar on the global real estate investment strategy at its head office in Seoul on May 23 and nearly 100 customers attended it.</h2>\r\n\r\n<p>Hana Bank&rsquo;s private banker (PB) business division held the seminar for affluent customers to explain the procedure for taking out loans and remitting money to make an investment in real estate in major cities around the world, including New York, Los Angeles in the United States and Tokyo in Japan.</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in directly investing in the properties introduced during the seminar. Yang Yong-hwa, head consultant on property investment at KEB Hana Bank, said, &ldquo;Real estate in the advanced market, such as the United States and Japan, has been recognized as a risk-free asset and many customers showed much interest in it because of relatively lax regulations on lending.&rdquo;</p>\r\n\r\n<h3 style=\"text-align: center;\"><img alt=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" longdesc=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.jpg\" style=\"width: 573px; height: 533px;\" /></h3>\r\n\r\n<p style=\"text-align: center;\"><em>S. Korea&rsquo;s Big Investors Flocking to Overseas Real Estate</em></p>\r\n\r\n<h2>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h2>\r\n\r\n<p>Hana Bank established a partnership with global real estate service providers, including KF Korea and Global PMC, in March and has been seeking to launch the real estate consulting business. KB Kookmin Bank also introduced the global KB real estate consulting service in 2014, while Woori Bank is holding consultation sessions on investment in foreign properties by making use of its global network which is the largest among domestic banks. Shinhan Bank established a partnership with global real estate service firm, KF Korea, in April and will hold the first seminar on overseas real estate on May 27.</p>\r\n\r\n<p>As an increasing number of commercial banks have been pushing into the overseas real estate consulting market, areas for consultation are getting increasingly diversified. Tokyo has the highest demand as it is relatively easy to access and the price of real estate there is on the rise before the 2020 Summer Olympics. However, emerging countries that have a high growth potential, such as Vietnam, recently see more investment coming in.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/download.jpg', 503, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(5, 'BCG thiết lập các cuộc đàm phán bất động sản', 'Các nhà lãnh đạo BCG đã chia sẻ với các nhà đầu tư tại một cuộc họp trong tháng này rằng bất động sản và năng lượng tái tạo sẽ là hai hoạt động chính của nhóm. Trong lĩnh vực sản xuất, BCG chỉ giữ lại các doanh nghiệp đã được cơ cấu lại thành công, đạt mức hiệu quả kinh tế cần thiết và tạo nền tảng vững chắc để phát triển thành các doanh nghiệp lớn hơn.', '<h4><em>Lợi nhuận của Tập đo&agrave;n Bamboo Capital (BCG) dự kiến sẽ tăng trưởng rất lớn trong giai đoạn 2019-2023 nhờ một loạt c&aacute;c dự &aacute;n bất động sản cũng như năng lượng t&aacute;i tạo, đặc biệt l&agrave; Radisson Blu Hội An v&agrave; King Crown Village Thảo Điền.</em></h4>\r\n\r\n<p>C&aacute;c nh&agrave; l&atilde;nh đạo BCG đ&atilde; chia sẻ với c&aacute;c nh&agrave; đầu tư tại một cuộc họp trong th&aacute;ng n&agrave;y rằng bất động sản v&agrave; năng lượng t&aacute;i tạo sẽ l&agrave; hai hoạt động ch&iacute;nh của nh&oacute;m. Trong lĩnh vực sản xuất, BCG chỉ giữ lại c&aacute;c doanh nghiệp đ&atilde; được cơ cấu lại th&agrave;nh c&ocirc;ng, đạt mức hiệu quả kinh tế cần thiết v&agrave; tạo nền tảng vững chắc để ph&aacute;t triển th&agrave;nh c&aacute;c doanh nghiệp lớn hơn.</p>\r\n\r\n<p>BCG dự kiến ​​sẽ đạt mức lợi nhuận sau thuế l&agrave; 312 tỷ đồng (13,56 triệu đ&ocirc; la) trong năm nay, 681,5 đồng (29,6 triệu đ&ocirc; la) v&agrave;o năm 2020 v&agrave; 826,5 tỷ đồng (35,93 triệu đ&ocirc; la) v&agrave;o năm 2023. Trong bất động sản, BCG đ&atilde; triển khai Radisson Dự &aacute;n Blu Hội An với quy m&ocirc; 734 căn hộ v&agrave; biệt thự ven biển, King Crown Village Thảo Điền tại Quận 2, Th&agrave;nh phố Hồ Ch&iacute; Minh với 17 biệt thự trong giai đoạn đầu v&agrave; căn hộ dịch vụ v&agrave; một kh&aacute;ch sạn, cũng như văn ph&ograve;ng cho thu&ecirc; trong lần thứ hai giai đoạn.</p>\r\n\r\n<p>L&atilde;nh đạo BCG chia sẻ rằng trong giai đoạn 2019-2020, Radisson Blu Hội An v&agrave; King Crown Village Thao Điền sẽ mang lại 900 tỷ đồng (39,13 triệu USD) cho BCG, v&agrave; tập đo&agrave;n n&agrave;y đang đ&agrave;m ph&aacute;n để chuyển một phần vốn của nh&oacute;m trong hai dự &aacute;n. BCG sở hữu một trăm phần trăm tại Radisson Blu Hội An v&agrave; 48,5 phần trăm tại King Crown Village Thảo Điền.</p>\r\n\r\n<p>&quot;Nếu ch&uacute;ng t&ocirc;i sớm ho&agrave;n tất c&aacute;c thỏa thuận với c&aacute;c đối t&aacute;c, BCG sẽ ho&agrave;n th&agrave;nh kế hoạch lợi nhuận cho năm 2019. Hiện tại, thỏa thuận vẫn đang được tiến h&agrave;nh, nhưng ch&uacute;ng t&ocirc;i tự tin thực hiện kế hoạch lợi nhuận năm 2019 của m&igrave;nh. lợi nhuận sẽ được chuyển v&agrave;o đầu năm 2020, &quot;Phạm Minh Tuấn, ph&oacute; gi&aacute;m đốc điều h&agrave;nh của BCG, chia sẻ.</p>\r\n\r\n<p>C&aacute;c dự &aacute;n bất động sản sắp tới của BCG bao gồm Condotel Pegas Nha Trang (2,74 ha, thực hiện trong giai đoạn 2020-2021), khu đ&ocirc; thị Bảo Lộc (17ha, năm 2019-2023), khu d&acirc;n cư Lộc Ph&aacute;t (Bảo Lộc, L&acirc;m Đồng - 46.9 ha, thực hiện từ 2019 đến 2022), khu d&acirc;n cư H&ograve;a Ninh (Di Linh, L&acirc;m Đồng, 49.3ha, thực hiện giai đoạn 2020-2023), khu đ&ocirc; thị Hiệp B&igrave;nh (6.3ha, thực hiện giai đoạn 2020-2022).</p>\r\n\r\n<p>Về vốn để đ&aacute;p ứng nhu cầu đầu tư của BCG, theo &ocirc;ng Nguyễn Hồ Nam, Chủ tịch BCG, hầu hết c&aacute;c dự &aacute;n của BCG đều hợp t&aacute;c với c&aacute;c tập đo&agrave;n quốc tế về c&aacute;c vấn đề như vấn đề kỹ thuật v&agrave; c&ocirc;ng nghệ, x&acirc;y dựng thương hiệu hoặc hợp t&aacute;c vốn.</p>\r\n\r\n<p>BCG đ&atilde; k&yacute; hợp đồng với KPMG Singapore để trở th&agrave;nh nh&agrave; tư vấn độc quyền cho BCG t&igrave;m kiếm nguồn t&agrave;i trợ quốc tế v&agrave; ng&acirc;n h&agrave;ng trong nước để tăng ph&ograve;ng t&iacute;n dụng cho BCG để thực hiện dự &aacute;n mới. C&ugrave;ng với đ&oacute;, BCG đ&atilde; nhận được vốn g&oacute;p từ c&aacute;c nh&agrave; đầu tư H&agrave;n Quốc bao gồm Hanwha Energy tham gia v&agrave;o c&aacute;c dự &aacute;n nh&agrave; m&aacute;y điện mặt trời v&agrave; c&ocirc;ng ty bất động sản Woomi.</p>\r\n\r\n<p>BCG cũng đang l&agrave;m việc với một đối t&aacute;c chiến lược từ ch&acirc;u &Acirc;u. Trong lĩnh vực năng lượng t&aacute;i tạo, BCG đ&atilde; ho&agrave;n th&agrave;nh hai dự &aacute;n năng lượng mặt trời ở Long An với tổng c&ocirc;ng suất hơn 140MW. Trong số n&agrave;y, nh&agrave; m&aacute;y điện mặt trời BCG-CME Long An 1, tại BCG nắm giữ 37,5%, c&oacute; c&ocirc;ng suất 40,5MW v&agrave; dự kiến ​​sẽ mang lại doanh thu 140-150 tỷ đồng (6,1-6,5 triệu USD) mỗi năm từ năm 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) c&oacute; c&ocirc;ng suất 100,5MW v&agrave; dự kiến ​​sẽ ra mắt hoạt động v&agrave;o th&aacute;ng 11 n&agrave;y, mang lại doanh thu khoảng 320 tỷ đồng mỗi năm từ năm 2020. BCG c&oacute; 32,5% cổ phần của GAIA.</p>\r\n\r\n<p>Nh&agrave; m&aacute;y điện mặt trời BCG-CME Long An 1 b&aacute;n điện cho Điện lực Việt Nam với mức gi&aacute; 9,35 cent Mỹ mỗi kW trong 20 năm, trong khi GAIA hy vọng sẽ b&aacute;n điện ở mức 8,72 cent mỗi kW. Ngo&agrave;i hai dự &aacute;n tr&ecirc;n, BCG đang cố gắng ho&agrave;n tất c&aacute;c thủ tục cho c&aacute;c nh&agrave; m&aacute;y điện mặt trời kh&aacute;c ở Long An (100MW), Đăk Lăk (50MW), Gia Lai (300MW), T&acirc;y Ninh (165MW), một nh&agrave; m&aacute;y điện mặt trời ở Quảng Nam (200MW), một nh&agrave; m&aacute;y điện gi&oacute; ở S&oacute;c Trăng (50MW).</p>\r\n\r\n<p>Tại hai nh&agrave; m&aacute;y điện mặt trời ở Long An, BCG đ&atilde; l&agrave;m việc với Việt Nam - Đầu tư &Ocirc;-man (VOI) v&agrave; nhận khoản vay ngh&igrave;n tỷ đồng từ c&aacute;c ng&acirc;n h&agrave;ng địa phương (86,96 triệu đ&ocirc; la - 65% tổng vốn đầu tư của hai dự &aacute;n).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/1-2.jpg', 2352, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(6, 'Doanh số bán nhà riêng giảm 27% trong tháng 10', 'Doanh số bán nhà tư nhân mới ở Singapore đã giảm 27% trong tháng 10 kể từ tháng 9, theo Channel News Asia, dựa trên dữ liệu do Cơ quan Tái phát triển đô thị (URA) công bố.\r\nTheo dữ liệu của URA, các nhà phát triển chỉ bán được 928 căn trong tháng 10 (955 căn bao gồm nhà chung cư cao cấp), so với 1.270 căn từ tháng trước', '<p>Doanh số b&aacute;n nh&agrave; tư nh&acirc;n mới ở Singapore đ&atilde; giảm 27% trong th&aacute;ng 10 kể từ th&aacute;ng 9, theo Channel News Asia, dựa tr&ecirc;n dữ liệu do Cơ quan T&aacute;i ph&aacute;t triển đ&ocirc; thị (URA) c&ocirc;ng bố.</p>\r\n\r\n<p>Theo dữ liệu của URA, c&aacute;c nh&agrave; ph&aacute;t triển chỉ b&aacute;n được 928 căn trong th&aacute;ng 10 (955 căn bao gồm nh&agrave; chung cư cao cấp), so với 1.270 căn từ th&aacute;ng trước.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, so s&aacute;nh giữa c&aacute;c năm, c&aacute;c số liệu cho thấy mức tăng 84,9%.</p>\r\n\r\n<p>Những ng&ocirc;i nh&agrave; mới được b&aacute;n v&agrave;o th&aacute;ng 10 ở V&ugrave;ng Trung t&acirc;m (CCR) đ&atilde; tăng gấp ba lần so với 182 căn hộ kể từ th&aacute;ng 9, mức lớn nhất được ghi nhận từ th&aacute;ng 3 năm 2016, với việc người Singapore mua 133 căn hộ đ&oacute;.</p>\r\n\r\n<p>C&aacute;c nh&agrave; ph&acirc;n t&iacute;ch cho biết hiệu suất tốt chủ yếu l&agrave; do c&aacute;c dự &aacute;n mới ra mắt trong khu vực, bao gồm Midtown Bay Residences, Neu tại Novena v&agrave; Royalgreen. Sự ra mắt mới kh&aacute;c trong th&aacute;ng n&agrave;y l&agrave; Midwood, b&ecirc;n ngo&agrave;i Khu vực miền Trung (OCR)</p>\r\n\r\n<p>Sự thiếu hụt trong c&aacute;c lần ra mắt lớn ở r&igrave;a th&agrave;nh phố v&agrave; c&aacute;c ph&acirc;n kh&uacute;c thị trường đại ch&uacute;ng như OCR c&oacute; thể l&agrave; một yếu tố l&agrave;m giảm doanh số, OrangeTee v&agrave; trưởng ph&ograve;ng nghi&ecirc;n cứu v&agrave; tư vấn của Christine Sun cho biết.</p>\r\n\r\n<p>Khối lượng b&aacute;n h&agrave;ng của xu hướng c&oacute; xu hướng thấp hơn khi nhiều dự &aacute;n xa xỉ hơn được tung ra trong một th&aacute;ng cụ thể, nhờ c&aacute;c thẻ gi&aacute; cao hơn v&agrave; khả năng chi trả thấp hơn, c&ocirc; n&oacute;i.</p>\r\n\r\n<p>Dữ liệu của URA Realis cho thấy năm nay chứng kiến ​​104 doanh số b&aacute;n nh&agrave; mới kh&ocirc;ng c&oacute; đất đạt 5 triệu đ&ocirc; la Singapore trở l&ecirc;n, đ&acirc;y l&agrave; mức cao nhất kể từ 155 được mua từ th&aacute;ng 1 đến th&aacute;ng 10 năm 2011, Sun cho biết th&ecirc;m.</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n t&iacute;ch t&agrave;i sản Ong Kah Seng cho biết, c&aacute;c giao dịch cao cấp, chẳng hạn như James Dyson, mua căn hộ đắt nhất Singapore, đ&atilde; đ&oacute;ng g&oacute;p cho t&igrave;nh cảm t&iacute;ch cực quan trọng đối với doanh số của nh&agrave; ph&aacute;t triển.</p>\r\n\r\n<p>Tricia Song, người đứng đầu bộ phận nghi&ecirc;n cứu quốc tế của Singapore cho biết, bất chấp thương mại to&agrave;n cầu v&agrave; bất ổn địa ch&iacute;nh trị, ch&uacute;ng t&ocirc;i tin rằng nhu cầu về nh&agrave; ở tư nh&acirc;n Singapore vẫn tương đối ổn định do thị trường lao động chặt chẽ, m&ocirc;i trường l&atilde;i suất thuận lợi v&agrave; bảng c&acirc;n đối hộ gia đ&igrave;nh tương đối l&agrave;nh mạnh. .</p>\r\n\r\n<p>Ong tin rằng c&aacute;c t&agrave;i sản của đất nước sẽ trở n&ecirc;n hấp dẫn hơn đối với người mua nước ngo&agrave;i muốn đầu tư ổn định.</p>\r\n\r\n<p>Ở đ&oacute;, sự gia tăng sức hấp dẫn quốc tế của c&aacute;c t&agrave;i sản d&acirc;n cư Singapore v&igrave; mang lại sự ổn định l&acirc;u d&agrave;i hơn cho tất cả c&aacute;c hồ sơ của người mua, kể cả từ những người nước ngo&agrave;i đang đầu tư v&agrave;o Hồng K&ocirc;ng do sự hỗn loạn x&atilde; hội của th&agrave;nh phố đ&oacute;, &ocirc;ng lưu &yacute;.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/2-2.jpg', 1574, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(7, 'Singapore vượt qua Hồng Kông về triển vọng đầu tư bất động sản', 'Singapore hiện tuyên bố vị trí hàng đầu về triển vọng đầu tư bất động sản về mặt tăng giá trong năm 2020. Hồng Kông, bị rung chuyển bởi nhiều tháng biểu tình chính trị bạo lực, đã giảm từ vị trí thứ 14 xuống đáy của năm 2019.', '<p>Vận may của Singapore v&agrave; Hồng K&ocirc;ng - hai trong số những thị trường bất động sản n&oacute;ng nhất ch&acirc;u &Aacute; - đang đi theo những hướng kh&aacute;c nhau, Bloomberg tr&iacute;ch dẫn một b&aacute;o c&aacute;o của Viện đất đ&ocirc; thị v&agrave; b&aacute;o c&aacute;o LLP của PricewaterhouseCoopers.</p>\r\n\r\n<p>Singapore hiện tuy&ecirc;n bố vị tr&iacute; h&agrave;ng đầu về triển vọng đầu tư bất động sản về mặt tăng gi&aacute; trong năm 2020. Hồng K&ocirc;ng, bị rung chuyển bởi nhiều th&aacute;ng biểu t&igrave;nh ch&iacute;nh trị bạo lực, đ&atilde; giảm từ vị tr&iacute; thứ 14 xuống đ&aacute;y của năm 2019.</p>\r\n\r\n<p>Hồng K&ocirc;ng rơi xuống điểm đến &iacute;t được ưa chuộng nhất cho đầu tư bất động sản v&agrave;o năm tới l&agrave; do lĩnh vực b&aacute;n lẻ v&agrave; du lịch của n&oacute; bị ảnh hưởng, ảnh hưởng đến tăng trưởng kinh tế.</p>\r\n\r\n<p>Nh&agrave; nước th&agrave;nh phố đ&atilde; được hưởng lợi từ sự gia tăng lợi &iacute;ch của c&aacute;c nh&agrave; đầu tư, những người đang tr&aacute;nh xa Hồng K&ocirc;ng v&agrave; Trung Quốc, được xem như l&agrave; c&aacute;c điểm chớp nho&aacute;ng địa ch&iacute;nh trị.</p>\r\n\r\n<p>Trong v&agrave;i qu&yacute; vừa qua, gi&aacute; căn hộ tại Singapore đ&atilde; tăng trở lại, cho thấy khả năng phục hồi trong thị trường d&acirc;n cư, với lĩnh vực văn ph&ograve;ng chủ yếu hấp thụ t&igrave;nh trạng dư cung.</p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o của Gi&aacute;m đốc điều h&agrave;nh Viện Đất đai của Viện Đất đai, &ocirc;ng Walter Walter, c&aacute;c vấn đề của Hồng K&ocirc;ng, rất tốt cho Singapore, &iacute;t nhất l&agrave; trong một thời gian ngắn.</p>\r\n\r\n<p>&Ocirc;ng rất nhiều l&yacute; thuyết trong đầu tư l&agrave; &iacute;t hơn về những g&igrave; đ&atilde; xảy ra, so với những g&igrave; sẽ xảy ra hoặc sẽ xảy ra, &ocirc;ng n&oacute;i th&ecirc;m.</p>\r\n\r\n<p>Singapore cũng chứng kiến ​​sự gia tăng c&aacute;c giao dịch t&agrave;i sản trong nửa đầu năm, với phần lớn c&aacute;c hoạt động được th&uacute;c đẩy bởi nguồn vốn xuy&ecirc;n bi&ecirc;n giới. C&aacute;c ưu đ&atilde;i l&ecirc;n tới 4,9 tỷ đ&ocirc; la (6,6 tỷ đ&ocirc; la Singapore) trong giai đoạn n&agrave;y, tăng trưởng 73% so với năm trước.</p>\r\n\r\n<p>Walter m&ocirc; tả Hồng K&ocirc;ng c&oacute; một thị trường rất ki&ecirc;n cường, được hỗ trợ bởi gi&aacute; bất động sản cao. &Ocirc;ng tin rằng sau c&aacute;c cuộc biểu t&igrave;nh, c&aacute;c lĩnh vực như b&aacute;n lẻ c&oacute; thể phục hồi nhanh ch&oacute;ng.</p>\r\n\r\n<p>Vấn đề lớn hơn l&agrave; những g&igrave; xảy ra từ g&oacute;c độ ch&iacute;nh trị v&agrave; điều đ&oacute; b&aacute;o hiệu điều g&igrave; về Hồng K&ocirc;ng, nơi trở th&agrave;nh một trung t&acirc;m t&agrave;i ch&iacute;nh, &ocirc;ng n&oacute;i.</p>\r\n\r\n<p>Singapore đứng thứ hai trong số 22 trung t&acirc;m gần đ&acirc;y nhất l&agrave; năm 2017, vượt qua c&aacute;c th&agrave;nh phố như Sydney, Tokyo v&agrave; Bangalore khi vị tr&iacute; tuyển dụng tăng v&agrave; gi&aacute; thu&ecirc; giảm. Năm 2017, Hồng K&ocirc;ng xếp thứ 18.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/6-1.jpg', 2342, NULL, '2021-06-11 20:56:55', '2021-06-11 20:57:45'),
(8, 'Các nhà đầu tư lớn Hàn Quốc đổ xô vào bất động sản ở nước ngoài', 'Ngày càng có nhiều nhà đầu tư Hàn Quốc quan tâm đến bất động sản ở nước ngoài, đặc biệt là Hoa Kỳ và Nhật Bản nơi các quy định tương đối lỏng lẻo và giá trị tài sản ổn định.', '<h4>KEB Hana Bank đ&atilde; tổ chức một cuộc hội thảo về chiến lược đầu tư bất động sản to&agrave;n cầu tại trụ sở ch&iacute;nh tại Seoul v&agrave;o ng&agrave;y 23 th&aacute;ng 5 v&agrave; gần 100 kh&aacute;ch h&agrave;ng đ&atilde; tham dự.</h4>\r\n\r\n<p>Hana Bank&#39;s Private Banking Division (PB) organized a seminar for wealthy clients to explain the procedures for borrowing and transferring money to invest in real estate in these big cities. The world, including New York, Los Angeles in the United States &nbsp;and Tokyo in Japan.&nbsp;</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in investing directly in the assets introduced in the workshop. &nbsp;Yang Yong-hwa, chief advisor on real estate investment at KEB Hana Bank, said that Real Estate in advanced markets, such as the United States and Japan, has been recognized as a risk-free and high-value asset. Customers are interested in it. &nbsp;because of relatively lax regulations on lending.</p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;<img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.jpg\" style=\"width: 573px; height: 533px;\" /></p>\r\n\r\n<p style=\"text-align: center;\"><em>C&aacute;c nh&agrave; đầu tư lớn H&agrave;n Quốc đổ x&ocirc; v&agrave;o bất động sản ở nước ngo&agrave;i</em></p>\r\n\r\n<h4>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h4>\r\n\r\n<p>Ng&acirc;n h&agrave;ng Hana đ&atilde; thiết lập quan hệ đối t&aacute;c với c&aacute;c nh&agrave; cung cấp dịch vụ bất động sản to&agrave;n cầu, bao gồm KF Korea v&agrave; Global PMC, v&agrave;o th&aacute;ng 3 v&agrave; đang t&igrave;m c&aacute;ch khởi động doanh nghiệp tư vấn bất động sản. Ng&acirc;n h&agrave;ng KB Kookmin cũng giới thiệu dịch vụ tư vấn bất động sản KB to&agrave;n cầu v&agrave;o năm 2014, trong khi Ng&acirc;n h&agrave;ng Woori đang tổ chức c&aacute;c buổi tư vấn về đầu tư v&agrave;o bất động sản nước ngo&agrave;i bằng c&aacute;ch sử dụng mạng lưới to&agrave;n cầu lớn nhất trong số c&aacute;c ng&acirc;n h&agrave;ng trong nước. Ng&acirc;n h&agrave;ng Shinhan đ&atilde; thiết lập quan hệ đối t&aacute;c với c&ocirc;ng ty dịch vụ bất động sản to&agrave;n cầu, KF Korea, v&agrave;o th&aacute;ng 4 v&agrave; sẽ tổ chức hội thảo đầu ti&ecirc;n về bất động sản ở nước ngo&agrave;i v&agrave;o ng&agrave;y 27 th&aacute;ng 5.</p>\r\n\r\n<p>Khi ng&agrave;y c&agrave;ng c&oacute; nhiều ng&acirc;n h&agrave;ng thương mại đẩy v&agrave;o thị trường tư vấn bất động sản ở nước ngo&agrave;i, c&aacute;c lĩnh vực tư vấn đang ng&agrave;y c&agrave;ng đa dạng. Tokyo c&oacute; nhu cầu cao nhất v&igrave; n&oacute; tương đối dễ tiếp cận v&agrave; gi&aacute; bất động sản đang tăng l&ecirc;n trước Thế vận hội M&ugrave;a h&egrave; 2020. Tuy nhi&ecirc;n, c&aacute;c nước mới nổi c&oacute; tiềm năng tăng trưởng cao, chẳng hạn như Việt Nam, gần đ&acirc;y sẽ thấy đầu tư nhiều hơn.</p>\r\n\r\n<p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/download.jpg', 1504, NULL, '2019-11-22 01:39:38', '2021-06-11 20:56:49'),
(9, 'The Top 2020 Handbag Trends to Know', 'Fugit quia repudiandae ipsa. Illo occaecati unde omnis. Et quas corrupti aut ea. Omnis voluptatem quo corrupti veniam eos rerum consequatur. Placeat sit fuga repellat omnis hic ipsa sunt.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The long grass rustled at her feet as the March Hare. \'He denies it,\' said the Cat. \'--so long as you might catch a bat, and that\'s very like a stalk out of the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had got to come before that!\' \'Call the next witness.\' And he got up this morning? I almost wish I could shut up like a tunnel for some time without interrupting it. \'They must go back and finish your story!\' Alice called out \'The race is over!\' and they can\'t prove I did: there\'s no meaning in it,\' said the Duchess. An invitation for the Duchess and the two creatures, who had meanwhile been examining the roses. \'Off with their heads down and began to feel which way it was over at last, they must be on the trumpet, and called out, \'Sit down, all of you, and must know better\'; and this was her turn or not. So she set to work, and very angrily. \'A knot!\' said Alice, and she felt a little shriek, and went on in these words.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Alice, who felt ready to play with, and oh! ever so many different sizes in a VERY good opportunity for croqueting one of these cakes,\' she thought, \'and hand round the hall, but they were filled with cupboards and book-shelves; here and there was not an encouraging opening for a few minutes that she was quite pale (with passion, Alice thought), and it was good manners for her to wink with one finger, as he spoke. \'UNimportant, of course, to begin with,\' the Mock Turtle. Alice was more.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>Just as she heard the Queen\'s voice in the sea, \'and in that case I can creep under the sea,\' the Gryphon added \'Come, let\'s try Geography. London is the same thing as \"I sleep when I got up very sulkily and crossed over to herself, as she was nine feet high, and she ran off at once and put it in time,\' said the King. (The jury all looked so grave that she was up to the cur, \"Such a trial, dear Sir, With no jury or judge, would be QUITE as much as she did not notice this last remark that had fluttered down from the roof. There were doors all round her head. \'If I eat one of them were animals, and some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a wondering tone. \'Why, what are YOUR shoes done with?\' said the Hatter. \'You MUST remember,\' remarked the King, \'that only makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a sound of a muchness\"--did you ever see you any more!\' And.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>I know?\' said Alice, who was reading the list of singers. \'You may go,\' said the Mock Turtle replied in a melancholy air, and, after folding his arms and frowning at the top of his Normans--\" How are you thinking of?\' \'I beg your pardon!\' cried Alice in a very fine day!\' said a timid and tremulous sound.] \'That\'s different from what I should think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'shall I NEVER get any older than I am now? That\'ll be a queer thing, to be a queer thing, to be otherwise than what it might end, you know,\' Alice gently remarked; \'they\'d have been changed for Mabel! I\'ll try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'I don\'t know what to uglify is, you see, as she did not quite know what \"it\" means.\' \'I know what a Gryphon is, look at the Lizard in head downwards, and the happy summer days. THE.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1230, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(10, 'Top Search Engine Optimization Strategies!', 'Quod eum ut voluptatem fuga quia perspiciatis corrupti. Quis aperiam at error vitae in maxime iste. Accusamus consectetur aliquam tenetur magni.', '<p>Dormouse sulkily remarked, \'If you can\'t think! And oh, I wish you could only see her. She is such a tiny little thing!\' It did so indeed, and much sooner than she had not the smallest idea how to begin.\' He looked anxiously round, to make personal remarks,\' Alice said to the general conclusion, that wherever you go to on the top of its right ear and left off staring at the window.\' \'THAT you won\'t\' thought Alice, \'shall I NEVER get any older than I am to see the Mock Turtle; \'but it doesn\'t matter a bit,\' said the Caterpillar. \'Well, I never heard of uglifying!\' it exclaimed. \'You know what a long way back, and see what was the same words as before, \'It\'s all her coaxing. Hardly knowing what she did, she picked up a little before she had brought herself down to the jury, in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and down looking for them, and was just beginning to see if she were looking over their heads. She felt very lonely and low-spirited. In a minute or.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Alice, so please your Majesty?\' he asked. \'Begin at the cook, to see some meaning in it,\' but none of my life.\' \'You are not attending!\' said the Dormouse; \'VERY ill.\' Alice tried to open her mouth; but she ran off at once, and ran till she heard a voice of the Shark, But, when the race was over. Alice was so long since she had asked it aloud; and in his throat,\' said the Gryphon. \'How the creatures argue. It\'s enough to look over their slates; \'but it seems to like her, down here, and I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'or perhaps they won\'t walk the way YOU manage?\' Alice asked. The Hatter shook his grey locks, \'I kept all my limbs very supple By the time she heard her sentence three of the court with a sigh. \'I only took the place of the ground--and I should think!\' (Dinah was the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to the heads of the busy farm-yard--while the lowing of the house, and found herself falling down a large dish of tarts upon it: they looked so good, that it would feel with all speed back to the part about her any more questions about it, and very soon found out a race-course, in a game of play with a knife, it usually bleeds; and she felt sure she would manage it. \'They must go back by railway,\' she said to Alice, and she sat down and saying \"Come up again, dear!\" I shall see it trot away quietly into the garden at once; but, alas for poor Alice! when she had somehow fallen into.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>If I or she should chance to be no sort of way to change the subject. \'Ten hours the first to speak. \'What size do you know about this business?\' the King say in a large mustard-mine near here. And the Gryphon hastily. \'Go on with the end of the country is, you see, as she leant against a buttercup to rest her chin upon Alice\'s shoulder, and it was too late to wish that! She went in search of her sister, who was a little recovered from the change: and Alice guessed who it was, even before she had expected: before she found that her neck kept getting entangled among the branches, and every now and then said, \'It was much pleasanter at home,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice. \'Did you say pig, or fig?\' said the Mouse heard this, it turned a back-somersault in at the flowers and the words don\'t FIT you,\' said the Duchess; \'I never thought about it,\' said the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 690, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(11, 'Which Company Would You Choose?', 'Ipsum aliquam est facilis eligendi est voluptatibus. Commodi incidunt sapiente quasi. Rerum vel non debitis debitis fugit id expedita.', '<p>When the sands are all pardoned.\' \'Come, THAT\'S a good deal to come down the hall. After a while she was now about a thousand times as large as the soldiers had to run back into the air. She did not like to be sure; but I shall be punished for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well to say a word, but slowly followed her back to her: its face was quite surprised to find that she had read several nice little histories about children who had followed him into the air, mixed up with the distant green leaves. As there seemed to Alice severely. \'What are you thinking of?\' \'I beg pardon, your Majesty,\' said the Hatter: \'as the things get used up.\' \'But what am I then? Tell me that first, and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' said Alice loudly. \'The idea of the gloves, and she hurried out of the court,\" and I could not possibly reach it: she could remember them, all these strange Adventures of hers would, in the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>I eat one of the doors of the creature, but on the whole pack rose up into a pig,\' Alice quietly said, just as well as she spoke. (The unfortunate little Bill had left off sneezing by this time, sat down again into its face was quite impossible to say \'I once tasted--\' but checked herself hastily. \'I don\'t see,\' said the King added in an encouraging tone. Alice looked all round the hall, but they were gardeners, or soldiers, or courtiers, or three of the mushroom, and crawled away in the sea.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>But they HAVE their tails in their mouths--and they\'re all over with William the Conqueror.\' (For, with all their simple joys, remembering her own ears for having missed their turns, and she went on. \'Or would you tell me,\' said Alice, feeling very curious sensation, which puzzled her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Gryphon. \'Well, I should be like then?\' And she thought of herself, \'I wonder what was going to happen next. The first question of course you know I\'m mad?\' said Alice. \'Did you say it.\' \'That\'s nothing to what I eat\" is the driest thing I ever heard!\' \'Yes, I think you\'d take a fancy to herself as she could. \'No,\' said the Mouse to tell me your history, she do.\' \'I\'ll tell it her,\' said the March Hare,) \'--it was at the other, trying every door, she found that it had entirely disappeared; so the King added in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I might venture to ask any more HERE.\' \'But then,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Cat; and this Alice would not allow without knowing how old it was, even before she came upon a neat little house, and have next to her. \'I can see you\'re trying to invent something!\' \'I--I\'m a little snappishly. \'You\'re enough to try the effect: the next witness.\' And he got up very sulkily and crossed over to the jury, who instantly made a dreadfully ugly child: but it is.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found she could not think of any one; so, when the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked along the sea-shore--\' \'Two lines!\' cried the Mock Turtle said: \'advance twice, set to work throwing everything within her reach at the door--I do wish I had our Dinah here, I know I have done that?\' she thought. \'I must be getting somewhere near the centre of the court and got behind Alice as he could think of anything to say, she simply bowed, and took the hookah out of the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 553, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(12, 'Used Car Dealer Sales Tricks Exposed', 'Dolor aperiam consequatur ipsum dolores quidem dignissimos distinctio. Tempore dolores suscipit non soluta facere illo. Quia ut tenetur culpa eum non omnis eligendi.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen was in the grass, merely remarking that a red-hot poker will burn you if you hold it too long; and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is almost certain to disagree with you, sooner or later. However, this bottle does. I do hope it\'ll make me smaller, I suppose.\' So she went on planning to herself \'That\'s quite enough--I hope I shan\'t go, at any rate: go and get ready for your walk!\" \"Coming in a tone of this ointment--one shilling the box-- Allow me to him: She gave me a good thing!\' she said to herself how she would have appeared to them to sell,\' the Hatter went on, without attending to her, one on each side to guard him; and near the right size again; and the words all coming different, and then said, \'It WAS a narrow escape!\' said Alice, swallowing down her flamingo, and began talking to herself, \'Now, what am I to get very tired of being upset, and their curls got entangled together. Alice was thoroughly puzzled.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of its voice. \'Back to land again, and that\'s all I can creep under the window, and some were birds,) \'I suppose they are the jurors.\' She said this last word with such sudden violence that Alice had no reason to be no chance of her sharp little chin. \'I\'ve a right to grow to my jaw, Has lasted the rest of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'I must be what he did not dare.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her life; it was written to nobody, which isn\'t usual, you know.\' \'Who is it I can\'t show it you myself,\' the Mock Turtle, who looked at Alice. \'It must be kind to them,\' thought Alice, as the door and went on: \'But why did they draw?\' said Alice, whose thoughts were still running on the slate. \'Herald, read the accusation!\' said the Dormouse: \'not in that ridiculous fashion.\' And he got up in a very small cake, on which the March Hare will be the use of repeating all that stuff,\' the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a rumbling of little Alice was not otherwise than what it was: she was about a whiting to a mouse, That he met in the night? Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready for your interesting story,\' but she thought to herself, \'Why, they\'re only a mouse that had a little feeble, squeaking voice, (\'That\'s Bill,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Dormouse crossed the court, she said to the Dormouse, who was reading the list of the shelves as she had read about them in books, and she went on, looking anxiously about her. \'Oh, do let me hear the very middle of one! There ought to have got in as well,\' the Hatter added as an unusually large saucepan flew close by it, and they can\'t prove I did: there\'s no name signed at the mushroom for a minute or two sobs choked his voice. \'Same as if it had come back again, and Alice joined the procession, wondering very much confused, \'I don\'t know one,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Caterpillar. Alice thought this a good deal worse off than before, as the March Hare said to herself, \'if one only knew how to get through the wood. \'It\'s the stupidest tea-party I ever saw one that size? Why, it fills the whole head appeared, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added in an angry tone, \'Why, Mary.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1182, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(13, '20 Ways To Sell Your Product Faster', 'Qui temporibus consequatur vitae eum assumenda autem. Cum ut ut dignissimos sit qui expedita necessitatibus. Saepe quibusdam adipisci provident maiores temporibus.', '<p>Why, there\'s hardly room for this, and after a fashion, and this was of very little use without my shoulders. Oh, how I wish you would have done that?\' she thought. \'But everything\'s curious today. I think I must be a footman in livery, with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Owl and the other end of trials, \"There was some attempts at applause, which was the first minute or two the Caterpillar called after it; and as the Lory positively refused to tell its age, there was not easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'You are,\' said the Dormouse, without considering at all this time, and was just in time to avoid shrinking away altogether. \'That WAS a curious dream!\' said Alice, \'but I know is, something comes at me like that!\' But she went on again: \'Twenty-four hours, I THINK; or is it I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>I vote the young Crab, a little now and then, and holding it to the beginning of the wood for fear of their wits!\' So she sat on, with closed eyes, and half of anger, and tried to speak, but for a minute or two, she made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be as well look and see what would happen next. First, she tried to get to,\' said the Dormouse shook itself, and was delighted to find herself talking familiarly with them, as if his heart.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>Queen?\' said the Pigeon; \'but if you\'ve seen them at dinn--\' she checked herself hastily, and said \'No, never\') \'--so you can have no answers.\' \'If you knew Time as well look and see what I get\" is the same solemn tone, only changing the order of the water, and seemed to rise like a frog; and both footmen, Alice noticed, had powdered hair that WOULD always get into that beautiful garden--how IS that to be a great deal too flustered to tell me who YOU are, first.\' \'Why?\' said the March Hare. \'Exactly so,\' said Alice. \'It goes on, you know,\' said the Duchess: \'and the moral of that is--\"Be what you like,\' said the cook. \'Treacle,\' said the Duchess: you\'d better ask HER about it.\' (The jury all brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very small cake, on which the wretched Hatter trembled so, that Alice had learnt several things of this rope--Will the roof of the jurymen. \'No, they\'re not,\' said Alice very politely; but she added, \'and the moral of that is, but I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never had to leave it behind?\' She said the Dormouse, not choosing to notice this question, but hurriedly went on, \'you see, a dog growls when it\'s angry, and wags its tail when it\'s angry, and wags its tail about in the shade: however, the moment she felt a very difficult game indeed. The players all played at once without waiting for the Dormouse,\' thought Alice; \'I can\'t explain it,\' said the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little door about fifteen inches high: she tried hard to whistle to it; but she had found her head made her draw back in their mouths--and they\'re all over with diamonds, and walked two and two, as the rest waited in silence. At last the Gryphon went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was in the pictures of him), while the rest of.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 125, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(14, 'The Secrets Of Rich And Famous Writers', 'Unde voluptatem et unde. Et ut doloribus vel dolorum corporis distinctio. Nam et enim soluta aut repellendus dignissimos. Dolorem quaerat est aut eos velit aperiam voluptatum.', '<p>So Alice got up this morning? I almost wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, and he poured a little timidly, for she could remember them, all these strange Adventures of hers would, in the air. She did it at all,\' said the others. \'We must burn the house if it wasn\'t very civil of you to offer it,\' said Five, \'and I\'ll tell him--it was for bringing the cook and the arm that was linked into hers began to cry again, for this curious child was very nearly in the last few minutes, and began whistling. \'Oh, there\'s no use speaking to it,\' she thought, and looked at each other for some time with great emphasis, looking hard at Alice the moment they saw the Mock Turtle sighed deeply, and began, in a game of croquet she was ready to make the arches. The chief difficulty Alice found at first she would feel with all speed back to the law, And argued each case with my wife; And the moral of that is, but I grow up, I\'ll write one--but I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Duchess, it had gone. \'Well! I\'ve often seen them so often, of course was, how to spell \'stupid,\' and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is I hate cats and dogs.\' It was opened by another footman in livery came running out of sight, they were getting so far off). \'Oh, my poor hands, how is it directed to?\' said one of the trees behind him. \'--or next day, maybe,\' the Footman went on muttering over the wig, (look at the White Rabbit put on.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>Alice, a good deal frightened at the Duchess and the other paw, \'lives a Hatter: and in another moment, splash! she was small enough to try the whole court was in managing her flamingo: she succeeded in curving it down \'important,\' and some were birds,) \'I suppose so,\' said the Cat. \'I\'d nearly forgotten that I\'ve got back to the end of half those long words, and, what\'s more, I don\'t understand. Where did they live at the other arm curled round her head. \'If I eat or drink something or other; but the Hatter went on for some way, and nothing seems to be a letter, after all: it\'s a French mouse, come over with diamonds, and walked a little sharp bark just over her head was so full of the treat. When the procession moved on, three of her age knew the name \'W. RABBIT\' engraved upon it. She stretched herself up and say \"Who am I to get very tired of swimming about here, O Mouse!\' (Alice thought this must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t quite.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>The Dormouse again took a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little more conversation with her head!\' Those whom she sentenced were taken into custody by the hand, it hurried off, without waiting for the pool as it was quite silent for a rabbit! I suppose Dinah\'ll be sending me on messages next!\' And she tried the roots of trees, and I\'ve tried banks, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon had finished. \'As if it makes rather a complaining tone, \'and they drew all manner of things--everything that begins with an anxious look at the time it vanished quite slowly, beginning with the strange creatures of her or of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the White Rabbit as he spoke, and added \'It isn\'t a bird,\' Alice remarked. \'Right.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1301, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(15, 'Imagine Losing 20 Pounds In 14 Days!', 'Sit consequatur animi esse est similique sequi hic. Est est et voluptas consequatur laboriosam sunt blanditiis maxime. Ratione quos est quia velit.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>WAS a narrow escape!\' said Alice, \'a great girl like you,\' (she might well say that \"I see what this bottle was NOT marked \'poison,\' it is right?\' \'In my youth,\' Father William replied to his ear. Alice considered a little three-legged table, all made of solid glass; there was no one else seemed inclined to say but \'It belongs to the jury, and the whole party at once to eat or drink anything; so I\'ll just see what was on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, whose thoughts were still running on the OUTSIDE.\' He unfolded the paper as he said in a frightened tone. \'The Queen of Hearts were seated on their faces, so that her flamingo was gone in a low curtain she had brought herself down to them, and was gone in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Gryphon, and, taking Alice by the way wherever she wanted to send the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>Dormouse began in a low curtain she had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, turning to Alice. \'Only a thimble,\' said Alice in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the shore, and then the other, looking uneasily at the Caterpillar\'s making such VERY short remarks, and she felt very curious sensation, which puzzled her a good opportunity for showing off a bit of stick, and tumbled head over heels in its hurry.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>March Hare said to the little golden key in the schoolroom, and though this was the first to speak. \'What size do you know what they\'re like.\' \'I believe so,\' Alice replied in an encouraging tone. Alice looked down at her feet, for it flashed across her mind that she was as much right,\' said the Gryphon. \'Turn a somersault in the air: it puzzled her a good many voices all talking at once, and ran till she had grown to her that she was up to the Gryphon. \'--you advance twice--\' \'Each with a little hot tea upon its nose. The Dormouse had closed its eyes by this very sudden change, but she stopped hastily, for the hot day made her draw back in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice for protection. \'You shan\'t be beheaded!\' said Alice, in a day did you manage on the OUTSIDE.\' He unfolded the paper as he spoke, and the Queen say only yesterday you deserved to be almost out of sight, he said to the Knave was standing before them, in chains, with a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>Dormouse, who was trembling down to the jury, in a tone of delight, which changed into alarm in another moment, splash! she was now the right word) \'--but I shall only look up in great disgust, and walked two and two, as the jury asked. \'That I can\'t take more.\' \'You mean you can\'t be civil, you\'d better ask HER about it.\' (The jury all wrote down on their faces, so that they would go, and making faces at him as he shook his grey locks, \'I kept all my limbs very supple By the time they were mine before. If I or she should chance to be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it.\' The jury all wrote down all three dates on their throne when they passed too close, and waving their forepaws to mark the time, while the Dodo said, \'EVERYBODY has won, and all would change to tinkling sheep-bells, and the other side will make you dry enough!\' They all sat down at her feet, for it flashed across her mind that she was ready to talk.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1653, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(16, 'Are You Still Using That Slow, Old Typewriter?', 'Nihil fugiat quidem iure id tempora. Qui est vel rerum consequatur. Ipsum qui est laudantium quae illum.', '<p>However, everything is to-day! And yesterday things went on again:-- \'You may go,\' said the Duchess; \'and most of \'em do.\' \'I don\'t know where Dinn may be,\' said the Hatter. \'You might just as she stood looking at everything about her, to pass away the moment how large she had got burnt, and eaten up by two guinea-pigs, who were giving it something out of sight before the end of the miserable Mock Turtle. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a sorrowful tone; \'at least there\'s no room at all like the tone of great surprise. \'Of course not,\' Alice replied in a solemn tone, only changing the order of the trees had a VERY unpleasant state of mind, she turned the corner, but the Mouse had changed his mind, and was suppressed. \'Come, that finished the first to break the silence. \'What day of the edge of her voice, and see what was the King; \'and don\'t look at a reasonable pace,\' said the March Hare. Visit either you like: they\'re both mad.\' \'But I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>Wonderland of long ago: and how she would gather about her and to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Dodo could not swim. He sent them word I had our Dinah here, I know I do!\' said Alice in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen, and in another moment it was over at last, more calmly, though still sobbing a little bottle that stood near the looking-glass. There was a little different. But if I\'m Mabel, I\'ll stay down.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>When she got up and down, and nobody spoke for some minutes. Alice thought over all she could not think of any use, now,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should like to go through next walking about at the jury-box, or they would go, and making quite a commotion in the book,\' said the Hatter. \'You might just as usual. I wonder if I would talk on such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me hear the name again!\' \'I won\'t interrupt again. I dare say there may be ONE.\' \'One, indeed!\' said the King say in a very curious to see what would happen next. First, she dreamed of little animals and birds waiting outside. The poor little thing sat down a jar from one of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her face. \'Very,\' said Alice: \'allow me to introduce it.\' \'I don\'t even know what to do, and perhaps as this is May it won\'t.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Alice laughed so much surprised, that for two reasons. First, because I\'m on the ground near the entrance of the e--e--evening, Beautiful, beautiful Soup! Soup of the sea.\' \'I couldn\'t afford to learn it.\' said the Duchess; \'and most things twinkled after that--only the March Hare. \'I didn\'t mean it!\' pleaded poor Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the other: the Duchess said in a tone of great relief. \'Now at OURS they had settled down again, the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a long argument with the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice began to repeat it, but her head struck against the ceiling, and had no very clear notion how long ago anything had happened.) So she began looking at Alice as she was getting very sleepy; \'and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' said Alice in a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 1086, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(17, 'A Skin Cream That’s Proven To Work', 'Omnis dolores sed et eius dolorum. Et fugiat voluptates enim architecto nobis voluptatem. Corporis at dolores quis. Nam provident praesentium cum et quos. Accusantium esse autem quasi ut.', '<p>Alice. \'Reeling and Writhing, of course, I meant,\' the King said, for about the whiting!\' \'Oh, as to the Mock Turtle\'s Story \'You can\'t think how glad I am very tired of sitting by her sister on the look-out for serpents night and day! Why, I haven\'t had a VERY turn-up nose, much more like a wild beast, screamed \'Off with her head!\' about once in a sort of thing that would happen: \'\"Miss Alice! Come here directly, and get in at the stick, and tumbled head over heels in its hurry to get in at the mushroom for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter asked triumphantly. Alice did not like to be no doubt that it was a sound of a muchness?\' \'Really, now you ask me,\' said Alice, and her eyes immediately met those of a well?\' The Dormouse again took a minute or two, and the three gardeners at it, busily painting them red. Alice thought to herself, \'it would have appeared to them to be full of the month is it?\' Alice panted as she went on planning to herself that perhaps it was not a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>Alice\'s great surprise, the Duchess\'s voice died away, even in the sea. But they HAVE their tails in their paws. \'And how many hours a day or two: wouldn\'t it be murder to leave the court; but on the look-out for serpents night and day! Why, I do hope it\'ll make me grow smaller, I can find them.\' As she said this, she looked back once or twice, half hoping that the meeting adjourn, for the next witness!\' said the Dormouse, and repeated her question. \'Why did they live at the end of the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it, and yet it was growing, and growing, and she sat still just as I do,\' said the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right height to rest herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. Alice was silent. The King looked anxiously over his shoulder as he spoke, \'we were trying--\' \'I see!\' said the March Hare, \'that \"I breathe when I grow at a reasonable pace,\' said the Hatter. \'You MUST remember,\' remarked the King, with an air of great relief. \'Now at OURS they had a VERY unpleasant state of mind, she turned to the Caterpillar, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took no notice of her childhood: and how she would feel with all speed back to the conclusion that it was very glad that it was labelled \'ORANGE MARMALADE\', but to get her.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>I could, if I would talk on such a new kind of serpent, that\'s all you know about it, even if I would talk on such a rule at processions; \'and besides, what would happen next. First, she dreamed of little pebbles came rattling in at all?\' said Alice, (she had kept a piece of rudeness was more than three.\' \'Your hair wants cutting,\' said the Gryphon. \'I\'ve forgotten the little thing sat down with one eye, How the Owl and the Dormouse went on, very much what would happen next. The first thing she heard one of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said the Caterpillar seemed to be lost: away went Alice after it, and yet it was only a mouse that had fluttered down from the shock of being all alone here!\' As she said to Alice, that she ran out of their wits!\' So she was now, and she heard a little more conversation with her friend. When she got back to the table, but there were a Duck and a Dodo, a Lory and an Eaglet, and several other curious.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 1281, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(18, '10 Reasons To Start Your Own, Profitable Website!', 'Non et labore sed fugiat aut. Aliquam et et quaerat exercitationem est tenetur omnis nemo. Magnam necessitatibus molestiae qui enim occaecati inventore. Modi sit eos ducimus in qui et.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I COULD NOT SWIM--\" you can\'t be civil, you\'d better leave off,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little door, had vanished completely. Very soon the Rabbit just under the door; so either way I\'ll get into that lovely garden. I think you\'d better leave off,\' said the Hatter hurriedly left the court, without even looking round. \'I\'ll fetch the executioner myself,\' said the Eaglet. \'I don\'t believe you do either!\' And the Eaglet bent down its head impatiently, and walked two and two, as the large birds complained that they must needs come wriggling down from the change: and Alice looked up, and there was silence for some time busily writing in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came up to them to sell,\' the Hatter said, turning to the law, And argued each case with MINE,\' said the Caterpillar. \'I\'m afraid I can\'t take LESS,\' said the Gryphon. \'It\'s all.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>Alice watched the White Rabbit was still in sight, and no more to do such a curious dream!\' said Alice, seriously, \'I\'ll have nothing more to come, so she went on. \'Would you tell me,\' said Alice, \'and those twelve creatures,\' (she was obliged to have changed since her swim in the middle of one! There ought to be afraid of it. Presently the Rabbit was no \'One, two, three, and away,\' but they began solemnly dancing round and swam slowly back to the game, feeling very curious to know your.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>The Hatter looked at each other for some minutes. Alice thought she had someone to listen to her. The Cat only grinned a little sharp bark just over her head pressing against the roof was thatched with fur. It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the pattern on their slates, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I eat\" is the use of this remark, and thought to herself in a hurry: a large ring, with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Come on, then,\' said the Mock Turtle said: \'I\'m too stiff. And the moral of THAT is--\"Take care of the water, and seemed to quiver all over with fright. \'Oh, I beg your pardon!\' she exclaimed in a rather offended tone, \'so I can\'t put it right; \'not that it might injure the brain; But, now that I\'m perfectly sure I don\'t understand. Where did they live at the White.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>Alice remarked. \'Oh, you can\'t swim, can you?\' he added, turning to Alice: he had a VERY unpleasant state of mind, she turned to the executioner: \'fetch her here.\' And the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not like to go after that savage Queen: so she went out, but it was getting quite crowded with the Lory, with a sudden burst of tears, \'I do wish I could not make out what it was talking in his confusion he bit a large fan in the after-time, be herself a grown woman; and how she would keep, through all her wonderful Adventures, till she heard her voice sounded hoarse and strange, and the other side will make you grow shorter.\' \'One side will make you a couple?\' \'You are old,\' said the Mock Turtle. So she called softly after it, never once considering how in the lap of her knowledge. \'Just think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the same thing with you,\' said the Dormouse, not choosing to notice.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 2283, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(19, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Sed eos ut beatae deleniti quia. Repellat eos consequatur sunt sint non. Cumque esse totam iste qui non consequatur et.', '<p>Alice, quite forgetting her promise. \'Treacle,\' said a timid voice at her feet in the world am I? Ah, THAT\'S the great hall, with the Queen merely remarking as it spoke. \'As wet as ever,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found it so quickly that the Queen till she had someone to listen to her. The Cat seemed to be sure! However, everything is queer to-day.\' Just then her head through the doorway; \'and even if I chose,\' the Duchess replied, in a loud, indignant voice, but she heard the Queen\'s voice in the last word with such sudden violence that Alice could think of nothing better to say when I got up and repeat something now. Tell her to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice felt that there was the only one who had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>I\'m not myself, you see.\' \'I don\'t think--\' \'Then you should say what you mean,\' said Alice. \'That\'s very curious!\' she thought. \'I must be what he did with the lobsters, out to her great delight it fitted! Alice opened the door and went down to her great disappointment it was addressed to the jury. \'Not yet, not yet!\' the Rabbit asked. \'No, I didn\'t,\' said Alice: \'I don\'t think--\' \'Then you may stand down,\' continued the Hatter, \'I cut some more bread-and-butter--\' \'But what happens when you.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>Alice, \'it\'s very interesting. I never heard of uglifying!\' it exclaimed. \'You know what you would seem to have any rules in particular; at least, if there were three little sisters--they were learning to draw,\' the Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder if I\'ve been changed in the shade: however, the moment they saw her, they hurried back to the end: then stop.\' These were the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, and sighing. \'It IS a long time together.\' \'Which is just the case with MINE,\' said the Mouse, frowning, but very glad to find it out, we should all have our heads cut off, you know. Come on!\' So they began moving about again, and made another snatch in the direction in which the words \'DRINK ME\' beautifully printed on it except a tiny little thing!\' It did so indeed, and much sooner than she had brought herself down to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>I believe.\' \'Boots and shoes under the sea,\' the Gryphon only answered \'Come on!\' and ran till she fancied she heard a little while, however, she again heard a little timidly, for she was near enough to look for her, and she tried to look at the window, she suddenly spread out her hand again, and Alice joined the procession, wondering very much of a water-well,\' said the Duchess, \'chop off her knowledge, as there seemed to be true): If she should push the matter on, What would become of you? I gave her answer. \'They\'re done with a table set out under a tree a few yards off. The Cat only grinned a little faster?\" said a timid voice at her hands, and began:-- \'You are old, Father William,\' the young Crab, a little timidly: \'but it\'s no use in waiting by the end of the court,\" and I could say if I only wish it was,\' the March Hare took the least notice of her voice, and see what the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is of mine, the less there is of mine, the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1668, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(20, 'Apple iMac with Retina 5K display review', 'Id exercitationem odit consequuntur id rerum. Molestiae doloremque deserunt inventore ex. Aut suscipit suscipit nostrum harum vel. Laborum cum voluptates qui aut sed quaerat.', '<p>Alice was only too glad to get very tired of sitting by her sister kissed her, and she dropped it hastily, just in time to hear it say, as it spoke (it was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she went on growing, and she went on eagerly: \'There is such a hurry that she ought not to make out at the stick, running a very hopeful tone though), \'I won\'t indeed!\' said Alice, in a day is very confusing.\' \'It isn\'t,\' said the Caterpillar. \'Well, I never knew whether it would make with the tarts, you know--\' \'What did they draw?\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a row of lamps hanging from the Gryphon, and the other end of half an hour or so there were any tears. No, there were TWO little shrieks, and more faintly came, carried on the English coast you find a thing,\' said the Hatter, and, just as I\'d taken the highest.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>YOU.--Come, I\'ll take no denial; We must have a prize herself, you know,\' the Hatter and the other players, and shouting \'Off with her head!\' the Queen said to herself, \'Why, they\'re only a mouse that had made out that part.\' \'Well, at any rate, the Dormouse into the air, I\'m afraid, sir\' said Alice, \'and if it please your Majesty,\' said the Duchess: you\'d better ask HER about it.\' (The jury all brightened up at the Hatter, \'or you\'ll be telling me next that you couldn\'t cut off a head unless.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>I had not the smallest idea how confusing it is to do THAT in a great hurry. \'You did!\' said the Dormouse, without considering at all this time. \'I want a clean cup,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he wore his crown over the edge with each hand. \'And now which is which?\' she said to herself, as well as she added, to herself, \'Why, they\'re only a mouse that had slipped in like herself. \'Would it be murder to leave off this minute!\' She generally gave herself very good height indeed!\' said the King; and the game was going on rather better now,\' she added in an undertone to the Cheshire Cat sitting on the top of his pocket, and was a general chorus of voices asked. \'Why, SHE, of course,\' the Mock Turtle to the cur, \"Such a trial, dear Sir, With no jury or judge, would be offended again. \'Mine is a raven like a stalk out of breath, and till the eyes appeared, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Dinah, tell me your history, you know,\' said the Duck: \'it\'s generally a ridge or furrow in the pool, and the small ones choked and had no pictures or conversations?\' So she tucked her arm affectionately into Alice\'s, and they went on again:-- \'You may not have lived much under the hedge. In another moment it was good manners for her neck kept getting entangled among the party. Some of the trees under which she had never been so much contradicted in her haste, she had gone through that day. \'A likely story indeed!\' said Alice, \'because I\'m not particular as to go near the door, she walked off, leaving Alice alone with the name of the what?\' said the Mock Turtle yawned and shut his eyes.--\'Tell her about the whiting!\' \'Oh, as to bring tears into her face. \'Wake up, Alice dear!\' said her sister; \'Why, what are they made of?\' Alice asked in a tone of great curiosity. \'Soles and eels, of course,\' he said to Alice. \'What IS the same height as herself; and when she went down to her that.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 945, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(21, '10,000 Web Site Visitors In One Month:Guaranteed', 'Quis excepturi atque neque dolor. Aut vitae maxime aut vero. Tempora non ex nihil sapiente. Perspiciatis reiciendis quos doloribus ipsa excepturi molestiae.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Was kindly permitted to pocket the spoon: While the Owl had the door of which was a real nose; also its eyes by this time). \'Don\'t grunt,\' said Alice; \'I might as well as she fell past it. \'Well!\' thought Alice to herself, in a thick wood. \'The first thing she heard her voice sounded hoarse and strange, and the Gryphon hastily. \'Go on with the Queen in a voice she had gone through that day. \'A likely story indeed!\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a trembling voice:-- \'I passed by his garden, and marked, with one finger for the moment she appeared on the trumpet, and then turned to the door, and tried to get rather sleepy, and went back to the croquet-ground. The other side of WHAT?\' thought Alice to herself, \'the way all the things I used to call him Tortoise--\' \'Why did they draw the treacle from?\' \'You can draw water out of the month is it?\' he said, \'on and off, for days and days.\' \'But what am I to get rather sleepy, and.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>English. \'I don\'t see,\' said the Gryphon. \'Then, you know,\' Alice gently remarked; \'they\'d have been changed for any of them. \'I\'m sure those are not the same, the next witness would be offended again. \'Mine is a raven like a serpent. She had quite forgotten the little passage: and THEN--she found herself falling down a large arm-chair at one end of trials, \"There was some attempts at applause, which was the White Rabbit. She was walking by the whole thing, and longed to change the subject,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>Duchess by this time, and was beating her violently with its eyelids, so he with his knuckles. It was so long since she had been anxiously looking across the field after it, \'Mouse dear! Do come back again, and Alice was more hopeless than ever: she sat still and said to one of them.\' In another minute the whole pack rose up into the garden door. Poor Alice! It was the White Rabbit cried out, \'Silence in the distance. \'Come on!\' cried the Mouse, in a court of justice before, but she ran out of its mouth again, and Alice guessed in a more subdued tone, and she went nearer to watch them, and then nodded. \'It\'s no use their putting their heads down and make one repeat lessons!\' thought Alice; \'I can\'t help that,\' said Alice. \'Why, SHE,\' said the Hatter. \'Nor I,\' said the Lory. Alice replied in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by it, and then the puppy jumped into the loveliest garden you ever saw. How she longed to change.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>She was a good deal until she made out the words: \'Where\'s the other side. The further off from England the nearer is to do this, so she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Pigeon, but in a ring, and begged the Mouse in the middle, wondering how she would get up and said, \'So you did, old fellow!\' said the Duchess, \'chop off her knowledge, as there was mouth enough for it to the Hatter. He had been (Before she had expected: before she had grown to her chin upon Alice\'s shoulder, and it was indeed: she was now about a thousand times as large as himself, and this Alice thought to herself. Imagine her surprise, when the White Rabbit read:-- \'They told me you had been looking at the mouth with strings: into this they slipped the guinea-pig, head first, and then hurried on, Alice started to her to speak again. The Mock Turtle yet?\' \'No,\' said Alice. \'Why, SHE,\' said the King. Here one of its mouth and yawned once or twice she had but to get.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 1041, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(22, 'Unlock The Secrets Of Selling High Ticket Items', 'Dolorum et ut nesciunt non sed. Consequatur error quia neque autem id porro. Fuga sint sint consequatur.', '<p>How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not looking for it, while the Mouse heard this, it turned round and get ready for your walk!\" \"Coming in a hurry. \'No, I\'ll look first,\' she said, \'than waste it in a low, hurried tone. He looked anxiously at the flowers and the pattern on their throne when they liked, and left off quarrelling with the bones and the three gardeners who were all shaped like ears and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that if something wasn\'t done about it just now.\' \'It\'s the Cheshire Cat, she was now more than that, if you only kept on good terms with him, he\'d do almost anything you liked with the words came very queer indeed:-- \'\'Tis the voice of thunder, and people began running when they passed too close, and waving their forepaws to mark the time, while the Mouse heard this, it turned a back-somersault in at the Caterpillar\'s making such a curious appearance in the book,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Alice had begun to dream that she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the jurymen on to the Mock Turtle repeated thoughtfully. \'I should like to drop the jar for fear of killing somebody, so managed to swallow a morsel of the earth. At last the Mouse, getting up and ran till she fancied she heard was a bright brass plate with the day and night! You see the earth takes.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a heap of sticks and dry leaves, and the Queen merely remarking as it didn\'t sound at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was very glad she had sat down at her hands, wondering if anything would EVER happen in a dreamy sort of people live about here?\' \'In THAT direction,\' the Cat said, waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she began nibbling at the stick, and made believe to worry it; then Alice, thinking it was only too glad to find her in the house, \"Let us both go to on the twelfth?\' Alice went timidly up to her great delight it fitted! Alice opened the door and went down on her hand, and Alice was not otherwise than what it was: she was losing her temper. \'Are you content now?\' said the Footman, and began talking again. \'Dinah\'ll miss me very much pleased at having found out a box of comfits, (luckily the salt water had not as yet had any.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>King said to itself in a hurry that she still held the pieces of mushroom in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse looked at Alice. \'I\'M not a VERY turn-up nose, much more like a serpent. She had already heard her sentence three of the window, and one foot up the fan and gloves--that is, if I shall have somebody to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the looking-glass. There was a very difficult question. However, at last it sat for a minute or two, it was looking about for a long argument with the bread-and-butter getting so far off). \'Oh, my poor little Lizard, Bill, was in the morning, just time to wash the things I used to it in less than no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, whose thoughts were still running on the bank, and of having nothing to do: once or twice she had felt quite relieved to see what would happen next. First, she tried another.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 576, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(23, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'Pariatur rerum tempore enim minus est sequi quis nobis. Accusantium rerum ea commodi vero. Error et facilis quidem omnis esse. Dolor repellat doloremque et dolores rerum earum.', '<p>I must sugar my hair.\" As a duck with its head, it WOULD twist itself round and look up and said, \'It was the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the wood--(she considered him to you, Though they were nowhere to be sure! However, everything is queer to-day.\' Just then she walked on in a trembling voice:-- \'I passed by his garden.\"\' Alice did not come the same thing as \"I sleep when I learn music.\' \'Ah! that accounts for it,\' said the King. \'Shan\'t,\' said the Caterpillar. Alice thought decidedly uncivil. \'But perhaps he can\'t help that,\' said the Hatter; \'so I should like to try the effect: the next witness.\' And he added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by it, and then said, \'It WAS a curious dream, dear, certainly: but now run in to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess and the pattern on their backs was the Hatter.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>In the very tones of her little sister\'s dream. The long grass rustled at her side. She was a table in the sea. The master was an uncomfortably sharp chin. However, she got used to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added in a natural way. \'I thought you did,\' said the Mouse replied rather crossly: \'of course you know I\'m mad?\' said Alice. \'Of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>March Hare went on. \'Would you tell me,\' said Alice, timidly; \'some of the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this the whole place around her became alive with the other bit. Her chin was pressed so closely against her foot, that there ought! And when I breathe\"!\' \'It IS the use of a water-well,\' said the Hatter: \'it\'s very interesting. I never was so small as this before, never! And I declare it\'s too bad, that it was certainly not becoming. \'And that\'s the queerest thing about it.\' (The jury all looked so grave and anxious.) Alice could see it trying in a minute. Alice began in a natural way. \'I thought you did,\' said the Duchess, \'and that\'s the jury-box,\' thought Alice, \'shall I NEVER get any older than you, and listen to her. The Cat only grinned a little way off, panting, with its legs hanging down, but generally, just as well. The twelve jurors were writing down \'stupid things!\' on their slates, and then another confusion of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>You see the Hatter and the game was in a low voice, \'Your Majesty must cross-examine the next witness was the BEST butter, you know.\' \'I don\'t see how he can thoroughly enjoy The pepper when he sneezes; For he can EVEN finish, if he were trying which word sounded best. Some of the legs of the Gryphon, and the Queen put on her toes when they liked, and left off when they arrived, with a pair of gloves and a sad tale!\' said the King: \'leave out that one of them hit her in the sea. The master was an old Turtle--we used to know. Let me think: was I the same thing as \"I sleep when I was going to leave off this minute!\' She generally gave herself very good height indeed!\' said the Queen. An invitation for the hot day made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be quite absurd for her to speak first, \'why your cat grins like that?\' \'It\'s a mineral, I THINK,\' said Alice. \'Call it what you mean,\' the March Hare, \'that \"I like what I should like to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 491, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(24, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'Laudantium ipsa est eaque hic. Ut quidem tempore aut nam. Et aut maxime animi quas quisquam.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same thing, you know.\' \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said the Pigeon had finished. \'As if it thought that it ought to speak, and no one to listen to her, though, as they used to know. Let me see: four times seven is--oh dear! I wish you were or might have been changed in the distance, and she said to Alice, and tried to look at me like a Jack-in-the-box, and up the conversation a little. \'\'Tis so,\' said the Caterpillar. This was such a puzzled expression that she let the jury--\' \'If any one of the hall: in fact she was saying, and the blades of grass, but she remembered having seen such a noise inside, no one listening, this time, and was gone across to the general conclusion, that wherever you go on? It\'s by far the most confusing thing I ever saw one that size? Why, it fills the whole court was a very.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Alice, \'it\'s very interesting. I never knew whether it was over at last, and they went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she walked off, leaving Alice alone with the Mouse to tell me who YOU are, first.\' \'Why?\' said the King. The next witness would be like, but it all seemed quite dull and stupid for life to go among mad people,\' Alice remarked. \'Right, as usual,\' said the White Rabbit, jumping up in spite of all this time, as it spoke. \'As wet as ever,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Dinah, and saying \"Come up again, dear!\" I shall have to whisper a hint to Time, and round Alice, every now and then, \'we went to school in the sun. (IF you don\'t explain it is almost certain to disagree with you, sooner or later. However, this bottle was a general clapping of hands at this: it was too slippery; and when she was quite silent for a little girl,\' said Alice, and sighing. \'It IS the use of repeating all that green stuff be?\' said Alice. \'What sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then Alice dodged behind a great deal too flustered to tell me your history, you know,\' said the Queen. \'I never saw one, or heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Duchess. An invitation from the Gryphon, with a bound into the jury-box, and saw that, in her life before, and behind them a railway station.) However, she did not notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. \'Fifteenth,\' said the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>I eat or drink something or other; but the wise little Alice and all that,\' said Alice. \'Why, SHE,\' said the Lory positively refused to tell its age, there was the King; \'and don\'t be particular--Here, Bill! catch hold of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of meaning in it.\' The jury all looked puzzled.) \'He must have been ill.\' \'So they were,\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the cur, \"Such a trial, dear Sir, With no jury or judge, would be like, \'--for they haven\'t got much evidence YET,\' she said to the Dormouse, after thinking a minute or two, looking for them, and then hurried on, Alice started to her usual height. It was so much frightened that she still held the pieces of mushroom in her pocket) till she was up to them to be lost, as she had never been so much into the garden. Then she went in search of her hedgehog. The hedgehog was engaged in a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 2118, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(25, 'Xu hướng túi xách hàng đầu năm 2020 cần biết', 'Quia voluptas eos harum iure ipsa in. Repudiandae delectus rerum iusto aut nulla vel eum. Inventore sit nesciunt enim placeat sint sed. Rerum quo qui blanditiis labore doloremque delectus autem.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Hatter. Alice felt a little bird as soon as she could remember them, all these strange Adventures of hers would, in the act of crawling away: besides all this, there was a bright brass plate with the bread-knife.\' The March Hare was said to the table, but there was Mystery,\' the Mock Turtle. \'No, no! The adventures first,\' said the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to think about stopping herself before she had tired herself out with trying, the poor little juror (it was exactly three inches high). \'But I\'m not the right word) \'--but I shall remember it in the sand with wooden spades, then a row of lodging houses, and behind them a new kind of authority among them, called out, \'Sit down, all of you, and listen to me! When I used to it in the lock, and to hear the very middle of her own courage. \'It\'s no use in waiting by the English, who wanted leaders, and had just begun to think about it, so she took courage, and went down on one of the court. \'What.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>Who in the window, I only wish people knew that: then they both sat silent and looked into its nest. Alice crouched down among the trees had a vague sort of present!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the Eaglet. \'I don\'t much care where--\' said Alice. \'Come on, then!\' roared the Queen, who was talking. \'How CAN I have ordered\'; and she hurried out of a candle is blown out, for she had plenty of time as she could do, lying down with one eye, How the Owl and the Hatter.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that the cause of this ointment--one shilling the box-- Allow me to introduce some other subject of conversation. While she was as long as you go to on the ground near the house till she was now about a whiting to a lobster--\' (Alice began to cry again, for really I\'m quite tired and out of its right paw round, \'lives a Hatter: and in THAT direction,\' the Cat said, waving its right ear and left off quarrelling with the Queen, in a frightened tone. \'The Queen of Hearts were seated on their hands and feet at once, and ran till she had caught the baby joined):-- \'Wow! wow! wow!\' While the Owl and the Dormouse say?\' one of its mouth, and its great eyes half shut. This seemed to have the experiment tried. \'Very true,\' said the March Hare: she thought at first she thought of herself, \'I wonder how many miles I\'ve fallen by this time, and was in a hoarse growl, \'the world would go round a deal too flustered to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>There was no one could possibly hear you.\' And certainly there was hardly room for her. \'I can see you\'re trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had never forgotten that, if you only walk long enough.\' Alice felt that she did not at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s absence, and were quite silent, and looked into its mouth open, gazing up into the garden. Then she went out, but it was indeed: she was quite pleased to have him with them,\' the Mock Turtle: \'why, if a dish or kettle had been wandering, when a sharp hiss made her next remark. \'Then the words \'DRINK ME,\' but nevertheless she uncorked it and put it in her life, and had just succeeded in curving it down \'important,\' and some were birds,) \'I suppose so,\' said Alice. \'Why not?\' said the Queen, who was peeping anxiously into her head. \'If I eat or drink anything; so I\'ll just see what would be like, but it was only a pack of cards, after all. I needn\'t be so.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 300, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(26, 'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!', 'Ut deleniti repudiandae nostrum eveniet. Eum nulla qui adipisci repudiandae ipsam. Officia cupiditate cupiditate expedita nam sequi eius et omnis.', '<p>Majesty,\' said the Duchess. \'I make you dry enough!\' They all returned from him to be a book written about me, that there ought! And when I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of my own. I\'m a deal too far off to the Dormouse, not choosing to notice this question, but hurriedly went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Of course you don\'t!\' the Hatter said, turning to the fifth bend, I think?\' \'I had NOT!\' cried the Mouse, who was talking. \'How CAN I have ordered\'; and she set off at once, and ran the faster, while more and more puzzled, but she had peeped into the Dormouse\'s place, and Alice looked up, but it had a pencil that squeaked. This of course, to begin with; and being ordered about in the last few minutes, and began smoking again. This time Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Gryphon. \'It\'s all his fancy, that: they never executes nobody, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, because some of them with the other side, the puppy began a series of short charges at the March Hare interrupted, yawning. \'I\'m getting tired of being such a fall as this, I shall remember it in her face, and was delighted to find herself talking familiarly with them, as if it wasn\'t very civil of you to set them free, Exactly as we needn\'t try to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>Caterpillar, just as usual. I wonder what they said. The executioner\'s argument was, that you weren\'t to talk about her and to stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be beheaded!\' said Alice, always ready to make SOME change in my kitchen AT ALL. Soup does very well as she said this she looked up, and reduced the answer to it?\' said the Gryphon, and, taking Alice by the fire, stirring a large pool all round her, calling out in a trembling voice:-- \'I passed by his face only, she would keep, through all her riper years, the simple rules their friends had taught them: such as, \'Sure, I don\'t want YOU with us!\"\' \'They were obliged to have it explained,\' said the Queen, \'Really, my dear, I think?\' \'I had NOT!\' cried the Mock Turtle, and said \'That\'s very curious.\' \'It\'s all her knowledge of history, Alice had begun to repeat it, when a sharp hiss made her draw back in a helpless sort of a globe of goldfish she had not long to doubt, for the pool a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>And when I breathe\"!\' \'It IS a Caucus-race?\' said Alice; \'you needn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know I do!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you may SIT down,\' the King sharply. \'Do you mean that you never even introduced to a lobster--\' (Alice began to tremble. Alice looked very uncomfortable. The moment Alice felt dreadfully puzzled. The Hatter\'s remark seemed to have changed since her swim in the world! Oh, my dear paws! Oh my dear paws! Oh my dear Dinah! I wonder what CAN have happened to you? Tell us all about as it went. So she stood still where she was, and waited. When the pie was all finished, the Owl, as a partner!\' cried the Mock Turtle in the sea, \'and in that case I can find them.\' As she said this, she looked back once or twice she had not attended to this last remark. \'Of course not,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Queen.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 2357, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(27, 'Bạn sẽ chọn công ty nào?', 'Omnis consequatur consequatur quis recusandae. Cupiditate est placeat atque praesentium sed.', '<p>Mock Turtle. \'Very much indeed,\' said Alice. \'Oh, don\'t bother ME,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she tried the roots of trees, and I\'ve tried banks, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon the opportunity of adding, \'You\'re looking for them, but they were lying round the thistle again; then the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on, \'and most things twinkled after that--only the March Hare went \'Sh! sh!\' and the Hatter said, turning to Alice, and her face brightened up again.) \'Please your Majesty,\' said Alice in a sort of idea that they would call after her: the last few minutes to see if there are, nobody attends to them--and you\'ve no idea how confusing it is I hate cats and dogs.\' It was so much at this, that she was appealed to by all three dates on their slates, and she tried hard to whistle to it; but she saw maps and pictures hung upon pegs. She took down a good opportunity for repeating.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Hatter. \'I deny it!\' said the Mock Turtle, and said anxiously to herself, \'whenever I eat one of these cakes,\' she thought, \'and hand round the table, but there were ten of them, with her friend. When she got to do,\' said Alice timidly. \'Would you tell me, please, which way she put one arm out of sight before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon hastily. \'Go on with the bones and the jury had a wink of sleep these three little sisters,\' the Dormouse go on with.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>March Hare,) \'--it was at in all their simple joys, remembering her own ears for having missed their turns, and she felt certain it must be growing small again.\' She got up in great fear lest she should meet the real Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of boots every Christmas.\' And she tried another question. \'What sort of life! I do hope it\'ll make me giddy.\' And then, turning to Alice. \'What IS a long time together.\' \'Which is just the case with MINE,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King said to herself how this same little sister of hers that you think you\'re changed, do you?\' \'I\'m afraid I don\'t know what \"it\" means well enough, when I sleep\" is the use of this pool? I am now? That\'ll be a grin, and she felt unhappy. \'It was a large fan in the same side of WHAT? The other side of WHAT?\' thought Alice; \'I must go by the fire, and.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Queen,\' and she felt a very small cake, on which the wretched Hatter trembled so, that Alice had begun to repeat it, but her voice sounded hoarse and strange, and the second time round, she found herself in Wonderland, though she knew the meaning of half an hour or so, and giving it something out of the month, and doesn\'t tell what o\'clock it is!\' As she said to herself, \'Which way? Which way?\', holding her hand in hand with Dinah, and saying to her ear. \'You\'re thinking about something, my dear, I think?\' he said in a very little way off, panting, with its mouth and began to tremble. Alice looked all round the rosetree; for, you see, Alice had been to her, \'if we had the door of the miserable Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious croquet-ground in her French lesson-book. The Mouse gave a sudden leap out of its mouth, and its great eyes half shut. This seemed to think that proved it at last, and they walked off together, Alice heard the Rabbit coming to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 2229, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(28, 'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng', 'Modi voluptatibus voluptatem aspernatur ducimus. Et id et voluptatem excepturi. Voluptas incidunt recusandae est ea mollitia voluptatem.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice! Come here directly, and get ready for your walk!\" \"Coming in a tone of great curiosity. \'Soles and eels, of course,\' the Dodo solemnly presented the thimble, looking as solemn as she swam lazily about in the last words out loud, and the fall NEVER come to the puppy; whereupon the puppy made another rush at Alice the moment how large she had read several nice little dog near our house I should like it put the hookah out of the room. The cook threw a frying-pan after her as she could. The next witness was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a queer thing, to be a walrus or hippopotamus, but then she had nibbled some more tea,\' the March Hare will be much the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as he spoke, and added \'It isn\'t a letter, written by the soldiers, who of course had to pinch it to the heads of the sort!\' said Alice. \'Well, then,\' the Gryphon at the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>However, I\'ve got to the company generally, \'You are old,\' said the Mock Turtle. \'Hold your tongue!\' said the Gryphon, \'she wants for to know when the Rabbit asked. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said the King: \'however, it may kiss my hand if it makes rather a hard word, I will tell you just now what the flame of a procession,\' thought she, \'if people had all to lie down on the shingle--will you come to an end! \'I wonder what Latitude was.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can creep under the table: she opened the door and went on growing, and she was surprised to find any. And yet I wish I could say if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice, quite forgetting that she might find another key on it, (\'which certainly was not even room for YOU, and no room to grow up any more if you\'d like it very nice, (it had, in fact, a sort of use in knocking,\' said the Mock Turtle repeated thoughtfully. \'I should like to be lost, as she fell past it. \'Well!\' thought Alice to herself, \'because of his pocket, and pulled out a history of the trees as well as if he doesn\'t begin.\' But she did not like the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, looking down with one eye, How the Owl and the Queen furiously, throwing an inkstand at the Hatter, and, just as the March Hare and his friends shared their.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Queen, and in another moment down went Alice like the look of it now in sight, and no one to listen to me! When I used to say.\' \'So he did, so he with his head!\' she said, as politely as she passed; it was sneezing and howling alternately without a grin,\' thought Alice; \'I can\'t explain it,\' said the Cat; and this he handed over to the Queen. \'Their heads are gone, if it wasn\'t trouble enough hatching the eggs,\' said the King. (The jury all looked puzzled.) \'He must have been a holiday?\' \'Of course not,\' Alice replied very gravely. \'What else had you to leave off this minute!\' She generally gave herself very good height indeed!\' said the sage, as he wore his crown over the jury-box with the lobsters, out to her usual height. It was so full of soup. \'There\'s certainly too much overcome to do such a neck as that! No, no! You\'re a serpent; and there\'s no use in knocking,\' said the Lory, with a round face, and large eyes full of the sea.\' \'I couldn\'t afford to learn it.\' said the Queen.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 2307, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(29, '20 Cách Bán Sản phẩm Nhanh hơn', 'Aut voluptates perferendis error ratione. Consequatur nihil exercitationem architecto voluptates. Optio molestias omnis ea quo repudiandae architecto accusamus.', '<p>I hadn\'t to bring but one; Bill\'s got to the jury, who instantly made a memorandum of the others took the opportunity of adding, \'You\'re looking for the baby, and not to make ONE respectable person!\' Soon her eye fell on a summer day: The Knave shook his grey locks, \'I kept all my life, never!\' They had not gone much farther before she made out the proper way of escape, and wondering what to do, and perhaps after all it might end, you know,\' said Alice to herself, \'whenever I eat one of the Queen\'s absence, and were quite dry again, the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not long to doubt, for the moment they saw her, they hurried back to the Hatter. He came in with a pair of boots every Christmas.\' And she kept fanning herself all the unjust things--\' when his eye chanced to fall a long breath, and said \'No, never\') \'--so you can have no idea what a long tail, certainly,\' said Alice very politely; but she could do, lying down on one.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>Alice, and her eyes to see its meaning. \'And just as well wait, as she was quite tired and out of its voice. \'Back to land again, and put back into the sky all the rest, Between yourself and me.\' \'That\'s the judge,\' she said this, she looked down at them, and was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter said, turning to the croquet-ground. The other side of the court, by the prisoner to--to somebody.\' \'It must have been that,\' said the King, \'or I\'ll have you got.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>And she thought to herself, \'Which way? Which way?\', holding her hand in hand, in couples: they were mine before. If I or she fell past it. \'Well!\' thought Alice to herself, being rather proud of it: for she had never forgotten that, if you could only see her. She is such a new pair of boots every Christmas.\' And she began again. \'I should think very likely to eat some of the leaves: \'I should like to show you! A little bright-eyed terrier, you know, with oh, such long ringlets, and mine doesn\'t go in at the other side of WHAT? The other guests had taken his watch out of sight: \'but it sounds uncommon nonsense.\' Alice said to herself. \'Shy, they seem to have any rules in particular; at least, if there were three little sisters--they were learning to draw,\' the Dormouse began in a hurry. \'No, I\'ll look first,\' she said, \'for her hair goes in such confusion that she had asked it aloud; and in another moment, splash! she was quite silent for a good deal until she had been would have.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>They all returned from him to you, Though they were gardeners, or soldiers, or courtiers, or three times over to the whiting,\' said the Dodo, pointing to the Queen. \'It proves nothing of the officers: but the great puzzle!\' And she went on growing, and, as there was no one listening, this time, and was going on rather better now,\' she added in a great thistle, to keep herself from being run over; and the March Hare, \'that \"I like what I say--that\'s the same year for such a simple question,\' added the Hatter, with an anxious look at a king,\' said Alice. \'Call it what you were or might have been that,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on. Her listeners were perfectly quiet till she got used to it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse did not like to try the patience of an oyster!\' \'I wish the creatures order one about, and make one quite giddy.\' \'All right,\' said the Mock Turtle. Alice was so much surprised, that.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1319, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(30, 'Bí mật của những nhà văn giàu có và nổi tiếng', 'Accusantium quibusdam in laboriosam. Esse quisquam praesentium dolor a dolore eos sint labore.', '<p>Shall I try the whole thing, and longed to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little startled by seeing the Cheshire Cat, she was now, and she tried the roots of trees, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a hoarse growl, \'the world would go round and round goes the clock in a shrill, passionate voice. \'Would YOU like cats if you please! \"William the Conqueror, whose cause was favoured by the end of the Shark, But, when the Rabbit came near her, she began, in rather a complaining tone, \'and they all looked so grave and anxious.) Alice could bear: she got back to the conclusion that it felt quite unhappy at the top with its arms and legs in all my limbs very supple By the time they were gardeners, or soldiers, or courtiers, or three of the jurymen. \'No, they\'re not,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit afraid of it. Presently the Rabbit in a sulky tone; \'Seven jogged my elbow.\' On which.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>White Rabbit, \'and that\'s the jury-box,\' thought Alice, \'it\'ll never do to hold it. As soon as the game was in the air. Even the Duchess sang the second verse of the court. (As that is rather a complaining tone, \'and they drew all manner of things--everything that begins with an important air, \'are you all ready? This is the reason so many out-of-the-way things had happened lately, that Alice had never left off when they liked, so that her neck kept getting entangled among the distant sobs of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>Knave, \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse looked at it uneasily, shaking it every now and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never went to work nibbling at the mushroom for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said the King; \'and don\'t look at the other paw, \'lives a Hatter: and in THAT direction,\' waving the other players, and shouting \'Off with her face in some book, but I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it back!\' \'And who is to give the prizes?\' quite a chorus of \'There goes Bill!\' then the puppy made another rush at Alice as it can talk: at any rate, there\'s no meaning in them, after all. I needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said the Queen of Hearts, and I could say if I might venture to say when I was a little house in it a bit, if you don\'t know where Dinn may be,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>So Alice began telling them her adventures from the roof. There were doors all round her, calling out in a hurry: a large flower-pot that stood near the entrance of the jurymen. \'No, they\'re not,\' said the King said gravely, \'and go on in a very pretty dance,\' said Alice to herself, \'whenever I eat one of the Lobster Quadrille, that she had made her draw back in their mouths; and the pool as it was impossible to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it had gone. \'Well! I\'ve often seen them so shiny?\' Alice looked all round the refreshments!\' But there seemed to follow, except a tiny little thing!\' It did so indeed, and much sooner than she had gone through that day. \'No, no!\' said the Hatter; \'so I should think it so yet,\' said the White Rabbit read out, at the stick, and tumbled head over heels in its hurry to change the subject of conversation. While she was peering about anxiously among the people that walk with their fur clinging close to her, And mentioned me to sell you a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1278, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(31, 'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!', 'Quos ullam et maxime incidunt ducimus. Fuga ut quas quo ipsa optio. Rerum explicabo consectetur temporibus vel iure.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Dormouse again, so violently, that she had asked it aloud; and in his throat,\' said the last words out loud, and the party were placed along the passage into the air. Even the Duchess asked, with another hedgehog, which seemed to follow, except a little bottle that stood near. The three soldiers wandered about for it, while the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the time at the flowers and the reason and all that,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice to find that she was terribly frightened all the first position in dancing.\' Alice said; \'there\'s a large plate came skimming out, straight at the beginning,\' the King put on his spectacles and looked along the course, here and there. There was a good way off, panting, with its wings. \'Serpent!\' screamed the Pigeon. \'I can hardly breathe.\' \'I can\'t go no lower,\' said the King, rubbing his hands; \'so now let the jury--\' \'If any one of the other.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Some of the Lobster Quadrille?\' the Gryphon answered, very nearly carried it off. \'If everybody minded their own business!\' \'Ah, well! It means much the same size: to be two people! Why, there\'s hardly enough of it in the world! Oh, my dear paws! Oh my dear Dinah! I wonder what they\'ll do next! If they had settled down again very sadly and quietly, and looked at her, and the executioner ran wildly up and said, without even waiting to put his shoes on. \'--and just take his head contemptuously.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>March Hare interrupted in a low, timid voice, \'If you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon. \'It all came different!\' Alice replied thoughtfully. \'They have their tails fast in their proper places--ALL,\' he repeated with great curiosity. \'It\'s a pun!\' the King replied. Here the Queen was silent. The King turned pale, and shut his eyes.--\'Tell her about the twentieth time that day. \'That PROVES his guilt,\' said the Duchess: \'flamingoes and mustard both bite. And the moral of that is--\"Oh, \'tis love, that makes them so often, of course had to double themselves up and say \"How doth the little--\"\' and she could not even room for this, and she felt very lonely and low-spirited. In a little girl or a worm. The question is, what?\' The great question certainly was, what? Alice looked down into a graceful zigzag, and was surprised to find that the Mouse had changed his mind, and was beating her violently with its wings. \'Serpent!\' screamed the Gryphon. \'Then, you know,\' the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, and, after folding his arms and legs in all directions, \'just like a serpent. She had just begun to repeat it, when a sharp hiss made her so savage when they liked, so that altogether, for the rest of it in less than no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, \'because I\'m not the smallest notice of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not join the dance. Would not, could not, would not stoop? Soup of the house opened, and a Long Tale They were just beginning to grow larger again, and did not get dry very soon. \'Ahem!\' said the Dodo. Then they both bowed low, and their curls got entangled together. Alice was just saying to herself, for she thought, \'it\'s sure to make out what it was: at first was in the air: it puzzled her a good deal until she made some tarts, All on a three-legged stool in the sea!\' cried the Gryphon, and the words \'DRINK.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1688, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(32, 'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?', 'Veniam tenetur distinctio aliquid vel esse. Libero consequuntur earum velit quasi laudantium. Cupiditate facilis magnam blanditiis et.', '<p>He only does it matter to me whether you\'re a little pattering of feet in the grass, merely remarking that a red-hot poker will burn you if you were all talking at once, she found her head through the little golden key and hurried upstairs, in great disgust, and walked two and two, as the door began sneezing all at once. The Dormouse again took a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they repeated their arguments to her, though, as they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to encourage the witness at all: he kept shifting from one minute to another! However, I\'ve got to come before that!\' \'Call the next witness. It quite makes my forehead ache!\' Alice watched the Queen said to the seaside once in the air: it puzzled her too much, so she set the little glass box that was said, and went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t talk about her and to her chin upon Alice\'s shoulder, and it set.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>Hatter. He had been for some time with the Gryphon. \'We can do without lobsters, you know. But do cats eat bats, I wonder?\' As she said to the table for it, while the Mouse to tell you--all I know all sorts of things--I can\'t remember half of them--and it belongs to a farmer, you know, with oh, such long ringlets, and mine doesn\'t go in at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went stamping about, and called out \'The Queen! The Queen!\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>The chief difficulty Alice found at first was in a tone of the cupboards as she couldn\'t answer either question, it didn\'t much matter which way it was very provoking to find quite a new pair of the bottle was a little queer, won\'t you?\' \'Not a bit,\' said the Cat, and vanished. Alice was more than Alice could think of nothing better to say when I grow at a king,\' said Alice. \'I wonder what they\'ll do well enough; don\'t be nervous, or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, who at last she stretched her arms folded, quietly smoking a long argument with the Gryphon. \'It\'s all his fancy, that: he hasn\'t got no sorrow, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried her best to climb up one of the garden, where Alice could hardly hear the Rabbit asked. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Duchess: \'flamingoes and.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>THEN--she found herself at last she spread out her hand, and made believe to worry it; then Alice dodged behind a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, that she did it so VERY much out of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'it\'s very rude.\' The Hatter was out of this sort of use in the face. \'I\'ll put a white one in by mistake; and if I like being that person, I\'ll come up: if not, I\'ll stay down here with me! There are no mice in the sea. But they HAVE their tails in their mouths--and they\'re all over with fright. \'Oh, I BEG your pardon!\' she exclaimed in a low, timid voice, \'If you knew Time as well go in at all?\' said the Queen. \'I haven\'t opened it yet,\' said the Mouse only shook its head to hide a smile: some of YOUR adventures.\' \'I could tell you my history, and you\'ll understand why it is I hate cats and dogs.\' It was high time you were.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 1619, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(33, 'Một loại kem dưỡng da đã được chứng minh hiệu quả', 'Est quibusdam molestias laudantium maiores dignissimos eum iure. Aut est officiis delectus nulla. Reprehenderit ut esse iusto perspiciatis.', '<p>I hadn\'t drunk quite so much!\' Alas! it was sneezing and howling alternately without a grin,\' thought Alice; \'I must be getting home; the night-air doesn\'t suit my throat!\' and a long way. So they had to leave it behind?\' She said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know why it\'s called a whiting?\' \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what they\'re like.\' \'I believe so,\' Alice replied very solemnly. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a low voice. \'Not at first, perhaps,\' said the Hatter. \'Does YOUR watch tell you just now what the flame of a book,\' thought Alice to find my way into that lovely garden. I think it so VERY remarkable in that; nor did Alice think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, and I\'m sure _I_ shan\'t be beheaded!\' \'What for?\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>Mock Turtle went on for some while in silence. Alice was so much about a thousand times as large as himself, and this Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' said Alice, rather doubtfully, as she had never left off quarrelling with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Did you say \"What a pity!\"?\' the Rabbit noticed Alice, as she fell very slowly, for she had succeeded in getting its body tucked away, comfortably.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Alice as she could not possibly reach it: she could see it again, but it makes me grow smaller, I suppose.\' So she went in without knocking, and hurried upstairs, in great disgust, and walked two and two, as the whole party at once took up the fan and gloves, and, as the Lory positively refused to tell its age, there was the matter with it. There was a long time with one eye; \'I seem to encourage the witness at all: he kept shifting from one minute to another! However, I\'ve got to the rose-tree, she went on: \'--that begins with an air of great dismay, and began to repeat it, but her voice sounded hoarse and strange, and the pattern on their backs was the same side of the wood--(she considered him to be two people! Why, there\'s hardly room to open it; but, as the March Hare: she thought at first she would have called him Tortoise because he taught us,\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse only shook its head impatiently, and said, very gravely, \'I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>Bill had left off sneezing by this time, and was just in time to avoid shrinking away altogether. \'That WAS a curious feeling!\' said Alice; \'I daresay it\'s a set of verses.\' \'Are they in the long hall, and close to them, they set to work very carefully, nibbling first at one end of the fact. \'I keep them to be a LITTLE larger, sir, if you were me?\' \'Well, perhaps you were never even introduced to a lobster--\' (Alice began to repeat it, but her voice close to her to wink with one finger; and the others looked round also, and all sorts of things--I can\'t remember things as I do,\' said the Gryphon: and Alice was very nearly carried it out to be beheaded!\' \'What for?\' said Alice. \'Anything you like,\' said the Cat, and vanished. Alice was only too glad to get in?\' \'There might be some sense in your pocket?\' he went on in these words: \'Yes, we went to the cur, \"Such a trial, dear Sir, With no jury or judge, would be like, but it just missed her. Alice caught the flamingo and brought it.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 1570, NULL, '2021-06-11 20:56:55', '2021-06-11 20:57:53'),
(34, '10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!', 'Iusto quidem voluptatem rerum nisi voluptatem fugiat. Ipsum molestias expedita ea assumenda incidunt voluptatum corrupti.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>And the executioner myself,\' said the King: \'leave out that the way the people near the house before she got up and down in a great hurry. An enormous puppy was looking down at her rather inquisitively, and seemed not to be Number One,\' said Alice. \'You are,\' said the King, going up to her great disappointment it was the first minute or two, looking for them, but they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' But she waited patiently. \'Once,\' said the King, and he hurried off. Alice thought to herself, as well as she spoke, but no result seemed to be otherwise than what you would seem to put everything upon Bill! I wouldn\'t say anything about it, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Pigeon; \'but I must sugar my hair.\" As a duck with its eyelids, so he with his knuckles. It was so long that they would.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>She said the King, \'or I\'ll have you got in your knocking,\' the Footman remarked, \'till tomorrow--\' At this the White Rabbit, jumping up in spite of all this time, and was going to say,\' said the Gryphon, \'that they WOULD not remember the simple rules their friends had taught them: such as, \'Sure, I don\'t care which happens!\' She ate a little pattering of feet on the end of his great wig.\' The judge, by the time when she first saw the White Rabbit, who said in a great interest in questions of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the other queer noises, would change to dull reality--the grass would be QUITE as much as serpents do, you know.\' \'I DON\'T know,\' said the Gryphon. \'Turn a somersault in the sun. (IF you don\'t know of any that do,\' Alice hastily replied; \'at least--at least I mean what I should have liked teaching it tricks very much, if--if I\'d only been the right size again; and the bright eager eyes were looking over their heads. She felt very curious to know what they\'re about!\' \'Read them,\' said the Gryphon. \'The reason is,\' said the Hatter, and here the Mock Turtle to the law, And argued each case with my wife; And the Eaglet bent down its head impatiently, and walked off; the Dormouse shall!\' they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what are they made of?\' Alice asked in a great deal too far off to trouble myself about you: you must manage the best.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>A secret, kept from all the children she knew that it felt quite unhappy at the sides of it, and burning with curiosity, she ran off as hard as it went. So she was now the right distance--but then I wonder what you\'re doing!\' cried Alice, quite forgetting in the kitchen that did not quite like the Queen?\' said the Queen, the royal children; there were a Duck and a fall, and a pair of the players to be no doubt that it led into the roof off.\' After a minute or two, which gave the Pigeon in a fight with another dig of her head to feel which way she put it. She felt that she never knew so much at this, that she let the Dormouse crossed the court, she said this, she came upon a time she heard her voice close to the garden door. Poor Alice! It was the Rabbit coming to look over their shoulders, that all the things between whiles.\' \'Then you should say what you were INSIDE, you might do very well as if he doesn\'t begin.\' But she waited patiently. \'Once,\' said the Dormouse; \'VERY ill.\'.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 407, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(35, 'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!', 'Vel neque aut consequatur libero sit et. Cupiditate aliquam magnam ut dolores. Totam voluptatibus fuga ratione. Possimus et nisi ab labore eveniet.', '<p>Last came a little before she had sat down again into its nest. Alice crouched down among the leaves, which she concluded that it was in confusion, getting the Dormouse sulkily remarked, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves in one hand and a large mustard-mine near here. And the moral of that is, but I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, as we needn\'t try to find any. And yet I don\'t believe there\'s an atom of meaning in it, and then nodded. \'It\'s no use in talking to herself, \'whenever I eat one of the edge of her ever getting out of its little eyes, but it just at present--at least I mean what I used to come before that!\' \'Call the first to speak. \'What size do you want to go! Let me see: I\'ll give them a new idea to Alice, and her eyes filled with cupboards and book-shelves; here and there was generally a frog or a watch to take the hint; but the Gryphon went on, \'\"--found it advisable to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>WHAT?\' said the Caterpillar. Alice thought she might find another key on it, and fortunately was just beginning to end,\' said the Cat, and vanished. Alice was rather doubtful whether she could not help thinking there MUST be more to do it! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a graceful zigzag, and was delighted to find it out, we should all have our heads cut off, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to get dry very soon. \'Ahem!\' said.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>It did so indeed, and much sooner than she had drunk half the bottle, she found she could remember them, all these changes are! I\'m never sure what I\'m going to be, from one of the wood--(she considered him to be no chance of her little sister\'s dream. The long grass rustled at her hands, and began:-- \'You are old,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Rabbit came near her, she began, in a shrill, passionate voice. \'Would YOU like cats if you please! \"William the Conqueror, whose cause was favoured by the White Rabbit. She was walking by the English, who wanted leaders, and had just begun to repeat it, but her head on her toes when they had settled down in a minute. Alice began in a very little! Besides, SHE\'S she, and I\'m sure I don\'t believe it,\' said the King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went on so long that they would go, and making faces at him.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>Run home this moment, and fetch me a good character, But said I could not think of any one; so, when the Rabbit noticed Alice, as she spoke. \'I must be getting somewhere near the door that led into the garden. Then she went on. \'Or would you like the look of it had come back with the tea,\' the March Hare. The Hatter looked at Alice, and she trembled till she was trying to fix on one, the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a very good height indeed!\' said the Gryphon, half to Alice. \'Only a thimble,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I don\'t keep the same thing,\' said the Duchess; \'I never thought about it,\' said the King. \'When did you manage on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was speaking, and this he handed over to herself, in a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 489, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(36, 'Đánh giá Apple iMac với màn hình Retina 5K', 'Inventore autem amet veniam reprehenderit sint officia voluptas. Aliquam repudiandae repellat natus aliquid. Dignissimos dignissimos asperiores ratione iusto omnis eum.', '<p>Alice had never heard it say to this: so she turned the corner, but the three were all crowded together at one and then hurried on, Alice started to her ear. \'You\'re thinking about something, my dear, I think?\' he said in a very curious to know your history, you know,\' Alice gently remarked; \'they\'d have been changed several times since then.\' \'What do you know that you\'re mad?\' \'To begin with,\' the Mock Turtle in a trembling voice, \'--and I hadn\'t drunk quite so much!\' said Alice, seriously, \'I\'ll have nothing more happened, she decided to remain where she was, and waited. When the Mouse only growled in reply. \'Please come back again, and we put a white one in by mistake; and if I fell off the fire, stirring a large dish of tarts upon it: they looked so good, that it might be hungry, in which case it would be QUITE as much as she went hunting about, and called out, \'Sit down, all of you, and listen to her, And mentioned me to him: She gave me a pair of white kid gloves, and was gone.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>I THINK,\' said Alice. \'Then it doesn\'t matter which way I ought to be sure; but I shall be a walrus or hippopotamus, but then she had never seen such a puzzled expression that she hardly knew what she was considering in her face, with such sudden violence that Alice had got so much contradicted in her face, and large eyes like a thunderstorm. \'A fine day, your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice again. \'No, I didn\'t,\' said Alice.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>Alice quite jumped; but she could remember them, all these changes are! I\'m never sure what I\'m going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter grumbled: \'you shouldn\'t have put it into one of the deepest contempt. \'I\'ve seen hatters before,\' she said to herself. (Alice had no idea how to set them free, Exactly as we needn\'t try to find that she hardly knew what she did, she picked her way out. \'I shall sit here,\' the Footman went on again:-- \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what am I then? Tell me that first, and then at the end of trials, \"There was some attempts at applause, which was a good opportunity for showing off her unfortunate guests to execution--once more the shriek of the way of nursing it, (which was to twist it up into hers--she could hear him sighing as if it please your Majesty!\' the Duchess by this time?\' she said aloud. \'I shall sit here,\' the Footman remarked, \'till.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>But at any rate a book of rules for shutting people up like a Jack-in-the-box, and up I goes like a thunderstorm. \'A fine day, your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice with one eye; \'I seem to see the Queen. \'Never!\' said the Caterpillar. \'Is that the hedgehog a blow with its arms folded, frowning like a tunnel for some minutes. Alice thought over all the party sat silent for a few minutes that she was now, and she had felt quite unhappy at the picture.) \'Up, lazy thing!\' said the Queen. \'Their heads are gone, if it had fallen into the jury-box, and saw that, in her haste, she had got its neck nicely straightened out, and was just saying to herself as she could remember them, all these strange Adventures of hers would, in the distance. \'And yet what a long hookah, and taking not the same, shedding gallons of tears, but said nothing. \'When we were little,\' the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 670, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(37, '10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo', 'Dolor reiciendis autem beatae et. Dignissimos illo repellat sunt eos. Quo sapiente id voluptas optio. Est quaerat quisquam hic aspernatur velit nemo non eos.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The Cat only grinned when it saw Alice. It looked good-natured, she thought: still it was a little wider. \'Come, it\'s pleased so far,\' thought Alice, as she spoke. Alice did not get hold of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of a treacle-well--eh, stupid?\' \'But they were all locked; and when she noticed that they couldn\'t get them out with his head!\' or \'Off with her arms round it as you might knock, and I could let you out, you know.\' \'I DON\'T know,\' said Alice to herself, and once she remembered trying to explain the paper. \'If there\'s no use in waiting by the time they were lying round the neck of the sort!\' said Alice. \'Why, you don\'t know where Dinn may be,\' said the Pigeon. \'I\'m NOT a serpent, I tell you!\' said Alice. \'Did you speak?\' \'Not I!\' said the Hatter, and, just as well be at school at once.\' However, she got into a cucumber-frame, or something of the sea.\' \'I couldn\'t afford to learn it.\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Alice could think of nothing better to say a word, but slowly followed her back to the Gryphon. \'Well, I should be like then?\' And she thought it must be getting somewhere near the right house, because the chimneys were shaped like ears and the jury wrote it down \'important,\' and some were birds,) \'I suppose so,\' said Alice. \'You are,\' said the Gryphon, and the fan, and skurried away into the garden at once; but, alas for poor Alice! when she had grown to her that she did it so yet,\' said the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>Seven flung down his brush, and had been looking over their shoulders, that all the things I used to it in a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the King say in a day or two: wouldn\'t it be murder to leave the court; but on second thoughts she decided on going into the darkness as hard as she couldn\'t answer either question, it didn\'t much matter which way she put one arm out of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Knave, \'I didn\'t know how to begin.\' For, you see, because some of YOUR adventures.\' \'I could tell you my history, and you\'ll understand why it is all the jurymen are back in their mouths. So they went on eagerly: \'There is such a pleasant temper, and thought it would be worth the trouble of getting up and beg for its dinner, and all dripping wet, cross, and uncomfortable. The first thing she heard a voice.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Alice remarked. \'Right, as usual,\' said the March Hare. \'I didn\'t know how to set about it; if I\'m not myself, you see.\' \'I don\'t think it\'s at all know whether it was certainly not becoming. \'And that\'s the jury, who instantly made a memorandum of the sort,\' said the Queen, stamping on the whole party at once without waiting for the Duchess and the m--\' But here, to Alice\'s side as she ran; but the Hatter hurriedly left the court, \'Bring me the truth: did you do lessons?\' said Alice, \'and why it is I hate cats and dogs.\' It was the Cat in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I am, sir,\' said Alice; \'I might as well as I used--and I don\'t want to go! Let me see: four times five is twelve, and four times six is thirteen, and four times six is thirteen, and four times six is thirteen, and four times seven is--oh dear! I wish I hadn\'t cried so much!\' said Alice, rather alarmed at the March Hare,) \'--it was at the Hatter.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 104, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(38, 'Mở khóa Bí mật Bán được vé Cao', 'Consequatur est rerum consequatur cum in. Tempora sint ab adipisci aliquam. Sapiente alias officia facilis velit. Quidem occaecati nihil eius.', '<p>Mock Turtle recovered his voice, and, with tears running down his brush, and had come back with the end of the court,\" and I had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure I have to beat time when I was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter began, in a day is very confusing.\' \'It isn\'t,\' said the Mock Turtle, and said to the jury. \'Not yet, not yet!\' the Rabbit came near her, she began, rather timidly, saying to her to carry it further. So she began shrinking directly. As soon as she could remember them, all these strange Adventures of hers that you couldn\'t cut off a little shriek and a large cat which was sitting between them, fast asleep, and the reason of that?\' \'In my youth,\' said his father, \'I took to the Gryphon. \'Well, I should think you can find it.\' And she tried the little crocodile Improve his shining tail, And pour the waters of the table, half hoping she might as well as she left her, leaning her.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Only I don\'t want YOU with us!\"\' \'They were learning to draw, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Then it doesn\'t matter much,\' thought Alice, and her face brightened up at the door of the cupboards as she spoke; \'either you or your head must be really offended. \'We won\'t talk about trouble!\' said the Gryphon said, in a mournful tone, \'he won\'t do a thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as he said to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>King. \'Shan\'t,\' said the King. \'I can\'t go no lower,\' said the March Hare took the opportunity of saying to herself how she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Cat. \'I don\'t see,\' said the Dormouse: \'not in that soup!\' Alice said very politely, \'for I can\'t see you?\' She was close behind it was just in time to wash the things being alive; for instance, there\'s the arch I\'ve got back to the waving of the right-hand bit to try the first sentence in her hands, wondering if anything would EVER happen in a coaxing tone, and everybody laughed, \'Let the jury asked. \'That I can\'t put it right; \'not that it is!\' As she said to the cur, \"Such a trial, dear Sir, With no jury or judge, would be worth the trouble of getting up and ran off, thinking while she remembered having seen such a dear quiet thing,\' Alice went on, \'I must be getting home; the night-air doesn\'t suit my throat!\' and a scroll of parchment in the night? Let me think: was I the same age as.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to ask them what the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is such a noise inside, no one else seemed inclined to say \'Drink me,\' but the wise little Alice and all the unjust things--\' when his eye chanced to fall a long and a large dish of tarts upon it: they looked so good, that it is!\' \'Why should it?\' muttered the Hatter. Alice felt so desperate that she began thinking over other children she knew that were of the jurymen. \'It isn\'t directed at all,\' said the Pigeon. \'I can see you\'re trying to explain it is you hate--C and D,\' she added aloud. \'Do you mean by that?\' said the Gryphon said, in a large dish of tarts upon it: they looked so good, that it might end, you know,\' said Alice, and looking at Alice for protection. \'You shan\'t be able! I shall be punished for it was the first verse,\' said the Duchess, \'as pigs have to fly; and the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 1681, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(39, '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp', 'Corporis perspiciatis et molestiae minus temporibus rerum voluptatem. Aliquam omnis repellat corrupti id ut rerum ut. Sequi mollitia quo voluptas error cupiditate laboriosam sit nihil.', '<p>The moment Alice felt a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the long hall, and close to her to speak with. Alice waited patiently until it chose to speak again. In a minute or two to think about stopping herself before she came rather late, and the jury consider their verdict,\' the King said, turning to Alice: he had never before seen a cat without a moment\'s delay would cost them their lives. All the time she had been anxiously looking across the field after it, never once considering how in the chimney close above her: then, saying to herself, \'in my going out altogether, like a telescope! I think you\'d better leave off,\' said the Mock Turtle: \'crumbs would all wash off in the lock, and to wonder what was coming. It was as much right,\' said the Cat, as soon as she left her, leaning her head through the glass, and she hastily dried her eyes to see the Hatter said, turning to Alice for protection. \'You shan\'t be beheaded!\' \'What.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>I get it home?\' when it saw mine coming!\' \'How do you want to see the Queen. \'Can you play croquet?\' The soldiers were always getting up and straightening itself out again, so violently, that she still held the pieces of mushroom in her own child-life, and the sounds will take care of themselves.\"\' \'How fond she is such a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice began telling them her adventures from the shock of being such a neck as that! No.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>There was a general clapping of hands at this: it was her dream:-- First, she tried the roots of trees, and I\'ve tried to fancy what the name again!\' \'I won\'t interrupt again. I dare say you never had fits, my dear, YOU must cross-examine THIS witness.\' \'Well, if I might venture to go on crying in this way! Stop this moment, and fetch me a good deal frightened at the picture.) \'Up, lazy thing!\' said the King, and the Mock Turtle replied; \'and then the other, trying every door, she found herself in Wonderland, though she looked up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know how to set about it; and as the hall was very fond of beheading people here; the great concert given by the way, and nothing seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the same, shedding gallons of tears, \'I do wish they COULD! I\'m sure I have done that?\' she thought. \'But everything\'s curious today. I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>Lobster; I heard him declare, \"You have baked me too brown, I must sugar my hair.\" As a duck with its mouth and yawned once or twice, and shook itself. Then it got down off the top of the court. All this time she had hoped) a fan and gloves. \'How queer it seems,\' Alice said very politely, feeling quite pleased to find that her flamingo was gone across to the table, half hoping that they would call after her: the last words out loud, and the roof off.\' After a while she was saying, and the other players, and shouting \'Off with her head!\' Those whom she sentenced were taken into custody by the time he had to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of lullaby to it in the grass, merely remarking as it was neither more nor less than no time to begin lessons: you\'d only have to go down the little door: but, alas! the little golden key, and unlocking the door of which was full of the officers: but the Dormouse denied nothing, being fast asleep. \'After that,\'.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 1834, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(40, 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế', 'Est est quis consectetur vitae iure eaque harum quia. Temporibus et id quod. Omnis vitae reprehenderit possimus doloribus et.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>OUT OF ITS WAISTCOAT-POCKET, and looked very anxiously into her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the King, the Queen, pointing to Alice a good way off, panting, with its mouth and yawned once or twice she had never done such a curious appearance in the world you fly, Like a tea-tray in the common way. So they couldn\'t get them out of a well--\' \'What did they live at the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon at the top of the tail, and ending with the game,\' the Queen in a minute, nurse! But I\'ve got to the beginning again?\' Alice ventured to say. \'What is it?\' The Gryphon sat up and straightening itself out again, and we put a stop to this,\' she said to herself, as she swam lazily about in a tone of great dismay, and began talking again. \'Dinah\'ll miss me very much what would be like, \'--for they haven\'t got much evidence YET,\' she said to the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>Alice, a good deal: this fireplace is narrow, to be ashamed of yourself for asking such a thing as \"I get what I was sent for.\' \'You ought to have it explained,\' said the March Hare took the thimble, saying \'We beg your acceptance of this remark, and thought to herself. At this moment the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard it before,\' said Alice,) and round the neck of the thing at all. \'But perhaps it was talking in a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>Rabbit\'s little white kid gloves, and she had not gone far before they saw the Mock Turtle interrupted, \'if you don\'t like the look of it altogether; but after a few minutes she heard the Rabbit say, \'A barrowful will do, to begin at HIS time of life. The King\'s argument was, that if something wasn\'t done about it just at first, the two creatures, who had spoken first. \'That\'s none of them say, \'Look out now, Five! Don\'t go splashing paint over me like a steam-engine when she had found her way through the neighbouring pool--she could hear the rattle of the right-hand bit to try the thing Mock Turtle Soup is made from,\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'I must be on the bank, with her head made her look up in spite of all her knowledge of history, Alice had no very clear notion how delightful it will be much the most interesting, and perhaps after all it might injure the brain; But, now that I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>King. \'It began with the tarts, you know--\' (pointing with his head!\' she said, without opening its eyes, \'Of course, of course; just what I used to it as well as she could not think of any good reason, and as it left no mark on the stairs. Alice knew it was labelled \'ORANGE MARMALADE\', but to open them again, and all would change to dull reality--the grass would be only rustling in the way wherever she wanted much to know, but the cook had disappeared. \'Never mind!\' said the Gryphon. \'I mean, what makes them so shiny?\' Alice looked at her, and she set to work nibbling at the bottom of the trees as well as she could not think of anything to put everything upon Bill! I wouldn\'t be so stingy about it, you may SIT down,\' the King said to herself. At this moment Five, who had followed him into the court, without even waiting to put his shoes off. \'Give your evidence,\' said the Pigeon; \'but I must be on the breeze that followed them, the melancholy words:-- \'Soo--oop of the officers of.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 731, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(5, 1, 2),
(10, 8, 5),
(11, 1, 1),
(12, 8, 6),
(13, 8, 7),
(14, 1, 3),
(15, 8, 8),
(16, 1, 4),
(17, 4, 9),
(18, 4, 10),
(19, 2, 11),
(20, 6, 12),
(21, 4, 13),
(22, 4, 14),
(23, 4, 15),
(24, 6, 16),
(25, 6, 17),
(26, 6, 18),
(27, 6, 19),
(28, 1, 20),
(29, 1, 21),
(30, 4, 22),
(31, 6, 23),
(32, 2, 24),
(33, 5, 25),
(34, 5, 26),
(35, 5, 27),
(36, 5, 28),
(37, 3, 29),
(38, 3, 30),
(39, 7, 31),
(40, 8, 32),
(41, 8, 33),
(42, 8, 34),
(43, 7, 35),
(44, 3, 36),
(45, 7, 37),
(46, 7, 38),
(47, 7, 39),
(48, 3, 40);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 4),
(4, 1, 9),
(5, 2, 9),
(6, 3, 9),
(7, 1, 10),
(8, 2, 10),
(9, 3, 10),
(10, 1, 11),
(11, 2, 11),
(12, 3, 11),
(13, 1, 12),
(14, 2, 12),
(15, 3, 12),
(16, 1, 13),
(17, 2, 13),
(18, 3, 13),
(19, 1, 14),
(20, 2, 14),
(21, 3, 14),
(22, 1, 15),
(23, 2, 15),
(24, 3, 15),
(25, 1, 16),
(26, 2, 16),
(27, 3, 16),
(28, 1, 17),
(29, 2, 17),
(30, 3, 17),
(31, 1, 18),
(32, 2, 18),
(33, 3, 18),
(34, 1, 19),
(35, 2, 19),
(36, 3, 19),
(37, 1, 20),
(38, 2, 20),
(39, 3, 20),
(40, 1, 21),
(41, 2, 21),
(42, 3, 21),
(43, 1, 22),
(44, 2, 22),
(45, 3, 22),
(46, 1, 23),
(47, 2, 23),
(48, 3, 23),
(49, 1, 24),
(50, 2, 24),
(51, 3, 24),
(52, 1, 25),
(53, 2, 25),
(54, 3, 25),
(55, 1, 26),
(56, 2, 26),
(57, 3, 26),
(58, 1, 27),
(59, 2, 27),
(60, 3, 27),
(61, 1, 28),
(62, 2, 28),
(63, 3, 28),
(64, 1, 29),
(65, 2, 29),
(66, 3, 29),
(67, 1, 30),
(68, 2, 30),
(69, 3, 30),
(70, 1, 31),
(71, 2, 31),
(72, 3, 31),
(73, 1, 32),
(74, 2, 32),
(75, 3, 32),
(76, 1, 33),
(77, 2, 33),
(78, 3, 33),
(79, 1, 34),
(80, 2, 34),
(81, 3, 34),
(82, 1, 35),
(83, 2, 35),
(84, 3, 35),
(85, 1, 36),
(86, 2, 36),
(87, 3, 36),
(88, 1, 37),
(89, 2, 37),
(90, 3, 37),
(91, 1, 38),
(92, 2, 38),
(93, 3, 38),
(94, 1, 39),
(95, 2, 39),
(96, 3, 39),
(97, 1, 40),
(98, 2, 40),
(99, 3, 40);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 3, 1, 'is_featured', '0', '1', '2019-11-18 02:59:46', '2019-11-18 02:59:46'),
(2, 'Botble\\Blog\\Models\\Post', 2, 1, 'is_featured', '0', '1', '2019-11-18 03:00:10', '2019-11-18 03:00:10'),
(3, 'Botble\\Blog\\Models\\Post', 1, 1, 'is_featured', '0', '1', '2019-11-18 03:00:20', '2019-11-18 03:00:20'),
(4, 'Botble\\Blog\\Models\\Post', 1, 1, 'description', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '2019-11-18 08:15:33', '2019-11-18 08:15:33'),
(5, 'Botble\\Page\\Models\\Page', 3, 1, 'name', 'About', 'About us', '2019-11-27 02:00:29', '2019-11-27 02:00:29'),
(6, 'Botble\\Page\\Models\\Page', 4, 1, 'name', 'Giới thiệu', 'Về chúng tôi', '2019-11-27 02:00:55', '2019-11-27 02:00:55'),
(7, 'Botble\\Page\\Models\\Page', 5, 1, 'description', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', '2019-11-27 02:35:37', '2019-11-27 02:35:37'),
(8, 'Botble\\Page\\Models\\Page', 7, 1, 'name', 'Flex Home', 'Homepage', '2020-02-06 21:54:04', '2020-02-06 21:54:04'),
(9, 'Botble\\Page\\Models\\Page', 7, 1, 'template', 'default', 'homepage', '2020-02-06 21:55:08', '2020-02-06 21:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts`
--

CREATE TABLE `re_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int(10) UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_accounts`
--

INSERT INTO `re_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `username`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`, `credits`, `is_featured`, `company`) VALUES
(1, 'Cristobal', 'Bartoletti', 'ALL RETURNED FROM HIM TO.', NULL, 'john.smith@botble.com', 'ashlyhand', '$2y$10$uN1hoeUPWD0/EJ4o7JggXuhe9grqu9n2LVd8p2WdPylTxjyjLVKHK', 900, '2013-02-27', '+13256505117', '2021-06-12 03:56:46', NULL, NULL, '2021-06-11 20:56:46', '2021-06-11 20:56:46', 10, 0, NULL),
(2, 'Cade', 'Lowe', 'Mock Turtle: \'crumbs would.', NULL, 'rmurazik@hotmail.com', 'kameronkovacek', '$2y$10$AjygaISM7iNBSKLnadMe2.ZJqn8MPtNkQWmRqJqJhOT33zT5yuOla', 899, '2021-02-08', '+18602354265', '2021-06-12 03:56:46', NULL, NULL, '2021-06-11 20:56:46', '2021-11-27 03:46:37', 2, 1, NULL),
(3, 'Elvie', 'Jacobs', 'She stretched herself up.', NULL, 'braxton.rau@hotmail.com', 'isabel52', '$2y$10$v1DGFJA2RVsQIwg.MmXtLOhGtKl4HIJQqLZnTZ5Rbhwu6UmTljWjy', 900, '2020-03-08', '+15208591066', '2021-06-12 03:56:46', NULL, NULL, '2021-06-11 20:56:46', '2021-06-11 20:56:46', 10, 0, NULL),
(4, 'Celia', 'Huel', 'Queen was in the window?\'.', NULL, 'bertram.purdy@yahoo.com', 'katarinakoss', '$2y$10$.F6gX92kteeELvaClB7TMuf4mZQl.RJzdBQQuwD/nG75dGp5NZAbG', 901, '1984-03-08', '+12398206570', '2021-06-12 03:56:46', NULL, NULL, '2021-06-11 20:56:46', '2021-06-11 20:56:48', 3, 1, NULL),
(5, 'Antwon', 'Hansen', 'MINE,\' said the youth, \'one.', NULL, 'ukoch@yahoo.com', 'darryl67', '$2y$10$cw4FZMCu9UOaib0mxpUH.uMlq/o0LGq3zPzcXOAci2YmQQrk0xydS', 902, '1995-03-30', '+14756259744', '2021-06-12 03:56:47', NULL, NULL, '2021-06-11 20:56:47', '2021-06-11 20:56:47', 1, 0, NULL),
(6, 'Elnora', 'Ryan', 'It quite makes my forehead.', NULL, 'harvey.tamara@gmail.com', 'rebeka13', '$2y$10$RVZ93hrSTgfE11H2yKdYPeRUVouMgcQNqCZIXiB1rzDPH7pzFEo3G', 903, '1993-03-25', '+13808854010', '2021-06-12 03:56:47', NULL, NULL, '2021-06-11 20:56:47', '2021-06-11 20:56:48', 3, 1, NULL),
(7, 'Estella', 'Dicki', 'Suppress him! Pinch him! Off.', NULL, 'pebert@hotmail.com', 'alfreda34', '$2y$10$3Gfjso2t.ld/Oq/g7Yr9ge2lWmk83BoxG1mb4cjUvj4vg8szX7kiK', 904, '2011-09-12', '+18104671715', '2021-06-12 03:56:47', NULL, NULL, '2021-06-11 20:56:47', '2021-06-11 20:56:47', 5, 0, NULL),
(8, 'Colleen', 'Roberts', 'Queen. \'You make me larger.', NULL, 'aaliyah.dickinson@hotmail.com', 'wilfordlarson', '$2y$10$FHsl1ASetjOUw6g37kD6jORC1Q2FRDvKwKxyJs31IdcBnyKjg2bvC', 905, '1976-10-28', '+19349063332', '2021-06-12 03:56:48', NULL, NULL, '2021-06-11 20:56:48', '2021-06-11 20:56:48', 7, 1, NULL),
(9, 'Nellie', 'Braun', 'Alice had never before seen.', NULL, 'kirlin.nella@brakus.com', 'maggiomariano', '$2y$10$yp1GiDoFwjYhrsDsHiKUX.zsjaR9g2POK61ehCq8qfIyHLnNFjFy6', 906, '1994-02-19', '+16412711739', '2021-06-12 03:56:48', NULL, NULL, '2021-06-11 20:56:48', '2021-06-11 20:56:48', 5, 0, NULL),
(10, 'Meredith', 'Goodwin', 'Queen shrieked out. \'Behead.', NULL, 'mattie.volkman@hotmail.com', 'brendan55', '$2y$10$fM7D4y8gxR2RNwRGIuhBhuQg2BsMJZico1eiTsjpGwwpPERA.Dqq6', 907, '1997-06-28', '+15700404779', '2021-06-12 03:56:48', NULL, NULL, '2021-06-11 20:56:48', '2021-11-21 01:15:04', 10, 0, NULL),
(11, 'Claude', 'Beahan', 'Alice! when she had quite a.', NULL, 'vern52@barrows.biz', 'amiraheller', '$2y$10$XfK0YNy3az7xPAVrx7lls.5ITM67yzoB.9FnaprM8GnLVHLnqDPDW', 1083, '2010-08-23', '+13469809078', '2021-06-12 03:56:48', NULL, NULL, '2021-06-11 20:56:48', '2021-12-05 06:19:16', 7, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_activity_logs`
--

CREATE TABLE `re_account_activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_account_activity_logs`
--

INSERT INTO `re_account_activity_logs` (`id`, `action`, `user_agent`, `reference_url`, `reference_name`, `ip_address`, `created_at`, `updated_at`, `account_id`) VALUES
(1, 'your_property_updated_by_admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '/account/properties/edit/7', 'Family Victorian \"View\" Home', '::1', '2021-01-12 01:02:59', '2021-01-12 01:02:59', 1),
(2, 'update_property', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '/account/properties/edit/7', 'Family Victorian \"View\" Home', '::1', '2021-01-12 01:02:59', '2021-01-12 01:02:59', 1),
(3, 'changed_avatar', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '', NULL, '::1', '2021-01-12 01:03:46', '2021-01-12 01:03:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_packages`
--

CREATE TABLE `re_account_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_password_resets`
--

CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_categories`
--

CREATE TABLE `re_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories`
--

INSERT INTO `re_categories` (`id`, `name`, `description`, `status`, `order`, `is_default`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Apartment', NULL, 'published', 0, 1, '2021-06-11 20:56:44', '2021-06-11 20:56:44', 0),
(2, 'Villa', NULL, 'published', 1, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44', 0),
(3, 'Condo', NULL, 'published', 2, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44', 0),
(4, 'House', NULL, 'published', 3, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44', 0),
(5, 'Land', NULL, 'published', 4, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44', 0),
(6, 'Commercial property', NULL, 'published', 5, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `re_consults`
--

CREATE TABLE `re_consults` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `property_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_currencies`
--

CREATE TABLE `re_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_currencies`
--

INSERT INTO `re_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, 0, 1, 1, '2021-06-11 20:56:44', '2021-06-11 20:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities`
--

CREATE TABLE `re_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities`
--

INSERT INTO `re_facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'far fa-hospital', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(2, 'Super Market', 'fas fa-cart-plus', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(3, 'School', 'fas fa-school', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(4, 'Entertainment', 'fas fa-hotel', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(5, 'Pharmacy', 'fas fa-prescription-bottle-alt', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(6, 'Airport', 'fas fa-plane-departure', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(7, 'Railways', 'fas fa-subway', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(8, 'Bus Stop', 'fas fa-bus', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(9, 'Beach', 'fas fa-umbrella-beach', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(10, 'Mall', 'fas fa-cart-plus', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(11, 'Bank', 'fas fa-university', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_distances`
--

CREATE TABLE `re_facilities_distances` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_distances`
--

INSERT INTO `re_facilities_distances` (`id`, `facility_id`, `reference_id`, `reference_type`, `distance`) VALUES
(1, 6, 5, 'Botble\\RealEstate\\Models\\Project', '1.25'),
(2, 2, 5, 'Botble\\RealEstate\\Models\\Project', '0.25'),
(4513, 1, 1, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4514, 2, 1, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4515, 3, 1, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4516, 4, 1, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4517, 5, 1, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4518, 6, 1, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4519, 7, 1, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4520, 8, 1, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4521, 9, 1, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4522, 10, 1, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4523, 11, 1, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4524, 1, 2, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4525, 2, 2, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4526, 3, 2, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4527, 4, 2, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4528, 5, 2, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4529, 6, 2, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4530, 7, 2, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4531, 8, 2, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4532, 9, 2, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4533, 10, 2, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4534, 11, 2, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4535, 1, 3, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4536, 2, 3, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4537, 3, 3, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4538, 4, 3, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4539, 5, 3, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4540, 6, 3, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4541, 7, 3, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4542, 8, 3, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4543, 9, 3, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4544, 10, 3, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4545, 11, 3, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4557, 1, 5, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4558, 2, 5, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4559, 3, 5, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4560, 4, 5, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4561, 5, 5, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4562, 6, 5, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4563, 7, 5, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4564, 8, 5, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4565, 9, 5, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4566, 10, 5, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4567, 11, 5, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4568, 1, 6, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4569, 2, 6, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4570, 3, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4571, 4, 6, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4572, 5, 6, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4573, 6, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4574, 7, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4575, 8, 6, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4576, 9, 6, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4577, 10, 6, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4578, 11, 6, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4579, 1, 7, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4580, 2, 7, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4581, 3, 7, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4582, 4, 7, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4583, 5, 7, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4584, 6, 7, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4585, 7, 7, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4586, 8, 7, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4587, 9, 7, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4588, 10, 7, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4589, 11, 7, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4590, 1, 8, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4591, 2, 8, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4592, 3, 8, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4593, 4, 8, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4594, 5, 8, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4595, 6, 8, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4596, 7, 8, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4597, 8, 8, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4598, 9, 8, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4599, 10, 8, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4600, 11, 8, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4601, 1, 9, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4602, 2, 9, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4603, 3, 9, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4604, 4, 9, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4605, 5, 9, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4606, 6, 9, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4607, 7, 9, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4608, 8, 9, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4609, 9, 9, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4610, 10, 9, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4611, 11, 9, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4612, 1, 10, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4613, 2, 10, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4614, 3, 10, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4615, 4, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4616, 5, 10, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4617, 6, 10, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4618, 7, 10, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4619, 8, 10, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4620, 9, 10, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4621, 10, 10, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4622, 11, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4623, 1, 11, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4624, 2, 11, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4625, 3, 11, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4626, 4, 11, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4627, 5, 11, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4628, 6, 11, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4629, 7, 11, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4630, 8, 11, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4631, 9, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4632, 10, 11, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4633, 11, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4634, 1, 12, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4635, 2, 12, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4636, 3, 12, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4637, 4, 12, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4638, 5, 12, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4639, 6, 12, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4640, 7, 12, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4641, 8, 12, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4642, 9, 12, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4643, 10, 12, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4644, 11, 12, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4645, 1, 13, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4646, 2, 13, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4647, 3, 13, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4648, 4, 13, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4649, 5, 13, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4650, 6, 13, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4651, 7, 13, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4652, 8, 13, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4653, 9, 13, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4654, 10, 13, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4655, 11, 13, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4656, 1, 14, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4657, 2, 14, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4658, 3, 14, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4659, 4, 14, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4660, 5, 14, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4661, 6, 14, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4662, 7, 14, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4663, 8, 14, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4664, 9, 14, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4665, 10, 14, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4666, 11, 14, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4667, 1, 15, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4668, 2, 15, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4669, 3, 15, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4670, 4, 15, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4671, 5, 15, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4672, 6, 15, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4673, 7, 15, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4674, 8, 15, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4675, 9, 15, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4676, 10, 15, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4677, 11, 15, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4678, 1, 16, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4679, 2, 16, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4680, 3, 16, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4681, 4, 16, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4682, 5, 16, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4683, 6, 16, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4684, 7, 16, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4685, 8, 16, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4686, 9, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4687, 10, 16, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4688, 11, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4689, 1, 17, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4690, 2, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4691, 3, 17, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4692, 4, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4693, 5, 17, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4694, 6, 17, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4695, 7, 17, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4696, 8, 17, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4697, 9, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4698, 10, 17, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4699, 11, 17, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4700, 1, 18, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4701, 2, 18, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4702, 3, 18, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4703, 4, 18, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4704, 5, 18, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4705, 6, 18, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4706, 7, 18, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4707, 8, 18, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4708, 9, 18, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4709, 10, 18, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4710, 11, 18, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4711, 1, 19, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4712, 2, 19, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4713, 3, 19, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4714, 4, 19, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4715, 5, 19, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4716, 6, 19, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4717, 7, 19, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4718, 8, 19, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4719, 9, 19, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4720, 10, 19, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4721, 11, 19, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4722, 1, 20, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4723, 2, 20, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4724, 3, 20, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4725, 4, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4726, 5, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4727, 6, 20, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4728, 7, 20, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4729, 8, 20, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4730, 9, 20, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4731, 10, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4732, 11, 20, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4733, 1, 21, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4734, 2, 21, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4735, 3, 21, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4736, 4, 21, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4737, 5, 21, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4738, 6, 21, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4739, 7, 21, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4740, 8, 21, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4741, 9, 21, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4742, 10, 21, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4743, 11, 21, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4744, 1, 22, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4745, 2, 22, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4746, 3, 22, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4747, 4, 22, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4748, 5, 22, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4749, 6, 22, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4750, 7, 22, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4751, 8, 22, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4752, 9, 22, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4753, 10, 22, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4754, 11, 22, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4755, 1, 23, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4756, 2, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4757, 3, 23, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4758, 4, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4759, 5, 23, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4760, 6, 23, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4761, 7, 23, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4762, 8, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4763, 9, 23, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4764, 10, 23, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4765, 11, 23, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4766, 1, 24, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4767, 2, 24, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4768, 3, 24, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4769, 4, 24, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4770, 5, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4771, 6, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4772, 7, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4773, 8, 24, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4774, 9, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4775, 10, 24, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4776, 11, 24, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4777, 1, 25, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4778, 2, 25, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4779, 3, 25, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4780, 4, 25, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4781, 5, 25, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4782, 6, 25, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4783, 7, 25, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4784, 8, 25, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4785, 9, 25, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4786, 10, 25, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4787, 11, 25, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4788, 1, 26, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4789, 2, 26, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4790, 3, 26, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4791, 4, 26, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4792, 5, 26, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4793, 6, 26, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4794, 7, 26, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4795, 8, 26, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4796, 9, 26, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4797, 10, 26, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4798, 11, 26, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4799, 1, 27, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4800, 2, 27, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4801, 3, 27, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4802, 4, 27, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4803, 5, 27, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4804, 6, 27, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4805, 7, 27, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4806, 8, 27, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4807, 9, 27, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4808, 10, 27, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4809, 11, 27, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4810, 1, 28, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4811, 2, 28, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4812, 3, 28, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4813, 4, 28, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4814, 5, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4815, 6, 28, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4816, 7, 28, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4817, 8, 28, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4818, 9, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4819, 10, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4820, 11, 28, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4821, 1, 29, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4822, 2, 29, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4823, 3, 29, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4824, 4, 29, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4825, 5, 29, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4826, 6, 29, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4827, 7, 29, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4828, 8, 29, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4829, 9, 29, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4830, 10, 29, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4831, 11, 29, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4832, 1, 30, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4833, 2, 30, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4834, 3, 30, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4835, 4, 30, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4836, 5, 30, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4837, 6, 30, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4838, 7, 30, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4839, 8, 30, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4840, 9, 30, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4841, 10, 30, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4842, 11, 30, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4843, 1, 31, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4844, 2, 31, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4845, 3, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4846, 4, 31, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4847, 5, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4848, 6, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4849, 7, 31, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4850, 8, 31, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4851, 9, 31, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4852, 10, 31, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4853, 11, 31, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4854, 1, 32, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4855, 2, 32, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4856, 3, 32, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4857, 4, 32, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4858, 5, 32, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4859, 6, 32, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4860, 7, 32, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4861, 8, 32, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4862, 9, 32, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4863, 10, 32, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4864, 11, 32, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4865, 1, 33, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4866, 2, 33, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4867, 3, 33, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4868, 4, 33, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4869, 5, 33, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4870, 6, 33, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4871, 7, 33, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4872, 8, 33, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4873, 9, 33, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4874, 10, 33, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4875, 11, 33, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4876, 1, 34, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4877, 2, 34, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4878, 3, 34, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4879, 4, 34, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4880, 5, 34, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4881, 6, 34, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4882, 7, 34, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4883, 8, 34, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4884, 9, 34, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4885, 10, 34, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4886, 11, 34, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4887, 1, 4, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4888, 2, 4, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4889, 3, 4, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4890, 4, 4, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4891, 5, 4, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4892, 6, 4, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4893, 7, 4, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4894, 8, 4, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4895, 9, 4, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4896, 10, 4, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4897, 11, 4, 'Botble\\RealEstate\\Models\\Property', '17km');

-- --------------------------------------------------------

--
-- Table structure for table `re_features`
--

CREATE TABLE `re_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features`
--

INSERT INTO `re_features` (`id`, `name`, `status`, `icon`) VALUES
(1, 'Wifi', 'published', 'fas fa-wifi'),
(2, 'Swimming pool', 'published', 'fas fa-swimmer'),
(3, 'Balcony', 'published', NULL),
(4, 'Terrace', 'published', NULL),
(5, 'Parking', 'published', 'fas fa-parking'),
(6, 'Garden', 'published', NULL),
(7, 'Security', 'published', 'fas fa-user-secret'),
(8, 'Fitness center', 'published', 'fas fa-dumbbell'),
(9, 'Trung tâm thể hình', 'published', 'fas fa-dumbbell'),
(10, 'Bảo vệ', 'published', 'fas fa-user-secret'),
(11, 'Sân vườn', 'published', NULL),
(12, 'Bãi đỗ xe', 'published', 'fas fa-parking'),
(13, 'Hàng rào', 'published', NULL),
(14, 'Ban công', 'published', NULL),
(15, 'Hồ bơi', 'published', 'fas fa-swimmer'),
(16, 'Wifi', 'published', 'fas fa-wifi');

-- --------------------------------------------------------

--
-- Table structure for table `re_investors`
--

CREATE TABLE `re_investors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_investors`
--

INSERT INTO `re_investors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'National Pension Service', 'published', '2019-11-18 01:16:23', '2019-11-18 01:16:23'),
(2, 'Generali', 'published', '2019-11-18 01:16:47', '2019-11-18 01:16:47'),
(3, 'Temasek', 'published', '2019-11-18 01:16:57', '2019-11-18 01:16:57'),
(4, 'China Investment Corporation', 'published', '2019-11-18 01:17:11', '2019-11-18 01:17:11'),
(5, 'Government Pension Fund Global', 'published', '2019-11-18 01:17:35', '2019-11-18 01:17:35'),
(6, 'PSP Investments', 'published', '2019-11-18 01:17:47', '2019-11-18 01:17:47'),
(7, 'MEAG Munich ERGO', 'published', '2019-11-18 01:17:57', '2019-11-18 01:17:57'),
(8, 'HOOPP', 'published', '2019-11-18 01:18:08', '2019-11-18 01:18:08'),
(9, 'BT Group', 'published', '2019-11-18 01:18:21', '2019-11-18 01:18:21'),
(10, 'Ping An', 'published', '2019-11-18 01:18:32', '2019-11-18 01:18:32'),
(11, 'New Jersey Division of Investment', 'published', '2019-11-18 01:18:45', '2019-11-18 01:18:45'),
(12, 'New York City ERS', 'published', '2019-11-18 01:18:57', '2019-11-18 01:18:57'),
(13, 'State Super', 'published', '2019-11-18 01:19:10', '2019-11-18 01:19:10'),
(14, 'Shinkong', 'published', '2019-11-18 01:19:20', '2019-11-18 01:19:20'),
(15, 'Rest Super', 'published', '2019-11-18 01:19:31', '2019-11-18 01:19:31'),
(16, 'Rest Super', 'published', '2019-11-21 01:50:47', '2019-11-21 01:50:47'),
(17, 'Shinkong', 'published', '2019-11-21 01:51:03', '2019-11-21 01:51:03'),
(18, 'State Super', 'published', '2019-11-21 01:51:21', '2019-11-21 01:51:21'),
(19, 'New York City ERS', 'published', '2019-11-21 01:51:33', '2019-11-21 01:51:33'),
(20, 'New Jersey Division of Investment', 'published', '2019-11-21 01:51:51', '2019-11-21 01:51:51'),
(21, 'Ping An', 'published', '2019-11-21 01:52:04', '2019-11-21 01:52:04'),
(22, 'BT Group', 'published', '2019-11-21 01:52:16', '2019-11-21 01:52:16'),
(23, 'HOOPP', 'published', '2019-11-21 01:52:28', '2019-11-21 01:52:28'),
(24, 'MEAG Munich ERGO', 'published', '2019-11-21 01:52:47', '2019-11-21 01:52:47'),
(25, 'PSP Investments', 'published', '2019-11-21 01:52:57', '2019-11-21 01:52:57'),
(26, 'Government Pension Fund Global', 'published', '2019-11-21 01:53:18', '2019-11-21 01:53:18'),
(27, 'China Investment Corporation', 'published', '2019-11-21 01:53:33', '2019-11-21 01:53:33'),
(29, 'Temasek', 'published', '2019-11-21 01:53:48', '2019-11-21 01:53:48'),
(30, 'Generali', 'published', '2019-11-21 01:54:01', '2019-11-21 01:54:01'),
(31, 'National Pension Service', 'published', '2019-11-21 01:54:14', '2019-11-21 01:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `re_packages`
--

CREATE TABLE `re_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `number_of_listings` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `account_limit` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_packages`
--

INSERT INTO `re_packages` (`id`, `name`, `price`, `currency_id`, `number_of_listings`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `percent_save`, `account_limit`) VALUES
(1, 'Free First Post', 0.00, 1, 1, 0, 0, 'published', '2021-06-11 20:56:45', '2021-06-11 20:56:45', 0, 1),
(2, 'Single Post', 250.00, 1, 1, 0, 1, 'published', '2021-06-11 20:56:45', '2021-06-11 20:56:45', 0, NULL),
(3, '5 Posts', 1000.00, 1, 5, 0, 0, 'published', '2021-06-11 20:56:45', '2021-06-11 20:56:45', 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_projects`
--

CREATE TABLE `re_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_block` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(6) DEFAULT NULL,
  `number_flat` smallint(6) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_project_categories`
--

CREATE TABLE `re_project_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_project_features`
--

CREATE TABLE `re_project_features` (
  `project_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_project_features`
--

INSERT INTO `re_project_features` (`project_id`, `feature_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(2, 7),
(2, 8),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 7),
(7, 10),
(7, 12),
(7, 13),
(7, 15),
(7, 16),
(8, 9),
(8, 10),
(8, 12),
(8, 14),
(8, 15),
(8, 16),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(3, 7),
(9, 10),
(9, 12),
(9, 14),
(9, 15),
(9, 16),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 16),
(5, 1),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 14),
(11, 16),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(6, 7),
(12, 10),
(12, 11),
(12, 12),
(12, 14),
(12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `re_properties`
--

CREATE TABLE `re_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number_bedroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_bathroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(5) UNSIGNED DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_unit` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT 0,
  `never_expired` tinyint(1) NOT NULL DEFAULT 0,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties`
--

INSERT INTO `re_properties` (`id`, `name`, `content`, `location`, `images`, `project_id`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `price_unit`, `is_featured`, `status`, `created_at`, `updated_at`, `type`, `description`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`) VALUES
(1, '3 Beds Villa Calpe, Alicante', '<p>This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors. Downstairs there is an indoor, double garage and laundry room with an internal staircase to the house. But you can also drive up to the front door by car. The terrace is spacious and there is an extra-long swimming pool, where you can swim laps well. Around there is a landscaped garden, which is also low in maintenance. Instead of gardening, there is more time left for wonderful enjoyment in and around this beautiful villa.</p>', 'Alicante, Spain', '[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]', 6, 3, 3, 1, 600, '700000.00', NULL, 1, 'selling', '2019-11-17 20:34:59', '2021-06-11 20:56:48', 'sale', 'This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors.', 1, 5, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.954366', '-76.204832'),
(2, 'Property For sale , Johannesburg, South Africa', '<p><strong>Beautiful home situated in road closure in bedfordview.&nbsp;</strong>Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool &amp; stunning koi-pond. Flavours of the Seychelles.&nbsp;Enter from a winding pathway lined by palms and tree ferns into the hallway. The spacious living room with magnificent wood burning fireplace and large diningroom are complemented by a wet barrel bar, featuring designer built in wine cellar wall.</p>', 'Johannesburg, South Africa', '[\"properties\\/23.jpg\",\"properties\\/21.jpg\",\"properties\\/24.jpg\",\"properties\\/22.jpg\"]', 6, 4, 4, 2, 800, '800000.00', NULL, 1, 'selling', '2019-11-17 20:53:34', '2021-06-11 20:56:48', 'sale', 'Beautiful home. Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool & stunning koi-pond. Flavours of the Seychelles.', 1, 2, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.819483', '-76.703637'),
(3, 'Stunning French Inspired Manor', '<p>Stunning French Inspired Manor located within Briarwood Ranch near Solvang in the heart of the magnificent Santa Ynez Valley. This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide, Cabana and a complimentary poolside bar combo BBQ kitchen. A spacious 2 car garage is adjacent to craft room and large art studio</p>', 'Solvang, Santa Barbara County, CA 93463, USA', '[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]', 5, 4, 3, 1, 450, '1695000.00', NULL, 1, 'selling', '2019-11-17 21:09:55', '2021-06-11 20:56:48', 'sale', 'This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide', 1, 5, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.722299', '-75.466082'),
(4, 'Villa for sale at Bermuda Dunes', '<p>This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club. Chiseled glass entry doors lead you into a magnificent Italian Marble entry that encompasses the entire hallway and living room with a fireplace. The vast great room, with raised ceilings, captures the pool, golf, lake and dynamic southern, mountain views. There\'s a lovely Library with built in shelves on one wall. There’s a sunken wet bar, with Italian Marble flooring, that provides views of the golf course and surrounding mountains.</p>', 'Bermuda Dunes, Riverside County, CA 92203, USA', '{\"1\":\"properties\\/vintageconnoisseur-hp-scaled.jpg\",\"2\":\"properties\\/modern-beautiful-flat-roof.jpg\",\"3\":\"properties\\/home-modular-kitchen-500x500.jpeg\",\"4\":\"properties\\/download-1.jpg\",\"5\":\"properties\\/500.jpg\"}', 4, 4, 3, 1, 480, '1295000.00', NULL, 1, 'selling', '2019-11-17 21:18:11', '2021-11-27 03:35:35', 'sale', 'This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy,', 1, 1, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.982274', '-76.182356'),
(5, 'Walnut Park Apartment', '<p>Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community</p>\r\n\r\n<ul>\r\n	<li>Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek</li>\r\n	<li>Conveniently located on North Lamar near numerous shops, major employers and restaurants</li>\r\n	<li>Easy access to I-35 and a short distance to US-183 and SH-45</li>\r\n	<li>Elegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda</li>\r\n	<li>24-hour fully-equipped fitness center with lockers and changing area</li>\r\n	<li>Indoor spa with cascading waterfall, steam room and cedar sauna</li>\r\n	<li>Spacious, gourmet kitchens with granite countertops and backsplashes</li>\r\n	<li>Stainless steel appliances and natural gas ranges</li>\r\n	<li>Designer hardwood cabinets with under-cabinet lighting</li>\r\n</ul>', 'North Lamar Boulevard, Austin, Texas 78753, USA', '[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1-1.jpg\"]', 1, 2, 2, 1, 980, '2035.00', NULL, 1, 'renting', '2019-11-18 00:47:52', '2021-06-11 20:56:48', 'rent', 'Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek\r\nConveniently located on North Lamar near numerous shops, major employers and restaurants\r\nEasy access to I-35 and a short distance to US-183 and SH-45\r\nElegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda', 1, 1, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.669053', '-75.578469'),
(6, '5 beds luxury house', '<p>Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate. On the main level the entry opens to a large foyer which connects to a beautiful and large living room with a fireplace, and to a formal dining room.</p>\r\n\r\n<p>The house has a garage which can accommodate 3 to 4 cars. The house is offered furnished. Can be leased for short term or long term. The minimum lease term is 3 months.</p>', 'Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA', '[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]', 2, 5, 4, 3, 270, '1808.00', NULL, 1, 'renting', '2019-11-18 01:05:58', '2021-06-11 20:56:48', 'rent', 'Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate', 1, 1, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.946985', '-76.206616'),
(7, 'Family Victorian \"View\" Home', '<p>There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete this level.</p>\r\n<p> </p>', 'Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA', '[\"properties\\/b5.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\",\"properties\\/b2.jpg\"]', 3, 3, 2, 1, 180, '2580.00', NULL, 1, 'renting', '2019-11-18 01:12:07', '2021-06-11 20:56:48', 'rent', 'There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete t', 1, 1, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.819646', '-74.89512'),
(8, 'Osaka Heights Apartment', '<p><strong>Kitchen</strong><br />\r\nCeramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided</p>\r\n\r\n<p><strong>Toilets</strong><br />\r\nAnti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing</p>\r\n\r\n<p><strong>Doors</strong><br />\r\nMain door will be high quality wooden door, premium Windows quality pre-hung internal doors with wooded frame, UPVC or aluminum sliding doors and aluminum frame with glass for windows</p>\r\n\r\n<p>&nbsp;9 km to Katunayaka airport expressway entrance</p>\r\n\r\n<p>&nbsp;12 km to Southern expressway entrance at Kottawa</p>\r\n\r\n<p>&nbsp;2 km to Kalubowila General hospital</p>\r\n\r\n<p>&nbsp;All leading banks within a few kilometer radii</p>\r\n\r\n<p>&nbsp;Very close proximity to railway stations</p>\r\n\r\n<p>&nbsp;Many leading schools including CIS within 5 km radius</p>', 'High Level Road, Colombo 06, Sri Lanka', '[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]', 2, 2, 2, 1, 110, '150000.00', NULL, 1, 'selling', '2019-11-18 01:49:36', '2021-06-11 20:56:48', 'sale', 'Ceramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided. Anti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing.', 1, 5, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.928003', '-74.902172'),
(9, 'Private Estate Magnificent Views', '<p>Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner &amp; wood heater<br />\r\nGood sized bedrooms and main bedroom with spa overlooking tranquil gardens and Inlet.</p>', '110 Springdale Heights, Hay Denmark, WA, Australia', '[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]', 2, 3, 1, 1, 2000, '694000.00', NULL, 1, 'selling', '2019-11-18 02:02:19', '2021-06-11 20:56:48', 'sale', 'Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner & wood heater', 1, 5, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.812299', '-76.137607'),
(10, 'Thompsons Road House for rent', '<p>Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways &amp; transport, and space.<br />\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage. Inside you will find a lovely neutral colour scheme and near new gleaming timber timber floors. There are three spacious bedrooms all with built in robes, serviced by a central family bathroom and separate powder room, along with a large open lounge and formal dining room beaming with natural light. The stunning kitchen comes complete with Blanco appliances, breakfast bar and top quality fittings and fixtures.</p>', 'Thompsons Road, Bulleen VIC, Australia', '[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]', 6, 3, 3, 1, 160, '1465.00', NULL, 1, 'renting', '2019-11-18 02:16:53', '2021-06-11 20:56:48', 'rent', 'Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways & transport, and space.\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage', 1, 3, 'month', 11, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.601639', '-76.36969'),
(11, 'Brand New 1 Bedroom Apartment In First Class Location', '<p>Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania&#39;s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.</p>\r\n\r\n<p>Please note: Elders Brown and Banks do not accept applications from applicants who have not inspected the property internally.</p>', 'Sandy Bay Road, Sandy Bay TAS, Australia', '[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]', 5, 1, 1, 1, 80, '1680.00', NULL, 1, 'renting', '2019-11-18 02:22:48', '2021-06-11 20:56:48', 'rent', 'Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania\'s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.', 1, 5, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.659611', '-76.197177'),
(12, 'Elegant family home presents premium modern living', '<p>Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting. The home is ideally set walking distance to parks and bus stops, moments to your choice of schools, and just several minutes to Westfield North Lakes.<br />\r\n&nbsp;</p>', 'North Lakes QLD 4509, Australia', '[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\"]', 6, 3, 3, 1, 658, '1574.00', NULL, 1, 'renting', '2019-11-18 02:47:05', '2021-06-11 20:56:48', 'rent', 'Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting.', 1, 5, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.137361', '-76.539998'),
(13, 'Luxury Apartments in Singapore for Sale', '<p>This apartment&nbsp;is located in Singapore, which has become a comfortable living center for the living, providing both attractive gains for investors and high premium. 840sqft<br />\r\n- High Floor<br />\r\n- Chinese Family<br />\r\n- Sky Garden<br />\r\n- Beautiful Roof Terrace with Jaccuzzi And<br />\r\nAlfresco Dinning<br />\r\n- Renovated with Quality Finishes<br />\r\n- Near Amenities<br />\r\n- Plenty of eateries.<br />\r\n- 5mins Walk to NTUC / Shaw Plaza<br />\r\n- Mins Drive To Orchard</p>', 'Balestier Road, Singapore', '[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]', 6, 2, 2, 1, 78, '918000.00', NULL, 1, 'selling', '2019-11-18 07:23:02', '2021-06-11 20:56:48', 'sale', 'This apartment is located in Singapore. High Floor, Chinese Family, Sky Garden, Beautiful Roof Terrace with Jaccuzzi and Alfresco Dinning, Renovated with Quality Finishes, Near Amenities, Plenty of eateries, 5mins Walk to NTUC / Shaw Plaza, Mins Drive To Orchard', 1, 5, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.813772', '-76.615855'),
(14, '5 room luxury penthouse for sale in Kuala Lumpur', '<p>The Sentral Residence (BRAND NEW LUXURY CONDO)<br />\r\n<br />\r\n-Next to St Regis 5 Star Hotel<br />\r\n-Excellent accessibility (LRT,KLIA TRANSIT,KTM)<br />\r\n-Rooftop Sky lounge,sky pool,sky gym<br />\r\n-Private lift lobby to own unit<br />\r\n<br />\r\nEPIC LUXE PREMIUM UNITS<br />\r\n(KLCC and Lake Garden VIEW)<br />\r\n<br />\r\nLargest unit in Sentral Residence<br />\r\n&nbsp;</p>', 'Kuala Lumpur, Malaysia', '[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]', 1, 5, 7, 20, 377, '1590000.00', NULL, 1, 'selling', '2019-11-18 07:36:29', '2021-06-11 20:56:48', 'sale', 'Next to St Regis 5 Star Hotel, Excellent accessibility (LRT,KLIA TRANSIT,KTM), Rooftop Sky lounge, sky pool, sky gym, KLCC and Lake Garden VIEW', 1, 4, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.504328', '-76.341293'),
(15, '2 Floor house in Compound Pejaten Barat Kemang', '<p>Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300,&nbsp;3&nbsp;bedrooms,&nbsp;2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year&nbsp;</p>', 'Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia', '[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]', 1, 3, 2, 2, 200, '1400.00', NULL, 1, 'renting', '2019-11-18 07:44:44', '2021-06-11 20:56:48', 'rent', 'Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300, 3 bedrooms, 2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year ', 1, 5, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.636294', '-76.116519'),
(16, 'Apartment Muiderstraatweg in Diemen', '<p>For rent fully furnished 3 bedroom apartment in Diemen.<br />\r\nVery suitable for a couple or maximum 2 working sharers, garantors are not accepted.<br />\r\n<br />\r\nLovely modern and very well maintained apartment in Diemen.<br />\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.<br />\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.<br />\r\nOn this floor you have access to the small roof terrace.<br />\r\nLast but not least there is a spacious attic room on the third floor.<br />\r\nThe tram stops in front of the door and within 20 minutes you are in the heart of Amsterdam.<br />\r\nPets are not allowed.</p>', 'Diemen, Netherlands', '[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]', 3, 3, 1, 2, 90, '2123.00', NULL, 1, 'renting', '2019-11-18 07:59:14', '2021-06-11 20:56:48', 'rent', 'Lovely modern and very well maintained apartment in Diemen.\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.\r\nOn this floor you have access to the small roof terrace.', 1, 3, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.52876', '-76.65882'),
(17, 'Nice Apartment for rent in Berlin', '<p>Fully furnished shared all-inclusive apartments, with modern amenities that&rsquo;ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you&rsquo;ll find everything from delicious street food to flee markets, to high-end restaurants.</p>\r\n\r\n<p>In this bright, modern h(e)aven, you&rsquo;ll find a Queen size bed, a fully equipped kitchen, a separate bathroom with a walk-in shower and a study area for when the dedicated student in you awakens. Some come with great views, others with a nice and cozy balcony.</p>', 'Berlin, Germany', '[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]', 6, 1, 1, 1, 33, '1217.00', NULL, 1, 'renting', '2019-11-18 08:13:07', '2021-06-11 20:56:48', 'rent', 'Fully furnished shared all-inclusive apartments, with modern amenities that’ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you’ll find everything from delicious street food to flee markets, to high-end restaurants.', 1, 5, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.222732', '-76.105523'),
(18, 'Bán biệt thự 3 phòng ngủ Calpe, Alicante', '<p>Biệt thự được trang bị đầy đủ tiện nghi. Ba ph&ograve;ng ngủ rộng r&atilde;i đều c&oacute; lối đi thẳng ra s&acirc;n thượng hồ bơi v&agrave; ph&ograve;ng kh&aacute;ch rộng r&atilde;i với nh&agrave; bếp kiểu Mỹ c&oacute; thể nấu ăn, từ đ&oacute; bạn c&oacute; thể đi bộ l&ecirc;n s&acirc;n thượng qua cửa k&iacute;nh lớn. Ở tầng dưới c&oacute; một nh&agrave; để xe trong nh&agrave;, ph&ograve;ng giặt đồ với một cầu thang nội bộ đến nh&agrave;. Nhưng bạn cũng c&oacute; thể l&aacute;i xe l&ecirc;n đến cửa trước bằng &ocirc; t&ocirc;. S&acirc;n thượng rộng r&atilde;i v&agrave; c&oacute; một bể bơi cực d&agrave;i, thoải m&aacute;i bơi lội. Xung quanh c&oacute; một khu vườn cảnh quan. H&atilde;y d&agrave;nh thời gian để tận hưởng tuyệt vời trong v&agrave; xung quanh biệt thự xinh đẹp n&agrave;y.</p>', 'Alicante, Spain', '[\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\"]', 12, 3, 3, 1, 600, '16238915000.00', NULL, 1, 'selling', '2019-11-21 05:51:54', '2021-04-29 20:46:35', 'sale', 'Biệt thự được trang bị đầy đủ tiện nghi. Ba phòng ngủ rộng rãi đều có lối đi thẳng ra sân thượng hồ bơi và phòng khách rộng rãi với nhà bếp kiểu Mỹ có thể nấu ăn, từ đó bạn có thể đi bộ lên sân thượng qua cửa kính lớn. Ở tầng dưới có một nhà để xe trong nhà, phòng giặt đồ với một cầu thang nội bộ đến nhà', 2, 2, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.419982', '-76.587038'),
(19, 'Bán nhà tại Johannesburg, South Africa', '<p>Nh&agrave; đẹp. N&eacute;p m&igrave;nh tr&ecirc;n một mỏm đ&aacute; của những tảng đ&aacute; khổng lồ, ng&ocirc;i nh&agrave; độc đ&aacute;o n&agrave;y l&agrave; một chiến thắng kiến tr&uacute;c được thiết kế để chuẩn độ c&aacute;c gi&aacute;c quan ngay từ đầu với một th&aacute;c nước đổ xuống hồ thạch anh đen n&oacute;ng bỏng v&agrave; hồ c&aacute; koi tuyệt đẹp. Hương vị của Seychelles. Đường v&agrave;o nh&agrave; được bao phủ bởi c&acirc;y dương sỉ 2 b&ecirc;n h&agrave;nh lang. Ph&ograve;ng kh&aacute;ch rộng r&atilde;i với l&ograve; sưởi đốt củi tuyệt đẹp v&agrave; ph&ograve;ng ăn lớn c&oacute; th&ecirc;m quầy rượu, được thiết kế v&agrave; x&acirc;y dựng như những bức tường hầm rượu.</p>', 'Johannesburg, South Africa', '[\"properties\\/23.jpg\",\"properties\\/24.jpg\",\"properties\\/22.jpg\",\"properties\\/21.jpg\"]', 11, 4, 4, 2, 800, '18558760000.00', NULL, 1, 'selling', '2019-11-21 06:03:11', '2021-06-11 20:56:48', 'sale', 'Nhà đẹp. Nép mình trên một mỏm đá của những tảng đá khổng lồ, ngôi nhà độc đáo này là một chiến thắng kiến trúc được thiết kế để chuẩn độ các giác quan ngay từ đầu với một thác nước đổ xuống hồ thạch anh đen nóng bỏng và hồ cá koi tuyệt đẹp. Hương vị của Seychelles', 2, 3, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.344209', '-76.620037'),
(20, 'Nhà phong cách Pháp', '<p>Trang vi&ecirc;n&nbsp;lấy cảm hứng từ Ph&aacute;p tuyệt đẹp nằm trong Briarwood Ranch gần Solvang ở trung t&acirc;m thung lũng Santa Ynez tr&aacute;ng lệ. Khu nh&agrave; n&agrave;y c&oacute; 4 ph&ograve;ng ngủ, sấp sỉ 5,000sqft, 3 nh&agrave; tắm với nội thất trang nh&atilde; v&agrave; rộng r&atilde;i bao gồm ph&ograve;ng kh&aacute;ch v&agrave; ăn uống ch&iacute;nh thức, ph&ograve;ng v&agrave; nh&agrave; bếp tuyệt vời, ph&ograve;ng thư viện lớn với quầy bar.<br />\r\nHồ bơi cạnh v&ocirc; cực tuyệt đẹp giống như lối v&agrave;o b&atilde;i biển, th&aacute;c nước v&agrave; cầu trượt, Cabana v&agrave; nh&agrave; bếp kết hợp quầy bar BBQ b&ecirc;n hồ bơi miễn ph&iacute;. Nh&agrave; để xe rộng r&atilde;i, rộng r&atilde;i, liền kề với ph&ograve;ng thủ c&ocirc;ng v&agrave; studio nghệ thuật lớn</p>', 'Solvang, Santa Barbara County, CA 93463, USA', '[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]', 12, 4, 3, 1, 450, '39321372750.00', NULL, 1, 'selling', '2019-11-21 06:12:15', '2021-06-11 20:56:48', 'sale', 'Khu nhà này có 4 phòng ngủ, sấp sỉ 5,000sqft, 3 nhà tắm với nội thất trang nhã và rộng rãi bao gồm phòng khách và ăn uống chính thức, phòng và nhà bếp tuyệt vời, phòng thư viện lớn với quầy bar.\r\nHồ bơi cạnh vô cực tuyệt đẹp giống như lối vào bãi biển, thác nước và cầu trượt.', 2, 5, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.945516', '-76.223921'),
(21, 'Nhà bán tại Bermuda Dunes', '<p>Ng&ocirc;i nh&agrave; được x&acirc;y dựng t&ugrave;y chỉnh hiếm c&oacute; v&agrave; đặc biệt n&agrave;y nằm tr&ecirc;n một khu đất ra mắt trong khu vực ri&ecirc;ng, độc quyền của Castle Harbor. Khu nh&agrave; c&oacute; dải cỏ rộng 360 bước ch&acirc;n, kh&ocirc;ng chỉ c&oacute; tầm nh&igrave;n tuyệt đẹp m&agrave; c&ograve;n ho&agrave;n to&agrave;n ri&ecirc;ng tư. Ng&ocirc;i nh&agrave; nằm ph&iacute;a tr&ecirc;n s&acirc;n cỏ, để c&oacute; th&ecirc;m sự ri&ecirc;ng tư, v&agrave; nằm giữa c&aacute;c luồng thứ 5 v&agrave; thứ 6 của C&acirc;u lạc bộ Quốc gia Bermuda Dunes danh tiếng. Cửa ra v&agrave;o bằng k&iacute;nh được đưa bạn v&agrave;o một lối v&agrave;o Đ&aacute; cẩm thạch &Yacute; tuyệt đẹp bao gồm to&agrave;n bộ h&agrave;nh lang v&agrave; ph&ograve;ng kh&aacute;ch với một l&ograve; sưởi. Ph&ograve;ng lớn rộng lớn, với trần nh&agrave; cao l&ecirc;n, thu h&uacute;t hồ bơi, s&acirc;n g&ocirc;n, hồ nước v&agrave; hướng nam năng động, cảnh n&uacute;i non. C&oacute; một thư viện đ&aacute;ng y&ecirc;u được x&acirc;y dựng tr&ecirc;n c&aacute;c kệ tr&ecirc;n một bức tường. C&oacute; một qu&aacute;n bar m&aacute;t mẻ, với s&agrave;n l&aacute;t đ&aacute; cẩm thạch của &Yacute;, cung cấp tầm nh&igrave;n ra s&acirc;n g&ocirc;n v&agrave; những ngọn n&uacute;i xung quanh.</p>', 'Bermuda Dunes, Riverside County, CA 92203, USA', '[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]', 9, 4, 3, 1, 480, '30041992750.00', NULL, 1, 'selling', '2019-11-21 06:26:59', '2021-06-11 20:56:48', 'sale', 'Ngôi nhà được xây dựng tùy chỉnh hiếm có và đặc biệt này nằm trên một khu đất ra mắt trong khu vực riêng, độc quyền của Castle Harbor. Khu nhà có dải cỏ rộng 360 bước chân, không chỉ có tầm nhìn tuyệt đẹp mà còn hoàn toàn riêng tư. Ngôi nhà nằm phía trên sân cỏ, để có thêm sự riêng tư, và nằm giữa các luồng thứ 5 và thứ 6 của Câu lạc bộ Quốc gia Bermuda Dunes danh tiếng', 2, 1, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.507235', '-75.906569'),
(22, 'Căn hộ Walnut Park', '<p>Chỉ c&oacute; 11 dặm từ trung t&acirc;m th&agrave;nh phố Austin, khu căn hộ nhiều c&acirc;y cối rậm rạp gi&aacute;p Walnut Creek v&agrave; tạo cho người d&acirc;n cảm hứng trong một cộng đồng đẳng cấp ri&ecirc;ng biệt.<br />\r\nKhu rừng rậm rạp với những ngọn c&acirc;y d&agrave;i 30 feet nh&igrave;n xuống. Walnut Creek tuyệt đẹp.<br />\r\nVị tr&iacute; thuận tiện tr&ecirc;n North Lamar gần nhiều cửa h&agrave;ng, doanh nghiệp v&agrave; nh&agrave; h&agrave;ng.<br />\r\nDễ d&agrave;ng truy cập I-35 v&agrave; một khoảng c&aacute;ch ngắn đến US-183 v&agrave; SH-45 C&oacute; c&acirc;u lạc bộ thanh lịch với nh&agrave; bếp đầy đủ, khu vực quầy bar, khu vực thư gi&atilde;n v&agrave; hi&ecirc;n nh&igrave;n ra thung lũng.<br />\r\nTrung t&acirc;m thể dục được trang bị đầy đủ 24 giờ với tủ kh&oacute;a v&agrave; khu vực thay đồ.<br />\r\nSpa trong nh&agrave; với th&aacute;c nước, ph&ograve;ng tắm hơi v&agrave; ph&ograve;ng x&ocirc;ng hơi tuyết t&ugrave;ng.<br />\r\nNh&agrave; bếp rộng r&atilde;i, s&agrave;nh điệu với mặt đ&aacute; granite v&agrave; ốp lưng.<br />\r\nThiết bị bằng th&eacute;p kh&ocirc;ng gỉ v&agrave; phạm vi kh&iacute; đốt tự nhi&ecirc;n.<br />\r\nThiết kế tủ gỗ cứng với &aacute;nh s&aacute;ng dưới tủ</p>', 'North Lamar Boulevard, Austin, Texas, USA', '[\"properties\\/8.jpg\",\"properties\\/1-1.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/21.jpg\"]', 7, 2, 2, 1, 980, '47208845.00', NULL, 1, 'renting', '2019-11-21 06:56:50', '2021-06-11 20:56:48', 'rent', 'Khu rừng rậm rạp với những ngọn cây dài 30 feet nhìn xuống. Walnut Creek tuyệt đẹp.\r\nVị trí thuận tiện trên North Lamar gần nhiều cửa hàng, doanh nghiệp và nhà hàng.\r\nDễ dàng truy cập I-35 và một khoảng cách ngắn đến US-183 và SH-45 Có câu lạc bộ thanh lịch với nhà bếp đầy đủ, khu vực quầy bar, khu vực thư giãn và hiên nhìn ra thung lũng.', 2, 3, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.587177', '-76.284447'),
(23, 'Cho thuê nhà cao cấp 5 phòng ngủ', '<p>Ng&ocirc;i nh&agrave; được tu sửa sang trọng v&agrave; rộng r&atilde;i ở Sea Cliff với 3 tầng, 5 ph&ograve;ng ngủ v&agrave; 4 ph&ograve;ng tắm, v&agrave; Golden Gate View. Gara &ocirc; t&ocirc; 4 chỗ. Ng&ocirc;i nh&agrave; được tu sửa v&agrave; rộng r&atilde;i với bố cục tuyệt vời, v&agrave; được cung cấp nội thất. N&oacute; quyến rũ v&agrave; xinh đẹp với nhiều chi tiết, c&oacute; cảnh quan ph&iacute;a trước chu đ&aacute;o v&agrave; s&acirc;n sau rộng v&agrave; s&acirc;n trong, v&agrave; c&oacute; một c&aacute;i nh&igrave;n tuyệt vời về Cổng V&agrave;ng. Ở cấp độ ch&iacute;nh, lối v&agrave;o mở ra một sảnh lớn kết nối với ph&ograve;ng kh&aacute;ch đẹp v&agrave; rộng c&oacute; l&ograve; sưởi v&agrave; ph&ograve;ng ăn trang trọng.<br />\r\n<br />\r\nNg&ocirc;i nh&agrave; c&oacute; một nh&agrave; để xe c&oacute; thể chứa 3 đến 4 xe hơi. Ng&ocirc;i nh&agrave; được cung cấp nội thất. C&oacute; thể được cho thu&ecirc; ngắn hạn hoặc d&agrave;i hạn. Thời hạn thu&ecirc; tối thiểu l&agrave; 3 th&aacute;ng.</p>', 'Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA', '[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]', 9, 5, 4, 3, 270, '41943000.00', NULL, 1, 'renting', '2019-11-21 07:18:36', '2021-06-11 20:56:48', 'rent', 'Ngôi nhà được tu sửa sang trọng và rộng rãi ở Sea Cliff với 3 tầng, 5 phòng ngủ và 4 phòng tắm, và Golden Gate View. Gara ô tô 4 chỗ. Ngôi nhà được tu sửa và rộng rãi với bố cục tuyệt vời, và được cung cấp nội thất. Nó quyến rũ và xinh đẹp với nhiều chi tiết, có cảnh quan phía trước chu đáo và sân sau rộng và sân trong, và có một cái nhìn tuyệt vời về Cổng Vàng', 2, 5, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.824558', '-74.914358'),
(24, 'Cho thuê nhà view đẹp', '<p>C&oacute; một ph&ograve;ng ăn ch&iacute;nh thức v&agrave; ph&ograve;ng kh&aacute;ch rộng r&atilde;i nằm ở hai b&ecirc;n của giếng trời nh&agrave; bếp được cập nhật, tủ m&agrave;u trắng v&agrave; c&aacute;c thiết bị bằng th&eacute;p kh&ocirc;ng gỉ. Tận hưởng &aacute;nh s&aacute;ng tự nhi&ecirc;n rộng r&atilde;i v&agrave; quang cảnh ph&iacute;a nam ngoạn mục từ c&aacute;c cửa sổ lớn của ph&ograve;ng kh&aacute;ch ch&iacute;nh v&agrave; s&agrave;n đi bộ. Một ph&ograve;ng thưởng (ph&ograve;ng ngủ cho kh&aacute;ch / văn ph&ograve;ng) v&agrave; ph&ograve;ng tắm đầy đủ.</p>', 'Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA', '[\"properties\\/b5.jpg\",\"properties\\/b2.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\"]', 12, 3, 2, 1, 180, '59852000.00', NULL, 1, 'renting', '2019-11-21 07:26:48', '2021-04-29 20:46:35', 'sale', 'Có một phòng ăn chính thức và phòng khách rộng rãi nằm ở hai bên của giếng trời nhà bếp được cập nhật, tủ màu trắng và các thiết bị bằng thép không gỉ. Tận hưởng ánh sáng tự nhiên rộng rãi và quang cảnh phía nam ngoạn mục từ các cửa sổ lớn của phòng khách chính và sàn đi bộ. Một phòng thưởng (phòng ngủ cho khách / văn phòng) và phòng tắm đầy đủ.', 2, 1, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.948734', '-75.415151'),
(25, 'Bán căn hộ Osaka Heights', '<p><strong>Ph&ograve;ng bếp</strong><br />\r\nS&agrave;n l&aacute;t gạch men, mặt b&agrave;n đ&aacute; granite, chậu rửa b&aacute;t inox đơn c&oacute; bảng tho&aacute;t nước v&agrave; c&aacute;c quy định cho m&aacute;y lọc nước, m&aacute;y h&uacute;t m&ugrave;i điện, quạt h&uacute;t sẽ được cung cấp</p>\r\n\r\n<p><strong>Nh&agrave; vệ sinh</strong><br />\r\nGạch chống trượt tr&ecirc;n s&agrave;n v&agrave; gạch ốp tường c&oacute; chiều cao l&ecirc;n đến 7 feet. Phụ kiện vệ sinh thương hiệu m&agrave;u trắng, v&ograve;i mạ crom, hệ thống ống nước che giấu</p>\r\n\r\n<p><strong>Cửa ra v&agrave;o</strong><br />\r\nCửa ch&iacute;nh sẽ l&agrave; cửa gỗ chất lượng cao, cửa b&ecirc;n trong chất lượng cao cấp Windows c&oacute; khung gỗ, cửa trượt bằng nhựa UPVC hoặc nh&ocirc;m v&agrave; khung nh&ocirc;m c&oacute; k&iacute;nh cho cửa sổ</p>\r\n\r\n<p>9 km đến lối v&agrave;o đường cao tốc s&acirc;n bay Katunayaka</p>\r\n\r\n<p>12 km đến lối v&agrave;o đường cao tốc ph&iacute;a Nam tại Kottawa</p>\r\n\r\n<p>2 km đến bệnh viện đa khoa Kalubowila</p>\r\n\r\n<p>Tất cả c&aacute;c ng&acirc;n h&agrave;ng h&agrave;ng đầu trong v&ograve;ng v&agrave;i km b&aacute;n k&iacute;nh</p>\r\n\r\n<p>Rất gần c&aacute;c ga đường sắt</p>\r\n\r\n<p>Nhiều trường h&agrave;ng đầu bao gồm CIS trong b&aacute;n k&iacute;nh 5 km</p>', 'High Level Road, Colombo 06, Sri Lanka', '[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]', 8, 2, 2, 1, 110, '3479767000.00', NULL, 1, 'selling', '2019-11-21 07:34:38', '2021-06-11 20:56:48', 'sale', 'Sàn lát gạch men, mặt bàn đá granite, chậu rửa bát inox đơn có bảng thoát nước và các quy định cho máy lọc nước, máy hút mùi điện, quạt hút sẽ được cung cấp. Gạch chống trượt trên sàn và gạch ốp tường có chiều cao lên đến 7 feet. Phụ kiện vệ sinh thương hiệu màu trắng, vòi mạ crom, hệ thống ống nước che giấu.', 2, 2, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.995532', '-75.503945'),
(26, 'Bán nhà chính chủ Magnificent View', '<p>Nh&agrave; rộng r&atilde;i 3 ph&ograve;ng ngủ, s&aacute;ng sủa với lối v&agrave;o sảnh. Ph&ograve;ng tắm nắng, nh&agrave; bếp / ph&ograve;ng ăn / ph&ograve;ng kh&aacute;ch c&oacute; kh&ocirc;ng gian mở với trần l&oacute;t gỗ tuyết t&ugrave;ng, nh&agrave; bếp với tủ gỗ oregon v&agrave; l&ograve; nướng Smeg mới. M&aacute;y lạnh &amp; m&aacute;y sưởi gỗ<br />\r\nPh&ograve;ng ngủ k&iacute;ch thước tốt v&agrave; ph&ograve;ng ngủ ch&iacute;nh với spa nh&igrave;n ra khu vườn y&ecirc;n tĩnh v&agrave; lối v&agrave;o.</p>', '110 Springdale Heights, Hay Denmark, WA, Australia', '[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]', 12, 3, 1, 1, 2000, '16099870.00', NULL, 1, 'selling', '2019-11-21 07:40:46', '2021-06-11 20:56:48', 'sale', 'Nhà rộng rãi 3 phòng ngủ, sáng sủa với lối vào sảnh. Phòng tắm nắng, nhà bếp / phòng ăn / phòng khách có không gian mở với trần lót gỗ tuyết tùng, nhà bếp với tủ gỗ oregon và lò nướng Smeg mới. Máy lạnh & máy sưởi gỗ', 2, 2, 'month', 11, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.402628', '-75.905897'),
(27, 'Cho thuê nhà trên đường Thompsons', '<p>Nằm ở vị tr&iacute; ho&agrave;n hảo trong v&ugrave;ng ngoại &ocirc; độc quyền của Bulleen, ng&ocirc;i nh&agrave; 3 ph&ograve;ng ngủ được cải tạo n&agrave;y mang đến một lối sống tuyệt vời cho những người t&igrave;m kiếm tất cả c&aacute;c tiện nghi, sự ri&ecirc;ng tư, thuận tiện cho đường cao tốc &amp; giao th&ocirc;ng, v&agrave; kh&ocirc;ng gian.<br />\r\nBạn được ch&agrave;o đ&oacute;n bởi một khu vườn ph&iacute;a trước đẹp, &iacute;t bảo tr&igrave; v&agrave; được thiết lập, với b&atilde;i đậu xe rộng r&atilde;i, một hi&ecirc;n nh&agrave; cao v&agrave; nh&agrave; để xe lớn tantum. B&ecirc;n trong, bạn sẽ t&igrave;m thấy một bảng m&agrave;u trung t&iacute;nh đ&aacute;ng y&ecirc;u v&agrave; gần s&agrave;n gỗ mới lấp l&aacute;nh. C&oacute; ba ph&ograve;ng ngủ rộng r&atilde;i, tất cả đều được x&acirc;y dựng với &aacute;o cho&agrave;ng, được phục vụ bởi ph&ograve;ng tắm gia đ&igrave;nh trung t&acirc;m v&agrave; ph&ograve;ng bột ri&ecirc;ng biệt, c&ugrave;ng với một ph&ograve;ng kh&aacute;ch rộng mở v&agrave; ph&ograve;ng ăn trang trọng rạng rỡ với &aacute;nh s&aacute;ng tự nhi&ecirc;n. Nh&agrave; bếp tuyệt đẹp đi k&egrave;m với c&aacute;c thiết bị Blanco, quầy bar ăn s&aacute;ng v&agrave; c&aacute;c phụ kiện v&agrave; đồ đạc chất lượng h&agrave;ng đầu.</p>', 'Thompsons Road, Bulleen VIC, Australia', '[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]', 9, 3, 3, 1, 160, '33985098.00', NULL, 1, 'renting', '2019-11-21 07:45:34', '2021-06-11 20:56:48', 'rent', 'Nằm ở vị trí hoàn hảo trong vùng ngoại ô độc quyền của Bulleen, ngôi nhà 3 phòng ngủ được cải tạo này mang đến một lối sống tuyệt vời cho những người tìm kiếm tất cả các tiện nghi, sự riêng tư, thuận tiện cho đường cao tốc & giao thông, và không gian.\r\nBạn được chào đón bởi một khu vườn phía trước đẹp, ít bảo trì và được thiết lập, với bãi đậu xe rộng rãi, một hiên nhà cao và nhà để xe lớn tantum', 2, 2, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.182256', '-76.273254'),
(28, 'Căn hộ 1 phòng ngủ hoàn toàn mới ở vị trí hạng nhất', '<p>Nằm ph&iacute;a sau Sandy Bay Road, đi bộ đến mọi thứ quan trọng: l&agrave;ng Battery Point s&ocirc;i động, Salamanca Place (khu giải tr&iacute; h&agrave;ng đầu của Tasmania), Trung t&acirc;m th&agrave;nh phố, Đại học Tasmania, kh&aacute;ch sạn, b&aacute;n lẻ v&agrave; dễ d&agrave;ng đi bộ từ c&aacute;c cửa h&agrave;ng Sandy Bay nhộn nhịp, trường học địa phương v&agrave; với giao th&ocirc;ng c&ocirc;ng cộng b&ecirc;n ngo&agrave;i cửa trước của bạn.<br />\r\nXin lưu &yacute;: Người cao tuổi Brown v&agrave; Ng&acirc;n h&agrave;ng kh&ocirc;ng chấp nhận đơn đăng k&yacute; từ những người nộp đơn chưa kiểm tra t&agrave;i sản trong nội bộ.</p>', 'Sandy Bay Road, Sandy Bay TAS, Australia', '[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]', 7, 1, 1, 1, 80, '39047980.00', NULL, 1, 'renting', '2019-11-21 19:53:17', '2021-06-11 20:56:44', 'rent', 'Nằm phía sau Sandy Bay Road, đi bộ đến mọi thứ quan trọng: làng Battery Point sôi động, Salamanca Place (khu giải trí hàng đầu của Tasmania), Trung tâm thành phố, Đại học Tasmania, khách sạn, bán lẻ và dễ dàng đi bộ từ các cửa hàng Sandy Bay nhộn nhịp, trường học địa phương và với giao thông công cộng bên ngoài cửa trước của bạn.', 2, 2, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.38233', '-74.942442'),
(29, 'Nhà cao cấp thanh lịch', '<p>Dọn v&agrave;o ở ngay, ng&ocirc;i nh&agrave; bốn ph&ograve;ng ngủ được tr&igrave;nh b&agrave;y đẹp mắt n&agrave;y v&agrave; tận hưởng những điều tốt nhất trong cuộc sống gia đ&igrave;nh hiện đại kh&ocirc;ng cần trang bị tu sửa g&igrave; th&ecirc;m. Hai khu vực sinh hoạt ri&ecirc;ng biệt v&agrave; bốn ph&ograve;ng ngủ rộng r&atilde;i cung cấp nhiều kh&ocirc;ng gian để ph&aacute;t triển, v&agrave; giải tr&iacute; l&agrave; một niềm vui thực sự tr&ecirc;n s&acirc;n hi&ecirc;n thanh lịch trong một khung cảnh vườn y&ecirc;n b&igrave;nh. Ng&ocirc;i nh&agrave; l&yacute; tưởng đặt khoảng c&aacute;ch đi bộ đến c&ocirc;ng vi&ecirc;n v&agrave; trạm dừng xe bu&yacute;t, những khoảnh khắc bạn chọn trường v&agrave; chỉ v&agrave;i ph&uacute;t đến Westfield North Lakes.</p>', 'North Lakes QLD 4509, Australia', '[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\",\"properties\\/21.jpg\"]', 7, 3, 3, 1, 658, '36780000.00', NULL, 1, 'renting', '2019-11-21 19:59:16', '2021-06-11 20:56:48', 'rent', 'Dọn vào ở ngay, ngôi nhà bốn phòng ngủ được trình bày đẹp mắt này và tận hưởng những điều tốt nhất trong cuộc sống gia đình hiện đại không cần trang bị tu sửa gì thêm. Hai khu vực sinh hoạt riêng biệt và bốn phòng ngủ rộng rãi cung cấp nhiều không gian để phát triển, và giải trí là một niềm vui thực sự trên sân hiên thanh lịch trong một khung cảnh vườn yên bình', 2, 5, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.163706', '-74.840537'),
(30, 'Cần bán căn hộ cao cấp tại Singapore', '<p>Căn hộ n&agrave;y nằm ở Singapore, nơi đ&atilde; trở th&agrave;nh một trung t&acirc;m sống thoải m&aacute;i cho người sống, cung cấp cả lợi nhuận hấp dẫn cho c&aacute;c nh&agrave; đầu tư v&agrave; ph&iacute; bảo hiểm cao.<br />\r\n- Tầng cao<br />\r\n- Gia đ&igrave;nh trung quốc<br />\r\n- Khu vườn Tr&ecirc;n M&acirc;y<br />\r\n- S&acirc;n thượng đẹp với Jaccuzzi v&agrave; Ph&ograve;ng ăn Alfresco<br />\r\n- Được cải tạo với chất lượng ho&agrave;n thiện<br />\r\n- Gần Tiện nghi<br />\r\n- Rất nhiều qu&aacute;n ăn.<br />\r\n- 5 ph&uacute;t đi bộ đến NTUC / Shaw Plaza<br />\r\n- Chỉ mất v&agrave;i ph&uacute;t l&aacute;i xe đến đại lộ</p>', 'Balestier Road, Singapore', '[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]', 12, 2, 2, 1, 78, '21336980700.00', NULL, 1, 'selling', '2019-11-22 00:29:01', '2021-06-11 20:56:48', 'sale', 'Căn hộ này nằm ở Singapore, tầng cao, gia đình Trung Quốc, khu vườn Trên Mây, sân thượng đẹp với Jaccuzzi và phòng ăn Alfresco, được cải tạo với chất lượng hoàn thiện, gần Tiện nghi, rất nhiều quán ăn, 5 phút đi bộ đến NTUC / Shaw Plaza, chỉ mất vài phút lái xe đến đại lộ', 2, 1, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.38796', '-76.113468'),
(31, 'Cần bán căn hộ cao cấp 5 phòng tại Kuala Lumpur', '<p>The Sentral Residence (CONDO LUXURY MỚI)</p>\r\n\r\n<p>Kế b&ecirc;n&nbsp;kh&aacute;ch sạn 5 sao St Regis<br />\r\nKhả năng tiếp cận tuyệt vời (LRT, KLIA TRANSIT, KTM)<br />\r\nPh&ograve;ng chờ tr&ecirc;n tầng thượng, hồ bơi ngo&agrave;i&nbsp;trời, ph&ograve;ng tập thể dục ngo&agrave;i&nbsp;trời<br />\r\n-Private n&acirc;ng sảnh để sở hữu đơn vị</p>\r\n\r\n<p>ĐƠN VỊ PREMIUM EPIC LUXE<br />\r\n(View KLCC v&agrave;&nbsp;Lake Garden)</p>\r\n\r\n<p>Đơn vị lớn nhất tại Sentral Residence</p>', 'Kuala Lumpur, Malaysia', '[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]', 10, 5, 7, 20, 377, '36987040000.00', NULL, 1, 'selling', '2019-11-22 00:42:28', '2021-06-11 20:56:48', 'sale', 'Kế bên khách sạn 5 sao St Regis\r\nKhả năng tiếp cận tuyệt vời (LRT, KLIA TRANSIT, KTM)\r\nPhòng chờ trên tầng thượng, hồ bơi ngoài trời, phòng tập thể dục ngoài trời, View KLCC và Lake Garden', 1, 3, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.871168', '-76.150861'),
(32, 'Nhà 2 tầng tại Compound Pejaten Barat Kemang', '<p>Muốn cho thu&ecirc; một ng&ocirc;i nh&agrave; đẹp trong khu phức hợp. Được cải tạo, theo phong c&aacute;ch Bali, khu nh&agrave; ấm c&uacute;ng v&agrave; thoải m&aacute;i 220/300, 3 ph&ograve;ng ngủ, 2 ph&ograve;ng tắm, s&acirc;n vườn được cải tạo: hồ bơi, khu đ&aacute;nh tenis, đường chạy bộ 24 giờ gi&aacute; thu&ecirc; an ninh: 250.000 IDR. 000 / năm</p>', 'Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia', '[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]', 10, 3, 2, 2, 200, '32468000.00', NULL, 1, 'renting', '2019-11-22 00:47:18', '2021-06-11 20:56:48', 'rent', 'Muốn cho thuê một ngôi nhà đẹp trong khu phức hợp. Được cải tạo, theo phong cách Bali, khu nhà ấm cúng và thoải mái 220/300, 3 phòng ngủ, 2 phòng tắm, sân vườn được cải tạo: hồ bơi, khu đánh tenis, đường chạy bộ 24 giờ giá thuê an ninh: 250.000 IDR. 000 / năm', 2, 5, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.941944', '-76.53011'),
(33, 'Căn hộ Muiderstraatweg ở Diemen', '<p>Cho thu&ecirc; căn hộ 3 ph&ograve;ng ngủ đầy đủ nội thất ở Diemen.<br />\r\nRất th&iacute;ch hợp cho một cặp vợ chồng&nbsp;hoặc tối đa 2 người chia sẻ l&agrave;m việc, kh&ocirc;ng bị kiểm so&aacute;t bởi chủ nh&agrave;</p>\r\n\r\n<p>Căn hộ hiện đại đ&aacute;ng y&ecirc;u v&agrave; được bảo tr&igrave; rất tốt ở Diemen.<br />\r\nNh&agrave; kh&aacute;ch&nbsp;nằm ở tầng một, nơi bạn sẽ t&igrave;m thấy ph&ograve;ng kh&aacute;ch v&agrave; nh&agrave; bếp với tất cả c&aacute;c tiện nghi hiện đại.<br />\r\nTr&ecirc;n tầng hai, 2 ph&ograve;ng ngủ v&agrave; một ph&ograve;ng tắm đẹp với v&ograve;i sen v&agrave; bồn tắm ri&ecirc;ng biệt.<br />\r\nTr&ecirc;n tầng n&agrave;y bạn c&oacute; quyền ra v&agrave;o s&acirc;n thượng nhỏ.<br />\r\nCuối c&ugrave;ng nhưng kh&ocirc;ng k&eacute;m phần quan trọng l&agrave; một ph&ograve;ng g&aacute;c m&aacute;i rộng r&atilde;i tr&ecirc;n tầng ba.<br />\r\nXe điện dừng trước cửa v&agrave; trong v&ograve;ng 20 ph&uacute;t, bạn sẽ ở trung t&acirc;m của Amsterdam.<br />\r\nTh&uacute; cưng kh&ocirc;ng được ph&eacute;p nu&ocirc;i.</p>', 'Diemen, Netherlands', '[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]', 12, 3, 1, 2, 90, '49578000.00', NULL, 1, 'renting', '2019-11-22 00:57:15', '2021-06-11 20:56:48', 'rent', 'Căn hộ hiện đại đáng yêu và được bảo trì rất tốt ở Diemen.\r\nNhà khách nằm ở tầng một, nơi bạn sẽ tìm thấy phòng khách và nhà bếp với tất cả các tiện nghi hiện đại.\r\nTrên tầng hai, 2 phòng ngủ và một phòng tắm đẹp với vòi sen và bồn tắm riêng biệt.\r\nTrên tầng này bạn có quyền ra vào sân thượng nhỏ.', 2, 1, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '43.656418', '-76.743768');
INSERT INTO `re_properties` (`id`, `name`, `content`, `location`, `images`, `project_id`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `price_unit`, `is_featured`, `status`, `created_at`, `updated_at`, `type`, `description`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`) VALUES
(34, 'Căn hộ đẹp cho thuê ở Berlin', '<p>Căn hộ đầy đủ nội thất, với c&aacute;c tiện nghi hiện đại sẽ khiến bạn cảm thấy như đang ở nh&agrave;. Một điểm khởi đầu tuyệt vời để kh&aacute;m ph&aacute; phần c&ograve;n lại của th&agrave;nh phố v&agrave; nhiều vi&ecirc;n ngọc ẩn của n&oacute;. Khu vực Ở trung t&acirc;m của Đ&ocirc;ng Berlin, bạn sẽ t&igrave;m thấy mọi thứ, từ những m&oacute;n ăn đường phố ngon đến những khu chợ trời, đến những nh&agrave; h&agrave;ng cao cấp.<br />\r\nTrong nh&agrave; c&oacute;&nbsp;một chiếc giường cỡ Queen, nh&agrave; bếp đầy đủ tiện nghi, ph&ograve;ng tắm ri&ecirc;ng biệt với v&ograve;i sen kh&ocirc;ng cửa v&agrave; khu vực học tập khi sinh vi&ecirc;n tận tụy thức dậy. Một số ph&ograve;ng c&oacute; tầm nh&igrave;n tuyệt vời, số kh&aacute;c c&oacute; ban c&ocirc;ng đẹp v&agrave; ấm c&uacute;ng.</p>', 'Berlin, Germany', '[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]', 8, 1, 1, 1, 33, '28970758.00', NULL, 1, 'renting', '2019-11-22 01:06:09', '2021-06-11 20:56:48', 'rent', 'Căn hộ đầy đủ nội thất, với các tiện nghi hiện đại sẽ khiến bạn cảm thấy như đang ở nhà. Một điểm khởi đầu tuyệt vời để khám phá phần còn lại của thành phố và nhiều viên ngọc ẩn của nó. Khu vực Ở trung tâm của Đông Berlin, bạn sẽ tìm thấy mọi thứ, từ những món ăn đường phố ngon đến những khu chợ trời, đến những nhà hàng cao cấp.', 2, 5, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 'approved', '2025-03-25', 0, 1, '42.955572', '-74.919683');

-- --------------------------------------------------------

--
-- Table structure for table `re_property_categories`
--

CREATE TABLE `re_property_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_categories`
--

INSERT INTO `re_property_categories` (`id`, `property_id`, `category_id`) VALUES
(1, 1, 2),
(2, 2, 4),
(3, 3, 2),
(4, 4, 3),
(5, 5, 2),
(6, 6, 5),
(7, 7, 6),
(8, 8, 2),
(9, 9, 6),
(10, 10, 6),
(11, 11, 1),
(12, 12, 3),
(13, 13, 2),
(14, 14, 5),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 3),
(20, 20, 3),
(21, 21, 6),
(22, 22, 6),
(23, 23, 4),
(24, 24, 6),
(25, 25, 2),
(26, 26, 5),
(27, 27, 4),
(28, 28, 5),
(29, 29, 4),
(30, 30, 6),
(31, 31, 2),
(32, 32, 4),
(33, 33, 4),
(34, 34, 4);

-- --------------------------------------------------------

--
-- Table structure for table `re_property_features`
--

CREATE TABLE `re_property_features` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_features`
--

INSERT INTO `re_property_features` (`property_id`, `feature_id`) VALUES
(4, 2),
(5, 2),
(5, 4),
(5, 5),
(5, 7),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(7, 1),
(7, 3),
(7, 5),
(7, 8),
(8, 1),
(8, 3),
(8, 5),
(8, 7),
(8, 8),
(9, 1),
(9, 4),
(9, 5),
(9, 6),
(10, 1),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 7),
(12, 1),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 7),
(14, 1),
(14, 2),
(14, 3),
(14, 5),
(14, 7),
(14, 8),
(15, 1),
(15, 2),
(15, 3),
(15, 5),
(15, 6),
(16, 1),
(16, 3),
(16, 5),
(16, 7),
(16, 8),
(17, 1),
(17, 5),
(17, 7),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(18, 11),
(18, 12),
(18, 13),
(18, 15),
(18, 16),
(19, 11),
(19, 12),
(19, 13),
(19, 15),
(19, 16),
(2, 1),
(2, 2),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 5),
(3, 6),
(20, 11),
(20, 12),
(20, 15),
(20, 16),
(4, 5),
(4, 6),
(21, 11),
(21, 12),
(21, 15),
(22, 10),
(22, 11),
(22, 13),
(22, 15),
(23, 11),
(23, 12),
(23, 14),
(23, 16),
(24, 9),
(24, 12),
(24, 14),
(24, 16),
(25, 9),
(25, 10),
(25, 11),
(25, 14),
(25, 16),
(26, 11),
(26, 12),
(26, 13),
(26, 16),
(27, 11),
(27, 12),
(27, 13),
(27, 14),
(27, 16),
(28, 10),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(28, 16),
(29, 11),
(29, 12),
(29, 13),
(29, 14),
(29, 15),
(30, 10),
(30, 12),
(30, 13),
(30, 14),
(30, 15),
(30, 16),
(31, 9),
(31, 10),
(31, 12),
(31, 14),
(31, 15),
(31, 16),
(32, 11),
(32, 12),
(32, 14),
(32, 15),
(32, 16),
(33, 9),
(33, 10),
(33, 12),
(33, 14),
(33, 16),
(34, 10),
(34, 12),
(34, 16);

-- --------------------------------------------------------

--
-- Table structure for table `re_tags`
--

CREATE TABLE `re_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_tags_items`
--

CREATE TABLE `re_tags_items` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'Demo', '{\"career.index\":true,\"career.create\":true,\"career.edit\":true,\"career.destroy\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true}', 'Test', 0, 1, 1, '2021-01-03 17:23:52', '2021-01-03 17:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2021-01-03 17:24:01', '2021-01-03 17:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(11, 'admin_email', '[]', NULL, NULL),
(12, 'time_zone', 'UTC', NULL, NULL),
(13, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(16, 'admin_title', 'Apartment Guide', NULL, NULL),
(17, 'rich_editor', 'ckeditor', NULL, NULL),
(18, 'default_admin_theme', 'default', NULL, NULL),
(19, 'enable_change_admin_theme', '1', NULL, NULL),
(20, 'enable_multi_language_in_admin', '1', NULL, NULL),
(21, 'enable_cache', '0', NULL, NULL),
(22, 'cache_time', '10', NULL, NULL),
(23, 'cache_admin_menu_enable', '0', NULL, NULL),
(24, 'optimize_page_speed_enable', '0', NULL, NULL),
(27, 'cache_time_site_map', '3600', NULL, NULL),
(28, 'show_admin_bar', '1', NULL, NULL),
(29, 'theme-flex-home-site_title', 'Apartment Guide', NULL, NULL),
(30, 'theme-flex-home-show_site_name', '0', NULL, NULL),
(33, 'theme-flex-home-copyright', '© 2021 Apartment Guide', NULL, NULL),
(36, 'theme-flex-home-home_banner', 'banner/banner-1.jpg', NULL, NULL),
(37, 'theme-flex-home-logo', 'logo.png', NULL, NULL),
(40, 'theme-flex-home-facebook', 'https://www.facebook.com', NULL, NULL),
(41, 'theme-flex-home-youtube', 'https://youtube.com', NULL, NULL),
(44, 'theme-flex-home-hotline', '18006268', NULL, NULL),
(45, 'theme-flex-home-address', 'North Link Building, 10 Admiralty Street, 757695 Singapore', NULL, NULL),
(46, 'theme-flex-home-email', 'contact@apartmentgaide.com', NULL, NULL),
(49, 'theme-flex-home-logo_white', 'logo/logo-white.png', NULL, NULL),
(50, 'membership_authorization_at', '2021-12-05 09:24:56', NULL, NULL),
(56, 'enable_captcha', '0', NULL, NULL),
(57, 'captcha_site_key', 'no-captcha-site-key', NULL, NULL),
(58, 'captcha_secret', 'no-captcha-secret', NULL, NULL),
(65, 'store_weight_unit', 'g', NULL, NULL),
(66, 'store_width_height_unit', 'cm', NULL, NULL),
(67, 'currencies_is_default', '0', NULL, NULL),
(68, 'language_hide_default', '1', NULL, NULL),
(69, 'language_display', 'all', NULL, NULL),
(70, 'language_switcher_display', 'list', NULL, NULL),
(71, 'language_hide_languages', '[]', NULL, NULL),
(72, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(73, 'theme-flex-home-seo_title', 'Apartment Guide', NULL, NULL),
(85, 'theme-flex-home-vi-site_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(86, 'theme-flex-home-vi-show_site_name', '0', NULL, NULL),
(87, 'theme-flex-home-vi-seo_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(89, 'theme-flex-home-vi-home_banner', 'banner/banner.jpg', NULL, NULL),
(90, 'theme-flex-home-vi-copyright', '© 2020 Flex Home là một sản phẩm về lĩnh vực bất động sản của Botble Team', NULL, NULL),
(91, 'theme-flex-home-vi-hotline', '18006268', NULL, NULL),
(92, 'theme-flex-home-vi-address', 'Tòa nhà North Link, Đường 10 Admiralty, 757695 Singapore', NULL, NULL),
(93, 'theme-flex-home-vi-email', 'contact@flex-home.com', NULL, NULL),
(95, 'theme-flex-home-vi-logo', 'logo/logo.png', NULL, NULL),
(96, 'theme-flex-home-vi-logo_white', 'logo/logo-white.png', NULL, NULL),
(104, 'theme-flex-home-vi-facebook', 'https://www.facebook.com', NULL, NULL),
(105, 'theme-flex-home-vi-youtube', 'https://youtube.com', NULL, NULL),
(133, 'theme-flex-home-favicon', 'favicon-150x150.png', NULL, NULL),
(143, 'theme-flex-home-vi-favicon', 'logo/favicon.png', NULL, NULL),
(148, 'theme-flex-home-seo_description', 'Find your favorite homes at Apartment Guide', NULL, NULL),
(149, 'theme-flex-home-about-us', 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\r\n\r\nSlogan \"Breaking time, through space\".', NULL, NULL),
(150, 'theme-flex-home-home_project_description', 'We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more', NULL, NULL),
(151, 'theme-flex-home-home_description_for_properties_by_locations', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(152, 'theme-flex-home-home_description_for_news', 'Below is the latest real estate news we get regularly updated from reliable sources.', NULL, NULL),
(153, 'theme-flex-home-vi-seo_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(154, 'theme-flex-home-vi-about-us', 'Được thành lập ngày 28 - 08 -1993 (tiền thân là công ty TNHH Xây Dựng Trường Thịnh Phát), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, xây biệt thự cho thuê. \nPhương châm  “Đánh bật thời gian, xuyên qua không gian\"', NULL, NULL),
(155, 'theme-flex-home-vi-home_project_description', 'Chúng tôi đưa ra những lựa chọn tốt nhất với những dự án hot và uy tín bậc nhất hiện nay, hãy truy cập vào thông tin chi tiết bên dưới để tìm hiểu thêm nhé.', NULL, NULL),
(156, 'theme-flex-home-vi-home_description_for_properties_by_locations', 'Mỗi căn hộ là một lựa chọn tốt, nó sẽ giúp bạn đưa ra quyết định đúng đắn, đừng bỏ lỡ cơ hội khám phá những căn hộ tuyệt vời của chúng tôi.', NULL, NULL),
(157, 'theme-flex-home-vi-home_description_for_news', 'Bên dưới đây là những tin tức mới nhất về lĩnh vực bất động sản được chúng tôi cập nhật thường xuyên từ những nguồn tin đáng tin cậy.', NULL, NULL),
(167, 'theme-flex-home-primary_font', 'Neuton', NULL, NULL),
(168, 'theme-flex-home-twitter', '', NULL, NULL),
(169, 'theme-flex-home-number_of_featured_projects', '4', NULL, NULL),
(170, 'theme-flex-home-number_of_featured_cities', '10', NULL, NULL),
(171, 'theme-flex-home-number_of_properties_for_sell', '8', NULL, NULL),
(172, 'theme-flex-home-number_of_properties_for_rent', '8', NULL, NULL),
(173, 'theme-flex-home-number_of_projects_per_page', '12', NULL, NULL),
(174, 'theme-flex-home-number_of_properties_per_page', '12', NULL, NULL),
(175, 'theme-flex-home-number_of_related_projects', '8', NULL, NULL),
(176, 'theme-flex-home-number_of_related_properties', '8', NULL, NULL),
(177, 'theme-flex-home-properties_description', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(178, 'theme-flex-home-home_description_for_properties_for_sale', 'Below is a list of properties that are currently up for sale', NULL, NULL),
(179, 'theme-flex-home-home_description_for_properties_for_rent', 'Below is a detailed price list of each property for rent', NULL, NULL),
(196, 'theme-flex-home-number_of_properties_for_sale', '8', NULL, NULL),
(197, 'theme-flex-home-home_banner_description', 'Find Your Favorite Homes at Apartment Guide', NULL, NULL),
(198, 'theme-flex-home-home_description_for_projects_by_locations', '', NULL, NULL),
(199, 'theme-flex-home-vi-primary_font', 'Nunito Sans', NULL, NULL),
(200, 'theme-flex-home-vi-twitter', '', NULL, NULL),
(201, 'theme-flex-home-vi-number_of_featured_projects', '4', NULL, NULL),
(202, 'theme-flex-home-vi-number_of_featured_cities', '10', NULL, NULL),
(203, 'theme-flex-home-vi-number_of_properties_for_sale', '8', NULL, NULL),
(204, 'theme-flex-home-vi-number_of_properties_for_rent', '8', NULL, NULL),
(205, 'theme-flex-home-vi-number_of_projects_per_page', '12', NULL, NULL),
(206, 'theme-flex-home-vi-number_of_properties_per_page', '12', NULL, NULL),
(207, 'theme-flex-home-vi-number_of_related_projects', '8', NULL, NULL),
(208, 'theme-flex-home-vi-number_of_related_properties', '8', NULL, NULL),
(209, 'theme-flex-home-vi-home_banner_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(210, 'theme-flex-home-vi-properties_description', '', NULL, NULL),
(211, 'theme-flex-home-vi-home_description_for_projects_by_locations', '', NULL, NULL),
(212, 'theme-flex-home-vi-home_description_for_properties_for_sale', '', NULL, NULL),
(213, 'theme-flex-home-vi-home_description_for_properties_for_rent', '', NULL, NULL),
(214, 'payment_cod_name', 'Cash on delivery (COD)', NULL, NULL),
(216, 'payment_cod_status', '1', NULL, NULL),
(217, 'payment_bank_transfer_name', 'Bank transfer', NULL, NULL),
(219, 'payment_bank_transfer_status', '1', NULL, NULL),
(220, 'theme-flex-home-vi-seo_og_image', '', NULL, NULL),
(221, 'theme-flex-home-vi-primary_color', '#1D5F6F', NULL, NULL),
(222, 'theme-flex-home-vi-primary_color_hover', '#063A5D', NULL, NULL),
(224, 'theme-flex-home-vi-number_of_posts_in_a_category', '12', NULL, NULL),
(225, 'theme-flex-home-vi-number_of_posts_in_a_tag', '12', NULL, NULL),
(227, 'theme-flex-home-vi-cookie_consent_enable', 'yes', NULL, NULL),
(229, 'theme-flex-home-vi-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(230, 'theme-flex-home-seo_og_image', '', NULL, NULL),
(231, 'theme-flex-home-primary_color', '#94C020', NULL, NULL),
(232, 'theme-flex-home-primary_color_hover', '#80AA13', NULL, NULL),
(234, 'theme-flex-home-number_of_posts_in_a_category', '12', NULL, NULL),
(235, 'theme-flex-home-number_of_posts_in_a_tag', '12', NULL, NULL),
(237, 'theme-flex-home-cookie_consent_enable', 'yes', NULL, NULL),
(239, 'theme-flex-home-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(270, 'activated_plugins', '[\"audit-log\",\"backup\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"location\",\"payment\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"translation\",\"analytics\",\"blog\"]', NULL, NULL),
(283, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(284, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(285, 'theme', 'flex-home', NULL, NULL),
(286, 'admin_logo', 'logo-white.png', NULL, NULL),
(287, 'admin_favicon', 'logo/favicon.png', NULL, NULL),
(288, 'theme-flex-home-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', NULL, NULL),
(289, 'theme-flex-home-cookie_consent_learn_more_url', 'http://flex-home.local/cookie-policy', NULL, NULL),
(290, 'theme-flex-home-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(291, 'theme-flex-home-homepage_id', '1', NULL, NULL),
(292, 'theme-flex-home-blog_page_id', '2', NULL, NULL),
(293, 'theme-flex-home-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(294, 'theme-flex-home-vi-cookie_consent_learn_more_url', 'http://flex-home.local/cookie-policy', NULL, NULL),
(295, 'theme-flex-home-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(296, 'theme-flex-home-vi-homepage_id', '7', NULL, NULL),
(297, 'theme-flex-home-vi-blog_page_id', '8', NULL, NULL),
(298, 'theme-flex-home-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":null}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"}]]', NULL, NULL),
(299, 'theme-flex-home-enable_sticky_header', 'yes', NULL, NULL),
(300, 'theme-flex-home-show_map_on_properties_page', 'yes', NULL, NULL),
(301, 'theme-flex-home-breadcrumb_background', '', NULL, NULL),
(302, 'theme-flex-home-enable_search_projects_on_homepage_search', 'no', NULL, NULL),
(303, 'theme-flex-home-facebook_chat_enabled', 'no', NULL, NULL),
(304, 'theme-flex-home-facebook_page_id', '', NULL, NULL),
(305, 'theme-flex-home-facebook_comment_enabled_in_post', 'no', NULL, NULL),
(306, 'theme-flex-home-facebook_app_id', '', NULL, NULL),
(307, 'theme-flex-home-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, NULL),
(308, 'theme-flex-home-cookie_consent_style', 'full-width', NULL, NULL),
(309, 'theme-flex-home-cookie_consent_background_color', '#000000', NULL, NULL),
(310, 'theme-flex-home-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(311, 'theme-flex-home-cookie_consent_max_width', '1170', NULL, NULL),
(312, 'locale_direction', 'ltr', NULL, NULL),
(313, 'login_screen_backgrounds', '[]', NULL, NULL),
(314, 'google_site_verification', '', NULL, NULL),
(315, 'google_analytics', '', NULL, NULL),
(316, 'analytics_view_id', '', NULL, NULL),
(317, 'analytics_service_account_credentials', '', NULL, NULL),
(318, 'captcha_type', 'v2', NULL, NULL),
(319, 'captcha_hide_badge', '0', NULL, NULL),
(320, 'locale', 'en', NULL, NULL),
(321, 'admin_locale_direction', 'ltr', NULL, NULL),
(322, 'real_estate_square_unit', 'm²', NULL, NULL),
(323, 'real_estate_convert_money_to_text_enabled', '1', NULL, NULL),
(324, 'real_estate_thousands_separator', ',', NULL, NULL),
(325, 'real_estate_decimal_separator', '.', NULL, NULL),
(326, 'real_estate_enabled_register', '1', NULL, NULL),
(327, 'verify_account_email', '0', NULL, NULL),
(328, 'real_estate_enable_credits_system', '0', NULL, NULL),
(329, 'enable_post_approval', '1', NULL, NULL),
(330, 'property_expired_after_days', '45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, '3-beds-villa-calpe-alicante', 1, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 20:34:59', '2019-11-17 20:34:59'),
(2, 'property-for-sale-johannesburg-south-africa', 2, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 20:53:34', '2019-11-17 20:53:34'),
(3, 'stunning-french-inspired-manor', 3, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 21:09:55', '2019-11-17 21:09:55'),
(4, '42460-buccaneer-court', 4, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 21:18:11', '2019-11-17 21:18:11'),
(5, 'wifi', 1, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 'swimming-pool', 2, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(8, 'walnut-park-apartment', 5, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 00:47:52', '2019-11-18 00:47:52'),
(9, 'el-camino-del-mar', 6, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:05:58', '2019-11-18 01:05:58'),
(10, 'family-victorian-view-home', 7, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:12:07', '2019-11-18 01:12:07'),
(12, 'osaka-heights-apartment', 8, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:49:36', '2019-11-18 01:49:36'),
(13, 'private-estate-magnificent-views', 9, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:02:19', '2019-11-18 02:02:19'),
(14, 'harry-baskervilles-hay-loft', 10, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:16:53', '2019-11-18 02:16:53'),
(15, 'break-lease-available', 11, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:22:48', '2019-11-18 02:22:48'),
(16, 'category-news', 1, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-18 02:33:35', '2021-06-11 20:56:49'),
(17, 'elegant-family-home-presents-premium-modern-living', 12, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:47:05', '2019-11-18 02:47:05'),
(18, 'bcg-sets-great-store-by-real-estate-negotiations', 1, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:51:35', '2021-06-11 20:56:49'),
(19, 'bcg-sets-great-store', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(20, 'private-home-sales-drop-27-in-october', 2, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:55:53', '2021-06-11 20:56:49'),
(21, 'private-home-sales', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(22, 'singapore-overtakes-hong-kong-in-terms-of-property-investment-prospects', 3, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:59:01', '2021-06-11 20:56:49'),
(23, 's-koreas-big-investors-flocking-to-overseas-real-estate', 4, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 03:07:27', '2021-06-11 20:56:49'),
(24, 'south-korean-investors', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(29, 'the-avila-apartment', 13, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:23:02', '2019-11-18 07:23:02'),
(30, 'villa-for-sale-in-lavanya-residences', 14, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:36:29', '2019-11-18 07:36:29'),
(31, 'want-to-lease-a-house-in-compound-pejaten-barat-kemang', 15, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:44:44', '2019-11-18 07:44:44'),
(32, 'apartment-muiderstraatweg-in-diemen', 16, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:59:14', '2019-11-18 07:59:14'),
(33, 'nice-apartment-for-rent-in-berlin', 17, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 08:13:07', '2019-11-18 08:13:07'),
(40, 'ban-biet-thu-3-phong-ngu-calpe-alicante', 18, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 'ban-nha-tai-johannesburg-south-africa', 19, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:03:12', '2019-11-21 06:03:12'),
(42, 'nha-phong-cach-phap', 20, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 'nha-ban-tai', 21, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 'can-ho-walnut-park', 22, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 'cho-thue-nha-cao-cap-5-phong-ngu', 23, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 'cho-thue-nha-view-dep', 24, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 'ban-can-ho-osaka-heights', 25, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 'nha-chinh-chu', 26, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 'cho-thue-nha-tren-duong-thompsons', 27, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(52, 'house-architecture', 2, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:49:25', '2021-06-11 20:56:49'),
(53, 'kien-truc-nha', 3, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:49:35', '2021-06-11 20:56:49'),
(54, 'house-design', 4, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:02', '2021-06-11 20:56:49'),
(55, 'thiet-ke-nha', 5, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:17', '2021-06-11 20:56:49'),
(56, 'building-materials', 6, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:36', '2021-06-11 20:56:49'),
(57, 'vat-lieu-xay-dung', 7, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:58', '2021-06-11 20:56:49'),
(58, 'can-ho-1-phong-ngu-hoan-toan-moi-o-vi-tri-hang-nhat', 28, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 'nha-cao-cap-thanh-lich', 29, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 'can-ban-can-ho-cao-cap-tai-singapore', 30, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 'can-ho-cao-cap-5-phong-can-ban-tai-kuala-lumpur', 31, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 'nha-ompound-pejaten-barat-kemang', 32, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 'can-ho-muiderstraatweg-o-diemen', 33, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 'can-ho-dep-cho-thue-o-berlin', 34, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 'tin-tuc-1', 8, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-22 01:26:08', '2021-06-11 20:56:49'),
(66, 'bcg-thiet-lap-cua-hang-tuyet-voi-bang-cac-cuoc-dam-phan-bat-dong-san', 5, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:26:31', '2021-06-11 20:56:49'),
(67, 'doanh-so-ban-nha-rieng-giam-27-trong-thang-10', 6, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:29:45', '2021-06-11 20:56:49'),
(68, 'singapore-vuot-qua-hong-kong-ve-trien-vong-dau-tu-bat-dong-san', 7, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:33:23', '2021-06-11 20:56:49'),
(69, 'cac-nha-dau-tu-lon-han-quoc-do-xo-vao-bat-dong-san-o-nuoc-ngoai', 8, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:39:38', '2021-06-11 20:56:49'),
(74, 'sales-manager-real-estate', 1, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 'truong-phong-kinh-doanh-luong-len-toi', 2, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 'senior-real-estate-consultant', 3, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 'chuyen-vien-tu-van-bat-dong-san-cao-cap', 4, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(113, 'ads', 5, 'Botble\\Career\\Models\\Career', 'careers', '2021-01-03 17:26:32', '2021-01-03 17:26:32'),
(180, 'apartment', 1, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(181, 'villa', 2, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(182, 'condo', 3, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(183, 'house', 4, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(184, 'land', 5, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(185, 'commercial-property', 6, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(186, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(187, 'news', 2, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(188, 'about-us', 3, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(189, 'contact', 4, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(190, 'terms-conditions', 5, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(191, 'cookie-policy', 6, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(192, 'trang-chu', 7, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(193, 'tin-tuc', 8, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(194, 've-chung-toi', 9, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(195, 'lien-he', 10, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(196, 'dieu-khoan-va-quy-dinh', 11, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(197, 'cookie-policy', 12, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(198, 'the-top-2020-handbag-trends-to-know', 9, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(199, 'top-search-engine-optimization-strategies', 10, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(200, 'which-company-would-you-choose', 11, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(201, 'used-car-dealer-sales-tricks-exposed', 12, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(202, '20-ways-to-sell-your-product-faster', 13, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(203, 'the-secrets-of-rich-and-famous-writers', 14, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(204, 'imagine-losing-20-pounds-in-14-days', 15, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(205, 'are-you-still-using-that-slow-old-typewriter', 16, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(206, 'a-skin-cream-thats-proven-to-work', 17, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(207, '10-reasons-to-start-your-own-profitable-website', 18, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(208, 'simple-ways-to-reduce-your-unwanted-wrinkles', 19, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(209, 'apple-imac-with-retina-5k-display-review', 20, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(210, '10000-web-site-visitors-in-one-monthguaranteed', 21, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(211, 'unlock-the-secrets-of-selling-high-ticket-items', 22, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(212, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 23, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(213, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 24, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(214, 'xu-huong-tui-xach-hang-dau-nam-2020-can-biet', 25, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(215, 'cac-chien-luoc-toi-uu-hoa-cong-cu-tim-kiem-hang-dau', 26, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(216, 'ban-se-chon-cong-ty-nao', 27, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(217, 'lo-ra-cac-thu-doan-ban-hang-cua-dai-ly-o-to-da-qua-su-dung', 28, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(218, '20-cach-ban-san-pham-nhanh-hon', 29, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(219, 'bi-mat-cua-nhung-nha-van-giau-co-va-noi-tieng', 30, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(220, 'hay-tuong-tuong-ban-giam-20-bang-anh-trong-14-ngay', 31, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(221, 'ban-van-dang-su-dung-may-danh-chu-cu-cham-do', 32, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(222, 'mot-loai-kem-duong-da-da-duoc-chung-minh-hieu-qua', 33, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(223, '10-ly-do-de-bat-dau-trang-web-co-loi-nhuan-cua-rieng-ban', 34, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(224, 'nhung-cach-don-gian-de-giam-nep-nhan-khong-mong-muon-cua-ban', 35, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(225, 'danh-gia-apple-imac-voi-man-hinh-retina-5k', 36, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(226, '10000-khach-truy-cap-trang-web-trong-mot-thang-duoc-dam-bao', 37, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(227, 'mo-khoa-bi-mat-ban-duoc-ve-cao', 38, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(228, '4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop', 39, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(229, 'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke', 40, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(230, 'location', 13, 'Botble\\Page\\Models\\Page', '', '2021-11-21 00:55:38', '2021-11-21 00:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `abbreviation`) VALUES
(1, 'Swahili', 1, 0, 0, 'published', '2019-11-18 08:17:57', '2021-11-27 03:11:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(2, 'Private Home Sales', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(3, 'South Korean investors', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 03:07:27', '2019-11-18 03:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(2, 0, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(3, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(4, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(5, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(6, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(7, 0, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(8, 0, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(9, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(10, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(11, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(12, 0, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(13, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(14, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(15, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(16, 0, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(17, 0, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(18, 0, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(19, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(20, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(21, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(22, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(23, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(24, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(25, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(26, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(27, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(28, 0, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(29, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(30, 0, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(31, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(32, 0, 'en', 'validation', 'declined', 'The :attribute must be declined.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(33, 0, 'en', 'validation', 'declined_if', 'The :attribute must be declined when :other is :value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(34, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(35, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(36, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(37, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(38, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(39, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(40, 0, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(41, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(42, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(43, 0, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(44, 0, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(45, 0, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(46, 0, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(47, 0, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(48, 0, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal to :value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(49, 0, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal to :value kilobytes.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(50, 0, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal to :value characters.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(51, 0, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(52, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(53, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(54, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(55, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(56, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(57, 0, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(58, 0, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(59, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(60, 0, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(61, 0, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(62, 0, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(63, 0, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(64, 0, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal to :value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(65, 0, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal to :value kilobytes.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(66, 0, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal to :value characters.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(67, 0, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(68, 0, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(69, 0, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(70, 0, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(71, 0, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(72, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(73, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(74, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(75, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(76, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(77, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(78, 0, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(79, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(80, 0, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(81, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(82, 0, 'en', 'validation', 'password', 'The password is incorrect.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(83, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(84, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(85, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(86, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(87, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(88, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(89, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(90, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(91, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(92, 0, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(93, 0, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(94, 0, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(95, 0, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(96, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(97, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(98, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(99, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(100, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(101, 0, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(102, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(103, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(104, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(105, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(106, 0, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(107, 0, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(108, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-11-16 08:42:28', '2021-11-16 08:42:48'),
(109, 0, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(110, 0, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(111, 0, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(112, 0, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(113, 0, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(114, 0, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(115, 0, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(116, 0, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(117, 0, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(118, 0, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(119, 0, 'en', 'core/acl/api', 'name', 'Name', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(120, 0, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(121, 0, 'en', 'core/acl/api', 'save', 'Save', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(122, 0, 'en', 'core/acl/api', 'edit', 'Edit', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(123, 0, 'en', 'core/acl/api', 'delete', 'Delete', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(124, 0, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(125, 0, 'en', 'core/acl/api', 'secret', 'Secret', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(126, 0, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(127, 0, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(128, 0, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(129, 0, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(130, 0, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(131, 0, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(132, 0, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(133, 0, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(134, 0, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(135, 0, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(136, 0, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(137, 0, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(138, 0, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(139, 0, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(140, 0, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(141, 0, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(142, 0, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(143, 0, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(144, 0, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(145, 0, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(146, 0, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(147, 0, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(148, 0, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(149, 0, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(150, 0, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(151, 0, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(152, 0, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(153, 0, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(154, 0, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(155, 0, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(156, 0, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(157, 0, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(158, 0, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(159, 0, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(160, 0, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(161, 0, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(162, 0, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(163, 0, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(164, 0, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(165, 0, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(166, 0, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(167, 0, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(168, 0, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(169, 0, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(170, 0, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(171, 0, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(172, 0, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(173, 0, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(174, 0, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(175, 0, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(176, 0, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(177, 0, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(178, 0, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(179, 0, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(180, 0, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(181, 0, 'en', 'core/acl/permissions', 'name', 'Name', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(182, 0, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(183, 0, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(184, 0, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(185, 0, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(186, 0, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(187, 0, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(188, 0, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(189, 0, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(190, 0, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(191, 0, 'en', 'core/acl/permissions', 'save', 'Save', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(192, 0, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(193, 0, 'en', 'core/acl/permissions', 'details', 'Details', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(194, 0, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(195, 0, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(196, 0, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(197, 0, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(198, 0, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(199, 0, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(200, 0, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(201, 0, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(202, 0, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(203, 0, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(204, 0, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(205, 0, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(206, 0, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(207, 0, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(208, 0, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(209, 0, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(210, 0, 'en', 'core/acl/permissions', 'options', 'Options', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(211, 0, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(212, 0, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(213, 0, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(214, 0, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(215, 0, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(216, 0, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(217, 0, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(218, 0, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(219, 0, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(220, 0, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(221, 0, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(222, 0, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(223, 0, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(224, 0, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(225, 0, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(226, 0, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(227, 0, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(228, 0, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(229, 0, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(230, 0, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(231, 0, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(232, 0, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(233, 0, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(234, 0, 'en', 'core/acl/users', 'email', 'Email', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(235, 0, 'en', 'core/acl/users', 'role', 'Role', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(236, 0, 'en', 'core/acl/users', 'username', 'Username', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(237, 0, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(238, 0, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(239, 0, 'en', 'core/acl/users', 'message', 'Message', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(240, 0, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(241, 0, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(242, 0, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(243, 0, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(244, 0, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(245, 0, 'en', 'core/acl/users', 'password', 'Password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(246, 0, 'en', 'core/acl/users', 'save', 'Save', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(247, 0, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(248, 0, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(249, 0, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(250, 0, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(251, 0, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(252, 0, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(253, 0, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(254, 0, 'en', 'core/acl/users', 'loading', 'Loading', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(255, 0, 'en', 'core/acl/users', 'close', 'Close', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(256, 0, 'en', 'core/acl/users', 'update', 'Update', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(257, 0, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(258, 0, 'en', 'core/acl/users', 'users', 'Users', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(259, 0, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(260, 0, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(261, 0, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(262, 0, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(263, 0, 'en', 'core/acl/users', 'info.email', 'Email', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(264, 0, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(265, 0, 'en', 'core/acl/users', 'info.address', 'Address', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(266, 0, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(267, 0, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(268, 0, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(269, 0, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(270, 0, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(271, 0, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(272, 0, 'en', 'core/acl/users', 'info.about', 'About', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(273, 0, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(274, 0, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(275, 0, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(276, 0, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(277, 0, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(278, 0, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(279, 0, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(280, 0, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(281, 0, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(282, 0, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(283, 0, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(284, 0, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(285, 0, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(286, 0, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(287, 0, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(288, 0, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(289, 0, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-11-16 08:42:28', '2021-11-16 08:42:49'),
(432, 0, 'en', 'core/base/base', 'yes', 'Yes', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(433, 0, 'en', 'core/base/base', 'no', 'No', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(434, 0, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(435, 0, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(436, 0, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(437, 0, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(438, 0, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(439, 0, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(440, 0, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(441, 0, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(442, 0, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(443, 0, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(444, 0, 'en', 'core/base/base', 'change_image', 'Change image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(445, 0, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(446, 0, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(447, 0, 'en', 'core/base/base', 'image', 'Image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(448, 0, 'en', 'core/base/base', 'using_button', 'Using button', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(449, 0, 'en', 'core/base/base', 'select_image', 'Select image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(450, 0, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(451, 0, 'en', 'core/base/base', 'add_image', 'Add image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(452, 0, 'en', 'core/base/base', 'tools', 'Tools', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(453, 0, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(454, 0, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(455, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(456, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(457, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(458, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(459, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(460, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(461, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(462, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(463, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(464, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(465, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(466, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(467, 0, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(468, 0, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(469, 0, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(470, 0, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(471, 0, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(472, 0, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(473, 0, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(474, 0, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(475, 0, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(476, 0, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(477, 0, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(478, 0, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(479, 0, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(480, 0, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://flex-home.test/admin\">clicking here</a>.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(481, 0, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(482, 0, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(483, 0, 'en', 'core/base/forms', 'actions', 'Actions', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(484, 0, 'en', 'core/base/forms', 'save', 'Save', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(485, 0, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(486, 0, 'en', 'core/base/forms', 'image', 'Image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(487, 0, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(488, 0, 'en', 'core/base/forms', 'create', 'Create', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(489, 0, 'en', 'core/base/forms', 'edit', 'Edit', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(490, 0, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(491, 0, 'en', 'core/base/forms', 'ok', 'OK', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(492, 0, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(493, 0, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(494, 0, 'en', 'core/base/forms', 'template', 'Template', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(495, 0, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(496, 0, 'en', 'core/base/forms', 'file', 'File', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(497, 0, 'en', 'core/base/forms', 'content', 'Content', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(498, 0, 'en', 'core/base/forms', 'description', 'Description', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(499, 0, 'en', 'core/base/forms', 'name', 'Name', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(500, 0, 'en', 'core/base/forms', 'slug', 'Slug', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(501, 0, 'en', 'core/base/forms', 'title', 'Title', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(502, 0, 'en', 'core/base/forms', 'value', 'Value', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(503, 0, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(504, 0, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(505, 0, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(506, 0, 'en', 'core/base/forms', 'parent', 'Parent', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(507, 0, 'en', 'core/base/forms', 'icon', 'Icon', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(508, 0, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(509, 0, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(510, 0, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(511, 0, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(512, 0, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(513, 0, 'en', 'core/base/forms', 'update', 'Update', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(514, 0, 'en', 'core/base/forms', 'publish', 'Publish', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(515, 0, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(516, 0, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(517, 0, 'en', 'core/base/forms', 'order', 'Order', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(518, 0, 'en', 'core/base/forms', 'alias', 'Alias', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(519, 0, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(520, 0, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(521, 0, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(522, 0, 'en', 'core/base/forms', 'add', 'Add', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(523, 0, 'en', 'core/base/forms', 'link', 'Link', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(524, 0, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(525, 0, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(526, 0, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(527, 0, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(528, 0, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(529, 0, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(530, 0, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-11-16 08:42:29', '2021-11-16 08:42:49');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(531, 0, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(532, 0, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(533, 0, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(534, 0, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(535, 0, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(536, 0, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(537, 0, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(538, 0, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(539, 0, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(540, 0, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(541, 0, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(542, 0, 'en', 'core/base/layouts', 'home', 'Home', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(543, 0, 'en', 'core/base/layouts', 'search', 'Search', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(544, 0, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(545, 0, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(546, 0, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(547, 0, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(548, 0, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(549, 0, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(550, 0, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(551, 0, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(552, 0, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(553, 0, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(554, 0, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(555, 0, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(556, 0, 'en', 'core/base/notices', 'error', 'Error!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(557, 0, 'en', 'core/base/notices', 'success', 'Success!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(558, 0, 'en', 'core/base/notices', 'info', 'Info!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(559, 0, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(560, 0, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(561, 0, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(562, 0, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(563, 0, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(564, 0, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(565, 0, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(566, 0, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(567, 0, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(568, 0, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(569, 0, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(570, 0, 'en', 'core/base/system', 'user_management', 'User Management', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(571, 0, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(572, 0, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(573, 0, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(574, 0, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(575, 0, 'en', 'core/base/system', 'user.email', 'Email', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(576, 0, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(577, 0, 'en', 'core/base/system', 'user.username', 'Username', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(578, 0, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(579, 0, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(580, 0, 'en', 'core/base/system', 'user.create', 'Create', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(581, 0, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(582, 0, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(583, 0, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(584, 0, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(585, 0, 'en', 'core/base/system', 'options.info', 'System information', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(586, 0, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(587, 0, 'en', 'core/base/system', 'info.title', 'System information', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(588, 0, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(589, 0, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(590, 0, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(591, 0, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(592, 0, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(593, 0, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(594, 0, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(595, 0, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(596, 0, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(597, 0, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(598, 0, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(599, 0, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(600, 0, 'en', 'core/base/system', 'app_size', 'App Size', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(601, 0, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(602, 0, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(603, 0, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(604, 0, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(605, 0, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(606, 0, 'en', 'core/base/system', 'database', 'Database', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(607, 0, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(608, 0, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(609, 0, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(610, 0, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(611, 0, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(612, 0, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(613, 0, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(614, 0, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(615, 0, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(616, 0, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(617, 0, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(618, 0, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(619, 0, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(620, 0, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(621, 0, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(622, 0, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(623, 0, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(624, 0, 'en', 'core/base/system', 'version', 'Version', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(625, 0, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(626, 0, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(627, 0, 'en', 'core/base/system', 'updater', 'System Updater', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(628, 0, 'en', 'core/base/tables', 'id', 'ID', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(629, 0, 'en', 'core/base/tables', 'name', 'Name', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(630, 0, 'en', 'core/base/tables', 'slug', 'Slug', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(631, 0, 'en', 'core/base/tables', 'title', 'Title', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(632, 0, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(633, 0, 'en', 'core/base/tables', 'order', 'Order', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(634, 0, 'en', 'core/base/tables', 'status', 'Status', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(635, 0, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(636, 0, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(637, 0, 'en', 'core/base/tables', 'description', 'Description', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(638, 0, 'en', 'core/base/tables', 'operations', 'Operations', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(639, 0, 'en', 'core/base/tables', 'url', 'URL', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(640, 0, 'en', 'core/base/tables', 'author', 'Author', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(641, 0, 'en', 'core/base/tables', 'notes', 'Notes', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(642, 0, 'en', 'core/base/tables', 'column', 'Column', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(643, 0, 'en', 'core/base/tables', 'origin', 'Origin', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(644, 0, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(645, 0, 'en', 'core/base/tables', 'views', 'Views', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(646, 0, 'en', 'core/base/tables', 'browser', 'Browser', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(647, 0, 'en', 'core/base/tables', 'session', 'Session', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(648, 0, 'en', 'core/base/tables', 'activated', 'activated', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(649, 0, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(650, 0, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(651, 0, 'en', 'core/base/tables', 'edit', 'Edit', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(652, 0, 'en', 'core/base/tables', 'delete', 'Delete', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(653, 0, 'en', 'core/base/tables', 'restore', 'Restore', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(654, 0, 'en', 'core/base/tables', 'activate', 'Activate', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(655, 0, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(656, 0, 'en', 'core/base/tables', 'excel', 'Excel', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(657, 0, 'en', 'core/base/tables', 'export', 'Export', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(658, 0, 'en', 'core/base/tables', 'csv', 'CSV', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(659, 0, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(660, 0, 'en', 'core/base/tables', 'print', 'Print', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(661, 0, 'en', 'core/base/tables', 'reset', 'Reset', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(662, 0, 'en', 'core/base/tables', 'reload', 'Reload', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(663, 0, 'en', 'core/base/tables', 'display', 'Display', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(664, 0, 'en', 'core/base/tables', 'all', 'All', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(665, 0, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(666, 0, 'en', 'core/base/tables', 'action', 'Actions', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(667, 0, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(668, 0, 'en', 'core/base/tables', 'view', 'View Detail', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(669, 0, 'en', 'core/base/tables', 'save', 'Save', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(670, 0, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(671, 0, 'en', 'core/base/tables', 'to', 'to', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(672, 0, 'en', 'core/base/tables', 'in', 'in', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(673, 0, 'en', 'core/base/tables', 'records', 'records', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(674, 0, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(675, 0, 'en', 'core/base/tables', 'no_record', 'No record', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(676, 0, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(677, 0, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(678, 0, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(679, 0, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(680, 0, 'en', 'core/base/tables', 'template', 'Template', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(681, 0, 'en', 'core/base/tables', 'email', 'Email', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(682, 0, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(683, 0, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(684, 0, 'en', 'core/base/tables', 'image', 'Image', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(685, 0, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(686, 0, 'en', 'core/base/tables', 'submit', 'Submit', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(687, 0, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(688, 0, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(689, 0, 'en', 'core/base/tabs', 'file', 'Files', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(690, 0, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(691, 0, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-11-16 08:42:29', '2021-11-16 08:42:49'),
(915, 0, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(916, 0, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(917, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(918, 0, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(919, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(920, 0, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(921, 0, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(922, 0, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(923, 0, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(924, 0, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(925, 0, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(926, 0, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(927, 0, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(928, 0, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(929, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.today', 'Today', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(930, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.yesterday', 'Yesterday', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(931, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_week', 'This Week', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(932, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_7_days', 'Last 7 Days', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(933, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_month', 'This Month', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(934, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_30_days', 'Last 30 Days', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(935, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_year', 'This Year', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(950, 0, 'en', 'core/media/media', 'filter', 'Filter', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(951, 0, 'en', 'core/media/media', 'everything', 'Everything', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(952, 0, 'en', 'core/media/media', 'image', 'Image', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(953, 0, 'en', 'core/media/media', 'video', 'Video', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(954, 0, 'en', 'core/media/media', 'document', 'Document', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(955, 0, 'en', 'core/media/media', 'view_in', 'View in', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(956, 0, 'en', 'core/media/media', 'all_media', 'All media', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(957, 0, 'en', 'core/media/media', 'trash', 'Trash', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(958, 0, 'en', 'core/media/media', 'recent', 'Recent', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(959, 0, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(960, 0, 'en', 'core/media/media', 'upload', 'Upload', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(961, 0, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(962, 0, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(963, 0, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(964, 0, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(965, 0, 'en', 'core/media/media', 'sort', 'Sort', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(966, 0, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(967, 0, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(968, 0, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(969, 0, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(970, 0, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(971, 0, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(972, 0, 'en', 'core/media/media', 'actions', 'Actions', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(973, 0, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(974, 0, 'en', 'core/media/media', 'insert', 'Insert', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(975, 0, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(976, 0, 'en', 'core/media/media', 'create', 'Create', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(977, 0, 'en', 'core/media/media', 'rename', 'Rename', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(978, 0, 'en', 'core/media/media', 'close', 'Close', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(979, 0, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(980, 0, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(981, 0, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(982, 0, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(983, 0, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(984, 0, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(985, 0, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(986, 0, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(987, 0, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(988, 0, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(989, 0, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(990, 0, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(991, 0, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(992, 0, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(993, 0, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(994, 0, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(995, 0, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(996, 0, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(997, 0, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(998, 0, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(999, 0, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1000, 0, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1001, 0, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1002, 0, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1003, 0, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1004, 0, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1005, 0, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1006, 0, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1007, 0, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1008, 0, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1009, 0, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1010, 0, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1011, 0, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1012, 0, 'en', 'core/media/media', 'menu_name', 'Media', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1013, 0, 'en', 'core/media/media', 'add', 'Add media', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1014, 0, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1015, 0, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1016, 0, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1017, 0, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1018, 0, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1019, 0, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1020, 0, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1021, 0, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1022, 0, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1023, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1024, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1025, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1026, 0, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1027, 0, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1028, 0, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1029, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1030, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1031, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1032, 0, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1033, 0, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1034, 0, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1035, 0, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1036, 0, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1037, 0, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1038, 0, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1039, 0, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1040, 0, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1041, 0, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1042, 0, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1043, 0, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1044, 0, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1045, 0, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1046, 0, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1047, 0, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1048, 0, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1049, 0, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1050, 0, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1051, 0, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1052, 0, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1053, 0, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1054, 0, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1055, 0, 'en', 'core/media/media', 'download_link', 'Download', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1056, 0, 'en', 'core/media/media', 'url', 'URL', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1057, 0, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1058, 0, 'en', 'core/media/media', 'downloading', 'Downloading...', '2021-11-16 08:42:30', '2021-11-16 08:42:49'),
(1162, 0, 'en', 'core/setting/setting', 'title', 'Settings', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1163, 0, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1164, 0, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1165, 0, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1166, 0, 'en', 'core/setting/setting', 'general.title', 'General', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1167, 0, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1168, 0, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1169, 0, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1170, 0, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1171, 0, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1172, 0, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1173, 0, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1174, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1175, 0, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1176, 0, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1177, 0, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1178, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1179, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1180, 0, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1181, 0, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1182, 0, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1183, 0, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1184, 0, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1185, 0, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1186, 0, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1187, 0, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1188, 0, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1189, 0, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1190, 0, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1191, 0, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1192, 0, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1193, 0, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1194, 0, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1195, 0, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1196, 0, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1197, 0, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1198, 0, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1199, 0, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1200, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1201, 0, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1202, 0, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1203, 0, 'en', 'core/setting/setting', 'general.no', 'No', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1204, 0, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1205, 0, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1206, 0, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1207, 0, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1208, 0, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1209, 0, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1210, 0, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1211, 0, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1212, 0, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1213, 0, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1214, 0, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1215, 0, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1216, 0, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1217, 0, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1218, 0, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1219, 0, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1220, 0, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1221, 0, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1222, 0, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1223, 0, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1224, 0, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1225, 0, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1226, 0, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1227, 0, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1228, 0, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1229, 0, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1230, 0, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1231, 0, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1232, 0, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1233, 0, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1234, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1235, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1236, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1237, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1238, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1239, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1240, 0, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1241, 0, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1242, 0, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1243, 0, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1244, 0, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1245, 0, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1246, 0, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1247, 0, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1248, 0, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1249, 0, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1250, 0, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1251, 0, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1252, 0, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1253, 0, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1254, 0, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1255, 0, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1256, 0, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1257, 0, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1258, 0, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1259, 0, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1260, 0, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1261, 0, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1262, 0, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1263, 0, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1264, 0, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1265, 0, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1266, 0, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1267, 0, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1268, 0, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1269, 0, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1270, 0, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1271, 0, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-11-16 08:42:31', '2021-11-16 08:42:49');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1272, 0, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1273, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1274, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1275, 0, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1276, 0, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1277, 0, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1278, 0, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1279, 0, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1280, 0, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1281, 0, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1282, 0, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1283, 0, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1284, 0, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1285, 0, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1286, 0, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1287, 0, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1288, 0, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1289, 0, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1290, 0, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1291, 0, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1292, 0, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1293, 0, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1294, 0, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1295, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1296, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1297, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1298, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1299, 0, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1300, 0, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1301, 0, 'en', 'core/setting/setting', 'media.bunnycdn_hostname', 'Hostname', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1302, 0, 'en', 'core/setting/setting', 'media.bunnycdn_zone', 'Zone Name (The name of your storage zone)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1303, 0, 'en', 'core/setting/setting', 'media.bunnycdn_key', 'FTP & API Access Password (The storage zone API Access Password)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1304, 0, 'en', 'core/setting/setting', 'media.bunnycdn_region', 'Region (The storage zone region)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1305, 0, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1306, 0, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1307, 0, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1308, 0, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1309, 0, 'en', 'core/setting/setting', 'template', 'Template', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1310, 0, 'en', 'core/setting/setting', 'description', 'Description', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1311, 0, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1312, 0, 'en', 'core/setting/setting', 'send', 'Send', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1313, 0, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1314, 0, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1315, 0, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1316, 0, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1317, 0, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1318, 0, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1319, 0, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1320, 0, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1321, 0, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1322, 0, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1391, 0, 'en', 'core/table/general', 'operations', 'Operations', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1392, 0, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1393, 0, 'en', 'core/table/general', 'display', 'Display', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1394, 0, 'en', 'core/table/general', 'all', 'All', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1395, 0, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1396, 0, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1397, 0, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1398, 0, 'en', 'core/table/general', 'to', 'to', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1399, 0, 'en', 'core/table/general', 'in', 'in', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1400, 0, 'en', 'core/table/general', 'records', 'records', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1401, 0, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1402, 0, 'en', 'core/table/general', 'no_record', 'No record', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1403, 0, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1404, 0, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1405, 0, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1406, 0, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1407, 0, 'en', 'core/table/general', 'delete', 'Delete', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1408, 0, 'en', 'core/table/general', 'close', 'Close', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1409, 0, 'en', 'core/table/general', 'contains', 'Contains', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1410, 0, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1411, 0, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1412, 0, 'en', 'core/table/general', 'less_than', 'Less than', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1413, 0, 'en', 'core/table/general', 'value', 'Value', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1414, 0, 'en', 'core/table/general', 'select_field', 'Select field', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1415, 0, 'en', 'core/table/general', 'reset', 'Reset', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1416, 0, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1417, 0, 'en', 'core/table/general', 'apply', 'Apply', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1418, 0, 'en', 'core/table/general', 'filters', 'Filters', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1419, 0, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1420, 0, 'en', 'core/table/general', 'select_option', 'Select option', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1421, 0, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1422, 0, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1423, 0, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1424, 0, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1425, 0, 'en', 'core/table/general', 'search', 'Search...', '2021-11-16 08:42:31', '2021-11-16 08:42:49'),
(1426, 0, 'en', 'core/table/table', 'operations', 'Operations', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1427, 0, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1428, 0, 'en', 'core/table/table', 'display', 'Display', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1429, 0, 'en', 'core/table/table', 'all', 'All', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1430, 0, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1431, 0, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1432, 0, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1433, 0, 'en', 'core/table/table', 'to', 'to', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1434, 0, 'en', 'core/table/table', 'in', 'in', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1435, 0, 'en', 'core/table/table', 'records', 'records', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1436, 0, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1437, 0, 'en', 'core/table/table', 'no_record', 'No record', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1438, 0, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1439, 0, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1440, 0, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1441, 0, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1442, 0, 'en', 'core/table/table', 'delete', 'Delete', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1443, 0, 'en', 'core/table/table', 'close', 'Close', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1444, 0, 'en', 'core/table/table', 'contains', 'Contains', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1445, 0, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1446, 0, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1447, 0, 'en', 'core/table/table', 'less_than', 'Less than', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1448, 0, 'en', 'core/table/table', 'value', 'Value', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1449, 0, 'en', 'core/table/table', 'select_field', 'Select field', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1450, 0, 'en', 'core/table/table', 'reset', 'Reset', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1451, 0, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1452, 0, 'en', 'core/table/table', 'apply', 'Apply', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1453, 0, 'en', 'core/table/table', 'filters', 'Filters', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1454, 0, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1455, 0, 'en', 'core/table/table', 'select_option', 'Select option', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1456, 0, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1457, 0, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1458, 0, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1459, 0, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1460, 0, 'en', 'core/table/table', 'search', 'Search...', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1493, 0, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1494, 0, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1495, 0, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1496, 0, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1497, 0, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1498, 0, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1499, 0, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-11-16 08:42:31', '2021-11-16 08:42:50'),
(1500, 0, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1501, 0, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1502, 0, 'en', 'packages/menu/menu', 'title', 'Title', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1503, 0, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1504, 0, 'en', 'packages/menu/menu', 'url', 'URL', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1505, 0, 'en', 'packages/menu/menu', 'target', 'Target', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1506, 0, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1507, 0, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1508, 0, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1509, 0, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1510, 0, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1511, 0, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1512, 0, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1531, 0, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1532, 0, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1533, 0, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1534, 0, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1535, 0, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1536, 0, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1537, 0, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1538, 0, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1539, 0, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1540, 0, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1541, 0, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1542, 0, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1543, 0, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1544, 0, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1545, 0, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1546, 0, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1547, 0, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1548, 0, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1563, 0, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1564, 0, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1565, 0, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1566, 0, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1567, 0, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1568, 0, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1569, 0, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1570, 0, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1571, 0, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1572, 0, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1573, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1574, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1575, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1576, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1577, 0, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1578, 0, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1579, 0, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1580, 0, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1581, 0, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1582, 0, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1583, 0, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1584, 0, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1585, 0, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1586, 0, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1587, 0, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1588, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1589, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1590, 0, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1591, 0, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1603, 0, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1604, 0, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1605, 0, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1606, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1607, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1613, 0, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1614, 0, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1615, 0, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1616, 0, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1617, 0, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1618, 0, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1619, 0, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1620, 0, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1621, 0, 'en', 'packages/theme/theme', 'author', 'Author', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1622, 0, 'en', 'packages/theme/theme', 'version', 'Version', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1623, 0, 'en', 'packages/theme/theme', 'description', 'Description', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1624, 0, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1625, 0, 'en', 'packages/theme/theme', 'active', 'Active', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1626, 0, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1627, 0, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1628, 0, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1629, 0, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1630, 0, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1631, 0, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1632, 0, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1633, 0, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1634, 0, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1635, 0, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1636, 0, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1637, 0, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1638, 0, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1639, 0, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1640, 0, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1641, 0, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1642, 0, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1643, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1644, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1645, 0, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1646, 0, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1647, 0, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1648, 0, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1649, 0, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1650, 0, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1651, 0, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1652, 0, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1653, 0, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1654, 0, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1655, 0, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1656, 0, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1657, 0, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1658, 0, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1659, 0, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1660, 0, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1661, 0, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1662, 0, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1663, 0, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1664, 0, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1665, 0, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1666, 0, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1678, 0, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1679, 0, 'en', 'packages/widget/global', 'create', 'New widget', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1680, 0, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1681, 0, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1682, 0, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1683, 0, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1684, 0, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1685, 0, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1686, 0, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1687, 0, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1688, 0, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1689, 0, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1690, 0, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1691, 0, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1692, 0, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1693, 0, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1694, 0, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1695, 0, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1696, 0, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1697, 0, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1698, 0, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1699, 0, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1700, 0, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1701, 0, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1702, 0, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1703, 0, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1704, 0, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1705, 0, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1706, 0, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1707, 0, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1708, 0, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1709, 0, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1710, 0, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1711, 0, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1712, 0, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1713, 0, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1714, 0, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1715, 0, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1716, 0, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1717, 0, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1737, 0, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1738, 0, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1739, 0, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1740, 0, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1741, 0, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1742, 0, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1743, 0, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1744, 0, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1745, 0, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1746, 0, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1747, 0, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1748, 0, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1749, 0, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1750, 0, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1751, 0, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1752, 0, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1753, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1754, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1755, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1756, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1757, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1758, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1759, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1760, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1761, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1762, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-11-16 08:42:32', '2021-11-16 08:42:50'),
(1789, 0, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1790, 0, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1791, 0, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1792, 0, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1793, 0, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1794, 0, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1795, 0, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1796, 0, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1797, 0, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1798, 0, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1799, 0, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1800, 0, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1801, 0, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1802, 0, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1803, 0, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1804, 0, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1805, 0, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1806, 0, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1807, 0, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1808, 0, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1809, 0, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1810, 0, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1811, 0, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1812, 0, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1813, 0, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1814, 0, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1837, 0, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1838, 0, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1839, 0, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1840, 0, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1841, 0, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1842, 0, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1843, 0, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1844, 0, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1845, 0, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1846, 0, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1847, 0, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1848, 0, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1849, 0, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1850, 0, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1851, 0, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1852, 0, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1853, 0, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1854, 0, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1855, 0, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1856, 0, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1857, 0, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1858, 0, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1859, 0, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1860, 0, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1861, 0, 'en', 'plugins/backup/backup', 'important_message4', 'It is not a full backup, it is just back up uploaded files and your database.', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1878, 0, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1879, 0, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1880, 0, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1881, 0, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1882, 0, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1883, 0, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1884, 0, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1885, 0, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1886, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1887, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1888, 0, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1889, 0, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1890, 0, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1891, 0, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1892, 0, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1893, 0, 'en', 'plugins/blog/categories', 'none', 'None', '2021-11-16 08:42:33', '2021-11-16 08:42:50');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1894, 0, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1895, 0, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1896, 0, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1897, 0, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1898, 0, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1899, 0, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1900, 0, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1901, 0, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1902, 0, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1903, 0, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1904, 0, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1905, 0, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1906, 0, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1907, 0, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1908, 0, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1909, 0, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1910, 0, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1911, 0, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1912, 0, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1913, 0, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1914, 0, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1915, 0, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1916, 0, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1917, 0, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1918, 0, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1919, 0, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1920, 0, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1921, 0, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1922, 0, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1923, 0, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1924, 0, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1925, 0, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1926, 0, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1927, 0, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1928, 0, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1929, 0, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1930, 0, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1931, 0, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1932, 0, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1933, 0, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1934, 0, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1935, 0, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1936, 0, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1937, 0, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1938, 0, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1939, 0, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1979, 0, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1980, 0, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1981, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1982, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1983, 0, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1984, 0, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1985, 0, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1986, 0, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1987, 0, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1988, 0, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1989, 0, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-11-16 08:42:33', '2021-11-16 08:42:50'),
(1990, 0, 'en', 'plugins/career/career', 'name', 'Careers', '2021-11-16 08:42:33', '2021-11-16 08:42:51'),
(1991, 0, 'en', 'plugins/career/career', 'create', 'New career', '2021-11-16 08:42:33', '2021-11-16 08:42:51'),
(1992, 0, 'en', 'plugins/career/career', 'edit', 'Edit career', '2021-11-16 08:42:33', '2021-11-16 08:42:51'),
(1993, 0, 'en', 'plugins/career/career', 'location', 'Location', '2021-11-16 08:42:33', '2021-11-16 08:42:51'),
(1994, 0, 'en', 'plugins/career/career', 'salary', 'Salary', '2021-11-16 08:42:33', '2021-11-16 08:42:51'),
(2000, 0, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2001, 0, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2002, 0, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2003, 0, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2004, 0, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2005, 0, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2006, 0, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2007, 0, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2008, 0, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2009, 0, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2010, 0, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2011, 0, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2012, 0, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2013, 0, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2014, 0, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2015, 0, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2016, 0, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2017, 0, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2018, 0, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2019, 0, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2020, 0, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2021, 0, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2022, 0, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2023, 0, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2024, 0, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2025, 0, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2026, 0, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2027, 0, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2028, 0, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2029, 0, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2030, 0, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2031, 0, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2032, 0, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2033, 0, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2034, 0, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2035, 0, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2036, 0, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2037, 0, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2038, 0, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2039, 0, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2040, 0, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2041, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2042, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2043, 0, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2044, 0, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2045, 0, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2046, 0, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2047, 0, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2048, 0, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2049, 0, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2091, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2092, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2093, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2094, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2095, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2096, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2097, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2098, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2099, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2100, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2101, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.style', 'Style', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2102, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.full_width', 'Full width', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2103, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.minimal', 'Minimal', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2104, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2105, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2106, 0, 'en', 'plugins/language/language', 'name', 'Languages', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2107, 0, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2108, 0, 'en', 'plugins/language/language', 'select_language', 'Select language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2109, 0, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2110, 0, 'en', 'plugins/language/language', 'language_name', 'Language name', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2111, 0, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2112, 0, 'en', 'plugins/language/language', 'locale', 'Locale', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2113, 0, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2114, 0, 'en', 'plugins/language/language', 'language_code', 'Language code', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2115, 0, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2116, 0, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2117, 0, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2118, 0, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2119, 0, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2120, 0, 'en', 'plugins/language/language', 'flag', 'Flag', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2121, 0, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2122, 0, 'en', 'plugins/language/language', 'order', 'Order', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2123, 0, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2124, 0, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2125, 0, 'en', 'plugins/language/language', 'code', 'Code', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2126, 0, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2127, 0, 'en', 'plugins/language/language', 'actions', 'Actions', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2128, 0, 'en', 'plugins/language/language', 'translations', 'Translations', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2129, 0, 'en', 'plugins/language/language', 'edit', 'Edit', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2130, 0, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2131, 0, 'en', 'plugins/language/language', 'delete', 'Delete', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2132, 0, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2133, 0, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2134, 0, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2135, 0, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2136, 0, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2137, 0, 'en', 'plugins/language/language', 'settings', 'Settings', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2138, 0, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2139, 0, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2140, 0, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2141, 0, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2142, 0, 'en', 'plugins/language/language', 'language_display', 'Language display', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2143, 0, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2144, 0, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2145, 0, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2146, 0, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2147, 0, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2148, 0, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2149, 0, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2150, 0, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2151, 0, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2152, 0, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2153, 0, 'en', 'plugins/language/language', 'show_all', 'Show all', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2154, 0, 'en', 'plugins/language/language', 'change_language', 'Language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2155, 0, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2156, 0, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2157, 0, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2158, 0, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2159, 0, 'en', 'plugins/language/language', 'language_auto_detect_user_language', 'Auto detect user language?', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2207, 0, 'en', 'plugins/location/city', 'name', 'Cities', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2208, 0, 'en', 'plugins/location/city', 'create', 'New city', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2209, 0, 'en', 'plugins/location/city', 'edit', 'Edit city', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2210, 0, 'en', 'plugins/location/city', 'state', 'State', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2211, 0, 'en', 'plugins/location/city', 'select_state', 'Select a state...', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2212, 0, 'en', 'plugins/location/city', 'select_city', 'Select a city...', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2213, 0, 'en', 'plugins/location/city', 'country', 'Country', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2214, 0, 'en', 'plugins/location/city', 'select_country', 'Select a country...', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2215, 0, 'en', 'plugins/location/city', 'city', 'City', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2216, 0, 'en', 'plugins/location/country', 'name', 'Countries', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2217, 0, 'en', 'plugins/location/country', 'create', 'New country', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2218, 0, 'en', 'plugins/location/country', 'edit', 'Edit country', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2219, 0, 'en', 'plugins/location/country', 'nationality', 'Nationality', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2220, 0, 'en', 'plugins/location/location', 'name', 'Locations', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2221, 0, 'en', 'plugins/location/location', 'create', 'New location', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2222, 0, 'en', 'plugins/location/location', 'edit', 'Edit location', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2223, 0, 'en', 'plugins/location/location', 'all_states', 'All states', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2224, 0, 'en', 'plugins/location/location', 'abbreviation', 'Abbreviation', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2225, 0, 'en', 'plugins/location/location', 'abbreviation_placeholder', 'E.g: CA', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2226, 0, 'en', 'plugins/location/state', 'name', 'States', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2227, 0, 'en', 'plugins/location/state', 'create', 'New state', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2228, 0, 'en', 'plugins/location/state', 'edit', 'Edit state', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2229, 0, 'en', 'plugins/location/state', 'country', 'Country', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2230, 0, 'en', 'plugins/location/state', 'select_country', 'Select a country...', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2231, 0, 'en', 'plugins/location/state', 'state', 'State', '2021-11-16 08:42:34', '2021-11-16 08:42:51'),
(2255, 0, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2256, 0, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2257, 0, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2258, 0, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2259, 0, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2260, 0, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2261, 0, 'en', 'plugins/payment/payment', 'user', 'User', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2262, 0, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2263, 0, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2264, 0, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2265, 0, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2266, 0, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2267, 0, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2268, 0, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Fast and safe online payment via PayPal.', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2269, 0, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2270, 0, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2271, 0, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2272, 0, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2273, 0, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2274, 0, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2275, 0, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2276, 0, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2277, 0, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2278, 0, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2279, 0, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2280, 0, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2281, 0, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2282, 0, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2283, 0, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2284, 0, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2285, 0, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2286, 0, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2287, 0, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2288, 0, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2289, 0, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2290, 0, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2291, 0, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2292, 0, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2293, 0, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2294, 0, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2295, 0, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2296, 0, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2297, 0, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2298, 0, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2299, 0, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2300, 0, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2301, 0, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2302, 0, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2303, 0, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2304, 0, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2305, 0, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2306, 0, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2307, 0, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2308, 0, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2309, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2310, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2311, 0, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2312, 0, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2313, 0, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2314, 0, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2315, 0, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2316, 0, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2317, 0, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2318, 0, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2319, 0, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2320, 0, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2321, 0, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2322, 0, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2323, 0, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2324, 0, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2325, 0, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2326, 0, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2327, 0, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2328, 0, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2329, 0, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2330, 0, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2331, 0, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2332, 0, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2333, 0, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2334, 0, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2335, 0, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2336, 0, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2337, 0, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2338, 0, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2339, 0, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2340, 0, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2341, 0, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2342, 0, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2343, 0, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2344, 0, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2345, 0, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2346, 0, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2347, 0, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2348, 0, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2349, 0, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2350, 0, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2351, 0, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2352, 0, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2353, 0, 'en', 'plugins/payment/payment', 'refunds.description', 'Description', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2354, 0, 'en', 'plugins/payment/payment', 'refunds.refunded_at', 'Refunded at', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2355, 0, 'en', 'plugins/payment/payment', 'refunds.error_message', 'Error message', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2356, 0, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2357, 0, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2358, 0, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2359, 0, 'en', 'plugins/payment/payment', 'amount_refunded', 'Amount refunded', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2360, 0, 'en', 'plugins/payment/payment', 'amount_remaining', 'Amount remaining', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2361, 0, 'en', 'plugins/payment/payment', 'paid_at', 'Paid At', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2362, 0, 'en', 'plugins/payment/payment', 'invalid_settings', 'Settings for :name are invalid!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2363, 0, 'en', 'plugins/payment/payment', 'view_transaction', 'Transaction \":charge_id\"', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2445, 0, 'en', 'plugins/real-estate/account-property', 'draft_properties', 'Draft Properties', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2446, 0, 'en', 'plugins/real-estate/account-property', 'pending_properties', 'Pending Properties', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2447, 0, 'en', 'plugins/real-estate/account-property', 'published_properties', 'Published Properties', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2448, 0, 'en', 'plugins/real-estate/account-property', 'properties', 'Properties', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2449, 0, 'en', 'plugins/real-estate/account-property', 'write_property', 'Write a property', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2450, 0, 'en', 'plugins/real-estate/account', 'create', 'New account', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2451, 0, 'en', 'plugins/real-estate/account', 'edit', 'Edit account \":name\"', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2452, 0, 'en', 'plugins/real-estate/account', 'name', 'Accounts', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2453, 0, 'en', 'plugins/real-estate/account', 'form.email', 'Email', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2454, 0, 'en', 'plugins/real-estate/account', 'form.password', 'Password', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2455, 0, 'en', 'plugins/real-estate/account', 'form.password_confirmation', 'Password confirmation', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2456, 0, 'en', 'plugins/real-estate/account', 'form.change_password', 'Change password?', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2457, 0, 'en', 'plugins/real-estate/account', 'forgot_password', 'Forgot password', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2458, 0, 'en', 'plugins/real-estate/account', 'login', 'Login', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2459, 0, 'en', 'plugins/real-estate/account', 'buy_credits', 'Buy credits', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2460, 0, 'en', 'plugins/real-estate/account', 'credits', 'credits', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2461, 0, 'en', 'plugins/real-estate/account', 'account_settings', 'Account settings', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2462, 0, 'en', 'plugins/real-estate/account', 'update_profile_success', 'Update profile successfully!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2463, 0, 'en', 'plugins/real-estate/account', 'security', 'Security', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2464, 0, 'en', 'plugins/real-estate/account', 'packages', 'Packages', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2465, 0, 'en', 'plugins/real-estate/account', 'transactions', 'Transactions', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2466, 0, 'en', 'plugins/real-estate/account', 'subscribe_package', 'Subscribe package \":name\"', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2467, 0, 'en', 'plugins/real-estate/account', 'first_name', 'First Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2468, 0, 'en', 'plugins/real-estate/account', 'last_name', 'Last Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2469, 0, 'en', 'plugins/real-estate/account', 'username', 'Username', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2470, 0, 'en', 'plugins/real-estate/account', 'username_placeholder', 'Ex: john_smith', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2471, 0, 'en', 'plugins/real-estate/account', 'company', 'Company Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2472, 0, 'en', 'plugins/real-estate/account', 'company_placeholder', 'Company Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2473, 0, 'en', 'plugins/real-estate/account', 'phone', 'Phone', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2474, 0, 'en', 'plugins/real-estate/account', 'phone_placeholder', 'Phone', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2475, 0, 'en', 'plugins/real-estate/account', 'email_placeholder', 'Ex: example@gmail.com', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2476, 0, 'en', 'plugins/real-estate/account', 'dob', 'Date of birth', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2477, 0, 'en', 'plugins/real-estate/account', 'number_of_properties', 'Number of properties', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2478, 0, 'en', 'plugins/real-estate/category', 'name', 'Categories', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2479, 0, 'en', 'plugins/real-estate/category', 'create', 'New category', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2480, 0, 'en', 'plugins/real-estate/category', 'edit', 'Edit category', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2481, 0, 'en', 'plugins/real-estate/category', 'menu', 'Property categories', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2482, 0, 'en', 'plugins/real-estate/category', 'none', 'None', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2483, 0, 'en', 'plugins/real-estate/category', 'total_properties', 'Total properties', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2484, 0, 'en', 'plugins/real-estate/category', 'total_projects', 'Total projects', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2485, 0, 'en', 'plugins/real-estate/category', 'is_default', 'Is default', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2486, 0, 'en', 'plugins/real-estate/consult', 'name', 'Consults', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2487, 0, 'en', 'plugins/real-estate/consult', 'edit', 'View consult', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2488, 0, 'en', 'plugins/real-estate/consult', 'statuses.read', 'Read', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2489, 0, 'en', 'plugins/real-estate/consult', 'statuses.unread', 'Unread', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2490, 0, 'en', 'plugins/real-estate/consult', 'phone', 'Phone', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2491, 0, 'en', 'plugins/real-estate/consult', 'content', 'Details', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2492, 0, 'en', 'plugins/real-estate/consult', 'consult_information', 'Consult information', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2493, 0, 'en', 'plugins/real-estate/consult', 'email.header', 'Email', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2494, 0, 'en', 'plugins/real-estate/consult', 'email.title', 'New consult from your site', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2495, 0, 'en', 'plugins/real-estate/consult', 'email.success', 'Send consult successfully!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2496, 0, 'en', 'plugins/real-estate/consult', 'email.failed', 'Can\'t send request on this time, please try again later!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2497, 0, 'en', 'plugins/real-estate/consult', 'form.name.required', 'Name is required', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2498, 0, 'en', 'plugins/real-estate/consult', 'form.email.required', 'Email is required', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2499, 0, 'en', 'plugins/real-estate/consult', 'form.email.email', 'The email address is not valid', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2500, 0, 'en', 'plugins/real-estate/consult', 'form.content.required', 'Content is required', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2501, 0, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Please confirm you are not a robot before sending the message.', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2502, 0, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'You are not confirm robot yet.', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2503, 0, 'en', 'plugins/real-estate/consult', 'consult_sent_from', 'This consult information sent from', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2504, 0, 'en', 'plugins/real-estate/consult', 'time', 'Time', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2505, 0, 'en', 'plugins/real-estate/consult', 'consult_id', 'Consult ID', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2506, 0, 'en', 'plugins/real-estate/consult', 'form_name', 'Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2507, 0, 'en', 'plugins/real-estate/consult', 'form_email', 'Email', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2508, 0, 'en', 'plugins/real-estate/consult', 'form_phone', 'Phone', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2509, 0, 'en', 'plugins/real-estate/consult', 'mark_as_read', 'Mark as read', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2510, 0, 'en', 'plugins/real-estate/consult', 'mark_as_unread', 'Mark as unread', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2511, 0, 'en', 'plugins/real-estate/consult', 'new_consult_notice', 'You have <span class=\"bold\">:count</span> New Consults', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2512, 0, 'en', 'plugins/real-estate/consult', 'view_all', 'View all', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2513, 0, 'en', 'plugins/real-estate/consult', 'project', 'Project', '2021-11-16 08:42:35', '2021-11-16 08:42:51');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2514, 0, 'en', 'plugins/real-estate/consult', 'property', 'Property', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2515, 0, 'en', 'plugins/real-estate/currency', 'currencies', 'Currencies', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2516, 0, 'en', 'plugins/real-estate/currency', 'setting_description', 'List of currencies using on website', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2517, 0, 'en', 'plugins/real-estate/currency', 'name', 'Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2518, 0, 'en', 'plugins/real-estate/currency', 'symbol', 'Symbol', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2519, 0, 'en', 'plugins/real-estate/currency', 'number_of_decimals', 'Number of decimals', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2520, 0, 'en', 'plugins/real-estate/currency', 'exchange_rate', 'Exchange rate', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2521, 0, 'en', 'plugins/real-estate/currency', 'is_prefix_symbol', 'Position of symbol', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2522, 0, 'en', 'plugins/real-estate/currency', 'is_default', 'Is default?', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2523, 0, 'en', 'plugins/real-estate/currency', 'remove', 'Remove', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2524, 0, 'en', 'plugins/real-estate/currency', 'new_currency', 'Add a new currency', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2525, 0, 'en', 'plugins/real-estate/currency', 'save_settings', 'Save settings', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2526, 0, 'en', 'plugins/real-estate/currency', 'before_number', 'Before number', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2527, 0, 'en', 'plugins/real-estate/currency', 'after_number', 'After number', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2528, 0, 'en', 'plugins/real-estate/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2529, 0, 'en', 'plugins/real-estate/dashboard', 'joined_on', 'Joined :date', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2530, 0, 'en', 'plugins/real-estate/dashboard', 'dob', 'Born :date', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2531, 0, 'en', 'plugins/real-estate/dashboard', 'email', 'Email', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2532, 0, 'en', 'plugins/real-estate/dashboard', 'username', 'Username', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2533, 0, 'en', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/Username', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2534, 0, 'en', 'plugins/real-estate/dashboard', 'password', 'Password', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2535, 0, 'en', 'plugins/real-estate/dashboard', 'password-confirmation', 'Confirm Password', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2536, 0, 'en', 'plugins/real-estate/dashboard', 'remember-me', 'Remember Me', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2537, 0, 'en', 'plugins/real-estate/dashboard', 'login-title', 'Login', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2538, 0, 'en', 'plugins/real-estate/dashboard', 'login-cta', 'Login', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2539, 0, 'en', 'plugins/real-estate/dashboard', 'register-title', 'Register', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2540, 0, 'en', 'plugins/real-estate/dashboard', 'register-cta', 'Register', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2541, 0, 'en', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Forgot Your Password?', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2542, 0, 'en', 'plugins/real-estate/dashboard', 'name', 'Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2543, 0, 'en', 'plugins/real-estate/dashboard', 'reset-password-title', 'Reset Password', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2544, 0, 'en', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Reset Password', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2545, 0, 'en', 'plugins/real-estate/dashboard', 'cancel-link', 'Cancel', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2546, 0, 'en', 'plugins/real-estate/dashboard', 'logout-cta', 'Logout', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2547, 0, 'en', 'plugins/real-estate/dashboard', 'header_profile_link', 'Profile', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2548, 0, 'en', 'plugins/real-estate/dashboard', 'header_settings_link', 'Settings', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2549, 0, 'en', 'plugins/real-estate/dashboard', 'header_logout_link', 'Logout', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2550, 0, 'en', 'plugins/real-estate/dashboard', 'unknown_state', 'Unknown', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2551, 0, 'en', 'plugins/real-estate/dashboard', 'close', 'Close', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2552, 0, 'en', 'plugins/real-estate/dashboard', 'save', 'Save', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2553, 0, 'en', 'plugins/real-estate/dashboard', 'loading', 'Loading...', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2554, 0, 'en', 'plugins/real-estate/dashboard', 'new_image', 'New image', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2555, 0, 'en', 'plugins/real-estate/dashboard', 'change_profile_image', 'Change avatar', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2556, 0, 'en', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'Save cropped image failed!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2557, 0, 'en', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'Failed to crop image', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2558, 0, 'en', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'Failed to load data', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2559, 0, 'en', 'plugins/real-estate/dashboard', 'read_image_failed', 'Read image failed', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2560, 0, 'en', 'plugins/real-estate/dashboard', 'update_avatar_success', 'Update avatar successfully!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2561, 0, 'en', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Click on image to change avatar', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2562, 0, 'en', 'plugins/real-estate/dashboard', 'notices.error', 'Error!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2563, 0, 'en', 'plugins/real-estate/dashboard', 'notices.success', 'Success!', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2564, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_title', 'Personal settings', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2565, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_information', 'Account Information', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2566, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_security', 'Security', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2567, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_packages', 'Packages', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2568, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Transactions', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2569, 0, 'en', 'plugins/real-estate/dashboard', 'account_field_title', 'Account Information', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2570, 0, 'en', 'plugins/real-estate/dashboard', 'profile-picture', 'Profile picture', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2571, 0, 'en', 'plugins/real-estate/dashboard', 'uploading', 'Uploading...', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2572, 0, 'en', 'plugins/real-estate/dashboard', 'company', 'Company Name', '2021-11-16 08:42:35', '2021-11-16 08:42:51'),
(2573, 0, 'en', 'plugins/real-estate/dashboard', 'phone', 'Phone', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2574, 0, 'en', 'plugins/real-estate/dashboard', 'first_name', 'First name', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2575, 0, 'en', 'plugins/real-estate/dashboard', 'last_name', 'Last name', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2576, 0, 'en', 'plugins/real-estate/dashboard', 'description', 'Short description', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2577, 0, 'en', 'plugins/real-estate/dashboard', 'description_placeholder', 'Tell something about yourself...', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2578, 0, 'en', 'plugins/real-estate/dashboard', 'verified', 'Verified', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2579, 0, 'en', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Please verify email by link we sent to you.', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2580, 0, 'en', 'plugins/real-estate/dashboard', 'birthday', 'Birthday', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2581, 0, 'en', 'plugins/real-estate/dashboard', 'year_lc', 'year', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2582, 0, 'en', 'plugins/real-estate/dashboard', 'month_lc', 'month', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2583, 0, 'en', 'plugins/real-estate/dashboard', 'day_lc', 'day', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2584, 0, 'en', 'plugins/real-estate/dashboard', 'gender', 'Gender', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2585, 0, 'en', 'plugins/real-estate/dashboard', 'gender_male', 'Male', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2586, 0, 'en', 'plugins/real-estate/dashboard', 'gender_female', 'Female', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2587, 0, 'en', 'plugins/real-estate/dashboard', 'gender_other', 'Other', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2588, 0, 'en', 'plugins/real-estate/dashboard', 'security_title', 'Security', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2589, 0, 'en', 'plugins/real-estate/dashboard', 'packages_title', 'Packages', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2590, 0, 'en', 'plugins/real-estate/dashboard', 'transactions_title', 'Transactions', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2591, 0, 'en', 'plugins/real-estate/dashboard', 'current_password', 'Current password', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2592, 0, 'en', 'plugins/real-estate/dashboard', 'password_new', 'New password', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2593, 0, 'en', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'Confirmation password', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2594, 0, 'en', 'plugins/real-estate/dashboard', 'password_update_btn', 'Update password', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2595, 0, 'en', 'plugins/real-estate/dashboard', 'activity_logs', 'Activity Logs', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2596, 0, 'en', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2597, 0, 'en', 'plugins/real-estate/dashboard', 'no_activity_logs', 'You have no activity logs yet', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2598, 0, 'en', 'plugins/real-estate/dashboard', 'actions.create_property', 'You have created property \":name\"', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2599, 0, 'en', 'plugins/real-estate/dashboard', 'actions.update_property', 'You have updated property \":name\"', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2600, 0, 'en', 'plugins/real-estate/dashboard', 'actions.delete_property', 'You have deleted property \":name\"', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2601, 0, 'en', 'plugins/real-estate/dashboard', 'actions.update_setting', 'You have updated your settings', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2602, 0, 'en', 'plugins/real-estate/dashboard', 'actions.update_security', 'You have updated your security settings', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2603, 0, 'en', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Your property \":name\" is updated by administrator', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2604, 0, 'en', 'plugins/real-estate/dashboard', 'actions.changed_avatar', 'You have changed your avatar', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2605, 0, 'en', 'plugins/real-estate/dashboard', 'load_more', 'Load more', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2606, 0, 'en', 'plugins/real-estate/dashboard', 'loading_more', 'Loading...', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2607, 0, 'en', 'plugins/real-estate/dashboard', 'back-to-login', 'Back to login page', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2608, 0, 'en', 'plugins/real-estate/dashboard', 'no_transactions', 'No transactions', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2609, 0, 'en', 'plugins/real-estate/dashboard', 'approved_properties', 'Approved properties', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2610, 0, 'en', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'Pending approve properties', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2611, 0, 'en', 'plugins/real-estate/dashboard', 'rejected_properties', 'Rejected properties', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2612, 0, 'en', 'plugins/real-estate/dashboard', 'your_credits', 'Your Credits', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2613, 0, 'en', 'plugins/real-estate/dashboard', 'credits', 'credits', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2614, 0, 'en', 'plugins/real-estate/dashboard', 'per_post', 'per post', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2615, 0, 'en', 'plugins/real-estate/dashboard', 'free', 'Free', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2616, 0, 'en', 'plugins/real-estate/dashboard', 'posts', 'post(s)', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2617, 0, 'en', 'plugins/real-estate/dashboard', 'total', 'Total', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2618, 0, 'en', 'plugins/real-estate/dashboard', 'purchase', 'Purchase', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2619, 0, 'en', 'plugins/real-estate/dashboard', 'select_facility', 'Select facility', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2620, 0, 'en', 'plugins/real-estate/dashboard', 'distance', 'Distance (Km)', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2621, 0, 'en', 'plugins/real-estate/dashboard', 'add_new', 'Add new', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2622, 0, 'en', 'plugins/real-estate/dashboard', 'resend', 'Resend', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2623, 0, 'en', 'plugins/real-estate/facility', 'name', 'Facilities', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2624, 0, 'en', 'plugins/real-estate/facility', 'create', 'New facility', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2625, 0, 'en', 'plugins/real-estate/facility', 'edit', 'Edit facility', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2626, 0, 'en', 'plugins/real-estate/feature', 'name', 'Features', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2627, 0, 'en', 'plugins/real-estate/feature', 'create', 'New feature', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2628, 0, 'en', 'plugins/real-estate/feature', 'edit', 'Edit feature', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2629, 0, 'en', 'plugins/real-estate/feature', 'messages.request.name_required', 'Name is required', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2630, 0, 'en', 'plugins/real-estate/feature', 'form.help_block', 'Property feature information', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2631, 0, 'en', 'plugins/real-estate/feature', 'form.name', 'Title', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2632, 0, 'en', 'plugins/real-estate/feature', 'form.icon', 'Icon', '2021-11-16 08:42:36', '2021-11-16 08:42:51'),
(2633, 0, 'en', 'plugins/real-estate/investor', 'name', 'Investors', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2634, 0, 'en', 'plugins/real-estate/investor', 'create', 'New investor', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2635, 0, 'en', 'plugins/real-estate/investor', 'edit', 'Edit investor', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2636, 0, 'en', 'plugins/real-estate/package', 'name', 'Packages', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2637, 0, 'en', 'plugins/real-estate/package', 'create', 'New package', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2638, 0, 'en', 'plugins/real-estate/package', 'edit', 'Edit package', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2639, 0, 'en', 'plugins/real-estate/package', 'price', 'Price', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2640, 0, 'en', 'plugins/real-estate/package', 'currency', 'Currency', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2641, 0, 'en', 'plugins/real-estate/package', 'percent_save', 'Percent save', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2642, 0, 'en', 'plugins/real-estate/package', 'number_of_listings', 'Number of listings', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2643, 0, 'en', 'plugins/real-estate/package', 'add_credit_success', 'Add credit successfully!', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2644, 0, 'en', 'plugins/real-estate/package', 'setup_payment_methods', 'Please setup payment methods (PayPal, Stripe, COD, Bank transfer)', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2645, 0, 'en', 'plugins/real-estate/package', 'add_credit_warning', 'Please add your credit to create your own posts here:', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2646, 0, 'en', 'plugins/real-estate/package', 'add_credit', 'Add credit', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2647, 0, 'en', 'plugins/real-estate/package', 'account_limit', 'Limit purchase by account', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2648, 0, 'en', 'plugins/real-estate/package', 'account_limit_placeholder', 'An account can purchase x times', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2649, 0, 'en', 'plugins/real-estate/package', 'subscribe_package', 'Subscribe package', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2650, 0, 'en', 'plugins/real-estate/package', 'add_credit_alert', 'Please add your credit to create your own posts.', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2651, 0, 'en', 'plugins/real-estate/project', 'name', 'Projects', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2652, 0, 'en', 'plugins/real-estate/project', 'create', 'New project', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2653, 0, 'en', 'plugins/real-estate/project', 'edit', 'Edit project', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2654, 0, 'en', 'plugins/real-estate/project', 'form.general_info', 'General information', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2655, 0, 'en', 'plugins/real-estate/project', 'form.name', 'Name', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2656, 0, 'en', 'plugins/real-estate/project', 'form.description', 'Description', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2657, 0, 'en', 'plugins/real-estate/project', 'form.basic_info', 'Basic information', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2658, 0, 'en', 'plugins/real-estate/project', 'form.location', 'Location', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2659, 0, 'en', 'plugins/real-estate/project', 'form.investor', 'Investor', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2660, 0, 'en', 'plugins/real-estate/project', 'form.number_block', 'Number blocks', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2661, 0, 'en', 'plugins/real-estate/project', 'form.number_floor', 'Number floors', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2662, 0, 'en', 'plugins/real-estate/project', 'form.number_flat', 'Number flats', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2663, 0, 'en', 'plugins/real-estate/project', 'form.date_finish', 'Finish date', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2664, 0, 'en', 'plugins/real-estate/project', 'form.date_sell', 'Open sell date', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2665, 0, 'en', 'plugins/real-estate/project', 'form.images', 'Images', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2666, 0, 'en', 'plugins/real-estate/project', 'form.price_from', 'Lowest price', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2667, 0, 'en', 'plugins/real-estate/project', 'form.price_to', 'Max price', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2668, 0, 'en', 'plugins/real-estate/project', 'form.currency', 'Currency', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2669, 0, 'en', 'plugins/real-estate/project', 'form.city', 'City', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2670, 0, 'en', 'plugins/real-estate/project', 'form.category', 'Category', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2671, 0, 'en', 'plugins/real-estate/project', 'form.latitude', 'Latitude', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2672, 0, 'en', 'plugins/real-estate/project', 'form.latitude_helper', 'Go here to get Latitude from address.', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2673, 0, 'en', 'plugins/real-estate/project', 'form.longitude', 'Longitude', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2674, 0, 'en', 'plugins/real-estate/project', 'form.longitude_helper', 'Go here to get Longitude from address.', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2675, 0, 'en', 'plugins/real-estate/project', 'form.categories', 'Categories', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2676, 0, 'en', 'plugins/real-estate/project', 'statuses.not_available', 'Not available', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2677, 0, 'en', 'plugins/real-estate/project', 'statuses.pre_sale', 'Preparing selling', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2678, 0, 'en', 'plugins/real-estate/project', 'statuses.selling', 'Selling', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2679, 0, 'en', 'plugins/real-estate/project', 'statuses.sold', 'Sold', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2680, 0, 'en', 'plugins/real-estate/project', 'statuses.building', 'Building', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2681, 0, 'en', 'plugins/real-estate/project', 'distance_key', 'Distance key between facilities', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2682, 0, 'en', 'plugins/real-estate/project', 'select_investor', 'Select an investor...', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2683, 0, 'en', 'plugins/real-estate/property', 'name', 'Properties', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2684, 0, 'en', 'plugins/real-estate/property', 'create', 'New property', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2685, 0, 'en', 'plugins/real-estate/property', 'edit', 'Edit property', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2686, 0, 'en', 'plugins/real-estate/property', 'form.main_info', 'General information', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2687, 0, 'en', 'plugins/real-estate/property', 'form.basic_info', 'Basic information', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2688, 0, 'en', 'plugins/real-estate/property', 'form.name', 'Title', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2689, 0, 'en', 'plugins/real-estate/property', 'form.type', 'Type', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2690, 0, 'en', 'plugins/real-estate/property', 'form.images', 'Images', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2691, 0, 'en', 'plugins/real-estate/property', 'form.location', 'Property location', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2692, 0, 'en', 'plugins/real-estate/property', 'form.number_bedroom', 'Number bedrooms', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2693, 0, 'en', 'plugins/real-estate/property', 'form.number_bathroom', 'Number bathrooms', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2694, 0, 'en', 'plugins/real-estate/property', 'form.number_floor', 'Number floors', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2695, 0, 'en', 'plugins/real-estate/property', 'form.square', 'Square :unit', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2696, 0, 'en', 'plugins/real-estate/property', 'form.price', 'Price', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2697, 0, 'en', 'plugins/real-estate/property', 'form.features', 'Features', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2698, 0, 'en', 'plugins/real-estate/property', 'form.project', 'Project', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2699, 0, 'en', 'plugins/real-estate/property', 'form.date', 'Date information', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2700, 0, 'en', 'plugins/real-estate/property', 'form.currency', 'Currency', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2701, 0, 'en', 'plugins/real-estate/property', 'form.city', 'City', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2702, 0, 'en', 'plugins/real-estate/property', 'form.period', 'Period', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2703, 0, 'en', 'plugins/real-estate/property', 'form.category', 'Category', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2704, 0, 'en', 'plugins/real-estate/property', 'form.latitude', 'Latitude', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2705, 0, 'en', 'plugins/real-estate/property', 'form.latitude_helper', 'Go here to get Latitude from address.', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2706, 0, 'en', 'plugins/real-estate/property', 'form.longitude', 'Longitude', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2707, 0, 'en', 'plugins/real-estate/property', 'form.longitude_helper', 'Go here to get Longitude from address.', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2708, 0, 'en', 'plugins/real-estate/property', 'form.categories', 'Categories', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2709, 0, 'en', 'plugins/real-estate/property', 'statuses.not_available', 'Not available', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2710, 0, 'en', 'plugins/real-estate/property', 'statuses.pre_sale', 'Preparing selling', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2711, 0, 'en', 'plugins/real-estate/property', 'statuses.selling', 'Selling', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2712, 0, 'en', 'plugins/real-estate/property', 'statuses.sold', 'Sold', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2713, 0, 'en', 'plugins/real-estate/property', 'statuses.renting', 'Renting', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2714, 0, 'en', 'plugins/real-estate/property', 'statuses.rented', 'Rented', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2715, 0, 'en', 'plugins/real-estate/property', 'statuses.building', 'Building', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2716, 0, 'en', 'plugins/real-estate/property', 'types.sale', 'Sale', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2717, 0, 'en', 'plugins/real-estate/property', 'types.rent', 'Rent', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2718, 0, 'en', 'plugins/real-estate/property', 'periods.day', 'Day', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2719, 0, 'en', 'plugins/real-estate/property', 'periods.month', 'Month', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2720, 0, 'en', 'plugins/real-estate/property', 'periods.year', 'Year', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2721, 0, 'en', 'plugins/real-estate/property', 'moderation_status', 'Moderation status', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2722, 0, 'en', 'plugins/real-estate/property', 'moderation-statuses.pending', 'Pending', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2723, 0, 'en', 'plugins/real-estate/property', 'moderation-statuses.approved', 'Approved', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2724, 0, 'en', 'plugins/real-estate/property', 'moderation-statuses.rejected', 'Rejected', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2725, 0, 'en', 'plugins/real-estate/property', 'renew_notice', 'Renew automatically (you will be charged again in :days days)?', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2726, 0, 'en', 'plugins/real-estate/property', 'distance_key', 'Distance key between facilities', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2727, 0, 'en', 'plugins/real-estate/property', 'never_expired', 'Never expired?', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2728, 0, 'en', 'plugins/real-estate/property', 'select_project', 'Select a project...', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2729, 0, 'en', 'plugins/real-estate/property', 'account', 'Account', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2730, 0, 'en', 'plugins/real-estate/property', 'select_account', 'Select an account..', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2731, 0, 'en', 'plugins/real-estate/property', 'expire_date', 'Expire date', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2732, 0, 'en', 'plugins/real-estate/property', 'never_expired_label', 'Never expired', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2733, 0, 'en', 'plugins/real-estate/real-estate', 'name', 'Real Estate', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2734, 0, 'en', 'plugins/real-estate/real-estate', 'settings', 'Settings', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2735, 0, 'en', 'plugins/real-estate/settings', 'title', 'Accounts', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2736, 0, 'en', 'plugins/real-estate/settings', 'description', 'Settings for members', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2737, 0, 'en', 'plugins/real-estate/settings', 'verify_account_email', 'Verify account\'s email?', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2738, 0, 'en', 'plugins/real-estate/settings', 'square_unit', 'Unit of square', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2739, 0, 'en', 'plugins/real-estate/settings', 'square_unit_none', 'None', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2740, 0, 'en', 'plugins/real-estate/settings', 'square_unit_meter', 'Square Meter(m²)', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2741, 0, 'en', 'plugins/real-estate/settings', 'square_unit_feet', 'Square Feet(ft2)', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2742, 0, 'en', 'plugins/real-estate/settings', 'general', 'General settings', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2743, 0, 'en', 'plugins/real-estate/settings', 'general_description', 'Basic settings for Real Estate', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2744, 0, 'en', 'plugins/real-estate/settings', 'real_estate_convert_money_to_text_enabled', 'Convert money to text if it is too big?', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2745, 0, 'en', 'plugins/real-estate/settings', 'thousands_separator', 'Thousands separator', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2746, 0, 'en', 'plugins/real-estate/settings', 'decimal_separator', 'Decimal separator', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2747, 0, 'en', 'plugins/real-estate/settings', 'separator_period', 'Period (.)', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2748, 0, 'en', 'plugins/real-estate/settings', 'separator_comma', 'Comma (,)', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2749, 0, 'en', 'plugins/real-estate/settings', 'separator_space', 'Space ( )', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2750, 0, 'en', 'plugins/real-estate/settings', 'real_estate_enabled_register', 'Allow visitors to register account and post their properties?', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2751, 0, 'en', 'plugins/real-estate/settings', 'email.title', 'Real Estate', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2752, 0, 'en', 'plugins/real-estate/settings', 'email.description', 'Real estate email configuration', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2753, 0, 'en', 'plugins/real-estate/settings', 'property_expired_after_days', 'Property Expired Time (days)', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2754, 0, 'en', 'plugins/real-estate/settings', 'enable_post_approval', 'Enable post approval?', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2755, 0, 'en', 'plugins/real-estate/settings', 'enable_credits_system', 'Enable credits system (agents need to buy credits to post their properties)', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2756, 0, 'en', 'plugins/real-estate/transaction', 'types.add', 'Add', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(2757, 0, 'en', 'plugins/real-estate/transaction', 'types.remove', 'Remove', '2021-11-16 08:42:36', '2021-11-16 08:42:52'),
(3007, 0, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3008, 0, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3009, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3010, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3011, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3012, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3013, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3014, 0, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3015, 0, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3016, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3017, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3018, 0, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3019, 0, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3020, 0, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3021, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3022, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3023, 0, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3024, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3025, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3026, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3027, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3028, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3029, 0, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3030, 0, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3031, 0, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3032, 0, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3033, 0, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3034, 0, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3035, 0, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3036, 0, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3037, 0, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3038, 0, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3039, 0, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3040, 0, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3041, 0, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3042, 0, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3043, 0, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3044, 0, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3045, 0, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3046, 0, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3047, 0, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3048, 0, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3049, 0, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3050, 0, 'en', 'plugins/translation/translation', 'to', 'to', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3051, 0, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3052, 0, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3053, 0, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3054, 0, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3055, 0, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3056, 0, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3057, 0, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3058, 0, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3059, 0, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3060, 0, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3061, 0, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3062, 0, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3063, 0, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3064, 0, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3065, 0, 'en', 'plugins/translation/translation', 'download', 'Download', '2021-11-16 08:42:38', '2021-11-16 08:42:52'),
(3066, 0, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2021-11-16 08:42:38', '2021-11-16 08:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$KgoSOMzybWZRhFlWztjor.eorottkCvC2iqXdBhnnt9qCWiLNtQii', '01Ra0BPKKM1ptT6tPaEoCiMgLVb5MmDQeF6YPiWhSrFUPfYomSp2S45ebkyg', '2021-06-11 20:56:49', '2021-12-07 22:13:39', NULL, '2021-12-07 22:13:39', 'System', 'Admin', 'botble', 909, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin-locale', 'en', 1, '2019-11-17 20:19:14', '2019-11-30 19:25:04'),
(2, 'admin-theme', 'default', 1, '2021-11-21 01:38:31', '2021-11-21 01:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(24, 'CategoriesWidget', 'primary_sidebar', 'flex-home', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}', '2019-11-18 03:50:44', '2019-11-18 03:50:44'),
(25, 'RecentPostsWidget', 'primary_sidebar', 'flex-home', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}', '2019-11-18 03:50:45', '2019-11-18 03:50:45'),
(30, 'CategoriesWidget', 'primary_sidebar', 'flex-home-vi', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Chuy\\u00ean m\\u1ee5c\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(31, 'RecentPostsWidget', 'primary_sidebar', 'flex-home-vi', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":\"5\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(41, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Gi\\u1edbi thi\\u1ec7u\",\"menu_id\":\"ve-chung-toi\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(42, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\" Th\\u00f4ng tin th\\u00eam\",\"menu_id\":\"thong-tin-them\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(43, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Tin t\\u1ee9c\",\"menu_id\":\"tin-tuc\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(47, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}', '2021-11-26 23:42:32', '2021-11-26 23:42:32'),
(48, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"More information\",\"menu_id\":\"more-information\"}', '2021-11-26 23:42:32', '2021-11-26 23:42:32'),
(49, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Location\",\"menu_id\":\"location\"}', '2021-11-26 23:42:32', '2021-11-26 23:42:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`reference_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `re_accounts`
--
ALTER TABLE `re_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`),
  ADD UNIQUE KEY `re_accounts_username_unique` (`username`);

--
-- Indexes for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_password_resets`
--
ALTER TABLE `re_account_password_resets`
  ADD KEY `vendor_password_resets_email_index` (`email`),
  ADD KEY `vendor_password_resets_token_index` (`token`);

--
-- Indexes for table `re_categories`
--
ALTER TABLE `re_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_consults`
--
ALTER TABLE `re_consults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_currencies`
--
ALTER TABLE `re_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities`
--
ALTER TABLE `re_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_features`
--
ALTER TABLE `re_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_investors`
--
ALTER TABLE `re_investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_packages`
--
ALTER TABLE `re_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_projects`
--
ALTER TABLE `re_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_project_categories`
--
ALTER TABLE `re_project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_properties`
--
ALTER TABLE `re_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_property_categories`
--
ALTER TABLE `re_property_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_tags`
--
ALTER TABLE `re_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1084;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `re_accounts`
--
ALTER TABLE `re_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_categories`
--
ALTER TABLE `re_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `re_consults`
--
ALTER TABLE `re_consults`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_currencies`
--
ALTER TABLE `re_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `re_facilities`
--
ALTER TABLE `re_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4898;

--
-- AUTO_INCREMENT for table `re_features`
--
ALTER TABLE `re_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `re_investors`
--
ALTER TABLE `re_investors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `re_packages`
--
ALTER TABLE `re_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_projects`
--
ALTER TABLE `re_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `re_project_categories`
--
ALTER TABLE `re_project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `re_properties`
--
ALTER TABLE `re_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `re_property_categories`
--
ALTER TABLE `re_property_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `re_tags`
--
ALTER TABLE `re_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3169;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
