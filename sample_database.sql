-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 02:29 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mapayroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT '0',
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `scope`, `created_at`, `updated_at`) VALUES
(1, '*', 'All abilities', NULL, '*', 0, NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(2, 'view', 'View farmers', NULL, 'App\\Farmer', 0, NULL, '2018-07-29 20:07:27', '2018-07-29 20:07:27'),
(3, 'create', 'Create farmers', NULL, 'App\\Farmer', 0, NULL, '2018-07-29 20:07:27', '2018-07-29 20:07:27'),
(4, 'edit', 'Edit farmers', NULL, 'App\\Farmer', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(5, 'view', 'View purchases', NULL, 'App\\Purchase', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(6, 'create', 'Create purchases', NULL, 'App\\Purchase', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(7, 'edit', 'Edit purchases', NULL, 'App\\Purchase', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(8, 'view', 'View blocks', NULL, 'App\\Block', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(9, 'create', 'Create blocks', NULL, 'App\\Block', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(10, 'edit', 'Edit blocks', NULL, 'App\\Block', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(11, 'view', 'View farms', NULL, 'App\\Farm', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(12, 'create', 'Create farms', NULL, 'App\\Farm', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(13, 'edit', 'Edit farms', NULL, 'App\\Farm', 0, NULL, '2018-07-29 20:07:28', '2018-07-29 20:07:28'),
(14, 'view', 'View products', NULL, 'App\\Product', 0, NULL, '2018-07-29 20:08:49', '2018-07-29 20:08:49'),
(15, 'create', 'Create products', NULL, 'App\\Product', 0, NULL, '2018-07-29 20:08:49', '2018-07-29 20:08:49'),
(16, 'edit', 'Edit products', NULL, 'App\\Product', 0, NULL, '2018-07-29 20:08:49', '2018-07-29 20:08:49'),
(17, 'view', 'View product categories', NULL, 'App\\ProductCategory', 0, NULL, '2018-07-29 20:08:50', '2018-07-29 20:08:50'),
(18, 'create', 'Create product categories', NULL, 'App\\ProductCategory', 0, NULL, '2018-07-29 20:08:50', '2018-07-29 20:08:50'),
(19, 'edit', 'Edit product categories', NULL, 'App\\ProductCategory', 0, NULL, '2018-07-29 20:08:50', '2018-07-29 20:08:50'),
(20, 'delete', 'Delete farmers', NULL, 'App\\Farmer', 0, NULL, '2018-08-29 08:39:51', '2018-08-29 08:39:51'),
(21, 'delete', 'Delete purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:39:52', '2018-08-29 08:39:52'),
(22, 'farm_weight_view', 'Farm weight view purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:39:52', '2018-08-29 08:39:52'),
(23, 'farm_weight_create', 'Farm weight create purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:39:52', '2018-08-29 08:39:52'),
(24, 'farm_weight_edit', 'Farm weight edit purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:39:52', '2018-08-29 08:39:52'),
(25, 'farm_weight_delete', 'Farm weight delete purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:39:52', '2018-08-29 08:39:52'),
(26, 'delete', 'Delete blocks', NULL, 'App\\Block', 0, NULL, '2018-08-29 08:39:52', '2018-08-29 08:39:52'),
(27, 'view', 'View batches', NULL, 'App\\Batch', 0, NULL, '2018-08-29 08:39:53', '2018-08-29 08:39:53'),
(28, 'create', 'Create batches', NULL, 'App\\Batch', 0, NULL, '2018-08-29 08:39:53', '2018-08-29 08:39:53'),
(29, 'edit', 'Edit batches', NULL, 'App\\Batch', 0, NULL, '2018-08-29 08:39:53', '2018-08-29 08:39:53'),
(30, 'delete', 'Delete batches', NULL, 'App\\Batch', 0, NULL, '2018-08-29 08:39:53', '2018-08-29 08:39:53'),
(31, 'delete', 'Delete farms', NULL, 'App\\Farm', 0, NULL, '2018-08-29 08:39:53', '2018-08-29 08:39:53'),
(32, 'delete', 'Delete products', NULL, 'App\\Product', 0, NULL, '2018-08-29 08:45:14', '2018-08-29 08:45:14'),
(33, 'delete', 'Delete product categories', NULL, 'App\\ProductCategory', 0, NULL, '2018-08-29 08:45:15', '2018-08-29 08:45:15'),
(34, 'packing_house_weight_view', 'Packing house weight view purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:45:15', '2018-08-29 08:45:15'),
(35, 'packing_house_weight_create', 'Packing house weight create purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:45:15', '2018-08-29 08:45:15'),
(36, 'packing_house_weight_edit', 'Packing house weight edit purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:45:15', '2018-08-29 08:45:15'),
(37, 'packing_house_weight_delete', 'Packing house weight delete purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:45:16', '2018-08-29 08:45:16'),
(38, 'graded_weight_view', 'Graded weight view purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:45:16', '2018-08-29 08:45:16'),
(39, 'graded_weight_create', 'Graded weight create purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:45:16', '2018-08-29 08:45:16'),
(40, 'graded_weight_edit', 'Graded weight edit purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:45:16', '2018-08-29 08:45:16'),
(41, 'graded_weight_delete', 'Graded weight delete purchases', NULL, 'App\\Purchase', 0, NULL, '2018-08-29 08:45:16', '2018-08-29 08:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `street`, `address`, `country`, `state`, `postal_code`, `addressable_type`, `addressable_id`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Kichangani St.', NULL, 'Tanzania', 'Arusha', NULL, 'App\\Farmer', 1, NULL, '2018-07-29 11:02:59', '2018-07-29 11:02:59'),
(2, '', NULL, 'Tanzania', 'Arusha', NULL, 'App\\Farm', 1, NULL, '2018-07-29 11:03:18', '2018-07-29 11:03:18'),
(3, 'Mtendeni St.', NULL, 'Tanzania', 'Arusha', NULL, 'App\\Farmer', 2, NULL, '2018-07-29 12:19:07', '2018-07-29 12:19:07'),
(4, '', NULL, 'Tanzania', 'Arusha', NULL, 'App\\Farm', 2, NULL, '2018-07-29 12:20:07', '2018-07-29 12:20:07'),
(5, 'Tanga', 'Tanga', 'Tanzania', 'Tanga', NULL, 'App\\User', 4, NULL, '2018-07-29 20:10:46', '2018-07-29 20:10:46'),
(6, 'TTa', '', 'Tanzania', 'Tanga', '255', 'App\\User', 5, NULL, '2018-07-29 20:12:54', '2018-07-29 20:12:54'),
(7, 'adrre', 'P o box 456', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 3, NULL, '2018-07-30 16:13:47', '2018-07-30 16:13:47'),
(8, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 3, NULL, '2018-07-30 16:15:54', '2018-07-30 16:15:54'),
(9, 'Lubuveg', '', 'Tanzania', 'Tanga', NULL, 'App\\User', 6, NULL, '2018-07-30 16:49:34', '2018-08-29 08:40:12'),
(10, 'Lukoveg', '', 'Tanzania', 'Tanga', NULL, 'App\\User', 7, NULL, '2018-07-30 16:52:17', '2018-07-30 16:52:17'),
(11, 'Lubuveg', '', 'Tanzania', 'Tanga', NULL, 'App\\User', 8, NULL, '2018-07-30 16:54:43', '2018-07-30 16:54:43'),
(12, 'Lukoveg', '', 'Tanzania', 'Tanga', NULL, 'App\\User', 9, NULL, '2018-07-30 16:57:12', '2018-07-30 16:57:12'),
(13, 'Lubuveg', '', 'Tanzania', 'Tanga', NULL, 'App\\User', 10, NULL, '2018-07-30 16:59:45', '2018-07-30 16:59:45'),
(14, 'lukoveg', '', 'Tanzania', 'Tanga', NULL, 'App\\User', 11, NULL, '2018-07-30 17:01:14', '2018-07-30 17:01:14'),
(15, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 4, NULL, '2018-07-30 18:19:20', '2018-07-30 18:19:20'),
(16, 'SLP 343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 5, NULL, '2018-07-30 18:20:46', '2018-07-30 18:20:46'),
(17, 'fra', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 6, NULL, '2018-07-30 18:22:37', '2018-07-30 18:22:37'),
(18, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 4, NULL, '2018-07-30 18:31:55', '2018-07-30 18:31:55'),
(19, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 5, NULL, '2018-07-30 18:35:15', '2018-07-30 18:35:15'),
(20, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 6, NULL, '2018-07-30 18:38:03', '2018-07-30 18:38:03'),
(21, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 7, NULL, '2018-07-30 18:41:04', '2018-07-30 18:41:04'),
(22, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 8, NULL, '2018-07-30 18:45:44', '2018-07-30 18:45:44'),
(23, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 9, NULL, '2018-07-30 18:46:48', '2018-07-30 18:46:48'),
(24, '', NULL, 'Tanzania', 'Pwani', NULL, 'App\\Farm', 10, NULL, '2018-07-30 18:53:05', '2018-07-30 18:53:05'),
(25, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 7, NULL, '2018-07-31 10:36:37', '2018-07-31 10:36:37'),
(26, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 11, NULL, '2018-07-31 10:38:11', '2018-07-31 10:38:11'),
(27, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 8, NULL, '2018-07-31 10:42:30', '2018-07-31 10:42:30'),
(28, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 12, NULL, '2018-07-31 10:43:30', '2018-07-31 10:43:30'),
(29, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 9, NULL, '2018-07-31 10:46:31', '2018-07-31 10:46:31'),
(30, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 13, NULL, '2018-07-31 10:47:22', '2018-07-31 10:47:22'),
(31, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 10, NULL, '2018-07-31 10:50:10', '2018-07-31 10:50:10'),
(32, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 11, NULL, '2018-07-31 10:50:11', '2018-07-31 10:50:11'),
(33, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 14, NULL, '2018-07-31 10:52:34', '2018-07-31 10:52:34'),
(34, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 12, NULL, '2018-07-31 10:57:58', '2018-07-31 10:57:58'),
(35, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 15, NULL, '2018-07-31 10:59:09', '2018-07-31 10:59:09'),
(36, 'Korogwe', '556', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 13, NULL, '2018-08-01 14:40:49', '2018-08-01 14:40:49'),
(37, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 16, NULL, '2018-08-01 14:43:22', '2018-08-01 14:43:22'),
(38, 'Dar', '', 'Tanzania', 'Dar es Salaam', '255', 'App\\User', 12, NULL, '2018-08-02 13:40:27', '2018-08-02 13:40:27'),
(39, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 14, NULL, '2018-08-02 22:40:32', '2018-08-02 22:40:32'),
(40, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 17, NULL, '2018-08-02 22:41:30', '2018-08-02 22:41:30'),
(41, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 15, NULL, '2018-08-02 22:51:58', '2018-08-02 22:51:58'),
(42, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 18, NULL, '2018-08-02 22:55:35', '2018-08-02 22:55:35'),
(43, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 16, NULL, '2018-08-02 23:05:44', '2018-08-02 23:05:44'),
(44, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 19, NULL, '2018-08-02 23:08:05', '2018-08-02 23:08:05'),
(45, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 17, NULL, '2018-08-02 23:11:01', '2018-08-02 23:11:01'),
(46, 'SLP 343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 18, NULL, '2018-08-02 23:26:25', '2018-08-02 23:26:25'),
(47, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 20, NULL, '2018-08-02 23:41:05', '2018-08-02 23:41:05'),
(48, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 21, NULL, '2018-08-02 23:44:39', '2018-08-02 23:44:39'),
(49, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 19, NULL, '2018-08-02 23:47:16', '2018-08-02 23:47:16'),
(50, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 22, NULL, '2018-08-02 23:47:54', '2018-08-02 23:47:54'),
(51, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 20, NULL, '2018-08-02 23:53:40', '2018-08-02 23:53:40'),
(52, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 23, NULL, '2018-08-02 23:54:54', '2018-08-02 23:54:54'),
(53, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 21, NULL, '2018-08-02 23:57:26', '2018-08-02 23:57:26'),
(54, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 24, NULL, '2018-08-02 23:58:16', '2018-08-02 23:58:16'),
(55, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 22, NULL, '2018-08-03 00:01:28', '2018-08-03 00:01:28'),
(56, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 25, NULL, '2018-08-03 00:02:01', '2018-08-03 00:02:01'),
(57, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 23, NULL, '2018-08-03 00:05:13', '2018-08-03 00:05:13'),
(58, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 26, NULL, '2018-08-03 00:05:52', '2018-08-03 00:05:52'),
(59, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 24, NULL, '2018-08-03 00:13:03', '2018-08-03 00:13:03'),
(60, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 27, NULL, '2018-08-03 00:13:56', '2018-08-03 00:13:56'),
(61, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 25, NULL, '2018-08-03 00:19:35', '2018-08-03 00:19:35'),
(62, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 28, NULL, '2018-08-03 00:20:24', '2018-08-03 00:20:24'),
(63, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 26, NULL, '2018-08-03 00:23:52', '2018-08-03 00:23:52'),
(64, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 29, NULL, '2018-08-03 00:25:08', '2018-08-03 00:25:08'),
(65, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 27, NULL, '2018-08-03 00:28:02', '2018-08-03 00:28:02'),
(66, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 30, NULL, '2018-08-03 00:28:42', '2018-08-03 00:28:42'),
(67, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 28, NULL, '2018-08-03 00:32:22', '2018-08-03 00:32:22'),
(68, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 31, NULL, '2018-08-03 00:33:59', '2018-08-03 00:33:59'),
(69, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 29, NULL, '2018-08-03 00:36:38', '2018-08-03 00:36:38'),
(70, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 32, NULL, '2018-08-03 00:41:22', '2018-08-03 00:41:22'),
(71, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 30, NULL, '2018-08-03 00:43:43', '2018-08-03 00:43:43'),
(72, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 33, NULL, '2018-08-03 00:48:18', '2018-08-03 00:48:18'),
(73, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 31, NULL, '2018-08-03 00:50:49', '2018-08-03 00:50:49'),
(74, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 34, NULL, '2018-08-03 00:51:22', '2018-08-03 00:51:22'),
(75, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 32, NULL, '2018-08-03 00:53:23', '2018-08-03 00:53:23'),
(76, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 35, NULL, '2018-08-03 00:55:24', '2018-08-03 00:55:24'),
(77, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 33, NULL, '2018-08-03 01:00:48', '2018-08-03 01:00:48'),
(78, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 36, NULL, '2018-08-03 01:02:41', '2018-08-03 01:02:41'),
(79, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 34, NULL, '2018-08-03 01:10:47', '2018-08-03 01:10:47'),
(80, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 37, NULL, '2018-08-03 01:11:24', '2018-08-03 01:11:24'),
(81, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 35, NULL, '2018-08-03 01:13:53', '2018-08-03 01:13:53'),
(82, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 38, NULL, '2018-08-03 01:14:39', '2018-08-03 01:14:39'),
(83, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 36, NULL, '2018-08-03 01:20:18', '2018-08-03 01:20:18'),
(84, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 37, NULL, '2018-08-03 01:22:12', '2018-08-03 01:22:12'),
(85, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 39, NULL, '2018-08-03 01:22:52', '2018-08-03 01:22:52'),
(86, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 38, NULL, '2018-08-03 14:25:47', '2018-08-03 14:25:47'),
(87, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 40, NULL, '2018-08-03 14:32:03', '2018-08-03 14:32:03'),
(88, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 39, NULL, '2018-08-03 14:51:33', '2018-08-03 14:51:33'),
(89, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 41, NULL, '2018-08-03 15:39:31', '2018-08-03 15:39:31'),
(90, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 40, NULL, '2018-08-03 15:41:43', '2018-08-03 15:41:43'),
(91, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 42, NULL, '2018-08-03 15:42:28', '2018-08-03 15:42:28'),
(92, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 41, NULL, '2018-08-03 15:45:40', '2018-08-03 15:45:40'),
(93, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 43, NULL, '2018-08-03 15:46:25', '2018-08-03 15:46:25'),
(94, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 42, NULL, '2018-08-03 15:48:14', '2018-08-03 15:48:14'),
(95, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 44, NULL, '2018-08-03 15:48:50', '2018-08-03 15:48:50'),
(96, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 43, NULL, '2018-08-03 15:50:45', '2018-08-03 15:50:45'),
(97, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 45, NULL, '2018-08-03 15:51:16', '2018-08-03 15:51:16'),
(98, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 44, NULL, '2018-08-03 15:54:07', '2018-08-03 15:54:07'),
(99, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 46, NULL, '2018-08-03 15:54:44', '2018-08-03 15:54:44'),
(100, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 45, NULL, '2018-08-03 15:56:37', '2018-08-03 15:56:37'),
(101, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 47, NULL, '2018-08-03 15:57:09', '2018-08-03 15:57:09'),
(102, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 46, NULL, '2018-08-03 15:58:53', '2018-08-03 15:58:53'),
(103, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 48, NULL, '2018-08-03 15:59:26', '2018-08-03 15:59:26'),
(104, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 47, NULL, '2018-08-03 16:01:25', '2018-08-03 16:01:25'),
(105, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 49, NULL, '2018-08-03 16:01:56', '2018-08-03 16:01:56'),
(106, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 48, NULL, '2018-08-03 16:03:48', '2018-08-03 16:03:48'),
(107, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 50, NULL, '2018-08-03 16:04:22', '2018-08-03 16:04:22'),
(108, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 49, NULL, '2018-08-03 16:06:27', '2018-08-03 16:06:27'),
(109, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 51, NULL, '2018-08-03 16:07:04', '2018-08-03 16:07:04'),
(110, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 50, NULL, '2018-08-03 16:09:25', '2018-08-03 16:09:25'),
(111, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 52, NULL, '2018-08-03 16:10:03', '2018-08-03 16:10:03'),
(112, '343', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 51, NULL, '2018-08-03 16:12:59', '2018-08-03 16:12:59'),
(113, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 53, NULL, '2018-08-03 16:13:31', '2018-08-03 16:13:31'),
(114, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 52, NULL, '2018-08-03 16:15:29', '2018-08-03 16:15:29'),
(115, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 54, NULL, '2018-08-03 16:16:02', '2018-08-03 16:16:02'),
(116, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 53, NULL, '2018-08-03 16:17:54', '2018-08-03 16:17:54'),
(117, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 55, NULL, '2018-08-03 16:20:58', '2018-08-03 16:20:58'),
(118, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 54, NULL, '2018-08-03 16:26:00', '2018-08-03 16:26:00'),
(119, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 56, NULL, '2018-08-03 16:26:36', '2018-08-03 16:26:36'),
(120, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 55, NULL, '2018-08-03 16:34:16', '2018-08-03 16:34:16'),
(121, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 57, NULL, '2018-08-03 16:34:55', '2018-08-03 16:34:55'),
(122, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 56, NULL, '2018-08-03 16:43:48', '2018-08-03 16:43:48'),
(123, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 58, NULL, '2018-08-03 16:44:31', '2018-08-03 16:44:31'),
(124, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 57, NULL, '2018-08-03 16:46:27', '2018-08-03 16:46:27'),
(125, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 59, NULL, '2018-08-03 16:46:59', '2018-08-03 16:46:59'),
(126, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 58, NULL, '2018-08-03 16:49:36', '2018-08-03 16:49:36'),
(127, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 60, NULL, '2018-08-03 16:50:13', '2018-08-03 16:50:13'),
(128, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 59, NULL, '2018-08-03 16:52:49', '2018-08-03 16:52:49'),
(129, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 61, NULL, '2018-08-03 16:53:40', '2018-08-03 16:53:40'),
(130, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 60, NULL, '2018-08-03 16:56:03', '2018-08-03 16:56:03'),
(131, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 62, NULL, '2018-08-03 16:56:43', '2018-08-03 16:56:43'),
(132, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 61, NULL, '2018-08-03 16:58:57', '2018-08-03 16:58:57'),
(133, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 63, NULL, '2018-08-03 16:59:59', '2018-08-03 16:59:59'),
(134, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 62, NULL, '2018-08-03 17:02:04', '2018-08-03 17:02:04'),
(135, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 64, NULL, '2018-08-03 17:02:46', '2018-08-03 17:02:46'),
(136, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 63, NULL, '2018-08-03 17:05:02', '2018-08-03 17:05:02'),
(137, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 65, NULL, '2018-08-03 17:05:41', '2018-08-03 17:05:41'),
(138, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 64, NULL, '2018-08-03 17:07:06', '2018-08-03 17:07:06'),
(139, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 66, NULL, '2018-08-03 17:07:53', '2018-08-03 17:07:53'),
(140, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 65, NULL, '2018-08-03 17:09:38', '2018-08-03 17:09:38'),
(141, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 67, NULL, '2018-08-03 17:10:17', '2018-08-03 17:10:17'),
(142, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 66, NULL, '2018-08-03 17:12:06', '2018-08-03 17:12:06'),
(143, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 68, NULL, '2018-08-03 17:12:45', '2018-08-03 17:12:45'),
(144, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 67, NULL, '2018-08-03 17:14:46', '2018-08-03 17:14:46'),
(145, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 69, NULL, '2018-08-03 17:15:25', '2018-08-03 17:15:25'),
(146, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 68, NULL, '2018-08-03 17:17:44', '2018-08-03 17:17:44'),
(147, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 70, NULL, '2018-08-03 17:18:28', '2018-08-03 17:18:28'),
(148, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 69, NULL, '2018-08-03 17:20:31', '2018-08-03 17:20:31'),
(149, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 71, NULL, '2018-08-03 17:21:04', '2018-08-03 17:21:04'),
(150, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 70, NULL, '2018-08-03 18:29:37', '2018-08-03 18:29:37'),
(151, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 72, NULL, '2018-08-03 18:30:19', '2018-08-03 18:30:19'),
(152, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 71, NULL, '2018-08-03 18:32:24', '2018-08-03 18:32:24'),
(153, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 73, NULL, '2018-08-03 18:32:58', '2018-08-03 18:32:58'),
(154, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 72, NULL, '2018-08-03 18:35:45', '2018-08-03 18:35:45'),
(155, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 74, NULL, '2018-08-03 18:36:27', '2018-08-03 18:36:27'),
(156, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 73, NULL, '2018-08-03 18:38:32', '2018-08-03 18:38:32'),
(157, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 75, NULL, '2018-08-03 18:39:41', '2018-08-03 18:39:41'),
(158, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 74, NULL, '2018-08-03 18:41:36', '2018-08-03 18:41:36'),
(159, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 76, NULL, '2018-08-03 18:42:17', '2018-08-03 18:42:17'),
(160, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 75, NULL, '2018-08-03 18:44:12', '2018-08-03 18:44:12'),
(161, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 77, NULL, '2018-08-03 18:44:44', '2018-08-03 18:44:44'),
(162, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 76, NULL, '2018-08-03 18:46:41', '2018-08-03 18:46:41'),
(163, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 78, NULL, '2018-08-03 18:47:11', '2018-08-03 18:47:11'),
(164, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 77, NULL, '2018-08-03 18:49:21', '2018-08-03 18:49:21'),
(165, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 79, NULL, '2018-08-03 18:49:56', '2018-08-03 18:49:56'),
(166, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 78, NULL, '2018-08-03 18:51:39', '2018-08-03 18:51:39'),
(167, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 80, NULL, '2018-08-03 18:52:10', '2018-08-03 18:52:10'),
(168, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 79, NULL, '2018-08-03 18:54:07', '2018-08-03 18:54:07'),
(169, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 81, NULL, '2018-08-03 18:54:59', '2018-08-03 18:54:59'),
(170, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 80, NULL, '2018-08-03 18:59:11', '2018-08-03 18:59:11'),
(171, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 82, NULL, '2018-08-03 18:59:59', '2018-08-03 18:59:59'),
(172, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 81, NULL, '2018-08-03 19:02:12', '2018-08-03 19:02:12'),
(173, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 83, NULL, '2018-08-03 19:02:48', '2018-08-03 19:02:48'),
(174, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 82, NULL, '2018-08-03 19:04:26', '2018-08-03 19:04:26'),
(175, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 84, NULL, '2018-08-03 19:05:22', '2018-08-03 19:05:22'),
(176, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 83, NULL, '2018-08-03 19:07:09', '2018-08-03 19:07:09'),
(177, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 85, NULL, '2018-08-03 19:07:41', '2018-08-03 19:07:41'),
(178, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 84, NULL, '2018-08-03 19:09:34', '2018-08-03 19:09:34'),
(179, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 86, NULL, '2018-08-03 19:10:17', '2018-08-03 19:10:17'),
(180, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 85, NULL, '2018-08-03 19:12:18', '2018-08-03 19:12:18'),
(181, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 87, NULL, '2018-08-03 19:13:24', '2018-08-03 19:13:24'),
(182, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 86, NULL, '2018-08-03 19:25:22', '2018-08-03 19:25:22'),
(183, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 88, NULL, '2018-08-03 19:26:01', '2018-08-03 19:26:01'),
(184, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 87, NULL, '2018-08-03 19:28:07', '2018-08-03 19:28:07'),
(185, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 89, NULL, '2018-08-03 19:28:41', '2018-08-03 19:28:41'),
(186, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 88, NULL, '2018-08-03 19:30:34', '2018-08-03 19:30:34'),
(187, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 90, NULL, '2018-08-03 19:31:07', '2018-08-03 19:31:07'),
(188, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 89, NULL, '2018-08-03 19:33:10', '2018-08-03 19:33:10'),
(189, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 91, NULL, '2018-08-03 19:33:48', '2018-08-03 19:33:48'),
(190, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 90, NULL, '2018-08-03 19:38:38', '2018-08-03 19:38:38'),
(191, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 92, NULL, '2018-08-03 19:39:19', '2018-08-03 19:39:19'),
(192, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 91, NULL, '2018-08-03 19:42:16', '2018-08-03 19:42:16'),
(193, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 93, NULL, '2018-08-03 19:42:53', '2018-08-03 19:42:53'),
(194, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 92, NULL, '2018-08-03 19:45:21', '2018-08-03 19:45:21'),
(195, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 94, NULL, '2018-08-03 19:46:03', '2018-08-03 19:46:03'),
(196, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 93, NULL, '2018-08-03 19:48:08', '2018-08-03 19:48:08'),
(197, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 95, NULL, '2018-08-03 19:49:11', '2018-08-03 19:49:11'),
(198, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 94, NULL, '2018-08-03 19:50:45', '2018-08-03 19:50:45'),
(199, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 96, NULL, '2018-08-03 19:51:23', '2018-08-03 19:51:23'),
(200, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 95, NULL, '2018-08-03 19:53:32', '2018-08-03 19:53:32'),
(201, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 97, NULL, '2018-08-03 19:54:04', '2018-08-03 19:54:04'),
(202, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 96, NULL, '2018-08-03 20:02:52', '2018-08-03 20:02:52'),
(203, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 98, NULL, '2018-08-03 20:03:30', '2018-08-03 20:03:30'),
(204, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 97, NULL, '2018-08-03 20:05:31', '2018-08-03 20:05:31'),
(205, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 99, NULL, '2018-08-03 20:06:11', '2018-08-03 20:06:11'),
(206, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 98, NULL, '2018-08-03 20:08:12', '2018-08-03 20:08:12'),
(207, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 100, NULL, '2018-08-03 20:08:53', '2018-08-03 20:08:53'),
(208, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 99, NULL, '2018-08-03 20:10:44', '2018-08-03 20:10:44'),
(209, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 101, NULL, '2018-08-03 20:11:17', '2018-08-03 20:11:17'),
(210, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 100, NULL, '2018-08-03 20:12:59', '2018-08-03 20:12:59'),
(211, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 102, NULL, '2018-08-03 20:13:42', '2018-08-03 20:13:42'),
(212, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 101, NULL, '2018-08-03 20:17:26', '2018-08-03 20:17:26'),
(213, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 103, NULL, '2018-08-03 20:17:59', '2018-08-03 20:17:59'),
(214, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 102, NULL, '2018-08-03 20:20:32', '2018-08-03 20:20:32'),
(215, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 104, NULL, '2018-08-03 20:21:24', '2018-08-03 20:21:24'),
(216, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 103, NULL, '2018-08-03 20:23:06', '2018-08-03 20:23:06'),
(217, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 105, NULL, '2018-08-03 20:24:11', '2018-08-03 20:24:11'),
(218, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 104, NULL, '2018-08-03 20:26:18', '2018-08-03 20:26:18'),
(219, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 106, NULL, '2018-08-03 20:26:49', '2018-08-03 20:26:49'),
(220, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 105, NULL, '2018-08-03 20:28:42', '2018-08-03 20:28:42'),
(221, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 107, NULL, '2018-08-03 20:29:12', '2018-08-03 20:29:12'),
(222, 'SLP 556', 'BUNGU', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 106, NULL, '2018-08-03 21:29:51', '2018-08-03 21:29:51'),
(223, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 107, NULL, '2018-08-04 13:10:05', '2018-08-04 13:10:05'),
(224, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 108, NULL, '2018-08-04 13:11:08', '2018-08-04 13:11:08'),
(225, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 108, NULL, '2018-08-04 17:32:59', '2018-08-04 17:32:59'),
(226, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 109, NULL, '2018-08-04 17:34:02', '2018-08-04 17:34:02'),
(227, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 109, NULL, '2018-08-04 17:36:16', '2018-08-04 17:36:16'),
(228, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 110, NULL, '2018-08-04 17:36:52', '2018-08-04 17:36:52'),
(229, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 110, NULL, '2018-08-04 17:38:40', '2018-08-04 17:38:40'),
(230, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 111, NULL, '2018-08-04 17:39:13', '2018-08-04 17:39:13'),
(231, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 111, NULL, '2018-08-04 17:41:45', '2018-08-04 17:41:45'),
(232, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 112, NULL, '2018-08-04 17:42:21', '2018-08-04 17:42:21'),
(233, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 112, NULL, '2018-08-04 17:44:04', '2018-08-04 17:44:04'),
(234, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 113, NULL, '2018-08-04 17:44:38', '2018-08-04 17:44:38'),
(235, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 113, NULL, '2018-08-04 17:46:12', '2018-08-04 17:46:12'),
(236, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 114, NULL, '2018-08-04 17:46:46', '2018-08-04 17:46:46'),
(237, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 114, NULL, '2018-08-04 17:54:04', '2018-08-04 17:54:04'),
(238, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 115, NULL, '2018-08-04 17:54:39', '2018-08-04 17:54:39'),
(239, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 115, NULL, '2018-08-04 17:56:29', '2018-08-04 17:56:29'),
(240, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 116, NULL, '2018-08-04 17:57:01', '2018-08-04 17:57:01'),
(241, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 116, NULL, '2018-08-04 17:59:39', '2018-08-04 17:59:39'),
(242, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 117, NULL, '2018-08-04 18:00:12', '2018-08-04 18:00:12'),
(243, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 117, NULL, '2018-08-04 18:02:39', '2018-08-04 18:02:39'),
(244, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 118, NULL, '2018-08-04 18:03:33', '2018-08-04 18:03:33'),
(245, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 118, NULL, '2018-08-04 18:06:24', '2018-08-04 18:06:24'),
(246, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 119, NULL, '2018-08-04 18:06:49', '2018-08-04 18:06:49'),
(247, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 119, NULL, '2018-08-04 20:56:08', '2018-08-04 20:56:08'),
(248, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 120, NULL, '2018-08-04 20:56:53', '2018-08-04 20:56:53'),
(249, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 120, NULL, '2018-08-04 21:01:26', '2018-08-04 21:01:26'),
(250, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 121, NULL, '2018-08-04 21:02:00', '2018-08-04 21:02:00'),
(251, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 121, NULL, '2018-08-04 21:04:34', '2018-08-04 21:04:34'),
(252, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 122, NULL, '2018-08-04 21:05:07', '2018-08-04 21:05:07'),
(253, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 122, NULL, '2018-08-04 21:07:57', '2018-08-04 21:07:57'),
(254, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 123, NULL, '2018-08-04 21:08:37', '2018-08-04 21:08:37'),
(255, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 123, NULL, '2018-08-04 21:11:52', '2018-08-04 21:11:52'),
(256, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 124, NULL, '2018-08-04 21:13:03', '2018-08-04 21:13:03'),
(257, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 124, NULL, '2018-08-04 21:15:21', '2018-08-04 21:15:21'),
(258, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 125, NULL, '2018-08-04 21:15:58', '2018-08-04 21:15:58'),
(259, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 125, NULL, '2018-08-04 21:19:24', '2018-08-04 21:19:24'),
(260, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 126, NULL, '2018-08-04 21:20:02', '2018-08-04 21:20:02'),
(261, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 126, NULL, '2018-08-04 21:21:58', '2018-08-04 21:21:58'),
(262, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 127, NULL, '2018-08-04 21:22:30', '2018-08-04 21:22:30'),
(263, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 127, NULL, '2018-08-04 21:24:40', '2018-08-04 21:24:40'),
(264, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 128, NULL, '2018-08-04 21:25:21', '2018-08-04 21:25:21'),
(265, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 128, NULL, '2018-08-04 21:34:52', '2018-08-04 21:34:52'),
(266, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 129, NULL, '2018-08-04 21:35:42', '2018-08-04 21:35:42'),
(267, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 129, NULL, '2018-08-04 21:40:31', '2018-08-04 21:40:31'),
(268, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 130, NULL, '2018-08-04 21:41:09', '2018-08-04 21:41:09'),
(269, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 130, NULL, '2018-08-04 21:43:45', '2018-08-04 21:43:45'),
(270, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 131, NULL, '2018-08-04 21:45:04', '2018-08-04 21:45:04'),
(271, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 131, NULL, '2018-08-04 21:47:58', '2018-08-04 21:47:58'),
(272, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 132, NULL, '2018-08-04 21:48:38', '2018-08-04 21:48:38'),
(273, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 132, NULL, '2018-08-04 21:51:06', '2018-08-04 21:51:06'),
(274, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 133, NULL, '2018-08-04 21:51:46', '2018-08-04 21:51:46'),
(275, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 133, NULL, '2018-08-04 21:55:17', '2018-08-04 21:55:17'),
(276, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 134, NULL, '2018-08-04 21:55:58', '2018-08-04 21:55:58'),
(277, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 134, NULL, '2018-08-04 21:58:26', '2018-08-04 21:58:26'),
(278, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 135, NULL, '2018-08-04 21:59:31', '2018-08-04 21:59:31'),
(279, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 135, NULL, '2018-08-04 22:02:02', '2018-08-04 22:02:02'),
(280, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 136, NULL, '2018-08-04 22:02:44', '2018-08-04 22:02:44'),
(281, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 137, NULL, '2018-08-05 01:02:07', '2018-08-05 01:02:07'),
(282, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 136, NULL, '2018-08-05 01:15:08', '2018-08-05 01:15:08'),
(283, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 138, NULL, '2018-08-05 01:16:39', '2018-08-05 01:16:39'),
(284, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 137, NULL, '2018-08-05 01:23:49', '2018-08-05 01:23:49'),
(285, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 139, NULL, '2018-08-05 01:25:49', '2018-08-05 01:25:49'),
(286, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 138, NULL, '2018-08-05 01:30:00', '2018-08-05 01:30:00'),
(287, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 140, NULL, '2018-08-05 01:31:07', '2018-08-05 01:31:07'),
(288, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 139, NULL, '2018-08-05 01:35:33', '2018-08-05 01:35:33'),
(289, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 141, NULL, '2018-08-05 01:36:52', '2018-08-05 01:36:52'),
(290, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 140, NULL, '2018-08-05 01:39:55', '2018-08-05 01:39:55'),
(291, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 142, NULL, '2018-08-05 01:41:02', '2018-08-05 01:41:02'),
(292, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 141, NULL, '2018-08-05 01:44:14', '2018-08-05 01:44:14'),
(293, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 143, NULL, '2018-08-05 01:45:14', '2018-08-05 01:45:14'),
(294, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 142, NULL, '2018-08-05 01:47:59', '2018-08-05 01:47:59'),
(295, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 144, NULL, '2018-08-05 01:48:59', '2018-08-05 01:48:59'),
(296, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 143, NULL, '2018-08-05 01:52:11', '2018-08-05 01:52:11'),
(297, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 145, NULL, '2018-08-05 01:53:05', '2018-08-05 01:53:05'),
(298, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 144, NULL, '2018-08-05 01:56:43', '2018-08-05 01:56:43'),
(299, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 146, NULL, '2018-08-05 01:57:43', '2018-08-05 01:57:43'),
(300, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 145, NULL, '2018-08-05 02:02:39', '2018-08-05 02:02:39'),
(301, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 147, NULL, '2018-08-05 02:03:57', '2018-08-05 02:03:57'),
(302, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 146, NULL, '2018-08-05 02:07:06', '2018-08-05 02:07:06'),
(303, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 148, NULL, '2018-08-05 02:07:58', '2018-08-05 02:07:58'),
(304, 'Kichangani St.', '22', 'Tanzania', 'Dar es Salaam', '255', 'App\\User', 2, NULL, '2018-08-06 15:08:40', '2018-08-06 15:08:40'),
(305, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 147, NULL, '2018-08-06 16:10:02', '2018-08-06 16:10:02'),
(306, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 148, NULL, '2018-08-06 16:11:44', '2018-08-06 16:11:44'),
(307, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 149, NULL, '2018-08-06 16:13:13', '2018-08-06 16:13:13'),
(308, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 150, NULL, '2018-08-06 17:53:25', '2018-08-06 17:53:25'),
(309, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 149, NULL, '2018-08-06 17:54:16', '2018-08-06 17:54:16'),
(310, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 151, NULL, '2018-08-06 17:57:09', '2018-08-06 17:57:09'),
(311, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 150, NULL, '2018-08-06 17:58:42', '2018-08-06 17:58:42'),
(312, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 152, NULL, '2018-08-06 18:01:19', '2018-08-06 18:01:19'),
(313, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 151, NULL, '2018-08-06 18:01:54', '2018-08-06 18:01:54'),
(314, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 153, NULL, '2018-08-06 18:04:07', '2018-08-06 18:04:07'),
(315, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 152, NULL, '2018-08-06 18:05:08', '2018-08-06 18:05:08'),
(316, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 154, NULL, '2018-08-06 18:07:15', '2018-08-06 18:07:15'),
(317, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 153, NULL, '2018-08-06 18:07:52', '2018-08-06 18:07:52'),
(318, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 155, NULL, '2018-08-06 18:12:18', '2018-08-06 18:12:18'),
(319, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 154, NULL, '2018-08-06 18:13:14', '2018-08-06 18:13:14'),
(320, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 156, NULL, '2018-08-06 18:17:21', '2018-08-06 18:17:21'),
(321, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 155, NULL, '2018-08-06 18:18:07', '2018-08-06 18:18:07'),
(322, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 157, NULL, '2018-08-06 18:23:22', '2018-08-06 18:23:22'),
(323, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 156, NULL, '2018-08-06 18:23:55', '2018-08-06 18:23:55'),
(324, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 158, NULL, '2018-08-06 18:25:15', '2018-08-06 18:25:15'),
(325, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 157, NULL, '2018-08-06 18:25:42', '2018-08-06 18:25:42'),
(326, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 159, NULL, '2018-08-06 18:27:06', '2018-08-06 18:27:06'),
(327, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 158, NULL, '2018-08-06 18:28:02', '2018-08-06 18:28:02'),
(328, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 160, NULL, '2018-08-06 18:32:39', '2018-08-06 18:32:39'),
(329, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 159, NULL, '2018-08-06 18:33:42', '2018-08-06 18:33:42'),
(330, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 161, NULL, '2018-08-06 18:40:46', '2018-08-06 18:40:46'),
(331, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 160, NULL, '2018-08-06 18:41:39', '2018-08-06 18:41:39'),
(332, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 162, NULL, '2018-08-06 18:44:28', '2018-08-06 18:44:28'),
(333, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 161, NULL, '2018-08-06 18:45:04', '2018-08-06 18:45:04'),
(334, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 163, NULL, '2018-08-06 19:50:22', '2018-08-06 19:50:22'),
(335, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 162, NULL, '2018-08-06 19:51:12', '2018-08-06 19:51:12'),
(336, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 164, NULL, '2018-08-06 19:54:39', '2018-08-06 19:54:39'),
(337, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 163, NULL, '2018-08-06 19:55:29', '2018-08-06 19:55:29'),
(338, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 165, NULL, '2018-08-06 19:57:03', '2018-08-06 19:57:03'),
(339, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 164, NULL, '2018-08-06 19:57:38', '2018-08-06 19:57:38'),
(340, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 166, NULL, '2018-08-06 19:58:45', '2018-08-06 19:58:45'),
(341, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 165, NULL, '2018-08-06 19:59:14', '2018-08-06 19:59:14'),
(342, '343', 'Lushoto!', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 167, NULL, '2018-08-06 20:00:36', '2018-08-06 20:00:36'),
(343, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 166, NULL, '2018-08-06 20:01:08', '2018-08-06 20:01:08'),
(344, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 168, NULL, '2018-08-06 20:02:21', '2018-08-06 20:02:21'),
(345, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 167, NULL, '2018-08-06 20:02:47', '2018-08-06 20:02:47'),
(346, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 169, NULL, '2018-08-06 20:03:49', '2018-08-06 20:03:49'),
(347, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 168, NULL, '2018-08-06 20:04:14', '2018-08-06 20:04:14'),
(348, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 170, NULL, '2018-08-06 20:05:26', '2018-08-06 20:05:26'),
(349, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 169, NULL, '2018-08-06 20:05:51', '2018-08-06 20:05:51'),
(350, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 171, NULL, '2018-08-06 20:06:52', '2018-08-06 20:06:52'),
(351, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 170, NULL, '2018-08-06 20:07:21', '2018-08-06 20:07:21'),
(352, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 172, NULL, '2018-08-06 20:09:27', '2018-08-06 20:09:27'),
(353, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 171, NULL, '2018-08-06 20:09:53', '2018-08-06 20:09:53'),
(354, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 173, NULL, '2018-08-06 20:11:57', '2018-08-06 20:11:57'),
(355, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 172, NULL, '2018-08-06 20:12:26', '2018-08-06 20:12:26'),
(356, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 174, NULL, '2018-08-06 20:13:27', '2018-08-06 20:13:27'),
(357, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 173, NULL, '2018-08-06 20:13:55', '2018-08-06 20:13:55'),
(358, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 175, NULL, '2018-08-06 20:15:32', '2018-08-06 20:15:32'),
(359, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 174, NULL, '2018-08-06 20:15:59', '2018-08-06 20:15:59'),
(360, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 176, NULL, '2018-08-06 20:17:52', '2018-08-06 20:17:52'),
(361, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 175, NULL, '2018-08-06 20:18:24', '2018-08-06 20:18:24'),
(362, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 177, NULL, '2018-08-06 20:19:34', '2018-08-06 20:19:34'),
(363, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 176, NULL, '2018-08-06 20:20:01', '2018-08-06 20:20:01'),
(364, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 178, NULL, '2018-08-06 20:20:57', '2018-08-06 20:20:57'),
(365, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 177, NULL, '2018-08-06 20:21:24', '2018-08-06 20:21:24'),
(366, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 179, NULL, '2018-08-06 20:22:59', '2018-08-06 20:22:59'),
(367, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 178, NULL, '2018-08-06 20:25:22', '2018-08-06 20:25:22'),
(368, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 180, NULL, '2018-08-06 20:26:42', '2018-08-06 20:26:42'),
(369, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 179, NULL, '2018-08-06 20:27:11', '2018-08-06 20:27:11'),
(370, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 181, NULL, '2018-08-06 20:28:17', '2018-08-06 20:28:17'),
(371, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 180, NULL, '2018-08-06 20:28:48', '2018-08-06 20:28:48'),
(372, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 182, NULL, '2018-08-06 20:29:44', '2018-08-06 20:29:44'),
(373, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 181, NULL, '2018-08-06 20:30:10', '2018-08-06 20:30:10'),
(374, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 183, NULL, '2018-08-06 20:31:35', '2018-08-06 20:31:35'),
(375, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 182, NULL, '2018-08-06 20:31:59', '2018-08-06 20:31:59'),
(376, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 184, NULL, '2018-08-06 20:33:13', '2018-08-06 20:33:13'),
(377, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 183, NULL, '2018-08-06 20:33:43', '2018-08-06 20:33:43'),
(378, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 185, NULL, '2018-08-06 20:34:47', '2018-08-06 20:34:47'),
(379, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 184, NULL, '2018-08-06 20:35:11', '2018-08-06 20:35:11'),
(380, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 186, NULL, '2018-08-06 20:36:33', '2018-08-06 20:36:33'),
(381, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 185, NULL, '2018-08-06 20:37:05', '2018-08-06 20:37:05'),
(382, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 187, NULL, '2018-08-06 20:38:51', '2018-08-06 20:38:51'),
(383, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 186, NULL, '2018-08-06 20:39:24', '2018-08-06 20:39:24'),
(384, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 188, NULL, '2018-08-06 20:40:28', '2018-08-06 20:40:28'),
(385, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 187, NULL, '2018-08-06 20:41:00', '2018-08-06 20:41:00'),
(386, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 189, NULL, '2018-08-06 20:42:15', '2018-08-06 20:42:15'),
(387, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 188, NULL, '2018-08-06 20:42:41', '2018-08-06 20:42:41'),
(388, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 190, NULL, '2018-08-06 20:44:06', '2018-08-06 20:44:06'),
(389, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 189, NULL, '2018-08-06 20:44:46', '2018-08-06 20:44:46'),
(390, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 191, NULL, '2018-08-06 20:45:51', '2018-08-06 20:45:51'),
(391, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 190, NULL, '2018-08-06 20:46:31', '2018-08-06 20:46:31'),
(392, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 192, NULL, '2018-08-07 21:01:12', '2018-08-07 21:01:12'),
(393, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 191, NULL, '2018-08-07 21:01:51', '2018-08-07 21:01:51'),
(394, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 193, NULL, '2018-08-07 21:03:59', '2018-08-07 21:03:59'),
(395, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 192, NULL, '2018-08-07 21:04:27', '2018-08-07 21:04:27'),
(396, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 194, NULL, '2018-08-07 21:05:42', '2018-08-07 21:05:42'),
(397, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 193, NULL, '2018-08-07 21:06:15', '2018-08-07 21:06:15'),
(398, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 195, NULL, '2018-08-07 21:07:18', '2018-08-07 21:07:18'),
(399, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 194, NULL, '2018-08-07 21:07:47', '2018-08-07 21:07:47'),
(400, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 196, NULL, '2018-08-07 21:08:49', '2018-08-07 21:08:49'),
(401, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 195, NULL, '2018-08-07 21:09:15', '2018-08-07 21:09:15'),
(402, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 197, NULL, '2018-08-07 21:10:18', '2018-08-07 21:10:18'),
(403, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 196, NULL, '2018-08-07 21:10:51', '2018-08-07 21:10:51'),
(404, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 198, NULL, '2018-08-07 21:12:02', '2018-08-07 21:12:02'),
(405, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 197, NULL, '2018-08-07 21:12:43', '2018-08-07 21:12:43'),
(406, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 199, NULL, '2018-08-07 21:13:56', '2018-08-07 21:13:56'),
(407, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 198, NULL, '2018-08-07 21:14:37', '2018-08-07 21:14:37'),
(408, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 200, NULL, '2018-08-07 21:15:44', '2018-08-07 21:15:44'),
(409, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 199, NULL, '2018-08-07 21:16:11', '2018-08-07 21:16:11'),
(410, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 201, NULL, '2018-08-07 21:17:28', '2018-08-07 21:17:28'),
(411, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 200, NULL, '2018-08-07 21:17:59', '2018-08-07 21:17:59'),
(412, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 202, NULL, '2018-08-07 21:21:11', '2018-08-07 21:21:11'),
(413, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 201, NULL, '2018-08-07 21:23:39', '2018-08-07 21:23:39'),
(414, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 203, NULL, '2018-08-07 21:25:51', '2018-08-07 21:25:51'),
(415, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 202, NULL, '2018-08-07 21:29:18', '2018-08-07 21:29:18'),
(416, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 204, NULL, '2018-08-09 00:23:18', '2018-08-09 00:23:18'),
(417, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 205, NULL, '2018-08-09 00:34:46', '2018-08-09 00:34:46'),
(418, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 206, NULL, '2018-08-09 00:41:20', '2018-08-09 00:41:20'),
(419, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 207, NULL, '2018-08-09 14:04:31', '2018-08-09 14:04:31'),
(420, '343', 'Lushoto', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 208, NULL, '2018-08-09 19:39:15', '2018-08-09 19:39:15'),
(421, 'A1', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 1, NULL, '2018-08-09 23:27:01', '2018-08-09 23:27:01'),
(422, 'A2', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 2, NULL, '2018-08-09 23:27:32', '2018-08-09 23:27:32'),
(423, 'Arusha', '', 'Tanzania', 'Arusha', '255', 'App\\User', 13, NULL, '2018-08-10 20:29:08', '2018-08-10 20:29:08'),
(424, 'Arusha', '', 'Tanzania', 'Arusha', '255', 'App\\User', 3, NULL, '2018-08-10 20:34:54', '2018-08-21 20:35:45'),
(425, 'Arusha', '', 'Tanzania', 'Arusha', '255', 'App\\User', 14, NULL, '2018-08-10 20:38:10', '2018-08-10 20:38:10'),
(426, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 3, NULL, '2018-08-12 17:50:10', '2018-08-12 17:50:10'),
(427, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 4, NULL, '2018-08-12 17:51:13', '2018-08-12 17:51:13');
INSERT INTO `addresses` (`id`, `street`, `address`, `country`, `state`, `postal_code`, `addressable_type`, `addressable_id`, `creator_id`, `created_at`, `updated_at`) VALUES
(428, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 5, NULL, '2018-08-12 17:52:24', '2018-08-12 17:52:24'),
(429, '1D', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 6, NULL, '2018-08-12 17:53:05', '2018-08-12 17:53:05'),
(430, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 7, NULL, '2018-08-12 17:53:32', '2018-08-12 17:53:32'),
(431, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 8, NULL, '2018-08-12 17:55:21', '2018-08-12 17:55:21'),
(432, 'tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 9, NULL, '2018-08-12 17:55:44', '2018-08-12 17:55:44'),
(433, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 10, NULL, '2018-08-12 17:56:27', '2018-08-12 17:56:27'),
(434, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 11, NULL, '2018-08-12 17:57:58', '2018-08-12 17:57:58'),
(435, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 12, NULL, '2018-08-12 17:58:27', '2018-08-12 17:58:27'),
(436, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 13, NULL, '2018-08-12 17:59:11', '2018-08-12 17:59:11'),
(437, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 14, NULL, '2018-08-12 17:59:42', '2018-08-12 17:59:42'),
(438, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 15, NULL, '2018-08-12 18:00:27', '2018-08-12 18:00:27'),
(439, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 16, NULL, '2018-08-12 18:00:50', '2018-08-12 18:00:50'),
(440, 'tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 17, NULL, '2018-08-12 18:01:26', '2018-08-12 18:01:26'),
(441, 'tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 18, NULL, '2018-08-12 18:02:15', '2018-08-12 18:02:15'),
(442, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 19, NULL, '2018-08-12 18:03:23', '2018-08-12 18:03:23'),
(443, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 20, NULL, '2018-08-12 18:03:55', '2018-08-12 18:03:55'),
(444, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 21, NULL, '2018-08-12 18:05:04', '2018-08-12 18:05:04'),
(445, 'Tanga', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 22, NULL, '2018-08-12 18:05:32', '2018-08-12 18:05:32'),
(446, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 209, NULL, '2018-08-14 13:13:33', '2018-08-14 13:13:33'),
(447, '556 Bungu', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 23, NULL, '2018-08-14 13:15:14', '2018-08-14 13:15:14'),
(448, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 203, NULL, '2018-08-14 13:18:03', '2018-08-14 13:18:03'),
(449, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 204, NULL, '2018-08-14 13:22:44', '2018-08-14 13:22:44'),
(450, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 205, NULL, '2018-08-14 13:25:37', '2018-08-14 13:25:37'),
(451, '556 Bungu', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 24, NULL, '2018-08-14 13:30:00', '2018-08-14 13:30:00'),
(452, '556 Bungu', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 25, NULL, '2018-08-14 13:32:45', '2018-08-14 13:32:45'),
(453, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 210, NULL, '2018-08-14 13:35:56', '2018-08-14 13:35:56'),
(454, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 206, NULL, '2018-08-14 13:37:18', '2018-08-14 13:37:18'),
(455, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 211, NULL, '2018-08-14 13:39:23', '2018-08-14 13:39:23'),
(456, '', NULL, 'Tanzania', 'Manyara', NULL, 'App\\Farm', 207, NULL, '2018-08-14 13:40:58', '2018-08-14 13:40:58'),
(457, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 212, NULL, '2018-08-14 13:43:15', '2018-08-14 13:43:15'),
(458, '556 Bungu', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 26, NULL, '2018-08-14 13:44:34', '2018-08-14 13:44:34'),
(459, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 208, NULL, '2018-08-14 13:48:49', '2018-08-14 13:48:49'),
(460, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 209, NULL, '2018-08-14 13:51:13', '2018-08-14 13:51:13'),
(461, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 213, NULL, '2018-08-14 13:53:51', '2018-08-14 13:53:51'),
(462, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 210, NULL, '2018-08-14 13:54:40', '2018-08-14 13:54:40'),
(463, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 214, NULL, '2018-08-14 14:00:43', '2018-08-14 14:00:43'),
(464, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 211, NULL, '2018-08-14 14:01:38', '2018-08-14 14:01:38'),
(465, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 215, NULL, '2018-08-14 14:03:16', '2018-08-14 14:03:16'),
(466, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 216, NULL, '2018-08-14 14:03:55', '2018-08-14 14:03:55'),
(467, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 212, NULL, '2018-08-14 14:05:17', '2018-08-14 14:05:17'),
(468, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 213, NULL, '2018-08-14 14:05:22', '2018-08-14 14:05:22'),
(469, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 217, NULL, '2018-08-14 14:07:41', '2018-08-14 14:07:41'),
(470, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 218, NULL, '2018-08-14 14:07:42', '2018-08-14 14:07:42'),
(471, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 214, NULL, '2018-08-14 14:08:29', '2018-08-14 14:08:29'),
(472, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 215, NULL, '2018-08-14 14:08:39', '2018-08-14 14:08:39'),
(473, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 219, NULL, '2018-08-14 14:10:40', '2018-08-14 14:10:40'),
(474, '556 Bungu', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 220, NULL, '2018-08-14 14:11:14', '2018-08-14 14:11:14'),
(475, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 216, NULL, '2018-08-14 14:11:31', '2018-08-14 14:11:31'),
(476, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 221, NULL, '2018-08-15 13:46:35', '2018-08-15 13:46:35'),
(477, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 217, NULL, '2018-08-15 13:47:25', '2018-08-15 13:47:25'),
(478, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 222, NULL, '2018-08-15 13:49:09', '2018-08-15 13:49:09'),
(479, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 218, NULL, '2018-08-15 13:50:04', '2018-08-15 13:50:04'),
(480, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 223, NULL, '2018-08-15 13:52:00', '2018-08-15 13:52:00'),
(481, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 219, NULL, '2018-08-15 13:53:04', '2018-08-15 13:53:04'),
(482, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 224, NULL, '2018-08-15 13:55:10', '2018-08-15 13:55:10'),
(483, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 220, NULL, '2018-08-15 13:55:51', '2018-08-15 13:55:51'),
(484, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 225, NULL, '2018-08-15 13:58:03', '2018-08-15 13:58:03'),
(485, '556 Bungu', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Block', 27, NULL, '2018-08-15 13:59:00', '2018-08-15 13:59:00'),
(486, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 221, NULL, '2018-08-15 14:00:11', '2018-08-15 14:00:11'),
(487, '556 Bungu', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 226, NULL, '2018-08-15 14:02:17', '2018-08-15 14:02:17'),
(488, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 222, NULL, '2018-08-15 14:03:07', '2018-08-15 14:03:07'),
(489, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 227, NULL, '2018-08-15 14:04:46', '2018-08-15 14:04:46'),
(490, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 223, NULL, '2018-08-15 14:05:27', '2018-08-15 14:05:27'),
(491, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 228, NULL, '2018-08-15 14:07:23', '2018-08-15 14:07:23'),
(492, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 224, NULL, '2018-08-15 14:08:06', '2018-08-15 14:08:06'),
(493, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 229, NULL, '2018-08-15 14:09:47', '2018-08-15 14:09:47'),
(494, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 225, NULL, '2018-08-15 14:10:39', '2018-08-15 14:10:39'),
(495, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 230, NULL, '2018-08-15 14:13:40', '2018-08-15 14:13:40'),
(496, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 226, NULL, '2018-08-15 14:14:24', '2018-08-15 14:14:24'),
(497, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 231, NULL, '2018-08-15 14:16:31', '2018-08-15 14:16:31'),
(498, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 227, NULL, '2018-08-15 14:17:06', '2018-08-15 14:17:06'),
(499, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 232, NULL, '2018-08-15 14:18:58', '2018-08-15 14:18:58'),
(500, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 228, NULL, '2018-08-15 14:19:59', '2018-08-15 14:19:59'),
(501, '556 Bungu', 'Korogwe', 'Tanzania', 'Tanga', NULL, 'App\\Farmer', 233, NULL, '2018-08-15 14:21:51', '2018-08-15 14:21:51'),
(502, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 229, NULL, '2018-08-15 14:22:37', '2018-08-15 14:22:37'),
(503, 'Kichangani St.', 'po box Mosho 1111', 'Tanzania', 'Kusini Pemba', '255', 'App\\Farmer', 234, NULL, '2018-08-16 16:08:51', '2018-08-16 16:08:51'),
(504, '', NULL, 'Tanzania', 'Tanga', NULL, 'App\\Farm', 230, NULL, '2018-08-27 19:13:18', '2018-08-28 13:21:31'),
(505, '', NULL, 'Tanzania', 'Morogoro', NULL, 'App\\Farm', 231, NULL, '2018-08-28 13:25:51', '2018-08-28 13:25:51'),
(506, 'Moshono', 'Moshono', 'Tanzania', 'Arusha', NULL, 'App\\User', 15, NULL, '2018-08-28 17:26:42', '2018-08-28 17:26:42'),
(507, 'Arusha', '', 'Tanzania', 'Arusha', '244', 'App\\User', 16, NULL, '2018-08-28 17:44:11', '2018-08-28 17:44:11'),
(508, 'Arusha', '', 'Tanzania', 'Arusha', NULL, 'App\\User', 17, NULL, '2018-08-28 17:45:56', '2018-08-28 17:45:56'),
(509, 'lukoveg', 'fdsfdsf', 'Tanzania', 'Arusha', '255', 'App\\User', 18, NULL, '2018-08-29 08:46:22', '2018-08-29 08:46:22'),
(510, 'Lushoto', 'fdsfdsf', 'Tanzania', 'Kigoma', '435', 'App\\User', 19, NULL, '2018-08-29 08:56:20', '2018-08-29 08:56:20'),
(511, '3000', NULL, 'Tanzania', 'Dar es Salaam', '255', 'App\\Farmer', 235, NULL, '2018-09-05 09:07:08', '2018-09-05 09:07:08'),
(512, '', NULL, 'Tanzania', 'Arusha', NULL, 'App\\Farm', 232, NULL, '2018-09-05 09:07:35', '2018-09-05 09:07:35'),
(513, 'Kichangani St.', 'po box Mosho 1111', 'Tanzania', 'Kaskazini Pemba', '255', 'App\\Employee', 5, NULL, '2018-09-07 15:09:09', '2018-09-25 15:20:25'),
(514, 'Kresncj', NULL, 'Tanzania', 'Kusini Pemba', '233', 'App\\Employee', 6, NULL, '2018-09-07 15:30:14', '2018-09-14 11:10:46'),
(515, 'Kilimanjaro Bry mm', 'po box Mosho  ccc', 'Tanzania', 'Kilimanjaro', '449', 'App\\Employee', 7, NULL, '2018-09-08 15:55:35', '2018-09-13 11:08:19'),
(516, 'zcxzc', '', 'Tanzania', 'Kusini Pemba', '888', 'App\\Employee', 3, NULL, '2018-09-08 16:21:23', '2018-09-19 16:49:53'),
(517, 'STreet 889', '', 'Tanzania', 'Lindi', '344', 'App\\Employee', 4, NULL, '2018-09-08 16:22:32', '2018-09-13 09:25:55'),
(518, 'maa', '', 'Tanzania', 'Mwanza', '255', 'App\\Employee', 2, NULL, '2018-09-08 16:23:43', '2018-09-25 15:20:43'),
(519, 'Kelmon', 'po box Mosho 1111', 'Tanzania', 'Kusini Unguja', '777', 'App\\Employee', 1, NULL, '2018-09-08 16:24:23', '2018-09-26 13:11:54'),
(520, 'Tanga', '73493849', 'Tanzania', 'Mara', '233', 'App\\Employee', 8, NULL, '2018-09-08 16:53:13', '2018-09-26 13:12:18'),
(521, 'fra', 'P O BOX 3010 KCMC Moshi', 'Tanzania', 'Kusini Pemba', '233', 'App\\Employee', 9, NULL, '2018-09-08 17:08:27', '2018-09-13 11:46:17'),
(522, 'Tanga', NULL, 'Tanzania', 'Mara', NULL, 'App\\Employee', 10, NULL, '2018-09-12 19:27:24', '2018-09-13 09:33:43'),
(523, 'Tanga', '73493849', 'Tanzania', 'Mjini Magharibi', '3222', 'App\\Employee', 11, NULL, '2018-09-12 19:31:10', '2018-09-18 14:19:52'),
(524, 'fra', NULL, 'Tanzania', 'Morogoro', '233', 'App\\Employee', 12, NULL, '2018-09-12 19:33:20', '2018-09-19 16:51:14'),
(525, 'Kresncj', NULL, 'Tanzania', 'Arusha', '233', 'App\\Employee', 13, NULL, '2018-09-13 09:21:40', '2018-09-13 09:25:29'),
(526, 'Kresncj', NULL, 'Tanzania', 'Mara', '344', 'App\\Employee', 14, NULL, '2018-09-13 09:24:55', '2018-09-13 09:24:55'),
(527, 'Kresncj', NULL, 'Tanzania', 'Iringa', '255', 'App\\Employee', 15, NULL, '2018-09-19 16:27:15', '2018-09-19 16:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`role_id`, `entity_id`, `entity_type`, `scope`) VALUES
(1, 1, 'App\\User', NULL),
(2, 4, 'App\\User', NULL),
(2, 5, 'App\\User', NULL),
(2, 6, 'App\\User', NULL),
(2, 7, 'App\\User', NULL),
(2, 8, 'App\\User', NULL),
(2, 9, 'App\\User', NULL),
(2, 10, 'App\\User', NULL),
(2, 11, 'App\\User', NULL),
(1, 12, 'App\\User', NULL),
(1, 13, 'App\\User', NULL),
(1, 14, 'App\\User', NULL),
(1, 3, 'App\\User', NULL),
(3, 15, 'App\\User', NULL),
(1, 16, 'App\\User', NULL),
(1, 17, 'App\\User', NULL),
(4, 6, 'App\\User', NULL),
(5, 18, 'App\\User', NULL),
(6, 19, 'App\\User', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'created', 'App\\ProductPrice', 1, '[]', '{\"amount\":\"750\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":9,\"group_id\":1,\"valid_from\":\"2018-07-29\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":1}', 'http://farmers.test/settings/group_products/4?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 11:01:22', '2018-07-29 11:01:22'),
(2, 'App\\User', 1, 'created', 'App\\ProductPrice', 2, '[]', '{\"amount\":\"850\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":8,\"group_id\":1,\"valid_from\":\"2018-07-29\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":2}', 'http://farmers.test/settings/group_products/3?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 11:01:33', '2018-07-29 11:01:33'),
(3, 'App\\User', 1, 'created', 'App\\ProductPrice', 3, '[]', '{\"amount\":\"900\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":7,\"group_id\":1,\"valid_from\":\"2018-07-29\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":3}', 'http://farmers.test/settings/group_products/2?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 11:01:43', '2018-07-29 11:01:43'),
(4, 'App\\User', 1, 'created', 'App\\ProductPrice', 4, '[]', '{\"amount\":\"1200\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":6,\"group_id\":1,\"valid_from\":\"2018-07-29\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":4}', 'http://farmers.test/settings/group_products/1?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 11:01:49', '2018-07-29 11:01:49'),
(5, 'App\\User', 1, 'created', 'App\\Farmer', 1, '[]', '{\"first_name\":\"David\",\"last_name\":\"Pella\",\"phone\":\"0762764819\",\"email\":\"david.pella@example.com\",\"gender\":\"male\",\"creator_id\":1,\"id\":1}', 'http://farmers.test/farmers?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 11:02:59', '2018-07-29 11:02:59'),
(6, 'App\\User', 1, 'created', 'App\\Address', 1, '[]', '{\"street\":\"Kichangani St.\",\"address\":null,\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":1,\"addressable_type\":\"App\\\\Farmer\",\"id\":1}', 'http://farmers.test/farmers?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 11:02:59', '2018-07-29 11:02:59'),
(7, 'App\\User', 1, 'created', 'App\\Farm', 1, '[]', '{\"size\":\"10\",\"size_unit\":\"Hectare\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.\",\"farmer_id\":1,\"id\":1}', 'http://farmers.test/farmers/1/farms?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 11:03:18', '2018-07-29 11:03:18'),
(8, 'App\\User', 1, 'created', 'App\\Address', 2, '[]', '{\"country\":\"Tanzania\",\"state\":\"Arusha\",\"addressable_id\":1,\"addressable_type\":\"App\\\\Farm\",\"id\":2}', 'http://farmers.test/farmers/1/farms?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 11:03:18', '2018-07-29 11:03:18'),
(9, 'App\\User', 1, 'created', 'App\\Block', 1, '[]', '{\"number\":\"3647HJD\",\"size\":\"3\",\"size_unit\":\"Hectare\",\"farm_id\":\"1\",\"product_id\":\"6\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.\",\"id\":1}', 'http://farmers.test/farmers/1/blocks?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 11:03:46', '2018-07-29 11:03:46'),
(10, 'App\\User', 1, 'created', 'App\\Harvest', 1, '[]', '{\"farmer_id\":\"1\",\"block_id\":\"1\",\"expected_date\":\"2018-08-04 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"450\",\"description\":\"\",\"id\":1}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:11:04', '2018-07-29 12:11:04'),
(11, 'App\\User', 1, 'created', 'App\\Purchase', 1, '[]', '{\"delivery_note_id\":1,\"product_id\":6,\"harvest_id\":1,\"farmer_id\":1,\"block_id\":1,\"weight_unit\":\"kg\",\"field_weight\":\"450\",\"creator_id\":1,\"id\":1}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:11:04', '2018-07-29 12:11:04'),
(12, 'App\\User', 1, 'created', 'App\\Remark', 1, '[]', '{\"body\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.\",\"remarkable_id\":1,\"remarkable_type\":\"App\\\\Purchase\",\"id\":1}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:11:04', '2018-07-29 12:11:04'),
(13, 'App\\User', 1, 'created', 'App\\Harvest', 2, '[]', '{\"farmer_id\":\"1\",\"block_id\":\"1\",\"expected_date\":\"2018-08-04 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"450\",\"description\":\"\",\"id\":2}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:12:14', '2018-07-29 12:12:14'),
(14, 'App\\User', 1, 'created', 'App\\Purchase', 2, '[]', '{\"delivery_note_id\":1,\"product_id\":6,\"harvest_id\":2,\"farmer_id\":1,\"block_id\":1,\"weight_unit\":\"kg\",\"field_weight\":\"450\",\"creator_id\":1,\"id\":2}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:12:14', '2018-07-29 12:12:14'),
(15, 'App\\User', 1, 'created', 'App\\Remark', 2, '[]', '{\"body\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.\",\"remarkable_id\":2,\"remarkable_type\":\"App\\\\Purchase\",\"id\":2}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:12:14', '2018-07-29 12:12:14'),
(16, 'App\\User', 1, 'created', 'App\\Harvest', 3, '[]', '{\"farmer_id\":\"1\",\"block_id\":\"1\",\"expected_date\":\"2018-08-04 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"450\",\"description\":\"\",\"id\":3}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:12:30', '2018-07-29 12:12:30'),
(17, 'App\\User', 1, 'created', 'App\\Purchase', 3, '[]', '{\"delivery_note_id\":1,\"product_id\":6,\"harvest_id\":3,\"farmer_id\":1,\"block_id\":1,\"weight_unit\":\"kg\",\"field_weight\":\"450\",\"creator_id\":1,\"id\":3}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:12:31', '2018-07-29 12:12:31'),
(18, 'App\\User', 1, 'created', 'App\\Remark', 3, '[]', '{\"body\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.\",\"remarkable_id\":3,\"remarkable_type\":\"App\\\\Purchase\",\"id\":3}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:12:31', '2018-07-29 12:12:31'),
(19, 'App\\User', 1, 'created', 'App\\Farmer', 2, '[]', '{\"first_name\":\"Denis\",\"last_name\":\"Christian\",\"phone\":\"0783855313\",\"email\":\"denis.christian@example.com\",\"gender\":\"male\",\"creator_id\":1,\"id\":2}', 'http://farmers.test/farmers?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:19:07', '2018-07-29 12:19:07'),
(20, 'App\\User', 1, 'created', 'App\\Address', 3, '[]', '{\"street\":\"Mtendeni St.\",\"address\":null,\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":2,\"addressable_type\":\"App\\\\Farmer\",\"id\":3}', 'http://farmers.test/farmers?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:19:07', '2018-07-29 12:19:07'),
(21, 'App\\User', 1, 'created', 'App\\Farm', 2, '[]', '{\"size\":\"7\",\"size_unit\":\"Hectare\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.\",\"farmer_id\":2,\"id\":2}', 'http://farmers.test/farmers/2/farms?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:20:07', '2018-07-29 12:20:07'),
(22, 'App\\User', 1, 'created', 'App\\Address', 4, '[]', '{\"country\":\"Tanzania\",\"state\":\"Arusha\",\"addressable_id\":2,\"addressable_type\":\"App\\\\Farm\",\"id\":4}', 'http://farmers.test/farmers/2/farms?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:20:07', '2018-07-29 12:20:07'),
(23, 'App\\User', 1, 'created', 'App\\Block', 2, '[]', '{\"number\":\"465794\",\"size\":\"4\",\"size_unit\":\"Hectare\",\"farm_id\":\"2\",\"product_id\":\"7\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.\",\"id\":2}', 'http://farmers.test/farmers/2/blocks?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:20:31', '2018-07-29 12:20:31'),
(24, 'App\\User', 1, 'created', 'App\\Harvest', 4, '[]', '{\"farmer_id\":\"2\",\"block_id\":\"2\",\"expected_date\":\"2018-08-03 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"350\",\"description\":\"\",\"id\":4}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:32:52', '2018-07-29 12:32:52'),
(25, 'App\\User', 1, 'created', 'App\\Purchase', 4, '[]', '{\"delivery_note_id\":1,\"product_id\":7,\"harvest_id\":4,\"farmer_id\":2,\"block_id\":2,\"weight_unit\":\"kg\",\"field_weight\":\"350\",\"creator_id\":1,\"id\":4}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:32:52', '2018-07-29 12:32:52'),
(26, 'App\\User', 1, 'created', 'App\\Remark', 4, '[]', '{\"body\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.\",\"remarkable_id\":4,\"remarkable_type\":\"App\\\\Purchase\",\"id\":4}', 'http://farmers.test/purchases?', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 12:32:52', '2018-07-29 12:32:52'),
(27, 'App\\User', 1, 'created', 'App\\Harvest', 5, '[]', '{\"farmer_id\":\"1\",\"block_id\":\"1\",\"expected_date\":\"2018-07-06 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"233\",\"description\":\"\",\"id\":5}', 'http://127.0.0.1:8000/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 20:01:38', '2018-07-29 20:01:38'),
(28, 'App\\User', 1, 'created', 'App\\Purchase', 5, '[]', '{\"delivery_note_id\":1,\"product_id\":6,\"harvest_id\":5,\"farmer_id\":1,\"block_id\":1,\"weight_unit\":\"kg\",\"field_weight\":\"233\",\"creator_id\":1,\"id\":5}', 'http://127.0.0.1:8000/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 20:01:38', '2018-07-29 20:01:38'),
(29, 'App\\User', 1, 'created', 'App\\Remark', 5, '[]', '{\"body\":\"400\",\"remarkable_id\":5,\"remarkable_type\":\"App\\\\Purchase\",\"id\":5}', 'http://127.0.0.1:8000/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 20:01:38', '2018-07-29 20:01:38'),
(30, 'App\\User', 1, 'created', 'App\\Role', 2, '[]', '{\"name\":\"Farm Group\",\"title\":\"Farm Group\",\"description\":\"Farm Group\",\"id\":2}', 'http://127.0.0.1:8000/settings/roles?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 20:07:27', '2018-07-29 20:07:27'),
(31, 'App\\User', 1, 'created', 'App\\Role', 3, '[]', '{\"name\":\"Park house\",\"title\":\"Pack House\",\"description\":\"Pach\",\"id\":3}', 'http://127.0.0.1:8000/settings/roles?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 20:08:49', '2018-07-29 20:08:49'),
(32, 'App\\User', 1, 'created', 'App\\User', 4, '[]', '{\"first_name\":\"lukoveg\",\"last_name\":\"933\",\"email\":\"lukoveg933@gmail.com\",\"phone\":\"0999999999\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-07-15\",\"password\":\"$2y$10$0ugGmeNZ9zxUaVaeMmGUM.Jp5JWBm3\\/FnvtlKddUnO7h29u7BtmMi\",\"creator_id\":1,\"id\":4}', 'http://127.0.0.1:8000/settings/users?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 20:10:46', '2018-07-29 20:10:46'),
(33, 'App\\User', 1, 'created', 'App\\Address', 5, '[]', '{\"street\":\"Tanga\",\"address\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":4,\"addressable_type\":\"App\\\\User\",\"id\":5}', 'http://127.0.0.1:8000/settings/users?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 20:10:46', '2018-07-29 20:10:46'),
(34, 'App\\User', 1, 'created', 'App\\User', 5, '[]', '{\"first_name\":\"lubuveg\",\"last_name\":\"2012\",\"email\":\"lubuveg2012@gmail.com\",\"phone\":\"0999999999\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-07-15\",\"password\":\"$2y$10$Z8KTmPoUGkR9\\/5QuPgcNt.KM7tme1n1.BaOzs7fDw.aBfObhAzdNW\",\"creator_id\":1,\"id\":5}', 'http://127.0.0.1:8000/settings/users?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 20:12:54', '2018-07-29 20:12:54'),
(35, 'App\\User', 1, 'created', 'App\\Address', 6, '[]', '{\"street\":\"TTa\",\"address\":\"\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":5,\"addressable_type\":\"App\\\\User\",\"id\":6}', 'http://127.0.0.1:8000/settings/users?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-29 20:12:54', '2018-07-29 20:12:54'),
(36, 'App\\User', 1, 'created', 'App\\Harvest', 6, '[]', '{\"farmer_id\":\"2\",\"block_id\":\"2\",\"expected_date\":\"2018-07-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"600\",\"description\":\"\",\"id\":6}', 'http://www.homevegfarmers.co.tz/purchases?', '197.250.97.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 04:14:35', '2018-07-30 04:14:35'),
(37, 'App\\User', 1, 'created', 'App\\Purchase', 6, '[]', '{\"delivery_note_id\":2,\"product_id\":7,\"harvest_id\":6,\"farmer_id\":2,\"block_id\":2,\"weight_unit\":\"kg\",\"field_weight\":\"600\",\"creator_id\":1,\"id\":6}', 'http://www.homevegfarmers.co.tz/purchases?', '197.250.97.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 04:14:35', '2018-07-30 04:14:35'),
(38, 'App\\User', 1, 'created', 'App\\Remark', 6, '[]', '{\"body\":\"gffgfg\",\"remarkable_id\":6,\"remarkable_type\":\"App\\\\Purchase\",\"id\":6}', 'http://www.homevegfarmers.co.tz/purchases?', '197.250.97.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 04:14:35', '2018-07-30 04:14:35'),
(39, 'App\\User', 1, 'updated', 'App\\Purchase', 6, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"600\",\"status\":\"packed\"}', 'http://www.homevegfarmers.co.tz/purchases/6/packing_house_weight?', '197.250.97.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 04:14:57', '2018-07-30 04:14:57'),
(40, 'App\\User', 1, 'created', 'App\\Batch', 1, '[]', '{\"number\":\"HEGE-317\",\"valid_from\":\"2018-07-30 00:00:00\",\"valid_till\":\"2018-07-31 00:00:00\",\"description\":\"any\",\"max_count\":\"10\",\"id\":1}', 'http://www.homevegfarmers.co.tz/settings/batches?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 15:39:45', '2018-07-30 15:39:45'),
(41, 'App\\User', 1, 'created', 'App\\Harvest', 7, '[]', '{\"expected_amount\":\"1\",\"amount_unit\":\"kg\",\"expected_date\":\"2018-08-03 00:00:00\",\"block_id\":\"1\",\"description\":\"any\",\"batch_id\":\"1\",\"id\":7}', 'http://www.homevegfarmers.co.tz/farmers/1/harvests?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 15:41:44', '2018-07-30 15:41:44'),
(42, 'App\\User', 1, 'updated', 'App\\Harvest', 7, '{\"farmer_id\":null}', '{\"farmer_id\":1}', 'http://www.homevegfarmers.co.tz/farmers/1/harvests?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 15:41:44', '2018-07-30 15:41:44'),
(43, 'App\\User', 1, 'created', 'App\\Harvest', 8, '[]', '{\"farmer_id\":\"1\",\"block_id\":\"1\",\"expected_date\":\"2018-07-30 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"900\",\"description\":\"\",\"id\":8}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 15:42:45', '2018-07-30 15:42:45'),
(44, 'App\\User', 1, 'created', 'App\\Purchase', 7, '[]', '{\"delivery_note_id\":2,\"product_id\":6,\"harvest_id\":8,\"farmer_id\":1,\"block_id\":1,\"weight_unit\":\"kg\",\"field_weight\":\"900\",\"creator_id\":1,\"id\":7}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 15:42:45', '2018-07-30 15:42:45'),
(45, 'App\\User', 1, 'created', 'App\\Remark', 7, '[]', '{\"body\":\"anyt\",\"remarkable_id\":7,\"remarkable_type\":\"App\\\\Purchase\",\"id\":7}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 15:42:45', '2018-07-30 15:42:45'),
(46, 'App\\User', 1, 'updated', 'App\\Purchase', 7, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"900\",\"status\":\"packed\"}', 'http://www.homevegfarmers.co.tz/purchases/7/packing_house_weight?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 15:46:14', '2018-07-30 15:46:14'),
(47, 'App\\User', 1, 'updated', 'App\\Purchase', 5, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"233\",\"status\":\"packed\"}', 'http://www.homevegfarmers.co.tz/purchases/5/packing_house_weight?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 15:47:25', '2018-07-30 15:47:25'),
(48, 'App\\User', 1, 'created', 'App\\Farmer', 3, '[]', '{\"first_name\":\"Test\",\"last_name\":\"Test\",\"phone\":\"0753855313\",\"email\":null,\"gender\":\"female\",\"creator_id\":1,\"id\":3}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:13:47', '2018-07-30 16:13:47'),
(49, 'App\\User', 1, 'created', 'App\\Address', 7, '[]', '{\"street\":\"adrre\",\"address\":\"P o box 456\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":3,\"addressable_type\":\"App\\\\Farmer\",\"id\":7}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:13:47', '2018-07-30 16:13:47'),
(50, 'App\\User', 1, 'created', 'App\\Farm', 3, '[]', '{\"size\":\"1\",\"size_unit\":\"Hectare\",\"description\":\"kijiji\",\"farmer_id\":3,\"id\":3}', 'http://www.homevegfarmers.co.tz/farmers/3/farms?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:15:54', '2018-07-30 16:15:54'),
(51, 'App\\User', 1, 'created', 'App\\Address', 8, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":3,\"addressable_type\":\"App\\\\Farm\",\"id\":8}', 'http://www.homevegfarmers.co.tz/farmers/3/farms?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:15:54', '2018-07-30 16:15:54'),
(52, 'App\\User', 1, 'created', 'App\\ProductPrice', 5, '[]', '{\"amount\":\"1400\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":4,\"group_id\":3,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":5}', 'http://www.homevegfarmers.co.tz/settings/group_products/14?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:44:12', '2018-07-30 16:44:12'),
(53, 'App\\User', 1, 'created', 'App\\ProductPrice', 6, '[]', '{\"amount\":\"1400\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":4,\"group_id\":3,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":6}', 'http://www.homevegfarmers.co.tz/settings/group_products/13?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:44:25', '2018-07-30 16:44:25'),
(54, 'App\\User', 1, 'created', 'App\\ProductPrice', 7, '[]', '{\"amount\":\"1200\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":3,\"group_id\":3,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":7}', 'http://www.homevegfarmers.co.tz/settings/group_products/12?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:44:45', '2018-07-30 16:44:45'),
(55, 'App\\User', 1, 'created', 'App\\User', 6, '[]', '{\"first_name\":\"Bahati\",\"last_name\":\"H Kiondo\",\"email\":\"bahati.kiondo@homevegfarmers.co.tz\",\"phone\":\"0714293608\",\"country\":\"Tanzania\",\"gender\":\"female\",\"birthday\":\"2018-07-01\",\"password\":\"$2y$10$1u7S5wz.f39JDbraN70p7OrK.fEHKywjiCQ2SU\\/Q.mb13ZftyzJ92\",\"creator_id\":1,\"id\":6}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:49:34', '2018-07-30 16:49:34'),
(56, 'App\\User', 1, 'created', 'App\\Address', 9, '[]', '{\"street\":\"Lubuveg\",\"address\":\"\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":6,\"addressable_type\":\"App\\\\User\",\"id\":9}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:49:34', '2018-07-30 16:49:34'),
(57, 'App\\User', 1, 'created', 'App\\User', 7, '[]', '{\"first_name\":\"Kyarua\",\"last_name\":\"S Mussa\",\"email\":\"kyarua.mussa@homevegfarmers.co.tz\",\"phone\":\"0672411085\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-07-15\",\"password\":\"$2y$10$s3ET3SLSFuENRrKyM21po.GgBCxj.KrLiGG5TO\\/Dh313nabM7BhkS\",\"creator_id\":1,\"id\":7}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:52:17', '2018-07-30 16:52:17'),
(58, 'App\\User', 1, 'created', 'App\\Address', 10, '[]', '{\"street\":\"Lukoveg\",\"address\":\"\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":7,\"addressable_type\":\"App\\\\User\",\"id\":10}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:52:17', '2018-07-30 16:52:17'),
(59, 'App\\User', 1, 'created', 'App\\User', 8, '[]', '{\"first_name\":\"Rodgers\",\"last_name\":\"K Makange\",\"email\":\"rodgers.makange@homevegfarmers.co.tz\",\"phone\":\"0713477764\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-07-08\",\"password\":\"$2y$10$BExa.UJFdwATX3FRNb\\/FsOIscfbkRqV\\/tmkrWC\\/36gEsDz791YvJS\",\"creator_id\":1,\"id\":8}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:54:43', '2018-07-30 16:54:43'),
(60, 'App\\User', 1, 'created', 'App\\Address', 11, '[]', '{\"street\":\"Lubuveg\",\"address\":\"\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":8,\"addressable_type\":\"App\\\\User\",\"id\":11}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:54:43', '2018-07-30 16:54:43'),
(61, 'App\\User', 1, 'created', 'App\\User', 9, '[]', '{\"first_name\":\"Samweli\",\"last_name\":\"E Nassary\",\"email\":\"samweli.nassary@homevegfarmers.co.tz\",\"phone\":\"0784884585\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-07-08\",\"password\":\"$2y$10$gSm9.M8dUN7kILoZ5VArSuqyQqdHjsRF2fwm4N6xVP9A7AmEz0r6q\",\"creator_id\":1,\"id\":9}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:57:12', '2018-07-30 16:57:12'),
(62, 'App\\User', 1, 'created', 'App\\Address', 12, '[]', '{\"street\":\"Lukoveg\",\"address\":\"\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":9,\"addressable_type\":\"App\\\\User\",\"id\":12}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:57:12', '2018-07-30 16:57:12'),
(63, 'App\\User', 1, 'created', 'App\\User', 10, '[]', '{\"first_name\":\"Juma\",\"last_name\":\"M Kawanje\",\"email\":\"juma.kawanje@homevegfarmers.co.tz\",\"phone\":\"0678236629\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-07-08\",\"password\":\"$2y$10$uPzBYdoaxwAhlQde67x2yOdf6IktfOOU1cEIPGRJMhkMjrQI6LCUy\",\"creator_id\":1,\"id\":10}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:59:45', '2018-07-30 16:59:45'),
(64, 'App\\User', 1, 'created', 'App\\Address', 13, '[]', '{\"street\":\"Lubuveg\",\"address\":\"\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":10,\"addressable_type\":\"App\\\\User\",\"id\":13}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 16:59:45', '2018-07-30 16:59:45'),
(65, 'App\\User', 1, 'created', 'App\\User', 11, '[]', '{\"first_name\":\"Seth\",\"last_name\":\"Athumani\",\"email\":\"seth.athumani@homevegfarmers.co.tz\",\"phone\":\"0659507284\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-07-01\",\"password\":\"$2y$10$xDhe2zqfMC2uVq3bkSRWkuMNv3LorhyePSped4SPhJPHpgLZM.Mxq\",\"creator_id\":1,\"id\":11}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60', NULL, '2018-07-30 17:01:14', '2018-07-30 17:01:14'),
(66, 'App\\User', 1, 'created', 'App\\Address', 14, '[]', '{\"street\":\"lukoveg\",\"address\":\"\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":11,\"addressable_type\":\"App\\\\User\",\"id\":14}', 'http://www.homevegfarmers.co.tz/settings/users?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60', NULL, '2018-07-30 17:01:14', '2018-07-30 17:01:14'),
(67, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"XqjmFGFUwX1nhfTyEI7dRzKNq2enh9znU00wzyjwl5zyklmNK0bjAofUVy6E\"}', '{\"remember_token\":\"UPzFFG8vlp1yjMRQ4CbTnJv960JdGV3vaVyOg9Uq73WYWUoIOJmHSjoFgw5J\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 17:04:30', '2018-07-30 17:04:30'),
(68, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"UPzFFG8vlp1yjMRQ4CbTnJv960JdGV3vaVyOg9Uq73WYWUoIOJmHSjoFgw5J\"}', '{\"remember_token\":\"Lz5wONSNsbEFq66qTM53hUwwMubFA2Q4H7L7Cm3sAH0uHu5FFdvaDCVZ7zAE\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 17:05:23', '2018-07-30 17:05:23'),
(69, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"remember_token\":\"$2y$10$h8dJHSp2eoHKNr.LSAlp2O3PFO5gRlq3wcJBGaSjokiUchGu1wE1K\"}', '{\"remember_token\":\"27hECEFQkdViHxLeezepeY9xA0lf1OSmY9rJhXb14EJxpoFYK2YQw2ujvoGO\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 17:59:13', '2018-07-30 17:59:13'),
(70, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"Lz5wONSNsbEFq66qTM53hUwwMubFA2Q4H7L7Cm3sAH0uHu5FFdvaDCVZ7zAE\"}', '{\"remember_token\":\"OA07Lm0WdrHH1czs3jqbZWwmkTvR3InTlCOHBRFmX9tfL3znCjEPWCplwuO3\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:05:55', '2018-07-30 18:05:55'),
(71, 'App\\User', 11, 'updated', 'App\\User', 11, '{\"remember_token\":null}', '{\"remember_token\":\"0Bl5EPKfNYrEswPWRfBWRJUWkRJ9h8Y2cBwXgsvl2KuroUZB2sTUXCiD3zNr\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:05:55', '2018-07-30 18:05:55'),
(72, 'App\\User', 7, 'updated', 'App\\User', 7, '{\"remember_token\":null}', '{\"remember_token\":\"QhTWRM0HpmQofoffWFF3yhItfELTmhJlL0AEkdgQW2QhZxlBh96l8jScxRkl\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:05:57', '2018-07-30 18:05:57'),
(73, 'App\\User', 10, 'updated', 'App\\User', 10, '{\"remember_token\":null}', '{\"remember_token\":\"P5csnj4SB4kQkDYKSZywrmHo1nuakscn9oweYJ7FMk4PR6OAFMYOxtcuVplZ\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:09:23', '2018-07-30 18:09:23'),
(74, 'App\\User', 9, 'updated', 'App\\User', 9, '{\"remember_token\":null}', '{\"remember_token\":\"SC25nboRkQm0rjgISlxXZWEBy3rKzWAwqBnqTGFCJLIY7U1lWwAVnoc3TaZD\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:11:22', '2018-07-30 18:11:22'),
(75, 'App\\User', 8, 'updated', 'App\\User', 8, '{\"remember_token\":null}', '{\"remember_token\":\"WfJ9LCVrGujclwH0v9qdC4YudwmKOe5LrLOU0RPDtTOeOtSZFQNLnaS9QBTh\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:11:50', '2018-07-30 18:11:50'),
(76, 'App\\User', 11, 'updated', 'App\\User', 11, '{\"remember_token\":\"0Bl5EPKfNYrEswPWRfBWRJUWkRJ9h8Y2cBwXgsvl2KuroUZB2sTUXCiD3zNr\"}', '{\"remember_token\":\"etJf20j5XD1sTbfdqIEbVitj1WJvvWBTseXyaDT2VgnvrqjE8FWksJXlOaZd\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:12:18', '2018-07-30 18:12:18'),
(77, 'App\\User', 8, 'updated', 'App\\User', 8, '{\"remember_token\":\"WfJ9LCVrGujclwH0v9qdC4YudwmKOe5LrLOU0RPDtTOeOtSZFQNLnaS9QBTh\"}', '{\"remember_token\":\"ygyvDzqH67tUFv7nRKTHhjy0nyVkXiXFgEj81aTOeBRAdJWvgpd5KEkZpw4e\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:12:44', '2018-07-30 18:12:44'),
(78, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"OA07Lm0WdrHH1czs3jqbZWwmkTvR3InTlCOHBRFmX9tfL3znCjEPWCplwuO3\"}', '{\"remember_token\":\"IKNQlM6qK5oJFzLRYDfwAZlRazX5LIN7WE9daktTOuuQVw9ItDK7DhBD6zaT\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:14:04', '2018-07-30 18:14:04'),
(79, 'App\\User', 7, 'created', 'App\\Farmer', 4, '[]', '{\"first_name\":\"Kyarua\",\"last_name\":\"Mussa\",\"phone\":\"0672411085\",\"email\":\"mussakyarua@gmail.com\",\"gender\":\"male\",\"creator_id\":7,\"id\":4}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:19:20', '2018-07-30 18:19:20'),
(80, 'App\\User', 7, 'created', 'App\\Address', 15, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":4,\"addressable_type\":\"App\\\\Farmer\",\"id\":15}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:19:20', '2018-07-30 18:19:20'),
(81, 'App\\User', 11, 'created', 'App\\Farmer', 5, '[]', '{\"first_name\":\"Seth\",\"last_name\":\"Athumani\",\"phone\":\"0659507284\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":5}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:20:46', '2018-07-30 18:20:46'),
(82, 'App\\User', 11, 'created', 'App\\Address', 16, '[]', '{\"street\":\"SLP 343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":5,\"addressable_type\":\"App\\\\Farmer\",\"id\":16}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:20:46', '2018-07-30 18:20:46'),
(83, 'App\\User', 1, 'created', 'App\\Farmer', 6, '[]', '{\"first_name\":\"Class\",\"last_name\":\"Home\",\"phone\":\"0754977618\",\"email\":\"com@fff.com\",\"gender\":\"male\",\"creator_id\":1,\"id\":6}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:22:37', '2018-07-30 18:22:37'),
(84, 'App\\User', 1, 'created', 'App\\Address', 17, '[]', '{\"street\":\"fra\",\"address\":null,\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":6,\"addressable_type\":\"App\\\\Farmer\",\"id\":17}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:22:37', '2018-07-30 18:22:37'),
(85, 'App\\User', 1, 'created', 'App\\Farm', 4, '[]', '{\"size\":\"2\",\"size_unit\":\"Hectare\",\"description\":\"BOMBO\",\"farmer_id\":6,\"id\":4}', 'http://www.homevegfarmers.co.tz/farmers/6/farms?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:31:55', '2018-07-30 18:31:55'),
(86, 'App\\User', 1, 'created', 'App\\Address', 18, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":4,\"addressable_type\":\"App\\\\Farm\",\"id\":18}', 'http://www.homevegfarmers.co.tz/farmers/6/farms?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:31:55', '2018-07-30 18:31:55'),
(87, 'App\\User', 1, 'created', 'App\\Block', 3, '[]', '{\"number\":\"2A1\",\"size\":\"1\",\"size_unit\":\"Hectare\",\"farm_id\":\"4\",\"product_id\":\"1\",\"description\":\"O.4\",\"id\":3}', 'http://www.homevegfarmers.co.tz/farmers/6/blocks?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:33:49', '2018-07-30 18:33:49'),
(88, 'App\\User', 7, 'created', 'App\\Farm', 5, '[]', '{\"size\":\"2\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":4,\"id\":5}', 'http://www.homevegfarmers.co.tz/farmers/4/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:35:15', '2018-07-30 18:35:15'),
(89, 'App\\User', 7, 'created', 'App\\Address', 19, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":5,\"addressable_type\":\"App\\\\Farm\",\"id\":19}', 'http://www.homevegfarmers.co.tz/farmers/4/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:35:15', '2018-07-30 18:35:15'),
(90, 'App\\User', 7, 'created', 'App\\Block', 4, '[]', '{\"number\":\"2A\",\"size\":\"2\",\"size_unit\":\"Hectare\",\"farm_id\":\"5\",\"product_id\":\"2\",\"description\":\"Kwalei\",\"id\":4}', 'http://www.homevegfarmers.co.tz/farmers/4/blocks?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:36:34', '2018-07-30 18:36:34'),
(91, 'App\\User', 1, 'created', 'App\\ProductPrice', 8, '[]', '{\"amount\":\"2200\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":1,\"group_id\":3,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":8}', 'http://www.homevegfarmers.co.tz/settings/group_products/11?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:37:19', '2018-07-30 18:37:19'),
(92, 'App\\User', 1, 'created', 'App\\ProductPrice', 9, '[]', '{\"amount\":\"1400\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":4,\"group_id\":4,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":9}', 'http://www.homevegfarmers.co.tz/settings/group_products/10?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:37:45', '2018-07-30 18:37:45'),
(93, 'App\\User', 7, 'created', 'App\\Farm', 6, '[]', '{\"size\":\"2\",\"size_unit\":\"Hectare\",\"description\":\"Mheza\",\"farmer_id\":4,\"id\":6}', 'http://www.homevegfarmers.co.tz/farmers/4/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:38:03', '2018-07-30 18:38:03'),
(94, 'App\\User', 7, 'created', 'App\\Address', 20, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":6,\"addressable_type\":\"App\\\\Farm\",\"id\":20}', 'http://www.homevegfarmers.co.tz/farmers/4/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:38:03', '2018-07-30 18:38:03'),
(95, 'App\\User', 1, 'created', 'App\\ProductPrice', 10, '[]', '{\"amount\":\"2100\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":2,\"group_id\":4,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":10}', 'http://www.homevegfarmers.co.tz/settings/group_products/9?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:38:05', '2018-07-30 18:38:05'),
(96, 'App\\User', 1, 'created', 'App\\ProductPrice', 11, '[]', '{\"amount\":\"2200\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":1,\"group_id\":4,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":11}', 'http://www.homevegfarmers.co.tz/settings/group_products/8?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:38:33', '2018-07-30 18:38:33'),
(97, 'App\\User', 1, 'created', 'App\\ProductPrice', 12, '[]', '{\"amount\":\"1200\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":3,\"group_id\":4,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":12}', 'http://www.homevegfarmers.co.tz/settings/group_products/7?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:39:16', '2018-07-30 18:39:16'),
(98, 'App\\User', 1, 'created', 'App\\ProductPrice', 13, '[]', '{\"amount\":\"2000\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":2,\"group_id\":3,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":13}', 'http://www.homevegfarmers.co.tz/settings/group_products/6?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:39:39', '2018-07-30 18:39:39'),
(99, 'App\\User', 1, 'created', 'App\\ProductPrice', 14, '[]', '{\"amount\":\"2300\",\"currency\":\"TZS\",\"unit\":\"kg\",\"unit_value\":\"1\",\"product_id\":1,\"group_id\":2,\"valid_from\":\"2018-07-30\",\"valid_till\":null,\"is_current_price\":true,\"creator_id\":1,\"id\":14}', 'http://www.homevegfarmers.co.tz/settings/group_products/5?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:40:11', '2018-07-30 18:40:11'),
(100, 'App\\User', 11, 'created', 'App\\Farm', 7, '[]', '{\"size\":\"1\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":5,\"id\":7}', 'http://www.homevegfarmers.co.tz/farmers/5/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:41:03', '2018-07-30 18:41:03'),
(101, 'App\\User', 11, 'created', 'App\\Address', 21, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":7,\"addressable_type\":\"App\\\\Farm\",\"id\":21}', 'http://www.homevegfarmers.co.tz/farmers/5/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:41:04', '2018-07-30 18:41:04'),
(102, 'App\\User', 11, 'created', 'App\\Block', 5, '[]', '{\"number\":\"2A\",\"size\":\"1\",\"size_unit\":\"Hectare\",\"farm_id\":\"7\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":5}', 'http://www.homevegfarmers.co.tz/farmers/5/blocks?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:44:16', '2018-07-30 18:44:16'),
(103, 'App\\User', 7, 'created', 'App\\Block', 6, '[]', '{\"number\":\"2a\",\"size\":\"2\",\"size_unit\":\"Hectare\",\"farm_id\":\"6\",\"product_id\":\"3\",\"description\":\"Lewa\",\"id\":6}', 'http://www.homevegfarmers.co.tz/farmers/4/blocks?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:44:31', '2018-07-30 18:44:31'),
(104, 'App\\User', 7, 'created', 'App\\Farm', 8, '[]', '{\"size\":\"5\",\"size_unit\":\"Hectare\",\"description\":\"Manka\",\"farmer_id\":4,\"id\":8}', 'http://www.homevegfarmers.co.tz/farmers/4/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:45:44', '2018-07-30 18:45:44');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(105, 'App\\User', 7, 'created', 'App\\Address', 22, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":8,\"addressable_type\":\"App\\\\Farm\",\"id\":22}', 'http://www.homevegfarmers.co.tz/farmers/4/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:45:44', '2018-07-30 18:45:44'),
(106, 'App\\User', 7, 'created', 'App\\Farm', 9, '[]', '{\"size\":\"5\",\"size_unit\":\"Hectare\",\"description\":\"Manka\",\"farmer_id\":4,\"id\":9}', 'http://www.homevegfarmers.co.tz/farmers/4/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:46:48', '2018-07-30 18:46:48'),
(107, 'App\\User', 7, 'created', 'App\\Address', 23, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":9,\"addressable_type\":\"App\\\\Farm\",\"id\":23}', 'http://www.homevegfarmers.co.tz/farmers/4/farms?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:46:48', '2018-07-30 18:46:48'),
(108, 'App\\User', 7, 'created', 'App\\Block', 7, '[]', '{\"number\":\"2a\",\"size\":\"3\",\"size_unit\":\"Hectare\",\"farm_id\":\"9\",\"product_id\":\"2\",\"description\":\"Manka\",\"id\":7}', 'http://www.homevegfarmers.co.tz/farmers/4/blocks?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 18:48:19', '2018-07-30 18:48:19'),
(109, 'App\\User', 1, 'created', 'App\\Farm', 10, '[]', '{\"size\":\"4\",\"size_unit\":\"Hectare\",\"description\":\"addf\",\"farmer_id\":6,\"id\":10}', 'http://www.homevegfarmers.co.tz/farmers/6/farms?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:53:05', '2018-07-30 18:53:05'),
(110, 'App\\User', 1, 'created', 'App\\Address', 24, '[]', '{\"country\":\"Tanzania\",\"state\":\"Pwani\",\"addressable_id\":10,\"addressable_type\":\"App\\\\Farm\",\"id\":24}', 'http://www.homevegfarmers.co.tz/farmers/6/farms?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 18:53:05', '2018-07-30 18:53:05'),
(111, 'App\\User', 11, 'created', 'App\\Harvest', 9, '[]', '{\"farmer_id\":\"5\",\"block_id\":\"5\",\"expected_date\":\"2018-07-30 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"23\",\"description\":\"\",\"id\":9}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:04:08', '2018-07-30 19:04:08'),
(112, 'App\\User', 11, 'created', 'App\\Purchase', 8, '[]', '{\"delivery_note_id\":3,\"product_id\":1,\"harvest_id\":9,\"farmer_id\":5,\"block_id\":5,\"weight_unit\":\"kg\",\"field_weight\":\"23\",\"creator_id\":11,\"id\":8}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:04:08', '2018-07-30 19:04:08'),
(113, 'App\\User', 11, 'created', 'App\\Remark', 8, '[]', '{\"body\":\"Bombo\",\"remarkable_id\":8,\"remarkable_type\":\"App\\\\Purchase\",\"id\":8}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:04:08', '2018-07-30 19:04:08'),
(114, 'App\\User', 1, 'created', 'App\\Harvest', 10, '[]', '{\"farmer_id\":\"4\",\"block_id\":\"4\",\"expected_date\":\"2018-07-30 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"69\",\"description\":\"\",\"id\":10}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 19:05:10', '2018-07-30 19:05:10'),
(115, 'App\\User', 1, 'created', 'App\\Purchase', 9, '[]', '{\"delivery_note_id\":4,\"product_id\":2,\"harvest_id\":10,\"farmer_id\":4,\"block_id\":4,\"weight_unit\":\"kg\",\"field_weight\":\"69\",\"creator_id\":1,\"id\":9}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 19:05:10', '2018-07-30 19:05:10'),
(116, 'App\\User', 1, 'created', 'App\\Remark', 9, '[]', '{\"body\":\"any\",\"remarkable_id\":9,\"remarkable_type\":\"App\\\\Purchase\",\"id\":9}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.220.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-07-30 19:05:10', '2018-07-30 19:05:10'),
(117, 'App\\User', 7, 'created', 'App\\Harvest', 11, '[]', '{\"farmer_id\":\"4\",\"block_id\":\"4\",\"expected_date\":\"2018-07-30 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"60\",\"description\":\"\",\"id\":11}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:05:21', '2018-07-30 19:05:21'),
(118, 'App\\User', 7, 'created', 'App\\Purchase', 10, '[]', '{\"delivery_note_id\":5,\"product_id\":2,\"harvest_id\":11,\"farmer_id\":4,\"block_id\":4,\"weight_unit\":\"kg\",\"field_weight\":\"60\",\"creator_id\":7,\"id\":10}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:05:21', '2018-07-30 19:05:21'),
(119, 'App\\User', 7, 'created', 'App\\Remark', 10, '[]', '{\"body\":\"Nice\",\"remarkable_id\":10,\"remarkable_type\":\"App\\\\Purchase\",\"id\":10}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:05:21', '2018-07-30 19:05:21'),
(120, 'App\\User', 7, 'created', 'App\\Harvest', 12, '[]', '{\"farmer_id\":\"4\",\"block_id\":\"4\",\"expected_date\":\"2018-07-30 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"60\",\"description\":\"\",\"id\":12}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:05:23', '2018-07-30 19:05:23'),
(121, 'App\\User', 7, 'created', 'App\\Purchase', 11, '[]', '{\"delivery_note_id\":5,\"product_id\":2,\"harvest_id\":12,\"farmer_id\":4,\"block_id\":4,\"weight_unit\":\"kg\",\"field_weight\":\"60\",\"creator_id\":7,\"id\":11}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:05:23', '2018-07-30 19:05:23'),
(122, 'App\\User', 7, 'created', 'App\\Remark', 11, '[]', '{\"body\":\"Nice\",\"remarkable_id\":11,\"remarkable_type\":\"App\\\\Purchase\",\"id\":11}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:05:23', '2018-07-30 19:05:23'),
(123, 'App\\User', 11, 'created', 'App\\Harvest', 13, '[]', '{\"farmer_id\":\"4\",\"block_id\":\"2\",\"expected_date\":\"2018-07-30 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"25\",\"description\":\"\",\"id\":13}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:07:50', '2018-07-30 19:07:50'),
(124, 'App\\User', 11, 'created', 'App\\Purchase', 12, '[]', '{\"delivery_note_id\":3,\"product_id\":7,\"harvest_id\":13,\"farmer_id\":4,\"block_id\":2,\"weight_unit\":\"kg\",\"field_weight\":\"25\",\"creator_id\":11,\"id\":12}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:07:50', '2018-07-30 19:07:50'),
(125, 'App\\User', 11, 'created', 'App\\Remark', 12, '[]', '{\"body\":\"Purchases\",\"remarkable_id\":12,\"remarkable_type\":\"App\\\\Purchase\",\"id\":12}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:07:50', '2018-07-30 19:07:50'),
(126, 'App\\User', 11, 'created', 'App\\Harvest', 14, '[]', '{\"farmer_id\":\"4\",\"block_id\":\"6\",\"expected_date\":\"2018-07-31 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"50\",\"description\":\"\",\"id\":14}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:10:16', '2018-07-30 19:10:16'),
(127, 'App\\User', 11, 'created', 'App\\Purchase', 13, '[]', '{\"delivery_note_id\":6,\"product_id\":3,\"harvest_id\":14,\"farmer_id\":4,\"block_id\":6,\"weight_unit\":\"kg\",\"field_weight\":\"50\",\"creator_id\":11,\"id\":13}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:10:16', '2018-07-30 19:10:16'),
(128, 'App\\User', 11, 'created', 'App\\Remark', 13, '[]', '{\"body\":\"Collection\",\"remarkable_id\":13,\"remarkable_type\":\"App\\\\Purchase\",\"id\":13}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:10:16', '2018-07-30 19:10:16'),
(129, 'App\\User', 11, 'created', 'App\\Harvest', 15, '[]', '{\"farmer_id\":\"5\",\"block_id\":\"5\",\"expected_date\":\"2018-07-30 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"50\",\"description\":\"\",\"id\":15}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:12:45', '2018-07-30 19:12:45'),
(130, 'App\\User', 11, 'created', 'App\\Purchase', 14, '[]', '{\"delivery_note_id\":7,\"product_id\":1,\"harvest_id\":15,\"farmer_id\":5,\"block_id\":5,\"weight_unit\":\"kg\",\"field_weight\":\"50\",\"creator_id\":11,\"id\":14}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:12:45', '2018-07-30 19:12:45'),
(131, 'App\\User', 11, 'created', 'App\\Remark', 14, '[]', '{\"body\":\"Collection\",\"remarkable_id\":14,\"remarkable_type\":\"App\\\\Purchase\",\"id\":14}', 'http://www.homevegfarmers.co.tz/purchases?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:12:45', '2018-07-30 19:12:45'),
(132, 'App\\User', 11, 'updated', 'App\\Purchase', 14, '{\"status\":\"received\"}', '{\"status\":\"rejected\"}', 'http://www.homevegfarmers.co.tz/purchases/14/rejections?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:18:11', '2018-07-30 19:18:11'),
(133, 'App\\User', 11, 'updated', 'App\\User', 11, '{\"remember_token\":\"etJf20j5XD1sTbfdqIEbVitj1WJvvWBTseXyaDT2VgnvrqjE8FWksJXlOaZd\"}', '{\"remember_token\":\"uP5r32MdvHuU0IaqGTWOmuxWIQ8L3s5zxDdvZireYEgTT1v39ucX3CgY2z7d\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.71.88', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-30 19:30:04', '2018-07-30 19:30:04'),
(134, 'App\\User', 7, 'created', 'App\\Farmer', 7, '[]', '{\"first_name\":\"Salimu\",\"last_name\":\"Idd\",\"phone\":\"0658652462\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":7}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:36:37', '2018-07-31 10:36:37'),
(135, 'App\\User', 7, 'created', 'App\\Address', 25, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":7,\"addressable_type\":\"App\\\\Farmer\",\"id\":25}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:36:37', '2018-07-31 10:36:37'),
(136, 'App\\User', 7, 'created', 'App\\Farm', 11, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":7,\"id\":11}', 'http://www.homevegfarmers.co.tz/farmers/7/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:38:11', '2018-07-31 10:38:11'),
(137, 'App\\User', 7, 'created', 'App\\Address', 26, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":11,\"addressable_type\":\"App\\\\Farm\",\"id\":26}', 'http://www.homevegfarmers.co.tz/farmers/7/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:38:11', '2018-07-31 10:38:11'),
(138, 'App\\User', 7, 'created', 'App\\Block', 8, '[]', '{\"number\":\"1A1\",\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"farm_id\":\"11\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":8}', 'http://www.homevegfarmers.co.tz/farmers/7/blocks?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:40:08', '2018-07-31 10:40:08'),
(139, 'App\\User', 7, 'created', 'App\\Farmer', 8, '[]', '{\"first_name\":\"Twaha\",\"last_name\":\"Bakari\",\"phone\":\"0656053953\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":8}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:42:30', '2018-07-31 10:42:30'),
(140, 'App\\User', 7, 'created', 'App\\Address', 27, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":8,\"addressable_type\":\"App\\\\Farmer\",\"id\":27}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:42:30', '2018-07-31 10:42:30'),
(141, 'App\\User', 7, 'created', 'App\\Farm', 12, '[]', '{\"size\":\"0.19\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":8,\"id\":12}', 'http://www.homevegfarmers.co.tz/farmers/8/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:43:30', '2018-07-31 10:43:30'),
(142, 'App\\User', 7, 'created', 'App\\Address', 28, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":12,\"addressable_type\":\"App\\\\Farm\",\"id\":28}', 'http://www.homevegfarmers.co.tz/farmers/8/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:43:30', '2018-07-31 10:43:30'),
(143, 'App\\User', 7, 'created', 'App\\Block', 9, '[]', '{\"number\":\"1A2\",\"size\":\"0.19\",\"size_unit\":\"Hectare\",\"farm_id\":\"12\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":9}', 'http://www.homevegfarmers.co.tz/farmers/8/blocks?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:45:06', '2018-07-31 10:45:06'),
(144, 'App\\User', 7, 'created', 'App\\Farmer', 9, '[]', '{\"first_name\":\"Hamisi\",\"last_name\":\"Saidi\",\"phone\":\"0658498305\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":9}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:46:31', '2018-07-31 10:46:31'),
(145, 'App\\User', 7, 'created', 'App\\Address', 29, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":9,\"addressable_type\":\"App\\\\Farmer\",\"id\":29}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:46:31', '2018-07-31 10:46:31'),
(146, 'App\\User', 7, 'created', 'App\\Farm', 13, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":9,\"id\":13}', 'http://www.homevegfarmers.co.tz/farmers/9/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:47:22', '2018-07-31 10:47:22'),
(147, 'App\\User', 7, 'created', 'App\\Address', 30, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":13,\"addressable_type\":\"App\\\\Farm\",\"id\":30}', 'http://www.homevegfarmers.co.tz/farmers/9/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:47:22', '2018-07-31 10:47:22'),
(148, 'App\\User', 7, 'created', 'App\\Block', 10, '[]', '{\"number\":\"1A3\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"13\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":10}', 'http://www.homevegfarmers.co.tz/farmers/9/blocks?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:48:38', '2018-07-31 10:48:38'),
(149, 'App\\User', 7, 'created', 'App\\Farmer', 10, '[]', '{\"first_name\":\"Mwajuma\",\"last_name\":\"Saidi\",\"phone\":\"0658498305\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":10}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:50:10', '2018-07-31 10:50:10'),
(150, 'App\\User', 7, 'created', 'App\\Address', 31, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":10,\"addressable_type\":\"App\\\\Farmer\",\"id\":31}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:50:10', '2018-07-31 10:50:10'),
(151, 'App\\User', 7, 'created', 'App\\Farmer', 11, '[]', '{\"first_name\":\"Mwajuma\",\"last_name\":\"Saidi\",\"phone\":\"0658498305\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":11}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:50:11', '2018-07-31 10:50:11'),
(152, 'App\\User', 7, 'created', 'App\\Address', 32, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":11,\"addressable_type\":\"App\\\\Farmer\",\"id\":32}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:50:11', '2018-07-31 10:50:11'),
(153, 'App\\User', 7, 'created', 'App\\Farm', 14, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":11,\"id\":14}', 'http://www.homevegfarmers.co.tz/farmers/11/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:52:34', '2018-07-31 10:52:34'),
(154, 'App\\User', 7, 'created', 'App\\Address', 33, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":14,\"addressable_type\":\"App\\\\Farm\",\"id\":33}', 'http://www.homevegfarmers.co.tz/farmers/11/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:52:34', '2018-07-31 10:52:34'),
(155, 'App\\User', 7, 'created', 'App\\Block', 11, '[]', '{\"number\":\"1A4\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"14\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":11}', 'http://www.homevegfarmers.co.tz/farmers/11/blocks?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:53:35', '2018-07-31 10:53:35'),
(156, 'App\\User', 7, 'created', 'App\\Farmer', 12, '[]', '{\"first_name\":\"Yahaya\",\"last_name\":\"Waziri\",\"phone\":\"0656110533\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":12}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:57:58', '2018-07-31 10:57:58'),
(157, 'App\\User', 7, 'created', 'App\\Address', 34, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":12,\"addressable_type\":\"App\\\\Farmer\",\"id\":34}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:57:58', '2018-07-31 10:57:58'),
(158, 'App\\User', 7, 'created', 'App\\Farm', 15, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":12,\"id\":15}', 'http://www.homevegfarmers.co.tz/farmers/12/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:59:09', '2018-07-31 10:59:09'),
(159, 'App\\User', 7, 'created', 'App\\Address', 35, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":15,\"addressable_type\":\"App\\\\Farm\",\"id\":35}', 'http://www.homevegfarmers.co.tz/farmers/12/farms?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 10:59:09', '2018-07-31 10:59:09'),
(160, 'App\\User', 7, 'created', 'App\\Block', 12, '[]', '{\"number\":\"1A6\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"15\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":12}', 'http://www.homevegfarmers.co.tz/farmers/12/blocks?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 11:00:27', '2018-07-31 11:00:27'),
(161, 'App\\User', 7, 'updated', 'App\\User', 7, '{\"remember_token\":\"QhTWRM0HpmQofoffWFF3yhItfELTmhJlL0AEkdgQW2QhZxlBh96l8jScxRkl\"}', '{\"remember_token\":\"bRvUMCXQCqDQSG3irWJ85PmGRqUBNYK7j2L9tVhf2rYWxVaZu1HBcA9OnCKD\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.157.227.13', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-07-31 11:00:53', '2018-07-31 11:00:53'),
(162, 'App\\User', 10, 'created', 'App\\Farmer', 13, '[]', '{\"first_name\":\"Maliwaza\",\"last_name\":\"Samweli\",\"phone\":\"0677598710\",\"email\":null,\"gender\":\"female\",\"creator_id\":10,\"id\":13}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-01 14:40:48', '2018-08-01 14:40:48'),
(163, 'App\\User', 10, 'created', 'App\\Address', 36, '[]', '{\"street\":\"Korogwe\",\"address\":\"556\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":13,\"addressable_type\":\"App\\\\Farmer\",\"id\":36}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-01 14:40:49', '2018-08-01 14:40:49'),
(164, 'App\\User', 10, 'created', 'App\\Farm', 16, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":13,\"id\":16}', 'http://www.homevegfarmers.co.tz/farmers/13/farms?', '41.222.180.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-01 14:43:22', '2018-08-01 14:43:22'),
(165, 'App\\User', 10, 'created', 'App\\Address', 37, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":16,\"addressable_type\":\"App\\\\Farm\",\"id\":37}', 'http://www.homevegfarmers.co.tz/farmers/13/farms?', '41.222.180.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-01 14:43:22', '2018-08-01 14:43:22'),
(166, 'App\\User', 10, 'created', 'App\\Block', 13, '[]', '{\"number\":\"10A1\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"16\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":13}', 'http://www.homevegfarmers.co.tz/farmers/13/blocks?', '41.222.180.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-01 14:44:59', '2018-08-01 14:44:59'),
(167, 'App\\User', 10, 'updated', 'App\\User', 10, '{\"remember_token\":\"P5csnj4SB4kQkDYKSZywrmHo1nuakscn9oweYJ7FMk4PR6OAFMYOxtcuVplZ\"}', '{\"remember_token\":\"Fl9WMzXt7dr9Mm5oIg0VeTleCUyy9rbuqICcC0HXv621sqq1N6uIC1jqQZav\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.222.180.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-01 14:46:05', '2018-08-01 14:46:05'),
(168, 'App\\User', 1, 'created', 'App\\User', 12, '[]', '{\"first_name\":\"Meda\",\"last_name\":\"Tanzania\",\"email\":\"meda@homevegfarmers.co.tz\",\"phone\":\"0989988987\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-08-20\",\"password\":\"$2y$10$OlGAwwTM5CV\\/.YWD7KUe2uWPHplLSCMmaJkcMhOfuYkSD4vQT9Bo2\",\"creator_id\":1,\"id\":12}', 'http://www.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-02 13:40:27', '2018-08-02 13:40:27'),
(169, 'App\\User', 1, 'created', 'App\\Address', 38, '[]', '{\"street\":\"Dar\",\"address\":\"\",\"state\":\"Dar es Salaam\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":12,\"addressable_type\":\"App\\\\User\",\"id\":38}', 'http://www.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-02 13:40:27', '2018-08-02 13:40:27'),
(170, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"IKNQlM6qK5oJFzLRYDfwAZlRazX5LIN7WE9daktTOuuQVw9ItDK7DhBD6zaT\"}', '{\"remember_token\":\"9zv15rVHkjfk1OvfE7vxcbBRTQYKgB0Lcru178fFtZgnJWkceOm0p2rjgcu0\"}', 'http://www.homevegfarmers.co.tz/logout?', '156.159.78.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-02 15:21:07', '2018-08-02 15:21:07'),
(171, 'App\\User', 9, 'created', 'App\\Farmer', 14, '[]', '{\"first_name\":\"Yahaya\",\"last_name\":\"Waziri\",\"phone\":\"0656110533\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":14}', 'http://www.homevegfarmers.co.tz/farmers?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 22:40:32', '2018-08-02 22:40:32'),
(172, 'App\\User', 9, 'created', 'App\\Address', 39, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":14,\"addressable_type\":\"App\\\\Farmer\",\"id\":39}', 'http://www.homevegfarmers.co.tz/farmers?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 22:40:32', '2018-08-02 22:40:32'),
(173, 'App\\User', 9, 'created', 'App\\Farm', 17, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":14,\"id\":17}', 'http://www.homevegfarmers.co.tz/farmers/14/farms?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 22:41:30', '2018-08-02 22:41:30'),
(174, 'App\\User', 9, 'created', 'App\\Address', 40, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":17,\"addressable_type\":\"App\\\\Farm\",\"id\":40}', 'http://www.homevegfarmers.co.tz/farmers/14/farms?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 22:41:30', '2018-08-02 22:41:30'),
(175, 'App\\User', 9, 'created', 'App\\Block', 14, '[]', '{\"number\":\"1A5\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"17\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":14}', 'http://www.homevegfarmers.co.tz/farmers/14/blocks?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 22:42:44', '2018-08-02 22:42:44'),
(176, 'App\\User', 9, 'created', 'App\\Farmer', 15, '[]', '{\"first_name\":\"Bakari\",\"last_name\":\"Saidi\",\"phone\":\"0654461406\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":15}', 'http://www.homevegfarmers.co.tz/farmers?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 22:51:58', '2018-08-02 22:51:58'),
(177, 'App\\User', 9, 'created', 'App\\Address', 41, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":15,\"addressable_type\":\"App\\\\Farmer\",\"id\":41}', 'http://www.homevegfarmers.co.tz/farmers?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 22:51:58', '2018-08-02 22:51:58'),
(178, 'App\\User', 9, 'created', 'App\\Farm', 18, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":15,\"id\":18}', 'http://www.homevegfarmers.co.tz/farmers/15/farms?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 22:55:35', '2018-08-02 22:55:35'),
(179, 'App\\User', 9, 'created', 'App\\Address', 42, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":18,\"addressable_type\":\"App\\\\Farm\",\"id\":42}', 'http://www.homevegfarmers.co.tz/farmers/15/farms?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 22:55:35', '2018-08-02 22:55:35'),
(180, 'App\\User', 9, 'created', 'App\\Block', 15, '[]', '{\"number\":\"1A6\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"18\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":15}', 'http://www.homevegfarmers.co.tz/farmers/15/blocks?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:03:37', '2018-08-02 23:03:37'),
(181, 'App\\User', 9, 'created', 'App\\Block', 16, '[]', '{\"number\":\"1A6\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"18\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":16}', 'http://www.homevegfarmers.co.tz/farmers/15/blocks?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:03:39', '2018-08-02 23:03:39'),
(182, 'App\\User', 9, 'created', 'App\\Farmer', 16, '[]', '{\"first_name\":\"Halima\",\"last_name\":\"Ibrahimu\",\"phone\":\"0659126707\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":16}', 'http://www.homevegfarmers.co.tz/farmers?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:05:44', '2018-08-02 23:05:44'),
(183, 'App\\User', 9, 'created', 'App\\Address', 43, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":16,\"addressable_type\":\"App\\\\Farmer\",\"id\":43}', 'http://www.homevegfarmers.co.tz/farmers?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:05:44', '2018-08-02 23:05:44'),
(184, 'App\\User', 9, 'created', 'App\\Farm', 19, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":16,\"id\":19}', 'http://www.homevegfarmers.co.tz/farmers/16/farms?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:08:05', '2018-08-02 23:08:05'),
(185, 'App\\User', 9, 'created', 'App\\Address', 44, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":19,\"addressable_type\":\"App\\\\Farm\",\"id\":44}', 'http://www.homevegfarmers.co.tz/farmers/16/farms?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:08:05', '2018-08-02 23:08:05'),
(186, 'App\\User', 9, 'created', 'App\\Block', 17, '[]', '{\"number\":\"1A7\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"19\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":17}', 'http://www.homevegfarmers.co.tz/farmers/16/blocks?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:09:09', '2018-08-02 23:09:09'),
(187, 'App\\User', 9, 'created', 'App\\Farmer', 17, '[]', '{\"first_name\":\"Nuiya\",\"last_name\":\"Mohamed\",\"phone\":\"0714607903\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":17}', 'http://www.homevegfarmers.co.tz/farmers?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:11:01', '2018-08-02 23:11:01'),
(188, 'App\\User', 9, 'created', 'App\\Address', 45, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":17,\"addressable_type\":\"App\\\\Farmer\",\"id\":45}', 'http://www.homevegfarmers.co.tz/farmers?', '41.75.223.220', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:11:01', '2018-08-02 23:11:01'),
(189, 'App\\User', 9, 'created', 'App\\Farmer', 18, '[]', '{\"first_name\":\"Shakila\",\"last_name\":\"Issa\",\"phone\":\"0656429985\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":18}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.203', 'Mozilla/5.0 (Linux; Android 6.0; TECNO-C9 Build/MRA58K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/67.0.3396.87 Mobile Safari/537.36', NULL, '2018-08-02 23:26:25', '2018-08-02 23:26:25'),
(190, 'App\\User', 9, 'created', 'App\\Address', 46, '[]', '{\"street\":\"SLP 343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":18,\"addressable_type\":\"App\\\\Farmer\",\"id\":46}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.203', 'Mozilla/5.0 (Linux; Android 6.0; TECNO-C9 Build/MRA58K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/67.0.3396.87 Mobile Safari/537.36', NULL, '2018-08-02 23:26:25', '2018-08-02 23:26:25'),
(191, 'App\\User', 9, 'created', 'App\\Farm', 20, '[]', '{\"size\":\"0.065\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":18,\"id\":20}', 'http://www.homevegfarmers.co.tz/farmers/18/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:41:05', '2018-08-02 23:41:05'),
(192, 'App\\User', 9, 'created', 'App\\Address', 47, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":20,\"addressable_type\":\"App\\\\Farm\",\"id\":47}', 'http://www.homevegfarmers.co.tz/farmers/18/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:41:05', '2018-08-02 23:41:05'),
(193, 'App\\User', 9, 'created', 'App\\Block', 18, '[]', '{\"number\":\"1A9\",\"size\":\"0.065\",\"size_unit\":\"Hectare\",\"farm_id\":\"20\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":18}', 'http://www.homevegfarmers.co.tz/farmers/18/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:43:25', '2018-08-02 23:43:25'),
(194, 'App\\User', 9, 'created', 'App\\Farm', 21, '[]', '{\"size\":\"0.055\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":17,\"id\":21}', 'http://www.homevegfarmers.co.tz/farmers/17/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:44:39', '2018-08-02 23:44:39'),
(195, 'App\\User', 9, 'created', 'App\\Address', 48, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":21,\"addressable_type\":\"App\\\\Farm\",\"id\":48}', 'http://www.homevegfarmers.co.tz/farmers/17/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:44:39', '2018-08-02 23:44:39'),
(196, 'App\\User', 9, 'created', 'App\\Block', 19, '[]', '{\"number\":\"1A8\",\"size\":\"0.055\",\"size_unit\":\"Hectare\",\"farm_id\":\"21\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":19}', 'http://www.homevegfarmers.co.tz/farmers/17/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:45:34', '2018-08-02 23:45:34'),
(197, 'App\\User', 9, 'created', 'App\\Farmer', 19, '[]', '{\"first_name\":\"Selemani\",\"last_name\":\"Ally\",\"phone\":\"0718679980\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":19}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:47:16', '2018-08-02 23:47:16'),
(198, 'App\\User', 9, 'created', 'App\\Address', 49, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":19,\"addressable_type\":\"App\\\\Farmer\",\"id\":49}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:47:16', '2018-08-02 23:47:16'),
(199, 'App\\User', 9, 'created', 'App\\Farm', 22, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":19,\"id\":22}', 'http://www.homevegfarmers.co.tz/farmers/19/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:47:54', '2018-08-02 23:47:54'),
(200, 'App\\User', 9, 'created', 'App\\Address', 50, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":22,\"addressable_type\":\"App\\\\Farm\",\"id\":50}', 'http://www.homevegfarmers.co.tz/farmers/19/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:47:54', '2018-08-02 23:47:54'),
(201, 'App\\User', 9, 'created', 'App\\Block', 20, '[]', '{\"number\":\"1B10\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"22\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":20}', 'http://www.homevegfarmers.co.tz/farmers/19/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:48:46', '2018-08-02 23:48:46'),
(202, 'App\\User', 9, 'created', 'App\\Farmer', 20, '[]', '{\"first_name\":\"Zakati\",\"last_name\":\"Amiry\",\"phone\":\"0659605832\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":20}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:53:40', '2018-08-02 23:53:40'),
(203, 'App\\User', 9, 'created', 'App\\Address', 51, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":20,\"addressable_type\":\"App\\\\Farmer\",\"id\":51}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:53:40', '2018-08-02 23:53:40'),
(204, 'App\\User', 9, 'created', 'App\\Farm', 23, '[]', '{\"size\":\"0.235\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":20,\"id\":23}', 'http://www.homevegfarmers.co.tz/farmers/20/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:54:54', '2018-08-02 23:54:54'),
(205, 'App\\User', 9, 'created', 'App\\Address', 52, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":23,\"addressable_type\":\"App\\\\Farm\",\"id\":52}', 'http://www.homevegfarmers.co.tz/farmers/20/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:54:54', '2018-08-02 23:54:54'),
(206, 'App\\User', 9, 'created', 'App\\Block', 21, '[]', '{\"number\":\"1B11\",\"size\":\"0.235\",\"size_unit\":\"Hectare\",\"farm_id\":\"23\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":21}', 'http://www.homevegfarmers.co.tz/farmers/20/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:55:53', '2018-08-02 23:55:53'),
(207, 'App\\User', 9, 'created', 'App\\Farmer', 21, '[]', '{\"first_name\":\"Zainabu\",\"last_name\":\"Amiry\",\"phone\":\"0658532717\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":21}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:57:26', '2018-08-02 23:57:26'),
(208, 'App\\User', 9, 'created', 'App\\Address', 53, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":21,\"addressable_type\":\"App\\\\Farmer\",\"id\":53}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:57:26', '2018-08-02 23:57:26'),
(209, 'App\\User', 9, 'created', 'App\\Farm', 24, '[]', '{\"size\":\"0.033\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":21,\"id\":24}', 'http://www.homevegfarmers.co.tz/farmers/21/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:58:16', '2018-08-02 23:58:16'),
(210, 'App\\User', 9, 'created', 'App\\Address', 54, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":24,\"addressable_type\":\"App\\\\Farm\",\"id\":54}', 'http://www.homevegfarmers.co.tz/farmers/21/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:58:16', '2018-08-02 23:58:16'),
(211, 'App\\User', 9, 'created', 'App\\Block', 22, '[]', '{\"number\":\"1B12\",\"size\":\"0.033\",\"size_unit\":\"Hectare\",\"farm_id\":\"24\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":22}', 'http://www.homevegfarmers.co.tz/farmers/21/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-02 23:59:14', '2018-08-02 23:59:14'),
(212, 'App\\User', 9, 'created', 'App\\Farmer', 22, '[]', '{\"first_name\":\"Zalika\",\"last_name\":\"Ally\",\"phone\":\"0652397137\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":22}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:01:28', '2018-08-03 00:01:28'),
(213, 'App\\User', 9, 'created', 'App\\Address', 55, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":22,\"addressable_type\":\"App\\\\Farmer\",\"id\":55}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:01:28', '2018-08-03 00:01:28'),
(214, 'App\\User', 9, 'created', 'App\\Farm', 25, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":22,\"id\":25}', 'http://www.homevegfarmers.co.tz/farmers/22/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:02:01', '2018-08-03 00:02:01'),
(215, 'App\\User', 9, 'created', 'App\\Address', 56, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":25,\"addressable_type\":\"App\\\\Farm\",\"id\":56}', 'http://www.homevegfarmers.co.tz/farmers/22/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:02:01', '2018-08-03 00:02:01');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(216, 'App\\User', 9, 'created', 'App\\Block', 23, '[]', '{\"number\":\"1A13\",\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"farm_id\":\"25\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":23}', 'http://www.homevegfarmers.co.tz/farmers/22/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:02:43', '2018-08-03 00:02:43'),
(217, 'App\\User', 9, 'created', 'App\\Farmer', 23, '[]', '{\"first_name\":\"Swaiba\",\"last_name\":\"Waziri\",\"phone\":\"0654435279\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":23}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:05:13', '2018-08-03 00:05:13'),
(218, 'App\\User', 9, 'created', 'App\\Address', 57, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":23,\"addressable_type\":\"App\\\\Farmer\",\"id\":57}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:05:13', '2018-08-03 00:05:13'),
(219, 'App\\User', 9, 'created', 'App\\Farm', 26, '[]', '{\"size\":\"0.055\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":23,\"id\":26}', 'http://www.homevegfarmers.co.tz/farmers/23/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:05:52', '2018-08-03 00:05:52'),
(220, 'App\\User', 9, 'created', 'App\\Address', 58, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":26,\"addressable_type\":\"App\\\\Farm\",\"id\":58}', 'http://www.homevegfarmers.co.tz/farmers/23/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:05:52', '2018-08-03 00:05:52'),
(221, 'App\\User', 9, 'created', 'App\\Block', 24, '[]', '{\"number\":\"1B14\",\"size\":\"0.055\",\"size_unit\":\"Hectare\",\"farm_id\":\"26\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":24}', 'http://www.homevegfarmers.co.tz/farmers/23/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:08:35', '2018-08-03 00:08:35'),
(222, 'App\\User', 9, 'created', 'App\\Farmer', 24, '[]', '{\"first_name\":\"Zaituni\",\"last_name\":\"Ramadhani\",\"phone\":\"0653589705\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":24}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:13:03', '2018-08-03 00:13:03'),
(223, 'App\\User', 9, 'created', 'App\\Address', 59, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":24,\"addressable_type\":\"App\\\\Farmer\",\"id\":59}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:13:03', '2018-08-03 00:13:03'),
(224, 'App\\User', 9, 'created', 'App\\Farm', 27, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":24,\"id\":27}', 'http://www.homevegfarmers.co.tz/farmers/24/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:13:56', '2018-08-03 00:13:56'),
(225, 'App\\User', 9, 'created', 'App\\Address', 60, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":27,\"addressable_type\":\"App\\\\Farm\",\"id\":60}', 'http://www.homevegfarmers.co.tz/farmers/24/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:13:56', '2018-08-03 00:13:56'),
(226, 'App\\User', 9, 'created', 'App\\Block', 25, '[]', '{\"number\":\"1B15\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"27\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":25}', 'http://www.homevegfarmers.co.tz/farmers/24/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:15:54', '2018-08-03 00:15:54'),
(227, 'App\\User', 9, 'created', 'App\\Farmer', 25, '[]', '{\"first_name\":\"Issa\",\"last_name\":\"Salehe\",\"phone\":\"0782911967\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":25}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:19:35', '2018-08-03 00:19:35'),
(228, 'App\\User', 9, 'created', 'App\\Address', 61, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":25,\"addressable_type\":\"App\\\\Farmer\",\"id\":61}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:19:35', '2018-08-03 00:19:35'),
(229, 'App\\User', 9, 'created', 'App\\Farm', 28, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":25,\"id\":28}', 'http://www.homevegfarmers.co.tz/farmers/25/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:20:24', '2018-08-03 00:20:24'),
(230, 'App\\User', 9, 'created', 'App\\Address', 62, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":28,\"addressable_type\":\"App\\\\Farm\",\"id\":62}', 'http://www.homevegfarmers.co.tz/farmers/25/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:20:24', '2018-08-03 00:20:24'),
(231, 'App\\User', 9, 'created', 'App\\Block', 26, '[]', '{\"number\":\"1B16\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"28\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":26}', 'http://www.homevegfarmers.co.tz/farmers/25/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:21:17', '2018-08-03 00:21:17'),
(232, 'App\\User', 9, 'created', 'App\\Farmer', 26, '[]', '{\"first_name\":\"Seph\",\"last_name\":\"Kimweri\",\"phone\":\"0715326189\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":26}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:23:52', '2018-08-03 00:23:52'),
(233, 'App\\User', 9, 'created', 'App\\Address', 63, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":26,\"addressable_type\":\"App\\\\Farmer\",\"id\":63}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:23:52', '2018-08-03 00:23:52'),
(234, 'App\\User', 9, 'created', 'App\\Farm', 29, '[]', '{\"size\":\"0.065\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":26,\"id\":29}', 'http://www.homevegfarmers.co.tz/farmers/26/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:25:08', '2018-08-03 00:25:08'),
(235, 'App\\User', 9, 'created', 'App\\Address', 64, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":29,\"addressable_type\":\"App\\\\Farm\",\"id\":64}', 'http://www.homevegfarmers.co.tz/farmers/26/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:25:08', '2018-08-03 00:25:08'),
(236, 'App\\User', 9, 'created', 'App\\Block', 27, '[]', '{\"number\":\"1B17\",\"size\":\"0.065\",\"size_unit\":\"Hectare\",\"farm_id\":\"29\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":27}', 'http://www.homevegfarmers.co.tz/farmers/26/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:25:56', '2018-08-03 00:25:56'),
(237, 'App\\User', 9, 'created', 'App\\Farmer', 27, '[]', '{\"first_name\":\"Asumini\",\"last_name\":\"Ally\",\"phone\":\"0715326189\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":27}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:28:02', '2018-08-03 00:28:02'),
(238, 'App\\User', 9, 'created', 'App\\Address', 65, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":27,\"addressable_type\":\"App\\\\Farmer\",\"id\":65}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:28:02', '2018-08-03 00:28:02'),
(239, 'App\\User', 9, 'created', 'App\\Farm', 30, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":27,\"id\":30}', 'http://www.homevegfarmers.co.tz/farmers/27/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:28:42', '2018-08-03 00:28:42'),
(240, 'App\\User', 9, 'created', 'App\\Address', 66, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":30,\"addressable_type\":\"App\\\\Farm\",\"id\":66}', 'http://www.homevegfarmers.co.tz/farmers/27/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:28:42', '2018-08-03 00:28:42'),
(241, 'App\\User', 9, 'created', 'App\\Block', 28, '[]', '{\"number\":\"1B18\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"30\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":28}', 'http://www.homevegfarmers.co.tz/farmers/27/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:31:01', '2018-08-03 00:31:01'),
(242, 'App\\User', 9, 'created', 'App\\Farmer', 28, '[]', '{\"first_name\":\"Bakari\",\"last_name\":\"Salehe\",\"phone\":\"0655327104\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":28}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:32:22', '2018-08-03 00:32:22'),
(243, 'App\\User', 9, 'created', 'App\\Address', 67, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":28,\"addressable_type\":\"App\\\\Farmer\",\"id\":67}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:32:22', '2018-08-03 00:32:22'),
(244, 'App\\User', 9, 'created', 'App\\Farm', 31, '[]', '{\"size\":\"0.073\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":28,\"id\":31}', 'http://www.homevegfarmers.co.tz/farmers/28/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:33:59', '2018-08-03 00:33:59'),
(245, 'App\\User', 9, 'created', 'App\\Address', 68, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":31,\"addressable_type\":\"App\\\\Farm\",\"id\":68}', 'http://www.homevegfarmers.co.tz/farmers/28/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:33:59', '2018-08-03 00:33:59'),
(246, 'App\\User', 9, 'created', 'App\\Block', 29, '[]', '{\"number\":\"1C19\",\"size\":\"0.073\",\"size_unit\":\"Hectare\",\"farm_id\":\"31\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":29}', 'http://www.homevegfarmers.co.tz/farmers/28/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:35:05', '2018-08-03 00:35:05'),
(247, 'App\\User', 9, 'created', 'App\\Farmer', 29, '[]', '{\"first_name\":\"Sharifa\",\"last_name\":\"Idd\",\"phone\":\"0653042856\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":29}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:36:38', '2018-08-03 00:36:38'),
(248, 'App\\User', 9, 'created', 'App\\Address', 69, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":29,\"addressable_type\":\"App\\\\Farmer\",\"id\":69}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:36:38', '2018-08-03 00:36:38'),
(249, 'App\\User', 9, 'created', 'App\\Farm', 32, '[]', '{\"size\":\"0.095\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":29,\"id\":32}', 'http://www.homevegfarmers.co.tz/farmers/29/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:41:22', '2018-08-03 00:41:22'),
(250, 'App\\User', 9, 'created', 'App\\Address', 70, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":32,\"addressable_type\":\"App\\\\Farm\",\"id\":70}', 'http://www.homevegfarmers.co.tz/farmers/29/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:41:22', '2018-08-03 00:41:22'),
(251, 'App\\User', 9, 'created', 'App\\Block', 30, '[]', '{\"number\":\"1C20\",\"size\":\"0.095\",\"size_unit\":\"Hectare\",\"farm_id\":\"32\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":30}', 'http://www.homevegfarmers.co.tz/farmers/29/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:42:10', '2018-08-03 00:42:10'),
(252, 'App\\User', 9, 'created', 'App\\Farmer', 30, '[]', '{\"first_name\":\"Zaharia\",\"last_name\":\"Haji\",\"phone\":\"0689013350\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":30}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:43:43', '2018-08-03 00:43:43'),
(253, 'App\\User', 9, 'created', 'App\\Address', 71, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":30,\"addressable_type\":\"App\\\\Farmer\",\"id\":71}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:43:43', '2018-08-03 00:43:43'),
(254, 'App\\User', 9, 'created', 'App\\Farm', 33, '[]', '{\"size\":\"0.053\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":30,\"id\":33}', 'http://www.homevegfarmers.co.tz/farmers/30/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:48:18', '2018-08-03 00:48:18'),
(255, 'App\\User', 9, 'created', 'App\\Address', 72, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":33,\"addressable_type\":\"App\\\\Farm\",\"id\":72}', 'http://www.homevegfarmers.co.tz/farmers/30/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:48:18', '2018-08-03 00:48:18'),
(256, 'App\\User', 9, 'created', 'App\\Block', 31, '[]', '{\"number\":\"1C21\",\"size\":\"0.053\",\"size_unit\":\"Hectare\",\"farm_id\":\"33\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":31}', 'http://www.homevegfarmers.co.tz/farmers/30/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:49:29', '2018-08-03 00:49:29'),
(257, 'App\\User', 9, 'created', 'App\\Farmer', 31, '[]', '{\"first_name\":\"Mwanahija\",\"last_name\":\"Ngugi\",\"phone\":\"0673630755\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":31}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:50:49', '2018-08-03 00:50:49'),
(258, 'App\\User', 9, 'created', 'App\\Address', 73, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":31,\"addressable_type\":\"App\\\\Farmer\",\"id\":73}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:50:49', '2018-08-03 00:50:49'),
(259, 'App\\User', 9, 'created', 'App\\Farm', 34, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":31,\"id\":34}', 'http://www.homevegfarmers.co.tz/farmers/31/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:51:22', '2018-08-03 00:51:22'),
(260, 'App\\User', 9, 'created', 'App\\Address', 74, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":34,\"addressable_type\":\"App\\\\Farm\",\"id\":74}', 'http://www.homevegfarmers.co.tz/farmers/31/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:51:22', '2018-08-03 00:51:22'),
(261, 'App\\User', 9, 'created', 'App\\Block', 32, '[]', '{\"number\":\"1C22\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"34\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":32}', 'http://www.homevegfarmers.co.tz/farmers/31/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:52:08', '2018-08-03 00:52:08'),
(262, 'App\\User', 9, 'created', 'App\\Farmer', 32, '[]', '{\"first_name\":\"Janzila\",\"last_name\":\"Juma\",\"phone\":\"0714712891\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":32}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:53:23', '2018-08-03 00:53:23'),
(263, 'App\\User', 9, 'created', 'App\\Address', 75, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":32,\"addressable_type\":\"App\\\\Farmer\",\"id\":75}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:53:23', '2018-08-03 00:53:23'),
(264, 'App\\User', 9, 'created', 'App\\Farm', 35, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":32,\"id\":35}', 'http://www.homevegfarmers.co.tz/farmers/32/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:55:24', '2018-08-03 00:55:24'),
(265, 'App\\User', 9, 'created', 'App\\Address', 76, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":35,\"addressable_type\":\"App\\\\Farm\",\"id\":76}', 'http://www.homevegfarmers.co.tz/farmers/32/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:55:24', '2018-08-03 00:55:24'),
(266, 'App\\User', 9, 'created', 'App\\Block', 33, '[]', '{\"number\":\"1C23\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"35\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":33}', 'http://www.homevegfarmers.co.tz/farmers/32/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 00:59:05', '2018-08-03 00:59:05'),
(267, 'App\\User', 9, 'created', 'App\\Farmer', 33, '[]', '{\"first_name\":\"Halima\",\"last_name\":\"Shabani\",\"phone\":\"0685090954\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":33}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:00:48', '2018-08-03 01:00:48'),
(268, 'App\\User', 9, 'created', 'App\\Address', 77, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":33,\"addressable_type\":\"App\\\\Farmer\",\"id\":77}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:00:48', '2018-08-03 01:00:48'),
(269, 'App\\User', 9, 'created', 'App\\Farm', 36, '[]', '{\"size\":\"0.186\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":33,\"id\":36}', 'http://www.homevegfarmers.co.tz/farmers/33/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:02:41', '2018-08-03 01:02:41'),
(270, 'App\\User', 9, 'created', 'App\\Address', 78, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":36,\"addressable_type\":\"App\\\\Farm\",\"id\":78}', 'http://www.homevegfarmers.co.tz/farmers/33/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:02:41', '2018-08-03 01:02:41'),
(271, 'App\\User', 9, 'created', 'App\\Block', 34, '[]', '{\"number\":\"1C24\",\"size\":\"0.186\",\"size_unit\":\"Hectare\",\"farm_id\":\"36\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":34}', 'http://www.homevegfarmers.co.tz/farmers/33/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:03:26', '2018-08-03 01:03:26'),
(272, 'App\\User', 9, 'created', 'App\\Farmer', 34, '[]', '{\"first_name\":\"Fatuma\",\"last_name\":\"Ally\",\"phone\":\"0711806219\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":34}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:10:47', '2018-08-03 01:10:47'),
(273, 'App\\User', 9, 'created', 'App\\Address', 79, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":34,\"addressable_type\":\"App\\\\Farmer\",\"id\":79}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:10:47', '2018-08-03 01:10:47'),
(274, 'App\\User', 9, 'created', 'App\\Farm', 37, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":34,\"id\":37}', 'http://www.homevegfarmers.co.tz/farmers/34/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:11:24', '2018-08-03 01:11:24'),
(275, 'App\\User', 9, 'created', 'App\\Address', 80, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":37,\"addressable_type\":\"App\\\\Farm\",\"id\":80}', 'http://www.homevegfarmers.co.tz/farmers/34/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:11:24', '2018-08-03 01:11:24'),
(276, 'App\\User', 9, 'created', 'App\\Block', 35, '[]', '{\"number\":\"1C25\",\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"farm_id\":\"37\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":35}', 'http://www.homevegfarmers.co.tz/farmers/34/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:12:22', '2018-08-03 01:12:22'),
(277, 'App\\User', 9, 'created', 'App\\Farmer', 35, '[]', '{\"first_name\":\"Shabani\",\"last_name\":\"Amiry\",\"phone\":\"0712737637\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":35}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:13:53', '2018-08-03 01:13:53'),
(278, 'App\\User', 9, 'created', 'App\\Address', 81, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":35,\"addressable_type\":\"App\\\\Farmer\",\"id\":81}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:13:53', '2018-08-03 01:13:53'),
(279, 'App\\User', 9, 'created', 'App\\Farm', 38, '[]', '{\"size\":\"0.2\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":35,\"id\":38}', 'http://www.homevegfarmers.co.tz/farmers/35/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:14:39', '2018-08-03 01:14:39'),
(280, 'App\\User', 9, 'created', 'App\\Address', 82, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":38,\"addressable_type\":\"App\\\\Farm\",\"id\":82}', 'http://www.homevegfarmers.co.tz/farmers/35/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:14:39', '2018-08-03 01:14:39'),
(281, 'App\\User', 9, 'created', 'App\\Block', 36, '[]', '{\"number\":\"1C26\",\"size\":\"0.2\",\"size_unit\":\"Hectare\",\"farm_id\":\"38\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":36}', 'http://www.homevegfarmers.co.tz/farmers/35/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:18:38', '2018-08-03 01:18:38'),
(282, 'App\\User', 9, 'created', 'App\\Farmer', 36, '[]', '{\"first_name\":\"Mussa\",\"last_name\":\"Mohamed\",\"phone\":\"0653382208\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":36}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:20:18', '2018-08-03 01:20:18'),
(283, 'App\\User', 9, 'created', 'App\\Address', 83, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":36,\"addressable_type\":\"App\\\\Farmer\",\"id\":83}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:20:18', '2018-08-03 01:20:18'),
(284, 'App\\User', 9, 'created', 'App\\Farmer', 37, '[]', '{\"first_name\":\"Mussa\",\"last_name\":\"Mohamed\",\"phone\":\"0653382208\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":37}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:22:12', '2018-08-03 01:22:12'),
(285, 'App\\User', 9, 'created', 'App\\Address', 84, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":37,\"addressable_type\":\"App\\\\Farmer\",\"id\":84}', 'http://www.homevegfarmers.co.tz/farmers?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:22:12', '2018-08-03 01:22:12'),
(286, 'App\\User', 9, 'created', 'App\\Farm', 39, '[]', '{\"size\":\"0.12\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":37,\"id\":39}', 'http://www.homevegfarmers.co.tz/farmers/37/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:22:52', '2018-08-03 01:22:52'),
(287, 'App\\User', 9, 'created', 'App\\Address', 85, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":39,\"addressable_type\":\"App\\\\Farm\",\"id\":85}', 'http://www.homevegfarmers.co.tz/farmers/37/farms?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:22:52', '2018-08-03 01:22:52'),
(288, 'App\\User', 9, 'created', 'App\\Block', 37, '[]', '{\"number\":\"1C27\",\"size\":\"0.12\",\"size_unit\":\"Hectare\",\"farm_id\":\"39\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":37}', 'http://www.homevegfarmers.co.tz/farmers/37/blocks?', '197.186.150.6', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 01:24:00', '2018-08-03 01:24:00'),
(289, 'App\\User', 9, 'created', 'App\\Farmer', 38, '[]', '{\"first_name\":\"Shakila\",\"last_name\":\"Petro\",\"phone\":\"0789265609\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":38}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.214.15', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 14:25:47', '2018-08-03 14:25:47'),
(290, 'App\\User', 9, 'created', 'App\\Address', 86, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":38,\"addressable_type\":\"App\\\\Farmer\",\"id\":86}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.214.15', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 14:25:47', '2018-08-03 14:25:47'),
(291, 'App\\User', 9, 'created', 'App\\Farm', 40, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":38,\"id\":40}', 'http://www.homevegfarmers.co.tz/farmers/38/farms?', '156.157.214.15', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 14:32:03', '2018-08-03 14:32:03'),
(292, 'App\\User', 9, 'created', 'App\\Address', 87, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":40,\"addressable_type\":\"App\\\\Farm\",\"id\":87}', 'http://www.homevegfarmers.co.tz/farmers/38/farms?', '156.157.214.15', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 14:32:03', '2018-08-03 14:32:03'),
(293, 'App\\User', 9, 'created', 'App\\Block', 38, '[]', '{\"number\":\"1D28\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"40\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":38}', 'http://www.homevegfarmers.co.tz/farmers/38/blocks?', '156.157.214.15', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 14:39:56', '2018-08-03 14:39:56'),
(294, 'App\\User', 9, 'created', 'App\\Farmer', 39, '[]', '{\"first_name\":\"Rukia\",\"last_name\":\"Rajabu\",\"phone\":\"0672076637\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":39}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.214.15', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 14:51:33', '2018-08-03 14:51:33'),
(295, 'App\\User', 9, 'created', 'App\\Address', 88, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":39,\"addressable_type\":\"App\\\\Farmer\",\"id\":88}', 'http://www.homevegfarmers.co.tz/farmers?', '156.157.214.15', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 14:51:33', '2018-08-03 14:51:33'),
(296, 'App\\User', 9, 'created', 'App\\Farm', 41, '[]', '{\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":39,\"id\":41}', 'http://www.homevegfarmers.co.tz/farmers/39/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:39:31', '2018-08-03 15:39:31'),
(297, 'App\\User', 9, 'created', 'App\\Address', 89, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":41,\"addressable_type\":\"App\\\\Farm\",\"id\":89}', 'http://www.homevegfarmers.co.tz/farmers/39/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:39:31', '2018-08-03 15:39:31'),
(298, 'App\\User', 9, 'created', 'App\\Block', 39, '[]', '{\"number\":\"1D29\",\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"farm_id\":\"41\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":39}', 'http://www.homevegfarmers.co.tz/farmers/39/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:40:19', '2018-08-03 15:40:19'),
(299, 'App\\User', 9, 'created', 'App\\Farmer', 40, '[]', '{\"first_name\":\"Islami\",\"last_name\":\"Omari\",\"phone\":\"0789265609\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":40}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:41:43', '2018-08-03 15:41:43'),
(300, 'App\\User', 9, 'created', 'App\\Address', 90, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":40,\"addressable_type\":\"App\\\\Farmer\",\"id\":90}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:41:43', '2018-08-03 15:41:43'),
(301, 'App\\User', 9, 'created', 'App\\Farm', 42, '[]', '{\"size\":\"0.093\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":40,\"id\":42}', 'http://www.homevegfarmers.co.tz/farmers/40/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:42:28', '2018-08-03 15:42:28'),
(302, 'App\\User', 9, 'created', 'App\\Address', 91, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":42,\"addressable_type\":\"App\\\\Farm\",\"id\":91}', 'http://www.homevegfarmers.co.tz/farmers/40/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:42:28', '2018-08-03 15:42:28'),
(303, 'App\\User', 9, 'created', 'App\\Block', 40, '[]', '{\"number\":\"1D31\",\"size\":\"0.093\",\"size_unit\":\"Hectare\",\"farm_id\":\"42\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":40}', 'http://www.homevegfarmers.co.tz/farmers/40/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:43:58', '2018-08-03 15:43:58'),
(304, 'App\\User', 9, 'created', 'App\\Farmer', 41, '[]', '{\"first_name\":\"Mariamu\",\"last_name\":\"Maliki\",\"phone\":\"0654685309\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":41}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:45:40', '2018-08-03 15:45:40'),
(305, 'App\\User', 9, 'created', 'App\\Address', 92, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":41,\"addressable_type\":\"App\\\\Farmer\",\"id\":92}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:45:40', '2018-08-03 15:45:40'),
(306, 'App\\User', 9, 'created', 'App\\Farm', 43, '[]', '{\"size\":\"0.12\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":41,\"id\":43}', 'http://www.homevegfarmers.co.tz/farmers/41/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:46:25', '2018-08-03 15:46:25'),
(307, 'App\\User', 9, 'created', 'App\\Address', 93, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":43,\"addressable_type\":\"App\\\\Farm\",\"id\":93}', 'http://www.homevegfarmers.co.tz/farmers/41/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:46:25', '2018-08-03 15:46:25'),
(308, 'App\\User', 9, 'created', 'App\\Block', 41, '[]', '{\"number\":\"1D30\",\"size\":\"0.12\",\"size_unit\":\"Hectare\",\"farm_id\":\"43\",\"product_id\":\"1\",\"description\":\"Bombop\",\"id\":41}', 'http://www.homevegfarmers.co.tz/farmers/41/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:47:25', '2018-08-03 15:47:25'),
(309, 'App\\User', 9, 'created', 'App\\Farmer', 42, '[]', '{\"first_name\":\"Habibu\",\"last_name\":\"Omari\",\"phone\":\"0789265609\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":42}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:48:14', '2018-08-03 15:48:14'),
(310, 'App\\User', 9, 'created', 'App\\Address', 94, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":42,\"addressable_type\":\"App\\\\Farmer\",\"id\":94}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:48:14', '2018-08-03 15:48:14'),
(311, 'App\\User', 9, 'created', 'App\\Farm', 44, '[]', '{\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":42,\"id\":44}', 'http://www.homevegfarmers.co.tz/farmers/42/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:48:50', '2018-08-03 15:48:50'),
(312, 'App\\User', 9, 'created', 'App\\Address', 95, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":44,\"addressable_type\":\"App\\\\Farm\",\"id\":95}', 'http://www.homevegfarmers.co.tz/farmers/42/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:48:50', '2018-08-03 15:48:50'),
(313, 'App\\User', 9, 'created', 'App\\Block', 42, '[]', '{\"number\":\"1D32\",\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"farm_id\":\"44\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":42}', 'http://www.homevegfarmers.co.tz/farmers/42/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:49:41', '2018-08-03 15:49:41'),
(314, 'App\\User', 9, 'created', 'App\\Farmer', 43, '[]', '{\"first_name\":\"Hadija\",\"last_name\":\"Mtoi\",\"phone\":\"0658904555\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":43}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:50:45', '2018-08-03 15:50:45'),
(315, 'App\\User', 9, 'created', 'App\\Address', 96, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":43,\"addressable_type\":\"App\\\\Farmer\",\"id\":96}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:50:45', '2018-08-03 15:50:45'),
(316, 'App\\User', 9, 'created', 'App\\Farm', 45, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":43,\"id\":45}', 'http://www.homevegfarmers.co.tz/farmers/43/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:51:16', '2018-08-03 15:51:16'),
(317, 'App\\User', 9, 'created', 'App\\Address', 97, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":45,\"addressable_type\":\"App\\\\Farm\",\"id\":97}', 'http://www.homevegfarmers.co.tz/farmers/43/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:51:16', '2018-08-03 15:51:16'),
(318, 'App\\User', 9, 'created', 'App\\Block', 43, '[]', '{\"number\":\"1D33\",\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"farm_id\":\"45\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":43}', 'http://www.homevegfarmers.co.tz/farmers/43/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:52:04', '2018-08-03 15:52:04'),
(319, 'App\\User', 9, 'created', 'App\\Farmer', 44, '[]', '{\"first_name\":\"Ashiri\",\"last_name\":\"Omari\",\"phone\":\"0672113246\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":44}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:54:07', '2018-08-03 15:54:07'),
(320, 'App\\User', 9, 'created', 'App\\Address', 98, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":44,\"addressable_type\":\"App\\\\Farmer\",\"id\":98}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:54:07', '2018-08-03 15:54:07'),
(321, 'App\\User', 9, 'created', 'App\\Farm', 46, '[]', '{\"size\":\"0.11\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":44,\"id\":46}', 'http://www.homevegfarmers.co.tz/farmers/44/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:54:44', '2018-08-03 15:54:44'),
(322, 'App\\User', 9, 'created', 'App\\Address', 99, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":46,\"addressable_type\":\"App\\\\Farm\",\"id\":99}', 'http://www.homevegfarmers.co.tz/farmers/44/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:54:44', '2018-08-03 15:54:44'),
(323, 'App\\User', 9, 'created', 'App\\Block', 44, '[]', '{\"number\":\"1D34\",\"size\":\"0.11\",\"size_unit\":\"Hectare\",\"farm_id\":\"46\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":44}', 'http://www.homevegfarmers.co.tz/farmers/44/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:55:38', '2018-08-03 15:55:38'),
(324, 'App\\User', 9, 'created', 'App\\Farmer', 45, '[]', '{\"first_name\":\"Ramadhani\",\"last_name\":\"Juma\",\"phone\":\"0710110694\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":45}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:56:37', '2018-08-03 15:56:37'),
(325, 'App\\User', 9, 'created', 'App\\Address', 100, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":45,\"addressable_type\":\"App\\\\Farmer\",\"id\":100}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:56:37', '2018-08-03 15:56:37');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(326, 'App\\User', 9, 'created', 'App\\Farm', 47, '[]', '{\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":45,\"id\":47}', 'http://www.homevegfarmers.co.tz/farmers/45/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:57:09', '2018-08-03 15:57:09'),
(327, 'App\\User', 9, 'created', 'App\\Address', 101, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":47,\"addressable_type\":\"App\\\\Farm\",\"id\":101}', 'http://www.homevegfarmers.co.tz/farmers/45/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:57:09', '2018-08-03 15:57:09'),
(328, 'App\\User', 9, 'created', 'App\\Block', 45, '[]', '{\"number\":\"1D35\",\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"farm_id\":\"47\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":45}', 'http://www.homevegfarmers.co.tz/farmers/45/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:57:51', '2018-08-03 15:57:51'),
(329, 'App\\User', 9, 'created', 'App\\Farmer', 46, '[]', '{\"first_name\":\"Amina\",\"last_name\":\"Mohamed\",\"phone\":\"0656829160\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":46}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:58:53', '2018-08-03 15:58:53'),
(330, 'App\\User', 9, 'created', 'App\\Address', 102, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":46,\"addressable_type\":\"App\\\\Farmer\",\"id\":102}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:58:53', '2018-08-03 15:58:53'),
(331, 'App\\User', 9, 'created', 'App\\Farm', 48, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":46,\"id\":48}', 'http://www.homevegfarmers.co.tz/farmers/46/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:59:26', '2018-08-03 15:59:26'),
(332, 'App\\User', 9, 'created', 'App\\Address', 103, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":48,\"addressable_type\":\"App\\\\Farm\",\"id\":103}', 'http://www.homevegfarmers.co.tz/farmers/46/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 15:59:26', '2018-08-03 15:59:26'),
(333, 'App\\User', 9, 'created', 'App\\Block', 46, '[]', '{\"number\":\"1D36\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"48\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":46}', 'http://www.homevegfarmers.co.tz/farmers/46/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:00:22', '2018-08-03 16:00:22'),
(334, 'App\\User', 9, 'created', 'App\\Farmer', 47, '[]', '{\"first_name\":\"Waziri\",\"last_name\":\"Salimu\",\"phone\":\"0715265713\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":47}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:01:25', '2018-08-03 16:01:25'),
(335, 'App\\User', 9, 'created', 'App\\Address', 104, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":47,\"addressable_type\":\"App\\\\Farmer\",\"id\":104}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:01:25', '2018-08-03 16:01:25'),
(336, 'App\\User', 9, 'created', 'App\\Farm', 49, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":47,\"id\":49}', 'http://www.homevegfarmers.co.tz/farmers/47/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:01:56', '2018-08-03 16:01:56'),
(337, 'App\\User', 9, 'created', 'App\\Address', 105, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":49,\"addressable_type\":\"App\\\\Farm\",\"id\":105}', 'http://www.homevegfarmers.co.tz/farmers/47/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:01:56', '2018-08-03 16:01:56'),
(338, 'App\\User', 9, 'created', 'App\\Block', 47, '[]', '{\"number\":\"1E37\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"49\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":47}', 'http://www.homevegfarmers.co.tz/farmers/47/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:02:39', '2018-08-03 16:02:39'),
(339, 'App\\User', 9, 'created', 'App\\Farmer', 48, '[]', '{\"first_name\":\"Rajabu\",\"last_name\":\"Athumani\",\"phone\":\"0712784574\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":48}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:03:48', '2018-08-03 16:03:48'),
(340, 'App\\User', 9, 'created', 'App\\Address', 106, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":48,\"addressable_type\":\"App\\\\Farmer\",\"id\":106}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:03:48', '2018-08-03 16:03:48'),
(341, 'App\\User', 9, 'created', 'App\\Farm', 50, '[]', '{\"size\":\"0.068\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":48,\"id\":50}', 'http://www.homevegfarmers.co.tz/farmers/48/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:04:22', '2018-08-03 16:04:22'),
(342, 'App\\User', 9, 'created', 'App\\Address', 107, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":50,\"addressable_type\":\"App\\\\Farm\",\"id\":107}', 'http://www.homevegfarmers.co.tz/farmers/48/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:04:22', '2018-08-03 16:04:22'),
(343, 'App\\User', 9, 'created', 'App\\Block', 48, '[]', '{\"number\":\"1E38\",\"size\":\"0.068\",\"size_unit\":\"Hectare\",\"farm_id\":\"50\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":48}', 'http://www.homevegfarmers.co.tz/farmers/48/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:05:16', '2018-08-03 16:05:16'),
(344, 'App\\User', 9, 'created', 'App\\Farmer', 49, '[]', '{\"first_name\":\"Ratibu\",\"last_name\":\"Mhina\",\"phone\":\"0653703366\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":49}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:06:27', '2018-08-03 16:06:27'),
(345, 'App\\User', 9, 'created', 'App\\Address', 108, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":49,\"addressable_type\":\"App\\\\Farmer\",\"id\":108}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:06:27', '2018-08-03 16:06:27'),
(346, 'App\\User', 9, 'created', 'App\\Farm', 51, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":49,\"id\":51}', 'http://www.homevegfarmers.co.tz/farmers/49/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:07:04', '2018-08-03 16:07:04'),
(347, 'App\\User', 9, 'created', 'App\\Address', 109, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":51,\"addressable_type\":\"App\\\\Farm\",\"id\":109}', 'http://www.homevegfarmers.co.tz/farmers/49/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:07:04', '2018-08-03 16:07:04'),
(348, 'App\\User', 9, 'created', 'App\\Block', 49, '[]', '{\"number\":\"1E39\",\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"farm_id\":\"51\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":49}', 'http://www.homevegfarmers.co.tz/farmers/49/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:07:44', '2018-08-03 16:07:44'),
(349, 'App\\User', 9, 'created', 'App\\Farmer', 50, '[]', '{\"first_name\":\"Mwanaharusi\",\"last_name\":\"Omari\",\"phone\":\"0679297103\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":50}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:09:25', '2018-08-03 16:09:25'),
(350, 'App\\User', 9, 'created', 'App\\Address', 110, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":50,\"addressable_type\":\"App\\\\Farmer\",\"id\":110}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:09:25', '2018-08-03 16:09:25'),
(351, 'App\\User', 9, 'created', 'App\\Farm', 52, '[]', '{\"size\":\"0.15\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":50,\"id\":52}', 'http://www.homevegfarmers.co.tz/farmers/50/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:10:03', '2018-08-03 16:10:03'),
(352, 'App\\User', 9, 'created', 'App\\Address', 111, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":52,\"addressable_type\":\"App\\\\Farm\",\"id\":111}', 'http://www.homevegfarmers.co.tz/farmers/50/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:10:03', '2018-08-03 16:10:03'),
(353, 'App\\User', 9, 'created', 'App\\Block', 50, '[]', '{\"number\":\"1E40\",\"size\":\"0.15\",\"size_unit\":\"Hectare\",\"farm_id\":\"52\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":50}', 'http://www.homevegfarmers.co.tz/farmers/50/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:11:07', '2018-08-03 16:11:07'),
(354, 'App\\User', 9, 'created', 'App\\Farmer', 51, '[]', '{\"first_name\":\"Salama\",\"last_name\":\"Abdala\",\"phone\":\"0679297103\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":51}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:12:59', '2018-08-03 16:12:59'),
(355, 'App\\User', 9, 'created', 'App\\Address', 112, '[]', '{\"street\":\"343\",\"address\":null,\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":51,\"addressable_type\":\"App\\\\Farmer\",\"id\":112}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:12:59', '2018-08-03 16:12:59'),
(356, 'App\\User', 9, 'created', 'App\\Farm', 53, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":51,\"id\":53}', 'http://www.homevegfarmers.co.tz/farmers/51/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:13:31', '2018-08-03 16:13:31'),
(357, 'App\\User', 9, 'created', 'App\\Address', 113, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":53,\"addressable_type\":\"App\\\\Farm\",\"id\":113}', 'http://www.homevegfarmers.co.tz/farmers/51/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:13:31', '2018-08-03 16:13:31'),
(358, 'App\\User', 9, 'created', 'App\\Block', 51, '[]', '{\"number\":\"1E41\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"53\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":51}', 'http://www.homevegfarmers.co.tz/farmers/51/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:14:23', '2018-08-03 16:14:23'),
(359, 'App\\User', 9, 'created', 'App\\Farmer', 52, '[]', '{\"first_name\":\"Hamida\",\"last_name\":\"Ally\",\"phone\":\"0719430996\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":52}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:15:29', '2018-08-03 16:15:29'),
(360, 'App\\User', 9, 'created', 'App\\Address', 114, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":52,\"addressable_type\":\"App\\\\Farmer\",\"id\":114}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:15:29', '2018-08-03 16:15:29'),
(361, 'App\\User', 9, 'created', 'App\\Farm', 54, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":52,\"id\":54}', 'http://www.homevegfarmers.co.tz/farmers/52/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:16:02', '2018-08-03 16:16:02'),
(362, 'App\\User', 9, 'created', 'App\\Address', 115, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":54,\"addressable_type\":\"App\\\\Farm\",\"id\":115}', 'http://www.homevegfarmers.co.tz/farmers/52/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:16:02', '2018-08-03 16:16:02'),
(363, 'App\\User', 9, 'created', 'App\\Block', 52, '[]', '{\"number\":\"1E42\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"54\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":52}', 'http://www.homevegfarmers.co.tz/farmers/52/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:16:41', '2018-08-03 16:16:41'),
(364, 'App\\User', 9, 'created', 'App\\Farmer', 53, '[]', '{\"first_name\":\"Batuli\",\"last_name\":\"Hashimu\",\"phone\":\"0676344843\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":53}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:17:54', '2018-08-03 16:17:54'),
(365, 'App\\User', 9, 'created', 'App\\Address', 116, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":53,\"addressable_type\":\"App\\\\Farmer\",\"id\":116}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:17:54', '2018-08-03 16:17:54'),
(366, 'App\\User', 9, 'created', 'App\\Farm', 55, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":53,\"id\":55}', 'http://www.homevegfarmers.co.tz/farmers/53/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:20:58', '2018-08-03 16:20:58'),
(367, 'App\\User', 9, 'created', 'App\\Address', 117, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":55,\"addressable_type\":\"App\\\\Farm\",\"id\":117}', 'http://www.homevegfarmers.co.tz/farmers/53/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:20:58', '2018-08-03 16:20:58'),
(368, 'App\\User', 9, 'created', 'App\\Block', 53, '[]', '{\"number\":\"1E43\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"55\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":53}', 'http://www.homevegfarmers.co.tz/farmers/53/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:21:47', '2018-08-03 16:21:47'),
(369, 'App\\User', 9, 'created', 'App\\Farmer', 54, '[]', '{\"first_name\":\"Jumanne\",\"last_name\":\"Juma\",\"phone\":\"0714225987\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":54}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:26:00', '2018-08-03 16:26:00'),
(370, 'App\\User', 9, 'created', 'App\\Address', 118, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":54,\"addressable_type\":\"App\\\\Farmer\",\"id\":118}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:26:00', '2018-08-03 16:26:00'),
(371, 'App\\User', 9, 'created', 'App\\Farm', 56, '[]', '{\"size\":\"0.091\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":54,\"id\":56}', 'http://www.homevegfarmers.co.tz/farmers/54/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:26:36', '2018-08-03 16:26:36'),
(372, 'App\\User', 9, 'created', 'App\\Address', 119, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":56,\"addressable_type\":\"App\\\\Farm\",\"id\":119}', 'http://www.homevegfarmers.co.tz/farmers/54/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:26:36', '2018-08-03 16:26:36'),
(373, 'App\\User', 9, 'created', 'App\\Block', 54, '[]', '{\"number\":\"1E44\",\"size\":\"0.091\",\"size_unit\":\"Hectare\",\"farm_id\":\"56\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":54}', 'http://www.homevegfarmers.co.tz/farmers/54/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:28:20', '2018-08-03 16:28:20'),
(374, 'App\\User', 9, 'created', 'App\\Farmer', 55, '[]', '{\"first_name\":\"Subra\",\"last_name\":\"Saidi\",\"phone\":\"0652325370\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":55}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:34:16', '2018-08-03 16:34:16'),
(375, 'App\\User', 9, 'created', 'App\\Address', 120, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":55,\"addressable_type\":\"App\\\\Farmer\",\"id\":120}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:34:16', '2018-08-03 16:34:16'),
(376, 'App\\User', 9, 'created', 'App\\Farm', 57, '[]', '{\"size\":\"0.077\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":55,\"id\":57}', 'http://www.homevegfarmers.co.tz/farmers/55/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:34:55', '2018-08-03 16:34:55'),
(377, 'App\\User', 9, 'created', 'App\\Address', 121, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":57,\"addressable_type\":\"App\\\\Farm\",\"id\":121}', 'http://www.homevegfarmers.co.tz/farmers/55/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:34:55', '2018-08-03 16:34:55'),
(378, 'App\\User', 9, 'created', 'App\\Block', 55, '[]', '{\"number\":\"1E45\",\"size\":\"0.077\",\"size_unit\":\"Hectare\",\"farm_id\":\"57\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":55}', 'http://www.homevegfarmers.co.tz/farmers/55/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:36:27', '2018-08-03 16:36:27'),
(379, 'App\\User', 9, 'created', 'App\\Farmer', 56, '[]', '{\"first_name\":\"Asia\",\"last_name\":\"Idd\",\"phone\":\"0654687907\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":56}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:43:48', '2018-08-03 16:43:48'),
(380, 'App\\User', 9, 'created', 'App\\Address', 122, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":56,\"addressable_type\":\"App\\\\Farmer\",\"id\":122}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:43:48', '2018-08-03 16:43:48'),
(381, 'App\\User', 9, 'created', 'App\\Farm', 58, '[]', '{\"size\":\"0.026\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":56,\"id\":58}', 'http://www.homevegfarmers.co.tz/farmers/56/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:44:31', '2018-08-03 16:44:31'),
(382, 'App\\User', 9, 'created', 'App\\Address', 123, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":58,\"addressable_type\":\"App\\\\Farm\",\"id\":123}', 'http://www.homevegfarmers.co.tz/farmers/56/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:44:31', '2018-08-03 16:44:31'),
(383, 'App\\User', 9, 'created', 'App\\Block', 56, '[]', '{\"number\":\"1F46\",\"size\":\"0.026\",\"size_unit\":\"Hectare\",\"farm_id\":\"58\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":56}', 'http://www.homevegfarmers.co.tz/farmers/56/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:45:22', '2018-08-03 16:45:22'),
(384, 'App\\User', 9, 'created', 'App\\Farmer', 57, '[]', '{\"first_name\":\"Zawadi\",\"last_name\":\"Bakari\",\"phone\":\"0657141049\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":57}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:46:27', '2018-08-03 16:46:27'),
(385, 'App\\User', 9, 'created', 'App\\Address', 124, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":57,\"addressable_type\":\"App\\\\Farmer\",\"id\":124}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:46:27', '2018-08-03 16:46:27'),
(386, 'App\\User', 9, 'created', 'App\\Farm', 59, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":57,\"id\":59}', 'http://www.homevegfarmers.co.tz/farmers/57/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:46:59', '2018-08-03 16:46:59'),
(387, 'App\\User', 9, 'created', 'App\\Address', 125, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":59,\"addressable_type\":\"App\\\\Farm\",\"id\":125}', 'http://www.homevegfarmers.co.tz/farmers/57/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:46:59', '2018-08-03 16:46:59'),
(388, 'App\\User', 9, 'created', 'App\\Block', 57, '[]', '{\"number\":\"1F47\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"59\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":57}', 'http://www.homevegfarmers.co.tz/farmers/57/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:48:30', '2018-08-03 16:48:30'),
(389, 'App\\User', 9, 'created', 'App\\Farmer', 58, '[]', '{\"first_name\":\"Jumaa\",\"last_name\":\"Hoza\",\"phone\":\"0716851756\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":58}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:49:36', '2018-08-03 16:49:36'),
(390, 'App\\User', 9, 'created', 'App\\Address', 126, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":58,\"addressable_type\":\"App\\\\Farmer\",\"id\":126}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:49:36', '2018-08-03 16:49:36'),
(391, 'App\\User', 9, 'created', 'App\\Farm', 60, '[]', '{\"size\":\"0.091\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":58,\"id\":60}', 'http://www.homevegfarmers.co.tz/farmers/58/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:50:13', '2018-08-03 16:50:13'),
(392, 'App\\User', 9, 'created', 'App\\Address', 127, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":60,\"addressable_type\":\"App\\\\Farm\",\"id\":127}', 'http://www.homevegfarmers.co.tz/farmers/58/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:50:13', '2018-08-03 16:50:13'),
(393, 'App\\User', 9, 'created', 'App\\Block', 58, '[]', '{\"number\":\"1F48\",\"size\":\"0.091\",\"size_unit\":\"Hectare\",\"farm_id\":\"60\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":58}', 'http://www.homevegfarmers.co.tz/farmers/58/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:51:32', '2018-08-03 16:51:32'),
(394, 'App\\User', 9, 'created', 'App\\Farmer', 59, '[]', '{\"first_name\":\"Mwanaidi\",\"last_name\":\"Omari\",\"phone\":\"0658621150\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":59}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:52:49', '2018-08-03 16:52:49'),
(395, 'App\\User', 9, 'created', 'App\\Address', 128, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":59,\"addressable_type\":\"App\\\\Farmer\",\"id\":128}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:52:49', '2018-08-03 16:52:49'),
(396, 'App\\User', 9, 'created', 'App\\Farm', 61, '[]', '{\"size\":\"0.086\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":59,\"id\":61}', 'http://www.homevegfarmers.co.tz/farmers/59/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:53:40', '2018-08-03 16:53:40'),
(397, 'App\\User', 9, 'created', 'App\\Address', 129, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":61,\"addressable_type\":\"App\\\\Farm\",\"id\":129}', 'http://www.homevegfarmers.co.tz/farmers/59/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:53:40', '2018-08-03 16:53:40'),
(398, 'App\\User', 9, 'created', 'App\\Block', 59, '[]', '{\"number\":\"1F49\",\"size\":\"0.086\",\"size_unit\":\"Hectare\",\"farm_id\":\"61\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":59}', 'http://www.homevegfarmers.co.tz/farmers/59/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:54:34', '2018-08-03 16:54:34'),
(399, 'App\\User', 9, 'created', 'App\\Farmer', 60, '[]', '{\"first_name\":\"Rajabu\",\"last_name\":\"Mshaghasho\",\"phone\":\"0652907337\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":60}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:56:03', '2018-08-03 16:56:03'),
(400, 'App\\User', 9, 'created', 'App\\Address', 130, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":60,\"addressable_type\":\"App\\\\Farmer\",\"id\":130}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:56:03', '2018-08-03 16:56:03'),
(401, 'App\\User', 9, 'created', 'App\\Farm', 62, '[]', '{\"size\":\"0.12\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":60,\"id\":62}', 'http://www.homevegfarmers.co.tz/farmers/60/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:56:43', '2018-08-03 16:56:43'),
(402, 'App\\User', 9, 'created', 'App\\Address', 131, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":62,\"addressable_type\":\"App\\\\Farm\",\"id\":131}', 'http://www.homevegfarmers.co.tz/farmers/60/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:56:43', '2018-08-03 16:56:43'),
(403, 'App\\User', 9, 'created', 'App\\Block', 60, '[]', '{\"number\":\"1F50\",\"size\":\"0.12\",\"size_unit\":\"Hectare\",\"farm_id\":\"62\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":60}', 'http://www.homevegfarmers.co.tz/farmers/60/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:57:37', '2018-08-03 16:57:37'),
(404, 'App\\User', 9, 'created', 'App\\Block', 61, '[]', '{\"number\":\"1F50\",\"size\":\"0.12\",\"size_unit\":\"Hectare\",\"farm_id\":\"62\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":61}', 'http://www.homevegfarmers.co.tz/farmers/60/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:57:38', '2018-08-03 16:57:38'),
(405, 'App\\User', 9, 'created', 'App\\Farmer', 61, '[]', '{\"first_name\":\"Rukia\",\"last_name\":\"Saidi\",\"phone\":\"0655178850\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":61}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:58:57', '2018-08-03 16:58:57'),
(406, 'App\\User', 9, 'created', 'App\\Address', 132, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":61,\"addressable_type\":\"App\\\\Farmer\",\"id\":132}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:58:57', '2018-08-03 16:58:57'),
(407, 'App\\User', 9, 'created', 'App\\Farm', 63, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":61,\"id\":63}', 'http://www.homevegfarmers.co.tz/farmers/61/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:59:59', '2018-08-03 16:59:59'),
(408, 'App\\User', 9, 'created', 'App\\Address', 133, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":63,\"addressable_type\":\"App\\\\Farm\",\"id\":133}', 'http://www.homevegfarmers.co.tz/farmers/61/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 16:59:59', '2018-08-03 16:59:59'),
(409, 'App\\User', 9, 'created', 'App\\Block', 62, '[]', '{\"number\":\"1F51\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"63\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":62}', 'http://www.homevegfarmers.co.tz/farmers/61/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:00:44', '2018-08-03 17:00:44'),
(410, 'App\\User', 9, 'created', 'App\\Farmer', 62, '[]', '{\"first_name\":\"Arafa\",\"last_name\":\"Saidi\",\"phone\":\"0652745884\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":62}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:02:04', '2018-08-03 17:02:04'),
(411, 'App\\User', 9, 'created', 'App\\Address', 134, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":62,\"addressable_type\":\"App\\\\Farmer\",\"id\":134}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:02:04', '2018-08-03 17:02:04'),
(412, 'App\\User', 9, 'created', 'App\\Farm', 64, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":62,\"id\":64}', 'http://www.homevegfarmers.co.tz/farmers/62/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:02:46', '2018-08-03 17:02:46'),
(413, 'App\\User', 9, 'created', 'App\\Address', 135, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":64,\"addressable_type\":\"App\\\\Farm\",\"id\":135}', 'http://www.homevegfarmers.co.tz/farmers/62/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:02:46', '2018-08-03 17:02:46'),
(414, 'App\\User', 9, 'created', 'App\\Block', 63, '[]', '{\"number\":\"1F52\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"64\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":63}', 'http://www.homevegfarmers.co.tz/farmers/62/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:03:50', '2018-08-03 17:03:50'),
(415, 'App\\User', 9, 'created', 'App\\Farmer', 63, '[]', '{\"first_name\":\"Saidati\",\"last_name\":\"Jabiri\",\"phone\":\"0714433236\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":63}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:05:02', '2018-08-03 17:05:02'),
(416, 'App\\User', 9, 'created', 'App\\Address', 136, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":63,\"addressable_type\":\"App\\\\Farmer\",\"id\":136}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:05:02', '2018-08-03 17:05:02'),
(417, 'App\\User', 9, 'created', 'App\\Farm', 65, '[]', '{\"size\":\"0.053\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":63,\"id\":65}', 'http://www.homevegfarmers.co.tz/farmers/63/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:05:41', '2018-08-03 17:05:41'),
(418, 'App\\User', 9, 'created', 'App\\Address', 137, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":65,\"addressable_type\":\"App\\\\Farm\",\"id\":137}', 'http://www.homevegfarmers.co.tz/farmers/63/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:05:41', '2018-08-03 17:05:41'),
(419, 'App\\User', 9, 'created', 'App\\Farmer', 64, '[]', '{\"first_name\":\"Aladi\",\"last_name\":\"Karata\",\"phone\":\"0657587454\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":64}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:07:06', '2018-08-03 17:07:06'),
(420, 'App\\User', 9, 'created', 'App\\Address', 138, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":64,\"addressable_type\":\"App\\\\Farmer\",\"id\":138}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:07:06', '2018-08-03 17:07:06'),
(421, 'App\\User', 9, 'created', 'App\\Farm', 66, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":64,\"id\":66}', 'http://www.homevegfarmers.co.tz/farmers/64/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:07:53', '2018-08-03 17:07:53'),
(422, 'App\\User', 9, 'created', 'App\\Address', 139, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":66,\"addressable_type\":\"App\\\\Farm\",\"id\":139}', 'http://www.homevegfarmers.co.tz/farmers/64/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:07:53', '2018-08-03 17:07:53'),
(423, 'App\\User', 9, 'created', 'App\\Block', 64, '[]', '{\"number\":\"1F54\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"66\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":64}', 'http://www.homevegfarmers.co.tz/farmers/64/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:08:35', '2018-08-03 17:08:35'),
(424, 'App\\User', 9, 'created', 'App\\Farmer', 65, '[]', '{\"first_name\":\"Idd\",\"last_name\":\"Mbilu\",\"phone\":\"0654305449\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":65}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:09:38', '2018-08-03 17:09:38'),
(425, 'App\\User', 9, 'created', 'App\\Address', 140, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":65,\"addressable_type\":\"App\\\\Farmer\",\"id\":140}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:09:38', '2018-08-03 17:09:38'),
(426, 'App\\User', 9, 'created', 'App\\Farm', 67, '[]', '{\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":65,\"id\":67}', 'http://www.homevegfarmers.co.tz/farmers/65/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:10:17', '2018-08-03 17:10:17'),
(427, 'App\\User', 9, 'created', 'App\\Address', 141, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":67,\"addressable_type\":\"App\\\\Farm\",\"id\":141}', 'http://www.homevegfarmers.co.tz/farmers/65/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:10:17', '2018-08-03 17:10:17'),
(428, 'App\\User', 9, 'created', 'App\\Block', 65, '[]', '{\"number\":\"1G55\",\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"farm_id\":\"67\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":65}', 'http://www.homevegfarmers.co.tz/farmers/65/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:11:01', '2018-08-03 17:11:01'),
(429, 'App\\User', 9, 'created', 'App\\Farmer', 66, '[]', '{\"first_name\":\"Bihusi\",\"last_name\":\"Mussa\",\"phone\":\"0715219862\",\"email\":null,\"gender\":\"female\",\"creator_id\":9,\"id\":66}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:12:06', '2018-08-03 17:12:06'),
(430, 'App\\User', 9, 'created', 'App\\Address', 142, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":66,\"addressable_type\":\"App\\\\Farmer\",\"id\":142}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:12:06', '2018-08-03 17:12:06'),
(431, 'App\\User', 9, 'created', 'App\\Farm', 68, '[]', '{\"size\":\"0.049\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":66,\"id\":68}', 'http://www.homevegfarmers.co.tz/farmers/66/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:12:45', '2018-08-03 17:12:45'),
(432, 'App\\User', 9, 'created', 'App\\Address', 143, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":68,\"addressable_type\":\"App\\\\Farm\",\"id\":143}', 'http://www.homevegfarmers.co.tz/farmers/66/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:12:45', '2018-08-03 17:12:45'),
(433, 'App\\User', 9, 'created', 'App\\Block', 66, '[]', '{\"number\":\"1G56\",\"size\":\"0.049\",\"size_unit\":\"Hectare\",\"farm_id\":\"68\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":66}', 'http://www.homevegfarmers.co.tz/farmers/66/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:13:34', '2018-08-03 17:13:34'),
(434, 'App\\User', 9, 'created', 'App\\Farmer', 67, '[]', '{\"first_name\":\"Hashimu\",\"last_name\":\"Abdala\",\"phone\":\"0713387946\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":67}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:14:46', '2018-08-03 17:14:46'),
(435, 'App\\User', 9, 'created', 'App\\Address', 144, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":67,\"addressable_type\":\"App\\\\Farmer\",\"id\":144}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:14:46', '2018-08-03 17:14:46');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(436, 'App\\User', 9, 'created', 'App\\Farm', 69, '[]', '{\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":67,\"id\":69}', 'http://www.homevegfarmers.co.tz/farmers/67/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:15:25', '2018-08-03 17:15:25'),
(437, 'App\\User', 9, 'created', 'App\\Address', 145, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":69,\"addressable_type\":\"App\\\\Farm\",\"id\":145}', 'http://www.homevegfarmers.co.tz/farmers/67/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:15:26', '2018-08-03 17:15:26'),
(438, 'App\\User', 9, 'created', 'App\\Block', 67, '[]', '{\"number\":\"1G57\",\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"farm_id\":\"69\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":67}', 'http://www.homevegfarmers.co.tz/farmers/67/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:16:32', '2018-08-03 17:16:32'),
(439, 'App\\User', 9, 'created', 'App\\Farmer', 68, '[]', '{\"first_name\":\"Alihaji\",\"last_name\":\"Salimu\",\"phone\":\"0710760086\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":68}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:17:44', '2018-08-03 17:17:44'),
(440, 'App\\User', 9, 'created', 'App\\Address', 146, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":68,\"addressable_type\":\"App\\\\Farmer\",\"id\":146}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:17:44', '2018-08-03 17:17:44'),
(441, 'App\\User', 9, 'created', 'App\\Farm', 70, '[]', '{\"size\":\"0.5\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":68,\"id\":70}', 'http://www.homevegfarmers.co.tz/farmers/68/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:18:28', '2018-08-03 17:18:28'),
(442, 'App\\User', 9, 'created', 'App\\Address', 147, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":70,\"addressable_type\":\"App\\\\Farm\",\"id\":147}', 'http://www.homevegfarmers.co.tz/farmers/68/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:18:28', '2018-08-03 17:18:28'),
(443, 'App\\User', 9, 'created', 'App\\Block', 68, '[]', '{\"number\":\"1G58\",\"size\":\"0.5\",\"size_unit\":\"Hectare\",\"farm_id\":\"70\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":68}', 'http://www.homevegfarmers.co.tz/farmers/68/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:19:24', '2018-08-03 17:19:24'),
(444, 'App\\User', 9, 'created', 'App\\Farmer', 69, '[]', '{\"first_name\":\"Seph\",\"last_name\":\"Hoza\",\"phone\":\"0653831878\",\"email\":null,\"gender\":\"male\",\"creator_id\":9,\"id\":69}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:20:31', '2018-08-03 17:20:31'),
(445, 'App\\User', 9, 'created', 'App\\Address', 148, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":69,\"addressable_type\":\"App\\\\Farmer\",\"id\":148}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:20:31', '2018-08-03 17:20:31'),
(446, 'App\\User', 9, 'created', 'App\\Farm', 71, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":69,\"id\":71}', 'http://www.homevegfarmers.co.tz/farmers/69/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:21:04', '2018-08-03 17:21:04'),
(447, 'App\\User', 9, 'created', 'App\\Address', 149, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":71,\"addressable_type\":\"App\\\\Farm\",\"id\":149}', 'http://www.homevegfarmers.co.tz/farmers/69/farms?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:21:04', '2018-08-03 17:21:04'),
(448, 'App\\User', 9, 'created', 'App\\Block', 69, '[]', '{\"number\":\"1G59\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"71\",\"product_id\":\"1\",\"description\":\"Bombo\",\"id\":69}', 'http://www.homevegfarmers.co.tz/farmers/69/blocks?', '197.250.99.122', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:21:53', '2018-08-03 17:21:53'),
(449, 'App\\User', 9, 'updated', 'App\\User', 9, '{\"remember_token\":\"SC25nboRkQm0rjgISlxXZWEBy3rKzWAwqBnqTGFCJLIY7U1lWwAVnoc3TaZD\"}', '{\"remember_token\":\"eupQgsKkexPbyRbeGLgkXvscs6vQ9aB80eCpwVBCyZfeSH7ssCNUKXMf6NlR\"}', 'http://www.homevegfarmers.co.tz/logout?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 17:33:03', '2018-08-03 17:33:03'),
(450, 'App\\User', 11, 'created', 'App\\Farmer', 70, '[]', '{\"first_name\":\"Hija\",\"last_name\":\"Giriasa\",\"phone\":\"0627352993\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":70}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:29:37', '2018-08-03 18:29:37'),
(451, 'App\\User', 11, 'created', 'App\\Address', 150, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":70,\"addressable_type\":\"App\\\\Farmer\",\"id\":150}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:29:37', '2018-08-03 18:29:37'),
(452, 'App\\User', 11, 'created', 'App\\Farm', 72, '[]', '{\"size\":\"0.01\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":70,\"id\":72}', 'http://www.homevegfarmers.co.tz/farmers/70/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:30:19', '2018-08-03 18:30:19'),
(453, 'App\\User', 11, 'created', 'App\\Address', 151, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":72,\"addressable_type\":\"App\\\\Farm\",\"id\":151}', 'http://www.homevegfarmers.co.tz/farmers/70/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:30:19', '2018-08-03 18:30:19'),
(454, 'App\\User', 11, 'created', 'App\\Block', 70, '[]', '{\"number\":\"2A1\",\"size\":\"0.01\",\"size_unit\":\"Hectare\",\"farm_id\":\"72\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":70}', 'http://www.homevegfarmers.co.tz/farmers/70/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:31:06', '2018-08-03 18:31:06'),
(455, 'App\\User', 11, 'created', 'App\\Farmer', 71, '[]', '{\"first_name\":\"Salehe\",\"last_name\":\"Mussa\",\"phone\":\"0625433133\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":71}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:32:24', '2018-08-03 18:32:24'),
(456, 'App\\User', 11, 'created', 'App\\Address', 152, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":71,\"addressable_type\":\"App\\\\Farmer\",\"id\":152}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:32:24', '2018-08-03 18:32:24'),
(457, 'App\\User', 11, 'created', 'App\\Farm', 73, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":71,\"id\":73}', 'http://www.homevegfarmers.co.tz/farmers/71/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:32:58', '2018-08-03 18:32:58'),
(458, 'App\\User', 11, 'created', 'App\\Address', 153, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":73,\"addressable_type\":\"App\\\\Farm\",\"id\":153}', 'http://www.homevegfarmers.co.tz/farmers/71/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:32:58', '2018-08-03 18:32:58'),
(459, 'App\\User', 11, 'created', 'App\\Block', 71, '[]', '{\"number\":\"2A2\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"73\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":71}', 'http://www.homevegfarmers.co.tz/farmers/71/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:34:41', '2018-08-03 18:34:41'),
(460, 'App\\User', 11, 'created', 'App\\Farmer', 72, '[]', '{\"first_name\":\"Subira\",\"last_name\":\"Clemenit\",\"phone\":\"0625433106\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":72}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:35:45', '2018-08-03 18:35:45'),
(461, 'App\\User', 11, 'created', 'App\\Address', 154, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":72,\"addressable_type\":\"App\\\\Farmer\",\"id\":154}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:35:45', '2018-08-03 18:35:45'),
(462, 'App\\User', 11, 'created', 'App\\Farm', 74, '[]', '{\"size\":\"0.067\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":72,\"id\":74}', 'http://www.homevegfarmers.co.tz/farmers/72/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:36:27', '2018-08-03 18:36:27'),
(463, 'App\\User', 11, 'created', 'App\\Address', 155, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":74,\"addressable_type\":\"App\\\\Farm\",\"id\":155}', 'http://www.homevegfarmers.co.tz/farmers/72/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:36:27', '2018-08-03 18:36:27'),
(464, 'App\\User', 11, 'created', 'App\\Block', 72, '[]', '{\"number\":\"2A3\",\"size\":\"0.067\",\"size_unit\":\"Hectare\",\"farm_id\":\"74\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":72}', 'http://www.homevegfarmers.co.tz/farmers/72/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:37:20', '2018-08-03 18:37:20'),
(465, 'App\\User', 11, 'created', 'App\\Farmer', 73, '[]', '{\"first_name\":\"Sara\",\"last_name\":\"Manase\",\"phone\":\"0626497856\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":73}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:38:32', '2018-08-03 18:38:32'),
(466, 'App\\User', 11, 'created', 'App\\Address', 156, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":73,\"addressable_type\":\"App\\\\Farmer\",\"id\":156}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:38:32', '2018-08-03 18:38:32'),
(467, 'App\\User', 11, 'created', 'App\\Farm', 75, '[]', '{\"size\":\"0.056\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":73,\"id\":75}', 'http://www.homevegfarmers.co.tz/farmers/73/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:39:41', '2018-08-03 18:39:41'),
(468, 'App\\User', 11, 'created', 'App\\Address', 157, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":75,\"addressable_type\":\"App\\\\Farm\",\"id\":157}', 'http://www.homevegfarmers.co.tz/farmers/73/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:39:41', '2018-08-03 18:39:41'),
(469, 'App\\User', 11, 'created', 'App\\Block', 73, '[]', '{\"number\":\"2A4\",\"size\":\"0.056\",\"size_unit\":\"Hectare\",\"farm_id\":\"75\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":73}', 'http://www.homevegfarmers.co.tz/farmers/73/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:40:31', '2018-08-03 18:40:31'),
(470, 'App\\User', 11, 'created', 'App\\Farmer', 74, '[]', '{\"first_name\":\"Wiliamu\",\"last_name\":\"Enea\",\"phone\":\"0627540444\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":74}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:41:36', '2018-08-03 18:41:36'),
(471, 'App\\User', 11, 'created', 'App\\Address', 158, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":74,\"addressable_type\":\"App\\\\Farmer\",\"id\":158}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:41:36', '2018-08-03 18:41:36'),
(472, 'App\\User', 11, 'created', 'App\\Farm', 76, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":74,\"id\":76}', 'http://www.homevegfarmers.co.tz/farmers/74/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:42:17', '2018-08-03 18:42:17'),
(473, 'App\\User', 11, 'created', 'App\\Address', 159, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":76,\"addressable_type\":\"App\\\\Farm\",\"id\":159}', 'http://www.homevegfarmers.co.tz/farmers/74/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:42:17', '2018-08-03 18:42:17'),
(474, 'App\\User', 11, 'created', 'App\\Block', 74, '[]', '{\"number\":\"2A5\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"76\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":74}', 'http://www.homevegfarmers.co.tz/farmers/74/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:42:58', '2018-08-03 18:42:58'),
(475, 'App\\User', 11, 'created', 'App\\Farmer', 75, '[]', '{\"first_name\":\"Enea\",\"last_name\":\"Mbilu\",\"phone\":\"0626635932\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":75}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:44:12', '2018-08-03 18:44:12'),
(476, 'App\\User', 11, 'created', 'App\\Address', 160, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":75,\"addressable_type\":\"App\\\\Farmer\",\"id\":160}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:44:12', '2018-08-03 18:44:12'),
(477, 'App\\User', 11, 'created', 'App\\Farm', 77, '[]', '{\"size\":\"0.02\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":75,\"id\":77}', 'http://www.homevegfarmers.co.tz/farmers/75/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:44:44', '2018-08-03 18:44:44'),
(478, 'App\\User', 11, 'created', 'App\\Address', 161, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":77,\"addressable_type\":\"App\\\\Farm\",\"id\":161}', 'http://www.homevegfarmers.co.tz/farmers/75/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:44:44', '2018-08-03 18:44:44'),
(479, 'App\\User', 11, 'created', 'App\\Block', 75, '[]', '{\"number\":\"2A6\",\"size\":\"0.02\",\"size_unit\":\"Hectare\",\"farm_id\":\"77\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":75}', 'http://www.homevegfarmers.co.tz/farmers/75/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:45:26', '2018-08-03 18:45:26'),
(480, 'App\\User', 11, 'created', 'App\\Farmer', 76, '[]', '{\"first_name\":\"Stephano\",\"last_name\":\"Paulo\",\"phone\":\"0623680068\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":76}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:46:41', '2018-08-03 18:46:41'),
(481, 'App\\User', 11, 'created', 'App\\Address', 162, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":76,\"addressable_type\":\"App\\\\Farmer\",\"id\":162}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:46:41', '2018-08-03 18:46:41'),
(482, 'App\\User', 11, 'created', 'App\\Farm', 78, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":76,\"id\":78}', 'http://www.homevegfarmers.co.tz/farmers/76/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:47:11', '2018-08-03 18:47:11'),
(483, 'App\\User', 11, 'created', 'App\\Address', 163, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":78,\"addressable_type\":\"App\\\\Farm\",\"id\":163}', 'http://www.homevegfarmers.co.tz/farmers/76/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:47:11', '2018-08-03 18:47:11'),
(484, 'App\\User', 11, 'created', 'App\\Block', 76, '[]', '{\"number\":\"2A7\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"78\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":76}', 'http://www.homevegfarmers.co.tz/farmers/76/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:47:53', '2018-08-03 18:47:53'),
(485, 'App\\User', 11, 'created', 'App\\Farmer', 77, '[]', '{\"first_name\":\"Sophia\",\"last_name\":\"Alufani\",\"phone\":\"0787047181\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":77}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:49:21', '2018-08-03 18:49:21'),
(486, 'App\\User', 11, 'created', 'App\\Address', 164, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":77,\"addressable_type\":\"App\\\\Farmer\",\"id\":164}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:49:21', '2018-08-03 18:49:21'),
(487, 'App\\User', 11, 'created', 'App\\Farm', 79, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":77,\"id\":79}', 'http://www.homevegfarmers.co.tz/farmers/77/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:49:56', '2018-08-03 18:49:56'),
(488, 'App\\User', 11, 'created', 'App\\Address', 165, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":79,\"addressable_type\":\"App\\\\Farm\",\"id\":165}', 'http://www.homevegfarmers.co.tz/farmers/77/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:49:56', '2018-08-03 18:49:56'),
(489, 'App\\User', 11, 'created', 'App\\Block', 77, '[]', '{\"number\":\"2A8\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"79\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":77}', 'http://www.homevegfarmers.co.tz/farmers/77/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:50:40', '2018-08-03 18:50:40'),
(490, 'App\\User', 11, 'created', 'App\\Farmer', 78, '[]', '{\"first_name\":\"Hamisi\",\"last_name\":\"Abedi\",\"phone\":\"0629973444\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":78}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:51:39', '2018-08-03 18:51:39'),
(491, 'App\\User', 11, 'created', 'App\\Address', 166, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":78,\"addressable_type\":\"App\\\\Farmer\",\"id\":166}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:51:39', '2018-08-03 18:51:39'),
(492, 'App\\User', 11, 'created', 'App\\Farm', 80, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":78,\"id\":80}', 'http://www.homevegfarmers.co.tz/farmers/78/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:52:10', '2018-08-03 18:52:10'),
(493, 'App\\User', 11, 'created', 'App\\Address', 167, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":80,\"addressable_type\":\"App\\\\Farm\",\"id\":167}', 'http://www.homevegfarmers.co.tz/farmers/78/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:52:10', '2018-08-03 18:52:10'),
(494, 'App\\User', 11, 'created', 'App\\Block', 78, '[]', '{\"number\":\"2A9\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"80\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":78}', 'http://www.homevegfarmers.co.tz/farmers/78/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:52:50', '2018-08-03 18:52:50'),
(495, 'App\\User', 11, 'created', 'App\\Farmer', 79, '[]', '{\"first_name\":\"Ramadhani\",\"last_name\":\"Athumani\",\"phone\":\"0629717869\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":79}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:54:07', '2018-08-03 18:54:07'),
(496, 'App\\User', 11, 'created', 'App\\Address', 168, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":79,\"addressable_type\":\"App\\\\Farmer\",\"id\":168}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:54:07', '2018-08-03 18:54:07'),
(497, 'App\\User', 11, 'created', 'App\\Farm', 81, '[]', '{\"size\":\"0.111\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":79,\"id\":81}', 'http://www.homevegfarmers.co.tz/farmers/79/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:54:59', '2018-08-03 18:54:59'),
(498, 'App\\User', 11, 'created', 'App\\Address', 169, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":81,\"addressable_type\":\"App\\\\Farm\",\"id\":169}', 'http://www.homevegfarmers.co.tz/farmers/79/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:54:59', '2018-08-03 18:54:59'),
(499, 'App\\User', 11, 'created', 'App\\Block', 79, '[]', '{\"number\":\"2B10\",\"size\":\"0.111\",\"size_unit\":\"Hectare\",\"farm_id\":\"81\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":79}', 'http://www.homevegfarmers.co.tz/farmers/79/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:56:04', '2018-08-03 18:56:04'),
(500, 'App\\User', 11, 'created', 'App\\Farmer', 80, '[]', '{\"first_name\":\"Amina\",\"last_name\":\"Athumani\",\"phone\":\"0622294498\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":80}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:59:11', '2018-08-03 18:59:11'),
(501, 'App\\User', 11, 'created', 'App\\Address', 170, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":80,\"addressable_type\":\"App\\\\Farmer\",\"id\":170}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:59:11', '2018-08-03 18:59:11'),
(502, 'App\\User', 11, 'created', 'App\\Farm', 82, '[]', '{\"size\":\"0.0494\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":80,\"id\":82}', 'http://www.homevegfarmers.co.tz/farmers/80/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 18:59:59', '2018-08-03 18:59:59'),
(503, 'App\\User', 11, 'created', 'App\\Address', 171, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":82,\"addressable_type\":\"App\\\\Farm\",\"id\":171}', 'http://www.homevegfarmers.co.tz/farmers/80/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:00:00', '2018-08-03 19:00:00'),
(504, 'App\\User', 11, 'created', 'App\\Block', 80, '[]', '{\"number\":\"2B11\",\"size\":\"0.0494\",\"size_unit\":\"Hectare\",\"farm_id\":\"82\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":80}', 'http://www.homevegfarmers.co.tz/farmers/80/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:00:53', '2018-08-03 19:00:53'),
(505, 'App\\User', 11, 'created', 'App\\Farmer', 81, '[]', '{\"first_name\":\"Stela\",\"last_name\":\"Mauya\",\"phone\":\"0629973410\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":81}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:02:12', '2018-08-03 19:02:12'),
(506, 'App\\User', 11, 'created', 'App\\Address', 172, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":81,\"addressable_type\":\"App\\\\Farmer\",\"id\":172}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:02:12', '2018-08-03 19:02:12'),
(507, 'App\\User', 11, 'created', 'App\\Farm', 83, '[]', '{\"size\":\"0.035\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":81,\"id\":83}', 'http://www.homevegfarmers.co.tz/farmers/81/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:02:48', '2018-08-03 19:02:48'),
(508, 'App\\User', 11, 'created', 'App\\Address', 173, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":83,\"addressable_type\":\"App\\\\Farm\",\"id\":173}', 'http://www.homevegfarmers.co.tz/farmers/81/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:02:48', '2018-08-03 19:02:48'),
(509, 'App\\User', 11, 'created', 'App\\Block', 81, '[]', '{\"number\":\"2B12\",\"size\":\"0.035\",\"size_unit\":\"Hectare\",\"farm_id\":\"83\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":81}', 'http://www.homevegfarmers.co.tz/farmers/81/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:03:28', '2018-08-03 19:03:28'),
(510, 'App\\User', 11, 'created', 'App\\Farmer', 82, '[]', '{\"first_name\":\"Masaidi\",\"last_name\":\"Juma\",\"phone\":\"0685323963\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":82}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:04:26', '2018-08-03 19:04:26'),
(511, 'App\\User', 11, 'created', 'App\\Address', 174, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":82,\"addressable_type\":\"App\\\\Farmer\",\"id\":174}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:04:26', '2018-08-03 19:04:26'),
(512, 'App\\User', 11, 'created', 'App\\Farm', 84, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":82,\"id\":84}', 'http://www.homevegfarmers.co.tz/farmers/82/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:05:22', '2018-08-03 19:05:22'),
(513, 'App\\User', 11, 'created', 'App\\Address', 175, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":84,\"addressable_type\":\"App\\\\Farm\",\"id\":175}', 'http://www.homevegfarmers.co.tz/farmers/82/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:05:22', '2018-08-03 19:05:22'),
(514, 'App\\User', 11, 'created', 'App\\Block', 82, '[]', '{\"number\":\"2B13\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"84\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":82}', 'http://www.homevegfarmers.co.tz/farmers/82/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:06:12', '2018-08-03 19:06:12'),
(515, 'App\\User', 11, 'created', 'App\\Farmer', 83, '[]', '{\"first_name\":\"Rafaeli\",\"last_name\":\"Paulo\",\"phone\":\"0623497720\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":83}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:07:09', '2018-08-03 19:07:09'),
(516, 'App\\User', 11, 'created', 'App\\Address', 176, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":83,\"addressable_type\":\"App\\\\Farmer\",\"id\":176}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:07:09', '2018-08-03 19:07:09'),
(517, 'App\\User', 11, 'created', 'App\\Farm', 85, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":83,\"id\":85}', 'http://www.homevegfarmers.co.tz/farmers/83/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:07:41', '2018-08-03 19:07:41'),
(518, 'App\\User', 11, 'created', 'App\\Address', 177, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":85,\"addressable_type\":\"App\\\\Farm\",\"id\":177}', 'http://www.homevegfarmers.co.tz/farmers/83/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:07:41', '2018-08-03 19:07:41'),
(519, 'App\\User', 11, 'created', 'App\\Block', 83, '[]', '{\"number\":\"2B14\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"85\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":83}', 'http://www.homevegfarmers.co.tz/farmers/83/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:08:32', '2018-08-03 19:08:32'),
(520, 'App\\User', 11, 'created', 'App\\Farmer', 84, '[]', '{\"first_name\":\"Maria\",\"last_name\":\"Paulo\",\"phone\":\"0788609691\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":84}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:09:34', '2018-08-03 19:09:34'),
(521, 'App\\User', 11, 'created', 'App\\Address', 178, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":84,\"addressable_type\":\"App\\\\Farmer\",\"id\":178}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:09:34', '2018-08-03 19:09:34'),
(522, 'App\\User', 11, 'created', 'App\\Farm', 86, '[]', '{\"size\":\"0.15\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":84,\"id\":86}', 'http://www.homevegfarmers.co.tz/farmers/84/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:10:17', '2018-08-03 19:10:17'),
(523, 'App\\User', 11, 'created', 'App\\Address', 179, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":86,\"addressable_type\":\"App\\\\Farm\",\"id\":179}', 'http://www.homevegfarmers.co.tz/farmers/84/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:10:17', '2018-08-03 19:10:17'),
(524, 'App\\User', 11, 'created', 'App\\Block', 84, '[]', '{\"number\":\"2B15\",\"size\":\"0.15\",\"size_unit\":\"Hectare\",\"farm_id\":\"86\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":84}', 'http://www.homevegfarmers.co.tz/farmers/84/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:11:04', '2018-08-03 19:11:04'),
(525, 'App\\User', 11, 'created', 'App\\Farmer', 85, '[]', '{\"first_name\":\"Lukasi\",\"last_name\":\"Paulo\",\"phone\":\"0629711521\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":85}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:12:18', '2018-08-03 19:12:18'),
(526, 'App\\User', 11, 'created', 'App\\Address', 180, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":85,\"addressable_type\":\"App\\\\Farmer\",\"id\":180}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:12:18', '2018-08-03 19:12:18'),
(527, 'App\\User', 11, 'created', 'App\\Farm', 87, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":85,\"id\":87}', 'http://www.homevegfarmers.co.tz/farmers/85/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:13:24', '2018-08-03 19:13:24'),
(528, 'App\\User', 11, 'created', 'App\\Address', 181, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":87,\"addressable_type\":\"App\\\\Farm\",\"id\":181}', 'http://www.homevegfarmers.co.tz/farmers/85/farms?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:13:24', '2018-08-03 19:13:24'),
(529, 'App\\User', 11, 'created', 'App\\Block', 85, '[]', '{\"number\":\"2B16\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"87\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":85}', 'http://www.homevegfarmers.co.tz/farmers/85/blocks?', '197.250.100.54', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:14:11', '2018-08-03 19:14:11'),
(530, 'App\\User', 11, 'created', 'App\\Farmer', 86, '[]', '{\"first_name\":\"Rozena\",\"last_name\":\"Paulo\",\"phone\":\"0623080183\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":86}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:25:22', '2018-08-03 19:25:22'),
(531, 'App\\User', 11, 'created', 'App\\Address', 182, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":86,\"addressable_type\":\"App\\\\Farmer\",\"id\":182}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:25:22', '2018-08-03 19:25:22'),
(532, 'App\\User', 11, 'created', 'App\\Farm', 88, '[]', '{\"size\":\"0.056\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":86,\"id\":88}', 'http://www.homevegfarmers.co.tz/farmers/86/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:26:01', '2018-08-03 19:26:01'),
(533, 'App\\User', 11, 'created', 'App\\Address', 183, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":88,\"addressable_type\":\"App\\\\Farm\",\"id\":183}', 'http://www.homevegfarmers.co.tz/farmers/86/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:26:01', '2018-08-03 19:26:01'),
(534, 'App\\User', 11, 'created', 'App\\Block', 86, '[]', '{\"number\":\"2B17\",\"size\":\"0.056\",\"size_unit\":\"Hectare\",\"farm_id\":\"88\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":86}', 'http://www.homevegfarmers.co.tz/farmers/86/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:26:53', '2018-08-03 19:26:53'),
(535, 'App\\User', 11, 'created', 'App\\Farmer', 87, '[]', '{\"first_name\":\"Rehema\",\"last_name\":\"Danieli\",\"phone\":\"0629683955\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":87}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:28:07', '2018-08-03 19:28:07'),
(536, 'App\\User', 11, 'created', 'App\\Address', 184, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":87,\"addressable_type\":\"App\\\\Farmer\",\"id\":184}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:28:07', '2018-08-03 19:28:07'),
(537, 'App\\User', 11, 'created', 'App\\Farm', 89, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":87,\"id\":89}', 'http://www.homevegfarmers.co.tz/farmers/87/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:28:41', '2018-08-03 19:28:41'),
(538, 'App\\User', 11, 'created', 'App\\Address', 185, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":89,\"addressable_type\":\"App\\\\Farm\",\"id\":185}', 'http://www.homevegfarmers.co.tz/farmers/87/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:28:41', '2018-08-03 19:28:41'),
(539, 'App\\User', 11, 'created', 'App\\Block', 87, '[]', '{\"number\":\"2C18\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"89\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":87}', 'http://www.homevegfarmers.co.tz/farmers/87/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:29:23', '2018-08-03 19:29:23'),
(540, 'App\\User', 11, 'created', 'App\\Farmer', 88, '[]', '{\"first_name\":\"Mustafa\",\"last_name\":\"Ngoma\",\"phone\":\"0629973395\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":88}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:30:34', '2018-08-03 19:30:34'),
(541, 'App\\User', 11, 'created', 'App\\Address', 186, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":88,\"addressable_type\":\"App\\\\Farmer\",\"id\":186}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:30:34', '2018-08-03 19:30:34'),
(542, 'App\\User', 11, 'created', 'App\\Farm', 90, '[]', '{\"size\":\"0.024\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":88,\"id\":90}', 'http://www.homevegfarmers.co.tz/farmers/88/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:31:07', '2018-08-03 19:31:07'),
(543, 'App\\User', 11, 'created', 'App\\Address', 187, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":90,\"addressable_type\":\"App\\\\Farm\",\"id\":187}', 'http://www.homevegfarmers.co.tz/farmers/88/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:31:07', '2018-08-03 19:31:07'),
(544, 'App\\User', 11, 'created', 'App\\Block', 88, '[]', '{\"number\":\"2C19\",\"size\":\"0.024\",\"size_unit\":\"Hectare\",\"farm_id\":\"90\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":88}', 'http://www.homevegfarmers.co.tz/farmers/88/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:32:08', '2018-08-03 19:32:08'),
(545, 'App\\User', 11, 'created', 'App\\Farmer', 89, '[]', '{\"first_name\":\"Issa\",\"last_name\":\"Athumani\",\"phone\":\"0786535401\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":89}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:33:10', '2018-08-03 19:33:10');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(546, 'App\\User', 11, 'created', 'App\\Address', 188, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":89,\"addressable_type\":\"App\\\\Farmer\",\"id\":188}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:33:10', '2018-08-03 19:33:10'),
(547, 'App\\User', 11, 'created', 'App\\Farm', 91, '[]', '{\"size\":\"0.14\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":89,\"id\":91}', 'http://www.homevegfarmers.co.tz/farmers/89/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:33:48', '2018-08-03 19:33:48'),
(548, 'App\\User', 11, 'created', 'App\\Address', 189, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":91,\"addressable_type\":\"App\\\\Farm\",\"id\":189}', 'http://www.homevegfarmers.co.tz/farmers/89/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:33:48', '2018-08-03 19:33:48'),
(549, 'App\\User', 11, 'created', 'App\\Block', 89, '[]', '{\"number\":\"2C20\",\"size\":\"0.14\",\"size_unit\":\"Hectare\",\"farm_id\":\"91\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":89}', 'http://www.homevegfarmers.co.tz/farmers/89/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:34:42', '2018-08-03 19:34:42'),
(550, 'App\\User', 11, 'created', 'App\\Farmer', 90, '[]', '{\"first_name\":\"Michaeli\",\"last_name\":\"Mauya\",\"phone\":\"0629717977\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":90}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:38:38', '2018-08-03 19:38:38'),
(551, 'App\\User', 11, 'created', 'App\\Address', 190, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":90,\"addressable_type\":\"App\\\\Farmer\",\"id\":190}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:38:38', '2018-08-03 19:38:38'),
(552, 'App\\User', 11, 'created', 'App\\Farm', 92, '[]', '{\"size\":\"0.36\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":90,\"id\":92}', 'http://www.homevegfarmers.co.tz/farmers/90/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:39:19', '2018-08-03 19:39:19'),
(553, 'App\\User', 11, 'created', 'App\\Address', 191, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":92,\"addressable_type\":\"App\\\\Farm\",\"id\":191}', 'http://www.homevegfarmers.co.tz/farmers/90/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:39:19', '2018-08-03 19:39:19'),
(554, 'App\\User', 11, 'created', 'App\\Block', 90, '[]', '{\"number\":\"2C21\",\"size\":\"0.36\",\"size_unit\":\"Hectare\",\"farm_id\":\"92\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":90}', 'http://www.homevegfarmers.co.tz/farmers/90/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:40:30', '2018-08-03 19:40:30'),
(555, 'App\\User', 11, 'created', 'App\\Farmer', 91, '[]', '{\"first_name\":\"Danieli\",\"last_name\":\"Wilisoni\",\"phone\":\"0629083955\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":91}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:42:16', '2018-08-03 19:42:16'),
(556, 'App\\User', 11, 'created', 'App\\Address', 192, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":91,\"addressable_type\":\"App\\\\Farmer\",\"id\":192}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:42:16', '2018-08-03 19:42:16'),
(557, 'App\\User', 11, 'created', 'App\\Farm', 93, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":91,\"id\":93}', 'http://www.homevegfarmers.co.tz/farmers/91/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:42:53', '2018-08-03 19:42:53'),
(558, 'App\\User', 11, 'created', 'App\\Address', 193, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":93,\"addressable_type\":\"App\\\\Farm\",\"id\":193}', 'http://www.homevegfarmers.co.tz/farmers/91/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:42:53', '2018-08-03 19:42:53'),
(559, 'App\\User', 11, 'created', 'App\\Block', 91, '[]', '{\"number\":\"2C22\",\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"farm_id\":\"93\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":91}', 'http://www.homevegfarmers.co.tz/farmers/91/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:43:51', '2018-08-03 19:43:51'),
(560, 'App\\User', 11, 'created', 'App\\Farmer', 92, '[]', '{\"first_name\":\"Felex\",\"last_name\":\"Yohana\",\"phone\":\"0629711562\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":92}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:45:21', '2018-08-03 19:45:21'),
(561, 'App\\User', 11, 'created', 'App\\Address', 194, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":92,\"addressable_type\":\"App\\\\Farmer\",\"id\":194}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:45:21', '2018-08-03 19:45:21'),
(562, 'App\\User', 11, 'created', 'App\\Farm', 94, '[]', '{\"size\":\"0.027\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":92,\"id\":94}', 'http://www.homevegfarmers.co.tz/farmers/92/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:46:03', '2018-08-03 19:46:03'),
(563, 'App\\User', 11, 'created', 'App\\Address', 195, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":94,\"addressable_type\":\"App\\\\Farm\",\"id\":195}', 'http://www.homevegfarmers.co.tz/farmers/92/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:46:03', '2018-08-03 19:46:03'),
(564, 'App\\User', 11, 'created', 'App\\Block', 92, '[]', '{\"number\":\"2C23\",\"size\":\"0.027\",\"size_unit\":\"Hectare\",\"farm_id\":\"94\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":92}', 'http://www.homevegfarmers.co.tz/farmers/92/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:46:53', '2018-08-03 19:46:53'),
(565, 'App\\User', 11, 'created', 'App\\Farmer', 93, '[]', '{\"first_name\":\"Ibrahimu\",\"last_name\":\"Saidi\",\"phone\":\"0629717821\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":93}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:48:08', '2018-08-03 19:48:08'),
(566, 'App\\User', 11, 'created', 'App\\Address', 196, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":93,\"addressable_type\":\"App\\\\Farmer\",\"id\":196}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:48:08', '2018-08-03 19:48:08'),
(567, 'App\\User', 11, 'created', 'App\\Farm', 95, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":93,\"id\":95}', 'http://www.homevegfarmers.co.tz/farmers/93/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:49:11', '2018-08-03 19:49:11'),
(568, 'App\\User', 11, 'created', 'App\\Address', 197, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":95,\"addressable_type\":\"App\\\\Farm\",\"id\":197}', 'http://www.homevegfarmers.co.tz/farmers/93/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:49:11', '2018-08-03 19:49:11'),
(569, 'App\\User', 11, 'created', 'App\\Block', 93, '[]', '{\"number\":\"2C24\",\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"farm_id\":\"95\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":93}', 'http://www.homevegfarmers.co.tz/farmers/93/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:49:48', '2018-08-03 19:49:48'),
(570, 'App\\User', 11, 'created', 'App\\Farmer', 94, '[]', '{\"first_name\":\"Joyce\",\"last_name\":\"Matamio\",\"phone\":\"0626553686\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":94}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:50:45', '2018-08-03 19:50:45'),
(571, 'App\\User', 11, 'created', 'App\\Address', 198, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":94,\"addressable_type\":\"App\\\\Farmer\",\"id\":198}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:50:45', '2018-08-03 19:50:45'),
(572, 'App\\User', 11, 'created', 'App\\Farm', 96, '[]', '{\"size\":\"0.02\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":94,\"id\":96}', 'http://www.homevegfarmers.co.tz/farmers/94/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:51:23', '2018-08-03 19:51:23'),
(573, 'App\\User', 11, 'created', 'App\\Address', 199, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":96,\"addressable_type\":\"App\\\\Farm\",\"id\":199}', 'http://www.homevegfarmers.co.tz/farmers/94/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:51:23', '2018-08-03 19:51:23'),
(574, 'App\\User', 11, 'created', 'App\\Block', 94, '[]', '{\"number\":\"2C25\",\"size\":\"0.02\",\"size_unit\":\"Hectare\",\"farm_id\":\"96\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":94}', 'http://www.homevegfarmers.co.tz/farmers/94/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:52:12', '2018-08-03 19:52:12'),
(575, 'App\\User', 11, 'created', 'App\\Farmer', 95, '[]', '{\"first_name\":\"Zainabu\",\"last_name\":\"Athumani\",\"phone\":\"0622294498\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":95}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:53:32', '2018-08-03 19:53:32'),
(576, 'App\\User', 11, 'created', 'App\\Address', 200, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":95,\"addressable_type\":\"App\\\\Farmer\",\"id\":200}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:53:32', '2018-08-03 19:53:32'),
(577, 'App\\User', 11, 'created', 'App\\Farm', 97, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":95,\"id\":97}', 'http://www.homevegfarmers.co.tz/farmers/95/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:54:04', '2018-08-03 19:54:04'),
(578, 'App\\User', 11, 'created', 'App\\Address', 201, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":97,\"addressable_type\":\"App\\\\Farm\",\"id\":201}', 'http://www.homevegfarmers.co.tz/farmers/95/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:54:04', '2018-08-03 19:54:04'),
(579, 'App\\User', 11, 'created', 'App\\Block', 95, '[]', '{\"number\":\"2D26\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"97\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":95}', 'http://www.homevegfarmers.co.tz/farmers/95/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 19:54:54', '2018-08-03 19:54:54'),
(580, 'App\\User', 11, 'created', 'App\\Farmer', 96, '[]', '{\"first_name\":\"Salimu\",\"last_name\":\"Sengenge\",\"phone\":\"0629711197\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":96}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:02:52', '2018-08-03 20:02:52'),
(581, 'App\\User', 11, 'created', 'App\\Address', 202, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":96,\"addressable_type\":\"App\\\\Farmer\",\"id\":202}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:02:52', '2018-08-03 20:02:52'),
(582, 'App\\User', 11, 'created', 'App\\Farm', 98, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":96,\"id\":98}', 'http://www.homevegfarmers.co.tz/farmers/96/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:03:30', '2018-08-03 20:03:30'),
(583, 'App\\User', 11, 'created', 'App\\Address', 203, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":98,\"addressable_type\":\"App\\\\Farm\",\"id\":203}', 'http://www.homevegfarmers.co.tz/farmers/96/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:03:30', '2018-08-03 20:03:30'),
(584, 'App\\User', 11, 'created', 'App\\Block', 96, '[]', '{\"number\":\"2D27\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"98\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":96}', 'http://www.homevegfarmers.co.tz/farmers/96/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:04:20', '2018-08-03 20:04:20'),
(585, 'App\\User', 11, 'created', 'App\\Farmer', 97, '[]', '{\"first_name\":\"Zamiru\",\"last_name\":\"Saidi\",\"phone\":\"0624928117\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":97}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:05:31', '2018-08-03 20:05:31'),
(586, 'App\\User', 11, 'created', 'App\\Address', 204, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":97,\"addressable_type\":\"App\\\\Farmer\",\"id\":204}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:05:31', '2018-08-03 20:05:31'),
(587, 'App\\User', 11, 'created', 'App\\Farm', 99, '[]', '{\"size\":\"0.12\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":97,\"id\":99}', 'http://www.homevegfarmers.co.tz/farmers/97/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:06:11', '2018-08-03 20:06:11'),
(588, 'App\\User', 11, 'created', 'App\\Address', 205, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":99,\"addressable_type\":\"App\\\\Farm\",\"id\":205}', 'http://www.homevegfarmers.co.tz/farmers/97/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:06:11', '2018-08-03 20:06:11'),
(589, 'App\\User', 11, 'created', 'App\\Block', 97, '[]', '{\"number\":\"2D28\",\"size\":\"0.12\",\"size_unit\":\"Hectare\",\"farm_id\":\"99\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":97}', 'http://www.homevegfarmers.co.tz/farmers/97/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:07:04', '2018-08-03 20:07:04'),
(590, 'App\\User', 11, 'created', 'App\\Farmer', 98, '[]', '{\"first_name\":\"Rozena\",\"last_name\":\"Tulo\",\"phone\":\"0629711259\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":98}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:08:12', '2018-08-03 20:08:12'),
(591, 'App\\User', 11, 'created', 'App\\Address', 206, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":98,\"addressable_type\":\"App\\\\Farmer\",\"id\":206}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:08:12', '2018-08-03 20:08:12'),
(592, 'App\\User', 11, 'created', 'App\\Farm', 100, '[]', '{\"size\":\"0.037\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":98,\"id\":100}', 'http://www.homevegfarmers.co.tz/farmers/98/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:08:53', '2018-08-03 20:08:53'),
(593, 'App\\User', 11, 'created', 'App\\Address', 207, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":100,\"addressable_type\":\"App\\\\Farm\",\"id\":207}', 'http://www.homevegfarmers.co.tz/farmers/98/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:08:53', '2018-08-03 20:08:53'),
(594, 'App\\User', 11, 'created', 'App\\Block', 98, '[]', '{\"number\":\"2D29\",\"size\":\"0.037\",\"size_unit\":\"Hectare\",\"farm_id\":\"100\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":98}', 'http://www.homevegfarmers.co.tz/farmers/98/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:09:38', '2018-08-03 20:09:38'),
(595, 'App\\User', 11, 'created', 'App\\Farmer', 99, '[]', '{\"first_name\":\"Tulo\",\"last_name\":\"Samweli\",\"phone\":\"0629711259\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":99}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:10:44', '2018-08-03 20:10:44'),
(596, 'App\\User', 11, 'created', 'App\\Address', 208, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":99,\"addressable_type\":\"App\\\\Farmer\",\"id\":208}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:10:44', '2018-08-03 20:10:44'),
(597, 'App\\User', 11, 'created', 'App\\Farm', 101, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":99,\"id\":101}', 'http://www.homevegfarmers.co.tz/farmers/99/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:11:17', '2018-08-03 20:11:17'),
(598, 'App\\User', 11, 'created', 'App\\Address', 209, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":101,\"addressable_type\":\"App\\\\Farm\",\"id\":209}', 'http://www.homevegfarmers.co.tz/farmers/99/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:11:17', '2018-08-03 20:11:17'),
(599, 'App\\User', 11, 'created', 'App\\Block', 99, '[]', '{\"number\":\"2D30\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"101\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":99}', 'http://www.homevegfarmers.co.tz/farmers/99/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:11:55', '2018-08-03 20:11:55'),
(600, 'App\\User', 11, 'created', 'App\\Farmer', 100, '[]', '{\"first_name\":\"Visenti\",\"last_name\":\"Sengenge\",\"phone\":\"0624925928\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":100}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:12:59', '2018-08-03 20:12:59'),
(601, 'App\\User', 11, 'created', 'App\\Address', 210, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":100,\"addressable_type\":\"App\\\\Farmer\",\"id\":210}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:12:59', '2018-08-03 20:12:59'),
(602, 'App\\User', 11, 'created', 'App\\Farm', 102, '[]', '{\"size\":\"0.23\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":100,\"id\":102}', 'http://www.homevegfarmers.co.tz/farmers/100/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:13:42', '2018-08-03 20:13:42'),
(603, 'App\\User', 11, 'created', 'App\\Address', 211, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":102,\"addressable_type\":\"App\\\\Farm\",\"id\":211}', 'http://www.homevegfarmers.co.tz/farmers/100/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:13:42', '2018-08-03 20:13:42'),
(604, 'App\\User', 11, 'created', 'App\\Block', 100, '[]', '{\"number\":\"2D31\",\"size\":\"0.23\",\"size_unit\":\"Hectare\",\"farm_id\":\"102\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":100}', 'http://www.homevegfarmers.co.tz/farmers/100/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:14:27', '2018-08-03 20:14:27'),
(605, 'App\\User', 11, 'created', 'App\\Farmer', 101, '[]', '{\"first_name\":\"Maria\",\"last_name\":\"Petro\",\"phone\":\"0629445930\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":101}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:17:26', '2018-08-03 20:17:26'),
(606, 'App\\User', 11, 'created', 'App\\Address', 212, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":101,\"addressable_type\":\"App\\\\Farmer\",\"id\":212}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:17:26', '2018-08-03 20:17:26'),
(607, 'App\\User', 11, 'created', 'App\\Farm', 103, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":101,\"id\":103}', 'http://www.homevegfarmers.co.tz/farmers/101/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:17:59', '2018-08-03 20:17:59'),
(608, 'App\\User', 11, 'created', 'App\\Address', 213, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":103,\"addressable_type\":\"App\\\\Farm\",\"id\":213}', 'http://www.homevegfarmers.co.tz/farmers/101/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:17:59', '2018-08-03 20:17:59'),
(609, 'App\\User', 11, 'created', 'App\\Block', 101, '[]', '{\"number\":\"2D32\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"103\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":101}', 'http://www.homevegfarmers.co.tz/farmers/101/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:19:10', '2018-08-03 20:19:10'),
(610, 'App\\User', 11, 'created', 'App\\Farmer', 102, '[]', '{\"first_name\":\"Yasini\",\"last_name\":\"Kasimu\",\"phone\":\"0788850657\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":102}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:20:32', '2018-08-03 20:20:32'),
(611, 'App\\User', 11, 'created', 'App\\Address', 214, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":102,\"addressable_type\":\"App\\\\Farmer\",\"id\":214}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:20:32', '2018-08-03 20:20:32'),
(612, 'App\\User', 11, 'created', 'App\\Farm', 104, '[]', '{\"size\":\"0.046\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":102,\"id\":104}', 'http://www.homevegfarmers.co.tz/farmers/102/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:21:24', '2018-08-03 20:21:24'),
(613, 'App\\User', 11, 'created', 'App\\Address', 215, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":104,\"addressable_type\":\"App\\\\Farm\",\"id\":215}', 'http://www.homevegfarmers.co.tz/farmers/102/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:21:24', '2018-08-03 20:21:24'),
(614, 'App\\User', 11, 'created', 'App\\Block', 102, '[]', '{\"number\":\"2D33\",\"size\":\"0.046\",\"size_unit\":\"Hectare\",\"farm_id\":\"104\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":102}', 'http://www.homevegfarmers.co.tz/farmers/102/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:22:09', '2018-08-03 20:22:09'),
(615, 'App\\User', 11, 'created', 'App\\Farmer', 103, '[]', '{\"first_name\":\"Pili\",\"last_name\":\"Hasani\",\"phone\":\"0623086929\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":103}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:23:06', '2018-08-03 20:23:06'),
(616, 'App\\User', 11, 'created', 'App\\Address', 216, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":103,\"addressable_type\":\"App\\\\Farmer\",\"id\":216}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:23:06', '2018-08-03 20:23:06'),
(617, 'App\\User', 11, 'created', 'App\\Farm', 105, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":103,\"id\":105}', 'http://www.homevegfarmers.co.tz/farmers/103/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:24:11', '2018-08-03 20:24:11'),
(618, 'App\\User', 11, 'created', 'App\\Address', 217, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":105,\"addressable_type\":\"App\\\\Farm\",\"id\":217}', 'http://www.homevegfarmers.co.tz/farmers/103/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:24:11', '2018-08-03 20:24:11'),
(619, 'App\\User', 11, 'created', 'App\\Block', 103, '[]', '{\"number\":\"2D34\",\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"farm_id\":\"105\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":103}', 'http://www.homevegfarmers.co.tz/farmers/103/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:24:58', '2018-08-03 20:24:58'),
(620, 'App\\User', 11, 'created', 'App\\Farmer', 104, '[]', '{\"first_name\":\"Bariatu\",\"last_name\":\"Kasimu\",\"phone\":\"0685323963\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":104}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:26:18', '2018-08-03 20:26:18'),
(621, 'App\\User', 11, 'created', 'App\\Address', 218, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":104,\"addressable_type\":\"App\\\\Farmer\",\"id\":218}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:26:18', '2018-08-03 20:26:18'),
(622, 'App\\User', 11, 'created', 'App\\Farm', 106, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":104,\"id\":106}', 'http://www.homevegfarmers.co.tz/farmers/104/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:26:49', '2018-08-03 20:26:49'),
(623, 'App\\User', 11, 'created', 'App\\Address', 219, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":106,\"addressable_type\":\"App\\\\Farm\",\"id\":219}', 'http://www.homevegfarmers.co.tz/farmers/104/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:26:49', '2018-08-03 20:26:49'),
(624, 'App\\User', 11, 'created', 'App\\Block', 104, '[]', '{\"number\":\"2E35\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"106\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":104}', 'http://www.homevegfarmers.co.tz/farmers/104/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:27:30', '2018-08-03 20:27:30'),
(625, 'App\\User', 11, 'created', 'App\\Farmer', 105, '[]', '{\"first_name\":\"Paulo\",\"last_name\":\"Yohana\",\"phone\":\"0623080183\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":105}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:28:42', '2018-08-03 20:28:42'),
(626, 'App\\User', 11, 'created', 'App\\Address', 220, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":105,\"addressable_type\":\"App\\\\Farmer\",\"id\":220}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:28:42', '2018-08-03 20:28:42'),
(627, 'App\\User', 11, 'created', 'App\\Farm', 107, '[]', '{\"size\":\"0.022\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":105,\"id\":107}', 'http://www.homevegfarmers.co.tz/farmers/105/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:29:12', '2018-08-03 20:29:12'),
(628, 'App\\User', 11, 'created', 'App\\Address', 221, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":107,\"addressable_type\":\"App\\\\Farm\",\"id\":221}', 'http://www.homevegfarmers.co.tz/farmers/105/farms?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:29:12', '2018-08-03 20:29:12'),
(629, 'App\\User', 11, 'created', 'App\\Block', 105, '[]', '{\"number\":\"2E36\",\"size\":\"0.022\",\"size_unit\":\"Hectare\",\"farm_id\":\"107\",\"product_id\":\"1\",\"description\":\"Kwalei\",\"id\":105}', 'http://www.homevegfarmers.co.tz/farmers/105/blocks?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:29:54', '2018-08-03 20:29:54'),
(630, 'App\\User', 11, 'updated', 'App\\User', 11, '{\"remember_token\":\"uP5r32MdvHuU0IaqGTWOmuxWIQ8L3s5zxDdvZireYEgTT1v39ucX3CgY2z7d\"}', '{\"remember_token\":\"ENuXZcqwxYGClrD2Gzi2FVqKSVIGkQjmH2ZNyWAzcMWj81izee37NS8F5dtT\"}', 'http://www.homevegfarmers.co.tz/logout?', '197.250.230.197', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 20:33:17', '2018-08-03 20:33:17'),
(631, 'App\\User', 6, 'created', 'App\\Farmer', 106, '[]', '{\"first_name\":\"Rehema\",\"last_name\":\"Silas\",\"phone\":\"0654417772\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":106}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.179.177', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 21:29:51', '2018-08-03 21:29:51'),
(632, 'App\\User', 6, 'created', 'App\\Address', 222, '[]', '{\"street\":\"SLP 556\",\"address\":\"BUNGU\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":106,\"addressable_type\":\"App\\\\Farmer\",\"id\":222}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.179.177', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 21:29:51', '2018-08-03 21:29:51'),
(633, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"remember_token\":\"27hECEFQkdViHxLeezepeY9xA0lf1OSmY9rJhXb14EJxpoFYK2YQw2ujvoGO\"}', '{\"remember_token\":\"2l09gnprLgF6wYtgMiABCCQJS7158pKLJlufCuPyQnsIn0ErMQLVfkIZwdye\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.222.179.177', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-03 22:31:36', '2018-08-03 22:31:36'),
(634, 'App\\User', 7, 'created', 'App\\Farmer', 107, '[]', '{\"first_name\":\"Abdi\",\"last_name\":\"Juma\",\"phone\":\"0788536400\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":107}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.224.253', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 13:10:05', '2018-08-04 13:10:05'),
(635, 'App\\User', 7, 'created', 'App\\Address', 223, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":107,\"addressable_type\":\"App\\\\Farmer\",\"id\":223}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.224.253', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 13:10:05', '2018-08-04 13:10:05'),
(636, 'App\\User', 7, 'created', 'App\\Farm', 108, '[]', '{\"size\":\"0.068\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":107,\"id\":108}', 'http://www.homevegfarmers.co.tz/farmers/107/farms?', '197.250.224.253', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 13:11:08', '2018-08-04 13:11:08'),
(637, 'App\\User', 7, 'created', 'App\\Address', 224, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":108,\"addressable_type\":\"App\\\\Farm\",\"id\":224}', 'http://www.homevegfarmers.co.tz/farmers/107/farms?', '197.250.224.253', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 13:11:08', '2018-08-04 13:11:08'),
(638, 'App\\User', 7, 'created', 'App\\Block', 106, '[]', '{\"number\":\"3A1\",\"size\":\"0.068\",\"size_unit\":\"Hectare\",\"farm_id\":\"108\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":106}', 'http://www.homevegfarmers.co.tz/farmers/107/blocks?', '197.250.224.253', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 13:12:08', '2018-08-04 13:12:08'),
(639, 'App\\User', 7, 'created', 'App\\Farmer', 108, '[]', '{\"first_name\":\"Fatila\",\"last_name\":\"Shabani\",\"phone\":\"0712403459\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":108}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:32:59', '2018-08-04 17:32:59'),
(640, 'App\\User', 7, 'created', 'App\\Address', 225, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":108,\"addressable_type\":\"App\\\\Farmer\",\"id\":225}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:32:59', '2018-08-04 17:32:59'),
(641, 'App\\User', 7, 'created', 'App\\Farm', 109, '[]', '{\"size\":\"0.0211\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":108,\"id\":109}', 'http://www.homevegfarmers.co.tz/farmers/108/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:34:02', '2018-08-04 17:34:02'),
(642, 'App\\User', 7, 'created', 'App\\Address', 226, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":109,\"addressable_type\":\"App\\\\Farm\",\"id\":226}', 'http://www.homevegfarmers.co.tz/farmers/108/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:34:02', '2018-08-04 17:34:02'),
(643, 'App\\User', 7, 'created', 'App\\Block', 107, '[]', '{\"number\":\"3A2\",\"size\":\"0.0211\",\"size_unit\":\"Hectare\",\"farm_id\":\"109\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":107}', 'http://www.homevegfarmers.co.tz/farmers/108/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:35:06', '2018-08-04 17:35:06'),
(644, 'App\\User', 7, 'created', 'App\\Farmer', 109, '[]', '{\"first_name\":\"Mwanahamisi\",\"last_name\":\"Hasani\",\"phone\":\"0679508435\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":109}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:36:16', '2018-08-04 17:36:16'),
(645, 'App\\User', 7, 'created', 'App\\Address', 227, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":109,\"addressable_type\":\"App\\\\Farmer\",\"id\":227}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:36:16', '2018-08-04 17:36:16'),
(646, 'App\\User', 7, 'created', 'App\\Farm', 110, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":109,\"id\":110}', 'http://www.homevegfarmers.co.tz/farmers/109/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:36:52', '2018-08-04 17:36:52'),
(647, 'App\\User', 7, 'created', 'App\\Address', 228, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":110,\"addressable_type\":\"App\\\\Farm\",\"id\":228}', 'http://www.homevegfarmers.co.tz/farmers/109/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:36:52', '2018-08-04 17:36:52'),
(648, 'App\\User', 7, 'created', 'App\\Block', 108, '[]', '{\"number\":\"3A3\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"110\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":108}', 'http://www.homevegfarmers.co.tz/farmers/109/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:37:39', '2018-08-04 17:37:39'),
(649, 'App\\User', 7, 'created', 'App\\Farmer', 110, '[]', '{\"first_name\":\"Mwajuma\",\"last_name\":\"Ally\",\"phone\":\"0783395957\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":110}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:38:40', '2018-08-04 17:38:40'),
(650, 'App\\User', 7, 'created', 'App\\Address', 229, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":110,\"addressable_type\":\"App\\\\Farmer\",\"id\":229}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:38:40', '2018-08-04 17:38:40'),
(651, 'App\\User', 7, 'created', 'App\\Farm', 111, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":110,\"id\":111}', 'http://www.homevegfarmers.co.tz/farmers/110/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:39:13', '2018-08-04 17:39:13'),
(652, 'App\\User', 7, 'created', 'App\\Address', 230, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":111,\"addressable_type\":\"App\\\\Farm\",\"id\":230}', 'http://www.homevegfarmers.co.tz/farmers/110/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:39:13', '2018-08-04 17:39:13'),
(653, 'App\\User', 7, 'created', 'App\\Block', 109, '[]', '{\"number\":\"3A4\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"111\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":109}', 'http://www.homevegfarmers.co.tz/farmers/110/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:40:37', '2018-08-04 17:40:37'),
(654, 'App\\User', 7, 'created', 'App\\Farmer', 111, '[]', '{\"first_name\":\"Hamisi\",\"last_name\":\"Athumani\",\"phone\":\"0653832531\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":111}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:41:45', '2018-08-04 17:41:45');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(655, 'App\\User', 7, 'created', 'App\\Address', 231, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":111,\"addressable_type\":\"App\\\\Farmer\",\"id\":231}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:41:45', '2018-08-04 17:41:45'),
(656, 'App\\User', 7, 'created', 'App\\Farm', 112, '[]', '{\"size\":\"0.047\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":111,\"id\":112}', 'http://www.homevegfarmers.co.tz/farmers/111/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:42:21', '2018-08-04 17:42:21'),
(657, 'App\\User', 7, 'created', 'App\\Address', 232, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":112,\"addressable_type\":\"App\\\\Farm\",\"id\":232}', 'http://www.homevegfarmers.co.tz/farmers/111/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:42:21', '2018-08-04 17:42:21'),
(658, 'App\\User', 7, 'created', 'App\\Block', 110, '[]', '{\"number\":\"3A5\",\"size\":\"0.047\",\"size_unit\":\"Hectare\",\"farm_id\":\"112\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":110}', 'http://www.homevegfarmers.co.tz/farmers/111/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:43:01', '2018-08-04 17:43:01'),
(659, 'App\\User', 7, 'created', 'App\\Farmer', 112, '[]', '{\"first_name\":\"Rahimu\",\"last_name\":\"Hamisi\",\"phone\":\"0676931583\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":112}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:44:04', '2018-08-04 17:44:04'),
(660, 'App\\User', 7, 'created', 'App\\Address', 233, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":112,\"addressable_type\":\"App\\\\Farmer\",\"id\":233}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:44:04', '2018-08-04 17:44:04'),
(661, 'App\\User', 7, 'created', 'App\\Farm', 113, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":112,\"id\":113}', 'http://www.homevegfarmers.co.tz/farmers/112/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:44:38', '2018-08-04 17:44:38'),
(662, 'App\\User', 7, 'created', 'App\\Address', 234, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":113,\"addressable_type\":\"App\\\\Farm\",\"id\":234}', 'http://www.homevegfarmers.co.tz/farmers/112/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:44:38', '2018-08-04 17:44:38'),
(663, 'App\\User', 7, 'created', 'App\\Block', 111, '[]', '{\"number\":\"3A6\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"113\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":111}', 'http://www.homevegfarmers.co.tz/farmers/112/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:45:16', '2018-08-04 17:45:16'),
(664, 'App\\User', 7, 'created', 'App\\Farmer', 113, '[]', '{\"first_name\":\"Hamidu\",\"last_name\":\"Kiwayo\",\"phone\":\"0658816181\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":113}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:46:12', '2018-08-04 17:46:12'),
(665, 'App\\User', 7, 'created', 'App\\Address', 235, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":113,\"addressable_type\":\"App\\\\Farmer\",\"id\":235}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:46:12', '2018-08-04 17:46:12'),
(666, 'App\\User', 7, 'created', 'App\\Farm', 114, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":113,\"id\":114}', 'http://www.homevegfarmers.co.tz/farmers/113/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:46:46', '2018-08-04 17:46:46'),
(667, 'App\\User', 7, 'created', 'App\\Address', 236, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":114,\"addressable_type\":\"App\\\\Farm\",\"id\":236}', 'http://www.homevegfarmers.co.tz/farmers/113/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:46:46', '2018-08-04 17:46:46'),
(668, 'App\\User', 7, 'created', 'App\\Block', 112, '[]', '{\"number\":\"3A7\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"114\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":112}', 'http://www.homevegfarmers.co.tz/farmers/113/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:48:03', '2018-08-04 17:48:03'),
(669, 'App\\User', 7, 'created', 'App\\Farmer', 114, '[]', '{\"first_name\":\"Subra\",\"last_name\":\"Hasani\",\"phone\":\"0716505183\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":114}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:54:04', '2018-08-04 17:54:04'),
(670, 'App\\User', 7, 'created', 'App\\Address', 237, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":114,\"addressable_type\":\"App\\\\Farmer\",\"id\":237}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:54:04', '2018-08-04 17:54:04'),
(671, 'App\\User', 7, 'created', 'App\\Farm', 115, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":114,\"id\":115}', 'http://www.homevegfarmers.co.tz/farmers/114/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:54:39', '2018-08-04 17:54:39'),
(672, 'App\\User', 7, 'created', 'App\\Address', 238, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":115,\"addressable_type\":\"App\\\\Farm\",\"id\":238}', 'http://www.homevegfarmers.co.tz/farmers/114/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:54:39', '2018-08-04 17:54:39'),
(673, 'App\\User', 7, 'created', 'App\\Block', 113, '[]', '{\"number\":\"3A8\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"115\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":113}', 'http://www.homevegfarmers.co.tz/farmers/114/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:55:36', '2018-08-04 17:55:36'),
(674, 'App\\User', 7, 'created', 'App\\Farmer', 115, '[]', '{\"first_name\":\"Nurudini\",\"last_name\":\"Juma\",\"phone\":\"0716505283\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":115}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:56:29', '2018-08-04 17:56:29'),
(675, 'App\\User', 7, 'created', 'App\\Address', 239, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":115,\"addressable_type\":\"App\\\\Farmer\",\"id\":239}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:56:29', '2018-08-04 17:56:29'),
(676, 'App\\User', 7, 'created', 'App\\Farm', 116, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":115,\"id\":116}', 'http://www.homevegfarmers.co.tz/farmers/115/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:57:01', '2018-08-04 17:57:01'),
(677, 'App\\User', 7, 'created', 'App\\Address', 240, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":116,\"addressable_type\":\"App\\\\Farm\",\"id\":240}', 'http://www.homevegfarmers.co.tz/farmers/115/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:57:01', '2018-08-04 17:57:01'),
(678, 'App\\User', 7, 'created', 'App\\Block', 114, '[]', '{\"number\":\"3A9\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"116\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":114}', 'http://www.homevegfarmers.co.tz/farmers/115/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:58:19', '2018-08-04 17:58:19'),
(679, 'App\\User', 7, 'created', 'App\\Farmer', 116, '[]', '{\"first_name\":\"Zaujia\",\"last_name\":\"Zuberi\",\"phone\":\"0713143713\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":116}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:59:39', '2018-08-04 17:59:39'),
(680, 'App\\User', 7, 'created', 'App\\Address', 241, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":116,\"addressable_type\":\"App\\\\Farmer\",\"id\":241}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 17:59:39', '2018-08-04 17:59:39'),
(681, 'App\\User', 7, 'created', 'App\\Farm', 117, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":116,\"id\":117}', 'http://www.homevegfarmers.co.tz/farmers/116/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:00:12', '2018-08-04 18:00:12'),
(682, 'App\\User', 7, 'created', 'App\\Address', 242, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":117,\"addressable_type\":\"App\\\\Farm\",\"id\":242}', 'http://www.homevegfarmers.co.tz/farmers/116/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:00:12', '2018-08-04 18:00:12'),
(683, 'App\\User', 7, 'created', 'App\\Block', 115, '[]', '{\"number\":\"3B10\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"117\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":115}', 'http://www.homevegfarmers.co.tz/farmers/116/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:01:08', '2018-08-04 18:01:08'),
(684, 'App\\User', 7, 'created', 'App\\Farmer', 117, '[]', '{\"first_name\":\"Hutuba\",\"last_name\":\"Shabani\",\"phone\":\"0652523665\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":117}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:02:39', '2018-08-04 18:02:39'),
(685, 'App\\User', 7, 'created', 'App\\Address', 243, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":117,\"addressable_type\":\"App\\\\Farmer\",\"id\":243}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:02:39', '2018-08-04 18:02:39'),
(686, 'App\\User', 7, 'created', 'App\\Farm', 118, '[]', '{\"size\":\"0.047\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":117,\"id\":118}', 'http://www.homevegfarmers.co.tz/farmers/117/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:03:33', '2018-08-04 18:03:33'),
(687, 'App\\User', 7, 'created', 'App\\Address', 244, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":118,\"addressable_type\":\"App\\\\Farm\",\"id\":244}', 'http://www.homevegfarmers.co.tz/farmers/117/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:03:33', '2018-08-04 18:03:33'),
(688, 'App\\User', 7, 'created', 'App\\Block', 116, '[]', '{\"number\":\"3B11\",\"size\":\"0.047\",\"size_unit\":\"Hectare\",\"farm_id\":\"118\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":116}', 'http://www.homevegfarmers.co.tz/farmers/117/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:04:40', '2018-08-04 18:04:40'),
(689, 'App\\User', 7, 'created', 'App\\Farmer', 118, '[]', '{\"first_name\":\"Rashidi\",\"last_name\":\"Hassani\",\"phone\":\"0655352685\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":118}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:06:24', '2018-08-04 18:06:24'),
(690, 'App\\User', 7, 'created', 'App\\Address', 245, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":118,\"addressable_type\":\"App\\\\Farmer\",\"id\":245}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:06:24', '2018-08-04 18:06:24'),
(691, 'App\\User', 7, 'created', 'App\\Farm', 119, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":118,\"id\":119}', 'http://www.homevegfarmers.co.tz/farmers/118/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:06:49', '2018-08-04 18:06:49'),
(692, 'App\\User', 7, 'created', 'App\\Address', 246, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":119,\"addressable_type\":\"App\\\\Farm\",\"id\":246}', 'http://www.homevegfarmers.co.tz/farmers/118/farms?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:06:49', '2018-08-04 18:06:49'),
(693, 'App\\User', 7, 'created', 'App\\Block', 117, '[]', '{\"number\":\"3B12\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"119\",\"product_id\":\"2\",\"description\":\"Maruati\",\"id\":117}', 'http://www.homevegfarmers.co.tz/farmers/118/blocks?', '197.250.99.24', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 18:07:28', '2018-08-04 18:07:28'),
(694, 'App\\User', 7, 'created', 'App\\Farmer', 119, '[]', '{\"first_name\":\"Asha\",\"last_name\":\"Juma\",\"phone\":\"0712159138\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":119}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 20:56:08', '2018-08-04 20:56:08'),
(695, 'App\\User', 7, 'created', 'App\\Address', 247, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":119,\"addressable_type\":\"App\\\\Farmer\",\"id\":247}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 20:56:08', '2018-08-04 20:56:08'),
(696, 'App\\User', 7, 'created', 'App\\Farm', 120, '[]', '{\"size\":\"0.02\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":119,\"id\":120}', 'http://www.homevegfarmers.co.tz/farmers/119/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 20:56:53', '2018-08-04 20:56:53'),
(697, 'App\\User', 7, 'created', 'App\\Address', 248, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":120,\"addressable_type\":\"App\\\\Farm\",\"id\":248}', 'http://www.homevegfarmers.co.tz/farmers/119/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 20:56:53', '2018-08-04 20:56:53'),
(698, 'App\\User', 7, 'created', 'App\\Block', 118, '[]', '{\"number\":\"3C13\",\"size\":\"0.02\",\"size_unit\":\"Hectare\",\"farm_id\":\"120\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":118}', 'http://www.homevegfarmers.co.tz/farmers/119/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 20:57:58', '2018-08-04 20:57:58'),
(699, 'App\\User', 7, 'created', 'App\\Farmer', 120, '[]', '{\"first_name\":\"Ayubu\",\"last_name\":\"Mlugu\",\"phone\":\"0715519892\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":120}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:01:26', '2018-08-04 21:01:26'),
(700, 'App\\User', 7, 'created', 'App\\Address', 249, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":120,\"addressable_type\":\"App\\\\Farmer\",\"id\":249}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:01:26', '2018-08-04 21:01:26'),
(701, 'App\\User', 7, 'created', 'App\\Farm', 121, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":120,\"id\":121}', 'http://www.homevegfarmers.co.tz/farmers/120/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:02:00', '2018-08-04 21:02:00'),
(702, 'App\\User', 7, 'created', 'App\\Address', 250, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":121,\"addressable_type\":\"App\\\\Farm\",\"id\":250}', 'http://www.homevegfarmers.co.tz/farmers/120/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:02:00', '2018-08-04 21:02:00'),
(703, 'App\\User', 7, 'created', 'App\\Block', 119, '[]', '{\"number\":\"3C14\",\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"farm_id\":\"121\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":119}', 'http://www.homevegfarmers.co.tz/farmers/120/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:02:58', '2018-08-04 21:02:58'),
(704, 'App\\User', 7, 'created', 'App\\Farmer', 121, '[]', '{\"first_name\":\"Sadia\",\"last_name\":\"Omari\",\"phone\":\"0659419443\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":121}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:04:34', '2018-08-04 21:04:34'),
(705, 'App\\User', 7, 'created', 'App\\Address', 251, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":121,\"addressable_type\":\"App\\\\Farmer\",\"id\":251}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:04:34', '2018-08-04 21:04:34'),
(706, 'App\\User', 7, 'created', 'App\\Farm', 122, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":121,\"id\":122}', 'http://www.homevegfarmers.co.tz/farmers/121/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:05:07', '2018-08-04 21:05:07'),
(707, 'App\\User', 7, 'created', 'App\\Address', 252, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":122,\"addressable_type\":\"App\\\\Farm\",\"id\":252}', 'http://www.homevegfarmers.co.tz/farmers/121/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:05:07', '2018-08-04 21:05:07'),
(708, 'App\\User', 7, 'created', 'App\\Block', 120, '[]', '{\"number\":\"3C15\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"122\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":120}', 'http://www.homevegfarmers.co.tz/farmers/121/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:06:43', '2018-08-04 21:06:43'),
(709, 'App\\User', 7, 'created', 'App\\Farmer', 122, '[]', '{\"first_name\":\"Bituni\",\"last_name\":\"Ally\",\"phone\":\"0654755997\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":122}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:07:57', '2018-08-04 21:07:57'),
(710, 'App\\User', 7, 'created', 'App\\Address', 253, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":122,\"addressable_type\":\"App\\\\Farmer\",\"id\":253}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:07:57', '2018-08-04 21:07:57'),
(711, 'App\\User', 7, 'created', 'App\\Farm', 123, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":122,\"id\":123}', 'http://www.homevegfarmers.co.tz/farmers/122/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:08:37', '2018-08-04 21:08:37'),
(712, 'App\\User', 7, 'created', 'App\\Address', 254, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":123,\"addressable_type\":\"App\\\\Farm\",\"id\":254}', 'http://www.homevegfarmers.co.tz/farmers/122/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:08:37', '2018-08-04 21:08:37'),
(713, 'App\\User', 7, 'created', 'App\\Block', 121, '[]', '{\"number\":\"3C16\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"123\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":121}', 'http://www.homevegfarmers.co.tz/farmers/122/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:10:13', '2018-08-04 21:10:13'),
(714, 'App\\User', 7, 'created', 'App\\Farmer', 123, '[]', '{\"first_name\":\"Rajabu\",\"last_name\":\"Muinde\",\"phone\":\"0717922098\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":123}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:11:52', '2018-08-04 21:11:52'),
(715, 'App\\User', 7, 'created', 'App\\Address', 255, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":123,\"addressable_type\":\"App\\\\Farmer\",\"id\":255}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:11:52', '2018-08-04 21:11:52'),
(716, 'App\\User', 7, 'created', 'App\\Farm', 124, '[]', '{\"size\":\"0.02\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":123,\"id\":124}', 'http://www.homevegfarmers.co.tz/farmers/123/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:13:03', '2018-08-04 21:13:03'),
(717, 'App\\User', 7, 'created', 'App\\Address', 256, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":124,\"addressable_type\":\"App\\\\Farm\",\"id\":256}', 'http://www.homevegfarmers.co.tz/farmers/123/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:13:03', '2018-08-04 21:13:03'),
(718, 'App\\User', 7, 'created', 'App\\Block', 122, '[]', '{\"number\":\"3C17\",\"size\":\"0.02\",\"size_unit\":\"Hectare\",\"farm_id\":\"124\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":122}', 'http://www.homevegfarmers.co.tz/farmers/123/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:14:06', '2018-08-04 21:14:06'),
(719, 'App\\User', 7, 'created', 'App\\Farmer', 124, '[]', '{\"first_name\":\"Rahimu\",\"last_name\":\"Adamu\",\"phone\":\"0679123759\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":124}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:15:21', '2018-08-04 21:15:21'),
(720, 'App\\User', 7, 'created', 'App\\Address', 257, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":124,\"addressable_type\":\"App\\\\Farmer\",\"id\":257}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:15:21', '2018-08-04 21:15:21'),
(721, 'App\\User', 7, 'created', 'App\\Farm', 125, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":124,\"id\":125}', 'http://www.homevegfarmers.co.tz/farmers/124/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:15:58', '2018-08-04 21:15:58'),
(722, 'App\\User', 7, 'created', 'App\\Address', 258, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":125,\"addressable_type\":\"App\\\\Farm\",\"id\":258}', 'http://www.homevegfarmers.co.tz/farmers/124/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:15:58', '2018-08-04 21:15:58'),
(723, 'App\\User', 7, 'created', 'App\\Block', 123, '[]', '{\"number\":\"3C18\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"125\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":123}', 'http://www.homevegfarmers.co.tz/farmers/124/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:16:54', '2018-08-04 21:16:54'),
(724, 'App\\User', 7, 'created', 'App\\Farmer', 125, '[]', '{\"first_name\":\"Bakari\",\"last_name\":\"Ramadhani\",\"phone\":\"0654128944\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":125}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:19:24', '2018-08-04 21:19:24'),
(725, 'App\\User', 7, 'created', 'App\\Address', 259, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":125,\"addressable_type\":\"App\\\\Farmer\",\"id\":259}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:19:24', '2018-08-04 21:19:24'),
(726, 'App\\User', 7, 'created', 'App\\Farm', 126, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":125,\"id\":126}', 'http://www.homevegfarmers.co.tz/farmers/125/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:20:02', '2018-08-04 21:20:02'),
(727, 'App\\User', 7, 'created', 'App\\Address', 260, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":126,\"addressable_type\":\"App\\\\Farm\",\"id\":260}', 'http://www.homevegfarmers.co.tz/farmers/125/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:20:02', '2018-08-04 21:20:02'),
(728, 'App\\User', 7, 'created', 'App\\Block', 124, '[]', '{\"number\":\"3C19\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"126\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":124}', 'http://www.homevegfarmers.co.tz/farmers/125/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:20:47', '2018-08-04 21:20:47'),
(729, 'App\\User', 7, 'created', 'App\\Farmer', 126, '[]', '{\"first_name\":\"Halima\",\"last_name\":\"Husseni\",\"phone\":\"0783988213\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":126}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:21:58', '2018-08-04 21:21:58'),
(730, 'App\\User', 7, 'created', 'App\\Address', 261, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":126,\"addressable_type\":\"App\\\\Farmer\",\"id\":261}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:21:58', '2018-08-04 21:21:58'),
(731, 'App\\User', 7, 'created', 'App\\Farm', 127, '[]', '{\"size\":\"0.087\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":126,\"id\":127}', 'http://www.homevegfarmers.co.tz/farmers/126/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:22:30', '2018-08-04 21:22:30'),
(732, 'App\\User', 7, 'created', 'App\\Address', 262, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":127,\"addressable_type\":\"App\\\\Farm\",\"id\":262}', 'http://www.homevegfarmers.co.tz/farmers/126/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:22:30', '2018-08-04 21:22:30'),
(733, 'App\\User', 7, 'created', 'App\\Block', 125, '[]', '{\"number\":\"3C20\",\"size\":\"0.087\",\"size_unit\":\"Hectare\",\"farm_id\":\"127\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":125}', 'http://www.homevegfarmers.co.tz/farmers/126/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:23:21', '2018-08-04 21:23:21'),
(734, 'App\\User', 7, 'created', 'App\\Farmer', 127, '[]', '{\"first_name\":\"Mwanaidi\",\"last_name\":\"Mussa\",\"phone\":\"0676674686\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":127}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:24:40', '2018-08-04 21:24:40'),
(735, 'App\\User', 7, 'created', 'App\\Address', 263, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":127,\"addressable_type\":\"App\\\\Farmer\",\"id\":263}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:24:40', '2018-08-04 21:24:40'),
(736, 'App\\User', 7, 'created', 'App\\Farm', 128, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":127,\"id\":128}', 'http://www.homevegfarmers.co.tz/farmers/127/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:25:21', '2018-08-04 21:25:21'),
(737, 'App\\User', 7, 'created', 'App\\Address', 264, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":128,\"addressable_type\":\"App\\\\Farm\",\"id\":264}', 'http://www.homevegfarmers.co.tz/farmers/127/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:25:21', '2018-08-04 21:25:21'),
(738, 'App\\User', 7, 'created', 'App\\Block', 126, '[]', '{\"number\":\"3C21\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"128\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":126}', 'http://www.homevegfarmers.co.tz/farmers/127/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:26:37', '2018-08-04 21:26:37'),
(739, 'App\\User', 7, 'created', 'App\\Farmer', 128, '[]', '{\"first_name\":\"Lafii\",\"last_name\":\"Abdala\",\"phone\":\"0712403459\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":128}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:34:52', '2018-08-04 21:34:52'),
(740, 'App\\User', 7, 'created', 'App\\Address', 265, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":128,\"addressable_type\":\"App\\\\Farmer\",\"id\":265}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:34:52', '2018-08-04 21:34:52'),
(741, 'App\\User', 7, 'created', 'App\\Farm', 129, '[]', '{\"size\":\"0.033\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":128,\"id\":129}', 'http://www.homevegfarmers.co.tz/farmers/128/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:35:42', '2018-08-04 21:35:42'),
(742, 'App\\User', 7, 'created', 'App\\Address', 266, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":129,\"addressable_type\":\"App\\\\Farm\",\"id\":266}', 'http://www.homevegfarmers.co.tz/farmers/128/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:35:42', '2018-08-04 21:35:42'),
(743, 'App\\User', 7, 'created', 'App\\Block', 127, '[]', '{\"number\":\"2D22\",\"size\":\"0.033\",\"size_unit\":\"Hectare\",\"farm_id\":\"129\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":127}', 'http://www.homevegfarmers.co.tz/farmers/128/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:36:54', '2018-08-04 21:36:54'),
(744, 'App\\User', 7, 'created', 'App\\Block', 128, '[]', '{\"number\":\"3D22\",\"size\":\"0.033\",\"size_unit\":\"Hectare\",\"farm_id\":\"129\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":128}', 'http://www.homevegfarmers.co.tz/farmers/128/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:38:36', '2018-08-04 21:38:36'),
(745, 'App\\User', 7, 'created', 'App\\Farmer', 129, '[]', '{\"first_name\":\"Juma\",\"last_name\":\"Saidi\",\"phone\":\"0715519892\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":129}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:40:31', '2018-08-04 21:40:31'),
(746, 'App\\User', 7, 'created', 'App\\Address', 267, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":129,\"addressable_type\":\"App\\\\Farmer\",\"id\":267}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:40:31', '2018-08-04 21:40:31'),
(747, 'App\\User', 7, 'created', 'App\\Farm', 130, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":129,\"id\":130}', 'http://www.homevegfarmers.co.tz/farmers/129/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:41:09', '2018-08-04 21:41:09'),
(748, 'App\\User', 7, 'created', 'App\\Address', 268, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":130,\"addressable_type\":\"App\\\\Farm\",\"id\":268}', 'http://www.homevegfarmers.co.tz/farmers/129/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:41:09', '2018-08-04 21:41:09'),
(749, 'App\\User', 7, 'created', 'App\\Block', 129, '[]', '{\"number\":\"3D23\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"130\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":129}', 'http://www.homevegfarmers.co.tz/farmers/129/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:42:02', '2018-08-04 21:42:02'),
(750, 'App\\User', 7, 'created', 'App\\Farmer', 130, '[]', '{\"first_name\":\"Hadija\",\"last_name\":\"Ngoma\",\"phone\":\"0654306824\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":130}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:43:45', '2018-08-04 21:43:45'),
(751, 'App\\User', 7, 'created', 'App\\Address', 269, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":130,\"addressable_type\":\"App\\\\Farmer\",\"id\":269}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:43:45', '2018-08-04 21:43:45'),
(752, 'App\\User', 7, 'created', 'App\\Farm', 131, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":130,\"id\":131}', 'http://www.homevegfarmers.co.tz/farmers/130/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:45:04', '2018-08-04 21:45:04'),
(753, 'App\\User', 7, 'created', 'App\\Address', 270, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":131,\"addressable_type\":\"App\\\\Farm\",\"id\":270}', 'http://www.homevegfarmers.co.tz/farmers/130/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:45:04', '2018-08-04 21:45:04'),
(754, 'App\\User', 7, 'created', 'App\\Block', 130, '[]', '{\"number\":\"3D24\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"131\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":130}', 'http://www.homevegfarmers.co.tz/farmers/130/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:46:00', '2018-08-04 21:46:00'),
(755, 'App\\User', 7, 'created', 'App\\Farmer', 131, '[]', '{\"first_name\":\"Mwajuma\",\"last_name\":\"Ally\",\"phone\":\"0783395957\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":131}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:47:58', '2018-08-04 21:47:58'),
(756, 'App\\User', 7, 'created', 'App\\Address', 271, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":131,\"addressable_type\":\"App\\\\Farmer\",\"id\":271}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:47:58', '2018-08-04 21:47:58'),
(757, 'App\\User', 7, 'created', 'App\\Farm', 132, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":131,\"id\":132}', 'http://www.homevegfarmers.co.tz/farmers/131/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:48:38', '2018-08-04 21:48:38'),
(758, 'App\\User', 7, 'created', 'App\\Address', 272, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":132,\"addressable_type\":\"App\\\\Farm\",\"id\":272}', 'http://www.homevegfarmers.co.tz/farmers/131/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:48:38', '2018-08-04 21:48:38'),
(759, 'App\\User', 7, 'created', 'App\\Block', 131, '[]', '{\"number\":\"3D25\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"132\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":131}', 'http://www.homevegfarmers.co.tz/farmers/131/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:49:46', '2018-08-04 21:49:46'),
(760, 'App\\User', 7, 'created', 'App\\Farmer', 132, '[]', '{\"first_name\":\"Mariamu\",\"last_name\":\"Ibrahimu\",\"phone\":\"0676674686\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":132}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:51:06', '2018-08-04 21:51:06'),
(761, 'App\\User', 7, 'created', 'App\\Address', 273, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":132,\"addressable_type\":\"App\\\\Farmer\",\"id\":273}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:51:06', '2018-08-04 21:51:06'),
(762, 'App\\User', 7, 'created', 'App\\Farm', 133, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":132,\"id\":133}', 'http://www.homevegfarmers.co.tz/farmers/132/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:51:46', '2018-08-04 21:51:46'),
(763, 'App\\User', 7, 'created', 'App\\Address', 274, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":133,\"addressable_type\":\"App\\\\Farm\",\"id\":274}', 'http://www.homevegfarmers.co.tz/farmers/132/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:51:46', '2018-08-04 21:51:46');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(764, 'App\\User', 7, 'created', 'App\\Block', 132, '[]', '{\"number\":\"3D26\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"133\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":132}', 'http://www.homevegfarmers.co.tz/farmers/132/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:52:49', '2018-08-04 21:52:49'),
(765, 'App\\User', 7, 'created', 'App\\Farmer', 133, '[]', '{\"first_name\":\"Rehema\",\"last_name\":\"Ngoma\",\"phone\":\"0653831927\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":133}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:55:17', '2018-08-04 21:55:17'),
(766, 'App\\User', 7, 'created', 'App\\Address', 275, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":133,\"addressable_type\":\"App\\\\Farmer\",\"id\":275}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:55:17', '2018-08-04 21:55:17'),
(767, 'App\\User', 7, 'created', 'App\\Farm', 134, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":133,\"id\":134}', 'http://www.homevegfarmers.co.tz/farmers/133/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:55:58', '2018-08-04 21:55:58'),
(768, 'App\\User', 7, 'created', 'App\\Address', 276, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":134,\"addressable_type\":\"App\\\\Farm\",\"id\":276}', 'http://www.homevegfarmers.co.tz/farmers/133/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:55:58', '2018-08-04 21:55:58'),
(769, 'App\\User', 7, 'created', 'App\\Block', 133, '[]', '{\"number\":\"3D27\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"134\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":133}', 'http://www.homevegfarmers.co.tz/farmers/133/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:56:49', '2018-08-04 21:56:49'),
(770, 'App\\User', 7, 'created', 'App\\Farmer', 134, '[]', '{\"first_name\":\"Mwanahija\",\"last_name\":\"Amiry\",\"phone\":\"0679123759\",\"email\":null,\"gender\":\"female\",\"creator_id\":7,\"id\":134}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:58:26', '2018-08-04 21:58:26'),
(771, 'App\\User', 7, 'created', 'App\\Address', 277, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":134,\"addressable_type\":\"App\\\\Farmer\",\"id\":277}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:58:26', '2018-08-04 21:58:26'),
(772, 'App\\User', 7, 'created', 'App\\Farm', 135, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":134,\"id\":135}', 'http://www.homevegfarmers.co.tz/farmers/134/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:59:31', '2018-08-04 21:59:31'),
(773, 'App\\User', 7, 'created', 'App\\Address', 278, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":135,\"addressable_type\":\"App\\\\Farm\",\"id\":278}', 'http://www.homevegfarmers.co.tz/farmers/134/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 21:59:31', '2018-08-04 21:59:31'),
(774, 'App\\User', 7, 'created', 'App\\Block', 134, '[]', '{\"number\":\"3D28\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"135\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":134}', 'http://www.homevegfarmers.co.tz/farmers/134/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 22:00:25', '2018-08-04 22:00:25'),
(775, 'App\\User', 7, 'created', 'App\\Farmer', 135, '[]', '{\"first_name\":\"Salimu\",\"last_name\":\"Mahanyu\",\"phone\":\"0713143713\",\"email\":null,\"gender\":\"male\",\"creator_id\":7,\"id\":135}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 22:02:02', '2018-08-04 22:02:02'),
(776, 'App\\User', 7, 'created', 'App\\Address', 279, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":135,\"addressable_type\":\"App\\\\Farmer\",\"id\":279}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 22:02:02', '2018-08-04 22:02:02'),
(777, 'App\\User', 7, 'created', 'App\\Farm', 136, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Maruati\",\"farmer_id\":135,\"id\":136}', 'http://www.homevegfarmers.co.tz/farmers/135/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 22:02:44', '2018-08-04 22:02:44'),
(778, 'App\\User', 7, 'created', 'App\\Address', 280, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":136,\"addressable_type\":\"App\\\\Farm\",\"id\":280}', 'http://www.homevegfarmers.co.tz/farmers/135/farms?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 22:02:44', '2018-08-04 22:02:44'),
(779, 'App\\User', 7, 'created', 'App\\Block', 135, '[]', '{\"number\":\"3D29\",\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"farm_id\":\"136\",\"product_id\":\"1\",\"description\":\"Maruati\",\"id\":135}', 'http://www.homevegfarmers.co.tz/farmers/135/blocks?', '197.250.101.25', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-04 22:03:41', '2018-08-04 22:03:41'),
(780, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"remember_token\":\"2l09gnprLgF6wYtgMiABCCQJS7158pKLJlufCuPyQnsIn0ErMQLVfkIZwdye\"}', '{\"remember_token\":\"6fI44tS9AMcgt1DxxEUedSilsSzPcp5UdrLMx7AUVFeWv4SuydPriu7QtK5k\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.222.180.166', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-05 00:57:36', '2018-08-05 00:57:36'),
(781, 'App\\User', 6, 'created', 'App\\Farm', 137, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"farmer_id\":106,\"id\":137}', 'http://www.homevegfarmers.co.tz/farmers/106/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:02:07', '2018-08-05 01:02:07'),
(782, 'App\\User', 6, 'created', 'App\\Address', 281, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":137,\"addressable_type\":\"App\\\\Farm\",\"id\":281}', 'http://www.homevegfarmers.co.tz/farmers/106/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:02:07', '2018-08-05 01:02:07'),
(783, 'App\\User', 6, 'created', 'App\\Block', 136, '[]', '{\"number\":\"10A1\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"137\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":136}', 'http://www.homevegfarmers.co.tz/farmers/106/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:04:15', '2018-08-05 01:04:15'),
(784, 'App\\User', 6, 'created', 'App\\Farmer', 136, '[]', '{\"first_name\":\"Mwajuma\",\"last_name\":\"Kihiyo\",\"phone\":\"0784880338\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":136}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:15:08', '2018-08-05 01:15:08'),
(785, 'App\\User', 6, 'created', 'App\\Address', 282, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":136,\"addressable_type\":\"App\\\\Farmer\",\"id\":282}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:15:08', '2018-08-05 01:15:08'),
(786, 'App\\User', 6, 'created', 'App\\Farm', 138, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"farmer_id\":136,\"id\":138}', 'http://www.homevegfarmers.co.tz/farmers/136/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:16:39', '2018-08-05 01:16:39'),
(787, 'App\\User', 6, 'created', 'App\\Address', 283, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":138,\"addressable_type\":\"App\\\\Farm\",\"id\":283}', 'http://www.homevegfarmers.co.tz/farmers/136/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:16:39', '2018-08-05 01:16:39'),
(788, 'App\\User', 6, 'created', 'App\\Block', 137, '[]', '{\"number\":\"10A4\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"138\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":137}', 'http://www.homevegfarmers.co.tz/farmers/136/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:18:19', '2018-08-05 01:18:19'),
(789, 'App\\User', 6, 'created', 'App\\Farmer', 137, '[]', '{\"first_name\":\"Mahija\",\"last_name\":\"Hassan\",\"phone\":\"0652781221\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":137}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:23:49', '2018-08-05 01:23:49'),
(790, 'App\\User', 6, 'created', 'App\\Address', 284, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":137,\"addressable_type\":\"App\\\\Farmer\",\"id\":284}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:23:49', '2018-08-05 01:23:49'),
(791, 'App\\User', 6, 'created', 'App\\Farm', 139, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"farmer_id\":137,\"id\":139}', 'http://www.homevegfarmers.co.tz/farmers/137/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:25:49', '2018-08-05 01:25:49'),
(792, 'App\\User', 6, 'created', 'App\\Address', 285, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":139,\"addressable_type\":\"App\\\\Farm\",\"id\":285}', 'http://www.homevegfarmers.co.tz/farmers/137/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:25:49', '2018-08-05 01:25:49'),
(793, 'App\\User', 6, 'created', 'App\\Block', 138, '[]', '{\"number\":\"10A5\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"139\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":138}', 'http://www.homevegfarmers.co.tz/farmers/137/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:27:08', '2018-08-05 01:27:08'),
(794, 'App\\User', 6, 'created', 'App\\Farmer', 138, '[]', '{\"first_name\":\"Ester\",\"last_name\":\"Sangoti\",\"phone\":\"0656651805\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":138}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:30:00', '2018-08-05 01:30:00'),
(795, 'App\\User', 6, 'created', 'App\\Address', 286, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":138,\"addressable_type\":\"App\\\\Farmer\",\"id\":286}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:30:00', '2018-08-05 01:30:00'),
(796, 'App\\User', 6, 'created', 'App\\Farm', 140, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"farmer_id\":138,\"id\":140}', 'http://www.homevegfarmers.co.tz/farmers/138/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:31:07', '2018-08-05 01:31:07'),
(797, 'App\\User', 6, 'created', 'App\\Address', 287, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":140,\"addressable_type\":\"App\\\\Farm\",\"id\":287}', 'http://www.homevegfarmers.co.tz/farmers/138/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:31:07', '2018-08-05 01:31:07'),
(798, 'App\\User', 6, 'created', 'App\\Block', 139, '[]', '{\"number\":\"10A7\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"140\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":139}', 'http://www.homevegfarmers.co.tz/farmers/138/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:33:25', '2018-08-05 01:33:25'),
(799, 'App\\User', 6, 'created', 'App\\Farmer', 139, '[]', '{\"first_name\":\"Salimu\",\"last_name\":\"Bakari\",\"phone\":\"0654721994\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":139}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:35:33', '2018-08-05 01:35:33'),
(800, 'App\\User', 6, 'created', 'App\\Address', 288, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":139,\"addressable_type\":\"App\\\\Farmer\",\"id\":288}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:35:33', '2018-08-05 01:35:33'),
(801, 'App\\User', 6, 'created', 'App\\Farm', 141, '[]', '{\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"farmer_id\":139,\"id\":141}', 'http://www.homevegfarmers.co.tz/farmers/139/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:36:52', '2018-08-05 01:36:52'),
(802, 'App\\User', 6, 'created', 'App\\Address', 289, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":141,\"addressable_type\":\"App\\\\Farm\",\"id\":289}', 'http://www.homevegfarmers.co.tz/farmers/139/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:36:52', '2018-08-05 01:36:52'),
(803, 'App\\User', 6, 'created', 'App\\Block', 140, '[]', '{\"number\":\"10A8\",\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"farm_id\":\"141\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":140}', 'http://www.homevegfarmers.co.tz/farmers/139/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:38:15', '2018-08-05 01:38:15'),
(804, 'App\\User', 6, 'created', 'App\\Farmer', 140, '[]', '{\"first_name\":\"Felix\",\"last_name\":\"Ngoda\",\"phone\":\"0652997282\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":140}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:39:55', '2018-08-05 01:39:55'),
(805, 'App\\User', 6, 'created', 'App\\Address', 290, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":140,\"addressable_type\":\"App\\\\Farmer\",\"id\":290}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:39:55', '2018-08-05 01:39:55'),
(806, 'App\\User', 6, 'created', 'App\\Farm', 142, '[]', '{\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"farmer_id\":140,\"id\":142}', 'http://www.homevegfarmers.co.tz/farmers/140/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:41:02', '2018-08-05 01:41:02'),
(807, 'App\\User', 6, 'created', 'App\\Address', 291, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":142,\"addressable_type\":\"App\\\\Farm\",\"id\":291}', 'http://www.homevegfarmers.co.tz/farmers/140/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:41:02', '2018-08-05 01:41:02'),
(808, 'App\\User', 6, 'created', 'App\\Block', 141, '[]', '{\"number\":\"10A9\",\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"farm_id\":\"142\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":141}', 'http://www.homevegfarmers.co.tz/farmers/140/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:42:19', '2018-08-05 01:42:19'),
(809, 'App\\User', 6, 'created', 'App\\Farmer', 141, '[]', '{\"first_name\":\"Hobokela\",\"last_name\":\"Moyo\",\"phone\":\"0672183823\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":141}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:44:14', '2018-08-05 01:44:14'),
(810, 'App\\User', 6, 'created', 'App\\Address', 292, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":141,\"addressable_type\":\"App\\\\Farmer\",\"id\":292}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:44:14', '2018-08-05 01:44:14'),
(811, 'App\\User', 6, 'created', 'App\\Farm', 143, '[]', '{\"size\":\"0.21\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"farmer_id\":141,\"id\":143}', 'http://www.homevegfarmers.co.tz/farmers/141/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:45:14', '2018-08-05 01:45:14'),
(812, 'App\\User', 6, 'created', 'App\\Address', 293, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":143,\"addressable_type\":\"App\\\\Farm\",\"id\":293}', 'http://www.homevegfarmers.co.tz/farmers/141/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:45:14', '2018-08-05 01:45:14'),
(813, 'App\\User', 6, 'created', 'App\\Block', 142, '[]', '{\"number\":\"10A10\",\"size\":\"0.21\",\"size_unit\":\"Hectare\",\"farm_id\":\"143\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":142}', 'http://www.homevegfarmers.co.tz/farmers/141/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:46:11', '2018-08-05 01:46:11'),
(814, 'App\\User', 6, 'created', 'App\\Farmer', 142, '[]', '{\"first_name\":\"Elisa\",\"last_name\":\"Kanju\",\"phone\":\"0658740678\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":142}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:47:59', '2018-08-05 01:47:59'),
(815, 'App\\User', 6, 'created', 'App\\Address', 294, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":142,\"addressable_type\":\"App\\\\Farmer\",\"id\":294}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:47:59', '2018-08-05 01:47:59'),
(816, 'App\\User', 6, 'created', 'App\\Farm', 144, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"farmer_id\":142,\"id\":144}', 'http://www.homevegfarmers.co.tz/farmers/142/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:48:59', '2018-08-05 01:48:59'),
(817, 'App\\User', 6, 'created', 'App\\Address', 295, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":144,\"addressable_type\":\"App\\\\Farm\",\"id\":295}', 'http://www.homevegfarmers.co.tz/farmers/142/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:48:59', '2018-08-05 01:48:59'),
(818, 'App\\User', 6, 'created', 'App\\Block', 143, '[]', '{\"number\":\"11A2\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"144\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":143}', 'http://www.homevegfarmers.co.tz/farmers/142/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:50:07', '2018-08-05 01:50:07'),
(819, 'App\\User', 6, 'created', 'App\\Farmer', 143, '[]', '{\"first_name\":\"Timayo\",\"last_name\":\"Shehiza\",\"phone\":\"0712634977\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":143}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:52:11', '2018-08-05 01:52:11'),
(820, 'App\\User', 6, 'created', 'App\\Address', 296, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":143,\"addressable_type\":\"App\\\\Farmer\",\"id\":296}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:52:11', '2018-08-05 01:52:11'),
(821, 'App\\User', 6, 'created', 'App\\Farm', 145, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"farmer_id\":143,\"id\":145}', 'http://www.homevegfarmers.co.tz/farmers/143/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:53:05', '2018-08-05 01:53:05'),
(822, 'App\\User', 6, 'created', 'App\\Address', 297, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":145,\"addressable_type\":\"App\\\\Farm\",\"id\":297}', 'http://www.homevegfarmers.co.tz/farmers/143/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:53:05', '2018-08-05 01:53:05'),
(823, 'App\\User', 6, 'created', 'App\\Block', 144, '[]', '{\"number\":\"11A3\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"145\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":144}', 'http://www.homevegfarmers.co.tz/farmers/143/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:54:41', '2018-08-05 01:54:41'),
(824, 'App\\User', 6, 'created', 'App\\Farmer', 144, '[]', '{\"first_name\":\"Rehema\",\"last_name\":\"Chedi\",\"phone\":\"0652070863\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":144}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:56:43', '2018-08-05 01:56:43'),
(825, 'App\\User', 6, 'created', 'App\\Address', 298, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":144,\"addressable_type\":\"App\\\\Farmer\",\"id\":298}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:56:43', '2018-08-05 01:56:43'),
(826, 'App\\User', 6, 'created', 'App\\Farm', 146, '[]', '{\"size\":\"0.18\",\"size_unit\":\"Hectare\",\"description\":\"fine beans\",\"farmer_id\":144,\"id\":146}', 'http://www.homevegfarmers.co.tz/farmers/144/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:57:43', '2018-08-05 01:57:43'),
(827, 'App\\User', 6, 'created', 'App\\Address', 299, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":146,\"addressable_type\":\"App\\\\Farm\",\"id\":299}', 'http://www.homevegfarmers.co.tz/farmers/144/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:57:43', '2018-08-05 01:57:43'),
(828, 'App\\User', 6, 'created', 'App\\Block', 145, '[]', '{\"number\":\"11A4\",\"size\":\"0.18\",\"size_unit\":\"Hectare\",\"farm_id\":\"146\",\"product_id\":\"3\",\"description\":\"Fine beans\",\"id\":145}', 'http://www.homevegfarmers.co.tz/farmers/144/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 01:59:07', '2018-08-05 01:59:07'),
(829, 'App\\User', 6, 'created', 'App\\Farmer', 145, '[]', '{\"first_name\":\"Veronica\",\"last_name\":\"Melton\",\"phone\":\"0719818919\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":145}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:02:39', '2018-08-05 02:02:39'),
(830, 'App\\User', 6, 'created', 'App\\Address', 300, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":145,\"addressable_type\":\"App\\\\Farmer\",\"id\":300}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:02:39', '2018-08-05 02:02:39'),
(831, 'App\\User', 6, 'created', 'App\\Farm', 147, '[]', '{\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"description\":\"fine beans\",\"farmer_id\":145,\"id\":147}', 'http://www.homevegfarmers.co.tz/farmers/145/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:03:57', '2018-08-05 02:03:57'),
(832, 'App\\User', 6, 'created', 'App\\Address', 301, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":147,\"addressable_type\":\"App\\\\Farm\",\"id\":301}', 'http://www.homevegfarmers.co.tz/farmers/145/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:03:57', '2018-08-05 02:03:57'),
(833, 'App\\User', 6, 'created', 'App\\Block', 146, '[]', '{\"number\":\"11A5\",\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"farm_id\":\"147\",\"product_id\":\"3\",\"description\":\"Fine beans\",\"id\":146}', 'http://www.homevegfarmers.co.tz/farmers/145/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:05:22', '2018-08-05 02:05:22'),
(834, 'App\\User', 6, 'created', 'App\\Farmer', 146, '[]', '{\"first_name\":\"Jestina\",\"last_name\":\"Mashomo\",\"phone\":\"0657856002\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":146}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:07:06', '2018-08-05 02:07:06'),
(835, 'App\\User', 6, 'created', 'App\\Address', 302, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":146,\"addressable_type\":\"App\\\\Farmer\",\"id\":302}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:07:06', '2018-08-05 02:07:06'),
(836, 'App\\User', 6, 'created', 'App\\Farm', 148, '[]', '{\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"description\":\"fine beans\",\"farmer_id\":146,\"id\":148}', 'http://www.homevegfarmers.co.tz/farmers/146/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:07:58', '2018-08-05 02:07:58'),
(837, 'App\\User', 6, 'created', 'App\\Address', 303, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":148,\"addressable_type\":\"App\\\\Farm\",\"id\":303}', 'http://www.homevegfarmers.co.tz/farmers/146/farms?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:07:58', '2018-08-05 02:07:58'),
(838, 'App\\User', 6, 'created', 'App\\Block', 147, '[]', '{\"number\":\"11A6\",\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"farm_id\":\"148\",\"product_id\":\"3\",\"description\":\"Fine beans\",\"id\":147}', 'http://www.homevegfarmers.co.tz/farmers/146/blocks?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:09:04', '2018-08-05 02:09:04'),
(839, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"remember_token\":\"6fI44tS9AMcgt1DxxEUedSilsSzPcp5UdrLMx7AUVFeWv4SuydPriu7QtK5k\"}', '{\"remember_token\":\"tOOPDkQjMD4yEKLpLqq8eXJfgWu0OUmVClmU4kSom0qZd6BgYdUisxLWpNM6\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.222.180.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-05 02:10:26', '2018-08-05 02:10:26'),
(840, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"9zv15rVHkjfk1OvfE7vxcbBRTQYKgB0Lcru178fFtZgnJWkceOm0p2rjgcu0\"}', '{\"remember_token\":\"uXq849aVE9me0mLXwaibNS33nDA1TL53ktfVVjjLAJ11bndmaduhx1IDegLD\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-06 12:46:58', '2018-08-06 12:46:58'),
(841, 'App\\User', 12, 'updated', 'App\\User', 12, '{\"remember_token\":null}', '{\"remember_token\":\"ACsxF1NzjZHvhzjZV0YROVIF8tC6d6LXHNQAzGDTU8fwNfJnGA8a5xu7yzVJ\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-06 13:05:47', '2018-08-06 13:05:47'),
(842, 'App\\User', 12, 'updated', 'App\\User', 2, '{\"phone\":\"0754977618\"}', '{\"phone\":\"0754455332\"}', 'http://www.homevegfarmers.co.tz/settings/users/2?', '41.75.220.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-06 15:08:40', '2018-08-06 15:08:40'),
(843, 'App\\User', 12, 'created', 'App\\Address', 304, '[]', '{\"street\":\"Kichangani St.\",\"address\":\"22\",\"state\":\"Dar es Salaam\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":2,\"addressable_type\":\"App\\\\User\",\"id\":304}', 'http://www.homevegfarmers.co.tz/settings/users/2?', '41.75.220.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-06 15:08:40', '2018-08-06 15:08:40'),
(844, 'App\\User', 11, 'created', 'App\\Farmer', 147, '[]', '{\"first_name\":\"Juma\",\"last_name\":\"Kanini\",\"phone\":\"0784822776\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":147}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.251', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 16:10:02', '2018-08-06 16:10:02'),
(845, 'App\\User', 11, 'created', 'App\\Address', 305, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":147,\"addressable_type\":\"App\\\\Farmer\",\"id\":305}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.251', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 16:10:02', '2018-08-06 16:10:02'),
(846, 'App\\User', 11, 'created', 'App\\Farmer', 148, '[]', '{\"first_name\":\"Bakari\",\"last_name\":\"Saidi\",\"phone\":\"0784599049\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":148}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.251', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 16:11:44', '2018-08-06 16:11:44'),
(847, 'App\\User', 11, 'created', 'App\\Address', 306, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":148,\"addressable_type\":\"App\\\\Farmer\",\"id\":306}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.251', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 16:11:44', '2018-08-06 16:11:44'),
(848, 'App\\User', 11, 'created', 'App\\Farmer', 149, '[]', '{\"first_name\":\"Bakari\",\"last_name\":\"Shabani\",\"phone\":\"0685447148\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":149}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.251', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 16:13:13', '2018-08-06 16:13:13'),
(849, 'App\\User', 11, 'created', 'App\\Address', 307, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":149,\"addressable_type\":\"App\\\\Farmer\",\"id\":307}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.251', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 16:13:13', '2018-08-06 16:13:13'),
(850, 'App\\User', 10, 'created', 'App\\Farmer', 150, '[]', '{\"first_name\":\"Hamisi\",\"last_name\":\"Nyika\",\"phone\":\"0716510362\",\"email\":null,\"gender\":\"male\",\"creator_id\":10,\"id\":150}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:53:25', '2018-08-06 17:53:25'),
(851, 'App\\User', 10, 'created', 'App\\Address', 308, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":150,\"addressable_type\":\"App\\\\Farmer\",\"id\":308}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:53:25', '2018-08-06 17:53:25'),
(852, 'App\\User', 10, 'created', 'App\\Farm', 149, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":150,\"id\":149}', 'http://www.homevegfarmers.co.tz/farmers/150/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:54:16', '2018-08-06 17:54:16'),
(853, 'App\\User', 10, 'created', 'App\\Address', 309, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":149,\"addressable_type\":\"App\\\\Farm\",\"id\":309}', 'http://www.homevegfarmers.co.tz/farmers/150/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:54:16', '2018-08-06 17:54:16'),
(854, 'App\\User', 10, 'created', 'App\\Block', 148, '[]', '{\"number\":\"10B4\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"149\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":148}', 'http://www.homevegfarmers.co.tz/farmers/150/blocks?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:55:16', '2018-08-06 17:55:16'),
(855, 'App\\User', 10, 'created', 'App\\Farmer', 151, '[]', '{\"first_name\":\"Salimu\",\"last_name\":\"Shemchai\",\"phone\":\"0719181581\",\"email\":null,\"gender\":\"male\",\"creator_id\":10,\"id\":151}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:57:09', '2018-08-06 17:57:09'),
(856, 'App\\User', 10, 'created', 'App\\Address', 310, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":151,\"addressable_type\":\"App\\\\Farmer\",\"id\":310}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:57:09', '2018-08-06 17:57:09'),
(857, 'App\\User', 10, 'created', 'App\\Farm', 150, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":151,\"id\":150}', 'http://www.homevegfarmers.co.tz/farmers/151/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:58:42', '2018-08-06 17:58:42'),
(858, 'App\\User', 10, 'created', 'App\\Address', 311, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":150,\"addressable_type\":\"App\\\\Farm\",\"id\":311}', 'http://www.homevegfarmers.co.tz/farmers/151/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:58:42', '2018-08-06 17:58:42'),
(859, 'App\\User', 10, 'created', 'App\\Block', 149, '[]', '{\"number\":\"10B5\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"150\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":149}', 'http://www.homevegfarmers.co.tz/farmers/151/blocks?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 17:59:42', '2018-08-06 17:59:42'),
(860, 'App\\User', 10, 'created', 'App\\Farmer', 152, '[]', '{\"first_name\":\"Omari\",\"last_name\":\"Haji\",\"phone\":\"0674550189\",\"email\":null,\"gender\":\"male\",\"creator_id\":10,\"id\":152}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:01:19', '2018-08-06 18:01:19'),
(861, 'App\\User', 10, 'created', 'App\\Address', 312, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":152,\"addressable_type\":\"App\\\\Farmer\",\"id\":312}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:01:19', '2018-08-06 18:01:19'),
(862, 'App\\User', 10, 'created', 'App\\Farm', 151, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":152,\"id\":151}', 'http://www.homevegfarmers.co.tz/farmers/152/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:01:54', '2018-08-06 18:01:54'),
(863, 'App\\User', 10, 'created', 'App\\Address', 313, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":151,\"addressable_type\":\"App\\\\Farm\",\"id\":313}', 'http://www.homevegfarmers.co.tz/farmers/152/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:01:54', '2018-08-06 18:01:54'),
(864, 'App\\User', 10, 'created', 'App\\Block', 150, '[]', '{\"number\":\"10B6\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"151\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":150}', 'http://www.homevegfarmers.co.tz/farmers/152/blocks?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:02:41', '2018-08-06 18:02:41'),
(865, 'App\\User', 10, 'created', 'App\\Farmer', 153, '[]', '{\"first_name\":\"Baliatu\",\"last_name\":\"Hamis\",\"phone\":\"0653242261\",\"email\":null,\"gender\":\"female\",\"creator_id\":10,\"id\":153}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:04:07', '2018-08-06 18:04:07'),
(866, 'App\\User', 10, 'created', 'App\\Address', 314, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":153,\"addressable_type\":\"App\\\\Farmer\",\"id\":314}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:04:07', '2018-08-06 18:04:07'),
(867, 'App\\User', 10, 'created', 'App\\Farm', 152, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":153,\"id\":152}', 'http://www.homevegfarmers.co.tz/farmers/153/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:05:08', '2018-08-06 18:05:08'),
(868, 'App\\User', 10, 'created', 'App\\Address', 315, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":152,\"addressable_type\":\"App\\\\Farm\",\"id\":315}', 'http://www.homevegfarmers.co.tz/farmers/153/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:05:08', '2018-08-06 18:05:08'),
(869, 'App\\User', 10, 'created', 'App\\Block', 151, '[]', '{\"number\":\"10B8\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"152\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":151}', 'http://www.homevegfarmers.co.tz/farmers/153/blocks?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:06:01', '2018-08-06 18:06:01'),
(870, 'App\\User', 10, 'created', 'App\\Farmer', 154, '[]', '{\"first_name\":\"Habiba\",\"last_name\":\"Sadiki\",\"phone\":\"0718235652\",\"email\":null,\"gender\":\"female\",\"creator_id\":10,\"id\":154}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:07:15', '2018-08-06 18:07:15'),
(871, 'App\\User', 10, 'created', 'App\\Address', 316, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":154,\"addressable_type\":\"App\\\\Farmer\",\"id\":316}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:07:15', '2018-08-06 18:07:15'),
(872, 'App\\User', 10, 'created', 'App\\Farm', 153, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":154,\"id\":153}', 'http://www.homevegfarmers.co.tz/farmers/154/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:07:52', '2018-08-06 18:07:52'),
(873, 'App\\User', 10, 'created', 'App\\Address', 317, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":153,\"addressable_type\":\"App\\\\Farm\",\"id\":317}', 'http://www.homevegfarmers.co.tz/farmers/154/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:07:52', '2018-08-06 18:07:52'),
(874, 'App\\User', 10, 'created', 'App\\Block', 152, '[]', '{\"number\":\"10C2\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"153\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":152}', 'http://www.homevegfarmers.co.tz/farmers/154/blocks?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:08:48', '2018-08-06 18:08:48'),
(875, 'App\\User', 10, 'created', 'App\\Farmer', 155, '[]', '{\"first_name\":\"Hemedi\",\"last_name\":\"Hassan\",\"phone\":\"0654453250\",\"email\":null,\"gender\":\"male\",\"creator_id\":10,\"id\":155}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:12:18', '2018-08-06 18:12:18'),
(876, 'App\\User', 10, 'created', 'App\\Address', 318, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":155,\"addressable_type\":\"App\\\\Farmer\",\"id\":318}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:12:18', '2018-08-06 18:12:18'),
(877, 'App\\User', 10, 'created', 'App\\Farm', 154, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":155,\"id\":154}', 'http://www.homevegfarmers.co.tz/farmers/155/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:13:14', '2018-08-06 18:13:14');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(878, 'App\\User', 10, 'created', 'App\\Address', 319, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":154,\"addressable_type\":\"App\\\\Farm\",\"id\":319}', 'http://www.homevegfarmers.co.tz/farmers/155/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:13:14', '2018-08-06 18:13:14'),
(879, 'App\\User', 10, 'created', 'App\\Block', 153, '[]', '{\"number\":\"10C3\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"154\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":153}', 'http://www.homevegfarmers.co.tz/farmers/155/blocks?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:13:55', '2018-08-06 18:13:55'),
(880, 'App\\User', 10, 'created', 'App\\Farmer', 156, '[]', '{\"first_name\":\"Amiri\",\"last_name\":\"Sabuni\",\"phone\":\"0674425219\",\"email\":null,\"gender\":\"male\",\"creator_id\":10,\"id\":156}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:17:21', '2018-08-06 18:17:21'),
(881, 'App\\User', 10, 'created', 'App\\Address', 320, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":156,\"addressable_type\":\"App\\\\Farmer\",\"id\":320}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:17:21', '2018-08-06 18:17:21'),
(882, 'App\\User', 10, 'created', 'App\\Farm', 155, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":156,\"id\":155}', 'http://www.homevegfarmers.co.tz/farmers/156/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:18:07', '2018-08-06 18:18:07'),
(883, 'App\\User', 10, 'created', 'App\\Address', 321, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":155,\"addressable_type\":\"App\\\\Farm\",\"id\":321}', 'http://www.homevegfarmers.co.tz/farmers/156/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:18:07', '2018-08-06 18:18:07'),
(884, 'App\\User', 11, 'created', 'App\\Farmer', 157, '[]', '{\"first_name\":\"Pili\",\"last_name\":\"Rajabu\",\"phone\":\"0687941116\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":157}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:23:22', '2018-08-06 18:23:22'),
(885, 'App\\User', 11, 'created', 'App\\Address', 322, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":157,\"addressable_type\":\"App\\\\Farmer\",\"id\":322}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:23:22', '2018-08-06 18:23:22'),
(886, 'App\\User', 11, 'created', 'App\\Farm', 156, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":157,\"id\":156}', 'http://www.homevegfarmers.co.tz/farmers/157/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:23:55', '2018-08-06 18:23:55'),
(887, 'App\\User', 11, 'created', 'App\\Address', 323, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":156,\"addressable_type\":\"App\\\\Farm\",\"id\":323}', 'http://www.homevegfarmers.co.tz/farmers/157/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:23:55', '2018-08-06 18:23:55'),
(888, 'App\\User', 11, 'created', 'App\\Farmer', 158, '[]', '{\"first_name\":\"Raisha\",\"last_name\":\"Hasani\",\"phone\":\"0786664186\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":158}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:25:15', '2018-08-06 18:25:15'),
(889, 'App\\User', 11, 'created', 'App\\Address', 324, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":158,\"addressable_type\":\"App\\\\Farmer\",\"id\":324}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:25:15', '2018-08-06 18:25:15'),
(890, 'App\\User', 11, 'created', 'App\\Farm', 157, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":158,\"id\":157}', 'http://www.homevegfarmers.co.tz/farmers/158/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:25:42', '2018-08-06 18:25:42'),
(891, 'App\\User', 11, 'created', 'App\\Address', 325, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":157,\"addressable_type\":\"App\\\\Farm\",\"id\":325}', 'http://www.homevegfarmers.co.tz/farmers/158/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:25:42', '2018-08-06 18:25:42'),
(892, 'App\\User', 11, 'created', 'App\\Farmer', 159, '[]', '{\"first_name\":\"Azimara\",\"last_name\":\"Ramadhani\",\"phone\":\"0688790438\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":159}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:27:06', '2018-08-06 18:27:06'),
(893, 'App\\User', 11, 'created', 'App\\Address', 326, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":159,\"addressable_type\":\"App\\\\Farmer\",\"id\":326}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:27:06', '2018-08-06 18:27:06'),
(894, 'App\\User', 11, 'created', 'App\\Farm', 158, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":159,\"id\":158}', 'http://www.homevegfarmers.co.tz/farmers/159/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:28:02', '2018-08-06 18:28:02'),
(895, 'App\\User', 11, 'created', 'App\\Address', 327, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":158,\"addressable_type\":\"App\\\\Farm\",\"id\":327}', 'http://www.homevegfarmers.co.tz/farmers/159/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:28:02', '2018-08-06 18:28:02'),
(896, 'App\\User', 11, 'created', 'App\\Farmer', 160, '[]', '{\"first_name\":\"Shabani\",\"last_name\":\"Ally\",\"phone\":\"0628873294\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":160}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:32:39', '2018-08-06 18:32:39'),
(897, 'App\\User', 11, 'created', 'App\\Address', 328, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":160,\"addressable_type\":\"App\\\\Farmer\",\"id\":328}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:32:39', '2018-08-06 18:32:39'),
(898, 'App\\User', 11, 'created', 'App\\Farm', 159, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":160,\"id\":159}', 'http://www.homevegfarmers.co.tz/farmers/160/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:33:42', '2018-08-06 18:33:42'),
(899, 'App\\User', 11, 'created', 'App\\Address', 329, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":159,\"addressable_type\":\"App\\\\Farm\",\"id\":329}', 'http://www.homevegfarmers.co.tz/farmers/160/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 18:33:42', '2018-08-06 18:33:42'),
(900, 'App\\User', 10, 'created', 'App\\Block', 154, '[]', '{\"number\":\"10C4\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"155\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":154}', 'http://www.homevegfarmers.co.tz/farmers/156/blocks?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:37:10', '2018-08-06 18:37:10'),
(901, 'App\\User', 10, 'created', 'App\\Farmer', 161, '[]', '{\"first_name\":\"zaituni\",\"last_name\":\"Saidi\",\"phone\":\"0718143997\",\"email\":null,\"gender\":\"female\",\"creator_id\":10,\"id\":161}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:40:46', '2018-08-06 18:40:46'),
(902, 'App\\User', 10, 'created', 'App\\Address', 330, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":161,\"addressable_type\":\"App\\\\Farmer\",\"id\":330}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:40:46', '2018-08-06 18:40:46'),
(903, 'App\\User', 10, 'created', 'App\\Farm', 160, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":161,\"id\":160}', 'http://www.homevegfarmers.co.tz/farmers/161/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:41:39', '2018-08-06 18:41:39'),
(904, 'App\\User', 10, 'created', 'App\\Address', 331, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":160,\"addressable_type\":\"App\\\\Farm\",\"id\":331}', 'http://www.homevegfarmers.co.tz/farmers/161/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:41:39', '2018-08-06 18:41:39'),
(905, 'App\\User', 10, 'created', 'App\\Block', 155, '[]', '{\"number\":\"10C8\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"160\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":155}', 'http://www.homevegfarmers.co.tz/farmers/161/blocks?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:42:47', '2018-08-06 18:42:47'),
(906, 'App\\User', 10, 'created', 'App\\Farmer', 162, '[]', '{\"first_name\":\"Omari\",\"last_name\":\"Juma\",\"phone\":\"0674134380\",\"email\":null,\"gender\":\"male\",\"creator_id\":10,\"id\":162}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:44:28', '2018-08-06 18:44:28'),
(907, 'App\\User', 10, 'created', 'App\\Address', 332, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":162,\"addressable_type\":\"App\\\\Farmer\",\"id\":332}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:44:28', '2018-08-06 18:44:28'),
(908, 'App\\User', 10, 'created', 'App\\Farm', 161, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"farmer_id\":162,\"id\":161}', 'http://www.homevegfarmers.co.tz/farmers/162/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:45:04', '2018-08-06 18:45:04'),
(909, 'App\\User', 10, 'created', 'App\\Address', 333, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":161,\"addressable_type\":\"App\\\\Farm\",\"id\":333}', 'http://www.homevegfarmers.co.tz/farmers/162/farms?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:45:04', '2018-08-06 18:45:04'),
(910, 'App\\User', 10, 'created', 'App\\Block', 156, '[]', '{\"number\":\"10D1\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"161\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":156}', 'http://www.homevegfarmers.co.tz/farmers/162/blocks?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:45:52', '2018-08-06 18:45:52'),
(911, 'App\\User', 10, 'updated', 'App\\User', 10, '{\"remember_token\":\"Fl9WMzXt7dr9Mm5oIg0VeTleCUyy9rbuqICcC0HXv621sqq1N6uIC1jqQZav\"}', '{\"remember_token\":\"JDzxmu1BD0C5uJ5XirZp71i5fcRUzeJcI1S4ARUSyqaabXLtDiEC7A7z1ET1\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.222.180.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-06 18:46:05', '2018-08-06 18:46:05'),
(912, 'App\\User', 11, 'created', 'App\\Farmer', 163, '[]', '{\"first_name\":\"Aisha\",\"last_name\":\"Halifani\",\"phone\":\"0716364216\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":163}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:50:22', '2018-08-06 19:50:22'),
(913, 'App\\User', 11, 'created', 'App\\Address', 334, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":163,\"addressable_type\":\"App\\\\Farmer\",\"id\":334}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:50:22', '2018-08-06 19:50:22'),
(914, 'App\\User', 11, 'created', 'App\\Farm', 162, '[]', '{\"size\":\"0.01\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":163,\"id\":162}', 'http://www.homevegfarmers.co.tz/farmers/163/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:51:12', '2018-08-06 19:51:12'),
(915, 'App\\User', 11, 'created', 'App\\Address', 335, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":162,\"addressable_type\":\"App\\\\Farm\",\"id\":335}', 'http://www.homevegfarmers.co.tz/farmers/163/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:51:12', '2018-08-06 19:51:12'),
(916, 'App\\User', 11, 'created', 'App\\Farmer', 164, '[]', '{\"first_name\":\"Saumu\",\"last_name\":\"Imamu\",\"phone\":\"0658255330\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":164}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:54:39', '2018-08-06 19:54:39'),
(917, 'App\\User', 11, 'created', 'App\\Address', 336, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":164,\"addressable_type\":\"App\\\\Farmer\",\"id\":336}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:54:39', '2018-08-06 19:54:39'),
(918, 'App\\User', 11, 'created', 'App\\Farm', 163, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":164,\"id\":163}', 'http://www.homevegfarmers.co.tz/farmers/164/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:55:29', '2018-08-06 19:55:29'),
(919, 'App\\User', 11, 'created', 'App\\Address', 337, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":163,\"addressable_type\":\"App\\\\Farm\",\"id\":337}', 'http://www.homevegfarmers.co.tz/farmers/164/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:55:29', '2018-08-06 19:55:29'),
(920, 'App\\User', 11, 'created', 'App\\Farmer', 165, '[]', '{\"first_name\":\"Arabia\",\"last_name\":\"Hashimu\",\"phone\":\"0656048866\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":165}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:57:03', '2018-08-06 19:57:03'),
(921, 'App\\User', 11, 'created', 'App\\Address', 338, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":165,\"addressable_type\":\"App\\\\Farmer\",\"id\":338}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:57:03', '2018-08-06 19:57:03'),
(922, 'App\\User', 11, 'created', 'App\\Farm', 164, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":165,\"id\":164}', 'http://www.homevegfarmers.co.tz/farmers/165/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:57:38', '2018-08-06 19:57:38'),
(923, 'App\\User', 11, 'created', 'App\\Address', 339, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":164,\"addressable_type\":\"App\\\\Farm\",\"id\":339}', 'http://www.homevegfarmers.co.tz/farmers/165/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:57:38', '2018-08-06 19:57:38'),
(924, 'App\\User', 11, 'created', 'App\\Farmer', 166, '[]', '{\"first_name\":\"Mwanahawa\",\"last_name\":\"Selemani\",\"phone\":\"0652358230\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":166}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:58:45', '2018-08-06 19:58:45'),
(925, 'App\\User', 11, 'created', 'App\\Address', 340, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":166,\"addressable_type\":\"App\\\\Farmer\",\"id\":340}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:58:45', '2018-08-06 19:58:45'),
(926, 'App\\User', 11, 'created', 'App\\Farm', 165, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":166,\"id\":165}', 'http://www.homevegfarmers.co.tz/farmers/166/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:59:14', '2018-08-06 19:59:14'),
(927, 'App\\User', 11, 'created', 'App\\Address', 341, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":165,\"addressable_type\":\"App\\\\Farm\",\"id\":341}', 'http://www.homevegfarmers.co.tz/farmers/166/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 19:59:14', '2018-08-06 19:59:14'),
(928, 'App\\User', 11, 'created', 'App\\Farmer', 167, '[]', '{\"first_name\":\"Rehema\",\"last_name\":\"Juma\",\"phone\":\"0657307401\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":167}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:00:36', '2018-08-06 20:00:36'),
(929, 'App\\User', 11, 'created', 'App\\Address', 342, '[]', '{\"street\":\"343\",\"address\":\"Lushoto!\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":167,\"addressable_type\":\"App\\\\Farmer\",\"id\":342}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:00:36', '2018-08-06 20:00:36'),
(930, 'App\\User', 11, 'created', 'App\\Farm', 166, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":167,\"id\":166}', 'http://www.homevegfarmers.co.tz/farmers/167/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:01:08', '2018-08-06 20:01:08'),
(931, 'App\\User', 11, 'created', 'App\\Address', 343, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":166,\"addressable_type\":\"App\\\\Farm\",\"id\":343}', 'http://www.homevegfarmers.co.tz/farmers/167/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:01:08', '2018-08-06 20:01:08'),
(932, 'App\\User', 11, 'created', 'App\\Farmer', 168, '[]', '{\"first_name\":\"Jamila\",\"last_name\":\"Paulo\",\"phone\":\"0659319191\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":168}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:02:21', '2018-08-06 20:02:21'),
(933, 'App\\User', 11, 'created', 'App\\Address', 344, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":168,\"addressable_type\":\"App\\\\Farmer\",\"id\":344}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:02:21', '2018-08-06 20:02:21'),
(934, 'App\\User', 11, 'created', 'App\\Farm', 167, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":168,\"id\":167}', 'http://www.homevegfarmers.co.tz/farmers/168/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:02:47', '2018-08-06 20:02:47'),
(935, 'App\\User', 11, 'created', 'App\\Address', 345, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":167,\"addressable_type\":\"App\\\\Farm\",\"id\":345}', 'http://www.homevegfarmers.co.tz/farmers/168/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:02:47', '2018-08-06 20:02:47'),
(936, 'App\\User', 11, 'created', 'App\\Farmer', 169, '[]', '{\"first_name\":\"Batuli\",\"last_name\":\"Shekomba\",\"phone\":\"0713376694\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":169}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:03:49', '2018-08-06 20:03:49'),
(937, 'App\\User', 11, 'created', 'App\\Address', 346, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":169,\"addressable_type\":\"App\\\\Farmer\",\"id\":346}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:03:49', '2018-08-06 20:03:49'),
(938, 'App\\User', 11, 'created', 'App\\Farm', 168, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":169,\"id\":168}', 'http://www.homevegfarmers.co.tz/farmers/169/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:04:14', '2018-08-06 20:04:14'),
(939, 'App\\User', 11, 'created', 'App\\Address', 347, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":168,\"addressable_type\":\"App\\\\Farm\",\"id\":347}', 'http://www.homevegfarmers.co.tz/farmers/169/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:04:14', '2018-08-06 20:04:14'),
(940, 'App\\User', 11, 'created', 'App\\Farmer', 170, '[]', '{\"first_name\":\"Mwanaidi\",\"last_name\":\"Shegia\",\"phone\":\"0656933886\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":170}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:05:26', '2018-08-06 20:05:26'),
(941, 'App\\User', 11, 'created', 'App\\Address', 348, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":170,\"addressable_type\":\"App\\\\Farmer\",\"id\":348}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:05:26', '2018-08-06 20:05:26'),
(942, 'App\\User', 11, 'created', 'App\\Farm', 169, '[]', '{\"size\":\"0.91\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":170,\"id\":169}', 'http://www.homevegfarmers.co.tz/farmers/170/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:05:51', '2018-08-06 20:05:51'),
(943, 'App\\User', 11, 'created', 'App\\Address', 349, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":169,\"addressable_type\":\"App\\\\Farm\",\"id\":349}', 'http://www.homevegfarmers.co.tz/farmers/170/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:05:51', '2018-08-06 20:05:51'),
(944, 'App\\User', 11, 'created', 'App\\Farmer', 171, '[]', '{\"first_name\":\"Jaulina\",\"last_name\":\"Juma\",\"phone\":\"0659300460\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":171}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:06:52', '2018-08-06 20:06:52'),
(945, 'App\\User', 11, 'created', 'App\\Address', 350, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":171,\"addressable_type\":\"App\\\\Farmer\",\"id\":350}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:06:52', '2018-08-06 20:06:52'),
(946, 'App\\User', 11, 'created', 'App\\Farm', 170, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":171,\"id\":170}', 'http://www.homevegfarmers.co.tz/farmers/171/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:07:21', '2018-08-06 20:07:21'),
(947, 'App\\User', 11, 'created', 'App\\Address', 351, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":170,\"addressable_type\":\"App\\\\Farm\",\"id\":351}', 'http://www.homevegfarmers.co.tz/farmers/171/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:07:21', '2018-08-06 20:07:21'),
(948, 'App\\User', 11, 'created', 'App\\Farmer', 172, '[]', '{\"first_name\":\"Tatu\",\"last_name\":\"Salimu\",\"phone\":\"0686829102\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":172}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:09:27', '2018-08-06 20:09:27'),
(949, 'App\\User', 11, 'created', 'App\\Address', 352, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":172,\"addressable_type\":\"App\\\\Farmer\",\"id\":352}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:09:27', '2018-08-06 20:09:27'),
(950, 'App\\User', 11, 'created', 'App\\Farm', 171, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":172,\"id\":171}', 'http://www.homevegfarmers.co.tz/farmers/172/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:09:53', '2018-08-06 20:09:53'),
(951, 'App\\User', 11, 'created', 'App\\Address', 353, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":171,\"addressable_type\":\"App\\\\Farm\",\"id\":353}', 'http://www.homevegfarmers.co.tz/farmers/172/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:09:53', '2018-08-06 20:09:53'),
(952, 'App\\User', 11, 'created', 'App\\Farmer', 173, '[]', '{\"first_name\":\"Batuli\",\"last_name\":\"Mohamed\",\"phone\":\"0717874537\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":173}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:11:57', '2018-08-06 20:11:57'),
(953, 'App\\User', 11, 'created', 'App\\Address', 354, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":173,\"addressable_type\":\"App\\\\Farmer\",\"id\":354}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:11:57', '2018-08-06 20:11:57'),
(954, 'App\\User', 11, 'created', 'App\\Farm', 172, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":173,\"id\":172}', 'http://www.homevegfarmers.co.tz/farmers/173/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:12:26', '2018-08-06 20:12:26'),
(955, 'App\\User', 11, 'created', 'App\\Address', 355, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":172,\"addressable_type\":\"App\\\\Farm\",\"id\":355}', 'http://www.homevegfarmers.co.tz/farmers/173/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:12:26', '2018-08-06 20:12:26'),
(956, 'App\\User', 11, 'created', 'App\\Farmer', 174, '[]', '{\"first_name\":\"Safina\",\"last_name\":\"Ally\",\"phone\":\"0655327102\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":174}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:13:27', '2018-08-06 20:13:27'),
(957, 'App\\User', 11, 'created', 'App\\Address', 356, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":174,\"addressable_type\":\"App\\\\Farmer\",\"id\":356}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:13:27', '2018-08-06 20:13:27'),
(958, 'App\\User', 11, 'created', 'App\\Farm', 173, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":174,\"id\":173}', 'http://www.homevegfarmers.co.tz/farmers/174/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:13:55', '2018-08-06 20:13:55'),
(959, 'App\\User', 11, 'created', 'App\\Address', 357, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":173,\"addressable_type\":\"App\\\\Farm\",\"id\":357}', 'http://www.homevegfarmers.co.tz/farmers/174/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:13:55', '2018-08-06 20:13:55'),
(960, 'App\\User', 11, 'created', 'App\\Farmer', 175, '[]', '{\"first_name\":\"Saida\",\"last_name\":\"Rajabu\",\"phone\":\"0714225987\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":175}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:15:32', '2018-08-06 20:15:32'),
(961, 'App\\User', 11, 'created', 'App\\Address', 358, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":175,\"addressable_type\":\"App\\\\Farmer\",\"id\":358}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:15:32', '2018-08-06 20:15:32'),
(962, 'App\\User', 11, 'created', 'App\\Farm', 174, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":175,\"id\":174}', 'http://www.homevegfarmers.co.tz/farmers/175/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:15:59', '2018-08-06 20:15:59'),
(963, 'App\\User', 11, 'created', 'App\\Address', 359, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":174,\"addressable_type\":\"App\\\\Farm\",\"id\":359}', 'http://www.homevegfarmers.co.tz/farmers/175/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:15:59', '2018-08-06 20:15:59'),
(964, 'App\\User', 11, 'created', 'App\\Farmer', 176, '[]', '{\"first_name\":\"Hamisi\",\"last_name\":\"Rajabu\",\"phone\":\"0784816837\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":176}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:17:52', '2018-08-06 20:17:52'),
(965, 'App\\User', 11, 'created', 'App\\Address', 360, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":176,\"addressable_type\":\"App\\\\Farmer\",\"id\":360}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:17:52', '2018-08-06 20:17:52'),
(966, 'App\\User', 11, 'created', 'App\\Farm', 175, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":176,\"id\":175}', 'http://www.homevegfarmers.co.tz/farmers/176/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:18:24', '2018-08-06 20:18:24'),
(967, 'App\\User', 11, 'created', 'App\\Address', 361, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":175,\"addressable_type\":\"App\\\\Farm\",\"id\":361}', 'http://www.homevegfarmers.co.tz/farmers/176/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:18:24', '2018-08-06 20:18:24'),
(968, 'App\\User', 11, 'created', 'App\\Farmer', 177, '[]', '{\"first_name\":\"Farida\",\"last_name\":\"Mustapha\",\"phone\":\"0787000068\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":177}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:19:34', '2018-08-06 20:19:34'),
(969, 'App\\User', 11, 'created', 'App\\Address', 362, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":177,\"addressable_type\":\"App\\\\Farmer\",\"id\":362}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:19:34', '2018-08-06 20:19:34'),
(970, 'App\\User', 11, 'created', 'App\\Farm', 176, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":177,\"id\":176}', 'http://www.homevegfarmers.co.tz/farmers/177/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:20:01', '2018-08-06 20:20:01'),
(971, 'App\\User', 11, 'created', 'App\\Address', 363, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":176,\"addressable_type\":\"App\\\\Farm\",\"id\":363}', 'http://www.homevegfarmers.co.tz/farmers/177/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:20:01', '2018-08-06 20:20:01'),
(972, 'App\\User', 11, 'created', 'App\\Farmer', 178, '[]', '{\"first_name\":\"Fadhili\",\"last_name\":\"Ally\",\"phone\":\"0718292766\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":178}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:20:57', '2018-08-06 20:20:57'),
(973, 'App\\User', 11, 'created', 'App\\Address', 364, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":178,\"addressable_type\":\"App\\\\Farmer\",\"id\":364}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:20:57', '2018-08-06 20:20:57'),
(974, 'App\\User', 11, 'created', 'App\\Farm', 177, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":178,\"id\":177}', 'http://www.homevegfarmers.co.tz/farmers/178/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:21:24', '2018-08-06 20:21:24'),
(975, 'App\\User', 11, 'created', 'App\\Address', 365, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":177,\"addressable_type\":\"App\\\\Farm\",\"id\":365}', 'http://www.homevegfarmers.co.tz/farmers/178/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:21:24', '2018-08-06 20:21:24'),
(976, 'App\\User', 11, 'created', 'App\\Farmer', 179, '[]', '{\"first_name\":\"Mwanaidani\",\"last_name\":\"Hasani\",\"phone\":\"0714140276\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":179}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:22:59', '2018-08-06 20:22:59'),
(977, 'App\\User', 11, 'created', 'App\\Address', 366, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":179,\"addressable_type\":\"App\\\\Farmer\",\"id\":366}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:22:59', '2018-08-06 20:22:59'),
(978, 'App\\User', 11, 'created', 'App\\Farm', 178, '[]', '{\"size\":\"0.07\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":179,\"id\":178}', 'http://www.homevegfarmers.co.tz/farmers/179/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:25:22', '2018-08-06 20:25:22'),
(979, 'App\\User', 11, 'created', 'App\\Address', 367, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":178,\"addressable_type\":\"App\\\\Farm\",\"id\":367}', 'http://www.homevegfarmers.co.tz/farmers/179/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:25:22', '2018-08-06 20:25:22'),
(980, 'App\\User', 11, 'created', 'App\\Farmer', 180, '[]', '{\"first_name\":\"Zaina\",\"last_name\":\"Alimasi\",\"phone\":\"0677947892\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":180}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:26:42', '2018-08-06 20:26:42'),
(981, 'App\\User', 11, 'created', 'App\\Address', 368, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":180,\"addressable_type\":\"App\\\\Farmer\",\"id\":368}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:26:42', '2018-08-06 20:26:42'),
(982, 'App\\User', 11, 'created', 'App\\Farm', 179, '[]', '{\"size\":\"0.02\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":180,\"id\":179}', 'http://www.homevegfarmers.co.tz/farmers/180/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:27:11', '2018-08-06 20:27:11'),
(983, 'App\\User', 11, 'created', 'App\\Address', 369, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":179,\"addressable_type\":\"App\\\\Farm\",\"id\":369}', 'http://www.homevegfarmers.co.tz/farmers/180/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:27:11', '2018-08-06 20:27:11'),
(984, 'App\\User', 11, 'created', 'App\\Farmer', 181, '[]', '{\"first_name\":\"Zakia\",\"last_name\":\"Rashidi\",\"phone\":\"0653276469\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":181}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:28:17', '2018-08-06 20:28:17'),
(985, 'App\\User', 11, 'created', 'App\\Address', 370, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":181,\"addressable_type\":\"App\\\\Farmer\",\"id\":370}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:28:17', '2018-08-06 20:28:17'),
(986, 'App\\User', 11, 'created', 'App\\Farm', 180, '[]', '{\"size\":\"0.0245\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":181,\"id\":180}', 'http://www.homevegfarmers.co.tz/farmers/181/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:28:48', '2018-08-06 20:28:48'),
(987, 'App\\User', 11, 'created', 'App\\Address', 371, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":180,\"addressable_type\":\"App\\\\Farm\",\"id\":371}', 'http://www.homevegfarmers.co.tz/farmers/181/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:28:48', '2018-08-06 20:28:48'),
(988, 'App\\User', 11, 'created', 'App\\Farmer', 182, '[]', '{\"first_name\":\"Pili\",\"last_name\":\"Hoza\",\"phone\":\"0716505739\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":182}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:29:44', '2018-08-06 20:29:44');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(989, 'App\\User', 11, 'created', 'App\\Address', 372, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":182,\"addressable_type\":\"App\\\\Farmer\",\"id\":372}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:29:44', '2018-08-06 20:29:44'),
(990, 'App\\User', 11, 'created', 'App\\Farm', 181, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":182,\"id\":181}', 'http://www.homevegfarmers.co.tz/farmers/182/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:30:10', '2018-08-06 20:30:10'),
(991, 'App\\User', 11, 'created', 'App\\Address', 373, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":181,\"addressable_type\":\"App\\\\Farm\",\"id\":373}', 'http://www.homevegfarmers.co.tz/farmers/182/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:30:10', '2018-08-06 20:30:10'),
(992, 'App\\User', 11, 'created', 'App\\Farmer', 183, '[]', '{\"first_name\":\"Rahima\",\"last_name\":\"Adamu\",\"phone\":\"0656456888\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":183}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:31:35', '2018-08-06 20:31:35'),
(993, 'App\\User', 11, 'created', 'App\\Address', 374, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":183,\"addressable_type\":\"App\\\\Farmer\",\"id\":374}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:31:35', '2018-08-06 20:31:35'),
(994, 'App\\User', 11, 'created', 'App\\Farm', 182, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":183,\"id\":182}', 'http://www.homevegfarmers.co.tz/farmers/183/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:31:59', '2018-08-06 20:31:59'),
(995, 'App\\User', 11, 'created', 'App\\Address', 375, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":182,\"addressable_type\":\"App\\\\Farm\",\"id\":375}', 'http://www.homevegfarmers.co.tz/farmers/183/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:31:59', '2018-08-06 20:31:59'),
(996, 'App\\User', 11, 'created', 'App\\Farmer', 184, '[]', '{\"first_name\":\"Zuena\",\"last_name\":\"Ramadhani\",\"phone\":\"0652746664\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":184}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:33:13', '2018-08-06 20:33:13'),
(997, 'App\\User', 11, 'created', 'App\\Address', 376, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":184,\"addressable_type\":\"App\\\\Farmer\",\"id\":376}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:33:13', '2018-08-06 20:33:13'),
(998, 'App\\User', 11, 'created', 'App\\Farm', 183, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":184,\"id\":183}', 'http://www.homevegfarmers.co.tz/farmers/184/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:33:43', '2018-08-06 20:33:43'),
(999, 'App\\User', 11, 'created', 'App\\Address', 377, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":183,\"addressable_type\":\"App\\\\Farm\",\"id\":377}', 'http://www.homevegfarmers.co.tz/farmers/184/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:33:43', '2018-08-06 20:33:43'),
(1000, 'App\\User', 11, 'created', 'App\\Farmer', 185, '[]', '{\"first_name\":\"Shamila\",\"last_name\":\"Ramadhani\",\"phone\":\"0675715452\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":185}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:34:47', '2018-08-06 20:34:47'),
(1001, 'App\\User', 11, 'created', 'App\\Address', 378, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":185,\"addressable_type\":\"App\\\\Farmer\",\"id\":378}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:34:47', '2018-08-06 20:34:47'),
(1002, 'App\\User', 11, 'created', 'App\\Farm', 184, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":185,\"id\":184}', 'http://www.homevegfarmers.co.tz/farmers/185/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:35:11', '2018-08-06 20:35:11'),
(1003, 'App\\User', 11, 'created', 'App\\Address', 379, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":184,\"addressable_type\":\"App\\\\Farm\",\"id\":379}', 'http://www.homevegfarmers.co.tz/farmers/185/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:35:11', '2018-08-06 20:35:11'),
(1004, 'App\\User', 11, 'created', 'App\\Farmer', 186, '[]', '{\"first_name\":\"Femida\",\"last_name\":\"Jumanne\",\"phone\":\"0719376648\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":186}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:36:33', '2018-08-06 20:36:33'),
(1005, 'App\\User', 11, 'created', 'App\\Address', 380, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":186,\"addressable_type\":\"App\\\\Farmer\",\"id\":380}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:36:33', '2018-08-06 20:36:33'),
(1006, 'App\\User', 11, 'created', 'App\\Farm', 185, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Bombo\",\"farmer_id\":186,\"id\":185}', 'http://www.homevegfarmers.co.tz/farmers/186/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:37:05', '2018-08-06 20:37:05'),
(1007, 'App\\User', 11, 'created', 'App\\Address', 381, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":185,\"addressable_type\":\"App\\\\Farm\",\"id\":381}', 'http://www.homevegfarmers.co.tz/farmers/186/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:37:05', '2018-08-06 20:37:05'),
(1008, 'App\\User', 11, 'created', 'App\\Farmer', 187, '[]', '{\"first_name\":\"Penel\",\"last_name\":\"Petro\",\"phone\":\"0786619810\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":187}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:38:51', '2018-08-06 20:38:51'),
(1009, 'App\\User', 11, 'created', 'App\\Address', 382, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":187,\"addressable_type\":\"App\\\\Farmer\",\"id\":382}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:38:51', '2018-08-06 20:38:51'),
(1010, 'App\\User', 11, 'created', 'App\\Farm', 186, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":187,\"id\":186}', 'http://www.homevegfarmers.co.tz/farmers/187/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:39:24', '2018-08-06 20:39:24'),
(1011, 'App\\User', 11, 'created', 'App\\Address', 383, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":186,\"addressable_type\":\"App\\\\Farm\",\"id\":383}', 'http://www.homevegfarmers.co.tz/farmers/187/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:39:24', '2018-08-06 20:39:24'),
(1012, 'App\\User', 11, 'created', 'App\\Farmer', 188, '[]', '{\"first_name\":\"Wiliamu\",\"last_name\":\"Tumaini\",\"phone\":\"0629971060\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":188}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:40:28', '2018-08-06 20:40:28'),
(1013, 'App\\User', 11, 'created', 'App\\Address', 384, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":188,\"addressable_type\":\"App\\\\Farmer\",\"id\":384}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:40:28', '2018-08-06 20:40:28'),
(1014, 'App\\User', 11, 'created', 'App\\Farm', 187, '[]', '{\"size\":\"0.09\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":188,\"id\":187}', 'http://www.homevegfarmers.co.tz/farmers/188/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:41:00', '2018-08-06 20:41:00'),
(1015, 'App\\User', 11, 'created', 'App\\Address', 385, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":187,\"addressable_type\":\"App\\\\Farm\",\"id\":385}', 'http://www.homevegfarmers.co.tz/farmers/188/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:41:00', '2018-08-06 20:41:00'),
(1016, 'App\\User', 11, 'created', 'App\\Farmer', 189, '[]', '{\"first_name\":\"Rehema\",\"last_name\":\"Shikamana\",\"phone\":\"0629710408\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":189}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:42:15', '2018-08-06 20:42:15'),
(1017, 'App\\User', 11, 'created', 'App\\Address', 386, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":189,\"addressable_type\":\"App\\\\Farmer\",\"id\":386}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:42:15', '2018-08-06 20:42:15'),
(1018, 'App\\User', 11, 'created', 'App\\Farm', 188, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":189,\"id\":188}', 'http://www.homevegfarmers.co.tz/farmers/189/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:42:41', '2018-08-06 20:42:41'),
(1019, 'App\\User', 11, 'created', 'App\\Address', 387, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":188,\"addressable_type\":\"App\\\\Farm\",\"id\":387}', 'http://www.homevegfarmers.co.tz/farmers/189/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:42:41', '2018-08-06 20:42:41'),
(1020, 'App\\User', 11, 'created', 'App\\Farmer', 190, '[]', '{\"first_name\":\"Beatrice\",\"last_name\":\"Kundaeli\",\"phone\":\"0629974329\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":190}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:44:06', '2018-08-06 20:44:06'),
(1021, 'App\\User', 11, 'created', 'App\\Address', 388, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":190,\"addressable_type\":\"App\\\\Farmer\",\"id\":388}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:44:06', '2018-08-06 20:44:06'),
(1022, 'App\\User', 11, 'created', 'App\\Farm', 189, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":190,\"id\":189}', 'http://www.homevegfarmers.co.tz/farmers/190/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:44:46', '2018-08-06 20:44:46'),
(1023, 'App\\User', 11, 'created', 'App\\Address', 389, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":189,\"addressable_type\":\"App\\\\Farm\",\"id\":389}', 'http://www.homevegfarmers.co.tz/farmers/190/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:44:46', '2018-08-06 20:44:46'),
(1024, 'App\\User', 11, 'created', 'App\\Farmer', 191, '[]', '{\"first_name\":\"Raheli\",\"last_name\":\"Hoza\",\"phone\":\"0629717698\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":191}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:45:51', '2018-08-06 20:45:51'),
(1025, 'App\\User', 11, 'created', 'App\\Address', 390, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":191,\"addressable_type\":\"App\\\\Farmer\",\"id\":390}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:45:51', '2018-08-06 20:45:51'),
(1026, 'App\\User', 11, 'created', 'App\\Farm', 190, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":191,\"id\":190}', 'http://www.homevegfarmers.co.tz/farmers/191/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:46:31', '2018-08-06 20:46:31'),
(1027, 'App\\User', 11, 'created', 'App\\Address', 391, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":190,\"addressable_type\":\"App\\\\Farm\",\"id\":391}', 'http://www.homevegfarmers.co.tz/farmers/191/farms?', '197.250.230.34', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-06 20:46:31', '2018-08-06 20:46:31'),
(1028, 'App\\User', 11, 'created', 'App\\Farmer', 192, '[]', '{\"first_name\":\"Omari\",\"last_name\":\"Simoni\",\"phone\":\"0785562840\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":192}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:01:12', '2018-08-07 21:01:12'),
(1029, 'App\\User', 11, 'created', 'App\\Address', 392, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":192,\"addressable_type\":\"App\\\\Farmer\",\"id\":392}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:01:12', '2018-08-07 21:01:12'),
(1030, 'App\\User', 11, 'created', 'App\\Farm', 191, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":192,\"id\":191}', 'http://www.homevegfarmers.co.tz/farmers/192/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:01:51', '2018-08-07 21:01:51'),
(1031, 'App\\User', 11, 'created', 'App\\Address', 393, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":191,\"addressable_type\":\"App\\\\Farm\",\"id\":393}', 'http://www.homevegfarmers.co.tz/farmers/192/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:01:51', '2018-08-07 21:01:51'),
(1032, 'App\\User', 11, 'created', 'App\\Farmer', 193, '[]', '{\"first_name\":\"Samweli\",\"last_name\":\"Devil\",\"phone\":\"0686503223\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":193}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:03:59', '2018-08-07 21:03:59'),
(1033, 'App\\User', 11, 'created', 'App\\Address', 394, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":193,\"addressable_type\":\"App\\\\Farmer\",\"id\":394}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:03:59', '2018-08-07 21:03:59'),
(1034, 'App\\User', 11, 'created', 'App\\Farm', 192, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":193,\"id\":192}', 'http://www.homevegfarmers.co.tz/farmers/193/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:04:27', '2018-08-07 21:04:27'),
(1035, 'App\\User', 11, 'created', 'App\\Address', 395, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":192,\"addressable_type\":\"App\\\\Farm\",\"id\":395}', 'http://www.homevegfarmers.co.tz/farmers/193/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:04:27', '2018-08-07 21:04:27'),
(1036, 'App\\User', 11, 'created', 'App\\Farmer', 194, '[]', '{\"first_name\":\"Theofil\",\"last_name\":\"Williamu\",\"phone\":\"0783025200\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":194}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:05:42', '2018-08-07 21:05:42'),
(1037, 'App\\User', 11, 'created', 'App\\Address', 396, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":194,\"addressable_type\":\"App\\\\Farmer\",\"id\":396}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:05:42', '2018-08-07 21:05:42'),
(1038, 'App\\User', 11, 'created', 'App\\Farm', 193, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":194,\"id\":193}', 'http://www.homevegfarmers.co.tz/farmers/194/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:06:15', '2018-08-07 21:06:15'),
(1039, 'App\\User', 11, 'created', 'App\\Address', 397, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":193,\"addressable_type\":\"App\\\\Farm\",\"id\":397}', 'http://www.homevegfarmers.co.tz/farmers/194/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:06:15', '2018-08-07 21:06:15'),
(1040, 'App\\User', 11, 'created', 'App\\Farmer', 195, '[]', '{\"first_name\":\"Latifa\",\"last_name\":\"Adamu\",\"phone\":\"0626562007\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":195}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:07:18', '2018-08-07 21:07:18'),
(1041, 'App\\User', 11, 'created', 'App\\Address', 398, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":195,\"addressable_type\":\"App\\\\Farmer\",\"id\":398}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:07:18', '2018-08-07 21:07:18'),
(1042, 'App\\User', 11, 'created', 'App\\Farm', 194, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":195,\"id\":194}', 'http://www.homevegfarmers.co.tz/farmers/195/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:07:47', '2018-08-07 21:07:47'),
(1043, 'App\\User', 11, 'created', 'App\\Address', 399, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":194,\"addressable_type\":\"App\\\\Farm\",\"id\":399}', 'http://www.homevegfarmers.co.tz/farmers/195/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:07:47', '2018-08-07 21:07:47'),
(1044, 'App\\User', 11, 'created', 'App\\Farmer', 196, '[]', '{\"first_name\":\"Hashimu\",\"last_name\":\"Ramadhani\",\"phone\":\"0629710960\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":196}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:08:49', '2018-08-07 21:08:49'),
(1045, 'App\\User', 11, 'created', 'App\\Address', 400, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":196,\"addressable_type\":\"App\\\\Farmer\",\"id\":400}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:08:49', '2018-08-07 21:08:49'),
(1046, 'App\\User', 11, 'created', 'App\\Farm', 195, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":196,\"id\":195}', 'http://www.homevegfarmers.co.tz/farmers/196/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:09:15', '2018-08-07 21:09:15'),
(1047, 'App\\User', 11, 'created', 'App\\Address', 401, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":195,\"addressable_type\":\"App\\\\Farm\",\"id\":401}', 'http://www.homevegfarmers.co.tz/farmers/196/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:09:15', '2018-08-07 21:09:15'),
(1048, 'App\\User', 11, 'created', 'App\\Farmer', 197, '[]', '{\"first_name\":\"Salome\",\"last_name\":\"Jengo\",\"phone\":\"0788256413\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":197}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:10:18', '2018-08-07 21:10:18'),
(1049, 'App\\User', 11, 'created', 'App\\Address', 402, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":197,\"addressable_type\":\"App\\\\Farmer\",\"id\":402}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:10:18', '2018-08-07 21:10:18'),
(1050, 'App\\User', 11, 'created', 'App\\Farm', 196, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":197,\"id\":196}', 'http://www.homevegfarmers.co.tz/farmers/197/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:10:51', '2018-08-07 21:10:51'),
(1051, 'App\\User', 11, 'created', 'App\\Address', 403, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":196,\"addressable_type\":\"App\\\\Farm\",\"id\":403}', 'http://www.homevegfarmers.co.tz/farmers/197/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:10:51', '2018-08-07 21:10:51'),
(1052, 'App\\User', 11, 'created', 'App\\Farmer', 198, '[]', '{\"first_name\":\"Elieza\",\"last_name\":\"Jengo\",\"phone\":\"0786172680\",\"email\":null,\"gender\":\"male\",\"creator_id\":11,\"id\":198}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:12:02', '2018-08-07 21:12:02'),
(1053, 'App\\User', 11, 'created', 'App\\Address', 404, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":198,\"addressable_type\":\"App\\\\Farmer\",\"id\":404}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:12:02', '2018-08-07 21:12:02'),
(1054, 'App\\User', 11, 'created', 'App\\Farm', 197, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":198,\"id\":197}', 'http://www.homevegfarmers.co.tz/farmers/198/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:12:43', '2018-08-07 21:12:43'),
(1055, 'App\\User', 11, 'created', 'App\\Address', 405, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":197,\"addressable_type\":\"App\\\\Farm\",\"id\":405}', 'http://www.homevegfarmers.co.tz/farmers/198/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:12:43', '2018-08-07 21:12:43'),
(1056, 'App\\User', 11, 'created', 'App\\Farmer', 199, '[]', '{\"first_name\":\"Prsica\",\"last_name\":\"Lukasi\",\"phone\":\"0629711521\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":199}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:13:56', '2018-08-07 21:13:56'),
(1057, 'App\\User', 11, 'created', 'App\\Address', 406, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":199,\"addressable_type\":\"App\\\\Farmer\",\"id\":406}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:13:56', '2018-08-07 21:13:56'),
(1058, 'App\\User', 11, 'created', 'App\\Farm', 198, '[]', '{\"size\":\"0.1\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":199,\"id\":198}', 'http://www.homevegfarmers.co.tz/farmers/199/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:14:37', '2018-08-07 21:14:37'),
(1059, 'App\\User', 11, 'created', 'App\\Address', 407, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":198,\"addressable_type\":\"App\\\\Farm\",\"id\":407}', 'http://www.homevegfarmers.co.tz/farmers/199/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:14:37', '2018-08-07 21:14:37'),
(1060, 'App\\User', 11, 'created', 'App\\Farmer', 200, '[]', '{\"first_name\":\"Anna\",\"last_name\":\"Richadi\",\"phone\":\"0629717740\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":200}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:15:44', '2018-08-07 21:15:44'),
(1061, 'App\\User', 11, 'created', 'App\\Address', 408, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":200,\"addressable_type\":\"App\\\\Farmer\",\"id\":408}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:15:44', '2018-08-07 21:15:44'),
(1062, 'App\\User', 11, 'created', 'App\\Farm', 199, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":200,\"id\":199}', 'http://www.homevegfarmers.co.tz/farmers/200/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:16:11', '2018-08-07 21:16:11'),
(1063, 'App\\User', 11, 'created', 'App\\Address', 409, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":199,\"addressable_type\":\"App\\\\Farm\",\"id\":409}', 'http://www.homevegfarmers.co.tz/farmers/200/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:16:11', '2018-08-07 21:16:11'),
(1064, 'App\\User', 11, 'created', 'App\\Farmer', 201, '[]', '{\"first_name\":\"Amina\",\"last_name\":\"Omari\",\"phone\":\"0787114702\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":201}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:17:28', '2018-08-07 21:17:28'),
(1065, 'App\\User', 11, 'created', 'App\\Address', 410, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":201,\"addressable_type\":\"App\\\\Farmer\",\"id\":410}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:17:28', '2018-08-07 21:17:28'),
(1066, 'App\\User', 11, 'created', 'App\\Farm', 200, '[]', '{\"size\":\"0.05\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":201,\"id\":200}', 'http://www.homevegfarmers.co.tz/farmers/201/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:17:59', '2018-08-07 21:17:59'),
(1067, 'App\\User', 11, 'created', 'App\\Address', 411, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":200,\"addressable_type\":\"App\\\\Farm\",\"id\":411}', 'http://www.homevegfarmers.co.tz/farmers/201/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:17:59', '2018-08-07 21:17:59'),
(1068, 'App\\User', 11, 'created', 'App\\Farmer', 202, '[]', '{\"first_name\":\"Stellah\",\"last_name\":\"Jascitis\",\"phone\":\"0783322266\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":202}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:21:11', '2018-08-07 21:21:11'),
(1069, 'App\\User', 11, 'created', 'App\\Address', 412, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":202,\"addressable_type\":\"App\\\\Farmer\",\"id\":412}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:21:11', '2018-08-07 21:21:11'),
(1070, 'App\\User', 11, 'created', 'App\\Farm', 201, '[]', '{\"size\":\"0.13\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":202,\"id\":201}', 'http://www.homevegfarmers.co.tz/farmers/202/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:23:39', '2018-08-07 21:23:39'),
(1071, 'App\\User', 11, 'created', 'App\\Address', 413, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":201,\"addressable_type\":\"App\\\\Farm\",\"id\":413}', 'http://www.homevegfarmers.co.tz/farmers/202/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:23:39', '2018-08-07 21:23:39'),
(1072, 'App\\User', 11, 'created', 'App\\Farmer', 203, '[]', '{\"first_name\":\"Selina\",\"last_name\":\"Nathanaeli\",\"phone\":\"0628749560\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":203}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:25:51', '2018-08-07 21:25:51'),
(1073, 'App\\User', 11, 'created', 'App\\Address', 414, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":203,\"addressable_type\":\"App\\\\Farmer\",\"id\":414}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:25:51', '2018-08-07 21:25:51'),
(1074, 'App\\User', 11, 'created', 'App\\Farm', 202, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"Kwalei\",\"farmer_id\":203,\"id\":202}', 'http://www.homevegfarmers.co.tz/farmers/203/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:29:18', '2018-08-07 21:29:18'),
(1075, 'App\\User', 11, 'created', 'App\\Address', 415, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":202,\"addressable_type\":\"App\\\\Farm\",\"id\":415}', 'http://www.homevegfarmers.co.tz/farmers/203/farms?', '197.250.96.202', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-07 21:29:18', '2018-08-07 21:29:18'),
(1076, 'App\\User', 12, 'updated', 'App\\User', 12, '{\"remember_token\":\"ACsxF1NzjZHvhzjZV0YROVIF8tC6d6LXHNQAzGDTU8fwNfJnGA8a5xu7yzVJ\"}', '{\"remember_token\":\"BmIlSWRlx76w4gnouUcEDn8bav9h87euDT86ksynkmBYFH2mrcTfZBxCwU0Q\"}', 'http://www.homevegfarmers.co.tz/logout?', '197.250.225.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-08 23:30:16', '2018-08-08 23:30:16'),
(1077, 'App\\User', 6, 'created', 'App\\Farmer', 204, '[]', '{\"first_name\":\"Sauli\",\"last_name\":\"Mahimbo\",\"phone\":\"0656921428\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":204}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.181.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 00:23:18', '2018-08-09 00:23:18'),
(1078, 'App\\User', 6, 'created', 'App\\Address', 416, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":204,\"addressable_type\":\"App\\\\Farmer\",\"id\":416}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.181.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 00:23:18', '2018-08-09 00:23:18'),
(1079, 'App\\User', 6, 'created', 'App\\Farmer', 205, '[]', '{\"first_name\":\"Isaka\",\"last_name\":\"Singano\",\"phone\":\"0712453655\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":205}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.181.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 00:34:46', '2018-08-09 00:34:46'),
(1080, 'App\\User', 6, 'created', 'App\\Address', 417, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":205,\"addressable_type\":\"App\\\\Farmer\",\"id\":417}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.181.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 00:34:46', '2018-08-09 00:34:46'),
(1081, 'App\\User', 6, 'created', 'App\\Farmer', 206, '[]', '{\"first_name\":\"Anna\",\"last_name\":\"Kanju\",\"phone\":\"0718068370\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":206}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.181.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 00:41:20', '2018-08-09 00:41:20'),
(1082, 'App\\User', 6, 'created', 'App\\Address', 418, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":206,\"addressable_type\":\"App\\\\Farmer\",\"id\":418}', 'http://www.homevegfarmers.co.tz/farmers?', '41.222.181.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 00:41:20', '2018-08-09 00:41:20'),
(1083, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"remember_token\":\"tOOPDkQjMD4yEKLpLqq8eXJfgWu0OUmVClmU4kSom0qZd6BgYdUisxLWpNM6\"}', '{\"remember_token\":\"w5zGQsvDFrSsONqy371x7lvRsawVNWT7ugQLKIMIbubp1wWYZscijhmfnF3d\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.222.181.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 00:46:09', '2018-08-09 00:46:09'),
(1084, 'App\\User', 10, 'created', 'App\\Farmer', 207, '[]', '{\"first_name\":\"Miriam\",\"last_name\":\"Mdoe\",\"phone\":\"0712135053\",\"email\":null,\"gender\":\"female\",\"creator_id\":10,\"id\":207}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-09 14:04:31', '2018-08-09 14:04:31'),
(1085, 'App\\User', 10, 'created', 'App\\Address', 419, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":207,\"addressable_type\":\"App\\\\Farmer\",\"id\":419}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-09 14:04:31', '2018-08-09 14:04:31'),
(1086, 'App\\User', 11, 'created', 'App\\Farmer', 208, '[]', '{\"first_name\":\"Stela\",\"last_name\":\"Theophil\",\"phone\":\"0629973410\",\"email\":null,\"gender\":\"female\",\"creator_id\":11,\"id\":208}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.225.134', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-09 19:39:15', '2018-08-09 19:39:15'),
(1087, 'App\\User', 11, 'created', 'App\\Address', 420, '[]', '{\"street\":\"343\",\"address\":\"Lushoto\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":208,\"addressable_type\":\"App\\\\Farmer\",\"id\":420}', 'http://www.homevegfarmers.co.tz/farmers?', '197.250.225.134', 'Mozilla/5.0 (Linux; Android 7.0; TECNO P904 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Safari/537.36', NULL, '2018-08-09 19:39:15', '2018-08-09 19:39:15'),
(1088, 'App\\User', 12, 'created', 'App\\Block', 1, '[]', '{\"number\":\"A1\",\"description\":\"A1 Block\",\"id\":1}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 23:27:01', '2018-08-09 23:27:01'),
(1089, 'App\\User', 12, 'created', 'App\\Address', 421, '[]', '{\"street\":\"A1\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":1,\"addressable_type\":\"App\\\\Block\",\"id\":421}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 23:27:01', '2018-08-09 23:27:01'),
(1090, 'App\\User', 12, 'created', 'App\\Block', 2, '[]', '{\"number\":\"A2\",\"description\":\"A2\",\"id\":2}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 23:27:32', '2018-08-09 23:27:32'),
(1091, 'App\\User', 12, 'created', 'App\\Address', 422, '[]', '{\"street\":\"A2\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":2,\"addressable_type\":\"App\\\\Block\",\"id\":422}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-09 23:27:32', '2018-08-09 23:27:32'),
(1092, 'App\\User', 12, 'updated', 'App\\User', 12, '{\"remember_token\":\"BmIlSWRlx76w4gnouUcEDn8bav9h87euDT86ksynkmBYFH2mrcTfZBxCwU0Q\"}', '{\"remember_token\":\"UEKjLMGZc8kR5mMS4ET58WhNtD4Qdv0sksn2IgwBj7SSDMqxfbplDtVTdF9B\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-10 20:25:41', '2018-08-10 20:25:41'),
(1093, 'App\\User', 1, 'created', 'App\\User', 13, '[]', '{\"first_name\":\"Mussa\",\"last_name\":\"Mvungi\",\"email\":\"mussamvungi.homevegtz@gmail.com\",\"phone\":\"0784326206\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-07-16\",\"password\":\"$2y$10$Lsj1OOfrKDrUN5wTE\\/YHveV1nUcVIg0CCn87V7gf1WdoE8rQFslb.\",\"creator_id\":1,\"id\":13}', 'http://www.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-10 20:29:08', '2018-08-10 20:29:08'),
(1094, 'App\\User', 1, 'created', 'App\\Address', 423, '[]', '{\"street\":\"Arusha\",\"address\":\"\",\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":13,\"addressable_type\":\"App\\\\User\",\"id\":423}', 'http://www.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-10 20:29:08', '2018-08-10 20:29:08'),
(1095, 'App\\User', 1, 'updated', 'App\\User', 3, '{\"first_name\":\"John\",\"last_name\":\"Kibiu\",\"phone\":\"0713747515\"}', '{\"first_name\":\"Humphrey\",\"last_name\":\"Augustine\",\"phone\":\"0785983869\"}', 'http://www.homevegfarmers.co.tz/settings/users/3?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-10 20:34:54', '2018-08-10 20:34:54'),
(1096, 'App\\User', 1, 'created', 'App\\Address', 424, '[]', '{\"street\":\"Arusha\",\"address\":\"\",\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":3,\"addressable_type\":\"App\\\\User\",\"id\":424}', 'http://www.homevegfarmers.co.tz/settings/users/3?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-10 20:34:54', '2018-08-10 20:34:54'),
(1097, 'App\\User', 1, 'created', 'App\\User', 14, '[]', '{\"first_name\":\"Tarimo\",\"last_name\":\"Machel\",\"email\":\"tmachel.homevegtz@gmail.com\",\"phone\":\"0786683212\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-08-05\",\"password\":\"$2y$10$lu9KiBNO9MgmM.\\/hdK.mkepBcRf.AhKgU8aVKHr0l\\/01eGKwdsSR2\",\"creator_id\":1,\"id\":14}', 'http://www.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-10 20:38:10', '2018-08-10 20:38:10');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1098, 'App\\User', 1, 'created', 'App\\Address', 425, '[]', '{\"street\":\"Arusha\",\"address\":\"\",\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":14,\"addressable_type\":\"App\\\\User\",\"id\":425}', 'http://www.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', NULL, '2018-08-10 20:38:10', '2018-08-10 20:38:10'),
(1099, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"uXq849aVE9me0mLXwaibNS33nDA1TL53ktfVVjjLAJ11bndmaduhx1IDegLD\"}', '{\"remember_token\":\"YQYrpBB58CQl6xZ0lnpei8k7rAd6GP8xXIskfHjNxdYQ0z6B1JvmmaYYNv0U\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:45:17', '2018-08-12 17:45:17'),
(1100, 'App\\User', 1, 'created', 'App\\Block', 3, '[]', '{\"number\":\"10A\",\"description\":\"10A\",\"id\":3}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:50:10', '2018-08-12 17:50:10'),
(1101, 'App\\User', 1, 'created', 'App\\Address', 426, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":3,\"addressable_type\":\"App\\\\Block\",\"id\":426}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:50:10', '2018-08-12 17:50:10'),
(1102, 'App\\User', 1, 'created', 'App\\Block', 4, '[]', '{\"number\":\"10B\",\"description\":\"10B\",\"id\":4}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:51:13', '2018-08-12 17:51:13'),
(1103, 'App\\User', 1, 'created', 'App\\Address', 427, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":4,\"addressable_type\":\"App\\\\Block\",\"id\":427}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:51:13', '2018-08-12 17:51:13'),
(1104, 'App\\User', 1, 'created', 'App\\Block', 5, '[]', '{\"number\":\"1C\",\"description\":\"1C\",\"id\":5}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:52:24', '2018-08-12 17:52:24'),
(1105, 'App\\User', 1, 'created', 'App\\Address', 428, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":5,\"addressable_type\":\"App\\\\Block\",\"id\":428}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:52:24', '2018-08-12 17:52:24'),
(1106, 'App\\User', 1, 'created', 'App\\Block', 6, '[]', '{\"number\":\"1D\",\"description\":\"1D\",\"id\":6}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:53:05', '2018-08-12 17:53:05'),
(1107, 'App\\User', 1, 'created', 'App\\Address', 429, '[]', '{\"street\":\"1D\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":6,\"addressable_type\":\"App\\\\Block\",\"id\":429}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:53:05', '2018-08-12 17:53:05'),
(1108, 'App\\User', 1, 'created', 'App\\Block', 7, '[]', '{\"number\":\"1E\",\"description\":\"1E\",\"id\":7}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:53:32', '2018-08-12 17:53:32'),
(1109, 'App\\User', 1, 'created', 'App\\Address', 430, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":7,\"addressable_type\":\"App\\\\Block\",\"id\":430}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:53:32', '2018-08-12 17:53:32'),
(1110, 'App\\User', 1, 'created', 'App\\Block', 8, '[]', '{\"number\":\"1F\",\"description\":\"1F\",\"id\":8}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:55:21', '2018-08-12 17:55:21'),
(1111, 'App\\User', 1, 'created', 'App\\Address', 431, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":8,\"addressable_type\":\"App\\\\Block\",\"id\":431}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:55:21', '2018-08-12 17:55:21'),
(1112, 'App\\User', 1, 'created', 'App\\Block', 9, '[]', '{\"number\":\"1G\",\"description\":\"1G\",\"id\":9}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:55:44', '2018-08-12 17:55:44'),
(1113, 'App\\User', 1, 'created', 'App\\Address', 432, '[]', '{\"street\":\"tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":9,\"addressable_type\":\"App\\\\Block\",\"id\":432}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:55:44', '2018-08-12 17:55:44'),
(1114, 'App\\User', 1, 'created', 'App\\Block', 10, '[]', '{\"number\":\"2A\",\"description\":\"2A\",\"id\":10}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:56:27', '2018-08-12 17:56:27'),
(1115, 'App\\User', 1, 'created', 'App\\Address', 433, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":10,\"addressable_type\":\"App\\\\Block\",\"id\":433}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:56:27', '2018-08-12 17:56:27'),
(1116, 'App\\User', 1, 'created', 'App\\Block', 11, '[]', '{\"number\":\"2B\",\"description\":\"2B\",\"id\":11}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:57:58', '2018-08-12 17:57:58'),
(1117, 'App\\User', 1, 'created', 'App\\Address', 434, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":11,\"addressable_type\":\"App\\\\Block\",\"id\":434}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:57:58', '2018-08-12 17:57:58'),
(1118, 'App\\User', 1, 'created', 'App\\Block', 12, '[]', '{\"number\":\"2C\",\"description\":\"2C\",\"id\":12}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:58:27', '2018-08-12 17:58:27'),
(1119, 'App\\User', 1, 'created', 'App\\Address', 435, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":12,\"addressable_type\":\"App\\\\Block\",\"id\":435}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:58:27', '2018-08-12 17:58:27'),
(1120, 'App\\User', 1, 'created', 'App\\Block', 13, '[]', '{\"number\":\"2D\",\"description\":\"2D\",\"id\":13}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:59:11', '2018-08-12 17:59:11'),
(1121, 'App\\User', 1, 'created', 'App\\Address', 436, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":13,\"addressable_type\":\"App\\\\Block\",\"id\":436}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:59:11', '2018-08-12 17:59:11'),
(1122, 'App\\User', 1, 'created', 'App\\Block', 14, '[]', '{\"number\":\"2E\",\"description\":\"2E\",\"id\":14}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:59:42', '2018-08-12 17:59:42'),
(1123, 'App\\User', 1, 'created', 'App\\Address', 437, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":14,\"addressable_type\":\"App\\\\Block\",\"id\":437}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 17:59:42', '2018-08-12 17:59:42'),
(1124, 'App\\User', 1, 'created', 'App\\Block', 15, '[]', '{\"number\":\"3A\",\"description\":\"3A\",\"id\":15}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:00:27', '2018-08-12 18:00:27'),
(1125, 'App\\User', 1, 'created', 'App\\Address', 438, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":15,\"addressable_type\":\"App\\\\Block\",\"id\":438}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:00:27', '2018-08-12 18:00:27'),
(1126, 'App\\User', 1, 'created', 'App\\Block', 16, '[]', '{\"number\":\"3B\",\"description\":\"3B\",\"id\":16}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:00:50', '2018-08-12 18:00:50'),
(1127, 'App\\User', 1, 'created', 'App\\Address', 439, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":16,\"addressable_type\":\"App\\\\Block\",\"id\":439}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:00:50', '2018-08-12 18:00:50'),
(1128, 'App\\User', 1, 'created', 'App\\Block', 17, '[]', '{\"number\":\"3C\",\"description\":\"3C\",\"id\":17}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:01:26', '2018-08-12 18:01:26'),
(1129, 'App\\User', 1, 'created', 'App\\Address', 440, '[]', '{\"street\":\"tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":17,\"addressable_type\":\"App\\\\Block\",\"id\":440}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:01:26', '2018-08-12 18:01:26'),
(1130, 'App\\User', 1, 'created', 'App\\Block', 18, '[]', '{\"number\":\"3D\",\"description\":\"3D\",\"id\":18}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:02:15', '2018-08-12 18:02:15'),
(1131, 'App\\User', 1, 'created', 'App\\Address', 441, '[]', '{\"street\":\"tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":18,\"addressable_type\":\"App\\\\Block\",\"id\":441}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:02:15', '2018-08-12 18:02:15'),
(1132, 'App\\User', 1, 'created', 'App\\Block', 19, '[]', '{\"number\":\"10B\",\"description\":\"10B\",\"id\":19}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:03:23', '2018-08-12 18:03:23'),
(1133, 'App\\User', 1, 'created', 'App\\Address', 442, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":19,\"addressable_type\":\"App\\\\Block\",\"id\":442}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:03:23', '2018-08-12 18:03:23'),
(1134, 'App\\User', 1, 'created', 'App\\Block', 20, '[]', '{\"number\":\"11A\",\"description\":\"11A\",\"id\":20}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:03:55', '2018-08-12 18:03:55'),
(1135, 'App\\User', 1, 'created', 'App\\Address', 443, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":20,\"addressable_type\":\"App\\\\Block\",\"id\":443}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:03:55', '2018-08-12 18:03:55'),
(1136, 'App\\User', 1, 'created', 'App\\Block', 21, '[]', '{\"number\":\"10C\",\"description\":\"10C\",\"id\":21}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:05:04', '2018-08-12 18:05:04'),
(1137, 'App\\User', 1, 'created', 'App\\Address', 444, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":21,\"addressable_type\":\"App\\\\Block\",\"id\":444}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:05:04', '2018-08-12 18:05:04'),
(1138, 'App\\User', 1, 'created', 'App\\Block', 22, '[]', '{\"number\":\"10D\",\"description\":\"10D\",\"id\":22}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:05:32', '2018-08-12 18:05:32'),
(1139, 'App\\User', 1, 'created', 'App\\Address', 445, '[]', '{\"street\":\"Tanga\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":22,\"addressable_type\":\"App\\\\Block\",\"id\":445}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.75.220.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-12 18:05:32', '2018-08-12 18:05:32'),
(1140, 'App\\User', 6, 'created', 'App\\Farmer', 209, '[]', '{\"first_name\":\"Thomas\",\"last_name\":\"Nyangasa\",\"phone\":\"0658945874\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":209}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:13:33', '2018-08-14 13:13:33'),
(1141, 'App\\User', 6, 'created', 'App\\Address', 446, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":209,\"addressable_type\":\"App\\\\Farmer\",\"id\":446}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:13:33', '2018-08-14 13:13:33'),
(1142, 'App\\User', 6, 'created', 'App\\Block', 23, '[]', '{\"number\":\"11A10\",\"description\":\"Fine peas\",\"id\":23}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:15:14', '2018-08-14 13:15:14'),
(1143, 'App\\User', 6, 'created', 'App\\Address', 447, '[]', '{\"street\":\"556 Bungu\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":23,\"addressable_type\":\"App\\\\Block\",\"id\":447}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:15:14', '2018-08-14 13:15:14'),
(1144, 'App\\User', 6, 'created', 'App\\Farm', 203, '[]', '{\"size\":\"0.25\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"block_id\":\"20\",\"farmer_id\":209,\"id\":203}', 'http://www.homevegfarmers.co.tz/farmers/209/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:18:03', '2018-08-14 13:18:03'),
(1145, 'App\\User', 6, 'created', 'App\\Address', 448, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":203,\"addressable_type\":\"App\\\\Farm\",\"id\":448}', 'http://www.homevegfarmers.co.tz/farmers/209/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:18:04', '2018-08-14 13:18:04'),
(1146, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 157, '[]', '{\"number\":\"11A10\",\"size\":\"0.25\",\"size_unit\":\"Hectare\",\"farm_id\":\"203\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":157}', 'http://www.homevegfarmers.co.tz/farmers/209/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:20:53', '2018-08-14 13:20:53'),
(1147, 'App\\User', 6, 'created', 'App\\Farm', 204, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"block_id\":\"20\",\"farmer_id\":205,\"id\":204}', 'http://www.homevegfarmers.co.tz/farmers/205/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:22:44', '2018-08-14 13:22:44'),
(1148, 'App\\User', 6, 'created', 'App\\Address', 449, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":204,\"addressable_type\":\"App\\\\Farm\",\"id\":449}', 'http://www.homevegfarmers.co.tz/farmers/205/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:22:44', '2018-08-14 13:22:44'),
(1149, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 158, '[]', '{\"number\":\"11A8\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"204\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":158}', 'http://www.homevegfarmers.co.tz/farmers/205/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:24:03', '2018-08-14 13:24:03'),
(1150, 'App\\User', 6, 'created', 'App\\Farm', 205, '[]', '{\"size\":\"0.18\",\"size_unit\":\"Hectare\",\"description\":\"fine beans\",\"block_id\":\"20\",\"farmer_id\":204,\"id\":205}', 'http://www.homevegfarmers.co.tz/farmers/204/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:25:37', '2018-08-14 13:25:37'),
(1151, 'App\\User', 6, 'created', 'App\\Address', 450, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":205,\"addressable_type\":\"App\\\\Farm\",\"id\":450}', 'http://www.homevegfarmers.co.tz/farmers/204/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:25:37', '2018-08-14 13:25:37'),
(1152, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 159, '[]', '{\"number\":\"11A7\",\"size\":\"0.18\",\"size_unit\":\"Hectare\",\"farm_id\":\"205\",\"product_id\":\"3\",\"description\":\"Fine beans\",\"id\":159}', 'http://www.homevegfarmers.co.tz/farmers/204/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:26:54', '2018-08-14 13:26:54'),
(1153, 'App\\User', 6, 'created', 'App\\Block', 24, '[]', '{\"number\":\"11D\",\"description\":\"Fine peas\",\"id\":24}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:30:00', '2018-08-14 13:30:00'),
(1154, 'App\\User', 6, 'created', 'App\\Address', 451, '[]', '{\"street\":\"556 Bungu\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":24,\"addressable_type\":\"App\\\\Block\",\"id\":451}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:30:00', '2018-08-14 13:30:00'),
(1155, 'App\\User', 6, 'created', 'App\\Block', 25, '[]', '{\"number\":\"11D\",\"description\":\"Fine peas\",\"id\":25}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:32:45', '2018-08-14 13:32:45'),
(1156, 'App\\User', 6, 'created', 'App\\Address', 452, '[]', '{\"street\":\"556 Bungu\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":25,\"addressable_type\":\"App\\\\Block\",\"id\":452}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:32:45', '2018-08-14 13:32:45'),
(1157, 'App\\User', 6, 'created', 'App\\Farmer', 210, '[]', '{\"first_name\":\"Josephine\",\"last_name\":\"Singano\",\"phone\":\"0719796855\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":210}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:35:56', '2018-08-14 13:35:56'),
(1158, 'App\\User', 6, 'created', 'App\\Address', 453, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":210,\"addressable_type\":\"App\\\\Farmer\",\"id\":453}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:35:56', '2018-08-14 13:35:56'),
(1159, 'App\\User', 6, 'created', 'App\\Farm', 206, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"block_id\":\"20\",\"farmer_id\":210,\"id\":206}', 'http://www.homevegfarmers.co.tz/farmers/210/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:37:18', '2018-08-14 13:37:18'),
(1160, 'App\\User', 6, 'created', 'App\\Address', 454, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":206,\"addressable_type\":\"App\\\\Farm\",\"id\":454}', 'http://www.homevegfarmers.co.tz/farmers/210/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:37:18', '2018-08-14 13:37:18'),
(1161, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 160, '[]', '{\"number\":\"11A9\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"206\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":160}', 'http://www.homevegfarmers.co.tz/farmers/210/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:38:05', '2018-08-14 13:38:05'),
(1162, 'App\\User', 6, 'created', 'App\\Farmer', 211, '[]', '{\"first_name\":\"Lazaro\",\"last_name\":\"Chedi\",\"phone\":\"0717643930\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":211}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:39:23', '2018-08-14 13:39:23'),
(1163, 'App\\User', 6, 'created', 'App\\Address', 455, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":211,\"addressable_type\":\"App\\\\Farmer\",\"id\":455}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:39:23', '2018-08-14 13:39:23'),
(1164, 'App\\User', 6, 'created', 'App\\Farm', 207, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"fine peas\",\"block_id\":\"20\",\"farmer_id\":211,\"id\":207}', 'http://www.homevegfarmers.co.tz/farmers/211/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:40:58', '2018-08-14 13:40:58'),
(1165, 'App\\User', 6, 'created', 'App\\Address', 456, '[]', '{\"country\":\"Tanzania\",\"state\":\"Manyara\",\"addressable_id\":207,\"addressable_type\":\"App\\\\Farm\",\"id\":456}', 'http://www.homevegfarmers.co.tz/farmers/211/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:40:58', '2018-08-14 13:40:58'),
(1166, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 161, '[]', '{\"number\":\"11A11\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"207\",\"product_id\":\"1\",\"description\":\"Fine peas\",\"id\":161}', 'http://www.homevegfarmers.co.tz/farmers/211/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:41:47', '2018-08-14 13:41:47'),
(1167, 'App\\User', 6, 'created', 'App\\Farmer', 212, '[]', '{\"first_name\":\"Potina\",\"last_name\":\"Kuzirwa\",\"phone\":\"0672100435\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":212}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:43:15', '2018-08-14 13:43:15'),
(1168, 'App\\User', 6, 'created', 'App\\Address', 457, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":212,\"addressable_type\":\"App\\\\Farmer\",\"id\":457}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:43:15', '2018-08-14 13:43:15'),
(1169, 'App\\User', 6, 'created', 'App\\Block', 26, '[]', '{\"number\":\"11B\",\"description\":\"Fine peas\",\"id\":26}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:44:34', '2018-08-14 13:44:34'),
(1170, 'App\\User', 6, 'created', 'App\\Address', 458, '[]', '{\"street\":\"556 Bungu\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":26,\"addressable_type\":\"App\\\\Block\",\"id\":458}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:44:34', '2018-08-14 13:44:34'),
(1171, 'App\\User', 6, 'created', 'App\\Farm', 208, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"24\",\"farmer_id\":206,\"id\":208}', 'http://www.homevegfarmers.co.tz/farmers/206/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:48:49', '2018-08-14 13:48:49'),
(1172, 'App\\User', 6, 'created', 'App\\Address', 459, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":208,\"addressable_type\":\"App\\\\Farm\",\"id\":459}', 'http://www.homevegfarmers.co.tz/farmers/206/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:48:49', '2018-08-14 13:48:49'),
(1173, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 162, '[]', '{\"number\":\"11D2\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"208\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":162}', 'http://www.homevegfarmers.co.tz/farmers/206/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:49:58', '2018-08-14 13:49:58'),
(1174, 'App\\User', 6, 'created', 'App\\Farm', 209, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":212,\"id\":209}', 'http://www.homevegfarmers.co.tz/farmers/212/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:51:13', '2018-08-14 13:51:13'),
(1175, 'App\\User', 6, 'created', 'App\\Address', 460, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":209,\"addressable_type\":\"App\\\\Farm\",\"id\":460}', 'http://www.homevegfarmers.co.tz/farmers/212/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:51:13', '2018-08-14 13:51:13'),
(1176, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 163, '[]', '{\"number\":\"11B1\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"209\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":163}', 'http://www.homevegfarmers.co.tz/farmers/212/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:52:18', '2018-08-14 13:52:18'),
(1177, 'App\\User', 6, 'created', 'App\\Farmer', 213, '[]', '{\"first_name\":\"Yosia\",\"last_name\":\"Kanju\",\"phone\":\"0653568268\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":213}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:53:51', '2018-08-14 13:53:51'),
(1178, 'App\\User', 6, 'created', 'App\\Address', 461, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":213,\"addressable_type\":\"App\\\\Farmer\",\"id\":461}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:53:51', '2018-08-14 13:53:51'),
(1179, 'App\\User', 6, 'created', 'App\\Farm', 210, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":213,\"id\":210}', 'http://www.homevegfarmers.co.tz/farmers/213/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:54:40', '2018-08-14 13:54:40'),
(1180, 'App\\User', 6, 'created', 'App\\Address', 462, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":210,\"addressable_type\":\"App\\\\Farm\",\"id\":462}', 'http://www.homevegfarmers.co.tz/farmers/213/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:54:40', '2018-08-14 13:54:40'),
(1181, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 164, '[]', '{\"number\":\"11B2\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"210\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":164}', 'http://www.homevegfarmers.co.tz/farmers/213/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 13:55:46', '2018-08-14 13:55:46'),
(1182, 'App\\User', 6, 'created', 'App\\Farmer', 214, '[]', '{\"first_name\":\"Miraji\",\"last_name\":\"Sabbia\",\"phone\":\"0656044542\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":214}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:00:43', '2018-08-14 14:00:43'),
(1183, 'App\\User', 6, 'created', 'App\\Address', 463, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":214,\"addressable_type\":\"App\\\\Farmer\",\"id\":463}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:00:43', '2018-08-14 14:00:43'),
(1184, 'App\\User', 6, 'created', 'App\\Farm', 211, '[]', '{\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":214,\"id\":211}', 'http://www.homevegfarmers.co.tz/farmers/214/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:01:38', '2018-08-14 14:01:38'),
(1185, 'App\\User', 6, 'created', 'App\\Address', 464, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":211,\"addressable_type\":\"App\\\\Farm\",\"id\":464}', 'http://www.homevegfarmers.co.tz/farmers/214/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:01:38', '2018-08-14 14:01:38'),
(1186, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 165, '[]', '{\"number\":\"11B3\",\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"farm_id\":\"211\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":165}', 'http://www.homevegfarmers.co.tz/farmers/214/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:02:29', '2018-08-14 14:02:29'),
(1187, 'App\\User', 10, 'created', 'App\\Farmer', 215, '[]', '{\"first_name\":\"Hamis\",\"last_name\":\"Nyika\",\"phone\":\"0716510362\",\"email\":null,\"gender\":\"male\",\"creator_id\":10,\"id\":215}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:03:16', '2018-08-14 14:03:16'),
(1188, 'App\\User', 10, 'created', 'App\\Address', 465, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":215,\"addressable_type\":\"App\\\\Farmer\",\"id\":465}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:03:16', '2018-08-14 14:03:16'),
(1189, 'App\\User', 6, 'created', 'App\\Farmer', 216, '[]', '{\"first_name\":\"Prisna\",\"last_name\":\"Mahimbo\",\"phone\":\"0658613069\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":216}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:03:55', '2018-08-14 14:03:55'),
(1190, 'App\\User', 6, 'created', 'App\\Address', 466, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":216,\"addressable_type\":\"App\\\\Farmer\",\"id\":466}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:03:55', '2018-08-14 14:03:55'),
(1191, 'App\\User', 6, 'created', 'App\\Farm', 212, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":216,\"id\":212}', 'http://www.homevegfarmers.co.tz/farmers/216/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:05:17', '2018-08-14 14:05:17'),
(1192, 'App\\User', 6, 'created', 'App\\Address', 467, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":212,\"addressable_type\":\"App\\\\Farm\",\"id\":467}', 'http://www.homevegfarmers.co.tz/farmers/216/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:05:17', '2018-08-14 14:05:17'),
(1193, 'App\\User', 10, 'created', 'App\\Farm', 213, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"block_id\":\"19\",\"farmer_id\":215,\"id\":213}', 'http://www.homevegfarmers.co.tz/farmers/215/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:05:22', '2018-08-14 14:05:22'),
(1194, 'App\\User', 10, 'created', 'App\\Address', 468, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":213,\"addressable_type\":\"App\\\\Farm\",\"id\":468}', 'http://www.homevegfarmers.co.tz/farmers/215/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:05:22', '2018-08-14 14:05:22'),
(1195, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 166, '[]', '{\"number\":\"11B4\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"212\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":166}', 'http://www.homevegfarmers.co.tz/farmers/216/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:06:08', '2018-08-14 14:06:08'),
(1196, 'App\\User', 10, 'created', 'App\\HouseholdBlock', 167, '[]', '{\"number\":\"10B4\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"213\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":167}', 'http://www.homevegfarmers.co.tz/farmers/215/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:06:25', '2018-08-14 14:06:25'),
(1197, 'App\\User', 6, 'created', 'App\\Farmer', 217, '[]', '{\"first_name\":\"Zawadi\",\"last_name\":\"Shembilu\",\"phone\":\"0658613069\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":217}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:07:41', '2018-08-14 14:07:41'),
(1198, 'App\\User', 6, 'created', 'App\\Address', 469, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":217,\"addressable_type\":\"App\\\\Farmer\",\"id\":469}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:07:41', '2018-08-14 14:07:41'),
(1199, 'App\\User', 10, 'created', 'App\\Farmer', 218, '[]', '{\"first_name\":\"Salimu\",\"last_name\":\"Shemchai\",\"phone\":\"0719181581\",\"email\":null,\"gender\":\"male\",\"creator_id\":10,\"id\":218}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:07:42', '2018-08-14 14:07:42'),
(1200, 'App\\User', 10, 'created', 'App\\Address', 470, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":218,\"addressable_type\":\"App\\\\Farmer\",\"id\":470}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:07:42', '2018-08-14 14:07:42'),
(1201, 'App\\User', 6, 'created', 'App\\Farm', 214, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":217,\"id\":214}', 'http://www.homevegfarmers.co.tz/farmers/217/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:08:29', '2018-08-14 14:08:29'),
(1202, 'App\\User', 6, 'created', 'App\\Address', 471, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":214,\"addressable_type\":\"App\\\\Farm\",\"id\":471}', 'http://www.homevegfarmers.co.tz/farmers/217/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:08:29', '2018-08-14 14:08:29'),
(1203, 'App\\User', 10, 'created', 'App\\Farm', 215, '[]', '{\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"19\",\"farmer_id\":218,\"id\":215}', 'http://www.homevegfarmers.co.tz/farmers/218/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:08:39', '2018-08-14 14:08:39'),
(1204, 'App\\User', 10, 'created', 'App\\Address', 472, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":215,\"addressable_type\":\"App\\\\Farm\",\"id\":472}', 'http://www.homevegfarmers.co.tz/farmers/218/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:08:39', '2018-08-14 14:08:39'),
(1205, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 168, '[]', '{\"number\":\"11B5\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"214\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":168}', 'http://www.homevegfarmers.co.tz/farmers/217/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:09:08', '2018-08-14 14:09:08'),
(1206, 'App\\User', 10, 'created', 'App\\HouseholdBlock', 169, '[]', '{\"number\":\"10B5\",\"size\":\"0.06\",\"size_unit\":\"Hectare\",\"farm_id\":\"215\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":169}', 'http://www.homevegfarmers.co.tz/farmers/218/household_blocks?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:09:20', '2018-08-14 14:09:20'),
(1207, 'App\\User', 6, 'created', 'App\\Farmer', 219, '[]', '{\"first_name\":\"Miriam\",\"last_name\":\"Mdoe\",\"phone\":\"0712135053\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":219}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:10:40', '2018-08-14 14:10:40'),
(1208, 'App\\User', 6, 'created', 'App\\Address', 473, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":219,\"addressable_type\":\"App\\\\Farmer\",\"id\":473}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:10:40', '2018-08-14 14:10:40'),
(1209, 'App\\User', 10, 'created', 'App\\Farmer', 220, '[]', '{\"first_name\":\"Omari\",\"last_name\":\"Haji\",\"phone\":\"0674550189\",\"email\":null,\"gender\":\"male\",\"creator_id\":10,\"id\":220}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:11:14', '2018-08-14 14:11:14'),
(1210, 'App\\User', 10, 'created', 'App\\Address', 474, '[]', '{\"street\":\"556 Bungu\",\"address\":null,\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":220,\"addressable_type\":\"App\\\\Farmer\",\"id\":474}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:11:14', '2018-08-14 14:11:14'),
(1211, 'App\\User', 6, 'created', 'App\\Farm', 216, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":219,\"id\":216}', 'http://www.homevegfarmers.co.tz/farmers/219/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:11:31', '2018-08-14 14:11:31'),
(1212, 'App\\User', 6, 'created', 'App\\Address', 475, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":216,\"addressable_type\":\"App\\\\Farm\",\"id\":475}', 'http://www.homevegfarmers.co.tz/farmers/219/farms?', '41.59.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-14 14:11:31', '2018-08-14 14:11:31'),
(1213, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 170, '[]', '{\"number\":\"11B6\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"216\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":170}', 'http://www.homevegfarmers.co.tz/farmers/219/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:45:19', '2018-08-15 13:45:19');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1214, 'App\\User', 6, 'created', 'App\\Farmer', 221, '[]', '{\"first_name\":\"Magdalena\",\"last_name\":\"Mdoe\",\"phone\":\"0718891062\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":221}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:46:35', '2018-08-15 13:46:35'),
(1215, 'App\\User', 6, 'created', 'App\\Address', 476, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":221,\"addressable_type\":\"App\\\\Farmer\",\"id\":476}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:46:35', '2018-08-15 13:46:35'),
(1216, 'App\\User', 6, 'created', 'App\\Farm', 217, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":221,\"id\":217}', 'http://www.homevegfarmers.co.tz/farmers/221/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:47:25', '2018-08-15 13:47:25'),
(1217, 'App\\User', 6, 'created', 'App\\Address', 477, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":217,\"addressable_type\":\"App\\\\Farm\",\"id\":477}', 'http://www.homevegfarmers.co.tz/farmers/221/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:47:25', '2018-08-15 13:47:25'),
(1218, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 171, '[]', '{\"number\":\"11B7\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"217\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":171}', 'http://www.homevegfarmers.co.tz/farmers/221/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:48:05', '2018-08-15 13:48:05'),
(1219, 'App\\User', 6, 'created', 'App\\Farmer', 222, '[]', '{\"first_name\":\"Suzana\",\"last_name\":\"Onai\",\"phone\":\"0657843075\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":222}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:49:09', '2018-08-15 13:49:09'),
(1220, 'App\\User', 6, 'created', 'App\\Address', 478, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":222,\"addressable_type\":\"App\\\\Farmer\",\"id\":478}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:49:09', '2018-08-15 13:49:09'),
(1221, 'App\\User', 6, 'created', 'App\\Farm', 218, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":222,\"id\":218}', 'http://www.homevegfarmers.co.tz/farmers/222/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:50:04', '2018-08-15 13:50:04'),
(1222, 'App\\User', 6, 'created', 'App\\Address', 479, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":218,\"addressable_type\":\"App\\\\Farm\",\"id\":479}', 'http://www.homevegfarmers.co.tz/farmers/222/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:50:04', '2018-08-15 13:50:04'),
(1223, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 172, '[]', '{\"number\":\"11B8\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"218\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":172}', 'http://www.homevegfarmers.co.tz/farmers/222/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:50:43', '2018-08-15 13:50:43'),
(1224, 'App\\User', 6, 'created', 'App\\Farmer', 223, '[]', '{\"first_name\":\"Felister\",\"last_name\":\"Kimweli\",\"phone\":\"0713131106\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":223}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:52:00', '2018-08-15 13:52:00'),
(1225, 'App\\User', 6, 'created', 'App\\Address', 480, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":223,\"addressable_type\":\"App\\\\Farmer\",\"id\":480}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:52:00', '2018-08-15 13:52:00'),
(1226, 'App\\User', 6, 'created', 'App\\Farm', 219, '[]', '{\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":223,\"id\":219}', 'http://www.homevegfarmers.co.tz/farmers/223/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:53:04', '2018-08-15 13:53:04'),
(1227, 'App\\User', 6, 'created', 'App\\Address', 481, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":219,\"addressable_type\":\"App\\\\Farm\",\"id\":481}', 'http://www.homevegfarmers.co.tz/farmers/223/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:53:04', '2018-08-15 13:53:04'),
(1228, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 173, '[]', '{\"number\":\"11B9\",\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"farm_id\":\"219\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":173}', 'http://www.homevegfarmers.co.tz/farmers/223/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:53:45', '2018-08-15 13:53:45'),
(1229, 'App\\User', 6, 'created', 'App\\Farmer', 224, '[]', '{\"first_name\":\"Anna\",\"last_name\":\"Kilimali\",\"phone\":\"0654028617\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":224}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:55:10', '2018-08-15 13:55:10'),
(1230, 'App\\User', 6, 'created', 'App\\Address', 482, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":224,\"addressable_type\":\"App\\\\Farmer\",\"id\":482}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:55:10', '2018-08-15 13:55:10'),
(1231, 'App\\User', 6, 'created', 'App\\Farm', 220, '[]', '{\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"26\",\"farmer_id\":224,\"id\":220}', 'http://www.homevegfarmers.co.tz/farmers/224/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:55:51', '2018-08-15 13:55:51'),
(1232, 'App\\User', 6, 'created', 'App\\Address', 483, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":220,\"addressable_type\":\"App\\\\Farm\",\"id\":483}', 'http://www.homevegfarmers.co.tz/farmers/224/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:55:51', '2018-08-15 13:55:51'),
(1233, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 174, '[]', '{\"number\":\"11B10\",\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"farm_id\":\"220\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":174}', 'http://www.homevegfarmers.co.tz/farmers/224/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:56:38', '2018-08-15 13:56:38'),
(1234, 'App\\User', 6, 'created', 'App\\Farmer', 225, '[]', '{\"first_name\":\"Jonas\",\"last_name\":\"Richard\",\"phone\":\"0712244438\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":225}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:58:03', '2018-08-15 13:58:03'),
(1235, 'App\\User', 6, 'created', 'App\\Address', 484, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":225,\"addressable_type\":\"App\\\\Farmer\",\"id\":484}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:58:03', '2018-08-15 13:58:03'),
(1236, 'App\\User', 6, 'created', 'App\\Block', 27, '[]', '{\"number\":\"11C\",\"description\":\"Peas\",\"id\":27}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:59:00', '2018-08-15 13:59:00'),
(1237, 'App\\User', 6, 'created', 'App\\Address', 485, '[]', '{\"street\":\"556 Bungu\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"addressable_id\":27,\"addressable_type\":\"App\\\\Block\",\"id\":485}', 'http://www.homevegfarmers.co.tz/settings/blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 13:59:00', '2018-08-15 13:59:00'),
(1238, 'App\\User', 6, 'created', 'App\\Farm', 221, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"27\",\"farmer_id\":225,\"id\":221}', 'http://www.homevegfarmers.co.tz/farmers/225/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:00:11', '2018-08-15 14:00:11'),
(1239, 'App\\User', 6, 'created', 'App\\Address', 486, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":221,\"addressable_type\":\"App\\\\Farm\",\"id\":486}', 'http://www.homevegfarmers.co.tz/farmers/225/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:00:11', '2018-08-15 14:00:11'),
(1240, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 175, '[]', '{\"number\":\"11C1\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"221\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":175}', 'http://www.homevegfarmers.co.tz/farmers/225/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:01:01', '2018-08-15 14:01:01'),
(1241, 'App\\User', 6, 'created', 'App\\Farmer', 226, '[]', '{\"first_name\":\"Simon\",\"last_name\":\"Mahiza\",\"phone\":\"0758229427\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":226}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:02:17', '2018-08-15 14:02:17'),
(1242, 'App\\User', 6, 'created', 'App\\Address', 487, '[]', '{\"street\":\"556 Bungu\",\"address\":null,\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":226,\"addressable_type\":\"App\\\\Farmer\",\"id\":487}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:02:17', '2018-08-15 14:02:17'),
(1243, 'App\\User', 6, 'created', 'App\\Farm', 222, '[]', '{\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"27\",\"farmer_id\":226,\"id\":222}', 'http://www.homevegfarmers.co.tz/farmers/226/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:03:07', '2018-08-15 14:03:07'),
(1244, 'App\\User', 6, 'created', 'App\\Address', 488, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":222,\"addressable_type\":\"App\\\\Farm\",\"id\":488}', 'http://www.homevegfarmers.co.tz/farmers/226/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:03:07', '2018-08-15 14:03:07'),
(1245, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 176, '[]', '{\"number\":\"11C3\",\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"farm_id\":\"222\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":176}', 'http://www.homevegfarmers.co.tz/farmers/226/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:03:44', '2018-08-15 14:03:44'),
(1246, 'App\\User', 6, 'created', 'App\\Farmer', 227, '[]', '{\"first_name\":\"Florence\",\"last_name\":\"Mahiza\",\"phone\":\"0658613069\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":227}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:04:46', '2018-08-15 14:04:46'),
(1247, 'App\\User', 6, 'created', 'App\\Address', 489, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":227,\"addressable_type\":\"App\\\\Farmer\",\"id\":489}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:04:46', '2018-08-15 14:04:46'),
(1248, 'App\\User', 6, 'created', 'App\\Farm', 223, '[]', '{\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"block_id\":\"27\",\"farmer_id\":227,\"id\":223}', 'http://www.homevegfarmers.co.tz/farmers/227/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:05:27', '2018-08-15 14:05:27'),
(1249, 'App\\User', 6, 'created', 'App\\Address', 490, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":223,\"addressable_type\":\"App\\\\Farm\",\"id\":490}', 'http://www.homevegfarmers.co.tz/farmers/227/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:05:27', '2018-08-15 14:05:27'),
(1250, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 177, '[]', '{\"number\":\"11C4\",\"size\":\"0.08\",\"size_unit\":\"Hectare\",\"farm_id\":\"223\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":177}', 'http://www.homevegfarmers.co.tz/farmers/227/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:06:10', '2018-08-15 14:06:10'),
(1251, 'App\\User', 6, 'created', 'App\\Farmer', 228, '[]', '{\"first_name\":\"Omari\",\"last_name\":\"Daudi\",\"phone\":\"0713724910\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":228}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:07:23', '2018-08-15 14:07:23'),
(1252, 'App\\User', 6, 'created', 'App\\Address', 491, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":228,\"addressable_type\":\"App\\\\Farmer\",\"id\":491}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:07:23', '2018-08-15 14:07:23'),
(1253, 'App\\User', 6, 'created', 'App\\Farm', 224, '[]', '{\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"27\",\"farmer_id\":228,\"id\":224}', 'http://www.homevegfarmers.co.tz/farmers/228/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:08:06', '2018-08-15 14:08:06'),
(1254, 'App\\User', 6, 'created', 'App\\Address', 492, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":224,\"addressable_type\":\"App\\\\Farm\",\"id\":492}', 'http://www.homevegfarmers.co.tz/farmers/228/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:08:06', '2018-08-15 14:08:06'),
(1255, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 178, '[]', '{\"number\":\"11C5\",\"size\":\"0.03\",\"size_unit\":\"Hectare\",\"farm_id\":\"224\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":178}', 'http://www.homevegfarmers.co.tz/farmers/228/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:08:47', '2018-08-15 14:08:47'),
(1256, 'App\\User', 6, 'created', 'App\\Farmer', 229, '[]', '{\"first_name\":\"Jemes\",\"last_name\":\"Barua\",\"phone\":\"0716782880\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":229}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:09:47', '2018-08-15 14:09:47'),
(1257, 'App\\User', 6, 'created', 'App\\Address', 493, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":229,\"addressable_type\":\"App\\\\Farmer\",\"id\":493}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:09:47', '2018-08-15 14:09:47'),
(1258, 'App\\User', 6, 'created', 'App\\Farm', 225, '[]', '{\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"description\":\"fine beans\",\"block_id\":\"27\",\"farmer_id\":229,\"id\":225}', 'http://www.homevegfarmers.co.tz/farmers/229/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:10:39', '2018-08-15 14:10:39'),
(1259, 'App\\User', 6, 'created', 'App\\Address', 494, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":225,\"addressable_type\":\"App\\\\Farm\",\"id\":494}', 'http://www.homevegfarmers.co.tz/farmers/229/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:10:39', '2018-08-15 14:10:39'),
(1260, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 179, '[]', '{\"number\":\"11C6\",\"size\":\"0.125\",\"size_unit\":\"Hectare\",\"farm_id\":\"225\",\"product_id\":\"3\",\"description\":\"Fine beans\",\"id\":179}', 'http://www.homevegfarmers.co.tz/farmers/229/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:11:21', '2018-08-15 14:11:21'),
(1261, 'App\\User', 6, 'created', 'App\\Farmer', 230, '[]', '{\"first_name\":\"Tumaini\",\"last_name\":\"Kihiyo\",\"phone\":\"0712225295\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":230}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:13:40', '2018-08-15 14:13:40'),
(1262, 'App\\User', 6, 'created', 'App\\Address', 495, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":230,\"addressable_type\":\"App\\\\Farmer\",\"id\":495}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:13:40', '2018-08-15 14:13:40'),
(1263, 'App\\User', 6, 'created', 'App\\Farm', 226, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"27\",\"farmer_id\":230,\"id\":226}', 'http://www.homevegfarmers.co.tz/farmers/230/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:14:24', '2018-08-15 14:14:24'),
(1264, 'App\\User', 6, 'created', 'App\\Address', 496, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":226,\"addressable_type\":\"App\\\\Farm\",\"id\":496}', 'http://www.homevegfarmers.co.tz/farmers/230/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:14:24', '2018-08-15 14:14:24'),
(1265, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 180, '[]', '{\"number\":\"11C8\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"226\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":180}', 'http://www.homevegfarmers.co.tz/farmers/230/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:15:02', '2018-08-15 14:15:02'),
(1266, 'App\\User', 6, 'created', 'App\\Farmer', 231, '[]', '{\"first_name\":\"Onice\",\"last_name\":\"Kihiyo\",\"phone\":\"0712225295\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":231}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:16:31', '2018-08-15 14:16:31'),
(1267, 'App\\User', 6, 'created', 'App\\Address', 497, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":231,\"addressable_type\":\"App\\\\Farmer\",\"id\":497}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:16:31', '2018-08-15 14:16:31'),
(1268, 'App\\User', 6, 'created', 'App\\Farm', 227, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Peas\",\"block_id\":\"27\",\"farmer_id\":231,\"id\":227}', 'http://www.homevegfarmers.co.tz/farmers/231/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:17:06', '2018-08-15 14:17:06'),
(1269, 'App\\User', 6, 'created', 'App\\Address', 498, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":227,\"addressable_type\":\"App\\\\Farm\",\"id\":498}', 'http://www.homevegfarmers.co.tz/farmers/231/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:17:06', '2018-08-15 14:17:06'),
(1270, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 181, '[]', '{\"number\":\"11C9\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"227\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":181}', 'http://www.homevegfarmers.co.tz/farmers/231/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:17:37', '2018-08-15 14:17:37'),
(1271, 'App\\User', 6, 'created', 'App\\Farmer', 232, '[]', '{\"first_name\":\"Maria\",\"last_name\":\"Singano\",\"phone\":\"0713592161\",\"email\":null,\"gender\":\"female\",\"creator_id\":6,\"id\":232}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:18:58', '2018-08-15 14:18:58'),
(1272, 'App\\User', 6, 'created', 'App\\Address', 499, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":232,\"addressable_type\":\"App\\\\Farmer\",\"id\":499}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:18:58', '2018-08-15 14:18:58'),
(1273, 'App\\User', 6, 'created', 'App\\Farm', 228, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"peas\",\"block_id\":\"27\",\"farmer_id\":232,\"id\":228}', 'http://www.homevegfarmers.co.tz/farmers/232/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:19:59', '2018-08-15 14:19:59'),
(1274, 'App\\User', 6, 'created', 'App\\Address', 500, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":228,\"addressable_type\":\"App\\\\Farm\",\"id\":500}', 'http://www.homevegfarmers.co.tz/farmers/232/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:19:59', '2018-08-15 14:19:59'),
(1275, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 182, '[]', '{\"number\":\"11C10\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"228\",\"product_id\":\"1\",\"description\":\"Peas\",\"id\":182}', 'http://www.homevegfarmers.co.tz/farmers/232/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:20:38', '2018-08-15 14:20:38'),
(1276, 'App\\User', 6, 'created', 'App\\Farmer', 233, '[]', '{\"first_name\":\"Julius\",\"last_name\":\"Barua\",\"phone\":\"0716782880\",\"email\":null,\"gender\":\"male\",\"creator_id\":6,\"id\":233}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:21:51', '2018-08-15 14:21:51'),
(1277, 'App\\User', 6, 'created', 'App\\Address', 501, '[]', '{\"street\":\"556 Bungu\",\"address\":\"Korogwe\",\"state\":\"Tanga\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":233,\"addressable_type\":\"App\\\\Farmer\",\"id\":501}', 'http://www.homevegfarmers.co.tz/farmers?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:21:51', '2018-08-15 14:21:51'),
(1278, 'App\\User', 6, 'created', 'App\\Farm', 229, '[]', '{\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"description\":\"Fine beans\",\"block_id\":\"27\",\"farmer_id\":233,\"id\":229}', 'http://www.homevegfarmers.co.tz/farmers/233/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:22:37', '2018-08-15 14:22:37'),
(1279, 'App\\User', 6, 'created', 'App\\Address', 502, '[]', '{\"country\":\"Tanzania\",\"state\":\"Tanga\",\"addressable_id\":229,\"addressable_type\":\"App\\\\Farm\",\"id\":502}', 'http://www.homevegfarmers.co.tz/farmers/233/farms?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:22:37', '2018-08-15 14:22:37'),
(1280, 'App\\User', 6, 'created', 'App\\HouseholdBlock', 183, '[]', '{\"number\":\"11C7\",\"size\":\"0.04\",\"size_unit\":\"Hectare\",\"farm_id\":\"229\",\"product_id\":\"3\",\"description\":\"Fine beans\",\"id\":183}', 'http://www.homevegfarmers.co.tz/farmers/233/household_blocks?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:23:20', '2018-08-15 14:23:20'),
(1281, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"remember_token\":\"w5zGQsvDFrSsONqy371x7lvRsawVNWT7ugQLKIMIbubp1wWYZscijhmfnF3d\"}', '{\"remember_token\":\"CKkot79tWH4EEUa4dz1yy0pj8Sl87E9HfqZclyjgDtKIPqu1QGgD7unRSH6P\"}', 'http://www.homevegfarmers.co.tz/logout?', '41.59.81.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-15 14:24:00', '2018-08-15 14:24:00'),
(1282, 'App\\User', 12, 'created', 'App\\Farmer', 234, '[]', '{\"first_name\":\"Test\",\"last_name\":\"Test\",\"phone\":\"0754977618\",\"email\":\"pangdeny@gmail.com\",\"gender\":\"male\",\"creator_id\":12,\"id\":234}', 'http://test.homevegfarmers.co.tz/farmers?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-16 16:08:51', '2018-08-16 16:08:51'),
(1283, 'App\\User', 12, 'created', 'App\\Address', 503, '[]', '{\"street\":\"Kichangani St.\",\"address\":\"po box Mosho 1111\",\"state\":\"Kusini Pemba\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":234,\"addressable_type\":\"App\\\\Farmer\",\"id\":503}', 'http://test.homevegfarmers.co.tz/farmers?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-16 16:08:51', '2018-08-16 16:08:51'),
(1284, 'App\\User', 12, 'created', 'App\\Batch', 0, '[]', '{\"number\":\"OEHI-398\",\"valid_from\":\"2018-08-16 00:00:00\",\"valid_till\":\"2018-08-17 00:00:00\",\"description\":\"sometthinf\",\"max_count\":\"10\",\"block_id\":\"13\",\"group_id\":\"4\",\"expected_arrival_time\":\"2018-08-16 00:00:00\",\"expected_arrival_temperature\":\"30\",\"expected_delivery_time\":\"2018-08-25 00:00:00\",\"expected_departure_time\":\"2018-08-25 00:00:00\",\"expected_harvest_time\":\"2018-08-25 00:00:00\",\"id\":0}', 'http://test.homevegfarmers.co.tz/settings/batches?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-16 16:30:22', '2018-08-16 16:30:22'),
(1285, 'App\\User', 12, 'created', 'App\\Batch', 0, '[]', '{\"number\":\"JEJF-288\",\"valid_from\":\"2018-08-16 00:00:00\",\"valid_till\":\"2018-08-24 00:00:00\",\"description\":\"ssdsa\",\"max_count\":\"10\",\"block_id\":\"14\",\"group_id\":\"2\",\"expected_arrival_time\":\"2018-08-17 00:00:00\",\"expected_arrival_temperature\":\"30\",\"expected_delivery_time\":\"2018-08-31 00:00:00\",\"expected_departure_time\":\"2018-08-25 00:00:00\",\"expected_harvest_time\":\"2018-08-18 00:00:00\",\"id\":0}', 'http://test.homevegfarmers.co.tz/settings/batches?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-16 16:32:10', '2018-08-16 16:32:10'),
(1286, 'App\\User', 12, 'created', 'App\\Batch', 0, '[]', '{\"number\":\"JEJF-288\",\"valid_from\":\"2018-08-16 00:00:00\",\"valid_till\":\"2018-08-24 00:00:00\",\"description\":\"ssdsa\",\"max_count\":\"10\",\"block_id\":\"14\",\"group_id\":\"2\",\"expected_arrival_time\":\"2018-08-17 00:00:00\",\"expected_arrival_temperature\":\"30\",\"expected_delivery_time\":\"2018-08-31 00:00:00\",\"expected_departure_time\":\"2018-08-25 00:00:00\",\"expected_harvest_time\":\"2018-08-18 00:00:00\",\"id\":0}', 'http://test.homevegfarmers.co.tz/settings/batches?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-16 16:32:10', '2018-08-16 16:32:10'),
(1287, 'App\\User', 12, 'updated', 'App\\User', 12, '{\"remember_token\":\"UEKjLMGZc8kR5mMS4ET58WhNtD4Qdv0sksn2IgwBj7SSDMqxfbplDtVTdF9B\"}', '{\"remember_token\":\"bx43eZ7QzSrWGXIzyfiRvjbbPC5RuBsLFrvfVNJuTJohgu5BsRj66VwpakU0\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-21 20:27:44', '2018-08-21 20:27:44'),
(1288, 'App\\User', 3, 'created', 'App\\Batch', 0, '[]', '{\"number\":\"JKTR-092\",\"valid_from\":\"2018-08-24 00:00:00\",\"valid_till\":\"2018-09-03 00:00:00\",\"description\":\"Green Beans\",\"max_count\":\"10\",\"block_id\":\"3\",\"group_id\":\"3\",\"expected_arrival_time\":\"2018-08-29 00:00:00\",\"expected_arrival_temperature\":\"05\",\"expected_delivery_time\":\"2018-09-03 00:00:00\",\"expected_departure_time\":\"2018-09-01 00:00:00\",\"expected_harvest_time\":\"2018-08-24 00:00:00\",\"id\":0}', 'http://test.homevegfarmers.co.tz/settings/batches?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-24 18:56:07', '2018-08-24 18:56:07'),
(1289, 'App\\User', 3, 'created', 'App\\Harvest', 16, '[]', '{\"farmer_id\":\"8\",\"batch_id\":0,\"household_block_id\":\"9\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"25\",\"description\":\"\",\"id\":16}', 'http://test.homevegfarmers.co.tz/clusters/0/purchases?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-24 19:19:43', '2018-08-24 19:19:43'),
(1290, 'App\\User', 3, 'created', 'App\\Harvest', 17, '[]', '{\"farmer_id\":\"8\",\"batch_id\":0,\"household_block_id\":\"9\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"25\",\"description\":\"\",\"id\":17}', 'http://test.homevegfarmers.co.tz/clusters/0/purchases?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-24 19:20:27', '2018-08-24 19:20:27'),
(1291, 'App\\User', 3, 'created', 'App\\Harvest', 18, '[]', '{\"farmer_id\":\"20\",\"batch_id\":0,\"household_block_id\":\"21\",\"expected_date\":\"2018-08-30 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"45\",\"description\":\"\",\"id\":18}', 'http://test.homevegfarmers.co.tz/clusters/0/purchases?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-24 19:36:13', '2018-08-24 19:36:13'),
(1292, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":null}', '{\"remember_token\":\"MW9yV9zpIYG8y5VrlH8DkZUy1kT2tx9ZUCHy5ODvHAgxvY1b7LwJdjcslRS9\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-24 19:38:09', '2018-08-24 19:38:09'),
(1293, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":\"MW9yV9zpIYG8y5VrlH8DkZUy1kT2tx9ZUCHy5ODvHAgxvY1b7LwJdjcslRS9\"}', '{\"remember_token\":\"lOmJwj1zKTlcwjCGAPKbQY8pHwUI107rv6Cxv12MymO1QmXABZCZAe31qSY0\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-27 17:51:56', '2018-08-27 17:51:56'),
(1294, 'App\\User', 12, 'created', 'App\\Farm', 230, '[]', '{\"size\":\"0.3\",\"size_unit\":\"Hectare\",\"description\":\"te\",\"block_id\":\"1\",\"farmer_id\":234,\"id\":230}', 'http://test.homevegfarmers.co.tz/farmers/234/farms?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-27 19:13:18', '2018-08-27 19:13:18'),
(1295, 'App\\User', 12, 'created', 'App\\Address', 504, '[]', '{\"country\":\"Tanzania\",\"state\":\"Mbeya\",\"addressable_id\":230,\"addressable_type\":\"App\\\\Farm\",\"id\":504}', 'http://test.homevegfarmers.co.tz/farmers/234/farms?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-27 19:13:18', '2018-08-27 19:13:18'),
(1296, 'App\\User', 12, 'created', 'App\\HouseholdBlock', 184, '[]', '{\"number\":\"Block 1\",\"size\":\"0.3\",\"size_unit\":\"Hectare\",\"farm_id\":\"230\",\"product_id\":\"1\",\"description\":\"fr\",\"id\":184}', 'http://test.homevegfarmers.co.tz/farmers/234/household_blocks?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-27 19:13:53', '2018-08-27 19:13:53'),
(1297, 'App\\User', 3, 'created', 'App\\Batch', 5, '[]', '{\"number\":\"RAY-056\",\"valid_from\":\"2018-08-28 00:00:00\",\"valid_till\":\"2018-08-30 00:00:00\",\"description\":\"Green Beans\",\"max_count\":\"5\",\"block_id\":\"7\",\"group_id\":\"3\",\"expected_arrival_time\":\"2018-08-29 00:00:00\",\"expected_arrival_temperature\":\"15\",\"expected_delivery_time\":\"2018-09-02 00:00:00\",\"expected_departure_time\":\"2018-09-02 00:00:00\",\"expected_harvest_time\":\"2018-08-29 00:00:00\",\"id\":5}', 'http://test.homevegfarmers.co.tz/settings/batches?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-27 20:49:18', '2018-08-27 20:49:18'),
(1298, 'App\\User', 3, 'created', 'App\\Harvest', 19, '[]', '{\"farmer_id\":\"13\",\"batch_id\":5,\"household_block_id\":\"13\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"250\",\"description\":\"\",\"id\":19}', 'http://test.homevegfarmers.co.tz/clusters/5/purchases?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-27 21:00:26', '2018-08-27 21:00:26'),
(1299, 'App\\User', 3, 'created', 'App\\Harvest', 20, '[]', '{\"farmer_id\":\"136\",\"batch_id\":5,\"household_block_id\":\"137\",\"expected_date\":null,\"amount_unit\":\"kg\",\"expected_amount\":\"345\",\"description\":\"\",\"id\":20}', 'http://test.homevegfarmers.co.tz/clusters/5/purchases?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-27 22:17:21', '2018-08-27 22:17:21'),
(1300, 'App\\User', 3, 'created', 'App\\Harvest', 21, '[]', '{\"farmer_id\":\"13\",\"batch_id\":5,\"household_block_id\":\"13\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"25\",\"description\":\"\",\"id\":21}', 'http://test.homevegfarmers.co.tz/clusters/5/purchases?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-27 23:09:04', '2018-08-27 23:09:04'),
(1301, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":\"lOmJwj1zKTlcwjCGAPKbQY8pHwUI107rv6Cxv12MymO1QmXABZCZAe31qSY0\"}', '{\"remember_token\":\"rYxut637fYlp9HnZATaLEWwWbiaeImCGqIU6YaBEgVvrIx8N45mxQ3gZyAJq\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.222.57.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-27 23:47:48', '2018-08-27 23:47:48'),
(1302, 'App\\User', 12, 'updated', 'App\\Farm', 230, '{\"block_id\":1}', '{\"block_id\":\"14\"}', 'http://test.homevegfarmers.co.tz/farmers/230/farms/update?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 13:21:31', '2018-08-28 13:21:31'),
(1303, 'App\\User', 12, 'created', 'App\\Farm', 231, '[]', '{\"size\":\"0.9\",\"size_unit\":\"Hectare\",\"description\":\"ggg\",\"block_id\":\"19\",\"farmer_id\":220,\"id\":231}', 'http://test.homevegfarmers.co.tz/farmers/220/farms?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 13:25:51', '2018-08-28 13:25:51'),
(1304, 'App\\User', 12, 'created', 'App\\Address', 505, '[]', '{\"country\":\"Tanzania\",\"state\":\"Morogoro\",\"addressable_id\":231,\"addressable_type\":\"App\\\\Farm\",\"id\":505}', 'http://test.homevegfarmers.co.tz/farmers/220/farms?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 13:25:51', '2018-08-28 13:25:51'),
(1305, 'App\\User', 3, 'created', 'App\\User', 15, '[]', '{\"first_name\":\"Winifrida\",\"last_name\":\"Ndamugoba\",\"email\":\"boney.neema@gmail.com\",\"phone\":\"0759266551\",\"country\":\"Tanzania\",\"gender\":\"female\",\"birthday\":\"1981-03-11\",\"password\":\"$2y$10$B\\/sSXXGUZY6Ch6cStz7KPu.Zk6aEHHrfXWUj00TgS5mLqFobFcQmW\",\"creator_id\":3,\"id\":15}', 'http://test.homevegfarmers.co.tz/settings/users?', '156.157.24.40', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 17:26:42', '2018-08-28 17:26:42'),
(1306, 'App\\User', 3, 'created', 'App\\Address', 506, '[]', '{\"street\":\"Moshono\",\"address\":\"Moshono\",\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":15,\"addressable_type\":\"App\\\\User\",\"id\":506}', 'http://test.homevegfarmers.co.tz/settings/users?', '156.157.24.40', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 17:26:42', '2018-08-28 17:26:42'),
(1307, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":\"rYxut637fYlp9HnZATaLEWwWbiaeImCGqIU6YaBEgVvrIx8N45mxQ3gZyAJq\"}', '{\"remember_token\":\"PjDXuNS8GCx0lPxPL1LwmZ66Y3HrnkEG1siiaTLlwlADyc2xxBLGbgj0p4kq\"}', 'http://test.homevegfarmers.co.tz/logout?', '156.157.24.40', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 17:30:09', '2018-08-28 17:30:09'),
(1308, 'App\\User', 12, 'created', 'App\\User', 16, '[]', '{\"first_name\":\"Halima\",\"last_name\":\"Mwenda\",\"email\":\"halimamwenda320@gmail.com\",\"phone\":\"07999999\",\"country\":\"Tanzania\",\"gender\":\"female\",\"birthday\":\"2018-07-29\",\"password\":\"$2y$10$qYFV3lE8QhHA3\\/TYHUXxj.4Yp0NztGmZIuu.a8sTFPaogMueCzHNi\",\"creator_id\":12,\"id\":16}', 'http://test.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 17:44:11', '2018-08-28 17:44:11'),
(1309, 'App\\User', 12, 'created', 'App\\Address', 507, '[]', '{\"street\":\"Arusha\",\"address\":\"\",\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":\"244\",\"addressable_id\":16,\"addressable_type\":\"App\\\\User\",\"id\":507}', 'http://test.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 17:44:11', '2018-08-28 17:44:11'),
(1310, 'App\\User', 12, 'created', 'App\\User', 17, '[]', '{\"first_name\":\"Flora\",\"last_name\":\"Wado\",\"email\":\"flofilowado@gmail.com\",\"phone\":\"0988766555\",\"country\":\"Tanzania\",\"gender\":\"female\",\"birthday\":\"2018-07-29\",\"password\":\"$2y$10$9Zobu3OP2BwYO0TQFdEkvev1ehVyxIIyci0yrjtJKum90c3Xw3GKW\",\"creator_id\":12,\"id\":17}', 'http://test.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 17:45:56', '2018-08-28 17:45:56'),
(1311, 'App\\User', 12, 'created', 'App\\Address', 508, '[]', '{\"street\":\"Arusha\",\"address\":\"\",\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":17,\"addressable_type\":\"App\\\\User\",\"id\":508}', 'http://test.homevegfarmers.co.tz/settings/users?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 17:45:56', '2018-08-28 17:45:56'),
(1312, 'App\\User', 3, 'created', 'App\\Batch', 6, '[]', '{\"number\":\"FWH-123\",\"valid_from\":\"2018-08-28 00:00:00\",\"valid_till\":\"2018-08-29 00:00:00\",\"description\":\"Green beans\",\"max_count\":\"3\",\"block_id\":\"2\",\"group_id\":\"2\",\"expected_arrival_time\":\"2018-08-31 00:00:00\",\"expected_arrival_temperature\":\"16\",\"expected_delivery_time\":\"2018-08-31 00:00:00\",\"expected_departure_time\":\"2018-08-31 00:00:00\",\"expected_harvest_time\":\"2018-08-28 00:00:00\",\"id\":6}', 'http://test.homevegfarmers.co.tz/settings/batches?', '156.157.24.40', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 17:51:40', '2018-08-28 17:51:40'),
(1313, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":\"PjDXuNS8GCx0lPxPL1LwmZ66Y3HrnkEG1siiaTLlwlADyc2xxBLGbgj0p4kq\"}', '{\"remember_token\":\"UDwHPo2VDxcahpAgvArDaFREVCPhpyfXtyGG4xiVNQyq5g95KKe6TDyiZzOs\"}', 'http://test.homevegfarmers.co.tz/logout?', '156.157.24.40', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 18:03:28', '2018-08-28 18:03:28'),
(1314, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"remember_token\":null}', '{\"remember_token\":\"tRHjZUgo5MutN4r058fjGZKKQnfQVjn6eAjBnuMj9hu8wDOcmCEx62RDz3sw\"}', 'http://test.homevegfarmers.co.tz/logout?', '156.157.24.40', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 18:09:52', '2018-08-28 18:09:52'),
(1315, 'App\\User', 3, 'created', 'App\\Batch', 7, '[]', '{\"number\":\"FWH-123\",\"valid_from\":\"2018-08-28 00:00:00\",\"valid_till\":\"2018-08-29 00:00:00\",\"description\":\"Green Beans\",\"max_count\":\"3\",\"block_id\":\"2\",\"group_id\":\"2\",\"expected_arrival_time\":\"2018-08-31 00:00:00\",\"expected_arrival_temperature\":\"16\",\"expected_delivery_time\":\"2018-08-31 00:00:00\",\"expected_departure_time\":\"2018-08-31 00:00:00\",\"expected_harvest_time\":\"2018-08-28 00:00:00\",\"id\":7}', 'http://test.homevegfarmers.co.tz/settings/batches?', '156.157.24.40', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 18:15:18', '2018-08-28 18:15:18'),
(1316, 'App\\User', 3, 'deleted', 'App\\Batch', 6, '{\"id\":6,\"number\":\"FWH-123\",\"max_count\":3,\"valid_from\":\"2018-08-28 00:00:00\",\"valid_till\":\"2018-08-29 00:00:00\",\"block_id\":2,\"group_id\":2,\"expected_arrival_time\":\"2018-08-31 00:00:00\",\"expected_arrival_temperature\":\"16\",\"expected_harvest_time\":\"2018-08-28 00:00:00\",\"expected_delivery_time\":\"2018-08-31 00:00:00\",\"expected_departure_time\":\"2018-08-31 00:00:00\",\"status\":\"open\",\"description\":\"Green beans\"}', '[]', 'http://test.homevegfarmers.co.tz/settings/batches/6?', '156.157.24.40', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 18:15:38', '2018-08-28 18:15:38'),
(1317, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":\"UDwHPo2VDxcahpAgvArDaFREVCPhpyfXtyGG4xiVNQyq5g95KKe6TDyiZzOs\"}', '{\"remember_token\":\"nGTnn1QWwiuV3F0qEAst3vt6Vrt18dYX91jrjXPqNX0lb17DjV0zWrNLmwgu\"}', 'http://test.homevegfarmers.co.tz/logout?', '156.157.24.40', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 18:19:02', '2018-08-28 18:19:02'),
(1318, 'App\\User', 12, 'created', 'App\\Harvest', 22, '[]', '{\"farmer_id\":\"7\",\"batch_id\":7,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-01 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"89\",\"description\":\"\",\"id\":22}', 'http://test.homevegfarmers.co.tz/clusters/7/purchases?', '41.75.223.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 19:24:57', '2018-08-28 19:24:57'),
(1319, 'App\\User', 12, 'updated', 'App\\User', 12, '{\"remember_token\":\"bx43eZ7QzSrWGXIzyfiRvjbbPC5RuBsLFrvfVNJuTJohgu5BsRj66VwpakU0\"}', '{\"remember_token\":\"k8DUdDPYctv6K98Nragci8SErmso88adeFG3vGn0aG2bvz5ygr6y4Wchbfah\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.223.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 19:26:10', '2018-08-28 19:26:10');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1320, 'App\\User', 12, 'created', 'App\\Harvest', 23, '[]', '{\"farmer_id\":\"7\",\"batch_id\":7,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-28 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"89\",\"description\":\"\",\"id\":23}', 'http://test.homevegfarmers.co.tz/clusters/7/purchases?', '41.75.223.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-28 19:26:49', '2018-08-28 19:26:49'),
(1321, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":\"nGTnn1QWwiuV3F0qEAst3vt6Vrt18dYX91jrjXPqNX0lb17DjV0zWrNLmwgu\"}', '{\"remember_token\":\"8fV1mbwx9oC7jta1O6cH75tj6uZlwbP4u0Amn0YoBMAFfbmKpBb8ly9u3Gep\"}', 'http://test.homevegfarmers.co.tz/logout?', '156.159.146.97', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 19:57:52', '2018-08-28 19:57:52'),
(1322, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"remember_token\":\"tRHjZUgo5MutN4r058fjGZKKQnfQVjn6eAjBnuMj9hu8wDOcmCEx62RDz3sw\"}', '{\"remember_token\":\"MVHy1YVBv7G0t5N1qDQgntjcgRq2HBXiXVdOjb9lWrzHvuavHVIEeGPX0Hlq\"}', 'http://test.homevegfarmers.co.tz/logout?', '156.159.146.97', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 19:59:26', '2018-08-28 19:59:26'),
(1323, 'App\\User', 3, 'deleted', 'App\\Batch', 7, '{\"id\":7,\"number\":\"FWH-123\",\"max_count\":3,\"valid_from\":\"2018-08-28 00:00:00\",\"valid_till\":\"2018-08-29 00:00:00\",\"block_id\":2,\"group_id\":2,\"expected_arrival_time\":\"2018-08-31 00:00:00\",\"expected_arrival_temperature\":\"16\",\"expected_harvest_time\":\"2018-08-28 00:00:00\",\"expected_delivery_time\":\"2018-08-31 00:00:00\",\"expected_departure_time\":\"2018-08-31 00:00:00\",\"status\":\"open\",\"description\":\"Green Beans\"}', '[]', 'http://test.homevegfarmers.co.tz/settings/batches/7?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:24:50', '2018-08-28 20:24:50'),
(1324, 'App\\User', 3, 'created', 'App\\Batch', 8, '[]', '{\"number\":\"HFW-123\",\"valid_from\":\"2018-08-28 00:00:00\",\"valid_till\":\"2018-08-29 00:00:00\",\"description\":\"GREEN BEANS\",\"max_count\":\"3\",\"block_id\":\"2\",\"group_id\":\"1\",\"expected_arrival_time\":\"2018-08-29 00:00:00\",\"expected_arrival_temperature\":\"16\",\"expected_delivery_time\":\"2018-08-31 00:00:00\",\"expected_departure_time\":\"2018-08-31 00:00:00\",\"expected_harvest_time\":\"2018-08-29 00:00:00\",\"id\":8}', 'http://test.homevegfarmers.co.tz/settings/batches?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:26:50', '2018-08-28 20:26:50'),
(1325, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":\"8fV1mbwx9oC7jta1O6cH75tj6uZlwbP4u0Amn0YoBMAFfbmKpBb8ly9u3Gep\"}', '{\"remember_token\":\"GBKBuBbOtI73aBHFQSnskTdZ24y692BZMy0k6554fiFpxqDlZAzqv8cwL3S8\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:29:47', '2018-08-28 20:29:47'),
(1326, 'App\\User', 17, 'updated', 'App\\User', 17, '{\"remember_token\":null}', '{\"remember_token\":\"y3JcDZrvyyMcqbysROI2xQgV1S4k3dGNYdWAml2jeS2IGLS7CdE4reC8lTrF\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:30:58', '2018-08-28 20:30:58'),
(1327, 'App\\User', 3, 'created', 'App\\Harvest', 24, '[]', '{\"farmer_id\":\"7\",\"batch_id\":8,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-28 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"50\",\"description\":\"\",\"id\":24}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:32:22', '2018-08-28 20:32:22'),
(1328, 'App\\User', 3, 'created', 'App\\Harvest', 25, '[]', '{\"farmer_id\":\"7\",\"batch_id\":8,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"60\",\"description\":\"\",\"id\":25}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:34:03', '2018-08-28 20:34:03'),
(1329, 'App\\User', 3, 'created', 'App\\Harvest', 26, '[]', '{\"farmer_id\":\"7\",\"batch_id\":8,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"60\",\"description\":\"\",\"id\":26}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:34:50', '2018-08-28 20:34:50'),
(1330, 'App\\User', 3, 'created', 'App\\Harvest', 27, '[]', '{\"farmer_id\":\"8\",\"batch_id\":8,\"household_block_id\":\"9\",\"expected_date\":\"2018-08-28 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"35\",\"description\":\"\",\"id\":27}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:35:52', '2018-08-28 20:35:52'),
(1331, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":\"GBKBuBbOtI73aBHFQSnskTdZ24y692BZMy0k6554fiFpxqDlZAzqv8cwL3S8\"}', '{\"remember_token\":\"555PdJxNoCoFHuc7YRkzKMwz2auG2S9qtrSrPt6otqa26fIYPJXt8dAJe6yl\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:36:29', '2018-08-28 20:36:29'),
(1332, 'App\\User', 17, 'updated', 'App\\User', 17, '{\"password\":\"$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36\"}', '{\"password\":\"$2y$10$guTCrvfPy.CC4rHBZ7n8lOkJNLRKHYc4f5mgxPmJH.6GptIaw21xm\"}', 'http://test.homevegfarmers.co.tz/changepassword/17?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:38:07', '2018-08-28 20:38:07'),
(1333, 'App\\User', 17, 'updated', 'App\\User', 17, '{\"remember_token\":\"y3JcDZrvyyMcqbysROI2xQgV1S4k3dGNYdWAml2jeS2IGLS7CdE4reC8lTrF\"}', '{\"remember_token\":\"g6sP8JH2T3OjEQrigSYi63jJ3j47EijKRMxb1toI7dNthRAQdyuG3wz2FxUh\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:38:16', '2018-08-28 20:38:16'),
(1334, 'App\\User', 17, 'updated', 'App\\User', 17, '{\"remember_token\":\"g6sP8JH2T3OjEQrigSYi63jJ3j47EijKRMxb1toI7dNthRAQdyuG3wz2FxUh\"}', '{\"remember_token\":\"nCbDF9fEdiEVo8rFDqandDHJ7UNYtp6SlQORw37GnpYbUyBLZ4vChzVvbUAZ\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:39:06', '2018-08-28 20:39:06'),
(1335, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"password\":\"$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36\"}', '{\"password\":\"$2y$10$ZrPVyve.KO1eFqWYpLT9ruK.mk7dV9zeVTFQNNbLMij5JeKomsmTW\"}', 'http://test.homevegfarmers.co.tz/changepassword/15?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:42:22', '2018-08-28 20:42:22'),
(1336, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"remember_token\":\"MVHy1YVBv7G0t5N1qDQgntjcgRq2HBXiXVdOjb9lWrzHvuavHVIEeGPX0Hlq\"}', '{\"remember_token\":\"jkJhpqP0bomD9b3YPQeAfEudrGyv7qGtHqdSYShwG4z1rKOQ6V3sUauSoz60\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:42:31', '2018-08-28 20:42:31'),
(1337, 'App\\User', 15, 'updated', 'App\\User', 15, '{\"remember_token\":\"jkJhpqP0bomD9b3YPQeAfEudrGyv7qGtHqdSYShwG4z1rKOQ6V3sUauSoz60\"}', '{\"remember_token\":\"BtxuHAqdDZfrz9v5n4iseG52MuK0Bfgq9SMYq7xVlNmChrA4boaM77C4zkVH\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:43:26', '2018-08-28 20:43:26'),
(1338, 'App\\User', 16, 'updated', 'App\\User', 16, '{\"password\":\"$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36\"}', '{\"password\":\"$2y$10$j3CUB31tmmsoIoklJmnE.eOYnsxAqkJtaMNLQkPg5HDbqTiI0.PZ6\"}', 'http://test.homevegfarmers.co.tz/changepassword/16?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:47:59', '2018-08-28 20:47:59'),
(1339, 'App\\User', 16, 'updated', 'App\\User', 16, '{\"remember_token\":null}', '{\"remember_token\":\"YacyJUIeOBkr9G189cvYZy2Q3cQ0n31KUIotP6rkHLD6e06Wlxm6nsHkvAaz\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:48:21', '2018-08-28 20:48:21'),
(1340, 'App\\User', 16, 'updated', 'App\\User', 16, '{\"remember_token\":\"YacyJUIeOBkr9G189cvYZy2Q3cQ0n31KUIotP6rkHLD6e06Wlxm6nsHkvAaz\"}', '{\"remember_token\":\"KGgOFOJKznCCew0wFYejB4V3sKC6hxPBbELCJwDhEvhDI7WxNlSTWSswuEt4\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:50:15', '2018-08-28 20:50:15'),
(1341, 'App\\User', 3, 'updated', 'App\\Batch', 8, '{\"group_id\":1}', '{\"group_id\":\"4\"}', 'http://test.homevegfarmers.co.tz/settings/batches/8?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 20:57:08', '2018-08-28 20:57:08'),
(1342, 'App\\User', 3, 'created', 'App\\Harvest', 28, '[]', '{\"farmer_id\":\"7\",\"batch_id\":8,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"50\",\"description\":\"\",\"id\":28}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 21:01:31', '2018-08-28 21:01:31'),
(1343, 'App\\User', 3, 'created', 'App\\Harvest', 29, '[]', '{\"farmer_id\":\"7\",\"batch_id\":8,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"40\",\"description\":\"\",\"id\":29}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 21:03:23', '2018-08-28 21:03:23'),
(1344, 'App\\User', 3, 'created', 'App\\Harvest', 30, '[]', '{\"farmer_id\":\"7\",\"batch_id\":8,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"40\",\"description\":\"\",\"id\":30}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 21:04:09', '2018-08-28 21:04:09'),
(1345, 'App\\User', 3, 'created', 'App\\Harvest', 31, '[]', '{\"farmer_id\":\"8\",\"batch_id\":8,\"household_block_id\":\"9\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"25\",\"description\":\"\",\"id\":31}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 21:06:20', '2018-08-28 21:06:20'),
(1346, 'App\\User', 3, 'created', 'App\\Harvest', 32, '[]', '{\"farmer_id\":\"8\",\"batch_id\":8,\"household_block_id\":\"9\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"25\",\"description\":\"\",\"id\":32}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 21:12:29', '2018-08-28 21:12:29'),
(1347, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"remember_token\":\"555PdJxNoCoFHuc7YRkzKMwz2auG2S9qtrSrPt6otqa26fIYPJXt8dAJe6yl\"}', '{\"remember_token\":\"LouYZsHBdlCqNq0EMYls5NTgjPE6lEwYUy8DLi7Rp82bBuxiTGUGyCbB8cb4\"}', 'http://test.homevegfarmers.co.tz/logout?', '41.75.220.204', 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0', NULL, '2018-08-28 21:17:31', '2018-08-28 21:17:31'),
(1348, 'App\\User', 12, 'created', 'App\\Harvest', 33, '[]', '{\"farmer_id\":\"7\",\"batch_id\":8,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"30\",\"description\":\"\",\"id\":33}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '41.221.61.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 13:18:41', '2018-08-29 13:18:41'),
(1349, 'App\\User', 12, 'created', 'App\\Harvest', 34, '[]', '{\"farmer_id\":\"7\",\"batch_id\":8,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-29 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"30\",\"description\":\"\",\"id\":34}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '197.250.229.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 13:41:02', '2018-08-29 13:41:02'),
(1350, 'App\\User', 12, 'created', 'App\\Purchase', 1, '[]', '{\"delivery_note_id\":12,\"product_id\":1,\"harvest_id\":34,\"farmer_id\":7,\"block_id\":8,\"batch_id\":8,\"crates_count\":\"2\",\"weight_unit\":\"kg\",\"field_weight\":\"30\",\"creator_id\":12,\"id\":1}', 'http://test.homevegfarmers.co.tz/clusters/8/purchases?', '197.250.229.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 13:41:02', '2018-08-29 13:41:02'),
(1351, 'App\\User', 1, 'updated', 'App\\Purchase', 1, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"30\",\"status\":\"packed\"}', 'http://127.0.0.1:8000/purchases/1/packing_house_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 07:05:42', '2018-08-29 07:05:42'),
(1352, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"YQYrpBB58CQl6xZ0lnpei8k7rAd6GP8xXIskfHjNxdYQ0z6B1JvmmaYYNv0U\"}', '{\"remember_token\":\"aGQvY7VCkQbssgK79QX55UikzC9U2WQveElEe9itD8R2qQCPN9Rhzfnh2hET\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 07:56:59', '2018-08-29 07:56:59'),
(1353, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"aGQvY7VCkQbssgK79QX55UikzC9U2WQveElEe9itD8R2qQCPN9Rhzfnh2hET\"}', '{\"remember_token\":\"eyfAGGoIKCENEebG6Knd0ZyT6jrNWrRomTf982tkfryyYTVR0U9xfrX2WfI3\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 08:35:03', '2018-08-29 08:35:03'),
(1354, 'App\\User', 12, 'updated', 'App\\User', 12, '{\"remember_token\":\"k8DUdDPYctv6K98Nragci8SErmso88adeFG3vGn0aG2bvz5ygr6y4Wchbfah\"}', '{\"remember_token\":\"CKZlws0OpEvKVLr9EqfqxjFKh9LOudWrJKDlwLTJGtJy6oFYbKX8VbU3Wk70\"}', 'http://localhost/farmers/public/logout?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36 OPR/55.0.2994.44', NULL, '2018-08-29 08:37:10', '2018-08-29 08:37:10'),
(1355, 'App\\User', 12, 'created', 'App\\Role', 4, '[]', '{\"name\":\"Farm Group officers\",\"title\":\"Farm group officers\",\"description\":\"Officers from farm group\",\"id\":4}', 'http://127.0.0.1:8000/settings/roles?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36 OPR/55.0.2994.44', NULL, '2018-08-29 08:39:50', '2018-08-29 08:39:50'),
(1356, 'App\\User', 6, 'created', 'App\\Harvest', 35, '[]', '{\"farmer_id\":\"7\",\"batch_id\":8,\"household_block_id\":\"8\",\"expected_date\":\"2018-08-01 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"89\",\"description\":\"\",\"id\":35}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 08:41:11', '2018-08-29 08:41:11'),
(1357, 'App\\User', 6, 'created', 'App\\Purchase', 2, '[]', '{\"delivery_note_id\":12,\"product_id\":1,\"harvest_id\":35,\"farmer_id\":7,\"block_id\":8,\"batch_id\":8,\"crates_count\":\"1\",\"weight_unit\":\"kg\",\"field_weight\":\"89\",\"creator_id\":6,\"id\":2}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 08:41:12', '2018-08-29 08:41:12'),
(1358, 'App\\User', 6, 'updated', 'App\\User', 6, '{\"remember_token\":\"CKkot79tWH4EEUa4dz1yy0pj8Sl87E9HfqZclyjgDtKIPqu1QGgD7unRSH6P\"}', '{\"remember_token\":\"FmTo1S7Po3jkx4bgVX4tXrmjrznqV3r7cJDgsGgIfkbH0UzlUNhzplCgAbU2\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 08:41:54', '2018-08-29 08:41:54'),
(1359, 'App\\User', 12, 'created', 'App\\Role', 5, '[]', '{\"name\":\"Pack House Officers\",\"title\":\"Pack house officers\",\"description\":\"Officers form Pack house\",\"id\":5}', 'http://127.0.0.1:8000/settings/roles?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36 OPR/55.0.2994.44', NULL, '2018-08-29 08:45:14', '2018-08-29 08:45:14'),
(1360, 'App\\User', 12, 'created', 'App\\User', 18, '[]', '{\"first_name\":\"Pack\",\"last_name\":\"Officer\",\"email\":\"pack@officer.com\",\"phone\":\"0754997619\",\"country\":\"Tanzania\",\"gender\":\"male\",\"birthday\":\"2018-08-20\",\"password\":\"$2y$10$tRcXwKAOWkiLWZGR.FJRkOMPvCw9kCuCjHgHc1g8pI\\/nD8wCIzZcm\",\"creator_id\":12,\"id\":18}', 'http://127.0.0.1:8000/settings/users?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36 OPR/55.0.2994.44', NULL, '2018-08-29 08:46:21', '2018-08-29 08:46:21'),
(1361, 'App\\User', 12, 'created', 'App\\Address', 509, '[]', '{\"street\":\"lukoveg\",\"address\":\"fdsfdsf\",\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":18,\"addressable_type\":\"App\\\\User\",\"id\":509}', 'http://127.0.0.1:8000/settings/users?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36 OPR/55.0.2994.44', NULL, '2018-08-29 08:46:22', '2018-08-29 08:46:22'),
(1362, 'App\\User', 16, 'updated', 'App\\User', 16, '{\"remember_token\":\"KGgOFOJKznCCew0wFYejB4V3sKC6hxPBbELCJwDhEvhDI7WxNlSTWSswuEt4\"}', '{\"remember_token\":\"lVY8Afx8Qur9BpGmnupNEmOgO8YLy8uf1JmxkCPCwd5s0Esm6tzRovQRF7Hw\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 08:47:40', '2018-08-29 08:47:40'),
(1363, 'App\\User', 12, 'created', 'App\\Role', 6, '[]', '{\"name\":\"New Pack house\",\"title\":\"New pack house\",\"description\":\"new pack house\",\"id\":6}', 'http://127.0.0.1:8000/settings/roles?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36 OPR/55.0.2994.44', NULL, '2018-08-29 08:55:31', '2018-08-29 08:55:31'),
(1364, 'App\\User', 12, 'created', 'App\\User', 19, '[]', '{\"first_name\":\"Vista\",\"last_name\":\"Vaos\",\"email\":\"vista@farmers.com\",\"phone\":\"0987564882\",\"country\":\"Tanzania\",\"gender\":\"female\",\"birthday\":\"2018-07-29\",\"password\":\"$2y$10$klzwpNuXY2Au\\/ayrqEAvrO3OYdugEslEw3Xjr0JYw4Bio6Y6RamNe\",\"creator_id\":12,\"id\":19}', 'http://127.0.0.1:8000/settings/users?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36 OPR/55.0.2994.44', NULL, '2018-08-29 08:56:20', '2018-08-29 08:56:20'),
(1365, 'App\\User', 12, 'created', 'App\\Address', 510, '[]', '{\"street\":\"Lushoto\",\"address\":\"fdsfdsf\",\"state\":\"Kigoma\",\"country\":\"Tanzania\",\"postal_code\":\"435\",\"addressable_id\":19,\"addressable_type\":\"App\\\\User\",\"id\":510}', 'http://127.0.0.1:8000/settings/users?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36 OPR/55.0.2994.44', NULL, '2018-08-29 08:56:20', '2018-08-29 08:56:20'),
(1366, 'App\\User', 18, 'updated', 'App\\User', 18, '{\"remember_token\":null}', '{\"remember_token\":\"DmasZQetAD0GZdZiVWxIsPbGCdLjYA1OvJZVWZWKjXhWGM6ybMt8ABpj6fqD\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-29 08:57:04', '2018-08-29 08:57:04'),
(1367, 'App\\User', 1, 'updated', 'App\\HouseholdBlock', 184, '{\"description\":\"fr\"}', '{\"description\":\"fr333\"}', 'http://127.0.0.1:8000/farmers/184/household_blocks/update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 14:04:33', '2018-08-31 14:04:33'),
(1368, 'App\\User', 1, 'updated', 'App\\HouseholdBlock', 184, '{\"size\":0.3,\"farm_id\":230,\"product_id\":1}', '{\"size\":\"0.35\",\"farm_id\":\"183\",\"product_id\":\"6\"}', 'http://127.0.0.1:8000/farmers/184/household_blocks/update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 14:11:58', '2018-08-31 14:11:58'),
(1369, 'App\\User', 1, 'created', 'App\\HouseholdBlock', 185, '[]', '{\"number\":\"Block 1 xx\",\"size\":\"0.9\",\"size_unit\":\"Hectare\",\"farm_id\":\"230\",\"product_id\":\"2\",\"description\":\"france test\",\"id\":185}', 'http://127.0.0.1:8000/farmers/234/household_blocks?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 14:14:51', '2018-08-31 14:14:51'),
(1370, 'App\\User', 1, 'updated', 'App\\HouseholdBlock', 185, '{\"farm_id\":230,\"product_id\":2,\"description\":\"france test\"}', '{\"farm_id\":\"184\",\"product_id\":\"8\",\"description\":\"france test rrelates\"}', 'http://127.0.0.1:8000/farmers/185/household_blocks/update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 14:15:57', '2018-08-31 14:15:57'),
(1371, 'App\\User', 1, 'updated', 'App\\HouseholdBlock', 185, '{\"number\":\"Block 1 xx\",\"size\":0.9,\"farm_id\":230,\"product_id\":8,\"description\":\"france test rrelates\"}', '{\"number\":\"Block 1 xxzzz\",\"size\":\"0.93\",\"farm_id\":\"184\",\"product_id\":\"7\",\"description\":\"france test rrelates erewr\"}', 'http://127.0.0.1:8000/farmers/185/household_blocks/update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 14:18:21', '2018-08-31 14:18:21'),
(1372, 'App\\User', 1, 'updated', 'App\\HouseholdBlock', 184, '{\"number\":\"Block 1\",\"size\":0.35,\"product_id\":6,\"description\":\"fr333\"}', '{\"number\":\"Block UUU\",\"size\":\"0.359\",\"product_id\":\"2\",\"description\":\"frenooooooooooooo\"}', 'http://127.0.0.1:8000/farmers/184/household_blocks/update?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 14:40:08', '2018-08-31 14:40:08'),
(1373, 'App\\User', 1, 'updated', 'App\\HouseholdBlock', 184, '{\"number\":\"Block UUU\",\"size\":0.359,\"description\":\"frenooooooooooooo\"}', '{\"number\":\"Block 1 New\",\"size\":\"3.359\",\"description\":\"freFriends of frienda\"}', 'http://127.0.0.1:8000/farmers/184/household_blocks/update/234?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 15:21:44', '2018-08-31 15:21:44'),
(1374, 'App\\User', 1, 'deleted', 'App\\HouseholdBlock', 184, '{\"id\":184,\"number\":\"Block 1 New\",\"size\":3.359,\"size_unit\":\"Hectare\",\"farm_id\":230,\"product_id\":2,\"description\":\"freFriends of frienda\",\"status\":\"active\"}', '[]', 'http://127.0.0.1:8000/farmers/184/household_blocks/destroy?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 15:59:53', '2018-08-31 15:59:53'),
(1375, 'App\\User', 1, 'created', 'App\\HouseholdBlock', 186, '[]', '{\"number\":\"Dennis111\",\"size\":\"3.35\",\"size_unit\":\"Hectare\",\"farm_id\":\"230\",\"description\":\"Dennis\",\"id\":186}', 'http://127.0.0.1:8000/farmers/234/household_blocks?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 16:07:32', '2018-08-31 16:07:32'),
(1376, 'App\\User', 1, 'created', 'App\\HouseholdBlock', 187, '[]', '{\"number\":\"Batch 2233\",\"size\":\"0.35\",\"size_unit\":\"Hectare\",\"farm_id\":\"230\",\"product_id\":\"4\",\"description\":\"sfdsafsf\",\"id\":187}', 'http://127.0.0.1:8000/farmers/234/household_blocks?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 16:10:00', '2018-08-31 16:10:00'),
(1377, 'App\\User', 1, 'updated', 'App\\HouseholdBlock', 187, '{\"number\":\"Batch 2233\",\"size\":0.35,\"product_id\":4,\"description\":\"sfdsafsf\"}', '{\"number\":\"Product 2233\",\"size\":\"7.35\",\"product_id\":\"7\",\"description\":\"Best edit ever\"}', 'http://127.0.0.1:8000/farmers/187/household_blocks/update/234?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 16:14:12', '2018-08-31 16:14:12'),
(1378, 'App\\User', 1, 'deleted', 'App\\HouseholdBlock', 186, '{\"id\":186,\"number\":\"Dennis111\",\"size\":3.35,\"size_unit\":\"Hectare\",\"farm_id\":230,\"product_id\":8,\"description\":\"Dennis\",\"status\":\"active\"}', '[]', 'http://127.0.0.1:8000/farmers/186/household_blocks/destroy?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 16:14:34', '2018-08-31 16:14:34'),
(1379, 'App\\User', 1, 'created', 'App\\Harvest', 36, '[]', '{\"farmer_id\":\"9\",\"batch_id\":8,\"household_block_id\":\"10\",\"expected_date\":\"2018-08-31 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"89\",\"description\":\"\",\"id\":36}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 17:28:00', '2018-08-31 17:28:00'),
(1380, 'App\\User', 1, 'created', 'App\\Purchase', 3, '[]', '{\"delivery_note_id\":13,\"product_id\":1,\"harvest_id\":36,\"farmer_id\":9,\"block_id\":10,\"batch_id\":8,\"crates_count\":\"2\",\"weight_unit\":\"kg\",\"field_weight\":\"89\",\"creator_id\":1,\"id\":3}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 17:28:00', '2018-08-31 17:28:00'),
(1381, 'App\\User', 1, 'updated', 'App\\Purchase', 3, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"88\",\"status\":\"packed\"}', 'http://127.0.0.1:8000/purchases/3/packing_house_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-08-31 17:40:52', '2018-08-31 17:40:52'),
(1382, 'App\\User', 1, 'updated', 'App\\Batch', 8, '{\"max_count\":3,\"valid_from\":\"2018-08-28 07:00:00\",\"valid_till\":\"2018-08-29 07:00:00\",\"expected_arrival_time\":\"2018-08-29 07:00:00\",\"expected_harvest_time\":\"2018-08-29 07:00:00\",\"expected_delivery_time\":\"2018-08-31 07:00:00\",\"expected_departure_time\":\"2018-08-31 07:00:00\"}', '{\"max_count\":\"6\",\"valid_from\":\"2018-08-28 00:00:00\",\"valid_till\":\"2018-08-29 00:00:00\",\"expected_arrival_time\":\"2018-08-29 00:00:00\",\"expected_harvest_time\":\"2018-08-29 00:00:00\",\"expected_delivery_time\":\"2018-08-31 00:00:00\",\"expected_departure_time\":\"2018-08-31 00:00:00\"}', 'http://127.0.0.1:8000/settings/batches/8?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:06:07', '2018-09-05 09:06:07'),
(1383, 'App\\User', 1, 'created', 'App\\Farmer', 235, '[]', '{\"first_name\":\"Malate\",\"last_name\":\"Kerry\",\"phone\":\"0754977618\",\"email\":\"pangdeny@gmail.com\",\"gender\":\"male\",\"creator_id\":1,\"id\":235}', 'http://127.0.0.1:8000/farmers?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:07:08', '2018-09-05 09:07:08'),
(1384, 'App\\User', 1, 'created', 'App\\Address', 511, '[]', '{\"street\":\"3000\",\"address\":null,\"state\":\"Dar es Salaam\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":235,\"addressable_type\":\"App\\\\Farmer\",\"id\":511}', 'http://127.0.0.1:8000/farmers?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:07:08', '2018-09-05 09:07:08'),
(1385, 'App\\User', 1, 'created', 'App\\Farm', 232, '[]', '{\"size\":\"3.2\",\"size_unit\":\"Hectare\",\"description\":\"10A\",\"block_id\":\"3\",\"farmer_id\":235,\"id\":232}', 'http://127.0.0.1:8000/farmers/235/farms?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:07:34', '2018-09-05 09:07:34'),
(1386, 'App\\User', 1, 'created', 'App\\Address', 512, '[]', '{\"country\":\"Tanzania\",\"state\":\"Arusha\",\"addressable_id\":232,\"addressable_type\":\"App\\\\Farm\",\"id\":512}', 'http://127.0.0.1:8000/farmers/235/farms?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:07:35', '2018-09-05 09:07:35'),
(1387, 'App\\User', 1, 'created', 'App\\HouseholdBlock', 188, '[]', '{\"number\":\"A10_X\",\"size\":\"2.3\",\"size_unit\":\"Hectare\",\"farm_id\":\"232\",\"product_id\":\"2\",\"description\":\"Suga snops\",\"id\":188}', 'http://127.0.0.1:8000/farmers/235/household_blocks?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:08:17', '2018-09-05 09:08:17'),
(1388, 'App\\User', 1, 'created', 'App\\Batch', 9, '[]', '{\"number\":\"MAL_011\",\"valid_from\":\"2018-09-05 00:00:00\",\"valid_till\":\"2018-09-30 00:00:00\",\"description\":\"Desc\",\"max_count\":\"10\",\"block_id\":\"3\",\"group_id\":\"3\",\"expected_arrival_time\":\"2018-09-07 00:00:00\",\"expected_arrival_temperature\":\"22\",\"expected_delivery_time\":\"2018-09-06 00:00:00\",\"expected_departure_time\":\"2018-09-06 00:00:00\",\"expected_harvest_time\":\"2018-09-07 00:00:00\",\"id\":9}', 'http://127.0.0.1:8000/settings/batches?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:12:19', '2018-09-05 09:12:19'),
(1389, 'App\\User', 1, 'updated', 'App\\Batch', 9, '{\"group_id\":3}', '{\"group_id\":\"4\"}', 'http://127.0.0.1:8000/settings/batches/9?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:12:38', '2018-09-05 09:12:38'),
(1390, 'App\\User', 1, 'created', 'App\\Harvest', 37, '[]', '{\"farmer_id\":\"235\",\"batch_id\":8,\"household_block_id\":\"188\",\"expected_date\":\"2018-09-05 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"45\",\"description\":\"\",\"id\":37}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:14:37', '2018-09-05 09:14:37'),
(1391, 'App\\User', 1, 'created', 'App\\Purchase', 4, '[]', '{\"delivery_note_id\":14,\"product_id\":2,\"harvest_id\":37,\"farmer_id\":235,\"block_id\":188,\"batch_id\":8,\"crates_count\":\"2\",\"weight_unit\":\"kg\",\"field_weight\":\"45\",\"creator_id\":1,\"id\":4}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:14:37', '2018-09-05 09:14:37'),
(1392, 'App\\User', 1, 'updated', 'App\\Purchase', 4, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"44\",\"status\":\"packed\"}', 'http://127.0.0.1:8000/purchases/4/packing_house_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:26:19', '2018-09-05 09:26:19'),
(1393, 'App\\User', 1, 'updated', 'App\\Purchase', 4, '{\"weight_after\":null,\"amount\":null,\"currency\":\"\",\"status\":\"packed\"}', '{\"weight_after\":\"40\",\"amount\":84000,\"currency\":\"TZS\",\"status\":\"graded\"}', 'http://127.0.0.1:8000/purchases/4/graded_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:52:21', '2018-09-05 09:52:21'),
(1394, 'App\\User', 1, 'updated', 'App\\Purchase', 4, '{\"status\":\"graded\"}', '{\"status\":\"completed\"}', 'http://127.0.0.1:8000/purchases/4/completions?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:56:06', '2018-09-05 09:56:06'),
(1395, 'App\\User', 1, 'updated', 'App\\Purchase', 4, '{\"status\":\"completed\",\"paid_at\":null}', '{\"status\":\"paid\",\"paid_at\":{\"date\":\"2018-09-05 12:56:17.863226\",\"timezone_type\":3,\"timezone\":\"Africa\\/Dar_es_Salaam\"}}', 'http://127.0.0.1:8000/purchases/4/payment_completions?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:56:18', '2018-09-05 09:56:18'),
(1396, 'App\\User', 1, 'created', 'App\\Harvest', 38, '[]', '{\"farmer_id\":\"235\",\"batch_id\":8,\"household_block_id\":\"188\",\"expected_date\":\"2018-09-05 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"3.3\",\"description\":\"\",\"id\":38}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:59:21', '2018-09-05 09:59:21'),
(1397, 'App\\User', 1, 'created', 'App\\Purchase', 5, '[]', '{\"delivery_note_id\":14,\"product_id\":2,\"harvest_id\":38,\"farmer_id\":235,\"block_id\":188,\"batch_id\":8,\"crates_count\":\"2\",\"weight_unit\":\"kg\",\"field_weight\":\"3.3\",\"creator_id\":1,\"id\":5}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 09:59:22', '2018-09-05 09:59:22'),
(1398, 'App\\User', 1, 'updated', 'App\\Purchase', 5, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"3.6\",\"status\":\"packed\"}', 'http://127.0.0.1:8000/purchases/5/packing_house_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 10:01:05', '2018-09-05 10:01:05'),
(1399, 'App\\User', 1, 'updated', 'App\\Purchase', 5, '{\"weight_after\":null,\"amount\":null,\"currency\":\"\",\"status\":\"packed\"}', '{\"weight_after\":\"2.8\",\"amount\":5880,\"currency\":\"TZS\",\"status\":\"graded\"}', 'http://127.0.0.1:8000/purchases/5/graded_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-05 10:01:31', '2018-09-05 10:01:31'),
(1400, 'App\\User', 1, 'created', 'App\\Harvest', 39, '[]', '{\"farmer_id\":\"235\",\"batch_id\":8,\"household_block_id\":\"188\",\"expected_date\":\"2018-09-05 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"89\",\"description\":\"\",\"id\":39}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:26:29', '2018-09-06 13:26:29'),
(1401, 'App\\User', 1, 'created', 'App\\Purchase', 6, '[]', '{\"delivery_note_id\":15,\"product_id\":2,\"harvest_id\":39,\"farmer_id\":235,\"block_id\":188,\"batch_id\":8,\"crates_count\":\"2\",\"weight_unit\":\"kg\",\"field_weight\":\"89\",\"creator_id\":1,\"id\":6}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:26:29', '2018-09-06 13:26:29'),
(1402, 'App\\User', 1, 'updated', 'App\\Purchase', 6, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"88\",\"status\":\"packed\"}', 'http://127.0.0.1:8000/purchases/6/packing_house_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:27:14', '2018-09-06 13:27:14'),
(1403, 'App\\User', 1, 'updated', 'App\\Purchase', 6, '{\"weight_after\":null,\"amount\":null,\"currency\":\"\",\"status\":\"packed\"}', '{\"weight_after\":\"83\",\"amount\":174300,\"currency\":\"TZS\",\"status\":\"graded\"}', 'http://127.0.0.1:8000/purchases/6/graded_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:28:45', '2018-09-06 13:28:45'),
(1404, 'App\\User', 1, 'created', 'App\\Harvest', 40, '[]', '{\"farmer_id\":\"235\",\"batch_id\":8,\"household_block_id\":\"188\",\"expected_date\":\"2018-09-06 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"700\",\"description\":\"\",\"id\":40}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:30:58', '2018-09-06 13:30:58'),
(1405, 'App\\User', 1, 'created', 'App\\Purchase', 7, '[]', '{\"delivery_note_id\":15,\"product_id\":2,\"harvest_id\":40,\"farmer_id\":235,\"block_id\":188,\"batch_id\":8,\"crates_count\":\"1\",\"weight_unit\":\"kg\",\"field_weight\":\"700\",\"creator_id\":1,\"id\":7}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:30:58', '2018-09-06 13:30:58'),
(1406, 'App\\User', 1, 'updated', 'App\\Purchase', 7, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"670\",\"status\":\"packed\"}', 'http://127.0.0.1:8000/purchases/7/packing_house_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:31:28', '2018-09-06 13:31:28'),
(1407, 'App\\User', 1, 'updated', 'App\\Purchase', 7, '{\"weight_after\":null,\"amount\":null,\"currency\":\"\",\"status\":\"packed\"}', '{\"weight_after\":\"650\",\"amount\":1365000,\"currency\":\"TZS\",\"status\":\"graded\"}', 'http://127.0.0.1:8000/purchases/7/graded_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:31:55', '2018-09-06 13:31:55'),
(1408, 'App\\User', 1, 'created', 'App\\Harvest', 41, '[]', '{\"farmer_id\":\"235\",\"batch_id\":8,\"household_block_id\":\"188\",\"expected_date\":\"2018-09-06 00:00:00\",\"amount_unit\":\"kg\",\"expected_amount\":\"77.99\",\"description\":\"\",\"id\":41}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:39:49', '2018-09-06 13:39:49'),
(1409, 'App\\User', 1, 'created', 'App\\Purchase', 8, '[]', '{\"delivery_note_id\":15,\"product_id\":2,\"harvest_id\":41,\"farmer_id\":235,\"block_id\":188,\"batch_id\":8,\"crates_count\":\"3\",\"weight_unit\":\"kg\",\"field_weight\":\"77.99\",\"creator_id\":1,\"id\":8}', 'http://127.0.0.1:8000/clusters/8/purchases?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:39:49', '2018-09-06 13:39:49'),
(1410, 'App\\User', 1, 'updated', 'App\\Purchase', 8, '{\"weight_before\":null,\"status\":\"received\"}', '{\"weight_before\":\"77.82\",\"status\":\"packed\"}', 'http://127.0.0.1:8000/purchases/8/packing_house_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:40:05', '2018-09-06 13:40:05'),
(1411, 'App\\User', 1, 'updated', 'App\\Purchase', 8, '{\"weight_after\":null,\"amount\":null,\"currency\":\"\",\"status\":\"packed\"}', '{\"weight_after\":\"76.8\",\"amount\":161280,\"currency\":\"TZS\",\"status\":\"graded\"}', 'http://127.0.0.1:8000/purchases/8/graded_weight?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-06 13:44:25', '2018-09-06 13:44:25'),
(1412, 'App\\User', 1, 'created', 'App\\Employee', 5, '[]', '{\"first_name\":\"Dennis\",\"last_name\":\"Christian\",\"phone\":\"0754977618\",\"email\":\"pangdeny@gmail.com\",\"gender\":\"male\",\"creator_id\":1,\"id\":5}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-07 15:09:08', '2018-09-07 15:09:08'),
(1413, 'App\\User', 1, 'created', 'App\\Address', 513, '[]', '{\"street\":\"Kichangani St.\",\"address\":\"po box Mosho 1111\",\"state\":\"Kaskazini Pemba\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":5,\"addressable_type\":\"App\\\\Employee\",\"id\":513}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-07 15:09:09', '2018-09-07 15:09:09'),
(1414, 'App\\User', 1, 'created', 'App\\Employee', 6, '[]', '{\"first_name\":\"African\",\"last_name\":\"Kuku\",\"phone\":\"0717990638\",\"email\":\"ylowe@example.net\",\"gender\":\"male\",\"creator_id\":1,\"id\":6}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-07 15:30:14', '2018-09-07 15:30:14'),
(1415, 'App\\User', 1, 'created', 'App\\Address', 514, '[]', '{\"street\":\"Kresncj\",\"address\":null,\"state\":\"Kusini Pemba\",\"country\":\"Tanzania\",\"postal_code\":\"233\",\"addressable_id\":6,\"addressable_type\":\"App\\\\Employee\",\"id\":514}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-07 15:30:14', '2018-09-07 15:30:14'),
(1416, 'App\\User', 1, 'created', 'App\\Employee', 7, '[]', '{\"first_name\":\"Bryton\",\"last_name\":\"Dennis\",\"phone\":\"0754977617\",\"email\":\"bryton@dennis.com\",\"gender\":\"male\",\"creator_id\":1,\"id\":7}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 15:55:34', '2018-09-08 15:55:34'),
(1417, 'App\\User', 1, 'created', 'App\\Address', 515, '[]', '{\"street\":\"Kilimanjaro Bry\",\"address\":\"po box Mosho 1111\",\"state\":\"Kilimanjaro\",\"country\":\"Tanzania\",\"postal_code\":\"44\",\"addressable_id\":7,\"addressable_type\":\"App\\\\Employee\",\"id\":515}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 15:55:35', '2018-09-08 15:55:35'),
(1418, 'App\\User', 1, 'updated', 'App\\Employee', 7, '{\"last_name\":\"Dennis\"}', '{\"last_name\":\"Dennis Metru\"}', 'http://127.0.0.1:8000/employees/7?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:15:22', '2018-09-08 16:15:22'),
(1419, 'App\\User', 1, 'created', 'App\\Address', 516, '[]', '{\"street\":\"zcxzc\",\"address\":\"\",\"state\":\"Kusini Pemba\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":3,\"addressable_type\":\"App\\\\Employee\",\"id\":516}', 'http://127.0.0.1:8000/employees/3?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:21:23', '2018-09-08 16:21:23'),
(1420, 'App\\User', 1, 'created', 'App\\Address', 517, '[]', '{\"street\":\"STreet\",\"address\":\"\",\"state\":\"Lindi\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":4,\"addressable_type\":\"App\\\\Employee\",\"id\":517}', 'http://127.0.0.1:8000/employees/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:22:32', '2018-09-08 16:22:32'),
(1421, 'App\\User', 1, 'updated', 'App\\Employee', 4, '{\"first_name\":\"Dennis\",\"last_name\":\"Christian\"}', '{\"first_name\":\"Magere\",\"last_name\":\"Masatu\"}', 'http://127.0.0.1:8000/employees/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:22:58', '2018-09-08 16:22:58'),
(1422, 'App\\User', 1, 'updated', 'App\\Employee', 2, '{\"first_name\":\"Dennis\",\"last_name\":\"Christian\",\"gender\":\"male\"}', '{\"first_name\":\"Greg\",\"last_name\":\"Mack\",\"gender\":\"female\"}', 'http://127.0.0.1:8000/employees/2?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:23:43', '2018-09-08 16:23:43'),
(1423, 'App\\User', 1, 'created', 'App\\Address', 518, '[]', '{\"street\":\"maa\",\"address\":\"\",\"state\":\"Mwanza\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":2,\"addressable_type\":\"App\\\\Employee\",\"id\":518}', 'http://127.0.0.1:8000/employees/2?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:23:43', '2018-09-08 16:23:43'),
(1424, 'App\\User', 1, 'updated', 'App\\Employee', 1, '{\"first_name\":\"Dennis\",\"last_name\":\"Christian\"}', '{\"first_name\":\"Natasha\",\"last_name\":\"Gveg\"}', 'http://127.0.0.1:8000/employees/1?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:24:23', '2018-09-08 16:24:23'),
(1425, 'App\\User', 1, 'created', 'App\\Address', 519, '[]', '{\"street\":\"Kelmon\",\"address\":\"\",\"state\":\"Kusini Unguja\",\"country\":\"Tanzania\",\"postal_code\":\"777\",\"addressable_id\":1,\"addressable_type\":\"App\\\\Employee\",\"id\":519}', 'http://127.0.0.1:8000/employees/1?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:24:23', '2018-09-08 16:24:23'),
(1426, 'App\\User', 1, 'updated', 'App\\Employee', 5, '{\"first_name\":\"Dennis\",\"last_name\":\"Christian\"}', '{\"first_name\":\"Cley\",\"last_name\":\"Masawe\"}', 'http://127.0.0.1:8000/employees/5?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:24:50', '2018-09-08 16:24:50'),
(1427, 'App\\User', 1, 'updated', 'App\\Employee', 3, '{\"first_name\":\"Dennis\",\"last_name\":\"Christian\"}', '{\"first_name\":\"Kemy\",\"last_name\":\"Bichwa\"}', 'http://127.0.0.1:8000/employees/3?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:25:33', '2018-09-08 16:25:33'),
(1428, 'App\\User', 1, 'updated', 'App\\Employee', 5, '{\"first_name\":\"Cley\"}', '{\"first_name\":\"Cley c\"}', 'http://127.0.0.1:8000/employees/5?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:34:44', '2018-09-08 16:34:44');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1429, 'App\\User', 1, 'created', 'App\\Employee', 8, '[]', '{\"first_name\":\"Elina\",\"last_name\":\"Materu\",\"phone\":\"0754977618\",\"email\":\"ylowe@example.net\",\"gender\":\"female\",\"period_rate\":null,\"creator_id\":1,\"id\":8}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:53:12', '2018-09-08 16:53:12'),
(1430, 'App\\User', 1, 'created', 'App\\Address', 520, '[]', '{\"street\":\"Tanga\",\"address\":\"73493849\",\"state\":\"Mara\",\"country\":\"Tanzania\",\"postal_code\":\"233\",\"addressable_id\":8,\"addressable_type\":\"App\\\\Employee\",\"id\":520}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 16:53:13', '2018-09-08 16:53:13'),
(1431, 'App\\User', 1, 'updated', 'App\\Employee', 8, '{\"period_rate\":null}', '{\"period_rate\":\"4500000\"}', 'http://127.0.0.1:8000/employees/8?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 17:04:18', '2018-09-08 17:04:18'),
(1432, 'App\\User', 1, 'created', 'App\\Employee', 9, '[]', '{\"first_name\":\"beka\",\"last_name\":\"Mvungi\",\"phone\":\"0754977617\",\"email\":\"admin@homeverge.co.tz\",\"gender\":\"male\",\"period_rate\":\"340000\",\"creator_id\":1,\"id\":9}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 17:08:27', '2018-09-08 17:08:27'),
(1433, 'App\\User', 1, 'created', 'App\\Address', 521, '[]', '{\"street\":\"fra\",\"address\":\"P O BOX 3010 KCMC Moshi\",\"state\":\"Kusini Pemba\",\"country\":\"Tanzania\",\"postal_code\":\"233\",\"addressable_id\":9,\"addressable_type\":\"App\\\\Employee\",\"id\":521}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-08 17:08:27', '2018-09-08 17:08:27'),
(1434, 'App\\User', 1, 'updated', 'App\\Employee', 5, '{\"period_rate\":null}', '{\"period_rate\":\"600000\"}', 'http://127.0.0.1:8000/employees/5?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-10 12:40:38', '2018-09-10 12:40:38'),
(1435, 'App\\User', 1, 'updated', 'App\\Employee', 5, '{\"period_rate\":600000}', '{\"period_rate\":\"650000\"}', 'http://127.0.0.1:8000/employees/5?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-10 12:52:55', '2018-09-10 12:52:55'),
(1436, 'App\\User', 1, 'updated', 'App\\Employee', 3, '{\"period_rate\":null}', '{\"period_rate\":\"7680000\"}', 'http://127.0.0.1:8000/employees/3?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-10 12:53:18', '2018-09-10 12:53:18'),
(1437, 'App\\User', 1, 'updated', 'App\\Employee', 7, '{\"period_rate\":null}', '{\"period_rate\":\"906000\"}', 'http://127.0.0.1:8000/employees/7?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-11 09:19:41', '2018-09-11 09:19:41'),
(1438, 'App\\User', 1, 'updated', 'App\\Employee', 6, '{\"period_rate\":null}', '{\"period_rate\":\"560000\"}', 'http://127.0.0.1:8000/employees/6?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-11 13:20:13', '2018-09-11 13:20:13'),
(1439, 'App\\User', 1, 'updated', 'App\\Employee', 4, '{\"period_rate\":null}', '{\"period_rate\":\"980000\"}', 'http://127.0.0.1:8000/employees/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 16:17:43', '2018-09-12 16:17:43'),
(1440, 'App\\User', 1, 'updated', 'App\\Employee', 2, '{\"period_rate\":null}', '{\"period_rate\":\"1450000\"}', 'http://127.0.0.1:8000/employees/2?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 16:18:04', '2018-09-12 16:18:04'),
(1441, 'App\\User', 1, 'updated', 'App\\Employee', 1, '{\"period_rate\":null}', '{\"period_rate\":\"300000\"}', 'http://127.0.0.1:8000/employees/1?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 16:18:36', '2018-09-12 16:18:36'),
(1442, 'App\\User', 1, 'created', 'App\\Employee', 10, '[]', '{\"first_name\":\"Bernard sila\",\"last_name\":\"Materu\",\"phone\":\"0754977618\",\"email\":null,\"gender\":\"male\",\"period_rate\":\"4500000\",\"creator_id\":1,\"id\":10}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:27:24', '2018-09-12 19:27:24'),
(1443, 'App\\User', 1, 'created', 'App\\Address', 522, '[]', '{\"street\":\"Tanga\",\"address\":null,\"state\":\"Mara\",\"country\":\"Tanzania\",\"postal_code\":null,\"addressable_id\":10,\"addressable_type\":\"App\\\\Employee\",\"id\":522}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:27:24', '2018-09-12 19:27:24'),
(1444, 'App\\User', 1, 'updated', 'App\\Employee', 10, '{\"email\":null}', '{\"email\":\"bahati.kiondo@homevegfarmers.co.tz\"}', 'http://127.0.0.1:8000/employees/10?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:30:23', '2018-09-12 19:30:23'),
(1445, 'App\\User', 1, 'created', 'App\\Employee', 11, '[]', '{\"first_name\":\"Jacob\",\"last_name\":\"Zuma\",\"phone\":\"0754977618\",\"email\":\"ylowe@example.net\",\"gender\":\"male\",\"period_rate\":\"23000\",\"pay_period\":\"Monthly\",\"active\":\"yes\",\"creator_id\":1,\"id\":11}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:31:10', '2018-09-12 19:31:10'),
(1446, 'App\\User', 1, 'created', 'App\\Address', 523, '[]', '{\"street\":\"Tanga\",\"address\":\"73493849\",\"state\":\"Mjini Magharibi\",\"country\":\"Tanzania\",\"postal_code\":\"3222\",\"addressable_id\":11,\"addressable_type\":\"App\\\\Employee\",\"id\":523}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:31:10', '2018-09-12 19:31:10'),
(1447, 'App\\User', 1, 'created', 'App\\Employee', 12, '[]', '{\"first_name\":\"Rihama\",\"last_name\":\"Ally\",\"phone\":\"0754977617\",\"email\":\"riama@mma.hun\",\"gender\":\"female\",\"period_rate\":\"340000\",\"pay_period\":\"Hourly\",\"hourly_rate\":\"2300\",\"active\":\"no\",\"creator_id\":1,\"id\":12}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:33:20', '2018-09-12 19:33:20'),
(1448, 'App\\User', 1, 'created', 'App\\Address', 524, '[]', '{\"street\":\"fra\",\"address\":null,\"state\":\"Morogoro\",\"country\":\"Tanzania\",\"postal_code\":\"233\",\"addressable_id\":12,\"addressable_type\":\"App\\\\Employee\",\"id\":524}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:33:20', '2018-09-12 19:33:20'),
(1449, 'App\\User', 1, 'updated', 'App\\Employee', 12, '{\"period_rate\":340000,\"hourly_rate\":2300,\"pay_period\":\"Hourly\"}', '{\"period_rate\":\"940000\",\"hourly_rate\":\"45300\",\"pay_period\":\"Monthly\"}', 'http://127.0.0.1:8000/employees/12?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:48:29', '2018-09-12 19:48:29'),
(1450, 'App\\User', 1, 'updated', 'App\\Employee', 10, '{\"email\":\"bahati.kiondo@homevegfarmers.co.tz\",\"pay_period\":\"\",\"active\":\"\"}', '{\"email\":\"kiondo@homevegfarmers.co.tz\",\"pay_period\":\"Monthly\",\"active\":\"yes\"}', 'http://127.0.0.1:8000/employees/10?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:49:33', '2018-09-12 19:49:33'),
(1451, 'App\\User', 1, 'updated', 'App\\Employee', 6, '{\"pay_period\":\"\",\"active\":\"\"}', '{\"pay_period\":\"Monthly\",\"active\":\"yes\"}', 'http://127.0.0.1:8000/employees/6?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-12 19:55:42', '2018-09-12 19:55:42'),
(1452, 'App\\User', 1, 'updated', 'App\\Employee', 12, '{\"active\":\"no\"}', '{\"active\":\"yes\"}', 'http://127.0.0.1:8000/employees/12?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 08:06:35', '2018-09-13 08:06:35'),
(1453, 'App\\User', 1, 'updated', 'App\\Employee', 3, '{\"pay_period\":\"\",\"active\":\"\"}', '{\"pay_period\":\"Monthly\",\"active\":\"yes\"}', 'http://127.0.0.1:8000/employees/3?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 08:06:59', '2018-09-13 08:06:59'),
(1454, 'App\\User', 1, 'updated', 'App\\Employee', 12, '{\"pay_period\":\"Monthly\"}', '{\"pay_period\":\"Salary\"}', 'http://127.0.0.1:8000/employees/12?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:03:37', '2018-09-13 09:03:37'),
(1455, 'App\\User', 1, 'updated', 'App\\Employee', 11, '{\"hourly_rate\":0,\"pay_period\":\"Monthly\"}', '{\"hourly_rate\":\"3400\",\"pay_period\":\"Hourly\"}', 'http://127.0.0.1:8000/employees/11?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:03:58', '2018-09-13 09:03:58'),
(1456, 'App\\User', 1, 'updated', 'App\\Employee', 9, '{\"pay_period\":\"\",\"active\":\"\"}', '{\"pay_period\":\"Salary\",\"active\":\"yes\"}', 'http://127.0.0.1:8000/employees/9?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:04:12', '2018-09-13 09:04:12'),
(1457, 'App\\User', 1, 'updated', 'App\\Employee', 7, '{\"hourly_rate\":0,\"pay_period\":\"\",\"active\":\"\"}', '{\"hourly_rate\":\"5600\",\"pay_period\":\"Hourly\",\"active\":\"yes\"}', 'http://127.0.0.1:8000/employees/7?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:04:40', '2018-09-13 09:04:40'),
(1458, 'App\\User', 1, 'created', 'App\\Employee', 13, '[]', '{\"first_name\":\"Kibanda\",\"last_name\":\"Salim\",\"phone\":\"0754977617\",\"email\":\"kibandaa@salim.com\",\"gender\":\"male\",\"period_rate\":\"670000\",\"pay_period\":null,\"hourly_rate\":\"450\",\"active\":\"yes\",\"creator_id\":1,\"id\":13}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:21:39', '2018-09-13 09:21:39'),
(1459, 'App\\User', 1, 'created', 'App\\Address', 525, '[]', '{\"street\":\"Kresncj\",\"address\":null,\"state\":\"Arusha\",\"country\":\"Tanzania\",\"postal_code\":\"233\",\"addressable_id\":13,\"addressable_type\":\"App\\\\Employee\",\"id\":525}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:21:40', '2018-09-13 09:21:40'),
(1460, 'App\\User', 1, 'updated', 'App\\Employee', 12, '{\"pay_type\":\"\"}', '{\"pay_type\":\"Salary\"}', 'http://127.0.0.1:8000/employees/12?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:23:57', '2018-09-13 09:23:57'),
(1461, 'App\\User', 1, 'created', 'App\\Employee', 14, '[]', '{\"first_name\":\"Vedasto\",\"last_name\":\"Alaya\",\"phone\":\"0754977618\",\"email\":null,\"gender\":\"female\",\"period_rate\":\"600000\",\"pay_type\":\"Salary\",\"hourly_rate\":\"3400\",\"active\":\"yes\",\"creator_id\":1,\"id\":14}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:24:55', '2018-09-13 09:24:55'),
(1462, 'App\\User', 1, 'created', 'App\\Address', 526, '[]', '{\"street\":\"Kresncj\",\"address\":null,\"state\":\"Mara\",\"country\":\"Tanzania\",\"postal_code\":\"344\",\"addressable_id\":14,\"addressable_type\":\"App\\\\Employee\",\"id\":526}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:24:55', '2018-09-13 09:24:55'),
(1463, 'App\\User', 1, 'updated', 'App\\Employee', 13, '{\"pay_type\":\"\"}', '{\"pay_type\":\"Hourly\"}', 'http://127.0.0.1:8000/employees/13?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:25:29', '2018-09-13 09:25:29'),
(1464, 'App\\User', 1, 'updated', 'App\\Employee', 11, '{\"pay_type\":\"\"}', '{\"pay_type\":\"Hourly\"}', 'http://127.0.0.1:8000/employees/11?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:25:42', '2018-09-13 09:25:42'),
(1465, 'App\\User', 1, 'updated', 'App\\Employee', 4, '{\"pay_type\":\"\",\"active\":\"\"}', '{\"pay_type\":\"Salary\",\"active\":\"yes\"}', 'http://127.0.0.1:8000/employees/4?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:25:55', '2018-09-13 09:25:55'),
(1466, 'App\\User', 1, 'updated', 'App\\Employee', 10, '{\"pay_type\":\"\"}', '{\"pay_type\":\"Salary\"}', 'http://127.0.0.1:8000/employees/10?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 09:33:43', '2018-09-13 09:33:43'),
(1467, 'App\\User', 1, 'updated', 'App\\Employee', 9, '{\"pay_type\":\"\"}', '{\"pay_type\":\"Hourly\"}', 'http://127.0.0.1:8000/employees/9?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 11:08:03', '2018-09-13 11:08:03'),
(1468, 'App\\User', 1, 'updated', 'App\\Employee', 7, '{\"pay_type\":\"\"}', '{\"pay_type\":\"Hourly\"}', 'http://127.0.0.1:8000/employees/7?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 11:08:19', '2018-09-13 11:08:19'),
(1469, 'App\\User', 1, 'updated', 'App\\Employee', 3, '{\"pay_type\":\"\",\"hourly_rate\":0}', '{\"pay_type\":\"Hourly\",\"hourly_rate\":\"12000\"}', 'http://127.0.0.1:8000/employees/3?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 11:08:49', '2018-09-13 11:08:49'),
(1470, 'App\\User', 1, 'updated', 'App\\Employee', 9, '{\"pay_type\":\"Hourly\",\"hourly_rate\":0}', '{\"pay_type\":\"Salary\",\"hourly_rate\":\"8900\"}', 'http://127.0.0.1:8000/employees/9?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-13 11:46:17', '2018-09-13 11:46:17'),
(1471, 'App\\User', 1, 'updated', 'App\\Employee', 6, '{\"pay_type\":\"\",\"hourly_rate\":0}', '{\"pay_type\":\"Salary\",\"hourly_rate\":\"455\"}', 'http://127.0.0.1:8000/employees/6?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-14 11:10:46', '2018-09-14 11:10:46'),
(1472, 'App\\User', 1, 'updated', 'App\\Employee', 8, '{\"pay_type\":\"\",\"active\":\"\"}', '{\"pay_type\":\"Salary\",\"active\":\"yes\"}', 'http://127.0.0.1:8000/employees/8?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-17 07:02:38', '2018-09-17 07:02:38'),
(1473, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"eyfAGGoIKCENEebG6Knd0ZyT6jrNWrRomTf982tkfryyYTVR0U9xfrX2WfI3\"}', '{\"remember_token\":\"hXkRYcSP89xgylgNeQF5n3ApFqe1AXPJxz0lXAhGi0EfX7CTv4pBaQuGHOWT\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-17 11:57:22', '2018-09-17 11:57:22'),
(1474, 'App\\User', 1, 'updated', 'App\\Employee', 11, '{\"period_rate\":23000,\"pay_type\":\"Hourly\"}', '{\"period_rate\":\"366,929.00\",\"pay_type\":\"Salary\"}', 'http://127.0.0.1:8000/employees/11?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-18 14:18:00', '2018-09-18 14:18:00'),
(1475, 'App\\User', 1, 'updated', 'App\\Employee', 11, '{\"period_rate\":366}', '{\"period_rate\":\"366929.00\"}', 'http://127.0.0.1:8000/employees/11?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-18 14:19:52', '2018-09-18 14:19:52'),
(1476, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"hXkRYcSP89xgylgNeQF5n3ApFqe1AXPJxz0lXAhGi0EfX7CTv4pBaQuGHOWT\"}', '{\"remember_token\":\"2pfDvqm41gseKszUYt6CS0QXkSdxSxUT1IIxUQ4t2Ns8Gd43AFpgSw1VyfC4\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-19 07:48:44', '2018-09-19 07:48:44'),
(1477, 'App\\User', 1, 'created', 'App\\Employee', 15, '[]', '{\"first_name\":\"Mwang\",\"last_name\":\"Joll\",\"phone\":\"0754977618\",\"email\":\"bryton@dennis.com\",\"gender\":\"female\",\"period_rate\":\"340000\",\"pay_type\":\"Salary\",\"hourly_rate\":\"3400\",\"pay_period\":\"1\",\"active\":\"yes\",\"creator_id\":1,\"id\":15}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-19 16:27:15', '2018-09-19 16:27:15'),
(1478, 'App\\User', 1, 'created', 'App\\Address', 527, '[]', '{\"street\":\"Kresncj\",\"address\":null,\"state\":\"Iringa\",\"country\":\"Tanzania\",\"postal_code\":\"255\",\"addressable_id\":15,\"addressable_type\":\"App\\\\Employee\",\"id\":527}', 'http://127.0.0.1:8000/employees?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-19 16:27:15', '2018-09-19 16:27:15'),
(1479, 'App\\User', 1, 'updated', 'App\\Employee', 3, '{\"pay_type\":\"Hourly\",\"pay_period\":\"Salary\"}', '{\"pay_type\":\"Salary\",\"pay_period\":\"1\"}', 'http://127.0.0.1:8000/employees/3?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-19 16:49:53', '2018-09-19 16:49:53'),
(1480, 'App\\User', 1, 'updated', 'App\\Employee', 12, '{\"pay_period\":\"Salary\"}', '{\"pay_period\":\"2\"}', 'http://127.0.0.1:8000/employees/12?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-19 16:51:14', '2018-09-19 16:51:14'),
(1481, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"remember_token\":\"2pfDvqm41gseKszUYt6CS0QXkSdxSxUT1IIxUQ4t2Ns8Gd43AFpgSw1VyfC4\"}', '{\"remember_token\":\"FTWAWYVZfkcgW63wgEkxLtLlo6ZxHI55HcJDvel4MBnnAOIT3D4Gex1vO96R\"}', 'http://127.0.0.1:8000/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-20 11:58:03', '2018-09-20 11:58:03'),
(1482, 'App\\User', 1, 'updated', 'App\\Employee', 5, '{\"pay_type\":\"\",\"active\":\"\"}', '{\"pay_type\":\"Salary\",\"active\":\"no\"}', 'http://127.0.0.1:8000/employees/5?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-25 15:20:24', '2018-09-25 15:20:24'),
(1483, 'App\\User', 1, 'updated', 'App\\Employee', 2, '{\"pay_type\":\"\",\"active\":\"\"}', '{\"pay_type\":\"Hourly\",\"active\":\"no\"}', 'http://127.0.0.1:8000/employees/2?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-25 15:20:43', '2018-09-25 15:20:43'),
(1484, 'App\\User', 1, 'updated', 'App\\Employee', 1, '{\"pay_type\":\"\",\"active\":\"\"}', '{\"pay_type\":\"Salary\",\"active\":\"no\"}', 'http://127.0.0.1:8000/employees/1?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-25 15:20:56', '2018-09-25 15:20:56'),
(1485, 'App\\User', 1, 'updated', 'App\\Employee', 1, '{\"gender\":\"male\",\"active\":\"no\"}', '{\"gender\":\"female\",\"active\":\"yes\"}', 'http://127.0.0.1:8000/employees/1?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-26 13:11:54', '2018-09-26 13:11:54'),
(1486, 'App\\User', 1, 'updated', 'App\\Employee', 8, '{\"pay_period\":\"2\"}', '{\"pay_period\":\"1\"}', 'http://127.0.0.1:8000/employees/8?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-09-26 13:12:18', '2018-09-26 13:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `bankname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankaccount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banklocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_count` int(11) NOT NULL,
  `valid_from` timestamp NULL DEFAULT NULL,
  `valid_till` timestamp NULL DEFAULT NULL,
  `block_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `expected_arrival_time` timestamp NULL DEFAULT NULL,
  `expected_arrival_temperature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_harvest_time` timestamp NULL DEFAULT NULL,
  `expected_delivery_time` timestamp NULL DEFAULT NULL,
  `expected_departure_time` timestamp NULL DEFAULT NULL,
  `status` enum('open','active','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `number`, `max_count`, `valid_from`, `valid_till`, `block_id`, `group_id`, `expected_arrival_time`, `expected_arrival_temperature`, `expected_harvest_time`, `expected_delivery_time`, `expected_departure_time`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'OEHI-398', 10, '2018-08-16 08:00:00', '2018-08-17 08:00:00', 13, 4, '2018-08-16 08:00:00', '30', '2018-08-25 08:00:00', '2018-08-25 08:00:00', '2018-08-25 08:00:00', 'open', 'sometthinf', '2018-08-16 20:30:22', '2018-08-16 20:30:22'),
(2, 'JEJF-288', 10, '2018-08-16 08:00:00', '2018-08-24 08:00:00', 14, 2, '2018-08-17 08:00:00', '30', '2018-08-18 08:00:00', '2018-08-31 08:00:00', '2018-08-25 08:00:00', 'open', 'ssdsa', '2018-08-16 20:32:10', '2018-08-16 20:32:10'),
(3, 'JEJF-288', 10, '2018-08-16 08:00:00', '2018-08-24 08:00:00', 14, 2, '2018-08-17 08:00:00', '30', '2018-08-18 08:00:00', '2018-08-31 08:00:00', '2018-08-25 08:00:00', 'open', 'ssdsa', '2018-08-16 20:32:10', '2018-08-16 20:32:10'),
(4, 'JKTR-092', 10, '2018-08-24 08:00:00', '2018-09-03 08:00:00', 3, 3, '2018-08-29 08:00:00', '05', '2018-08-24 08:00:00', '2018-09-03 08:00:00', '2018-09-01 08:00:00', 'open', 'Green Beans', '2018-08-24 22:56:07', '2018-08-24 22:56:07'),
(5, 'RAY-056', 5, '2018-08-28 04:00:00', '2018-08-30 04:00:00', 7, 3, '2018-08-29 04:00:00', '15', '2018-08-29 04:00:00', '2018-09-02 04:00:00', '2018-09-02 04:00:00', 'open', 'Green Beans', '2018-08-27 20:49:18', '2018-08-27 20:49:18'),
(8, 'HFW-123', 6, '2018-08-27 21:00:00', '2018-08-28 21:00:00', 2, 4, '2018-08-28 21:00:00', '16', '2018-08-28 21:00:00', '2018-08-30 21:00:00', '2018-08-30 21:00:00', 'open', 'GREEN BEANS', '2018-08-28 20:26:50', '2018-09-05 09:06:06'),
(9, 'MAL_011', 10, '2018-09-04 21:00:00', '2018-09-29 21:00:00', 3, 4, '2018-09-06 21:00:00', '22', '2018-09-06 21:00:00', '2018-09-05 21:00:00', '2018-09-05 21:00:00', 'open', 'Desc', '2018-09-05 09:12:18', '2018-09-05 09:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` double NOT NULL,
  `size_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `farm_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `number`, `size`, `size_unit`, `farm_id`, `product_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A1', 0, '', NULL, NULL, 'A1 Block', 'active', '2018-08-09 23:27:01', '2018-08-09 23:27:01'),
(2, 'A2', 0, '', NULL, NULL, 'A2', 'active', '2018-08-09 23:27:32', '2018-08-09 23:27:32'),
(3, '10A', 0, '', NULL, NULL, '10A', 'active', '2018-08-12 17:50:10', '2018-08-12 17:50:10'),
(4, '10B', 0, '', NULL, NULL, '10B', 'active', '2018-08-12 17:51:13', '2018-08-12 17:51:13'),
(5, '1C', 0, '', NULL, NULL, '1C', 'active', '2018-08-12 17:52:24', '2018-08-12 17:52:24'),
(6, '1D', 0, '', NULL, NULL, '1D', 'active', '2018-08-12 17:53:05', '2018-08-12 17:53:05'),
(7, '1E', 0, '', NULL, NULL, '1E', 'active', '2018-08-12 17:53:32', '2018-08-12 17:53:32'),
(8, '1F', 0, '', NULL, NULL, '1F', 'active', '2018-08-12 17:55:21', '2018-08-12 17:55:21'),
(9, '1G', 0, '', NULL, NULL, '1G', 'active', '2018-08-12 17:55:44', '2018-08-12 17:55:44'),
(10, '2A', 0, '', NULL, NULL, '2A', 'active', '2018-08-12 17:56:26', '2018-08-12 17:56:26'),
(11, '2B', 0, '', NULL, NULL, '2B', 'active', '2018-08-12 17:57:58', '2018-08-12 17:57:58'),
(12, '2C', 0, '', NULL, NULL, '2C', 'active', '2018-08-12 17:58:27', '2018-08-12 17:58:27'),
(13, '2D', 0, '', NULL, NULL, '2D', 'active', '2018-08-12 17:59:11', '2018-08-12 17:59:11'),
(14, '2E', 0, '', NULL, NULL, '2E', 'active', '2018-08-12 17:59:42', '2018-08-12 17:59:42'),
(15, '3A', 0, '', NULL, NULL, '3A', 'active', '2018-08-12 18:00:27', '2018-08-12 18:00:27'),
(16, '3B', 0, '', NULL, NULL, '3B', 'active', '2018-08-12 18:00:50', '2018-08-12 18:00:50'),
(17, '3C', 0, '', NULL, NULL, '3C', 'active', '2018-08-12 18:01:26', '2018-08-12 18:01:26'),
(18, '3D', 0, '', NULL, NULL, '3D', 'active', '2018-08-12 18:02:15', '2018-08-12 18:02:15'),
(19, '10B', 0, '', NULL, NULL, '10B', 'active', '2018-08-12 18:03:23', '2018-08-12 18:03:23'),
(20, '11A', 0, '', NULL, NULL, '11A', 'active', '2018-08-12 18:03:55', '2018-08-12 18:03:55'),
(21, '10C', 0, '', NULL, NULL, '10C', 'active', '2018-08-12 18:05:04', '2018-08-12 18:05:04'),
(22, '10D', 0, '', NULL, NULL, '10D', 'active', '2018-08-12 18:05:32', '2018-08-12 18:05:32'),
(23, '11A10', 0, '', NULL, NULL, 'Fine peas', 'active', '2018-08-14 13:15:14', '2018-08-14 13:15:14'),
(24, '11D', 0, '', NULL, NULL, 'Fine peas', 'active', '2018-08-14 13:30:00', '2018-08-14 13:30:00'),
(25, '11D', 0, '', NULL, NULL, 'Fine peas', 'active', '2018-08-14 13:32:45', '2018-08-14 13:32:45'),
(26, '11B', 0, '', NULL, NULL, 'Fine peas', 'active', '2018-08-14 13:44:34', '2018-08-14 13:44:34'),
(27, '11C', 0, '', NULL, NULL, 'Peas', 'active', '2018-08-15 13:59:00', '2018-08-15 13:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `branchname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branclocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `coycode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coyname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companynumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regoffice1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regoffice2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regoffice3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regoffice4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regoffice5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regoffice6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currentdefault` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pytdiscountact` int(11) NOT NULL,
  `creditorsact` int(11) NOT NULL,
  `payrollact` int(11) NOT NULL,
  `grnact` int(11) NOT NULL,
  `exchangediffact` int(11) NOT NULL,
  `purchasesexchangediffact` int(11) NOT NULL,
  `retainedearnings` int(11) NOT NULL,
  `gillink_debtors` int(11) NOT NULL,
  `gillink_creditors` int(11) NOT NULL,
  `gillink_dstock` int(11) NOT NULL,
  `freightact` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cost_centers`
--

CREATE TABLE `cost_centers` (
  `id` int(10) UNSIGNED NOT NULL,
  `costcentername` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costcenterdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_notes`
--

CREATE TABLE `delivery_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_notes`
--

INSERT INTO `delivery_notes` (`id`, `number`, `created_at`, `updated_at`) VALUES
(1, 'HV18-07-29', '2018-07-29 12:10:23', '2018-07-29 12:10:23'),
(2, 'HV18-07-30', '2018-07-30 04:14:35', '2018-07-30 04:14:35'),
(3, '2151', '2018-07-30 19:04:08', '2018-07-30 19:04:08'),
(4, '2101', '2018-07-30 19:05:10', '2018-07-30 19:05:10'),
(5, '2001', '2018-07-30 19:05:21', '2018-07-30 19:05:21'),
(6, '2152', '2018-07-30 19:10:16', '2018-07-30 19:10:16'),
(7, '2218', '2018-07-30 19:12:45', '2018-07-30 19:12:45'),
(8, 'HV18-08-24', '2018-08-24 19:19:43', '2018-08-24 19:19:43'),
(9, 'HV18-08-27', '2018-08-27 21:00:26', '2018-08-27 21:00:26'),
(10, 'HV18-08-28', '2018-08-28 19:24:57', '2018-08-28 19:24:57'),
(11, 'HFW123', '2018-08-28 21:03:23', '2018-08-28 21:03:23'),
(12, 'HV18-08-29', '2018-08-29 13:18:41', '2018-08-29 13:18:41'),
(13, 'HV18-08-31', '2018-08-31 17:27:58', '2018-08-31 17:27:58'),
(14, 'HV18-09-05', '2018-09-05 09:14:37', '2018-09-05 09:14:37'),
(15, 'HV18-09-06', '2018-09-06 13:26:28', '2018-09-06 13:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `departmentname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departmentlocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dependants`
--

CREATE TABLE `dependants` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deptypeid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextofkeen` int(11) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dependanttypes`
--

CREATE TABLE `dependanttypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `dependanttype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependantdesc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeelanguages`
--

CREATE TABLE `employeelanguages` (
  `id` int(10) UNSIGNED NOT NULL,
  `languageid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `write` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeequalifications`
--

CREATE TABLE `employeequalifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `qualificationid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `levelid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datefrom` date NOT NULL,
  `dateto` date NOT NULL,
  `institutionid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `period_rate` double DEFAULT NULL,
  `pay_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sstype_id` int(11) NOT NULL,
  `hourly_rate` double DEFAULT NULL,
  `pay_period` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deduct_tax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `deduct_ss` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `deduct_health` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `deduct_hdmf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `other_name`, `phone`, `email`, `gender`, `period_rate`, `pay_type`, `sstype_id`, `hourly_rate`, `pay_period`, `active`, `deduct_tax`, `deduct_ss`, `deduct_health`, `deduct_hdmf`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Natasha', 'Gveg', '', '0754977618', 'pangdeny@gmail.com', 'female', 300000, 'Salary', 1, 0, '1', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-07 14:59:54', '2018-09-26 13:11:53'),
(2, 'Greg', 'Mack', '', '0754977618', 'pangdeny@gmail.com', 'female', 1450000, 'Hourly', 1, 0, '2', 'no', 'yes', 'yes', 'no', 'no', 1, '2018-09-07 15:00:55', '2018-09-25 15:20:43'),
(3, 'Kemy', 'Bichwa', '', '0754977618', 'pangdeny@gmail.com', 'male', 7680000, 'Salary', 1, 12000, '2', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-07 15:01:46', '2018-09-19 16:49:53'),
(4, 'Magere', 'Masatu', '', '0754977618', 'pangdeny@gmail.com', 'male', 980000, 'Salary', 1, 0, '1', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-07 15:08:33', '2018-09-13 09:25:55'),
(5, 'Cley c', 'Masawe', '', '0754977618', 'pangdeny@gmail.com', 'male', 650000, 'Salary', 1, 0, '1', 'no', 'yes', 'no', 'no', 'no', 1, '2018-09-07 15:09:07', '2018-09-25 15:20:24'),
(6, 'African', 'Kuku', '', '0717990638', 'ylowe@example.net', 'male', 560000, 'Salary', 1, 455, '1', 'yes', 'yes', 'yes', 'yes', 'no', 1, '2018-09-07 15:30:14', '2018-09-14 11:10:45'),
(7, 'Bryton', 'Dennis Metru', '', '0754977617', 'bryton@dennis.com', 'male', 906000, 'Hourly', 1, 5600, '1', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-08 15:55:34', '2018-09-13 11:08:19'),
(8, 'Elina', 'Materu', '', '0754977618', 'ylowe@example.net', 'female', 4500000, 'Salary', 1, 0, '1', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-08 16:53:12', '2018-09-26 13:12:18'),
(9, 'beka', 'Mvungi', '', '0754977617', 'admin@homeverge.co.tz', 'male', 340000, 'Salary', 1, 8900, '2', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-08 17:08:27', '2018-09-13 11:46:17'),
(10, 'Bernard sila', 'Materu', '', '0754977618', 'kiondo@homevegfarmers.co.tz', 'male', 4500000, 'Salary', 1, 0, '2', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-12 19:27:24', '2018-09-13 09:33:43'),
(11, 'Jacob', 'Zuma', '', '0754977618', 'ylowe@example.net', 'male', 366929, 'Salary', 1, 3400, '2', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-12 19:31:10', '2018-09-18 14:19:52'),
(12, 'Rihama', 'Ally', '', '0754977617', 'riama@mma.hun', 'female', 940000, 'Salary', 1, 45300, '1', 'yes', 'yes', 'yes', 'yes', 'yes', 1, '2018-09-12 19:33:20', '2018-09-19 16:51:14'),
(13, 'Kibanda', 'Salim', '', '0754977617', 'kibandaa@salim.com', 'male', 670000, 'Hourly', 1, 450, '1', 'yes', 'yes', 'yes', 'no', 'yes', 1, '2018-09-13 09:21:39', '2018-09-13 09:25:29'),
(14, 'Vedasto', 'Alaya', '', '0754977618', NULL, 'female', 600000, 'Salary', 1, 3400, '1', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-13 09:24:55', '2018-09-13 09:24:55'),
(15, 'Mwang', 'Joll', '', '0754977618', 'bryton@dennis.com', 'female', 340000, 'Salary', 4, 3400, '1', 'yes', 'yes', 'yes', 'no', 'no', 1, '2018-09-19 16:27:14', '2018-09-19 16:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `employeestatutes`
--

CREATE TABLE `employeestatutes` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employementstatus`
--

CREATE TABLE `employementstatus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `endcontractreasons`
--

CREATE TABLE `endcontractreasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deasc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `first_name`, `last_name`, `phone`, `email`, `gender`, `creator_id`, `created_at`, `updated_at`) VALUES
(7, 'Salimu', 'Idd', '0658652462', NULL, 'male', 7, '2018-07-31 10:36:37', '2018-07-31 10:36:37'),
(8, 'Twaha', 'Bakari', '0656053953', NULL, 'male', 7, '2018-07-31 10:42:30', '2018-07-31 10:42:30'),
(9, 'Hamisi', 'Saidi', '0658498305', NULL, 'male', 7, '2018-07-31 10:46:31', '2018-07-31 10:46:31'),
(10, 'Mwajuma', 'Saidi', '0658498305', NULL, 'male', 7, '2018-07-31 10:50:10', '2018-07-31 10:50:10'),
(11, 'Mwajuma', 'Saidi', '0658498305', NULL, 'male', 7, '2018-07-31 10:50:11', '2018-07-31 10:50:11'),
(12, 'Yahaya', 'Waziri', '0656110533', NULL, 'male', 7, '2018-07-31 10:57:58', '2018-07-31 10:57:58'),
(13, 'Maliwaza', 'Samweli', '0677598710', NULL, 'female', 10, '2018-08-01 14:40:48', '2018-08-01 14:40:48'),
(14, 'Yahaya', 'Waziri', '0656110533', NULL, 'male', 9, '2018-08-02 22:40:32', '2018-08-02 22:40:32'),
(15, 'Bakari', 'Saidi', '0654461406', NULL, 'male', 9, '2018-08-02 22:51:58', '2018-08-02 22:51:58'),
(16, 'Halima', 'Ibrahimu', '0659126707', NULL, 'female', 9, '2018-08-02 23:05:44', '2018-08-02 23:05:44'),
(17, 'Nuiya', 'Mohamed', '0714607903', NULL, 'female', 9, '2018-08-02 23:11:01', '2018-08-02 23:11:01'),
(18, 'Shakila', 'Issa', '0656429985', NULL, 'female', 9, '2018-08-02 23:26:25', '2018-08-02 23:26:25'),
(19, 'Selemani', 'Ally', '0718679980', NULL, 'male', 9, '2018-08-02 23:47:16', '2018-08-02 23:47:16'),
(20, 'Zakati', 'Amiry', '0659605832', NULL, 'female', 9, '2018-08-02 23:53:40', '2018-08-02 23:53:40'),
(21, 'Zainabu', 'Amiry', '0658532717', NULL, 'female', 9, '2018-08-02 23:57:26', '2018-08-02 23:57:26'),
(22, 'Zalika', 'Ally', '0652397137', NULL, 'female', 9, '2018-08-03 00:01:28', '2018-08-03 00:01:28'),
(23, 'Swaiba', 'Waziri', '0654435279', NULL, 'female', 9, '2018-08-03 00:05:13', '2018-08-03 00:05:13'),
(24, 'Zaituni', 'Ramadhani', '0653589705', NULL, 'female', 9, '2018-08-03 00:13:03', '2018-08-03 00:13:03'),
(25, 'Issa', 'Salehe', '0782911967', NULL, 'male', 9, '2018-08-03 00:19:35', '2018-08-03 00:19:35'),
(26, 'Seph', 'Kimweri', '0715326189', NULL, 'male', 9, '2018-08-03 00:23:52', '2018-08-03 00:23:52'),
(27, 'Asumini', 'Ally', '0715326189', NULL, 'female', 9, '2018-08-03 00:28:02', '2018-08-03 00:28:02'),
(28, 'Bakari', 'Salehe', '0655327104', NULL, 'male', 9, '2018-08-03 00:32:22', '2018-08-03 00:32:22'),
(29, 'Sharifa', 'Idd', '0653042856', NULL, 'female', 9, '2018-08-03 00:36:38', '2018-08-03 00:36:38'),
(30, 'Zaharia', 'Haji', '0689013350', NULL, 'female', 9, '2018-08-03 00:43:43', '2018-08-03 00:43:43'),
(31, 'Mwanahija', 'Ngugi', '0673630755', NULL, 'female', 9, '2018-08-03 00:50:49', '2018-08-03 00:50:49'),
(32, 'Janzila', 'Juma', '0714712891', NULL, 'female', 9, '2018-08-03 00:53:23', '2018-08-03 00:53:23'),
(33, 'Halima', 'Shabani', '0685090954', NULL, 'female', 9, '2018-08-03 01:00:48', '2018-08-03 01:00:48'),
(34, 'Fatuma', 'Ally', '0711806219', NULL, 'female', 9, '2018-08-03 01:10:47', '2018-08-03 01:10:47'),
(35, 'Shabani', 'Amiry', '0712737637', NULL, 'male', 9, '2018-08-03 01:13:53', '2018-08-03 01:13:53'),
(36, 'Mussa', 'Mohamed', '0653382208', NULL, 'male', 9, '2018-08-03 01:20:18', '2018-08-03 01:20:18'),
(37, 'Mussa', 'Mohamed', '0653382208', NULL, 'male', 9, '2018-08-03 01:22:12', '2018-08-03 01:22:12'),
(38, 'Shakila', 'Petro', '0789265609', NULL, 'female', 9, '2018-08-03 14:25:47', '2018-08-03 14:25:47'),
(39, 'Rukia', 'Rajabu', '0672076637', NULL, 'female', 9, '2018-08-03 14:51:33', '2018-08-03 14:51:33'),
(40, 'Islami', 'Omari', '0789265609', NULL, 'male', 9, '2018-08-03 15:41:43', '2018-08-03 15:41:43'),
(41, 'Mariamu', 'Maliki', '0654685309', NULL, 'female', 9, '2018-08-03 15:45:40', '2018-08-03 15:45:40'),
(42, 'Habibu', 'Omari', '0789265609', NULL, 'male', 9, '2018-08-03 15:48:14', '2018-08-03 15:48:14'),
(43, 'Hadija', 'Mtoi', '0658904555', NULL, 'female', 9, '2018-08-03 15:50:45', '2018-08-03 15:50:45'),
(44, 'Ashiri', 'Omari', '0672113246', NULL, 'male', 9, '2018-08-03 15:54:07', '2018-08-03 15:54:07'),
(45, 'Ramadhani', 'Juma', '0710110694', NULL, 'male', 9, '2018-08-03 15:56:37', '2018-08-03 15:56:37'),
(46, 'Amina', 'Mohamed', '0656829160', NULL, 'female', 9, '2018-08-03 15:58:53', '2018-08-03 15:58:53'),
(47, 'Waziri', 'Salimu', '0715265713', NULL, 'male', 9, '2018-08-03 16:01:25', '2018-08-03 16:01:25'),
(48, 'Rajabu', 'Athumani', '0712784574', NULL, 'male', 9, '2018-08-03 16:03:48', '2018-08-03 16:03:48'),
(49, 'Ratibu', 'Mhina', '0653703366', NULL, 'male', 9, '2018-08-03 16:06:27', '2018-08-03 16:06:27'),
(50, 'Mwanaharusi', 'Omari', '0679297103', NULL, 'female', 9, '2018-08-03 16:09:25', '2018-08-03 16:09:25'),
(51, 'Salama', 'Abdala', '0679297103', NULL, 'female', 9, '2018-08-03 16:12:59', '2018-08-03 16:12:59'),
(52, 'Hamida', 'Ally', '0719430996', NULL, 'female', 9, '2018-08-03 16:15:29', '2018-08-03 16:15:29'),
(53, 'Batuli', 'Hashimu', '0676344843', NULL, 'female', 9, '2018-08-03 16:17:54', '2018-08-03 16:17:54'),
(54, 'Jumanne', 'Juma', '0714225987', NULL, 'male', 9, '2018-08-03 16:26:00', '2018-08-03 16:26:00'),
(55, 'Subra', 'Saidi', '0652325370', NULL, 'female', 9, '2018-08-03 16:34:16', '2018-08-03 16:34:16'),
(56, 'Asia', 'Idd', '0654687907', NULL, 'female', 9, '2018-08-03 16:43:48', '2018-08-03 16:43:48'),
(57, 'Zawadi', 'Bakari', '0657141049', NULL, 'female', 9, '2018-08-03 16:46:27', '2018-08-03 16:46:27'),
(58, 'Jumaa', 'Hoza', '0716851756', NULL, 'male', 9, '2018-08-03 16:49:36', '2018-08-03 16:49:36'),
(59, 'Mwanaidi', 'Omari', '0658621150', NULL, 'female', 9, '2018-08-03 16:52:49', '2018-08-03 16:52:49'),
(60, 'Rajabu', 'Mshaghasho', '0652907337', NULL, 'male', 9, '2018-08-03 16:56:03', '2018-08-03 16:56:03'),
(61, 'Rukia', 'Saidi', '0655178850', NULL, 'female', 9, '2018-08-03 16:58:57', '2018-08-03 16:58:57'),
(62, 'Arafa', 'Saidi', '0652745884', NULL, 'female', 9, '2018-08-03 17:02:04', '2018-08-03 17:02:04'),
(63, 'Saidati', 'Jabiri', '0714433236', NULL, 'female', 9, '2018-08-03 17:05:02', '2018-08-03 17:05:02'),
(64, 'Aladi', 'Karata', '0657587454', NULL, 'male', 9, '2018-08-03 17:07:06', '2018-08-03 17:07:06'),
(65, 'Idd', 'Mbilu', '0654305449', NULL, 'male', 9, '2018-08-03 17:09:38', '2018-08-03 17:09:38'),
(66, 'Bihusi', 'Mussa', '0715219862', NULL, 'female', 9, '2018-08-03 17:12:06', '2018-08-03 17:12:06'),
(67, 'Hashimu', 'Abdala', '0713387946', NULL, 'male', 9, '2018-08-03 17:14:46', '2018-08-03 17:14:46'),
(68, 'Alihaji', 'Salimu', '0710760086', NULL, 'male', 9, '2018-08-03 17:17:44', '2018-08-03 17:17:44'),
(69, 'Seph', 'Hoza', '0653831878', NULL, 'male', 9, '2018-08-03 17:20:31', '2018-08-03 17:20:31'),
(70, 'Hija', 'Giriasa', '0627352993', NULL, 'female', 11, '2018-08-03 18:29:37', '2018-08-03 18:29:37'),
(71, 'Salehe', 'Mussa', '0625433133', NULL, 'male', 11, '2018-08-03 18:32:24', '2018-08-03 18:32:24'),
(72, 'Subira', 'Clemenit', '0625433106', NULL, 'female', 11, '2018-08-03 18:35:45', '2018-08-03 18:35:45'),
(73, 'Sara', 'Manase', '0626497856', NULL, 'female', 11, '2018-08-03 18:38:32', '2018-08-03 18:38:32'),
(74, 'Wiliamu', 'Enea', '0627540444', NULL, 'male', 11, '2018-08-03 18:41:36', '2018-08-03 18:41:36'),
(75, 'Enea', 'Mbilu', '0626635932', NULL, 'male', 11, '2018-08-03 18:44:12', '2018-08-03 18:44:12'),
(76, 'Stephano', 'Paulo', '0623680068', NULL, 'male', 11, '2018-08-03 18:46:41', '2018-08-03 18:46:41'),
(77, 'Sophia', 'Alufani', '0787047181', NULL, 'female', 11, '2018-08-03 18:49:21', '2018-08-03 18:49:21'),
(78, 'Hamisi', 'Abedi', '0629973444', NULL, 'male', 11, '2018-08-03 18:51:39', '2018-08-03 18:51:39'),
(79, 'Ramadhani', 'Athumani', '0629717869', NULL, 'male', 11, '2018-08-03 18:54:07', '2018-08-03 18:54:07'),
(80, 'Amina', 'Athumani', '0622294498', NULL, 'female', 11, '2018-08-03 18:59:11', '2018-08-03 18:59:11'),
(81, 'Stela', 'Mauya', '0629973410', NULL, 'female', 11, '2018-08-03 19:02:12', '2018-08-03 19:02:12'),
(82, 'Masaidi', 'Juma', '0685323963', NULL, 'female', 11, '2018-08-03 19:04:26', '2018-08-03 19:04:26'),
(83, 'Rafaeli', 'Paulo', '0623497720', NULL, 'male', 11, '2018-08-03 19:07:09', '2018-08-03 19:07:09'),
(84, 'Maria', 'Paulo', '0788609691', NULL, 'female', 11, '2018-08-03 19:09:34', '2018-08-03 19:09:34'),
(85, 'Lukasi', 'Paulo', '0629711521', NULL, 'male', 11, '2018-08-03 19:12:18', '2018-08-03 19:12:18'),
(86, 'Rozena', 'Paulo', '0623080183', NULL, 'female', 11, '2018-08-03 19:25:22', '2018-08-03 19:25:22'),
(87, 'Rehema', 'Danieli', '0629683955', NULL, 'female', 11, '2018-08-03 19:28:07', '2018-08-03 19:28:07'),
(88, 'Mustafa', 'Ngoma', '0629973395', NULL, 'female', 11, '2018-08-03 19:30:34', '2018-08-03 19:30:34'),
(89, 'Issa', 'Athumani', '0786535401', NULL, 'male', 11, '2018-08-03 19:33:10', '2018-08-03 19:33:10'),
(90, 'Michaeli', 'Mauya', '0629717977', NULL, 'male', 11, '2018-08-03 19:38:38', '2018-08-03 19:38:38'),
(91, 'Danieli', 'Wilisoni', '0629083955', NULL, 'male', 11, '2018-08-03 19:42:16', '2018-08-03 19:42:16'),
(92, 'Felex', 'Yohana', '0629711562', NULL, 'male', 11, '2018-08-03 19:45:21', '2018-08-03 19:45:21'),
(93, 'Ibrahimu', 'Saidi', '0629717821', NULL, 'male', 11, '2018-08-03 19:48:08', '2018-08-03 19:48:08'),
(94, 'Joyce', 'Matamio', '0626553686', NULL, 'female', 11, '2018-08-03 19:50:45', '2018-08-03 19:50:45'),
(95, 'Zainabu', 'Athumani', '0622294498', NULL, 'female', 11, '2018-08-03 19:53:32', '2018-08-03 19:53:32'),
(96, 'Salimu', 'Sengenge', '0629711197', NULL, 'male', 11, '2018-08-03 20:02:52', '2018-08-03 20:02:52'),
(97, 'Zamiru', 'Saidi', '0624928117', NULL, 'male', 11, '2018-08-03 20:05:31', '2018-08-03 20:05:31'),
(98, 'Rozena', 'Tulo', '0629711259', NULL, 'female', 11, '2018-08-03 20:08:12', '2018-08-03 20:08:12'),
(99, 'Tulo', 'Samweli', '0629711259', NULL, 'male', 11, '2018-08-03 20:10:44', '2018-08-03 20:10:44'),
(100, 'Visenti', 'Sengenge', '0624925928', NULL, 'male', 11, '2018-08-03 20:12:59', '2018-08-03 20:12:59'),
(101, 'Maria', 'Petro', '0629445930', NULL, 'female', 11, '2018-08-03 20:17:26', '2018-08-03 20:17:26'),
(102, 'Yasini', 'Kasimu', '0788850657', NULL, 'male', 11, '2018-08-03 20:20:32', '2018-08-03 20:20:32'),
(103, 'Pili', 'Hasani', '0623086929', NULL, 'female', 11, '2018-08-03 20:23:06', '2018-08-03 20:23:06'),
(104, 'Bariatu', 'Kasimu', '0685323963', NULL, 'female', 11, '2018-08-03 20:26:18', '2018-08-03 20:26:18'),
(105, 'Paulo', 'Yohana', '0623080183', NULL, 'male', 11, '2018-08-03 20:28:42', '2018-08-03 20:28:42'),
(106, 'Rehema', 'Silas', '0654417772', NULL, 'female', 6, '2018-08-03 21:29:51', '2018-08-03 21:29:51'),
(107, 'Abdi', 'Juma', '0788536400', NULL, 'male', 7, '2018-08-04 13:10:05', '2018-08-04 13:10:05'),
(108, 'Fatila', 'Shabani', '0712403459', NULL, 'female', 7, '2018-08-04 17:32:59', '2018-08-04 17:32:59'),
(109, 'Mwanahamisi', 'Hasani', '0679508435', NULL, 'female', 7, '2018-08-04 17:36:16', '2018-08-04 17:36:16'),
(110, 'Mwajuma', 'Ally', '0783395957', NULL, 'female', 7, '2018-08-04 17:38:40', '2018-08-04 17:38:40'),
(111, 'Hamisi', 'Athumani', '0653832531', NULL, 'male', 7, '2018-08-04 17:41:45', '2018-08-04 17:41:45'),
(112, 'Rahimu', 'Hamisi', '0676931583', NULL, 'male', 7, '2018-08-04 17:44:04', '2018-08-04 17:44:04'),
(113, 'Hamidu', 'Kiwayo', '0658816181', NULL, 'male', 7, '2018-08-04 17:46:12', '2018-08-04 17:46:12'),
(114, 'Subra', 'Hasani', '0716505183', NULL, 'female', 7, '2018-08-04 17:54:04', '2018-08-04 17:54:04'),
(115, 'Nurudini', 'Juma', '0716505283', NULL, 'male', 7, '2018-08-04 17:56:29', '2018-08-04 17:56:29'),
(116, 'Zaujia', 'Zuberi', '0713143713', NULL, 'female', 7, '2018-08-04 17:59:39', '2018-08-04 17:59:39'),
(117, 'Hutuba', 'Shabani', '0652523665', NULL, 'female', 7, '2018-08-04 18:02:39', '2018-08-04 18:02:39'),
(118, 'Rashidi', 'Hassani', '0655352685', NULL, 'male', 7, '2018-08-04 18:06:24', '2018-08-04 18:06:24'),
(119, 'Asha', 'Juma', '0712159138', NULL, 'female', 7, '2018-08-04 20:56:08', '2018-08-04 20:56:08'),
(120, 'Ayubu', 'Mlugu', '0715519892', NULL, 'male', 7, '2018-08-04 21:01:26', '2018-08-04 21:01:26'),
(121, 'Sadia', 'Omari', '0659419443', NULL, 'female', 7, '2018-08-04 21:04:34', '2018-08-04 21:04:34'),
(122, 'Bituni', 'Ally', '0654755997', NULL, 'female', 7, '2018-08-04 21:07:57', '2018-08-04 21:07:57'),
(123, 'Rajabu', 'Muinde', '0717922098', NULL, 'male', 7, '2018-08-04 21:11:52', '2018-08-04 21:11:52'),
(124, 'Rahimu', 'Adamu', '0679123759', NULL, 'male', 7, '2018-08-04 21:15:21', '2018-08-04 21:15:21'),
(125, 'Bakari', 'Ramadhani', '0654128944', NULL, 'male', 7, '2018-08-04 21:19:24', '2018-08-04 21:19:24'),
(126, 'Halima', 'Husseni', '0783988213', NULL, 'female', 7, '2018-08-04 21:21:58', '2018-08-04 21:21:58'),
(127, 'Mwanaidi', 'Mussa', '0676674686', NULL, 'female', 7, '2018-08-04 21:24:40', '2018-08-04 21:24:40'),
(128, 'Lafii', 'Abdala', '0712403459', NULL, 'male', 7, '2018-08-04 21:34:52', '2018-08-04 21:34:52'),
(129, 'Juma', 'Saidi', '0715519892', NULL, 'male', 7, '2018-08-04 21:40:31', '2018-08-04 21:40:31'),
(130, 'Hadija', 'Ngoma', '0654306824', NULL, 'female', 7, '2018-08-04 21:43:45', '2018-08-04 21:43:45'),
(131, 'Mwajuma', 'Ally', '0783395957', NULL, 'female', 7, '2018-08-04 21:47:58', '2018-08-04 21:47:58'),
(132, 'Mariamu', 'Ibrahimu', '0676674686', NULL, 'female', 7, '2018-08-04 21:51:06', '2018-08-04 21:51:06'),
(133, 'Rehema', 'Ngoma', '0653831927', NULL, 'female', 7, '2018-08-04 21:55:17', '2018-08-04 21:55:17'),
(134, 'Mwanahija', 'Amiry', '0679123759', NULL, 'female', 7, '2018-08-04 21:58:26', '2018-08-04 21:58:26'),
(135, 'Salimu', 'Mahanyu', '0713143713', NULL, 'male', 7, '2018-08-04 22:02:02', '2018-08-04 22:02:02'),
(136, 'Mwajuma', 'Kihiyo', '0784880338', NULL, 'female', 6, '2018-08-05 01:15:08', '2018-08-05 01:15:08'),
(137, 'Mahija', 'Hassan', '0652781221', NULL, 'female', 6, '2018-08-05 01:23:49', '2018-08-05 01:23:49'),
(138, 'Ester', 'Sangoti', '0656651805', NULL, 'female', 6, '2018-08-05 01:30:00', '2018-08-05 01:30:00'),
(139, 'Salimu', 'Bakari', '0654721994', NULL, 'male', 6, '2018-08-05 01:35:33', '2018-08-05 01:35:33'),
(140, 'Felix', 'Ngoda', '0652997282', NULL, 'male', 6, '2018-08-05 01:39:55', '2018-08-05 01:39:55'),
(141, 'Hobokela', 'Moyo', '0672183823', NULL, 'female', 6, '2018-08-05 01:44:14', '2018-08-05 01:44:14'),
(142, 'Elisa', 'Kanju', '0658740678', NULL, 'female', 6, '2018-08-05 01:47:59', '2018-08-05 01:47:59'),
(143, 'Timayo', 'Shehiza', '0712634977', NULL, 'male', 6, '2018-08-05 01:52:11', '2018-08-05 01:52:11'),
(144, 'Rehema', 'Chedi', '0652070863', NULL, 'female', 6, '2018-08-05 01:56:43', '2018-08-05 01:56:43'),
(145, 'Veronica', 'Melton', '0719818919', NULL, 'female', 6, '2018-08-05 02:02:39', '2018-08-05 02:02:39'),
(146, 'Jestina', 'Mashomo', '0657856002', NULL, 'female', 6, '2018-08-05 02:07:06', '2018-08-05 02:07:06'),
(147, 'Juma', 'Kanini', '0784822776', NULL, 'male', 11, '2018-08-06 16:10:02', '2018-08-06 16:10:02'),
(148, 'Bakari', 'Saidi', '0784599049', NULL, 'male', 11, '2018-08-06 16:11:44', '2018-08-06 16:11:44'),
(149, 'Bakari', 'Shabani', '0685447148', NULL, 'male', 11, '2018-08-06 16:13:13', '2018-08-06 16:13:13'),
(150, 'Hamisi', 'Nyika', '0716510362', NULL, 'male', 10, '2018-08-06 17:53:25', '2018-08-06 17:53:25'),
(151, 'Salimu', 'Shemchai', '0719181581', NULL, 'male', 10, '2018-08-06 17:57:09', '2018-08-06 17:57:09'),
(152, 'Omari', 'Haji', '0674550189', NULL, 'male', 10, '2018-08-06 18:01:19', '2018-08-06 18:01:19'),
(153, 'Baliatu', 'Hamis', '0653242261', NULL, 'female', 10, '2018-08-06 18:04:07', '2018-08-06 18:04:07'),
(154, 'Habiba', 'Sadiki', '0718235652', NULL, 'female', 10, '2018-08-06 18:07:15', '2018-08-06 18:07:15'),
(155, 'Hemedi', 'Hassan', '0654453250', NULL, 'male', 10, '2018-08-06 18:12:18', '2018-08-06 18:12:18'),
(156, 'Amiri', 'Sabuni', '0674425219', NULL, 'male', 10, '2018-08-06 18:17:21', '2018-08-06 18:17:21'),
(157, 'Pili', 'Rajabu', '0687941116', NULL, 'female', 11, '2018-08-06 18:23:22', '2018-08-06 18:23:22'),
(158, 'Raisha', 'Hasani', '0786664186', NULL, 'female', 11, '2018-08-06 18:25:15', '2018-08-06 18:25:15'),
(159, 'Azimara', 'Ramadhani', '0688790438', NULL, 'female', 11, '2018-08-06 18:27:06', '2018-08-06 18:27:06'),
(160, 'Shabani', 'Ally', '0628873294', NULL, 'male', 11, '2018-08-06 18:32:39', '2018-08-06 18:32:39'),
(161, 'zaituni', 'Saidi', '0718143997', NULL, 'female', 10, '2018-08-06 18:40:46', '2018-08-06 18:40:46'),
(162, 'Omari', 'Juma', '0674134380', NULL, 'male', 10, '2018-08-06 18:44:28', '2018-08-06 18:44:28'),
(163, 'Aisha', 'Halifani', '0716364216', NULL, 'female', 11, '2018-08-06 19:50:22', '2018-08-06 19:50:22'),
(164, 'Saumu', 'Imamu', '0658255330', NULL, 'female', 11, '2018-08-06 19:54:39', '2018-08-06 19:54:39'),
(165, 'Arabia', 'Hashimu', '0656048866', NULL, 'female', 11, '2018-08-06 19:57:03', '2018-08-06 19:57:03'),
(166, 'Mwanahawa', 'Selemani', '0652358230', NULL, 'female', 11, '2018-08-06 19:58:45', '2018-08-06 19:58:45'),
(167, 'Rehema', 'Juma', '0657307401', NULL, 'female', 11, '2018-08-06 20:00:36', '2018-08-06 20:00:36'),
(168, 'Jamila', 'Paulo', '0659319191', NULL, 'female', 11, '2018-08-06 20:02:21', '2018-08-06 20:02:21'),
(169, 'Batuli', 'Shekomba', '0713376694', NULL, 'female', 11, '2018-08-06 20:03:49', '2018-08-06 20:03:49'),
(170, 'Mwanaidi', 'Shegia', '0656933886', NULL, 'female', 11, '2018-08-06 20:05:26', '2018-08-06 20:05:26'),
(171, 'Jaulina', 'Juma', '0659300460', NULL, 'female', 11, '2018-08-06 20:06:52', '2018-08-06 20:06:52'),
(172, 'Tatu', 'Salimu', '0686829102', NULL, 'female', 11, '2018-08-06 20:09:27', '2018-08-06 20:09:27'),
(173, 'Batuli', 'Mohamed', '0717874537', NULL, 'female', 11, '2018-08-06 20:11:57', '2018-08-06 20:11:57'),
(174, 'Safina', 'Ally', '0655327102', NULL, 'female', 11, '2018-08-06 20:13:27', '2018-08-06 20:13:27'),
(175, 'Saida', 'Rajabu', '0714225987', NULL, 'female', 11, '2018-08-06 20:15:32', '2018-08-06 20:15:32'),
(176, 'Hamisi', 'Rajabu', '0784816837', NULL, 'female', 11, '2018-08-06 20:17:52', '2018-08-06 20:17:52'),
(177, 'Farida', 'Mustapha', '0787000068', NULL, 'female', 11, '2018-08-06 20:19:34', '2018-08-06 20:19:34'),
(178, 'Fadhili', 'Ally', '0718292766', NULL, 'female', 11, '2018-08-06 20:20:57', '2018-08-06 20:20:57'),
(179, 'Mwanaidani', 'Hasani', '0714140276', NULL, 'female', 11, '2018-08-06 20:22:59', '2018-08-06 20:22:59'),
(180, 'Zaina', 'Alimasi', '0677947892', NULL, 'female', 11, '2018-08-06 20:26:42', '2018-08-06 20:26:42'),
(181, 'Zakia', 'Rashidi', '0653276469', NULL, 'female', 11, '2018-08-06 20:28:17', '2018-08-06 20:28:17'),
(182, 'Pili', 'Hoza', '0716505739', NULL, 'female', 11, '2018-08-06 20:29:44', '2018-08-06 20:29:44'),
(183, 'Rahima', 'Adamu', '0656456888', NULL, 'female', 11, '2018-08-06 20:31:35', '2018-08-06 20:31:35'),
(184, 'Zuena', 'Ramadhani', '0652746664', NULL, 'female', 11, '2018-08-06 20:33:13', '2018-08-06 20:33:13'),
(185, 'Shamila', 'Ramadhani', '0675715452', NULL, 'female', 11, '2018-08-06 20:34:47', '2018-08-06 20:34:47'),
(186, 'Femida', 'Jumanne', '0719376648', NULL, 'female', 11, '2018-08-06 20:36:33', '2018-08-06 20:36:33'),
(187, 'Penel', 'Petro', '0786619810', NULL, 'female', 11, '2018-08-06 20:38:51', '2018-08-06 20:38:51'),
(188, 'Wiliamu', 'Tumaini', '0629971060', NULL, 'male', 11, '2018-08-06 20:40:28', '2018-08-06 20:40:28'),
(189, 'Rehema', 'Shikamana', '0629710408', NULL, 'female', 11, '2018-08-06 20:42:15', '2018-08-06 20:42:15'),
(190, 'Beatrice', 'Kundaeli', '0629974329', NULL, 'female', 11, '2018-08-06 20:44:06', '2018-08-06 20:44:06'),
(191, 'Raheli', 'Hoza', '0629717698', NULL, 'female', 11, '2018-08-06 20:45:51', '2018-08-06 20:45:51'),
(192, 'Omari', 'Simoni', '0785562840', NULL, 'male', 11, '2018-08-07 21:01:12', '2018-08-07 21:01:12'),
(193, 'Samweli', 'Devil', '0686503223', NULL, 'male', 11, '2018-08-07 21:03:59', '2018-08-07 21:03:59'),
(194, 'Theofil', 'Williamu', '0783025200', NULL, 'male', 11, '2018-08-07 21:05:42', '2018-08-07 21:05:42'),
(195, 'Latifa', 'Adamu', '0626562007', NULL, 'female', 11, '2018-08-07 21:07:18', '2018-08-07 21:07:18'),
(196, 'Hashimu', 'Ramadhani', '0629710960', NULL, 'male', 11, '2018-08-07 21:08:49', '2018-08-07 21:08:49'),
(197, 'Salome', 'Jengo', '0788256413', NULL, 'female', 11, '2018-08-07 21:10:18', '2018-08-07 21:10:18'),
(198, 'Elieza', 'Jengo', '0786172680', NULL, 'male', 11, '2018-08-07 21:12:02', '2018-08-07 21:12:02'),
(199, 'Prsica', 'Lukasi', '0629711521', NULL, 'female', 11, '2018-08-07 21:13:56', '2018-08-07 21:13:56'),
(200, 'Anna', 'Richadi', '0629717740', NULL, 'female', 11, '2018-08-07 21:15:44', '2018-08-07 21:15:44'),
(201, 'Amina', 'Omari', '0787114702', NULL, 'female', 11, '2018-08-07 21:17:28', '2018-08-07 21:17:28'),
(202, 'Stellah', 'Jascitis', '0783322266', NULL, 'female', 11, '2018-08-07 21:21:11', '2018-08-07 21:21:11'),
(203, 'Selina', 'Nathanaeli', '0628749560', NULL, 'female', 11, '2018-08-07 21:25:51', '2018-08-07 21:25:51'),
(204, 'Sauli', 'Mahimbo', '0656921428', NULL, 'male', 6, '2018-08-09 00:23:18', '2018-08-09 00:23:18'),
(205, 'Isaka', 'Singano', '0712453655', NULL, 'male', 6, '2018-08-09 00:34:46', '2018-08-09 00:34:46'),
(206, 'Anna', 'Kanju', '0718068370', NULL, 'female', 6, '2018-08-09 00:41:20', '2018-08-09 00:41:20'),
(207, 'Miriam', 'Mdoe', '0712135053', NULL, 'female', 10, '2018-08-09 14:04:31', '2018-08-09 14:04:31'),
(208, 'Stela', 'Theophil', '0629973410', NULL, 'female', 11, '2018-08-09 19:39:15', '2018-08-09 19:39:15'),
(209, 'Thomas', 'Nyangasa', '0658945874', NULL, 'male', 6, '2018-08-14 13:13:33', '2018-08-14 13:13:33'),
(210, 'Josephine', 'Singano', '0719796855', NULL, 'female', 6, '2018-08-14 13:35:56', '2018-08-14 13:35:56'),
(211, 'Lazaro', 'Chedi', '0717643930', NULL, 'male', 6, '2018-08-14 13:39:23', '2018-08-14 13:39:23'),
(212, 'Potina', 'Kuzirwa', '0672100435', NULL, 'female', 6, '2018-08-14 13:43:15', '2018-08-14 13:43:15'),
(213, 'Yosia', 'Kanju', '0653568268', NULL, 'male', 6, '2018-08-14 13:53:51', '2018-08-14 13:53:51'),
(214, 'Miraji', 'Sabbia', '0656044542', NULL, 'male', 6, '2018-08-14 14:00:43', '2018-08-14 14:00:43'),
(215, 'Hamis', 'Nyika', '0716510362', NULL, 'male', 10, '2018-08-14 14:03:16', '2018-08-14 14:03:16'),
(216, 'Prisna', 'Mahimbo', '0658613069', NULL, 'female', 6, '2018-08-14 14:03:55', '2018-08-14 14:03:55'),
(217, 'Zawadi', 'Shembilu', '0658613069', NULL, 'female', 6, '2018-08-14 14:07:41', '2018-08-14 14:07:41'),
(218, 'Salimu', 'Shemchai', '0719181581', NULL, 'male', 10, '2018-08-14 14:07:42', '2018-08-14 14:07:42'),
(219, 'Miriam', 'Mdoe', '0712135053', NULL, 'female', 6, '2018-08-14 14:10:40', '2018-08-14 14:10:40'),
(220, 'Omari', 'Haji', '0674550189', NULL, 'male', 10, '2018-08-14 14:11:14', '2018-08-14 14:11:14'),
(221, 'Magdalena', 'Mdoe', '0718891062', NULL, 'female', 6, '2018-08-15 13:46:35', '2018-08-15 13:46:35'),
(222, 'Suzana', 'Onai', '0657843075', NULL, 'female', 6, '2018-08-15 13:49:09', '2018-08-15 13:49:09'),
(223, 'Felister', 'Kimweli', '0713131106', NULL, 'female', 6, '2018-08-15 13:51:59', '2018-08-15 13:51:59'),
(224, 'Anna', 'Kilimali', '0654028617', NULL, 'female', 6, '2018-08-15 13:55:10', '2018-08-15 13:55:10'),
(225, 'Jonas', 'Richard', '0712244438', NULL, 'male', 6, '2018-08-15 13:58:03', '2018-08-15 13:58:03'),
(226, 'Simon', 'Mahiza', '0758229427', NULL, 'male', 6, '2018-08-15 14:02:17', '2018-08-15 14:02:17'),
(227, 'Florence', 'Mahiza', '0658613069', NULL, 'female', 6, '2018-08-15 14:04:46', '2018-08-15 14:04:46'),
(228, 'Omari', 'Daudi', '0713724910', NULL, 'male', 6, '2018-08-15 14:07:23', '2018-08-15 14:07:23'),
(229, 'Jemes', 'Barua', '0716782880', NULL, 'male', 6, '2018-08-15 14:09:47', '2018-08-15 14:09:47'),
(230, 'Tumaini', 'Kihiyo', '0712225295', NULL, 'male', 6, '2018-08-15 14:13:40', '2018-08-15 14:13:40'),
(231, 'Onice', 'Kihiyo', '0712225295', NULL, 'female', 6, '2018-08-15 14:16:31', '2018-08-15 14:16:31'),
(232, 'Maria', 'Singano', '0713592161', NULL, 'female', 6, '2018-08-15 14:18:58', '2018-08-15 14:18:58'),
(233, 'Julius', 'Barua', '0716782880', NULL, 'male', 6, '2018-08-15 14:21:51', '2018-08-15 14:21:51'),
(234, 'Test', 'Test', '0754977618', 'pangdeny@gmail.com', 'male', 12, '2018-08-16 16:08:51', '2018-08-16 16:08:51'),
(235, 'Malota', 'Soma', '0754977618', 'pangdeny@gmail.com', 'male', 1, '2018-09-05 09:07:07', '2018-09-05 09:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_batch`
--

CREATE TABLE `farmer_batch` (
  `id` int(10) UNSIGNED NOT NULL,
  `farmer_id` int(10) UNSIGNED DEFAULT NULL,
  `batch_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmer_batch`
--

INSERT INTO `farmer_batch` (`id`, `farmer_id`, `batch_id`, `created_at`, `updated_at`) VALUES
(3, 7, 4, '2018-08-24 19:02:30', '2018-08-24 19:02:30'),
(4, 11, 4, '2018-08-24 19:10:25', '2018-08-24 19:10:25'),
(5, 13, 4, '2018-08-24 19:11:23', '2018-08-24 19:11:23'),
(6, 180, 4, '2018-08-24 19:50:49', '2018-08-24 19:50:49'),
(7, 7, 5, '2018-08-27 20:50:41', '2018-08-27 20:50:41'),
(8, 9, 5, '2018-08-27 20:51:30', '2018-08-27 20:51:30'),
(9, 11, 5, '2018-08-27 20:52:30', '2018-08-27 20:52:30'),
(10, 13, 5, '2018-08-27 20:55:04', '2018-08-27 20:55:04'),
(11, 15, 5, '2018-08-27 20:56:19', '2018-08-27 20:56:19'),
(12, 234, 2, '2018-08-28 13:20:01', '2018-08-28 13:20:01'),
(16, 7, 8, '2018-08-28 20:27:41', '2018-08-28 20:27:41'),
(17, 8, 8, '2018-08-28 20:28:19', '2018-08-28 20:28:19'),
(18, 9, 8, '2018-08-28 20:28:56', '2018-08-28 20:28:56'),
(19, 235, 8, '2018-09-05 09:13:16', '2018-09-05 09:13:16'),
(20, 11, 8, '2018-09-21 10:14:46', '2018-09-21 10:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `farms`
--

CREATE TABLE `farms` (
  `id` int(10) UNSIGNED NOT NULL,
  `size` double NOT NULL,
  `size_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `farmer_id` int(10) UNSIGNED DEFAULT NULL,
  `block_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farms`
--

INSERT INTO `farms` (`id`, `size`, `size_unit`, `farmer_id`, `block_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 10, 'Hectare', 1, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', '2018-07-29 11:03:18', '2018-07-29 11:03:18'),
(2, 7, 'Hectare', 2, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', '2018-07-29 12:20:07', '2018-07-29 12:20:07'),
(3, 1, 'Hectare', 3, 0, 'kijiji', '2018-07-30 16:15:54', '2018-07-30 16:15:54'),
(4, 2, 'Hectare', 6, 0, 'BOMBO', '2018-07-30 18:31:55', '2018-07-30 18:31:55'),
(5, 2, 'Hectare', 4, 0, 'Kwalei', '2018-07-30 18:35:15', '2018-07-30 18:35:15'),
(6, 2, 'Hectare', 4, 0, 'Mheza', '2018-07-30 18:38:03', '2018-07-30 18:38:03'),
(7, 1, 'Hectare', 5, 0, 'Peas', '2018-07-30 18:41:03', '2018-07-30 18:41:03'),
(8, 5, 'Hectare', 4, 0, 'Manka', '2018-07-30 18:45:44', '2018-07-30 18:45:44'),
(9, 5, 'Hectare', 4, 0, 'Manka', '2018-07-30 18:46:48', '2018-07-30 18:46:48'),
(10, 4, 'Hectare', 6, 0, 'addf', '2018-07-30 18:53:05', '2018-07-30 18:53:05'),
(11, 0.1, 'Hectare', 7, 0, 'Bombo', '2018-07-31 10:38:11', '2018-07-31 10:38:11'),
(12, 0.19, 'Hectare', 8, 0, 'Bombo', '2018-07-31 10:43:30', '2018-07-31 10:43:30'),
(13, 0.06, 'Hectare', 9, 0, 'Bombo', '2018-07-31 10:47:22', '2018-07-31 10:47:22'),
(14, 0.05, 'Hectare', 11, 0, 'Bombo', '2018-07-31 10:52:34', '2018-07-31 10:52:34'),
(15, 0.05, 'Hectare', 12, 0, 'Bombo', '2018-07-31 10:59:09', '2018-07-31 10:59:09'),
(16, 0.04, 'Hectare', 13, 0, 'Peas', '2018-08-01 14:43:22', '2018-08-01 14:43:22'),
(17, 0.05, 'Hectare', 14, 0, 'Bombo', '2018-08-02 22:41:30', '2018-08-02 22:41:30'),
(18, 0.07, 'Hectare', 15, 0, 'Bombo', '2018-08-02 22:55:35', '2018-08-02 22:55:35'),
(19, 0.06, 'Hectare', 16, 0, 'Bombo', '2018-08-02 23:08:05', '2018-08-02 23:08:05'),
(20, 0.065, 'Hectare', 18, 0, 'Bombo', '2018-08-02 23:41:05', '2018-08-02 23:41:05'),
(21, 0.055, 'Hectare', 17, 0, 'Bombo', '2018-08-02 23:44:39', '2018-08-02 23:44:39'),
(22, 0.08, 'Hectare', 19, 0, 'Bombo', '2018-08-02 23:47:54', '2018-08-02 23:47:54'),
(23, 0.235, 'Hectare', 20, 0, 'Bombo', '2018-08-02 23:54:54', '2018-08-02 23:54:54'),
(24, 0.033, 'Hectare', 21, 0, 'Bombo', '2018-08-02 23:58:16', '2018-08-02 23:58:16'),
(25, 0.1, 'Hectare', 22, 0, 'Bombo', '2018-08-03 00:02:01', '2018-08-03 00:02:01'),
(26, 0.055, 'Hectare', 23, 0, 'Bombo', '2018-08-03 00:05:52', '2018-08-03 00:05:52'),
(27, 0.07, 'Hectare', 24, 0, 'Bombo', '2018-08-03 00:13:56', '2018-08-03 00:13:56'),
(28, 0.07, 'Hectare', 25, 0, 'Bombo', '2018-08-03 00:20:24', '2018-08-03 00:20:24'),
(29, 0.065, 'Hectare', 26, 0, 'Bombo', '2018-08-03 00:25:08', '2018-08-03 00:25:08'),
(30, 0.06, 'Hectare', 27, 0, 'Bombo', '2018-08-03 00:28:42', '2018-08-03 00:28:42'),
(31, 0.073, 'Hectare', 28, 0, 'Bombo', '2018-08-03 00:33:59', '2018-08-03 00:33:59'),
(32, 0.095, 'Hectare', 29, 0, 'Bombo', '2018-08-03 00:41:22', '2018-08-03 00:41:22'),
(33, 0.053, 'Hectare', 30, 0, 'Bombo', '2018-08-03 00:48:18', '2018-08-03 00:48:18'),
(34, 0.08, 'Hectare', 31, 0, 'Bombo', '2018-08-03 00:51:22', '2018-08-03 00:51:22'),
(35, 0.05, 'Hectare', 32, 0, 'Bombo', '2018-08-03 00:55:24', '2018-08-03 00:55:24'),
(36, 0.186, 'Hectare', 33, 0, 'Bombo', '2018-08-03 01:02:41', '2018-08-03 01:02:41'),
(37, 0.1, 'Hectare', 34, 0, 'Bombo', '2018-08-03 01:11:24', '2018-08-03 01:11:24'),
(38, 0.2, 'Hectare', 35, 0, 'Bombo', '2018-08-03 01:14:39', '2018-08-03 01:14:39'),
(39, 0.12, 'Hectare', 37, 0, 'Bombo', '2018-08-03 01:22:52', '2018-08-03 01:22:52'),
(40, 0.08, 'Hectare', 38, 0, 'Bombo', '2018-08-03 14:32:03', '2018-08-03 14:32:03'),
(41, 0.13, 'Hectare', 39, 0, 'Bombo', '2018-08-03 15:39:31', '2018-08-03 15:39:31'),
(42, 0.093, 'Hectare', 40, 0, 'Bombo', '2018-08-03 15:42:28', '2018-08-03 15:42:28'),
(43, 0.12, 'Hectare', 41, 0, 'Bombo', '2018-08-03 15:46:25', '2018-08-03 15:46:25'),
(44, 0.13, 'Hectare', 42, 0, 'Bombo', '2018-08-03 15:48:50', '2018-08-03 15:48:50'),
(45, 0.1, 'Hectare', 43, 0, 'Bombo', '2018-08-03 15:51:16', '2018-08-03 15:51:16'),
(46, 0.11, 'Hectare', 44, 0, 'Bombo', '2018-08-03 15:54:44', '2018-08-03 15:54:44'),
(47, 0.13, 'Hectare', 45, 0, 'Bombo', '2018-08-03 15:57:09', '2018-08-03 15:57:09'),
(48, 0.06, 'Hectare', 46, 0, 'Bombo', '2018-08-03 15:59:26', '2018-08-03 15:59:26'),
(49, 0.07, 'Hectare', 47, 0, 'Bombo', '2018-08-03 16:01:56', '2018-08-03 16:01:56'),
(50, 0.068, 'Hectare', 48, 0, 'Bombo', '2018-08-03 16:04:22', '2018-08-03 16:04:22'),
(51, 0.1, 'Hectare', 49, 0, 'Bombo', '2018-08-03 16:07:04', '2018-08-03 16:07:04'),
(52, 0.15, 'Hectare', 50, 0, 'Bombo', '2018-08-03 16:10:03', '2018-08-03 16:10:03'),
(53, 0.06, 'Hectare', 51, 0, 'Bombo', '2018-08-03 16:13:31', '2018-08-03 16:13:31'),
(54, 0.08, 'Hectare', 52, 0, 'Bombo', '2018-08-03 16:16:02', '2018-08-03 16:16:02'),
(55, 0.07, 'Hectare', 53, 0, 'Bombo', '2018-08-03 16:20:58', '2018-08-03 16:20:58'),
(56, 0.091, 'Hectare', 54, 0, 'Bombo', '2018-08-03 16:26:36', '2018-08-03 16:26:36'),
(57, 0.077, 'Hectare', 55, 0, 'Bombo', '2018-08-03 16:34:55', '2018-08-03 16:34:55'),
(58, 0.026, 'Hectare', 56, 0, 'Bombo', '2018-08-03 16:44:31', '2018-08-03 16:44:31'),
(59, 0.07, 'Hectare', 57, 0, 'Bombo', '2018-08-03 16:46:59', '2018-08-03 16:46:59'),
(60, 0.091, 'Hectare', 58, 0, 'Bombo', '2018-08-03 16:50:13', '2018-08-03 16:50:13'),
(61, 0.086, 'Hectare', 59, 0, 'Bombo', '2018-08-03 16:53:40', '2018-08-03 16:53:40'),
(62, 0.12, 'Hectare', 60, 0, 'Bombo', '2018-08-03 16:56:43', '2018-08-03 16:56:43'),
(63, 0.08, 'Hectare', 61, 0, 'Bombo', '2018-08-03 16:59:59', '2018-08-03 16:59:59'),
(64, 0.06, 'Hectare', 62, 0, 'Bombo', '2018-08-03 17:02:46', '2018-08-03 17:02:46'),
(65, 0.053, 'Hectare', 63, 0, 'Bombo', '2018-08-03 17:05:41', '2018-08-03 17:05:41'),
(66, 0.07, 'Hectare', 64, 0, 'Bombo', '2018-08-03 17:07:53', '2018-08-03 17:07:53'),
(67, 0.13, 'Hectare', 65, 0, 'Bombo', '2018-08-03 17:10:17', '2018-08-03 17:10:17'),
(68, 0.049, 'Hectare', 66, 0, 'Bombo', '2018-08-03 17:12:45', '2018-08-03 17:12:45'),
(69, 0.13, 'Hectare', 67, 0, 'Bombo', '2018-08-03 17:15:25', '2018-08-03 17:15:25'),
(70, 0.5, 'Hectare', 68, 0, 'Bombo', '2018-08-03 17:18:28', '2018-08-03 17:18:28'),
(71, 0.06, 'Hectare', 69, 0, 'Bombo', '2018-08-03 17:21:04', '2018-08-03 17:21:04'),
(72, 0.01, 'Hectare', 70, 0, 'Kwalei', '2018-08-03 18:30:19', '2018-08-03 18:30:19'),
(73, 0.05, 'Hectare', 71, 0, 'Kwalei', '2018-08-03 18:32:58', '2018-08-03 18:32:58'),
(74, 0.067, 'Hectare', 72, 0, 'Kwalei', '2018-08-03 18:36:27', '2018-08-03 18:36:27'),
(75, 0.056, 'Hectare', 73, 0, 'Kwalei', '2018-08-03 18:39:41', '2018-08-03 18:39:41'),
(76, 0.04, 'Hectare', 74, 0, 'Kwalei', '2018-08-03 18:42:17', '2018-08-03 18:42:17'),
(77, 0.02, 'Hectare', 75, 0, 'Kwalei', '2018-08-03 18:44:44', '2018-08-03 18:44:44'),
(78, 0.05, 'Hectare', 76, 0, 'Kwalei', '2018-08-03 18:47:11', '2018-08-03 18:47:11'),
(79, 0.03, 'Hectare', 77, 0, 'Kwalei', '2018-08-03 18:49:56', '2018-08-03 18:49:56'),
(80, 0.05, 'Hectare', 78, 0, 'Kwalei', '2018-08-03 18:52:10', '2018-08-03 18:52:10'),
(81, 0.111, 'Hectare', 79, 0, 'Kwalei', '2018-08-03 18:54:59', '2018-08-03 18:54:59'),
(82, 0.0494, 'Hectare', 80, 0, 'Kwalei', '2018-08-03 18:59:59', '2018-08-03 18:59:59'),
(83, 0.035, 'Hectare', 81, 0, 'Kwalei', '2018-08-03 19:02:48', '2018-08-03 19:02:48'),
(84, 0.06, 'Hectare', 82, 0, 'Kwalei', '2018-08-03 19:05:22', '2018-08-03 19:05:22'),
(85, 0.03, 'Hectare', 83, 0, 'Kwalei', '2018-08-03 19:07:41', '2018-08-03 19:07:41'),
(86, 0.15, 'Hectare', 84, 0, 'Kwalei', '2018-08-03 19:10:17', '2018-08-03 19:10:17'),
(87, 0.08, 'Hectare', 85, 0, 'Kwalei', '2018-08-03 19:13:24', '2018-08-03 19:13:24'),
(88, 0.056, 'Hectare', 86, 0, 'Kwalei', '2018-08-03 19:26:01', '2018-08-03 19:26:01'),
(89, 0.05, 'Hectare', 87, 0, 'Kwalei', '2018-08-03 19:28:41', '2018-08-03 19:28:41'),
(90, 0.024, 'Hectare', 88, 0, 'Kwalei', '2018-08-03 19:31:07', '2018-08-03 19:31:07'),
(91, 0.14, 'Hectare', 89, 0, 'Kwalei', '2018-08-03 19:33:48', '2018-08-03 19:33:48'),
(92, 0.36, 'Hectare', 90, 0, 'Kwalei', '2018-08-03 19:39:19', '2018-08-03 19:39:19'),
(93, 0.1, 'Hectare', 91, 0, 'Kwalei', '2018-08-03 19:42:53', '2018-08-03 19:42:53'),
(94, 0.027, 'Hectare', 92, 0, 'Kwalei', '2018-08-03 19:46:03', '2018-08-03 19:46:03'),
(95, 0.1, 'Hectare', 93, 0, 'Kwalei', '2018-08-03 19:49:11', '2018-08-03 19:49:11'),
(96, 0.02, 'Hectare', 94, 0, 'Kwalei', '2018-08-03 19:51:23', '2018-08-03 19:51:23'),
(97, 0.04, 'Hectare', 95, 0, 'Kwalei', '2018-08-03 19:54:04', '2018-08-03 19:54:04'),
(98, 0.05, 'Hectare', 96, 0, 'Kwalei', '2018-08-03 20:03:30', '2018-08-03 20:03:30'),
(99, 0.12, 'Hectare', 97, 0, 'Kwalei', '2018-08-03 20:06:11', '2018-08-03 20:06:11'),
(100, 0.037, 'Hectare', 98, 0, 'Kwalei', '2018-08-03 20:08:53', '2018-08-03 20:08:53'),
(101, 0.05, 'Hectare', 99, 0, 'Kwalei', '2018-08-03 20:11:17', '2018-08-03 20:11:17'),
(102, 0.23, 'Hectare', 100, 0, 'Kwalei', '2018-08-03 20:13:42', '2018-08-03 20:13:42'),
(103, 0.07, 'Hectare', 101, 0, 'Kwalei', '2018-08-03 20:17:59', '2018-08-03 20:17:59'),
(104, 0.046, 'Hectare', 102, 0, 'Kwalei', '2018-08-03 20:21:24', '2018-08-03 20:21:24'),
(105, 0.1, 'Hectare', 103, 0, 'Kwalei', '2018-08-03 20:24:11', '2018-08-03 20:24:11'),
(106, 0.03, 'Hectare', 104, 0, 'Kwalei', '2018-08-03 20:26:49', '2018-08-03 20:26:49'),
(107, 0.022, 'Hectare', 105, 0, 'Kwalei', '2018-08-03 20:29:12', '2018-08-03 20:29:12'),
(108, 0.068, 'Hectare', 107, 0, 'Maruati', '2018-08-04 13:11:07', '2018-08-04 13:11:07'),
(109, 0.0211, 'Hectare', 108, 0, 'Maruati', '2018-08-04 17:34:02', '2018-08-04 17:34:02'),
(110, 0.07, 'Hectare', 109, 0, 'Maruati', '2018-08-04 17:36:52', '2018-08-04 17:36:52'),
(111, 0.04, 'Hectare', 110, 0, 'Maruati', '2018-08-04 17:39:13', '2018-08-04 17:39:13'),
(112, 0.047, 'Hectare', 111, 0, 'Maruati', '2018-08-04 17:42:21', '2018-08-04 17:42:21'),
(113, 0.03, 'Hectare', 112, 0, 'Maruati', '2018-08-04 17:44:38', '2018-08-04 17:44:38'),
(114, 0.08, 'Hectare', 113, 0, 'Maruati', '2018-08-04 17:46:46', '2018-08-04 17:46:46'),
(115, 0.06, 'Hectare', 114, 0, 'Maruati', '2018-08-04 17:54:39', '2018-08-04 17:54:39'),
(116, 0.04, 'Hectare', 115, 0, 'Maruati', '2018-08-04 17:57:01', '2018-08-04 17:57:01'),
(117, 0.06, 'Hectare', 116, 0, 'Maruati', '2018-08-04 18:00:12', '2018-08-04 18:00:12'),
(118, 0.047, 'Hectare', 117, 0, 'Maruati', '2018-08-04 18:03:33', '2018-08-04 18:03:33'),
(119, 0.06, 'Hectare', 118, 0, 'Maruati', '2018-08-04 18:06:49', '2018-08-04 18:06:49'),
(120, 0.02, 'Hectare', 119, 0, 'Maruati', '2018-08-04 20:56:53', '2018-08-04 20:56:53'),
(121, 0.07, 'Hectare', 120, 0, 'Maruati', '2018-08-04 21:02:00', '2018-08-04 21:02:00'),
(122, 0.04, 'Hectare', 121, 0, 'Maruati', '2018-08-04 21:05:07', '2018-08-04 21:05:07'),
(123, 0.04, 'Hectare', 122, 0, 'Maruati', '2018-08-04 21:08:37', '2018-08-04 21:08:37'),
(124, 0.02, 'Hectare', 123, 0, 'Maruati', '2018-08-04 21:13:03', '2018-08-04 21:13:03'),
(125, 0.03, 'Hectare', 124, 0, 'Maruati', '2018-08-04 21:15:58', '2018-08-04 21:15:58'),
(126, 0.04, 'Hectare', 125, 0, 'Maruati', '2018-08-04 21:20:02', '2018-08-04 21:20:02'),
(127, 0.087, 'Hectare', 126, 0, 'Maruati', '2018-08-04 21:22:30', '2018-08-04 21:22:30'),
(128, 0.03, 'Hectare', 127, 0, 'Maruati', '2018-08-04 21:25:21', '2018-08-04 21:25:21'),
(129, 0.033, 'Hectare', 128, 0, 'Maruati', '2018-08-04 21:35:42', '2018-08-04 21:35:42'),
(130, 0.04, 'Hectare', 129, 0, 'Maruati', '2018-08-04 21:41:09', '2018-08-04 21:41:09'),
(131, 0.03, 'Hectare', 130, 0, 'Maruati', '2018-08-04 21:45:04', '2018-08-04 21:45:04'),
(132, 0.06, 'Hectare', 131, 0, 'Maruati', '2018-08-04 21:48:38', '2018-08-04 21:48:38'),
(133, 0.03, 'Hectare', 132, 0, 'Maruati', '2018-08-04 21:51:46', '2018-08-04 21:51:46'),
(134, 0.05, 'Hectare', 133, 0, 'Maruati', '2018-08-04 21:55:58', '2018-08-04 21:55:58'),
(135, 0.03, 'Hectare', 134, 0, 'Maruati', '2018-08-04 21:59:31', '2018-08-04 21:59:31'),
(136, 0.05, 'Hectare', 135, 0, 'Maruati', '2018-08-04 22:02:44', '2018-08-04 22:02:44'),
(137, 0.04, 'Hectare', 106, 0, 'fine peas', '2018-08-05 01:02:07', '2018-08-05 01:02:07'),
(138, 0.04, 'Hectare', 136, 0, 'fine peas', '2018-08-05 01:16:39', '2018-08-05 01:16:39'),
(139, 0.04, 'Hectare', 137, 0, 'fine peas', '2018-08-05 01:25:49', '2018-08-05 01:25:49'),
(140, 0.04, 'Hectare', 138, 0, 'fine peas', '2018-08-05 01:31:07', '2018-08-05 01:31:07'),
(141, 0.125, 'Hectare', 139, 0, 'fine peas', '2018-08-05 01:36:52', '2018-08-05 01:36:52'),
(142, 0.125, 'Hectare', 140, 0, 'fine peas', '2018-08-05 01:41:02', '2018-08-05 01:41:02'),
(143, 0.21, 'Hectare', 141, 0, 'fine peas', '2018-08-05 01:45:14', '2018-08-05 01:45:14'),
(144, 0.04, 'Hectare', 142, 0, 'fine peas', '2018-08-05 01:48:59', '2018-08-05 01:48:59'),
(145, 0.08, 'Hectare', 143, 0, 'fine peas', '2018-08-05 01:53:05', '2018-08-05 01:53:05'),
(146, 0.18, 'Hectare', 144, 0, 'fine beans', '2018-08-05 01:57:43', '2018-08-05 01:57:43'),
(147, 0.13, 'Hectare', 145, 0, 'fine beans', '2018-08-05 02:03:57', '2018-08-05 02:03:57'),
(148, 0.13, 'Hectare', 146, 0, 'fine beans', '2018-08-05 02:07:58', '2018-08-05 02:07:58'),
(149, 0.04, 'Hectare', 150, 0, 'Peas', '2018-08-06 17:54:16', '2018-08-06 17:54:16'),
(150, 0.04, 'Hectare', 151, 0, 'Peas', '2018-08-06 17:58:42', '2018-08-06 17:58:42'),
(151, 0.08, 'Hectare', 152, 0, 'Peas', '2018-08-06 18:01:54', '2018-08-06 18:01:54'),
(152, 0.06, 'Hectare', 153, 0, 'Peas', '2018-08-06 18:05:08', '2018-08-06 18:05:08'),
(153, 0.08, 'Hectare', 154, 0, 'Peas', '2018-08-06 18:07:52', '2018-08-06 18:07:52'),
(154, 0.04, 'Hectare', 155, 0, 'Peas', '2018-08-06 18:13:14', '2018-08-06 18:13:14'),
(155, 0.06, 'Hectare', 156, 0, 'Peas', '2018-08-06 18:18:07', '2018-08-06 18:18:07'),
(156, 0.04, 'Hectare', 157, 0, 'Kwalei', '2018-08-06 18:23:55', '2018-08-06 18:23:55'),
(157, 0.1, 'Hectare', 158, 0, 'Kwalei', '2018-08-06 18:25:42', '2018-08-06 18:25:42'),
(158, 0.05, 'Hectare', 159, 0, 'Kwalei', '2018-08-06 18:28:02', '2018-08-06 18:28:02'),
(159, 0.04, 'Hectare', 160, 0, 'Kwalei', '2018-08-06 18:33:42', '2018-08-06 18:33:42'),
(160, 0.04, 'Hectare', 161, 0, 'Peas', '2018-08-06 18:41:39', '2018-08-06 18:41:39'),
(161, 0.04, 'Hectare', 162, 0, 'Peas', '2018-08-06 18:45:04', '2018-08-06 18:45:04'),
(162, 0.01, 'Hectare', 163, 0, 'Bombo', '2018-08-06 19:51:12', '2018-08-06 19:51:12'),
(163, 0.05, 'Hectare', 164, 0, 'Bombo', '2018-08-06 19:55:29', '2018-08-06 19:55:29'),
(164, 0.04, 'Hectare', 165, 0, 'Bombo', '2018-08-06 19:57:38', '2018-08-06 19:57:38'),
(165, 0.06, 'Hectare', 166, 0, 'Bombo', '2018-08-06 19:59:14', '2018-08-06 19:59:14'),
(166, 0.05, 'Hectare', 167, 0, 'Bombo', '2018-08-06 20:01:08', '2018-08-06 20:01:08'),
(167, 0.1, 'Hectare', 168, 0, 'Bombo', '2018-08-06 20:02:47', '2018-08-06 20:02:47'),
(168, 0.04, 'Hectare', 169, 0, 'Bombo', '2018-08-06 20:04:14', '2018-08-06 20:04:14'),
(169, 0.91, 'Hectare', 170, 0, 'Bombo', '2018-08-06 20:05:51', '2018-08-06 20:05:51'),
(170, 0.05, 'Hectare', 171, 0, 'Bombo', '2018-08-06 20:07:21', '2018-08-06 20:07:21'),
(171, 0.05, 'Hectare', 172, 0, 'Bombo', '2018-08-06 20:09:53', '2018-08-06 20:09:53'),
(172, 0.04, 'Hectare', 173, 0, 'Bombo', '2018-08-06 20:12:26', '2018-08-06 20:12:26'),
(173, 0.05, 'Hectare', 174, 0, 'Bombo', '2018-08-06 20:13:55', '2018-08-06 20:13:55'),
(174, 0.05, 'Hectare', 175, 0, 'Bombo', '2018-08-06 20:15:59', '2018-08-06 20:15:59'),
(175, 0.06, 'Hectare', 176, 0, 'Bombo', '2018-08-06 20:18:24', '2018-08-06 20:18:24'),
(176, 0.08, 'Hectare', 177, 0, 'Bombo', '2018-08-06 20:20:01', '2018-08-06 20:20:01'),
(177, 0.08, 'Hectare', 178, 0, 'Bombo', '2018-08-06 20:21:24', '2018-08-06 20:21:24'),
(178, 0.07, 'Hectare', 179, 0, 'Bombo', '2018-08-06 20:25:22', '2018-08-06 20:25:22'),
(179, 0.02, 'Hectare', 180, 0, 'Bombo', '2018-08-06 20:27:11', '2018-08-06 20:27:11'),
(180, 0.0245, 'Hectare', 181, 0, 'Bombo', '2018-08-06 20:28:48', '2018-08-06 20:28:48'),
(181, 0.06, 'Hectare', 182, 0, 'Bombo', '2018-08-06 20:30:10', '2018-08-06 20:30:10'),
(182, 0.05, 'Hectare', 183, 0, 'Bombo', '2018-08-06 20:31:59', '2018-08-06 20:31:59'),
(183, 0.04, 'Hectare', 184, 0, 'Bombo', '2018-08-06 20:33:43', '2018-08-06 20:33:43'),
(184, 0.06, 'Hectare', 185, 0, 'Bombo', '2018-08-06 20:35:11', '2018-08-06 20:35:11'),
(185, 0.08, 'Hectare', 186, 0, 'Bombo', '2018-08-06 20:37:05', '2018-08-06 20:37:05'),
(186, 0.08, 'Hectare', 187, 0, 'Kwalei', '2018-08-06 20:39:24', '2018-08-06 20:39:24'),
(187, 0.09, 'Hectare', 188, 0, 'Kwalei', '2018-08-06 20:41:00', '2018-08-06 20:41:00'),
(188, 0.1, 'Hectare', 189, 0, 'Kwalei', '2018-08-06 20:42:41', '2018-08-06 20:42:41'),
(189, 0.05, 'Hectare', 190, 0, 'Kwalei', '2018-08-06 20:44:46', '2018-08-06 20:44:46'),
(190, 0.06, 'Hectare', 191, 0, 'Kwalei', '2018-08-06 20:46:31', '2018-08-06 20:46:31'),
(191, 0.05, 'Hectare', 192, 0, 'Kwalei', '2018-08-07 21:01:51', '2018-08-07 21:01:51'),
(192, 0.04, 'Hectare', 193, 0, 'Kwalei', '2018-08-07 21:04:27', '2018-08-07 21:04:27'),
(193, 0.05, 'Hectare', 194, 0, 'Kwalei', '2018-08-07 21:06:15', '2018-08-07 21:06:15'),
(194, 0.1, 'Hectare', 195, 0, 'Kwalei', '2018-08-07 21:07:47', '2018-08-07 21:07:47'),
(195, 0.08, 'Hectare', 196, 0, 'Kwalei', '2018-08-07 21:09:15', '2018-08-07 21:09:15'),
(196, 0.05, 'Hectare', 197, 0, 'Kwalei', '2018-08-07 21:10:51', '2018-08-07 21:10:51'),
(197, 0.04, 'Hectare', 198, 0, 'Kwalei', '2018-08-07 21:12:43', '2018-08-07 21:12:43'),
(198, 0.1, 'Hectare', 199, 0, 'Kwalei', '2018-08-07 21:14:37', '2018-08-07 21:14:37'),
(199, 0.08, 'Hectare', 200, 0, 'Kwalei', '2018-08-07 21:16:11', '2018-08-07 21:16:11'),
(200, 0.05, 'Hectare', 201, 0, 'Kwalei', '2018-08-07 21:17:59', '2018-08-07 21:17:59'),
(201, 0.13, 'Hectare', 202, 0, 'Kwalei', '2018-08-07 21:23:39', '2018-08-07 21:23:39'),
(202, 0.06, 'Hectare', 203, 0, 'Kwalei', '2018-08-07 21:29:18', '2018-08-07 21:29:18'),
(203, 0.25, 'Hectare', 209, 20, 'fine peas', '2018-08-14 13:18:03', '2018-08-14 13:18:03'),
(204, 0.04, 'Hectare', 205, 20, 'fine peas', '2018-08-14 13:22:44', '2018-08-14 13:22:44'),
(205, 0.18, 'Hectare', 204, 20, 'fine beans', '2018-08-14 13:25:37', '2018-08-14 13:25:37'),
(206, 0.04, 'Hectare', 210, 20, 'fine peas', '2018-08-14 13:37:18', '2018-08-14 13:37:18'),
(207, 0.08, 'Hectare', 211, 20, 'fine peas', '2018-08-14 13:40:58', '2018-08-14 13:40:58'),
(208, 0.04, 'Hectare', 206, 24, 'peas', '2018-08-14 13:48:49', '2018-08-14 13:48:49'),
(209, 0.06, 'Hectare', 212, 26, 'peas', '2018-08-14 13:51:13', '2018-08-14 13:51:13'),
(210, 0.08, 'Hectare', 213, 26, 'peas', '2018-08-14 13:54:40', '2018-08-14 13:54:40'),
(211, 0.125, 'Hectare', 214, 26, 'peas', '2018-08-14 14:01:38', '2018-08-14 14:01:38'),
(212, 0.08, 'Hectare', 216, 26, 'peas', '2018-08-14 14:05:17', '2018-08-14 14:05:17'),
(213, 0.04, 'Hectare', 215, 19, 'Peas', '2018-08-14 14:05:22', '2018-08-14 14:05:22'),
(214, 0.08, 'Hectare', 217, 26, 'peas', '2018-08-14 14:08:29', '2018-08-14 14:08:29'),
(215, 0.06, 'Hectare', 218, 19, 'peas', '2018-08-14 14:08:39', '2018-08-14 14:08:39'),
(216, 0.04, 'Hectare', 219, 26, 'peas', '2018-08-14 14:11:31', '2018-08-14 14:11:31'),
(217, 0.04, 'Hectare', 221, 26, 'peas', '2018-08-15 13:47:25', '2018-08-15 13:47:25'),
(218, 0.04, 'Hectare', 222, 26, 'peas', '2018-08-15 13:50:04', '2018-08-15 13:50:04'),
(219, 0.125, 'Hectare', 223, 26, 'peas', '2018-08-15 13:53:04', '2018-08-15 13:53:04'),
(220, 0.125, 'Hectare', 224, 26, 'peas', '2018-08-15 13:55:51', '2018-08-15 13:55:51'),
(221, 0.04, 'Hectare', 225, 27, 'peas', '2018-08-15 14:00:11', '2018-08-15 14:00:11'),
(222, 0.125, 'Hectare', 226, 27, 'peas', '2018-08-15 14:03:07', '2018-08-15 14:03:07'),
(223, 0.08, 'Hectare', 227, 27, 'Peas', '2018-08-15 14:05:27', '2018-08-15 14:05:27'),
(224, 0.03, 'Hectare', 228, 27, 'peas', '2018-08-15 14:08:06', '2018-08-15 14:08:06'),
(225, 0.125, 'Hectare', 229, 27, 'fine beans', '2018-08-15 14:10:39', '2018-08-15 14:10:39'),
(226, 0.04, 'Hectare', 230, 27, 'peas', '2018-08-15 14:14:24', '2018-08-15 14:14:24'),
(227, 0.04, 'Hectare', 231, 27, 'Peas', '2018-08-15 14:17:06', '2018-08-15 14:17:06'),
(228, 0.04, 'Hectare', 232, 27, 'peas', '2018-08-15 14:19:59', '2018-08-15 14:19:59'),
(229, 0.04, 'Hectare', 233, 27, 'Fine beans', '2018-08-15 14:22:37', '2018-08-15 14:22:37'),
(230, 0.3, 'Hectare', 234, 14, 'te', '2018-08-27 19:13:18', '2018-08-28 13:21:31'),
(231, 0.9, 'Hectare', 220, 19, 'ggg', '2018-08-28 13:25:51', '2018-08-28 13:25:51'),
(232, 3.2, 'Hectare', 235, 3, '10A', '2018-09-05 09:07:34', '2018-09-05 09:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `farm_product`
--

CREATE TABLE `farm_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `farm_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_count` int(10) UNSIGNED NOT NULL DEFAULT '20',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `max_count`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Arusha Group', 20, 'active', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', '2018-07-29 11:00:10', '2018-07-29 11:00:10'),
(2, 'KIBIU', 20, 'active', 'Kibiu', '2018-07-29 20:13:57', '2018-07-29 20:13:57'),
(3, 'LUBUVEG', 20, 'active', 'Lubuveg', '2018-07-29 20:14:26', '2018-07-29 20:14:26'),
(4, 'LUKOVEG', 20, 'active', 'LUk', '2018-07-29 20:14:53', '2018-07-29 20:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `group_member`
--

CREATE TABLE `group_member` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `farmer_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `removed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_member`
--

INSERT INTO `group_member` (`id`, `group_id`, `farmer_id`, `status`, `removed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'active', NULL, '2018-07-29 11:02:59', '2018-07-29 11:02:59'),
(2, 1, 2, 'active', NULL, '2018-07-29 12:19:07', '2018-07-29 12:19:07'),
(3, 3, 3, 'active', NULL, '2018-07-30 16:13:47', '2018-07-30 16:13:47'),
(4, 4, 4, 'active', NULL, '2018-07-30 18:19:20', '2018-07-30 18:19:20'),
(5, 4, 5, 'active', NULL, '2018-07-30 18:20:46', '2018-07-30 18:20:46'),
(6, 2, 6, 'active', NULL, '2018-07-30 18:22:37', '2018-07-30 18:22:37'),
(7, 4, 7, 'active', NULL, '2018-07-31 10:36:37', '2018-07-31 10:36:37'),
(8, 4, 8, 'active', NULL, '2018-07-31 10:42:30', '2018-07-31 10:42:30'),
(9, 4, 9, 'active', NULL, '2018-07-31 10:46:31', '2018-07-31 10:46:31'),
(10, 4, 10, 'active', NULL, '2018-07-31 10:50:10', '2018-07-31 10:50:10'),
(11, 4, 11, 'active', NULL, '2018-07-31 10:50:11', '2018-07-31 10:50:11'),
(12, 4, 12, 'active', NULL, '2018-07-31 10:57:58', '2018-07-31 10:57:58'),
(13, 3, 13, 'active', NULL, '2018-08-01 14:40:49', '2018-08-01 14:40:49'),
(14, 4, 14, 'active', NULL, '2018-08-02 22:40:32', '2018-08-02 22:40:32'),
(15, 4, 15, 'active', NULL, '2018-08-02 22:51:58', '2018-08-02 22:51:58'),
(16, 4, 16, 'active', NULL, '2018-08-02 23:05:44', '2018-08-02 23:05:44'),
(17, 4, 17, 'active', NULL, '2018-08-02 23:11:01', '2018-08-02 23:11:01'),
(18, 4, 18, 'active', NULL, '2018-08-02 23:26:25', '2018-08-02 23:26:25'),
(19, 4, 19, 'active', NULL, '2018-08-02 23:47:16', '2018-08-02 23:47:16'),
(20, 4, 20, 'active', NULL, '2018-08-02 23:53:40', '2018-08-02 23:53:40'),
(21, 4, 21, 'active', NULL, '2018-08-02 23:57:26', '2018-08-02 23:57:26'),
(22, 4, 22, 'active', NULL, '2018-08-03 00:01:28', '2018-08-03 00:01:28'),
(23, 4, 23, 'active', NULL, '2018-08-03 00:05:13', '2018-08-03 00:05:13'),
(24, 4, 24, 'active', NULL, '2018-08-03 00:13:03', '2018-08-03 00:13:03'),
(25, 4, 25, 'active', NULL, '2018-08-03 00:19:35', '2018-08-03 00:19:35'),
(26, 4, 26, 'active', NULL, '2018-08-03 00:23:52', '2018-08-03 00:23:52'),
(27, 4, 27, 'active', NULL, '2018-08-03 00:28:02', '2018-08-03 00:28:02'),
(28, 4, 28, 'active', NULL, '2018-08-03 00:32:22', '2018-08-03 00:32:22'),
(29, 4, 29, 'active', NULL, '2018-08-03 00:36:38', '2018-08-03 00:36:38'),
(30, 4, 30, 'active', NULL, '2018-08-03 00:43:43', '2018-08-03 00:43:43'),
(31, 4, 31, 'active', NULL, '2018-08-03 00:50:49', '2018-08-03 00:50:49'),
(32, 4, 32, 'active', NULL, '2018-08-03 00:53:23', '2018-08-03 00:53:23'),
(33, 4, 33, 'active', NULL, '2018-08-03 01:00:48', '2018-08-03 01:00:48'),
(34, 4, 34, 'active', NULL, '2018-08-03 01:10:47', '2018-08-03 01:10:47'),
(35, 4, 35, 'active', NULL, '2018-08-03 01:13:53', '2018-08-03 01:13:53'),
(36, 4, 36, 'active', NULL, '2018-08-03 01:20:18', '2018-08-03 01:20:18'),
(37, 4, 37, 'active', NULL, '2018-08-03 01:22:12', '2018-08-03 01:22:12'),
(38, 4, 38, 'active', NULL, '2018-08-03 14:25:47', '2018-08-03 14:25:47'),
(39, 4, 39, 'active', NULL, '2018-08-03 14:51:33', '2018-08-03 14:51:33'),
(40, 4, 40, 'active', NULL, '2018-08-03 15:41:43', '2018-08-03 15:41:43'),
(41, 4, 41, 'active', NULL, '2018-08-03 15:45:40', '2018-08-03 15:45:40'),
(42, 4, 42, 'active', NULL, '2018-08-03 15:48:15', '2018-08-03 15:48:15'),
(43, 4, 43, 'active', NULL, '2018-08-03 15:50:45', '2018-08-03 15:50:45'),
(44, 4, 44, 'active', NULL, '2018-08-03 15:54:07', '2018-08-03 15:54:07'),
(45, 4, 45, 'active', NULL, '2018-08-03 15:56:37', '2018-08-03 15:56:37'),
(46, 4, 46, 'active', NULL, '2018-08-03 15:58:53', '2018-08-03 15:58:53'),
(47, 4, 47, 'active', NULL, '2018-08-03 16:01:25', '2018-08-03 16:01:25'),
(48, 4, 48, 'active', NULL, '2018-08-03 16:03:48', '2018-08-03 16:03:48'),
(49, 4, 49, 'active', NULL, '2018-08-03 16:06:27', '2018-08-03 16:06:27'),
(50, 4, 50, 'active', NULL, '2018-08-03 16:09:25', '2018-08-03 16:09:25'),
(51, 4, 51, 'active', NULL, '2018-08-03 16:12:59', '2018-08-03 16:12:59'),
(52, 4, 52, 'active', NULL, '2018-08-03 16:15:29', '2018-08-03 16:15:29'),
(53, 4, 53, 'active', NULL, '2018-08-03 16:17:54', '2018-08-03 16:17:54'),
(54, 4, 54, 'active', NULL, '2018-08-03 16:26:00', '2018-08-03 16:26:00'),
(55, 4, 55, 'active', NULL, '2018-08-03 16:34:16', '2018-08-03 16:34:16'),
(56, 4, 56, 'active', NULL, '2018-08-03 16:43:48', '2018-08-03 16:43:48'),
(57, 4, 57, 'active', NULL, '2018-08-03 16:46:27', '2018-08-03 16:46:27'),
(58, 4, 58, 'active', NULL, '2018-08-03 16:49:36', '2018-08-03 16:49:36'),
(59, 4, 59, 'active', NULL, '2018-08-03 16:52:50', '2018-08-03 16:52:50'),
(60, 4, 60, 'active', NULL, '2018-08-03 16:56:03', '2018-08-03 16:56:03'),
(61, 4, 61, 'active', NULL, '2018-08-03 16:58:57', '2018-08-03 16:58:57'),
(62, 4, 62, 'active', NULL, '2018-08-03 17:02:04', '2018-08-03 17:02:04'),
(63, 4, 63, 'active', NULL, '2018-08-03 17:05:02', '2018-08-03 17:05:02'),
(64, 4, 64, 'active', NULL, '2018-08-03 17:07:06', '2018-08-03 17:07:06'),
(65, 4, 65, 'active', NULL, '2018-08-03 17:09:38', '2018-08-03 17:09:38'),
(66, 4, 66, 'active', NULL, '2018-08-03 17:12:06', '2018-08-03 17:12:06'),
(67, 4, 67, 'active', NULL, '2018-08-03 17:14:46', '2018-08-03 17:14:46'),
(68, 4, 68, 'active', NULL, '2018-08-03 17:17:44', '2018-08-03 17:17:44'),
(69, 4, 69, 'active', NULL, '2018-08-03 17:20:31', '2018-08-03 17:20:31'),
(70, 4, 70, 'active', NULL, '2018-08-03 18:29:37', '2018-08-03 18:29:37'),
(71, 4, 71, 'active', NULL, '2018-08-03 18:32:24', '2018-08-03 18:32:24'),
(72, 4, 72, 'active', NULL, '2018-08-03 18:35:45', '2018-08-03 18:35:45'),
(73, 4, 73, 'active', NULL, '2018-08-03 18:38:32', '2018-08-03 18:38:32'),
(74, 4, 74, 'active', NULL, '2018-08-03 18:41:36', '2018-08-03 18:41:36'),
(75, 4, 75, 'active', NULL, '2018-08-03 18:44:12', '2018-08-03 18:44:12'),
(76, 4, 76, 'active', NULL, '2018-08-03 18:46:41', '2018-08-03 18:46:41'),
(77, 4, 77, 'active', NULL, '2018-08-03 18:49:21', '2018-08-03 18:49:21'),
(78, 4, 78, 'active', NULL, '2018-08-03 18:51:39', '2018-08-03 18:51:39'),
(79, 4, 79, 'active', NULL, '2018-08-03 18:54:07', '2018-08-03 18:54:07'),
(80, 4, 80, 'active', NULL, '2018-08-03 18:59:11', '2018-08-03 18:59:11'),
(81, 4, 81, 'active', NULL, '2018-08-03 19:02:12', '2018-08-03 19:02:12'),
(82, 4, 82, 'active', NULL, '2018-08-03 19:04:26', '2018-08-03 19:04:26'),
(83, 4, 83, 'active', NULL, '2018-08-03 19:07:09', '2018-08-03 19:07:09'),
(84, 4, 84, 'active', NULL, '2018-08-03 19:09:34', '2018-08-03 19:09:34'),
(85, 4, 85, 'active', NULL, '2018-08-03 19:12:18', '2018-08-03 19:12:18'),
(86, 4, 86, 'active', NULL, '2018-08-03 19:25:22', '2018-08-03 19:25:22'),
(87, 4, 87, 'active', NULL, '2018-08-03 19:28:07', '2018-08-03 19:28:07'),
(88, 4, 88, 'active', NULL, '2018-08-03 19:30:34', '2018-08-03 19:30:34'),
(89, 4, 89, 'active', NULL, '2018-08-03 19:33:10', '2018-08-03 19:33:10'),
(90, 4, 90, 'active', NULL, '2018-08-03 19:38:38', '2018-08-03 19:38:38'),
(91, 4, 91, 'active', NULL, '2018-08-03 19:42:16', '2018-08-03 19:42:16'),
(92, 4, 92, 'active', NULL, '2018-08-03 19:45:21', '2018-08-03 19:45:21'),
(93, 4, 93, 'active', NULL, '2018-08-03 19:48:08', '2018-08-03 19:48:08'),
(94, 4, 94, 'active', NULL, '2018-08-03 19:50:45', '2018-08-03 19:50:45'),
(95, 4, 95, 'active', NULL, '2018-08-03 19:53:32', '2018-08-03 19:53:32'),
(96, 4, 96, 'active', NULL, '2018-08-03 20:02:52', '2018-08-03 20:02:52'),
(97, 4, 97, 'active', NULL, '2018-08-03 20:05:31', '2018-08-03 20:05:31'),
(98, 4, 98, 'active', NULL, '2018-08-03 20:08:12', '2018-08-03 20:08:12'),
(99, 4, 99, 'active', NULL, '2018-08-03 20:10:44', '2018-08-03 20:10:44'),
(100, 4, 100, 'active', NULL, '2018-08-03 20:12:59', '2018-08-03 20:12:59'),
(101, 4, 101, 'active', NULL, '2018-08-03 20:17:26', '2018-08-03 20:17:26'),
(102, 4, 102, 'active', NULL, '2018-08-03 20:20:32', '2018-08-03 20:20:32'),
(103, 4, 103, 'active', NULL, '2018-08-03 20:23:06', '2018-08-03 20:23:06'),
(104, 4, 104, 'active', NULL, '2018-08-03 20:26:18', '2018-08-03 20:26:18'),
(105, 4, 105, 'active', NULL, '2018-08-03 20:28:42', '2018-08-03 20:28:42'),
(106, 3, 106, 'active', NULL, '2018-08-03 21:29:51', '2018-08-03 21:29:51'),
(107, 4, 107, 'active', NULL, '2018-08-04 13:10:05', '2018-08-04 13:10:05'),
(108, 4, 108, 'active', NULL, '2018-08-04 17:32:59', '2018-08-04 17:32:59'),
(109, 4, 109, 'active', NULL, '2018-08-04 17:36:16', '2018-08-04 17:36:16'),
(110, 4, 110, 'active', NULL, '2018-08-04 17:38:40', '2018-08-04 17:38:40'),
(111, 4, 111, 'active', NULL, '2018-08-04 17:41:45', '2018-08-04 17:41:45'),
(112, 4, 112, 'active', NULL, '2018-08-04 17:44:04', '2018-08-04 17:44:04'),
(113, 4, 113, 'active', NULL, '2018-08-04 17:46:12', '2018-08-04 17:46:12'),
(114, 4, 114, 'active', NULL, '2018-08-04 17:54:04', '2018-08-04 17:54:04'),
(115, 4, 115, 'active', NULL, '2018-08-04 17:56:29', '2018-08-04 17:56:29'),
(116, 4, 116, 'active', NULL, '2018-08-04 17:59:39', '2018-08-04 17:59:39'),
(117, 4, 117, 'active', NULL, '2018-08-04 18:02:39', '2018-08-04 18:02:39'),
(118, 4, 118, 'active', NULL, '2018-08-04 18:06:24', '2018-08-04 18:06:24'),
(119, 4, 119, 'active', NULL, '2018-08-04 20:56:08', '2018-08-04 20:56:08'),
(120, 4, 120, 'active', NULL, '2018-08-04 21:01:26', '2018-08-04 21:01:26'),
(121, 4, 121, 'active', NULL, '2018-08-04 21:04:34', '2018-08-04 21:04:34'),
(122, 4, 122, 'active', NULL, '2018-08-04 21:07:57', '2018-08-04 21:07:57'),
(123, 4, 123, 'active', NULL, '2018-08-04 21:11:52', '2018-08-04 21:11:52'),
(124, 4, 124, 'active', NULL, '2018-08-04 21:15:21', '2018-08-04 21:15:21'),
(125, 4, 125, 'active', NULL, '2018-08-04 21:19:24', '2018-08-04 21:19:24'),
(126, 4, 126, 'active', NULL, '2018-08-04 21:21:58', '2018-08-04 21:21:58'),
(127, 4, 127, 'active', NULL, '2018-08-04 21:24:40', '2018-08-04 21:24:40'),
(128, 4, 128, 'active', NULL, '2018-08-04 21:34:52', '2018-08-04 21:34:52'),
(129, 4, 129, 'active', NULL, '2018-08-04 21:40:31', '2018-08-04 21:40:31'),
(130, 4, 130, 'active', NULL, '2018-08-04 21:43:45', '2018-08-04 21:43:45'),
(131, 4, 131, 'active', NULL, '2018-08-04 21:47:58', '2018-08-04 21:47:58'),
(132, 4, 132, 'active', NULL, '2018-08-04 21:51:06', '2018-08-04 21:51:06'),
(133, 4, 133, 'active', NULL, '2018-08-04 21:55:17', '2018-08-04 21:55:17'),
(134, 4, 134, 'active', NULL, '2018-08-04 21:58:26', '2018-08-04 21:58:26'),
(135, 4, 135, 'active', NULL, '2018-08-04 22:02:02', '2018-08-04 22:02:02'),
(136, 3, 136, 'active', NULL, '2018-08-05 01:15:08', '2018-08-05 01:15:08'),
(137, 3, 137, 'active', NULL, '2018-08-05 01:23:49', '2018-08-05 01:23:49'),
(138, 3, 138, 'active', NULL, '2018-08-05 01:30:00', '2018-08-05 01:30:00'),
(139, 3, 139, 'active', NULL, '2018-08-05 01:35:33', '2018-08-05 01:35:33'),
(140, 3, 140, 'active', NULL, '2018-08-05 01:39:55', '2018-08-05 01:39:55'),
(141, 3, 141, 'active', NULL, '2018-08-05 01:44:14', '2018-08-05 01:44:14'),
(142, 3, 142, 'active', NULL, '2018-08-05 01:47:59', '2018-08-05 01:47:59'),
(143, 3, 143, 'active', NULL, '2018-08-05 01:52:11', '2018-08-05 01:52:11'),
(144, 3, 144, 'active', NULL, '2018-08-05 01:56:43', '2018-08-05 01:56:43'),
(145, 3, 145, 'active', NULL, '2018-08-05 02:02:39', '2018-08-05 02:02:39'),
(146, 3, 146, 'active', NULL, '2018-08-05 02:07:06', '2018-08-05 02:07:06'),
(147, 4, 147, 'active', NULL, '2018-08-06 16:10:02', '2018-08-06 16:10:02'),
(148, 4, 148, 'active', NULL, '2018-08-06 16:11:44', '2018-08-06 16:11:44'),
(149, 4, 149, 'active', NULL, '2018-08-06 16:13:13', '2018-08-06 16:13:13'),
(150, 3, 150, 'active', NULL, '2018-08-06 17:53:25', '2018-08-06 17:53:25'),
(151, 3, 151, 'active', NULL, '2018-08-06 17:57:09', '2018-08-06 17:57:09'),
(152, 3, 152, 'active', NULL, '2018-08-06 18:01:19', '2018-08-06 18:01:19'),
(153, 3, 153, 'active', NULL, '2018-08-06 18:04:07', '2018-08-06 18:04:07'),
(154, 3, 154, 'active', NULL, '2018-08-06 18:07:15', '2018-08-06 18:07:15'),
(155, 3, 155, 'active', NULL, '2018-08-06 18:12:18', '2018-08-06 18:12:18'),
(156, 3, 156, 'active', NULL, '2018-08-06 18:17:21', '2018-08-06 18:17:21'),
(157, 4, 157, 'active', NULL, '2018-08-06 18:23:22', '2018-08-06 18:23:22'),
(158, 4, 158, 'active', NULL, '2018-08-06 18:25:15', '2018-08-06 18:25:15'),
(159, 4, 159, 'active', NULL, '2018-08-06 18:27:06', '2018-08-06 18:27:06'),
(160, 4, 160, 'active', NULL, '2018-08-06 18:32:39', '2018-08-06 18:32:39'),
(161, 3, 161, 'active', NULL, '2018-08-06 18:40:46', '2018-08-06 18:40:46'),
(162, 3, 162, 'active', NULL, '2018-08-06 18:44:28', '2018-08-06 18:44:28'),
(163, 4, 163, 'active', NULL, '2018-08-06 19:50:22', '2018-08-06 19:50:22'),
(164, 4, 164, 'active', NULL, '2018-08-06 19:54:39', '2018-08-06 19:54:39'),
(165, 4, 165, 'active', NULL, '2018-08-06 19:57:03', '2018-08-06 19:57:03'),
(166, 4, 166, 'active', NULL, '2018-08-06 19:58:45', '2018-08-06 19:58:45'),
(167, 4, 167, 'active', NULL, '2018-08-06 20:00:36', '2018-08-06 20:00:36'),
(168, 4, 168, 'active', NULL, '2018-08-06 20:02:21', '2018-08-06 20:02:21'),
(169, 4, 169, 'active', NULL, '2018-08-06 20:03:49', '2018-08-06 20:03:49'),
(170, 4, 170, 'active', NULL, '2018-08-06 20:05:26', '2018-08-06 20:05:26'),
(171, 4, 171, 'active', NULL, '2018-08-06 20:06:52', '2018-08-06 20:06:52'),
(172, 4, 172, 'active', NULL, '2018-08-06 20:09:27', '2018-08-06 20:09:27'),
(173, 4, 173, 'active', NULL, '2018-08-06 20:11:57', '2018-08-06 20:11:57'),
(174, 4, 174, 'active', NULL, '2018-08-06 20:13:27', '2018-08-06 20:13:27'),
(175, 4, 175, 'active', NULL, '2018-08-06 20:15:32', '2018-08-06 20:15:32'),
(176, 4, 176, 'active', NULL, '2018-08-06 20:17:52', '2018-08-06 20:17:52'),
(177, 4, 177, 'active', NULL, '2018-08-06 20:19:34', '2018-08-06 20:19:34'),
(178, 4, 178, 'active', NULL, '2018-08-06 20:20:57', '2018-08-06 20:20:57'),
(179, 4, 179, 'active', NULL, '2018-08-06 20:22:59', '2018-08-06 20:22:59'),
(180, 4, 180, 'active', NULL, '2018-08-06 20:26:42', '2018-08-06 20:26:42'),
(181, 4, 181, 'active', NULL, '2018-08-06 20:28:17', '2018-08-06 20:28:17'),
(182, 4, 182, 'active', NULL, '2018-08-06 20:29:44', '2018-08-06 20:29:44'),
(183, 4, 183, 'active', NULL, '2018-08-06 20:31:35', '2018-08-06 20:31:35'),
(184, 4, 184, 'active', NULL, '2018-08-06 20:33:13', '2018-08-06 20:33:13'),
(185, 4, 185, 'active', NULL, '2018-08-06 20:34:47', '2018-08-06 20:34:47'),
(186, 4, 186, 'active', NULL, '2018-08-06 20:36:34', '2018-08-06 20:36:34'),
(187, 4, 187, 'active', NULL, '2018-08-06 20:38:51', '2018-08-06 20:38:51'),
(188, 4, 188, 'active', NULL, '2018-08-06 20:40:28', '2018-08-06 20:40:28'),
(189, 4, 189, 'active', NULL, '2018-08-06 20:42:15', '2018-08-06 20:42:15'),
(190, 4, 190, 'active', NULL, '2018-08-06 20:44:06', '2018-08-06 20:44:06'),
(191, 4, 191, 'active', NULL, '2018-08-06 20:45:51', '2018-08-06 20:45:51'),
(192, 4, 192, 'active', NULL, '2018-08-07 21:01:12', '2018-08-07 21:01:12'),
(193, 4, 193, 'active', NULL, '2018-08-07 21:03:59', '2018-08-07 21:03:59'),
(194, 4, 194, 'active', NULL, '2018-08-07 21:05:43', '2018-08-07 21:05:43'),
(195, 4, 195, 'active', NULL, '2018-08-07 21:07:18', '2018-08-07 21:07:18'),
(196, 4, 196, 'active', NULL, '2018-08-07 21:08:49', '2018-08-07 21:08:49'),
(197, 4, 197, 'active', NULL, '2018-08-07 21:10:18', '2018-08-07 21:10:18'),
(198, 4, 198, 'active', NULL, '2018-08-07 21:12:02', '2018-08-07 21:12:02'),
(199, 4, 199, 'active', NULL, '2018-08-07 21:13:56', '2018-08-07 21:13:56'),
(200, 4, 200, 'active', NULL, '2018-08-07 21:15:44', '2018-08-07 21:15:44'),
(201, 4, 201, 'active', NULL, '2018-08-07 21:17:28', '2018-08-07 21:17:28'),
(202, 4, 202, 'active', NULL, '2018-08-07 21:21:11', '2018-08-07 21:21:11'),
(203, 4, 203, 'active', NULL, '2018-08-07 21:25:51', '2018-08-07 21:25:51'),
(204, 3, 204, 'active', NULL, '2018-08-09 00:23:18', '2018-08-09 00:23:18'),
(205, 3, 205, 'active', NULL, '2018-08-09 00:34:46', '2018-08-09 00:34:46'),
(206, 3, 206, 'active', NULL, '2018-08-09 00:41:20', '2018-08-09 00:41:20'),
(207, 3, 207, 'active', NULL, '2018-08-09 14:04:31', '2018-08-09 14:04:31'),
(208, 4, 208, 'active', NULL, '2018-08-09 19:39:15', '2018-08-09 19:39:15'),
(209, 3, 209, 'active', NULL, '2018-08-14 13:13:33', '2018-08-14 13:13:33'),
(210, 3, 210, 'active', NULL, '2018-08-14 13:35:56', '2018-08-14 13:35:56'),
(211, 3, 211, 'active', NULL, '2018-08-14 13:39:23', '2018-08-14 13:39:23'),
(212, 3, 212, 'active', NULL, '2018-08-14 13:43:15', '2018-08-14 13:43:15'),
(213, 3, 213, 'active', NULL, '2018-08-14 13:53:51', '2018-08-14 13:53:51'),
(214, 3, 214, 'active', NULL, '2018-08-14 14:00:43', '2018-08-14 14:00:43'),
(215, 3, 215, 'active', NULL, '2018-08-14 14:03:16', '2018-08-14 14:03:16'),
(216, 3, 216, 'active', NULL, '2018-08-14 14:03:55', '2018-08-14 14:03:55'),
(217, 3, 217, 'active', NULL, '2018-08-14 14:07:41', '2018-08-14 14:07:41'),
(218, 3, 218, 'active', NULL, '2018-08-14 14:07:42', '2018-08-14 14:07:42'),
(219, 3, 219, 'active', NULL, '2018-08-14 14:10:40', '2018-08-14 14:10:40'),
(220, 3, 220, 'active', NULL, '2018-08-14 14:11:14', '2018-08-14 14:11:14'),
(221, 3, 221, 'active', NULL, '2018-08-15 13:46:35', '2018-08-15 13:46:35'),
(222, 3, 222, 'active', NULL, '2018-08-15 13:49:09', '2018-08-15 13:49:09'),
(223, 3, 223, 'active', NULL, '2018-08-15 13:52:00', '2018-08-15 13:52:00'),
(224, 3, 224, 'active', NULL, '2018-08-15 13:55:10', '2018-08-15 13:55:10'),
(225, 3, 225, 'active', NULL, '2018-08-15 13:58:03', '2018-08-15 13:58:03'),
(226, 3, 226, 'active', NULL, '2018-08-15 14:02:17', '2018-08-15 14:02:17'),
(227, 3, 227, 'active', NULL, '2018-08-15 14:04:46', '2018-08-15 14:04:46'),
(228, 3, 228, 'active', NULL, '2018-08-15 14:07:23', '2018-08-15 14:07:23'),
(229, 3, 229, 'active', NULL, '2018-08-15 14:09:47', '2018-08-15 14:09:47'),
(230, 3, 230, 'active', NULL, '2018-08-15 14:13:40', '2018-08-15 14:13:40'),
(231, 3, 231, 'active', NULL, '2018-08-15 14:16:31', '2018-08-15 14:16:31'),
(232, 3, 232, 'active', NULL, '2018-08-15 14:18:58', '2018-08-15 14:18:58'),
(233, 3, 233, 'active', NULL, '2018-08-15 14:21:51', '2018-08-15 14:21:51'),
(234, 3, 234, 'active', NULL, '2018-08-16 16:08:51', '2018-08-16 16:08:51'),
(235, 4, 235, 'active', NULL, '2018-09-05 09:07:08', '2018-09-05 09:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `group_product`
--

CREATE TABLE `group_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `price_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_product`
--

INSERT INTO `group_product` (`id`, `group_id`, `product_id`, `price_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 4, 'active', '2018-07-29 11:00:10', '2018-07-29 11:01:49'),
(2, 1, 7, 3, 'active', '2018-07-29 11:00:27', '2018-07-29 11:01:43'),
(3, 1, 8, 2, 'active', '2018-07-29 11:00:40', '2018-07-29 11:01:33'),
(4, 1, 9, 1, 'active', '2018-07-29 11:00:47', '2018-07-29 11:01:22'),
(5, 2, 1, 14, 'active', '2018-07-29 20:13:57', '2018-07-30 18:40:11'),
(6, 3, 2, 13, 'active', '2018-07-29 20:14:26', '2018-07-30 18:39:39'),
(7, 4, 3, 12, 'active', '2018-07-29 20:14:53', '2018-07-30 18:39:16'),
(8, 4, 1, 11, 'active', '2018-07-30 16:40:45', '2018-07-30 18:38:33'),
(9, 4, 2, 10, 'active', '2018-07-30 16:40:56', '2018-07-30 18:38:05'),
(10, 4, 4, 9, 'active', '2018-07-30 16:41:31', '2018-07-30 18:37:45'),
(11, 3, 1, 8, 'active', '2018-07-30 16:42:02', '2018-07-30 18:37:19'),
(12, 3, 3, 7, 'active', '2018-07-30 16:42:17', '2018-07-30 16:44:45'),
(13, 3, 4, 6, 'active', '2018-07-30 16:42:25', '2018-07-30 16:44:25'),
(14, 3, 4, 5, 'active', '2018-07-30 16:42:59', '2018-07-30 16:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `harvests`
--

CREATE TABLE `harvests` (
  `id` int(10) UNSIGNED NOT NULL,
  `expected_amount` double NOT NULL,
  `amount_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `block_id` int(10) UNSIGNED DEFAULT NULL,
  `farmer_id` int(10) UNSIGNED DEFAULT NULL,
  `batch_id` int(10) UNSIGNED DEFAULT NULL,
  `household_block_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `harvests`
--

INSERT INTO `harvests` (`id`, `expected_amount`, `amount_unit`, `expected_date`, `block_id`, `farmer_id`, `batch_id`, `household_block_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 450, 'kg', '2018-08-03 21:00:00', 1, 1, NULL, 0, '', '2018-07-29 12:11:04', '2018-07-29 12:11:04'),
(2, 450, 'kg', '2018-08-03 21:00:00', 1, 1, NULL, 0, '', '2018-07-29 12:12:13', '2018-07-29 12:12:13'),
(3, 450, 'kg', '2018-08-03 21:00:00', 1, 1, NULL, 0, '', '2018-07-29 12:12:30', '2018-07-29 12:12:30'),
(4, 350, 'kg', '2018-08-02 21:00:00', 2, 2, NULL, 0, '', '2018-07-29 12:32:52', '2018-07-29 12:32:52'),
(5, 233, 'kg', '2018-07-05 21:00:00', 1, 1, NULL, 0, '', '2018-07-29 20:01:38', '2018-07-29 20:01:38'),
(6, 600, 'kg', '2018-07-29 04:00:00', 2, 2, NULL, 0, '', '2018-07-30 04:14:35', '2018-07-30 04:14:35'),
(7, 1, 'kg', '2018-07-30 08:41:44', 1, 1, 1, 0, 'any', '2018-07-30 15:41:44', '2018-07-30 15:41:44'),
(8, 900, 'kg', '2018-07-30 04:00:00', 1, 1, NULL, 0, '', '2018-07-30 15:42:45', '2018-07-30 15:42:45'),
(9, 23, 'kg', '2018-07-30 04:00:00', 5, 5, NULL, 0, '', '2018-07-30 19:04:08', '2018-07-30 19:04:08'),
(10, 69, 'kg', '2018-07-30 04:00:00', 4, 4, NULL, 0, '', '2018-07-30 19:05:10', '2018-07-30 19:05:10'),
(11, 60, 'kg', '2018-07-30 04:00:00', 4, 4, NULL, 0, '', '2018-07-30 19:05:21', '2018-07-30 19:05:21'),
(12, 60, 'kg', '2018-07-30 04:00:00', 4, 4, NULL, 0, '', '2018-07-30 19:05:23', '2018-07-30 19:05:23'),
(13, 25, 'kg', '2018-07-30 04:00:00', 2, 4, NULL, 0, '', '2018-07-30 19:07:50', '2018-07-30 19:07:50'),
(14, 50, 'kg', '2018-07-31 04:00:00', 6, 4, NULL, 0, '', '2018-07-30 19:10:16', '2018-07-30 19:10:16'),
(15, 50, 'kg', '2018-07-30 04:00:00', 5, 5, NULL, 0, '', '2018-07-30 19:12:45', '2018-07-30 19:12:45'),
(16, 25, 'kg', '2018-08-29 04:00:00', NULL, 8, 0, 9, '', '2018-08-24 19:19:43', '2018-08-24 19:19:43'),
(17, 25, 'kg', '2018-08-29 04:00:00', NULL, 8, 0, 9, '', '2018-08-24 19:20:27', '2018-08-24 19:20:27'),
(18, 45, 'kg', '2018-08-30 04:00:00', NULL, 20, 0, 21, '', '2018-08-24 19:36:13', '2018-08-24 19:36:13'),
(19, 250, 'kg', '2018-08-29 04:00:00', NULL, 13, 5, 13, '', '2018-08-27 21:00:26', '2018-08-27 21:00:26'),
(20, 345, 'kg', '2018-08-27 15:17:21', NULL, 136, 5, 137, '', '2018-08-27 22:17:21', '2018-08-27 22:17:21'),
(21, 25, 'kg', '2018-08-29 04:00:00', NULL, 13, 5, 13, '', '2018-08-27 23:09:04', '2018-08-27 23:09:04'),
(22, 89, 'kg', '2018-08-01 04:00:00', NULL, 7, 7, 8, '', '2018-08-28 19:24:57', '2018-08-28 19:24:57'),
(23, 89, 'kg', '2018-08-28 04:00:00', NULL, 7, 7, 8, '', '2018-08-28 19:26:49', '2018-08-28 19:26:49'),
(24, 50, 'kg', '2018-08-28 04:00:00', NULL, 7, 8, 8, '', '2018-08-28 20:32:22', '2018-08-28 20:32:22'),
(25, 60, 'kg', '2018-08-29 04:00:00', NULL, 7, 8, 8, '', '2018-08-28 20:34:03', '2018-08-28 20:34:03'),
(26, 60, 'kg', '2018-08-29 04:00:00', NULL, 7, 8, 8, '', '2018-08-28 20:34:50', '2018-08-28 20:34:50'),
(27, 35, 'kg', '2018-08-28 04:00:00', NULL, 8, 8, 9, '', '2018-08-28 20:35:52', '2018-08-28 20:35:52'),
(28, 50, 'kg', '2018-08-29 04:00:00', NULL, 7, 8, 8, '', '2018-08-28 21:01:31', '2018-08-28 21:01:31'),
(29, 40, 'kg', '2018-08-29 04:00:00', NULL, 7, 8, 8, '', '2018-08-28 21:03:23', '2018-08-28 21:03:23'),
(30, 40, 'kg', '2018-08-29 04:00:00', NULL, 7, 8, 8, '', '2018-08-28 21:04:09', '2018-08-28 21:04:09'),
(31, 25, 'kg', '2018-08-29 04:00:00', NULL, 8, 8, 9, '', '2018-08-28 21:06:20', '2018-08-28 21:06:20'),
(32, 25, 'kg', '2018-08-29 04:00:00', NULL, 8, 8, 9, '', '2018-08-28 21:12:29', '2018-08-28 21:12:29'),
(33, 30, 'kg', '2018-08-29 04:00:00', NULL, 7, 8, 8, '', '2018-08-29 13:18:41', '2018-08-29 13:18:41'),
(34, 30, 'kg', '2018-08-29 04:00:00', NULL, 7, 8, 8, '', '2018-08-29 13:41:02', '2018-08-29 13:41:02'),
(35, 89, 'kg', '2018-07-31 21:00:00', NULL, 7, 8, 8, '', '2018-08-29 08:41:11', '2018-08-29 08:41:11'),
(36, 89, 'kg', '2018-08-30 21:00:00', NULL, 9, 8, 10, '', '2018-08-31 17:27:58', '2018-08-31 17:27:58'),
(37, 45, 'kg', '2018-09-04 21:00:00', NULL, 235, 8, 188, '', '2018-09-05 09:14:37', '2018-09-05 09:14:37'),
(38, 3.3, 'kg', '2018-09-04 21:00:00', NULL, 235, 8, 188, '', '2018-09-05 09:59:21', '2018-09-05 09:59:21'),
(39, 89, 'kg', '2018-09-04 21:00:00', NULL, 235, 8, 188, '', '2018-09-06 13:26:28', '2018-09-06 13:26:28'),
(40, 700, 'kg', '2018-09-05 21:00:00', NULL, 235, 8, 188, '', '2018-09-06 13:30:58', '2018-09-06 13:30:58'),
(41, 77.99, 'kg', '2018-09-05 21:00:00', NULL, 235, 8, 188, '', '2018-09-06 13:39:49', '2018-09-06 13:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `household_blocks`
--

CREATE TABLE `household_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` double NOT NULL,
  `size_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `farm_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `household_blocks`
--

INSERT INTO `household_blocks` (`id`, `number`, `size`, `size_unit`, `farm_id`, `product_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '3647HJD', 3, 'Hectare', 1, 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', 'active', '2018-07-29 15:03:46', '2018-07-29 15:03:46'),
(2, '465794', 4, 'Hectare', 2, 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', 'active', '2018-07-29 16:20:31', '2018-07-29 16:20:31'),
(3, '2A1', 1, 'Hectare', 4, 1, 'O.4', 'active', '2018-07-30 22:33:49', '2018-07-30 22:33:49'),
(4, '2A', 2, 'Hectare', 5, 2, 'Kwalei', 'active', '2018-07-30 22:36:34', '2018-07-30 22:36:34'),
(5, '2A', 1, 'Hectare', 7, 1, 'Peas', 'active', '2018-07-30 22:44:16', '2018-07-30 22:44:16'),
(6, '2a', 2, 'Hectare', 6, 3, 'Lewa', 'active', '2018-07-30 22:44:31', '2018-07-30 22:44:31'),
(7, '2a', 3, 'Hectare', 9, 2, 'Manka', 'active', '2018-07-30 22:48:19', '2018-07-30 22:48:19'),
(8, '1A1', 0.1, 'Hectare', 11, 1, 'Bombo', 'active', '2018-07-31 14:40:08', '2018-07-31 14:40:08'),
(9, '1A2', 0.19, 'Hectare', 12, 1, 'Bombo', 'active', '2018-07-31 14:45:06', '2018-07-31 14:45:06'),
(10, '1A3', 0.06, 'Hectare', 13, 1, 'Bombo', 'active', '2018-07-31 14:48:38', '2018-07-31 14:48:38'),
(11, '1A4', 0.05, 'Hectare', 14, 1, 'Bombo', 'active', '2018-07-31 14:53:35', '2018-07-31 14:53:35'),
(12, '1A6', 0.05, 'Hectare', 15, 1, 'Bombo', 'active', '2018-07-31 15:00:27', '2018-07-31 15:00:27'),
(13, '10A1', 0.04, 'Hectare', 16, 1, 'Peas', 'active', '2018-08-01 18:44:59', '2018-08-01 18:44:59'),
(14, '1A5', 0.05, 'Hectare', 17, 1, 'Bombo', 'active', '2018-08-03 02:42:44', '2018-08-03 02:42:44'),
(15, '1A6', 0.07, 'Hectare', 18, 1, 'Bombo', 'active', '2018-08-03 03:03:37', '2018-08-03 03:03:37'),
(16, '1A6', 0.07, 'Hectare', 18, 1, 'Bombo', 'active', '2018-08-03 03:03:39', '2018-08-03 03:03:39'),
(17, '1A7', 0.06, 'Hectare', 19, 1, 'Bombo', 'active', '2018-08-03 03:09:09', '2018-08-03 03:09:09'),
(18, '1A9', 0.065, 'Hectare', 20, 1, 'Bombo', 'active', '2018-08-03 03:43:25', '2018-08-03 03:43:25'),
(19, '1A8', 0.055, 'Hectare', 21, 1, 'Bombo', 'active', '2018-08-03 03:45:34', '2018-08-03 03:45:34'),
(20, '1B10', 0.08, 'Hectare', 22, 1, 'Bombo', 'active', '2018-08-03 03:48:46', '2018-08-03 03:48:46'),
(21, '1B11', 0.235, 'Hectare', 23, 1, 'Bombo', 'active', '2018-08-03 03:55:53', '2018-08-03 03:55:53'),
(22, '1B12', 0.033, 'Hectare', 24, 1, 'Bombo', 'active', '2018-08-03 03:59:14', '2018-08-03 03:59:14'),
(23, '1A13', 0.1, 'Hectare', 25, 1, 'Bombo', 'active', '2018-08-03 04:02:43', '2018-08-03 04:02:43'),
(24, '1B14', 0.055, 'Hectare', 26, 1, 'Bombo', 'active', '2018-08-03 04:08:35', '2018-08-03 04:08:35'),
(25, '1B15', 0.07, 'Hectare', 27, 1, 'Bombo', 'active', '2018-08-03 04:15:54', '2018-08-03 04:15:54'),
(26, '1B16', 0.07, 'Hectare', 28, 1, 'Bombo', 'active', '2018-08-03 04:21:17', '2018-08-03 04:21:17'),
(27, '1B17', 0.065, 'Hectare', 29, 1, 'Bombo', 'active', '2018-08-03 04:25:56', '2018-08-03 04:25:56'),
(28, '1B18', 0.06, 'Hectare', 30, 1, 'Bombo', 'active', '2018-08-03 04:31:01', '2018-08-03 04:31:01'),
(29, '1C19', 0.073, 'Hectare', 31, 1, 'Bombo', 'active', '2018-08-03 04:35:05', '2018-08-03 04:35:05'),
(30, '1C20', 0.095, 'Hectare', 32, 1, 'Bombo', 'active', '2018-08-03 04:42:10', '2018-08-03 04:42:10'),
(31, '1C21', 0.053, 'Hectare', 33, 1, 'Bombo', 'active', '2018-08-03 04:49:29', '2018-08-03 04:49:29'),
(32, '1C22', 0.08, 'Hectare', 34, 1, 'Bombo', 'active', '2018-08-03 04:52:08', '2018-08-03 04:52:08'),
(33, '1C23', 0.05, 'Hectare', 35, 1, 'Bombo', 'active', '2018-08-03 04:59:05', '2018-08-03 04:59:05'),
(34, '1C24', 0.186, 'Hectare', 36, 1, 'Bombo', 'active', '2018-08-03 05:03:26', '2018-08-03 05:03:26'),
(35, '1C25', 0.1, 'Hectare', 37, 1, 'Bombo', 'active', '2018-08-03 05:12:22', '2018-08-03 05:12:22'),
(36, '1C26', 0.2, 'Hectare', 38, 1, 'Bombo', 'active', '2018-08-03 05:18:38', '2018-08-03 05:18:38'),
(37, '1C27', 0.12, 'Hectare', 39, 1, 'Bombo', 'active', '2018-08-03 05:24:00', '2018-08-03 05:24:00'),
(38, '1D28', 0.08, 'Hectare', 40, 1, 'Bombo', 'active', '2018-08-03 18:39:56', '2018-08-03 18:39:56'),
(39, '1D29', 0.13, 'Hectare', 41, 1, 'Bombo', 'active', '2018-08-03 19:40:19', '2018-08-03 19:40:19'),
(40, '1D31', 0.093, 'Hectare', 42, 1, 'Bombo', 'active', '2018-08-03 19:43:58', '2018-08-03 19:43:58'),
(41, '1D30', 0.12, 'Hectare', 43, 1, 'Bombop', 'active', '2018-08-03 19:47:25', '2018-08-03 19:47:25'),
(42, '1D32', 0.13, 'Hectare', 44, 1, 'Bombo', 'active', '2018-08-03 19:49:41', '2018-08-03 19:49:41'),
(43, '1D33', 0.1, 'Hectare', 45, 1, 'Bombo', 'active', '2018-08-03 19:52:04', '2018-08-03 19:52:04'),
(44, '1D34', 0.11, 'Hectare', 46, 1, 'Bombo', 'active', '2018-08-03 19:55:38', '2018-08-03 19:55:38'),
(45, '1D35', 0.13, 'Hectare', 47, 1, 'Bombo', 'active', '2018-08-03 19:57:51', '2018-08-03 19:57:51'),
(46, '1D36', 0.06, 'Hectare', 48, 1, 'Bombo', 'active', '2018-08-03 20:00:22', '2018-08-03 20:00:22'),
(47, '1E37', 0.07, 'Hectare', 49, 1, 'Bombo', 'active', '2018-08-03 20:02:39', '2018-08-03 20:02:39'),
(48, '1E38', 0.068, 'Hectare', 50, 1, 'Bombo', 'active', '2018-08-03 20:05:16', '2018-08-03 20:05:16'),
(49, '1E39', 0.1, 'Hectare', 51, 1, 'Bombo', 'active', '2018-08-03 20:07:44', '2018-08-03 20:07:44'),
(50, '1E40', 0.15, 'Hectare', 52, 1, 'Bombo', 'active', '2018-08-03 20:11:07', '2018-08-03 20:11:07'),
(51, '1E41', 0.06, 'Hectare', 53, 1, 'Bombo', 'active', '2018-08-03 20:14:23', '2018-08-03 20:14:23'),
(52, '1E42', 0.08, 'Hectare', 54, 1, 'Bombo', 'active', '2018-08-03 20:16:41', '2018-08-03 20:16:41'),
(53, '1E43', 0.07, 'Hectare', 55, 1, 'Bombo', 'active', '2018-08-03 20:21:47', '2018-08-03 20:21:47'),
(54, '1E44', 0.091, 'Hectare', 56, 1, 'Bombo', 'active', '2018-08-03 20:28:20', '2018-08-03 20:28:20'),
(55, '1E45', 0.077, 'Hectare', 57, 1, 'Bombo', 'active', '2018-08-03 20:36:27', '2018-08-03 20:36:27'),
(56, '1F46', 0.026, 'Hectare', 58, 1, 'Bombo', 'active', '2018-08-03 20:45:22', '2018-08-03 20:45:22'),
(57, '1F47', 0.07, 'Hectare', 59, 1, 'Bombo', 'active', '2018-08-03 20:48:30', '2018-08-03 20:48:30'),
(58, '1F48', 0.091, 'Hectare', 60, 1, 'Bombo', 'active', '2018-08-03 20:51:32', '2018-08-03 20:51:32'),
(59, '1F49', 0.086, 'Hectare', 61, 1, 'Bombo', 'active', '2018-08-03 20:54:34', '2018-08-03 20:54:34'),
(60, '1F50', 0.12, 'Hectare', 62, 1, 'Bombo', 'active', '2018-08-03 20:57:37', '2018-08-03 20:57:37'),
(61, '1F50', 0.12, 'Hectare', 62, 1, 'Bombo', 'active', '2018-08-03 20:57:38', '2018-08-03 20:57:38'),
(62, '1F51', 0.08, 'Hectare', 63, 1, 'Bombo', 'active', '2018-08-03 21:00:44', '2018-08-03 21:00:44'),
(63, '1F52', 0.06, 'Hectare', 64, 1, 'Bombo', 'active', '2018-08-03 21:03:50', '2018-08-03 21:03:50'),
(64, '1F54', 0.07, 'Hectare', 66, 1, 'Bombo', 'active', '2018-08-03 21:08:35', '2018-08-03 21:08:35'),
(65, '1G55', 0.13, 'Hectare', 67, 1, 'Bombo', 'active', '2018-08-03 21:11:01', '2018-08-03 21:11:01'),
(66, '1G56', 0.049, 'Hectare', 68, 1, 'Bombo', 'active', '2018-08-03 21:13:34', '2018-08-03 21:13:34'),
(67, '1G57', 0.13, 'Hectare', 69, 1, 'Bombo', 'active', '2018-08-03 21:16:32', '2018-08-03 21:16:32'),
(68, '1G58', 0.5, 'Hectare', 70, 1, 'Bombo', 'active', '2018-08-03 21:19:24', '2018-08-03 21:19:24'),
(69, '1G59', 0.06, 'Hectare', 71, 1, 'Bombo', 'active', '2018-08-03 21:21:53', '2018-08-03 21:21:53'),
(70, '2A1', 0.01, 'Hectare', 72, 1, 'Kwalei', 'active', '2018-08-03 22:31:06', '2018-08-03 22:31:06'),
(71, '2A2', 0.05, 'Hectare', 73, 1, 'Kwalei', 'active', '2018-08-03 22:34:41', '2018-08-03 22:34:41'),
(72, '2A3', 0.067, 'Hectare', 74, 1, 'Kwalei', 'active', '2018-08-03 22:37:20', '2018-08-03 22:37:20'),
(73, '2A4', 0.056, 'Hectare', 75, 1, 'Kwalei', 'active', '2018-08-03 22:40:31', '2018-08-03 22:40:31'),
(74, '2A5', 0.04, 'Hectare', 76, 1, 'Kwalei', 'active', '2018-08-03 22:42:58', '2018-08-03 22:42:58'),
(75, '2A6', 0.02, 'Hectare', 77, 1, 'Kwalei', 'active', '2018-08-03 22:45:26', '2018-08-03 22:45:26'),
(76, '2A7', 0.05, 'Hectare', 78, 1, 'Kwalei', 'active', '2018-08-03 22:47:53', '2018-08-03 22:47:53'),
(77, '2A8', 0.03, 'Hectare', 79, 1, 'Kwalei', 'active', '2018-08-03 22:50:40', '2018-08-03 22:50:40'),
(78, '2A9', 0.05, 'Hectare', 80, 1, 'Kwalei', 'active', '2018-08-03 22:52:50', '2018-08-03 22:52:50'),
(79, '2B10', 0.111, 'Hectare', 81, 1, 'Kwalei', 'active', '2018-08-03 22:56:04', '2018-08-03 22:56:04'),
(80, '2B11', 0.0494, 'Hectare', 82, 1, 'Kwalei', 'active', '2018-08-03 23:00:53', '2018-08-03 23:00:53'),
(81, '2B12', 0.035, 'Hectare', 83, 1, 'Kwalei', 'active', '2018-08-03 23:03:28', '2018-08-03 23:03:28'),
(82, '2B13', 0.06, 'Hectare', 84, 1, 'Kwalei', 'active', '2018-08-03 23:06:12', '2018-08-03 23:06:12'),
(83, '2B14', 0.03, 'Hectare', 85, 1, 'Kwalei', 'active', '2018-08-03 23:08:32', '2018-08-03 23:08:32'),
(84, '2B15', 0.15, 'Hectare', 86, 1, 'Kwalei', 'active', '2018-08-03 23:11:04', '2018-08-03 23:11:04'),
(85, '2B16', 0.08, 'Hectare', 87, 1, 'Kwalei', 'active', '2018-08-03 23:14:11', '2018-08-03 23:14:11'),
(86, '2B17', 0.056, 'Hectare', 88, 1, 'Kwalei', 'active', '2018-08-03 23:26:53', '2018-08-03 23:26:53'),
(87, '2C18', 0.05, 'Hectare', 89, 1, 'Kwalei', 'active', '2018-08-03 23:29:23', '2018-08-03 23:29:23'),
(88, '2C19', 0.024, 'Hectare', 90, 1, 'Kwalei', 'active', '2018-08-03 23:32:08', '2018-08-03 23:32:08'),
(89, '2C20', 0.14, 'Hectare', 91, 1, 'Kwalei', 'active', '2018-08-03 23:34:42', '2018-08-03 23:34:42'),
(90, '2C21', 0.36, 'Hectare', 92, 1, 'Kwalei', 'active', '2018-08-03 23:40:30', '2018-08-03 23:40:30'),
(91, '2C22', 0.1, 'Hectare', 93, 1, 'Kwalei', 'active', '2018-08-03 23:43:51', '2018-08-03 23:43:51'),
(92, '2C23', 0.027, 'Hectare', 94, 1, 'Kwalei', 'active', '2018-08-03 23:46:53', '2018-08-03 23:46:53'),
(93, '2C24', 0.1, 'Hectare', 95, 1, 'Kwalei', 'active', '2018-08-03 23:49:48', '2018-08-03 23:49:48'),
(94, '2C25', 0.02, 'Hectare', 96, 1, 'Kwalei', 'active', '2018-08-03 23:52:12', '2018-08-03 23:52:12'),
(95, '2D26', 0.04, 'Hectare', 97, 1, 'Kwalei', 'active', '2018-08-03 23:54:54', '2018-08-03 23:54:54'),
(96, '2D27', 0.05, 'Hectare', 98, 1, 'Kwalei', 'active', '2018-08-04 00:04:20', '2018-08-04 00:04:20'),
(97, '2D28', 0.12, 'Hectare', 99, 1, 'Kwalei', 'active', '2018-08-04 00:07:04', '2018-08-04 00:07:04'),
(98, '2D29', 0.037, 'Hectare', 100, 1, 'Kwalei', 'active', '2018-08-04 00:09:38', '2018-08-04 00:09:38'),
(99, '2D30', 0.05, 'Hectare', 101, 1, 'Kwalei', 'active', '2018-08-04 00:11:55', '2018-08-04 00:11:55'),
(100, '2D31', 0.23, 'Hectare', 102, 1, 'Kwalei', 'active', '2018-08-04 00:14:27', '2018-08-04 00:14:27'),
(101, '2D32', 0.07, 'Hectare', 103, 1, 'Kwalei', 'active', '2018-08-04 00:19:10', '2018-08-04 00:19:10'),
(102, '2D33', 0.046, 'Hectare', 104, 1, 'Kwalei', 'active', '2018-08-04 00:22:09', '2018-08-04 00:22:09'),
(103, '2D34', 0.1, 'Hectare', 105, 1, 'Kwalei', 'active', '2018-08-04 00:24:58', '2018-08-04 00:24:58'),
(104, '2E35', 0.03, 'Hectare', 106, 1, 'Kwalei', 'active', '2018-08-04 00:27:30', '2018-08-04 00:27:30'),
(105, '2E36', 0.022, 'Hectare', 107, 1, 'Kwalei', 'active', '2018-08-04 00:29:54', '2018-08-04 00:29:54'),
(106, '3A1', 0.068, 'Hectare', 108, 2, 'Maruati', 'active', '2018-08-04 17:12:08', '2018-08-04 17:12:08'),
(107, '3A2', 0.0211, 'Hectare', 109, 2, 'Maruati', 'active', '2018-08-04 21:35:06', '2018-08-04 21:35:06'),
(108, '3A3', 0.07, 'Hectare', 110, 2, 'Maruati', 'active', '2018-08-04 21:37:39', '2018-08-04 21:37:39'),
(109, '3A4', 0.04, 'Hectare', 111, 2, 'Maruati', 'active', '2018-08-04 21:40:37', '2018-08-04 21:40:37'),
(110, '3A5', 0.047, 'Hectare', 112, 2, 'Maruati', 'active', '2018-08-04 21:43:01', '2018-08-04 21:43:01'),
(111, '3A6', 0.03, 'Hectare', 113, 2, 'Maruati', 'active', '2018-08-04 21:45:16', '2018-08-04 21:45:16'),
(112, '3A7', 0.08, 'Hectare', 114, 2, 'Maruati', 'active', '2018-08-04 21:48:03', '2018-08-04 21:48:03'),
(113, '3A8', 0.06, 'Hectare', 115, 2, 'Maruati', 'active', '2018-08-04 21:55:36', '2018-08-04 21:55:36'),
(114, '3A9', 0.04, 'Hectare', 116, 2, 'Maruati', 'active', '2018-08-04 21:58:19', '2018-08-04 21:58:19'),
(115, '3B10', 0.06, 'Hectare', 117, 2, 'Maruati', 'active', '2018-08-04 22:01:08', '2018-08-04 22:01:08'),
(116, '3B11', 0.047, 'Hectare', 118, 2, 'Maruati', 'active', '2018-08-04 22:04:40', '2018-08-04 22:04:40'),
(117, '3B12', 0.06, 'Hectare', 119, 2, 'Maruati', 'active', '2018-08-04 22:07:28', '2018-08-04 22:07:28'),
(118, '3C13', 0.02, 'Hectare', 120, 1, 'Maruati', 'active', '2018-08-05 00:57:58', '2018-08-05 00:57:58'),
(119, '3C14', 0.07, 'Hectare', 121, 1, 'Maruati', 'active', '2018-08-05 01:02:58', '2018-08-05 01:02:58'),
(120, '3C15', 0.04, 'Hectare', 122, 1, 'Maruati', 'active', '2018-08-05 01:06:43', '2018-08-05 01:06:43'),
(121, '3C16', 0.04, 'Hectare', 123, 1, 'Maruati', 'active', '2018-08-05 01:10:12', '2018-08-05 01:10:12'),
(122, '3C17', 0.02, 'Hectare', 124, 1, 'Maruati', 'active', '2018-08-05 01:14:06', '2018-08-05 01:14:06'),
(123, '3C18', 0.03, 'Hectare', 125, 1, 'Maruati', 'active', '2018-08-05 01:16:54', '2018-08-05 01:16:54'),
(124, '3C19', 0.04, 'Hectare', 126, 1, 'Maruati', 'active', '2018-08-05 01:20:47', '2018-08-05 01:20:47'),
(125, '3C20', 0.087, 'Hectare', 127, 1, 'Maruati', 'active', '2018-08-05 01:23:21', '2018-08-05 01:23:21'),
(126, '3C21', 0.03, 'Hectare', 128, 1, 'Maruati', 'active', '2018-08-05 01:26:37', '2018-08-05 01:26:37'),
(127, '2D22', 0.033, 'Hectare', 129, 1, 'Maruati', 'active', '2018-08-05 01:36:54', '2018-08-05 01:36:54'),
(128, '3D22', 0.033, 'Hectare', 129, 1, 'Maruati', 'active', '2018-08-05 01:38:36', '2018-08-05 01:38:36'),
(129, '3D23', 0.04, 'Hectare', 130, 1, 'Maruati', 'active', '2018-08-05 01:42:02', '2018-08-05 01:42:02'),
(130, '3D24', 0.03, 'Hectare', 131, 1, 'Maruati', 'active', '2018-08-05 01:46:00', '2018-08-05 01:46:00'),
(131, '3D25', 0.06, 'Hectare', 132, 1, 'Maruati', 'active', '2018-08-05 01:49:46', '2018-08-05 01:49:46'),
(132, '3D26', 0.03, 'Hectare', 133, 1, 'Maruati', 'active', '2018-08-05 01:52:49', '2018-08-05 01:52:49'),
(133, '3D27', 0.05, 'Hectare', 134, 1, 'Maruati', 'active', '2018-08-05 01:56:49', '2018-08-05 01:56:49'),
(134, '3D28', 0.03, 'Hectare', 135, 1, 'Maruati', 'active', '2018-08-05 02:00:25', '2018-08-05 02:00:25'),
(135, '3D29', 0.05, 'Hectare', 136, 1, 'Maruati', 'active', '2018-08-05 02:03:41', '2018-08-05 02:03:41'),
(136, '10A1', 0.04, 'Hectare', 137, 1, 'Fine peas', 'active', '2018-08-05 05:04:15', '2018-08-05 05:04:15'),
(137, '10A4', 0.04, 'Hectare', 138, 1, 'Fine peas', 'active', '2018-08-05 05:18:19', '2018-08-05 05:18:19'),
(138, '10A5', 0.04, 'Hectare', 139, 1, 'Fine peas', 'active', '2018-08-05 05:27:08', '2018-08-05 05:27:08'),
(139, '10A7', 0.04, 'Hectare', 140, 1, 'Fine peas', 'active', '2018-08-05 05:33:25', '2018-08-05 05:33:25'),
(140, '10A8', 0.125, 'Hectare', 141, 1, 'Fine peas', 'active', '2018-08-05 05:38:15', '2018-08-05 05:38:15'),
(141, '10A9', 0.125, 'Hectare', 142, 1, 'Fine peas', 'active', '2018-08-05 05:42:19', '2018-08-05 05:42:19'),
(142, '10A10', 0.21, 'Hectare', 143, 1, 'Fine peas', 'active', '2018-08-05 05:46:11', '2018-08-05 05:46:11'),
(143, '11A2', 0.04, 'Hectare', 144, 1, 'Fine peas', 'active', '2018-08-05 05:50:07', '2018-08-05 05:50:07'),
(144, '11A3', 0.08, 'Hectare', 145, 1, 'Fine peas', 'active', '2018-08-05 05:54:41', '2018-08-05 05:54:41'),
(145, '11A4', 0.18, 'Hectare', 146, 3, 'Fine beans', 'active', '2018-08-05 05:59:07', '2018-08-05 05:59:07'),
(146, '11A5', 0.13, 'Hectare', 147, 3, 'Fine beans', 'active', '2018-08-05 06:05:22', '2018-08-05 06:05:22'),
(147, '11A6', 0.13, 'Hectare', 148, 3, 'Fine beans', 'active', '2018-08-05 06:09:04', '2018-08-05 06:09:04'),
(148, '10B4', 0.04, 'Hectare', 149, 1, 'Peas', 'active', '2018-08-06 21:55:16', '2018-08-06 21:55:16'),
(149, '10B5', 0.04, 'Hectare', 150, 1, 'Peas', 'active', '2018-08-06 21:59:42', '2018-08-06 21:59:42'),
(150, '10B6', 0.08, 'Hectare', 151, 1, 'Peas', 'active', '2018-08-06 22:02:41', '2018-08-06 22:02:41'),
(151, '10B8', 0.06, 'Hectare', 152, 1, 'Peas', 'active', '2018-08-06 22:06:01', '2018-08-06 22:06:01'),
(152, '10C2', 0.08, 'Hectare', 153, 1, 'Peas', 'active', '2018-08-06 22:08:48', '2018-08-06 22:08:48'),
(153, '10C3', 0.04, 'Hectare', 154, 1, 'Peas', 'active', '2018-08-06 22:13:55', '2018-08-06 22:13:55'),
(154, '10C4', 0.06, 'Hectare', 155, 1, 'Peas', 'active', '2018-08-06 22:37:10', '2018-08-06 22:37:10'),
(155, '10C8', 0.04, 'Hectare', 160, 1, 'Peas', 'active', '2018-08-06 22:42:47', '2018-08-06 22:42:47'),
(156, '10D1', 0.04, 'Hectare', 161, 1, 'Peas', 'active', '2018-08-06 22:45:52', '2018-08-06 22:45:52'),
(157, '11A10', 0.25, 'Hectare', 203, 1, 'Fine peas', 'active', '2018-08-14 13:20:53', '2018-08-14 13:20:53'),
(158, '11A8', 0.04, 'Hectare', 204, 1, 'Fine peas', 'active', '2018-08-14 13:24:03', '2018-08-14 13:24:03'),
(159, '11A7', 0.18, 'Hectare', 205, 3, 'Fine beans', 'active', '2018-08-14 13:26:54', '2018-08-14 13:26:54'),
(160, '11A9', 0.04, 'Hectare', 206, 1, 'Fine peas', 'active', '2018-08-14 13:38:05', '2018-08-14 13:38:05'),
(161, '11A11', 0.08, 'Hectare', 207, 1, 'Fine peas', 'active', '2018-08-14 13:41:47', '2018-08-14 13:41:47'),
(162, '11D2', 0.04, 'Hectare', 208, 1, 'Peas', 'active', '2018-08-14 13:49:58', '2018-08-14 13:49:58'),
(163, '11B1', 0.06, 'Hectare', 209, 1, 'Peas', 'active', '2018-08-14 13:52:18', '2018-08-14 13:52:18'),
(164, '11B2', 0.08, 'Hectare', 210, 1, 'Peas', 'active', '2018-08-14 13:55:46', '2018-08-14 13:55:46'),
(165, '11B3', 0.125, 'Hectare', 211, 1, 'Peas', 'active', '2018-08-14 14:02:29', '2018-08-14 14:02:29'),
(166, '11B4', 0.08, 'Hectare', 212, 1, 'Peas', 'active', '2018-08-14 14:06:08', '2018-08-14 14:06:08'),
(167, '10B4', 0.04, 'Hectare', 213, 1, 'Peas', 'active', '2018-08-14 14:06:25', '2018-08-14 14:06:25'),
(168, '11B5', 0.08, 'Hectare', 214, 1, 'Peas', 'active', '2018-08-14 14:09:08', '2018-08-14 14:09:08'),
(169, '10B5', 0.06, 'Hectare', 215, 1, 'Peas', 'active', '2018-08-14 14:09:20', '2018-08-14 14:09:20'),
(170, '11B6', 0.04, 'Hectare', 216, 1, 'Peas', 'active', '2018-08-15 13:45:19', '2018-08-15 13:45:19'),
(171, '11B7', 0.04, 'Hectare', 217, 1, 'Peas', 'active', '2018-08-15 13:48:05', '2018-08-15 13:48:05'),
(172, '11B8', 0.04, 'Hectare', 218, 1, 'Peas', 'active', '2018-08-15 13:50:43', '2018-08-15 13:50:43'),
(173, '11B9', 0.125, 'Hectare', 219, 1, 'Peas', 'active', '2018-08-15 13:53:45', '2018-08-15 13:53:45'),
(174, '11B10', 0.125, 'Hectare', 220, 1, 'Peas', 'active', '2018-08-15 13:56:38', '2018-08-15 13:56:38'),
(175, '11C1', 0.04, 'Hectare', 221, 1, 'Peas', 'active', '2018-08-15 14:01:01', '2018-08-15 14:01:01'),
(176, '11C3', 0.125, 'Hectare', 222, 1, 'Peas', 'active', '2018-08-15 14:03:44', '2018-08-15 14:03:44'),
(177, '11C4', 0.08, 'Hectare', 223, 1, 'Peas', 'active', '2018-08-15 14:06:10', '2018-08-15 14:06:10'),
(178, '11C5', 0.03, 'Hectare', 224, 1, 'Peas', 'active', '2018-08-15 14:08:47', '2018-08-15 14:08:47'),
(179, '11C6', 0.125, 'Hectare', 225, 3, 'Fine beans', 'active', '2018-08-15 14:11:21', '2018-08-15 14:11:21'),
(180, '11C8', 0.04, 'Hectare', 226, 1, 'Peas', 'active', '2018-08-15 14:15:02', '2018-08-15 14:15:02'),
(181, '11C9', 0.04, 'Hectare', 227, 1, 'Peas', 'active', '2018-08-15 14:17:37', '2018-08-15 14:17:37'),
(182, '11C10', 0.04, 'Hectare', 228, 1, 'Peas', 'active', '2018-08-15 14:20:38', '2018-08-15 14:20:38'),
(183, '11C7', 0.04, 'Hectare', 229, 3, 'Fine beans', 'active', '2018-08-15 14:23:20', '2018-08-15 14:23:20'),
(185, 'Block 1 xxzzz', 0.93, 'Hectare', 230, 7, 'france test rrelates erewr', 'active', '2018-08-31 14:14:51', '2018-08-31 14:18:21'),
(187, 'Product 2233', 7.35, 'Hectare', 230, 7, 'Best edit ever', 'active', '2018-08-31 16:10:00', '2018-08-31 16:14:12'),
(188, 'A10_X', 2.3, 'Hectare', 232, 2, 'Suga snops', 'active', '2018-09-05 09:08:16', '2018-09-05 09:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` int(10) UNSIGNED NOT NULL,
  `institutename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id`, `institutename`, `country`, `created_at`, `updated_at`) VALUES
(1, 'University of Dar', '2', NULL, '2018-05-03 09:53:46'),
(2, 'Mzumbe University', '2', NULL, '2018-05-03 09:34:13'),
(3, 'University of Leeds', '1', '2018-05-03 09:04:01', '2018-05-03 09:34:05'),
(4, 'University of Home Afairs', '1', '2018-05-03 09:08:18', '2018-05-03 09:08:18'),
(6, 'IFM', '1', '2018-05-03 09:35:51', '2018-05-03 09:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `jobgroups`
--

CREATE TABLE `jobgroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobgroupname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobgroupdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `languagename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loantables`
--

CREATE TABLE `loantables` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loantrans`
--

CREATE TABLE `loantrans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maritalstatus`
--

CREATE TABLE `maritalstatus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(500, '2014_10_12_000000_create_users_table', 1),
(501, '2014_10_12_100000_create_password_resets_table', 1),
(502, '2018_05_12_140817_create_farmers_table', 1),
(503, '2018_05_13_060556_create_products_table', 1),
(504, '2018_05_13_061031_create_product_categories_table', 1),
(505, '2018_05_13_062152_create_product_category_table', 1),
(506, '2018_05_14_050338_create_product_prices_table', 1),
(507, '2018_05_15_083531_create_purchases_table', 1),
(508, '2018_05_15_135954_create_remarks_table', 1),
(509, '2018_05_29_183330_create_addresses_table', 1),
(510, '2018_05_30_090730_create_bouncer_tables', 1),
(511, '2018_05_30_172904_create_audits_table', 1),
(512, '2018_06_25_135944_create_farms_table', 1),
(513, '2018_06_25_142204_create_harvests_table', 1),
(514, '2018_06_25_142951_create_farm_crop_table', 1),
(515, '2018_06_25_144104_create_batches_table', 1),
(516, '2018_06_25_144622_create_farmer_batch_table', 1),
(517, '2018_06_25_153201_create_blocks_table', 1),
(518, '2018_07_14_131909_create_groups_table', 1),
(519, '2018_07_14_132352_create_group_members_table', 1),
(520, '2018_07_14_132439_create_group_products_table', 1),
(521, '2018_07_29_143658_create_delivery_notes_table', 2),
(522, '2018_08_08_120503_create_household_blocks_table', 3),
(525, '2018_09_07_151104_create_employees_table', 4),
(526, '2018_09_07_151907_create_prltransactions_table', 4),
(527, '2017_06_08_162840_create_jobs_table', 5),
(528, '2017_06_08_162922_create_employee_status_table', 5),
(529, '2017_06_08_163022_create_employee_paytype_table', 5),
(530, '2017_06_08_163055_create_employee_endofcontract_reasons_table', 5),
(531, '2017_06_09_050437_create_employement_status_reasons_table', 5),
(532, '2017_06_09_050725_create_marital_status_reasons_table', 5),
(533, '2017_06_09_051117_create_pay_period_table', 5),
(534, '2017_06_09_112512_create_pension_table', 5),
(535, '2017_06_09_115145_create_depertment_table', 5),
(536, '2017_06_09_115202_create_costcenter_table', 5),
(537, '2018_04_14_071429_create_jobgroups_table', 5),
(538, '2018_04_14_080857_add_jobgroup_to_jobs', 5),
(539, '2018_04_15_121647_create_table_banks', 5),
(540, '2018_04_17_143314_create_social_security_schemes_table', 5),
(541, '2018_04_17_144321_create_h_d_m_fs_table', 5),
(542, '2018_04_17_144549_create_health_insuarances_table', 5),
(543, '2018_04_17_150341_create_tax_tables_table', 5),
(544, '2018_04_17_151154_create_departments_table', 5),
(545, '2018_04_17_151217_create_branches_table', 5),
(546, '2018_04_17_151313_create_companies_table', 5),
(547, '2017_05_29_154703_create_employees_table', 6),
(548, '2018_04_17_154737_add_colums_to_employees_tables', 6),
(549, '2018_04_17_155756_create_cost_centers_table', 6),
(550, '2018_04_18_072313_create_yes_or_nos_table', 6),
(551, '2018_04_18_084146_update_table_health', 6),
(552, '2018_04_18_084446_update_table_hdmf', 6),
(553, '2018_04_23_095740_Add_company_name_field', 6),
(554, '2018_04_23_100510_create_prlemployementstatuses_table', 6),
(555, '2018_04_23_102446_create_payperiods_table', 7),
(556, '2018_04_26_124817_create_salaries_table', 7),
(557, '2018_04_26_131814_add_amount_changed_to_salary_table', 7),
(558, '2018_04_26_134818_create_payrolls_table', 7),
(559, '2018_04_26_161036_create_years_table', 7),
(560, '2018_04_27_131838_create_months_table', 7),
(561, '2018_04_30_162411_create_table_employee_qualification', 7),
(562, '2018_04_30_162457_create_qualificationlevels_table', 8),
(563, '2018_04_30_162533_create_qualifications_table', 8),
(564, '2018_05_07_060320_create_dependants_table', 8),
(565, '2018_05_07_060353_create_dependanttypes_table', 8),
(566, '2018_05_07_101805_add_reporting_to_column', 8),
(567, '2018_05_07_141705_create_work_experiences_table', 8),
(568, '2018_05_07_143109_create_skills_table', 8),
(569, '2018_05_07_143131_create_languages_table', 8),
(570, '2018_05_07_143206_create_employeelanguages_table', 8),
(571, '2018_05_08_094336_create_forms_table', 8),
(572, '2018_05_10_152449_Add_field_jobtitle_in_experiencetable', 8),
(573, '2018_05_10_154204_create_titles_table', 8),
(574, '2018_05_10_162020_add_employee_id_column', 8),
(575, '2018_05_10_163959_add_spouse_emergence', 8),
(576, '2018_05_11_153154_add_account_name', 8),
(577, '2018_05_15_150057_Add_finacial__id', 8),
(578, '2018_05_17_121724_add_salarycredit_field', 8),
(579, '2018_05_17_122728_alter_sstable', 9),
(580, '2018_05_17_123810_alter_sstable_id', 9),
(581, '2018_05_17_142319_add_bracket_in_tax_table', 9),
(582, '2018_05_28_134309_create_payroll_trans_table', 9),
(583, '2018_05_29_150944_create_otherdeductions_table', 9),
(584, '2018_05_29_151529_create_otherdedtables_table', 9),
(585, '2018_05_29_151854_create_otherdedtrans_table', 9),
(586, '2018_05_31_062450_create_otherincometrans_table', 9),
(587, '2018_05_31_062524_create_otherincometables_table', 9),
(588, '2018_05_31_062610_create_otherincomes_table', 9),
(589, '2018_05_31_115733_create_loans_table', 9),
(590, '2018_05_31_115825_create_loantrans_table', 9),
(591, '2018_05_31_115841_create_loantables_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(10) UNSIGNED NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `month`, `created_at`, `updated_at`) VALUES
(1, 'January', NULL, NULL),
(2, 'February', NULL, NULL),
(3, 'March', NULL, NULL),
(4, 'Appril', NULL, NULL),
(5, 'May', NULL, NULL),
(6, 'June', NULL, NULL),
(7, 'July', NULL, NULL),
(8, 'August', NULL, NULL),
(9, 'September', NULL, NULL),
(10, 'October', NULL, NULL),
(11, 'November', NULL, NULL),
(12, 'December', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otherdedtables`
--

CREATE TABLE `otherdedtables` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otherdedtrans`
--

CREATE TABLE `otherdedtrans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otherdeductions`
--

CREATE TABLE `otherdeductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otherincomes`
--

CREATE TABLE `otherincomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otherincometables`
--

CREATE TABLE `otherincometables` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otherincometrans`
--

CREATE TABLE `otherincometrans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payroll_trans`
--

CREATE TABLE `payroll_trans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paytypes`
--

CREATE TABLE `paytypes` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paytypes`
--

INSERT INTO `paytypes` (`id`, `name`, `desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1', 'Salary', '', NULL, NULL, NULL),
('2', 'Hourly', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `ability_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`ability_id`, `entity_id`, `entity_type`, `forbidden`, `scope`) VALUES
(1, 1, 'roles', 0, NULL),
(2, 2, 'roles', 0, NULL),
(3, 2, 'roles', 0, NULL),
(4, 2, 'roles', 0, NULL),
(5, 2, 'roles', 0, NULL),
(6, 2, 'roles', 0, NULL),
(7, 2, 'roles', 0, NULL),
(8, 2, 'roles', 0, NULL),
(9, 2, 'roles', 0, NULL),
(10, 2, 'roles', 0, NULL),
(11, 2, 'roles', 0, NULL),
(12, 2, 'roles', 0, NULL),
(13, 2, 'roles', 0, NULL),
(14, 3, 'roles', 0, NULL),
(15, 3, 'roles', 0, NULL),
(16, 3, 'roles', 0, NULL),
(17, 3, 'roles', 0, NULL),
(18, 3, 'roles', 0, NULL),
(19, 3, 'roles', 0, NULL),
(2, 4, 'roles', 0, NULL),
(3, 4, 'roles', 0, NULL),
(4, 4, 'roles', 0, NULL),
(20, 4, 'roles', 0, NULL),
(5, 4, 'roles', 0, NULL),
(6, 4, 'roles', 0, NULL),
(7, 4, 'roles', 0, NULL),
(21, 4, 'roles', 0, NULL),
(22, 4, 'roles', 0, NULL),
(23, 4, 'roles', 0, NULL),
(24, 4, 'roles', 0, NULL),
(25, 4, 'roles', 0, NULL),
(8, 4, 'roles', 0, NULL),
(9, 4, 'roles', 0, NULL),
(10, 4, 'roles', 0, NULL),
(26, 4, 'roles', 0, NULL),
(27, 4, 'roles', 0, NULL),
(28, 4, 'roles', 0, NULL),
(29, 4, 'roles', 0, NULL),
(30, 4, 'roles', 0, NULL),
(11, 4, 'roles', 0, NULL),
(12, 4, 'roles', 0, NULL),
(13, 4, 'roles', 0, NULL),
(31, 4, 'roles', 0, NULL),
(2, 5, 'roles', 0, NULL),
(14, 5, 'roles', 0, NULL),
(15, 5, 'roles', 0, NULL),
(16, 5, 'roles', 0, NULL),
(32, 5, 'roles', 0, NULL),
(17, 5, 'roles', 0, NULL),
(18, 5, 'roles', 0, NULL),
(19, 5, 'roles', 0, NULL),
(33, 5, 'roles', 0, NULL),
(5, 5, 'roles', 0, NULL),
(6, 5, 'roles', 0, NULL),
(7, 5, 'roles', 0, NULL),
(21, 5, 'roles', 0, NULL),
(34, 5, 'roles', 0, NULL),
(35, 5, 'roles', 0, NULL),
(36, 5, 'roles', 0, NULL),
(37, 5, 'roles', 0, NULL),
(38, 5, 'roles', 0, NULL),
(39, 5, 'roles', 0, NULL),
(40, 5, 'roles', 0, NULL),
(41, 5, 'roles', 0, NULL),
(27, 5, 'roles', 0, NULL),
(28, 5, 'roles', 0, NULL),
(29, 5, 'roles', 0, NULL),
(30, 5, 'roles', 0, NULL),
(2, 6, 'roles', 0, NULL),
(3, 6, 'roles', 0, NULL),
(20, 6, 'roles', 0, NULL),
(14, 6, 'roles', 0, NULL),
(15, 6, 'roles', 0, NULL),
(16, 6, 'roles', 0, NULL),
(32, 6, 'roles', 0, NULL),
(17, 6, 'roles', 0, NULL),
(18, 6, 'roles', 0, NULL),
(19, 6, 'roles', 0, NULL),
(33, 6, 'roles', 0, NULL),
(5, 6, 'roles', 0, NULL),
(34, 6, 'roles', 0, NULL),
(35, 6, 'roles', 0, NULL),
(36, 6, 'roles', 0, NULL),
(37, 6, 'roles', 0, NULL),
(38, 6, 'roles', 0, NULL),
(39, 6, 'roles', 0, NULL),
(40, 6, 'roles', 0, NULL),
(41, 6, 'roles', 0, NULL),
(27, 6, 'roles', 0, NULL),
(28, 6, 'roles', 0, NULL),
(29, 6, 'roles', 0, NULL),
(30, 6, 'roles', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prldailytrans`
--

CREATE TABLE `prldailytrans` (
  `counterindex` int(11) NOT NULL,
  `rtref` varchar(11) NOT NULL DEFAULT '',
  `rtdesc` varchar(40) NOT NULL DEFAULT '',
  `rtdate` date NOT NULL DEFAULT '0000-00-00',
  `payroll_id` varchar(10) NOT NULL DEFAULT '',
  `employee_id` int(100) NOT NULL,
  `reg_hours` decimal(12,2) NOT NULL DEFAULT '0.00',
  `absenthrs` decimal(12,2) NOT NULL DEFAULT '0.00',
  `latehrs` decimal(12,2) NOT NULL DEFAULT '0.00',
  `regamt` decimal(12,2) NOT NULL DEFAULT '0.00',
  `absentamt` decimal(12,2) NOT NULL DEFAULT '0.00',
  `lateamt` decimal(12,2) NOT NULL DEFAULT '0.00',
  `approved` int(11) NOT NULL DEFAULT '0',
  `verified` int(11) NOT NULL DEFAULT '0',
  `approver` varchar(10) NOT NULL,
  `verifyer` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prldailytrans`
--

INSERT INTO `prldailytrans` (`counterindex`, `rtref`, `rtdesc`, `rtdate`, `payroll_id`, `employee_id`, `reg_hours`, `absenthrs`, `latehrs`, `regamt`, `absentamt`, `lateamt`, `approved`, `verified`, `approver`, `verifyer`) VALUES
(1, '', '', '2018-04-02', '4', 3, '8.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 0, '', ''),
(2, '', '', '2018-04-03', '4', 3, '8.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 0, '', ''),
(3, '', '', '2018-04-04', '4', 3, '8.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 0, '', ''),
(4, '', '', '2018-04-02', '4', 7, '8.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 0, '', ''),
(5, '', '', '2018-04-06', '4', 7, '8.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 0, '', ''),
(6, '', '', '2018-04-02', '4', 9, '8.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prlemployeemaster`
--

CREATE TABLE `prlemployeemaster` (
  `employeeid` int(10) UNSIGNED NOT NULL,
  `employeecode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spousename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atmnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hdmfnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hdmfcode` int(11) NOT NULL,
  `isPension` int(11) DEFAULT NULL,
  `pencode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isHdmf` int(11) DEFAULT NULL,
  `isTaxed` int(11) DEFAULT NULL,
  `isGratuity` int(11) DEFAULT NULL,
  `isHeslb` int(11) DEFAULT NULL,
  `phnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `healthcode` int(11) NOT NULL,
  `taxactnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `terminatedate` date DEFAULT NULL,
  `probdate` date DEFAULT NULL,
  `retireddate` date DEFAULT NULL,
  `paytype` int(11) DEFAULT NULL,
  `payperiodid` int(11) NOT NULL,
  `periodrate` decimal(12,2) NOT NULL,
  `hourlyrate` decimal(12,2) NOT NULL,
  `glactcode` int(11) NOT NULL,
  `marital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxstatusid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governmentid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employmentid` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `terminatereason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suspfrom` date NOT NULL,
  `suspto` date NOT NULL,
  `companyid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reportto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deptid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobgroupid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `costcenterid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employeepicture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `spouseemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouseaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spousephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextofkinname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextofkinemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextofkinphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextofkinaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prlemploymentstatus`
--

CREATE TABLE `prlemploymentstatus` (
  `id` int(10) UNSIGNED NOT NULL,
  `employementdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prlemploymentstatus`
--

INSERT INTO `prlemploymentstatus` (`id`, `employementdesc`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', NULL, NULL),
(2, 'Part Time', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prlhdmftable`
--

CREATE TABLE `prlhdmftable` (
  `id` int(10) UNSIGNED NOT NULL,
  `bracket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rangefrom` decimal(12,2) NOT NULL,
  `rangeto` decimal(12,2) NOT NULL,
  `dedtypeer` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employershare` decimal(12,2) NOT NULL,
  `dedtypeee` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeshare` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prlhdmftable`
--

INSERT INTO `prlhdmftable` (`id`, `bracket`, `rangefrom`, `rangeto`, `dedtypeer`, `employershare`, `dedtypeee`, `employeeshare`, `total`, `created_at`, `updated_at`) VALUES
(2, '1', '0.00', '9999999999.99', 'Percentage', '0.00', 'Percentage', '2.00', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prlhdmftransactions`
--

CREATE TABLE `prlhdmftransactions` (
  `id` int(11) NOT NULL,
  `payroll_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `grosspay` decimal(12,2) NOT NULL,
  `employer_hdmf` decimal(12,2) NOT NULL DEFAULT '0.00',
  `employee_hdmf` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `fsmonth` tinyint(4) NOT NULL DEFAULT '0',
  `fsyear` double NOT NULL DEFAULT '0',
  `creator_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlhdmftransactions`
--

INSERT INTO `prlhdmftransactions` (`id`, `payroll_id`, `employee_id`, `grosspay`, `employer_hdmf`, `employee_hdmf`, `total`, `fsmonth`, `fsyear`, `creator_id`, `created_at`, `updated_at`) VALUES
(253, 4, 12, '940000.00', '0.00', '18800.00', '0.00', 0, 0, 1, '2018-09-27 11:20:01', '0000-00-00 00:00:00'),
(254, 4, 13, '0.00', '0.00', '0.00', '0.00', 0, 0, 1, '2018-09-27 11:20:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlhdmftypes`
--

CREATE TABLE `prlhdmftypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `bracket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rangefrom` decimal(12,2) NOT NULL,
  `rangeto` decimal(12,2) NOT NULL,
  `dedtypeer` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employershare` decimal(12,2) NOT NULL,
  `dedtypeee` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeshare` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prlhdmftypes`
--

INSERT INTO `prlhdmftypes` (`id`, `bracket`, `rangefrom`, `rangeto`, `dedtypeer`, `employershare`, `dedtypeee`, `employeeshare`, `total`, `created_at`, `updated_at`) VALUES
(2, '1', '0.00', '9999999999.99', 'Percentage', '0.00', 'Percentage', '2.00', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prlhealthtransactions`
--

CREATE TABLE `prlhealthtransactions` (
  `id` int(10) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `payroll_id` int(11) NOT NULL,
  `grosspay` decimal(12,2) NOT NULL,
  `employee_contr` decimal(12,2) NOT NULL,
  `employer_contr` decimal(12,2) NOT NULL,
  `total` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlhealthtransactions`
--

INSERT INTO `prlhealthtransactions` (`id`, `employee_id`, `payroll_id`, `grosspay`, `employee_contr`, `employer_contr`, `total`, `creator_id`, `created_at`, `updated_at`) VALUES
(163, 6, 4, '638000.00', '16800.00', '16800.00', 33600, 1, '2018-09-27 11:20:01', '0000-00-00 00:00:00'),
(164, 12, 4, '940000.00', '28200.00', '28200.00', 56400, 1, '2018-09-27 11:20:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlhealthtypes`
--

CREATE TABLE `prlhealthtypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `bracket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rangefrom` decimal(12,2) NOT NULL,
  `rangeto` decimal(12,2) NOT NULL,
  `salarycredit` decimal(12,2) NOT NULL,
  `employerph` decimal(12,2) NOT NULL,
  `employerec` decimal(12,2) NOT NULL,
  `employeeph` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prlhealthtypes`
--

INSERT INTO `prlhealthtypes` (`id`, `bracket`, `rangefrom`, `rangeto`, `salarycredit`, `employerph`, `employerec`, `employeeph`, `total`, `created_at`, `updated_at`) VALUES
(2, '1', '0.00', '9999999999.99', '0.00', '3.00', '0.00', '3.00', '6.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prlloanfiles`
--

CREATE TABLE `prlloanfiles` (
  `id` int(10) NOT NULL,
  `loanfiledesc` varchar(40) NOT NULL DEFAULT '',
  `employee_id` int(10) NOT NULL,
  `loandate` date NOT NULL DEFAULT '0000-00-00',
  `loantype_id` int(4) NOT NULL,
  `loanamount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `amortization` decimal(12,2) NOT NULL DEFAULT '0.00',
  `amount_term` varchar(100) DEFAULT NULL,
  `transaction_type` varchar(100) DEFAULT NULL,
  `percent` decimal(12,2) DEFAULT NULL,
  `startdeduction` date NOT NULL DEFAULT '0000-00-00',
  `ytddeduction` decimal(12,2) DEFAULT NULL,
  `loanbalance` decimal(12,2) DEFAULT NULL,
  `accountcode` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `payroll_id` int(30) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlloanfiles`
--

INSERT INTO `prlloanfiles` (`id`, `loanfiledesc`, `employee_id`, `loandate`, `loantype_id`, `loanamount`, `amortization`, `amount_term`, `transaction_type`, `percent`, `startdeduction`, `ytddeduction`, `loanbalance`, `accountcode`, `status`, `payroll_id`, `updated_at`, `created_at`) VALUES
(3, 'Loan for Heslb', 1, '2018-02-12', 1, '9800000.00', '630000.00', 'Amount', 'Basic', '15.00', '2018-02-20', NULL, '4760000.00', NULL, NULL, 3, '2018-06-11 16:16:33', '2018-05-31 12:27:06'),
(4, 'Loan for Heslb', 1, '2018-04-16', 2, '3000000.00', '630000.00', 'Percent', 'Basic', '15.00', '2018-02-06', NULL, '-3200000.00', NULL, NULL, 3, '2018-06-11 16:16:33', '2018-05-31 12:29:24'),
(5, 'Loan for Heslb 5', 7, '2017-12-31', 2, '9600000.00', '630000.00', 'Percent', 'Basic', '5.00', '2018-04-07', NULL, '960000.00', NULL, '1', NULL, '2018-10-06 11:55:57', '2018-06-01 03:17:05'),
(6, 'Zend Loan', 8, '2018-06-01', 1, '20000.00', '70000.00', 'Percent', 'Gross', '9.00', '2018-03-31', NULL, '-4480000.00', NULL, '2', 3, '2018-06-11 16:16:33', '2018-06-01 04:40:29'),
(7, 'Loan for Heslb', 2, '2018-02-12', 2, '210000.00', '920000.00', 'Percent', 'Basic', '10.00', '2018-03-05', NULL, '-200000.00', NULL, '2', NULL, '2018-10-06 13:09:56', '2018-06-01 04:41:47'),
(9, 'Salary Advance', 6, '2018-10-01', 2, '8400000.00', '400000.00', 'Amount', NULL, NULL, '2018-04-02', NULL, '8400000.00', NULL, '1', 4, '2018-10-06 11:43:27', '2018-10-06 11:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `prlloantransactions`
--

CREATE TABLE `prlloantransactions` (
  `id` int(11) NOT NULL,
  `payroll_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL,
  `loantype_id` int(4) NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `accountcode` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlloantransactions`
--

INSERT INTO `prlloantransactions` (`id`, `payroll_id`, `employee_id`, `loantype_id`, `amount`, `accountcode`, `creator_id`, `created_at`, `updated_at`) VALUES
(36, 5, 1, 1, '630000.00', 0, 1, '2018-09-27 11:19:46', '0000-00-00 00:00:00'),
(37, 5, 1, 2, '630000.00', 0, 1, '2018-09-27 11:19:46', '0000-00-00 00:00:00'),
(38, 5, 7, 1, '630000.00', 0, 1, '2018-09-27 11:19:46', '0000-00-00 00:00:00'),
(39, 5, 8, 1, '70000.00', 0, 1, '2018-09-27 11:19:46', '0000-00-00 00:00:00'),
(40, 5, 2, 2, '920000.00', 0, 1, '2018-09-27 11:19:46', '0000-00-00 00:00:00'),
(41, 4, 1, 1, '630000.00', 0, 1, '2018-09-27 11:20:02', '0000-00-00 00:00:00'),
(42, 4, 1, 2, '630000.00', 0, 1, '2018-09-27 11:20:02', '0000-00-00 00:00:00'),
(43, 4, 7, 1, '630000.00', 0, 1, '2018-09-27 11:20:02', '0000-00-00 00:00:00'),
(44, 4, 8, 1, '70000.00', 0, 1, '2018-09-27 11:20:02', '0000-00-00 00:00:00'),
(45, 4, 2, 2, '920000.00', 0, 1, '2018-09-27 11:20:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlloantypes`
--

CREATE TABLE `prlloantypes` (
  `id` tinyint(4) NOT NULL,
  `loantypedesc` varchar(250) NOT NULL DEFAULT '',
  `accountcode` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlloantypes`
--

INSERT INTO `prlloantypes` (`id`, `loantypedesc`, `accountcode`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'HESLB', 0, 0, '2018-10-06 13:42:30', '0000-00-00 00:00:00'),
(2, 'Advance Salary', 0, 0, '2018-10-06 13:42:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlothdedctypes`
--

CREATE TABLE `prlothdedctypes` (
  `id` tinyint(4) NOT NULL,
  `othincdesc` varchar(50) NOT NULL,
  `taxable` varchar(10) NOT NULL DEFAULT '',
  `appearoninvoice` int(11) NOT NULL,
  `accountcode` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlothdedctypes`
--

INSERT INTO `prlothdedctypes` (`id`, `othincdesc`, `taxable`, `appearoninvoice`, `accountcode`, `active`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Less NSSF', '', 0, 0, 0, 0, '2018-09-14 06:24:20', '0000-00-00 00:00:00'),
(2, 'Advance Salary', '', 0, 0, 0, 0, '2018-09-14 06:24:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlothdedfiles`
--

CREATE TABLE `prlothdedfiles` (
  `id` int(11) NOT NULL,
  `othfileref` varchar(10) DEFAULT NULL,
  `othfiledesc` varchar(40) DEFAULT NULL,
  `employee_id` int(10) NOT NULL,
  `othdate` date NOT NULL DEFAULT '0000-00-00',
  `stopdate` date NOT NULL,
  `othded_id` int(10) NOT NULL,
  `othdedamount` decimal(12,2) DEFAULT NULL,
  `subamount` decimal(12,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount_term` varchar(200) NOT NULL,
  `percent` decimal(12,2) DEFAULT NULL,
  `transaction_type` varchar(200) DEFAULT NULL,
  `payroll_id` int(40) NOT NULL,
  `approved` varchar(10) DEFAULT NULL,
  `verified` varchar(20) DEFAULT NULL,
  `accountcode` int(11) DEFAULT NULL,
  `attachement` varchar(300) DEFAULT NULL,
  `approver` varchar(20) DEFAULT NULL,
  `verifyer` varchar(20) DEFAULT NULL,
  `recurrent` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `madeat` date DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlothdedfiles`
--

INSERT INTO `prlothdedfiles` (`id`, `othfileref`, `othfiledesc`, `employee_id`, `othdate`, `stopdate`, `othded_id`, `othdedamount`, `subamount`, `quantity`, `amount_term`, `percent`, `transaction_type`, `payroll_id`, `approved`, `verified`, `accountcode`, `attachement`, `approver`, `verifyer`, `recurrent`, `status`, `madeat`, `creator_id`, `updated_at`, `created_at`) VALUES
(1, NULL, NULL, 8, '2018-02-25', '2018-08-04', 1, '60000.00', NULL, NULL, 'Amount', '15.00', 'Basic', 4, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 0, '2018-09-15 09:08:44', '2018-05-31 03:54:01'),
(2, NULL, NULL, 3, '2018-03-02', '2018-03-31', 2, '80000.00', NULL, NULL, 'Percent', '50.00', 'Basic', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-05 17:13:42', '2018-06-01 08:19:34'),
(3, NULL, NULL, 6, '2018-06-05', '2018-06-30', 1, '240000.00', NULL, NULL, 'Amount', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-09-15 09:04:38', '2018-06-23 06:53:48'),
(4, NULL, NULL, 2, '2018-09-30', '2018-11-10', 1, '9000000.00', NULL, NULL, 'Amount', '3.90', 'Gross', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-05 17:40:52', '2018-10-05 17:28:01'),
(5, NULL, NULL, 1, '2018-09-30', '2018-11-02', 1, NULL, NULL, NULL, 'Amount', NULL, 'Gross', 4, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 0, '2018-10-05 17:43:20', '2018-10-05 17:30:21'),
(7, NULL, NULL, 15, '2018-09-30', '2018-11-03', 2, NULL, NULL, NULL, 'Percent', '7.00', 'Basic', 4, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 0, '2018-10-05 17:48:28', '2018-10-05 17:43:57'),
(8, NULL, NULL, 10, '2018-09-30', '2018-11-02', 1, NULL, NULL, NULL, 'Amount', NULL, 'Gross', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-05 17:55:33', '2018-10-05 17:48:18'),
(9, NULL, NULL, 8, '2018-10-01', '2018-10-27', 2, NULL, NULL, NULL, 'Percent', '7.00', 'Gross', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-06 10:36:23', '2018-10-05 17:55:54'),
(10, NULL, NULL, 12, '2018-09-30', '2018-11-10', 1, NULL, NULL, NULL, 'Percent', '89000.00', 'Basic', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-06 10:35:52', '2018-10-06 10:32:11'),
(11, NULL, NULL, 7, '2018-09-30', '2019-12-08', 2, '98000.00', NULL, NULL, 'Amount', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-06 10:35:32', '2018-10-06 10:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `prlothdedtransactions`
--

CREATE TABLE `prlothdedtransactions` (
  `id` int(11) NOT NULL,
  `payroll_id` varchar(20) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `othded_id` int(20) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `creator_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlothdedtransactions`
--

INSERT INTO `prlothdedtransactions` (`id`, `payroll_id`, `employee_id`, `othded_id`, `amount`, `creator_id`, `created_at`, `updated_at`) VALUES
(630, '4', '8', 1, '60000.00', 1, '2018-09-27 11:19:59', '0000-00-00 00:00:00'),
(631, '4', '3', 3, '80000.00', 1, '2018-09-27 11:19:59', '0000-00-00 00:00:00'),
(632, '4', '6', 1, '240000.00', 1, '2018-09-27 11:19:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlothinctypes`
--

CREATE TABLE `prlothinctypes` (
  `id` int(20) NOT NULL,
  `othincdesc` varchar(50) NOT NULL,
  `taxable` varchar(10) NOT NULL DEFAULT '',
  `appearoninvoice` int(11) NOT NULL,
  `accountcode` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlothinctypes`
--

INSERT INTO `prlothinctypes` (`id`, `othincdesc`, `taxable`, `appearoninvoice`, `accountcode`, `active`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Bonus', 'taxable', 0, 0, 0, 0, '2018-09-14 03:23:50', '0000-00-00 00:00:00'),
(2, 'Adjustments', 'taxable', 0, 0, 0, 0, '2018-09-14 03:23:50', '0000-00-00 00:00:00'),
(3, 'Supplements', 'taxable', 0, 0, 0, 0, '2018-09-14 03:23:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlothinfiles`
--

CREATE TABLE `prlothinfiles` (
  `id` int(11) NOT NULL,
  `othfileref` varchar(10) DEFAULT NULL,
  `othfiledesc` varchar(40) DEFAULT NULL,
  `employee_id` int(10) NOT NULL,
  `othdate` date NOT NULL DEFAULT '0000-00-00',
  `stopdate` date NOT NULL,
  `othinc_id` int(4) NOT NULL,
  `othincamount` decimal(12,2) DEFAULT NULL,
  `subamount` decimal(12,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount_term` varchar(200) NOT NULL,
  `percent` decimal(12,2) DEFAULT NULL,
  `transaction_type` varchar(200) DEFAULT NULL,
  `payroll_id` int(40) NOT NULL,
  `approved` varchar(10) DEFAULT NULL,
  `verified` varchar(20) DEFAULT NULL,
  `accountcode` int(11) DEFAULT NULL,
  `attachement` varchar(300) DEFAULT NULL,
  `approver` varchar(20) DEFAULT NULL,
  `verifyer` varchar(20) DEFAULT NULL,
  `recurrent` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `madeat` date DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlothinfiles`
--

INSERT INTO `prlothinfiles` (`id`, `othfileref`, `othfiledesc`, `employee_id`, `othdate`, `stopdate`, `othinc_id`, `othincamount`, `subamount`, `quantity`, `amount_term`, `percent`, `transaction_type`, `payroll_id`, `approved`, `verified`, `accountcode`, `attachement`, `approver`, `verifyer`, `recurrent`, `status`, `madeat`, `creator_id`, `updated_at`, `created_at`) VALUES
(1, NULL, NULL, 3, '2018-02-25', '2018-08-04', 1, '240000.00', NULL, NULL, 'Amount', '15.00', 'Basic', 3, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 0, '2018-09-14 03:39:07', '2018-05-31 03:54:01'),
(2, NULL, NULL, 3, '2018-03-02', '2018-03-31', 3, NULL, NULL, NULL, 'Percent', '50.00', 'Basic', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-05 16:28:12', '2018-06-01 08:19:34'),
(3, NULL, NULL, 14, '2018-06-05', '2018-06-30', 1, '98000.00', NULL, NULL, 'Amount', '99.00', 'Gross', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 4, '2018-10-05 16:28:12', '2018-06-23 06:53:48'),
(5, NULL, NULL, 12, '2018-01-11', '2018-12-01', 2, '7800000.00', NULL, NULL, 'Amount', '44.00', 'Gross', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-05 16:28:12', '2018-10-05 15:37:30'),
(6, NULL, NULL, 5, '2018-10-20', '2018-10-22', 3, NULL, NULL, NULL, 'Percent', '3.90', 'Gross', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-05 15:40:43', '2018-10-05 15:40:43'),
(7, NULL, NULL, 5, '2018-10-01', '2019-02-07', 2, '7800000.00', NULL, NULL, 'Amount', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, '2018-10-05 17:20:43', '2018-10-05 17:20:43'),
(8, NULL, NULL, 3, '2018-09-16', '2018-12-08', 1, '98000.00', NULL, NULL, 'Amount', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, 0, '2018-10-05 17:22:16', '2018-10-05 17:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `prlothintransactions`
--

CREATE TABLE `prlothintransactions` (
  `id` int(11) NOT NULL,
  `payroll_id` varchar(20) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `othinc_id` int(20) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `creator_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlothintransactions`
--

INSERT INTO `prlothintransactions` (`id`, `payroll_id`, `employee_id`, `othinc_id`, `amount`, `creator_id`, `created_at`, `updated_at`) VALUES
(607, '4', '3', 3, '0.00', 1, '2018-09-27 11:19:59', '0000-00-00 00:00:00'),
(608, '4', '6', 1, '78000.00', 1, '2018-09-27 11:19:59', '0000-00-00 00:00:00'),
(609, '4', '8', 1, '700000.00', 1, '2018-09-27 11:19:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlpayperiod`
--

CREATE TABLE `prlpayperiod` (
  `payperiodid` int(10) UNSIGNED NOT NULL,
  `payperioddesc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberofpayday` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prlpayperiod`
--

INSERT INTO `prlpayperiod` (`payperiodid`, `payperioddesc`, `numberofpayday`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Monthly', 22, NULL, NULL, NULL),
(2, 'Weekly', 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prlpayrollperiod`
--

CREATE TABLE `prlpayrollperiod` (
  `id` int(10) UNSIGNED NOT NULL,
  `payrollid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payrolldesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payperiodid` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `fsmonth` int(11) NOT NULL,
  `fsyear` double NOT NULL,
  `financial_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deductsss` int(11) NOT NULL DEFAULT '0',
  `deducthdmf` int(11) NOT NULL DEFAULT '0',
  `deductphilhealth` int(11) NOT NULL DEFAULT '0',
  `iscurrent` int(11) NOT NULL DEFAULT '1',
  `payclosed` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prlpayrollperiod`
--

INSERT INTO `prlpayrollperiod` (`id`, `payrollid`, `payrolldesc`, `payperiodid`, `startdate`, `enddate`, `fsmonth`, `fsyear`, `financial_id`, `deductsss`, `deducthdmf`, `deductphilhealth`, `iscurrent`, `payclosed`, `created_at`, `updated_at`) VALUES
(1, 'Sept2018', 'September 2018', 1, '2018-03-01', '2018-06-09', 9, 2017, NULL, 2, 2, 2, 1, 2, '2018-09-09 13:55:54', '2018-09-19 15:13:50'),
(4, 'Aprill2018', 'Aprill 2018', 1, '2018-04-01', '2018-04-26', 4, 2018, NULL, 1, 1, 1, 1, 1, '2018-09-09 14:46:25', '2018-09-20 10:00:21'),
(5, 'May2018', 'May 2018', 2, '2018-04-29', '2018-04-26', 8, 2018, NULL, 1, 2, 2, 1, 1, '2018-09-19 15:32:09', '2018-09-19 15:40:33'),
(6, 'June2018', 'June 2018', 2, '2018-03-01', '2018-06-09', 7, 2019, NULL, 1, 1, 1, 1, 1, '2018-09-19 15:40:16', '2018-09-19 15:40:16'),
(7, 'November2018', 'November 2018', 1, '2018-11-01', '2018-11-30', 11, 2018, NULL, 1, 1, 1, 1, 1, '2018-09-19 15:55:16', '2018-09-19 15:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `prlphilhealth`
--

CREATE TABLE `prlphilhealth` (
  `id` int(10) UNSIGNED NOT NULL,
  `bracket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rangefrom` decimal(12,2) NOT NULL,
  `rangeto` decimal(12,2) NOT NULL,
  `salarycredit` decimal(12,2) NOT NULL,
  `employerph` decimal(12,2) NOT NULL,
  `employerec` decimal(12,2) NOT NULL,
  `employeeph` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prlssfiles`
--

CREATE TABLE `prlssfiles` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `sstype_id` int(11) NOT NULL,
  `employee_percent` decimal(12,2) NOT NULL,
  `employer_percent` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `creator_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlssfiles`
--

INSERT INTO `prlssfiles` (`id`, `employee_id`, `sstype_id`, `employee_percent`, `employer_percent`, `total`, `active`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '10.00', '10.00', '20.00', 1, 0, '2018-09-15 11:11:59', '0000-00-00 00:00:00'),
(2, 9, 2, '5.00', '15.00', '20.00', 1, 1, '2018-09-15 11:13:19', '0000-00-00 00:00:00'),
(3, 8, 2, '10.00', '10.00', '20.00', 1, 1, '2018-09-17 06:53:12', '0000-00-00 00:00:00'),
(4, 10, 2, '10.00', '10.00', '20.00', 1, 1, '2018-09-17 06:53:12', '0000-00-00 00:00:00'),
(5, 11, 2, '10.00', '10.00', '20.00', 1, 1, '2018-09-18 14:18:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlsstable`
--

CREATE TABLE `prlsstable` (
  `counterindex` int(10) UNSIGNED NOT NULL,
  `bracket` int(11) NOT NULL,
  `rangefrom` decimal(12,2) NOT NULL,
  `rangeto` decimal(12,2) NOT NULL,
  `salarycredit` decimal(12,2) DEFAULT NULL,
  `pencode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employerss` decimal(12,2) NOT NULL,
  `employerec` decimal(12,2) NOT NULL,
  `employeess` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prlsstransactions`
--

CREATE TABLE `prlsstransactions` (
  `id` int(11) NOT NULL,
  `payroll_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `grosspay` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rangefrom` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rangeto` decimal(12,2) NOT NULL DEFAULT '0.00',
  `salarycredit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `employerss` decimal(12,2) NOT NULL DEFAULT '0.00',
  `employerec` decimal(12,2) NOT NULL DEFAULT '0.00',
  `employeess` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `sstype_id` int(20) NOT NULL,
  `fsmonth` tinyint(4) NOT NULL DEFAULT '0',
  `fsyear` double NOT NULL DEFAULT '0',
  `creator_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prlsstransactions`
--

INSERT INTO `prlsstransactions` (`id`, `payroll_id`, `employee_id`, `grosspay`, `rangefrom`, `rangeto`, `salarycredit`, `employerss`, `employerec`, `employeess`, `total`, `sstype_id`, `fsmonth`, `fsyear`, `creator_id`, `created_at`, `updated_at`) VALUES
(854, 5, 3, '7680000.00', '0.00', '0.00', '0.00', '768000.00', '0.00', '768000.00', '1536000.00', 1, 0, 0, 1, '2018-09-27 11:19:45', '0000-00-00 00:00:00'),
(855, 5, 9, '340000.00', '0.00', '0.00', '0.00', '34000.00', '0.00', '34000.00', '68000.00', 1, 0, 0, 1, '2018-09-27 11:19:45', '0000-00-00 00:00:00'),
(856, 5, 10, '4500000.00', '0.00', '0.00', '0.00', '450000.00', '0.00', '450000.00', '900000.00', 1, 0, 0, 1, '2018-09-27 11:19:45', '0000-00-00 00:00:00'),
(857, 5, 11, '366929.00', '0.00', '0.00', '0.00', '36692.90', '0.00', '36692.90', '73385.80', 1, 0, 0, 1, '2018-09-27 11:19:45', '0000-00-00 00:00:00'),
(858, 4, 1, '300000.00', '0.00', '0.00', '0.00', '30000.00', '0.00', '30000.00', '60000.00', 1, 0, 0, 1, '2018-09-27 11:20:00', '0000-00-00 00:00:00'),
(859, 4, 4, '980000.00', '0.00', '0.00', '0.00', '98000.00', '0.00', '98000.00', '196000.00', 1, 0, 0, 1, '2018-09-27 11:20:00', '0000-00-00 00:00:00'),
(860, 4, 6, '638000.00', '0.00', '0.00', '0.00', '63800.00', '0.00', '63800.00', '127600.00', 1, 0, 0, 1, '2018-09-27 11:20:00', '0000-00-00 00:00:00'),
(861, 4, 7, '89600.00', '0.00', '0.00', '0.00', '8960.00', '0.00', '8960.00', '17920.00', 1, 0, 0, 1, '2018-09-27 11:20:00', '0000-00-00 00:00:00'),
(862, 4, 8, '5200000.00', '0.00', '0.00', '0.00', '520000.00', '0.00', '520000.00', '1040000.00', 1, 0, 0, 1, '2018-09-27 11:20:00', '0000-00-00 00:00:00'),
(863, 4, 12, '940000.00', '0.00', '0.00', '0.00', '94000.00', '0.00', '94000.00', '188000.00', 1, 0, 0, 1, '2018-09-27 11:20:00', '0000-00-00 00:00:00'),
(864, 4, 13, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, 0, 0, 1, '2018-09-27 11:20:00', '0000-00-00 00:00:00'),
(865, 4, 14, '600000.00', '0.00', '0.00', '0.00', '60000.00', '0.00', '60000.00', '120000.00', 1, 0, 0, 1, '2018-09-27 11:20:00', '0000-00-00 00:00:00'),
(866, 4, 15, '340000.00', '0.00', '0.00', '0.00', '17000.00', '0.00', '51000.00', '68000.00', 4, 0, 0, 1, '2018-09-27 11:20:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prlsstypes`
--

CREATE TABLE `prlsstypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `bracket` int(11) DEFAULT NULL,
  `rangefrom` decimal(12,2) DEFAULT NULL,
  `rangeto` decimal(12,2) DEFAULT NULL,
  `salarycredit` decimal(12,2) DEFAULT NULL,
  `pencode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employerss` decimal(12,2) NOT NULL,
  `employerec` decimal(12,2) NOT NULL,
  `employeess` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prlsstypes`
--

INSERT INTO `prlsstypes` (`id`, `bracket`, `rangefrom`, `rangeto`, `salarycredit`, `pencode`, `penname`, `employerss`, `employerec`, `employeess`, `total`, `created_at`, `updated_at`) VALUES
(1, 0, '0.00', '9999999999.99', NULL, '', 'NSSSF', '10.00', '10.00', '10.00', '20.00', NULL, NULL),
(2, 0, '0.00', '9999999999.99', NULL, '', 'PSSS', '10.00', '10.00', '10.00', '20.00', NULL, NULL),
(3, 10, '0.00', '99999999.00', NULL, 'PSSS', 'publick ss  social', '10.00', '10.00', '10.00', '20.00', '2018-04-26 08:24:51', '2018-04-26 08:24:51'),
(4, 10, NULL, NULL, NULL, 'NSSf', 'Nssf', '15.00', '15.00', '5.00', '20.00', '2018-04-26 09:42:30', '2018-04-26 09:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `prltaxtablerate`
--

CREATE TABLE `prltaxtablerate` (
  `id` int(10) UNSIGNED NOT NULL,
  `bracket` decimal(12,2) DEFAULT NULL,
  `rangefrom` decimal(12,2) NOT NULL,
  `rangeto` decimal(12,2) NOT NULL,
  `fixtaxableamount` decimal(12,2) NOT NULL,
  `fixtax` decimal(12,2) NOT NULL,
  `percentofexcessamount` double(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prltaxtablerate`
--

INSERT INTO `prltaxtablerate` (`id`, `bracket`, `rangefrom`, `rangeto`, `fixtaxableamount`, `fixtax`, `percentofexcessamount`, `created_at`, `updated_at`) VALUES
(1, '1.00', '0.00', '170000.00', '0.00', '0.00', 0.00, NULL, NULL),
(2, '2.00', '170000.00', '360000.00', '0.00', '0.00', 9.00, NULL, NULL),
(3, '3.00', '360000.00', '540000.00', '17100.00', '17100.00', 20.00, NULL, NULL),
(4, '4.00', '540000.00', '720000.00', '53100.00', '53100.00', 25.00, NULL, NULL),
(5, '5.00', '720000.00', '9999999999.99', '98100.00', '98100.00', 30.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prltaxtablerates`
--

CREATE TABLE `prltaxtablerates` (
  `id` int(10) UNSIGNED NOT NULL,
  `bracket` decimal(12,2) DEFAULT NULL,
  `rangefrom` decimal(12,2) NOT NULL,
  `rangeto` decimal(12,2) NOT NULL,
  `fixtaxableamount` decimal(12,2) NOT NULL,
  `fixtax` decimal(12,2) NOT NULL,
  `percentofexcessamount` double(12,2) NOT NULL,
  `creator_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prltaxtablerates`
--

INSERT INTO `prltaxtablerates` (`id`, `bracket`, `rangefrom`, `rangeto`, `fixtaxableamount`, `fixtax`, `percentofexcessamount`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, '1.00', '0.00', '170000.00', '0.00', '0.00', 0.00, 0, NULL, NULL),
(2, '2.00', '170000.00', '360000.00', '0.00', '0.00', 9.00, 0, NULL, NULL),
(3, '3.00', '360000.00', '540000.00', '17100.00', '17100.00', 20.00, 0, NULL, NULL),
(4, '4.00', '540000.00', '720000.00', '53100.00', '53100.00', 25.00, 0, NULL, NULL),
(5, '5.00', '720000.00', '9999999999.99', '98100.00', '98100.00', 30.00, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prltaxtransactions`
--

CREATE TABLE `prltaxtransactions` (
  `id` int(11) NOT NULL,
  `payroll_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `taxable_income` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(12,2) NOT NULL DEFAULT '0.00',
  `fsmonth` tinyint(4) NOT NULL DEFAULT '0',
  `fsyear` double NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prltaxtransactions`
--

INSERT INTO `prltaxtransactions` (`id`, `payroll_id`, `employee_id`, `taxable_income`, `tax`, `fsmonth`, `fsyear`, `created_at`, `updated_at`, `creator_id`) VALUES
(666, 5, 3, '6912000.00', '1955700.00', 0, 0, '2018-09-27 11:19:46', '0000-00-00 00:00:00', 1),
(667, 5, 9, '306000.00', '12240.00', 0, 0, '2018-09-27 11:19:46', '0000-00-00 00:00:00', 1),
(668, 5, 10, '4050000.00', '1097100.00', 0, 0, '2018-09-27 11:19:46', '0000-00-00 00:00:00', 1),
(669, 5, 11, '330236.10', '14421.25', 0, 0, '2018-09-27 11:19:46', '0000-00-00 00:00:00', 1),
(670, 4, 1, '270000.00', '9000.00', 0, 0, '2018-09-27 11:20:02', '0000-00-00 00:00:00', 1),
(671, 4, 4, '882000.00', '146700.00', 0, 0, '2018-09-27 11:20:02', '0000-00-00 00:00:00', 1),
(672, 4, 6, '574200.00', '61650.00', 0, 0, '2018-09-27 11:20:02', '0000-00-00 00:00:00', 1),
(673, 4, 7, '80640.00', '0.00', 0, 0, '2018-09-27 11:20:02', '0000-00-00 00:00:00', 1),
(674, 4, 8, '4680000.00', '1286100.00', 0, 0, '2018-09-27 11:20:02', '0000-00-00 00:00:00', 1),
(675, 4, 12, '846000.00', '135900.00', 0, 0, '2018-09-27 11:20:02', '0000-00-00 00:00:00', 1),
(676, 4, 13, '0.00', '0.00', 0, 0, '2018-09-27 11:20:02', '0000-00-00 00:00:00', 1),
(677, 4, 14, '540000.00', '53100.00', 0, 0, '2018-09-27 11:20:02', '0000-00-00 00:00:00', 1),
(678, 4, 15, '323000.00', '13770.00', 0, 0, '2018-09-27 11:20:02', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prltransactions`
--

CREATE TABLE `prltransactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `payroll_id` int(11) NOT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `pay_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sstype_id` int(11) NOT NULL,
  `deduct_tax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `deduct_ss` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `deduct_health` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `deduct_hdmf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `pay_period` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period_rate` double NOT NULL,
  `hourly_rate` double NOT NULL,
  `reg_hours` double NOT NULL,
  `basicpay` double NOT NULL,
  `grosspay` double NOT NULL,
  `ss_pay` decimal(12,2) NOT NULL,
  `health` decimal(12,2) NOT NULL,
  `hdmf` decimal(12,2) NOT NULL,
  `other_income` double NOT NULL,
  `taxable_income` decimal(12,2) NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `other_deduction` double NOT NULL,
  `loan_deduction` decimal(12,2) NOT NULL,
  `total_deduction` decimal(12,2) NOT NULL,
  `netpay` double NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prltransactions`
--

INSERT INTO `prltransactions` (`id`, `payroll_id`, `employee_id`, `pay_type`, `sstype_id`, `deduct_tax`, `deduct_ss`, `deduct_health`, `deduct_hdmf`, `pay_period`, `period_rate`, `hourly_rate`, `reg_hours`, `basicpay`, `grosspay`, `ss_pay`, `health`, `hdmf`, `other_income`, `taxable_income`, `tax`, `other_deduction`, `loan_deduction`, `total_deduction`, `netpay`, `creator_id`, `created_at`, `updated_at`) VALUES
(2484, 5, 3, 'Salary', 1, 'yes', 'yes', 'no', 'no', '2', 7680000, 12000, 0, 7680000, 7680000, '768000.00', '0.00', '0.00', 0, '6912000.00', '1955700.00', 0, '0.00', '2723700.00', 4956300, 1, '2018-09-27 11:19:45', '2018-09-27 11:19:46'),
(2485, 5, 9, 'Salary', 1, 'yes', 'yes', 'no', 'no', '2', 340000, 8900, 0, 340000, 340000, '34000.00', '0.00', '0.00', 0, '306000.00', '12240.00', 0, '0.00', '46240.00', 293760, 1, '2018-09-27 11:19:45', '2018-09-27 11:19:46'),
(2486, 5, 10, 'Salary', 1, 'yes', 'yes', 'no', 'no', '2', 4500000, 0, 0, 4500000, 4500000, '450000.00', '0.00', '0.00', 0, '4050000.00', '1097100.00', 0, '0.00', '1547100.00', 2952900, 1, '2018-09-27 11:19:45', '2018-09-27 11:19:46'),
(2487, 5, 11, 'Salary', 1, 'yes', 'yes', 'no', 'no', '2', 366929, 3400, 0, 366929, 366929, '36692.90', '0.00', '0.00', 0, '330236.10', '14421.25', 0, '0.00', '51114.15', 315814.85, 1, '2018-09-27 11:19:45', '2018-09-27 11:19:46'),
(2488, 4, 1, 'Salary', 1, 'yes', 'yes', 'no', 'no', '1', 300000, 0, 0, 300000, 300000, '30000.00', '0.00', '0.00', 0, '270000.00', '9000.00', 0, '1260000.00', '1299000.00', 261000, 1, '2018-09-27 11:19:59', '2018-09-27 11:20:03'),
(2489, 4, 4, 'Salary', 1, 'yes', 'yes', 'no', 'no', '1', 980000, 0, 0, 980000, 980000, '98000.00', '0.00', '0.00', 0, '882000.00', '146700.00', 0, '0.00', '244700.00', 735300, 1, '2018-09-27 11:19:59', '2018-09-27 11:20:03'),
(2490, 4, 6, 'Salary', 1, 'yes', 'yes', 'yes', 'no', '1', 560000, 455, 0, 560000, 638000, '63800.00', '16800.00', '0.00', 78000, '574200.00', '61650.00', 240000, '0.00', '365450.00', 272550, 1, '2018-09-27 11:19:59', '2018-09-27 11:20:03'),
(2491, 4, 7, 'Hourly', 1, 'yes', 'yes', 'no', 'no', '1', 906000, 5600, 16, 89600, 89600, '8960.00', '0.00', '0.00', 0, '80640.00', '0.00', 0, '630000.00', '638960.00', 80640, 1, '2018-09-27 11:19:59', '2018-09-27 11:20:04'),
(2492, 4, 8, 'Salary', 1, 'yes', 'yes', 'no', 'no', '1', 4500000, 0, 0, 4500000, 5200000, '520000.00', '0.00', '0.00', 700000, '4680000.00', '1286100.00', 60000, '70000.00', '1936100.00', 3333900, 1, '2018-09-27 11:19:59', '2018-09-27 11:20:04'),
(2493, 4, 12, 'Salary', 1, 'yes', 'yes', 'yes', 'yes', '1', 940000, 45300, 0, 940000, 940000, '94000.00', '28200.00', '18800.00', 0, '846000.00', '135900.00', 0, '0.00', '229900.00', 710100, 1, '2018-09-27 11:19:59', '2018-09-27 11:20:04'),
(2494, 4, 13, 'Hourly', 1, 'yes', 'yes', 'no', 'yes', '1', 670000, 450, 0, 0, 0, '0.00', '0.00', '0.00', 0, '0.00', '0.00', 0, '0.00', '0.00', 0, 1, '2018-09-27 11:19:59', '2018-09-27 11:20:03'),
(2495, 4, 14, 'Salary', 1, 'yes', 'yes', 'no', 'no', '1', 600000, 3400, 0, 600000, 600000, '60000.00', '0.00', '0.00', 0, '540000.00', '53100.00', 0, '0.00', '113100.00', 486900, 1, '2018-09-27 11:19:59', '2018-09-27 11:20:04'),
(2496, 4, 15, 'Salary', 4, 'yes', 'yes', 'no', 'no', '1', 340000, 3400, 0, 340000, 340000, '17000.00', '0.00', '0.00', 0, '323000.00', '13770.00', 0, '0.00', '30770.00', 309230, 1, '2018-09-27 11:19:59', '2018-09-27 11:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Mange toute(MT)', 'Fugit in vel minus ut dicta aut ducimus.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(2, 'Sugar Snops (SS)', 'Ut assumenda rerum sapiente atque voluptate.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(3, 'Fine Beans (FB)', 'Molestias ut nulla ut sit suscipit.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(4, 'Extra fine Beans (XFB)', 'Et sapiente ut quisquam repellat consequatur hic.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(5, 'Passion fruits', 'Aut voluptatem eos est esse animi esse.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(6, 'Fresno Chili', 'Autem modi quisquam et maxime.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(7, 'Birds eye Chili', 'Enim et eum aut deleniti animi et quis.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(8, 'Scotch Chili', 'Dolorum ipsum et tempore ab blanditiis iste et.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(9, 'Avocado Fuete', 'Perspiciatis deserunt commodi atque itaque aut nulla sit.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(10, 'Avocado Has', 'Officiis quo ab eos est quia.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Cereals', 'Nisi est consequuntur ducimus itaque.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(2, 'Pulses', 'Iste sit non qui consequatur modi voluptatem nihil.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(3, 'Vegetables', 'Accusantium molestiae consequatur dolorem in ad.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(4, 'Fruits', 'Nulla alias debitis qui totam voluptatum.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(5, 'Nuts', 'Quis earum aliquid enim odit et.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(6, 'Oilseeds', 'Voluptas repudiandae ut sed esse.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(7, 'Sugars and Starches', 'Ullam ut dolorem nam dolores aut sed.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(8, 'Fibres', 'Cumque magnam aliquam ipsum repellendus iusto.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(9, 'Beverages', 'Placeat non quia sit exercitationem qui totam cupiditate.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(10, 'Narcotics', 'Fugiat reprehenderit et facere nam voluptatem fuga.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(11, 'Spices', 'Asperiores est debitis minus consectetur veniam ut.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(12, 'Condiments', 'Alias nesciunt ea ipsa soluta.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(13, 'Rubber Forages', 'Neque deleniti veniam architecto aut dolores qui eos.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43'),
(14, 'Green and Green leaf manure', 'Id et expedita est molestiae quasi labore aspernatur.', NULL, '2018-07-25 10:56:43', '2018-07-25 10:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(2, 1, 2, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(3, 1, 3, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(4, 1, 4, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(5, 1, 5, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(6, 2, 6, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(7, 2, 7, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(8, 2, 8, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(9, 2, 9, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(10, 3, 10, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(11, 3, 11, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(12, 3, 12, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(13, 3, 13, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(14, 4, 14, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(15, 4, 15, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(16, 4, 16, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(17, 4, 17, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(18, 4, 18, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(19, 4, 19, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(20, 5, 20, '2018-07-25 14:56:43', '2018-07-25 14:56:43'),
(21, 5, 21, '2018-07-25 14:56:43', '2018-07-25 14:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_value` double NOT NULL,
  `valid_from` timestamp NULL DEFAULT NULL,
  `valid_till` timestamp NULL DEFAULT NULL,
  `is_current_price` tinyint(1) NOT NULL DEFAULT '1',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`id`, `amount`, `currency`, `unit`, `unit_value`, `valid_from`, `valid_till`, `is_current_price`, `product_id`, `group_id`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 750, 'TZS', 'kg', 1, '2018-07-28 21:00:00', NULL, 1, 9, 1, 1, '2018-07-29 11:01:22', '2018-07-29 11:01:22'),
(2, 850, 'TZS', 'kg', 1, '2018-07-28 21:00:00', NULL, 1, 8, 1, 1, '2018-07-29 11:01:33', '2018-07-29 11:01:33'),
(3, 900, 'TZS', 'kg', 1, '2018-07-28 21:00:00', NULL, 1, 7, 1, 1, '2018-07-29 11:01:43', '2018-07-29 11:01:43'),
(4, 1200, 'TZS', 'kg', 1, '2018-07-28 21:00:00', NULL, 1, 6, 1, 1, '2018-07-29 11:01:49', '2018-07-29 11:01:49'),
(5, 1400, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 4, 3, 1, '2018-07-30 16:44:12', '2018-07-30 16:44:12'),
(6, 1400, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 4, 3, 1, '2018-07-30 16:44:25', '2018-07-30 16:44:25'),
(7, 1200, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 3, 3, 1, '2018-07-30 16:44:45', '2018-07-30 16:44:45'),
(8, 2200, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 1, 3, 1, '2018-07-30 18:37:19', '2018-07-30 18:37:19'),
(9, 1400, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 4, 4, 1, '2018-07-30 18:37:45', '2018-07-30 18:37:45'),
(10, 2100, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 2, 4, 1, '2018-07-30 18:38:05', '2018-07-30 18:38:05'),
(11, 2200, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 1, 4, 1, '2018-07-30 18:38:33', '2018-07-30 18:38:33'),
(12, 1200, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 3, 4, 1, '2018-07-30 18:39:16', '2018-07-30 18:39:16'),
(13, 2000, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 2, 3, 1, '2018-07-30 18:39:39', '2018-07-30 18:39:39'),
(14, 2300, 'TZS', 'kg', 1, '2018-07-30 04:00:00', NULL, 1, 1, 2, 1, '2018-07-30 18:40:11', '2018-07-30 18:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_weight` double NOT NULL,
  `weight_before` double DEFAULT NULL,
  `weight_after` double DEFAULT NULL,
  `weight_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('received','packed','graded','rejected','completed','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `crates_count` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `household_block_id` int(11) NOT NULL,
  `batch_id` int(10) UNSIGNED DEFAULT NULL,
  `harvest_id` int(10) UNSIGNED DEFAULT NULL,
  `farmer_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_note_id` int(10) UNSIGNED DEFAULT NULL,
  `block_id` int(10) UNSIGNED DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `field_weight`, `weight_before`, `weight_after`, `weight_unit`, `amount`, `currency`, `status`, `crates_count`, `product_id`, `household_block_id`, `batch_id`, `harvest_id`, `farmer_id`, `delivery_note_id`, `block_id`, `paid_at`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 30, 30, NULL, 'kg', NULL, '', 'packed', 2, 1, 0, 8, 34, 7, 12, 8, NULL, 12, '2018-08-29 13:41:02', '2018-08-29 07:05:42'),
(2, 89, NULL, NULL, 'kg', NULL, '', 'received', 1, 1, 0, 8, 35, 7, 12, 8, NULL, 6, '2018-08-29 08:41:12', '2018-08-29 08:41:12'),
(3, 89, 88, NULL, 'kg', NULL, '', 'packed', 2, 1, 0, 8, 36, 9, 13, 10, NULL, 1, '2018-08-31 17:28:00', '2018-08-31 17:40:51'),
(4, 45, 44, 40, 'kg', 84000, 'TZS', 'paid', 2, 2, 0, 8, 37, 235, 14, 188, '2018-09-05 09:56:17', 1, '2018-09-05 09:14:37', '2018-09-05 09:56:17'),
(5, 3.3, 3.6, 2.8, 'kg', 5880, 'TZS', 'graded', 2, 2, 0, 8, 38, 235, 14, 188, NULL, 1, '2018-09-05 09:59:22', '2018-09-05 10:01:31'),
(6, 89, 88, 83, 'kg', 174300, 'TZS', 'graded', 2, 2, 0, 8, 39, 235, 15, 188, NULL, 1, '2018-09-06 13:26:29', '2018-09-06 13:28:44'),
(7, 700, 670, 650, 'kg', 1365000, 'TZS', 'graded', 1, 2, 0, 8, 40, 235, 15, 188, NULL, 1, '2018-09-06 13:30:58', '2018-09-06 13:31:55'),
(8, 77.99, 77.82, 76.8, 'kg', 161280, 'TZS', 'graded', 3, 2, 0, 8, 41, 235, 15, 188, NULL, 1, '2018-09-06 13:39:49', '2018-09-06 13:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `qualificationlevels`
--

CREATE TABLE `qualificationlevels` (
  `id` int(10) UNSIGNED NOT NULL,
  `qlevelname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qleveldesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `qualificationname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE `remarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarkable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarkable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`id`, `body`, `remarkable_type`, `remarkable_id`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', 'App\\Purchase', 1, NULL, '2018-07-29 12:11:04', '2018-07-29 12:11:04'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', 'App\\Purchase', 2, NULL, '2018-07-29 12:12:14', '2018-07-29 12:12:14'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', 'App\\Purchase', 3, NULL, '2018-07-29 12:12:31', '2018-07-29 12:12:31'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui. Ut orci quam, ornare sed lorem sed, hendrerit auctor dolor. Nulla viverra, nibh quis ultrices malesuada, ligula ipsum vulputate diam, aliquam egestas nibh ante vel dui. Sed in.', 'App\\Purchase', 4, NULL, '2018-07-29 12:32:52', '2018-07-29 12:32:52'),
(5, '400', 'App\\Purchase', 5, NULL, '2018-07-29 20:01:38', '2018-07-29 20:01:38'),
(6, 'gffgfg', 'App\\Purchase', 6, NULL, '2018-07-30 04:14:35', '2018-07-30 04:14:35'),
(7, 'anyt', 'App\\Purchase', 7, NULL, '2018-07-30 15:42:45', '2018-07-30 15:42:45'),
(8, 'Bombo', 'App\\Purchase', 8, NULL, '2018-07-30 19:04:08', '2018-07-30 19:04:08'),
(9, 'any', 'App\\Purchase', 9, NULL, '2018-07-30 19:05:10', '2018-07-30 19:05:10'),
(10, 'Nice', 'App\\Purchase', 10, NULL, '2018-07-30 19:05:21', '2018-07-30 19:05:21'),
(11, 'Nice', 'App\\Purchase', 11, NULL, '2018-07-30 19:05:23', '2018-07-30 19:05:23'),
(12, 'Purchases', 'App\\Purchase', 12, NULL, '2018-07-30 19:07:50', '2018-07-30 19:07:50'),
(13, 'Collection', 'App\\Purchase', 13, NULL, '2018-07-30 19:10:16', '2018-07-30 19:10:16'),
(14, 'Collection', 'App\\Purchase', 14, NULL, '2018-07-30 19:12:45', '2018-07-30 19:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `level`, `scope`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'System administrator', 1, NULL, 'Responsible for the upkeep, configuration, and reliable operation of the systems; The system administrator seeks to ensure that the uptime, performance, resources, and security of the computers they manage meet the needs of the users.', '2018-07-25 10:56:42', '2018-07-25 10:56:42'),
(2, 'Farm Group', 'Farm Group', NULL, NULL, 'Farm Group', '2018-07-29 20:07:27', '2018-07-29 20:07:27'),
(3, 'Park house', 'Pack House', NULL, NULL, 'Pach', '2018-07-29 20:08:49', '2018-07-29 20:08:49'),
(4, 'Farm Group officers', 'Farm group officers', NULL, NULL, 'Officers from farm group', '2018-08-29 08:39:50', '2018-08-29 08:39:50'),
(5, 'Pack House Officers', 'Pack house officers', NULL, NULL, 'Officers form Pack house', '2018-08-29 08:45:14', '2018-08-29 08:45:14'),
(6, 'New Pack house', 'New pack house', NULL, NULL, 'new pack house', '2018-08-29 08:55:31', '2018-08-29 08:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `employeeid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salaryfrom` decimal(12,2) NOT NULL DEFAULT '0.00',
  `salaryto` decimal(12,2) NOT NULL DEFAULT '0.00',
  `changedby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `changedamount` int(11) NOT NULL DEFAULT '0',
  `percentage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payrollid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datechanged` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skillname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `titlename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `birthday`, `password`, `country`, `remember_token`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin ', 'Admin', 'admin@homeverge.co.tz', '+1-946-643-5710', 'male', '1988-08-08', '$2y$10$l.WU4Y5swdbVqIZFZp1/Zu07m5sZaX3bwWnVXeXeMJUj8Od04VaiC', 'Serbia', 'FTWAWYVZfkcgW63wgEkxLtLlo6ZxHI55HcJDvel4MBnnAOIT3D4Gex1vO96R', NULL, '2018-07-25 07:56:43', '2018-07-25 07:56:43'),
(2, 'Ivony7', 'Sherry', 'ivona@gmail.com', '0754455332', 'male', '1987-07-25', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', 'alAsGppYHKr6myHLmKBlqqzSMXfSUil0CHGLYzOHUfdV0cdiGUKAaUPdn7dv', 1, '2018-07-25 13:14:46', '2018-08-06 15:08:40'),
(3, 'Humphrey', 'Augustine', 'hajmocube@gmail.com', '0785983869', 'male', '2018-07-17', '$2y$10$NbjNMO/.78E2qcVfgFRMzuHIDHfIlkC13Yov.MnTTVA.em8fQGC3C', 'Tanzania', 'LouYZsHBdlCqNq0EMYls5NTgjPE6lEwYUy8DLi7Rp82bBuxiTGUGyCbB8cb4', 1, '2018-07-28 06:08:47', '2018-08-10 20:34:54'),
(4, 'lukoveg', '933', 'lukoveg933@gmail.com', '0999999999', 'male', '2018-07-15', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', NULL, 1, '2018-07-29 20:10:46', '2018-07-29 20:10:46'),
(5, 'lubuveg', '2012', 'lubuveg2012@gmail.com', '0999999999', 'male', '2018-07-15', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', NULL, 1, '2018-07-29 20:12:54', '2018-07-29 20:12:54'),
(6, 'Bahati', 'H Kiondo', 'bahati.kiondo@homevegfarmers.co.tz', '0714293608', 'female', '2018-07-01', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', 'FmTo1S7Po3jkx4bgVX4tXrmjrznqV3r7cJDgsGgIfkbH0UzlUNhzplCgAbU2', 1, '2018-07-30 16:49:34', '2018-07-30 16:49:34'),
(7, 'Kyarua', 'S Mussa', 'kyarua.mussa@homevegfarmers.co.tz', '0672411085', 'male', '2018-07-15', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', 'bRvUMCXQCqDQSG3irWJ85PmGRqUBNYK7j2L9tVhf2rYWxVaZu1HBcA9OnCKD', 1, '2018-07-30 16:52:17', '2018-07-30 16:52:17'),
(8, 'Rodgers', 'K Makange', 'rodgers.makange@homevegfarmers.co.tz', '0713477764', 'male', '2018-07-08', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', 'ygyvDzqH67tUFv7nRKTHhjy0nyVkXiXFgEj81aTOeBRAdJWvgpd5KEkZpw4e', 1, '2018-07-30 16:54:43', '2018-07-30 16:54:43'),
(9, 'Samwel', 'E Nassary', 'samwel.nassary@homevegfarmers.co.tz', '0784884585', 'male', '2018-07-08', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', 'eupQgsKkexPbyRbeGLgkXvscs6vQ9aB80eCpwVBCyZfeSH7ssCNUKXMf6NlR', 1, '2018-07-30 16:57:12', '2018-07-30 16:57:12'),
(10, 'Juma', 'M Kawanje', 'juma.kawanje@homevegfarmers.co.tz', '0678236629', 'male', '2018-07-08', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', 'JDzxmu1BD0C5uJ5XirZp71i5fcRUzeJcI1S4ARUSyqaabXLtDiEC7A7z1ET1', 1, '2018-07-30 16:59:45', '2018-07-30 16:59:45'),
(11, 'Seth', 'Athumani', 'seth.athumani@homevegfarmers.co.tz', '0659507284', 'male', '2018-07-01', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', 'ENuXZcqwxYGClrD2Gzi2FVqKSVIGkQjmH2ZNyWAzcMWj81izee37NS8F5dtT', 1, '2018-07-30 17:01:14', '2018-07-30 17:01:14'),
(12, 'Meda', 'Tanzania', 'meda@homevegfarmers.co.tz', '0989988987', 'male', '2018-08-20', '$2y$10$Rt8n34InfdaUSB867e7pU.rROT16cCRAalmUiikvi6uvXXaWiPOHC', 'Tanzania', 'CKZlws0OpEvKVLr9EqfqxjFKh9LOudWrJKDlwLTJGtJy6oFYbKX8VbU3Wk70', 1, '2018-08-02 13:40:27', '2018-08-02 13:40:27'),
(13, 'Mussa', 'Mvungi', 'mussamvungi.homevegtz@gmail.com', '0784326206', 'male', '2018-07-16', '$2y$10$NbjNMO/.78E2qcVfgFRMzuHIDHfIlkC13Yov.MnTTVA.em8fQGC3C', 'Tanzania', NULL, 1, '2018-08-10 20:29:08', '2018-08-10 20:29:08'),
(14, 'Tarimo', 'Machel', 'tmachel.homevegtz@gmail.com', '0786683212', 'male', '2018-08-05', '$2y$10$NbjNMO/.78E2qcVfgFRMzuHIDHfIlkC13Yov.MnTTVA.em8fQGC3C', 'Tanzania', NULL, 1, '2018-08-10 20:38:10', '2018-08-10 20:38:10'),
(15, 'Winifrida', 'Ndamugoba', 'boney.neema@gmail.com', '0759266551', 'female', '1981-03-11', '$2y$10$ZrPVyve.KO1eFqWYpLT9ruK.mk7dV9zeVTFQNNbLMij5JeKomsmTW', 'Tanzania', 'BtxuHAqdDZfrz9v5n4iseG52MuK0Bfgq9SMYq7xVlNmChrA4boaM77C4zkVH', 3, '2018-08-28 17:26:42', '2018-08-28 20:42:22'),
(16, 'Halima', 'Mwenda', 'halimamwenda320@gmail.com', '07999999', 'female', '2018-07-29', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', 'lVY8Afx8Qur9BpGmnupNEmOgO8YLy8uf1JmxkCPCwd5s0Esm6tzRovQRF7Hw', 12, '2018-08-28 17:44:11', '2018-08-28 20:47:59'),
(17, 'Flora', 'Wado', 'flofilowado@gmail.com', '0988766555', 'female', '2018-07-29', '$2y$10$guTCrvfPy.CC4rHBZ7n8lOkJNLRKHYc4f5mgxPmJH.6GptIaw21xm', 'Tanzania', 'nCbDF9fEdiEVo8rFDqandDHJ7UNYtp6SlQORw37GnpYbUyBLZ4vChzVvbUAZ', 12, '2018-08-28 17:45:56', '2018-08-28 20:38:07'),
(18, 'Pack', 'Officer', 'pack@officer.com', '0754997619', 'male', '2018-08-20', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', 'DmasZQetAD0GZdZiVWxIsPbGCdLjYA1OvJZVWZWKjXhWGM6ybMt8ABpj6fqD', 12, '2018-08-29 08:46:21', '2018-08-29 08:46:21'),
(19, 'Vista', 'Vaos', 'vista@farmers.com', '0987564882', 'female', '2018-07-29', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', 'Tanzania', NULL, 12, '2018-08-29 08:56:20', '2018-08-29 08:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `work_experiences`
--

CREATE TABLE `work_experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `employeeid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`, `created_at`, `updated_at`) VALUES
(2017, 2017, NULL, NULL),
(2018, 2018, NULL, NULL),
(2019, 2019, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `yes_or_nos`
--

CREATE TABLE `yes_or_nos` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yes_or_nos`
--

INSERT INTO `yes_or_nos` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'YES', 'YES', NULL, NULL),
(2, 'NO', 'NO', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abilities_scope_index` (`scope`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_addressable_type_addressable_id_index` (`addressable_type`(191),`addressable_id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD KEY `assigned_roles_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`),
  ADD KEY `assigned_roles_scope_index` (`scope`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_user_type_user_id_index` (`user_type`(191),`user_id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`(191),`auditable_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost_centers`
--
ALTER TABLE `cost_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_notes`
--
ALTER TABLE `delivery_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependants`
--
ALTER TABLE `dependants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependanttypes`
--
ALTER TABLE `dependanttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeelanguages`
--
ALTER TABLE `employeelanguages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeequalifications`
--
ALTER TABLE `employeequalifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employementstatus`
--
ALTER TABLE `employementstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `endcontractreasons`
--
ALTER TABLE `endcontractreasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer_batch`
--
ALTER TABLE `farmer_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farms`
--
ALTER TABLE `farms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm_product`
--
ALTER TABLE `farm_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_product`
--
ALTER TABLE `group_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harvests`
--
ALTER TABLE `harvests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `household_blocks`
--
ALTER TABLE `household_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobgroups`
--
ALTER TABLE `jobgroups`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loantables`
--
ALTER TABLE `loantables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loantrans`
--
ALTER TABLE `loantrans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maritalstatus`
--
ALTER TABLE `maritalstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherdedtables`
--
ALTER TABLE `otherdedtables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherdedtrans`
--
ALTER TABLE `otherdedtrans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherdeductions`
--
ALTER TABLE `otherdeductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherincomes`
--
ALTER TABLE `otherincomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherincometables`
--
ALTER TABLE `otherincometables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherincometrans`
--
ALTER TABLE `otherincometrans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `payroll_trans`
--
ALTER TABLE `payroll_trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD KEY `permissions_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `permissions_ability_id_index` (`ability_id`),
  ADD KEY `permissions_scope_index` (`scope`);

--
-- Indexes for table `prldailytrans`
--
ALTER TABLE `prldailytrans`
  ADD PRIMARY KEY (`counterindex`);

--
-- Indexes for table `prlemployeemaster`
--
ALTER TABLE `prlemployeemaster`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `prlemploymentstatus`
--
ALTER TABLE `prlemploymentstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlhdmftable`
--
ALTER TABLE `prlhdmftable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlhdmftransactions`
--
ALTER TABLE `prlhdmftransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlhdmftypes`
--
ALTER TABLE `prlhdmftypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlhealthtransactions`
--
ALTER TABLE `prlhealthtransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlhealthtypes`
--
ALTER TABLE `prlhealthtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlloanfiles`
--
ALTER TABLE `prlloanfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlloantransactions`
--
ALTER TABLE `prlloantransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlloantypes`
--
ALTER TABLE `prlloantypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlothdedctypes`
--
ALTER TABLE `prlothdedctypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlothdedfiles`
--
ALTER TABLE `prlothdedfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlothdedtransactions`
--
ALTER TABLE `prlothdedtransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlothinctypes`
--
ALTER TABLE `prlothinctypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlothinfiles`
--
ALTER TABLE `prlothinfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlothintransactions`
--
ALTER TABLE `prlothintransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlpayrollperiod`
--
ALTER TABLE `prlpayrollperiod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlphilhealth`
--
ALTER TABLE `prlphilhealth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlssfiles`
--
ALTER TABLE `prlssfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlsstable`
--
ALTER TABLE `prlsstable`
  ADD PRIMARY KEY (`counterindex`);

--
-- Indexes for table `prlsstransactions`
--
ALTER TABLE `prlsstransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prlsstypes`
--
ALTER TABLE `prlsstypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prltaxtablerate`
--
ALTER TABLE `prltaxtablerate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prltaxtablerates`
--
ALTER TABLE `prltaxtablerates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prltaxtransactions`
--
ALTER TABLE `prltaxtransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prltransactions`
--
ALTER TABLE `prltransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualificationlevels`
--
ALTER TABLE `qualificationlevels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remarks`
--
ALTER TABLE `remarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remarks_remarkable_type_remarkable_id_index` (`remarkable_type`(191),`remarkable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`,`scope`),
  ADD KEY `roles_scope_index` (`scope`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yes_or_nos`
--
ALTER TABLE `yes_or_nos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1487;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cost_centers`
--
ALTER TABLE `cost_centers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_notes`
--
ALTER TABLE `delivery_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dependants`
--
ALTER TABLE `dependants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dependanttypes`
--
ALTER TABLE `dependanttypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeelanguages`
--
ALTER TABLE `employeelanguages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeequalifications`
--
ALTER TABLE `employeequalifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employementstatus`
--
ALTER TABLE `employementstatus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `endcontractreasons`
--
ALTER TABLE `endcontractreasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `farmer_batch`
--
ALTER TABLE `farmer_batch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `farms`
--
ALTER TABLE `farms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `farm_product`
--
ALTER TABLE `farm_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `group_member`
--
ALTER TABLE `group_member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `group_product`
--
ALTER TABLE `group_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `harvests`
--
ALTER TABLE `harvests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `household_blocks`
--
ALTER TABLE `household_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `jobgroups`
--
ALTER TABLE `jobgroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loantables`
--
ALTER TABLE `loantables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loantrans`
--
ALTER TABLE `loantrans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maritalstatus`
--
ALTER TABLE `maritalstatus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=592;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `otherdedtables`
--
ALTER TABLE `otherdedtables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otherdedtrans`
--
ALTER TABLE `otherdedtrans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otherdeductions`
--
ALTER TABLE `otherdeductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otherincomes`
--
ALTER TABLE `otherincomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otherincometables`
--
ALTER TABLE `otherincometables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otherincometrans`
--
ALTER TABLE `otherincometrans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_trans`
--
ALTER TABLE `payroll_trans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prldailytrans`
--
ALTER TABLE `prldailytrans`
  MODIFY `counterindex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prlemployeemaster`
--
ALTER TABLE `prlemployeemaster`
  MODIFY `employeeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prlemploymentstatus`
--
ALTER TABLE `prlemploymentstatus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prlhdmftable`
--
ALTER TABLE `prlhdmftable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prlhdmftransactions`
--
ALTER TABLE `prlhdmftransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `prlhdmftypes`
--
ALTER TABLE `prlhdmftypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prlhealthtransactions`
--
ALTER TABLE `prlhealthtransactions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `prlhealthtypes`
--
ALTER TABLE `prlhealthtypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prlloanfiles`
--
ALTER TABLE `prlloanfiles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prlloantransactions`
--
ALTER TABLE `prlloantransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `prlloantypes`
--
ALTER TABLE `prlloantypes`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prlothdedctypes`
--
ALTER TABLE `prlothdedctypes`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prlothdedfiles`
--
ALTER TABLE `prlothdedfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `prlothdedtransactions`
--
ALTER TABLE `prlothdedtransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;

--
-- AUTO_INCREMENT for table `prlothinfiles`
--
ALTER TABLE `prlothinfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prlothintransactions`
--
ALTER TABLE `prlothintransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `prlpayrollperiod`
--
ALTER TABLE `prlpayrollperiod`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prlphilhealth`
--
ALTER TABLE `prlphilhealth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prlssfiles`
--
ALTER TABLE `prlssfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prlsstable`
--
ALTER TABLE `prlsstable`
  MODIFY `counterindex` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prlsstransactions`
--
ALTER TABLE `prlsstransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=867;

--
-- AUTO_INCREMENT for table `prlsstypes`
--
ALTER TABLE `prlsstypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prltaxtablerate`
--
ALTER TABLE `prltaxtablerate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prltaxtablerates`
--
ALTER TABLE `prltaxtablerates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prltaxtransactions`
--
ALTER TABLE `prltaxtransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT for table `prltransactions`
--
ALTER TABLE `prltransactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2497;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `qualificationlevels`
--
ALTER TABLE `qualificationlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `remarks`
--
ALTER TABLE `remarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `work_experiences`
--
ALTER TABLE `work_experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2020;

--
-- AUTO_INCREMENT for table `yes_or_nos`
--
ALTER TABLE `yes_or_nos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
