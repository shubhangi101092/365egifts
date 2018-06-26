-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 02:29 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `365egifts`
--

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_id` int(10) UNSIGNED NOT NULL,
  `gift_type` enum('gift','crypto') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `business_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `message` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `redeem_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `redeem_limit` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `card_limit` enum('single','bulk','marketing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'single',
  `currency` enum('ETH','BTC','RPL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BTC',
  `expiry_days` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`id`, `template_id`, `gift_type`, `user_id`, `amount`, `first_name`, `last_name`, `phone`, `email`, `business_name`, `url`, `image`, `message`, `redeem_code`, `redeem_limit`, `card_limit`, `currency`, `expiry_days`, `created_at`, `updated_at`) VALUES
(3, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 01:40:55', '2018-06-25 01:40:56'),
(4, 1, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 04:47:37', '2018-06-25 04:47:37'),
(5, 1, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:00:17', '2018-06-25 05:00:17'),
(6, 1, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:00:44', '2018-06-25 05:00:44'),
(7, 1, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:00:54', '2018-06-25 05:00:54'),
(8, 1, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:01:26', '2018-06-25 05:01:26'),
(9, 1, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:02:48', '2018-06-25 05:02:48'),
(10, 1, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:03:36', '2018-06-25 05:03:36'),
(11, 1, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:03:51', '2018-06-25 05:03:51'),
(12, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:04:14', '2018-06-25 05:04:14'),
(13, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:04:20', '2018-06-25 05:04:20'),
(14, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:07:19', '2018-06-25 05:07:19'),
(15, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:09:38', '2018-06-25 05:09:38'),
(16, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:13:38', '2018-06-25 05:13:38'),
(17, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:14:26', '2018-06-25 05:14:26'),
(18, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:14:32', '2018-06-25 05:14:32'),
(19, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:15:01', '2018-06-25 05:15:01'),
(20, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:16:40', '2018-06-25 05:16:40'),
(21, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:17:18', '2018-06-25 05:17:18'),
(22, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:18:08', '2018-06-25 05:18:08'),
(23, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:18:56', '2018-06-25 05:18:56'),
(24, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:20:03', '2018-06-25 05:20:03'),
(25, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 05:20:49', '2018-06-25 05:20:49'),
(26, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 06:57:25', '2018-06-25 06:57:25'),
(27, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 06:57:55', '2018-06-25 06:57:55'),
(28, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 06:58:22', '2018-06-25 06:58:22'),
(29, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 06:59:23', '2018-06-25 06:59:23'),
(30, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:01:18', '2018-06-25 07:01:18'),
(31, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:01:38', '2018-06-25 07:01:38'),
(32, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:02:43', '2018-06-25 07:02:43'),
(33, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:03:07', '2018-06-25 07:03:07'),
(34, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:04:15', '2018-06-25 07:04:15'),
(35, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:04:34', '2018-06-25 07:04:34'),
(36, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:09:47', '2018-06-25 07:09:48'),
(37, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:10:41', '2018-06-25 07:10:41'),
(38, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:11:11', '2018-06-25 07:11:11'),
(39, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:12:10', '2018-06-25 07:12:10'),
(40, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:12:42', '2018-06-25 07:12:42'),
(41, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:12:55', '2018-06-25 07:12:55'),
(42, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:14:28', '2018-06-25 07:14:28'),
(43, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:14:57', '2018-06-25 07:14:57'),
(44, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:18:04', '2018-06-25 07:18:04'),
(45, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:19:38', '2018-06-25 07:19:38'),
(46, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:20:05', '2018-06-25 07:20:05'),
(47, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:20:08', '2018-06-25 07:20:08'),
(48, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:20:22', '2018-06-25 07:20:22'),
(49, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:20:29', '2018-06-25 07:20:29'),
(50, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:20:32', '2018-06-25 07:20:32'),
(51, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:20:34', '2018-06-25 07:20:34'),
(52, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:20:36', '2018-06-25 07:20:36'),
(53, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:20:37', '2018-06-25 07:20:37'),
(54, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:21:23', '2018-06-25 07:21:23'),
(55, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:22:04', '2018-06-25 07:22:04'),
(56, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:23:07', '2018-06-25 07:23:07'),
(57, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:23:07', '2018-06-25 07:23:07'),
(58, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:24:28', '2018-06-25 07:24:28'),
(59, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:24:28', '2018-06-25 07:24:28'),
(60, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:25:14', '2018-06-25 07:25:14'),
(61, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:25:14', '2018-06-25 07:25:14'),
(62, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:25:27', '2018-06-25 07:25:27'),
(63, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:25:27', '2018-06-25 07:25:27'),
(64, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:26:07', '2018-06-25 07:26:07'),
(65, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:26:07', '2018-06-25 07:26:07'),
(66, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:29:57', '2018-06-25 07:29:57'),
(67, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:29:57', '2018-06-25 07:29:57'),
(68, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:30:39', '2018-06-25 07:30:39'),
(69, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:30:39', '2018-06-25 07:30:39'),
(70, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:30:43', '2018-06-25 07:30:43'),
(71, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:30:44', '2018-06-25 07:30:44'),
(72, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:30:48', '2018-06-25 07:30:48'),
(73, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:30:49', '2018-06-25 07:30:49'),
(74, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:30:51', '2018-06-25 07:30:51'),
(75, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:30:51', '2018-06-25 07:30:51'),
(76, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:31:03', '2018-06-25 07:31:03'),
(77, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:31:03', '2018-06-25 07:31:03'),
(78, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:31:52', '2018-06-25 07:31:52'),
(79, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:31:52', '2018-06-25 07:31:52'),
(80, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:31:56', '2018-06-25 07:31:56'),
(81, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:31:56', '2018-06-25 07:31:56'),
(82, 2, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:32:10', '2018-06-25 07:32:10'),
(83, 3, 'gift', 1, 0.00, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'single', 'BTC', 0, '2018-06-25 07:32:10', '2018-06-25 07:32:10'),
(84, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:29:08', '2018-06-25 08:29:08'),
(85, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:29:38', '2018-06-25 08:29:38'),
(86, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:29:38', '2018-06-25 08:29:38'),
(87, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:30:34', '2018-06-25 08:30:34'),
(88, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:30:34', '2018-06-25 08:30:34'),
(89, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:32:46', '2018-06-25 08:32:46'),
(90, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:32:46', '2018-06-25 08:32:46'),
(91, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:35:21', '2018-06-25 08:35:21'),
(92, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:35:21', '2018-06-25 08:35:21'),
(93, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:38:26', '2018-06-25 08:38:26'),
(94, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:38:27', '2018-06-25 08:38:27'),
(95, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:39:08', '2018-06-25 08:39:08'),
(96, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:39:09', '2018-06-25 08:39:09'),
(97, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:39:52', '2018-06-25 08:39:52'),
(98, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:39:52', '2018-06-25 08:39:52'),
(99, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:40:44', '2018-06-25 08:40:44'),
(100, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:40:44', '2018-06-25 08:40:44'),
(101, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:41:39', '2018-06-25 08:41:39'),
(102, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:41:39', '2018-06-25 08:41:39'),
(103, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:43:54', '2018-06-25 08:43:54'),
(104, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:43:54', '2018-06-25 08:43:54'),
(105, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:45:03', '2018-06-25 08:45:03'),
(106, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:45:03', '2018-06-25 08:45:03'),
(107, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:46:40', '2018-06-25 08:46:40'),
(108, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:46:40', '2018-06-25 08:46:40'),
(109, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:47:29', '2018-06-25 08:47:29'),
(110, 2, 'gift', 1, 2.00, 'hsuhs', 'asa', '374384873', 'shubhangi@gmail.com', '0', '0', '0', 'hjsdhsd', '0', '1', 'single', '', 90, '2018-06-25 08:47:29', '2018-06-25 08:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `gift_recipients`
--

CREATE TABLE `gift_recipients` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_shipping` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `shipping_address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `shipping_city` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `shipping_state` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `shipping_zip` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_redeemed` tinyint(1) NOT NULL DEFAULT '0',
  `is_sent` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_recipients`
--

INSERT INTO `gift_recipients` (`id`, `gift_id`, `first_name`, `last_name`, `email`, `phone`, `is_shipping`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zip`, `is_redeemed`, `is_sent`, `created_at`, `updated_at`) VALUES
(1, 19, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 05:15:01', '2018-06-25 05:15:01'),
(2, 25, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 05:20:49', '2018-06-25 05:20:49'),
(3, 26, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 06:57:25', '2018-06-25 06:57:25'),
(4, 27, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 06:57:55', '2018-06-25 06:57:55'),
(5, 27, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 06:57:55', '2018-06-25 06:57:55'),
(6, 28, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 06:58:22', '2018-06-25 06:58:22'),
(7, 28, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 06:58:22', '2018-06-25 06:58:22'),
(8, 29, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 06:59:23', '2018-06-25 06:59:23'),
(9, 29, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 06:59:23', '2018-06-25 06:59:23'),
(10, 30, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:01:18', '2018-06-25 07:01:18'),
(11, 30, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:01:18', '2018-06-25 07:01:18'),
(12, 31, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:01:38', '2018-06-25 07:01:38'),
(13, 31, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:01:38', '2018-06-25 07:01:38'),
(14, 34, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:04:15', '2018-06-25 07:04:15'),
(15, 34, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:04:16', '2018-06-25 07:04:16'),
(16, 35, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:04:34', '2018-06-25 07:04:34'),
(17, 35, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:04:34', '2018-06-25 07:04:34'),
(18, 56, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:23:07', '2018-06-25 07:23:07'),
(19, 57, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:23:07', '2018-06-25 07:23:07'),
(20, 58, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:24:28', '2018-06-25 07:24:28'),
(21, 59, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:24:28', '2018-06-25 07:24:28'),
(22, 60, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:25:14', '2018-06-25 07:25:14'),
(23, 61, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:25:14', '2018-06-25 07:25:14'),
(24, 62, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:25:27', '2018-06-25 07:25:27'),
(25, 63, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:25:27', '2018-06-25 07:25:27'),
(26, 64, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:26:07', '2018-06-25 07:26:07'),
(27, 65, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:26:08', '2018-06-25 07:26:08'),
(28, 66, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:29:57', '2018-06-25 07:29:57'),
(29, 67, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:29:57', '2018-06-25 07:29:57'),
(30, 68, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:30:39', '2018-06-25 07:30:39'),
(31, 69, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:30:39', '2018-06-25 07:30:39'),
(32, 70, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:30:44', '2018-06-25 07:30:44'),
(33, 71, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:30:44', '2018-06-25 07:30:44'),
(34, 72, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:30:49', '2018-06-25 07:30:49'),
(35, 73, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:30:49', '2018-06-25 07:30:49'),
(36, 74, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:30:51', '2018-06-25 07:30:51'),
(37, 75, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:30:52', '2018-06-25 07:30:52'),
(38, 76, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:31:03', '2018-06-25 07:31:03'),
(39, 77, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:31:03', '2018-06-25 07:31:03'),
(40, 78, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:31:52', '2018-06-25 07:31:52'),
(41, 79, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:31:52', '2018-06-25 07:31:52'),
(42, 80, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:31:56', '2018-06-25 07:31:56'),
(43, 81, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:31:56', '2018-06-25 07:31:56'),
(44, 82, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:32:10', '2018-06-25 07:32:10'),
(45, 83, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '2018-06-25 07:32:10', '2018-06-25 07:32:10'),
(46, 84, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:29:09', '2018-06-25 08:29:09'),
(47, 85, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:29:38', '2018-06-25 08:29:38'),
(48, 86, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:29:38', '2018-06-25 08:29:38'),
(49, 87, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:30:34', '2018-06-25 08:30:34'),
(50, 88, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:30:34', '2018-06-25 08:30:34'),
(51, 89, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:32:46', '2018-06-25 08:32:46'),
(52, 90, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:32:46', '2018-06-25 08:32:46'),
(53, 91, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:35:21', '2018-06-25 08:35:21'),
(54, 92, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:35:21', '2018-06-25 08:35:21'),
(55, 93, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:38:27', '2018-06-25 08:38:27'),
(56, 94, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:38:27', '2018-06-25 08:38:27'),
(57, 95, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:39:08', '2018-06-25 08:39:08'),
(58, 96, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:39:09', '2018-06-25 08:39:09'),
(59, 97, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:39:52', '2018-06-25 08:39:52'),
(60, 98, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:39:52', '2018-06-25 08:39:52'),
(61, 99, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:40:44', '2018-06-25 08:40:44'),
(62, 100, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:40:44', '2018-06-25 08:40:44'),
(63, 101, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:41:39', '2018-06-25 08:41:39'),
(64, 102, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:41:39', '2018-06-25 08:41:39'),
(65, 103, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:43:54', '2018-06-25 08:43:54'),
(66, 104, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:43:54', '2018-06-25 08:43:54'),
(67, 105, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:45:03', '2018-06-25 08:45:03'),
(68, 106, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:45:03', '2018-06-25 08:45:03'),
(69, 107, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:46:40', '2018-06-25 08:46:40'),
(70, 108, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:46:40', '2018-06-25 08:46:40'),
(71, 109, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:47:29', '2018-06-25 08:47:29'),
(72, 110, 'shubu', 'shukla', 'shubhu@gmai.co', '3434343', '1', 'jsd', 'sjdsd', 'ask', '343434', 0, 1, '2018-06-25 08:47:29', '2018-06-25 08:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(52, '2014_10_12_000000_create_users_table', 1),
(53, '2014_10_12_100000_create_password_resets_table', 1),
(54, '2018_06_21_131606_create_gifts_table', 1),
(55, '2018_06_22_071416_create_gifts_recipient_table', 1),
(56, '2018_06_22_072441_create_transactions_table', 1),
(57, '2018_06_22_080616_create_user_wallet_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `gift_ids` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_detail` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('approved','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'failed',
  `payment_method` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `transaction_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `details` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `transaction_id`, `gift_ids`, `cart_detail`, `status`, `payment_method`, `transaction_amount`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '32323', '107,108', '873274', 'approved', 'paypal', 144.00, 'jsds', '2018-06-25 08:46:40', '2018-06-25 08:46:40'),
(2, 1, '32323', '109,110', '873274', 'approved', 'paypal', 144.00, 'jsds', '2018-06-25 08:47:29', '2018-06-25 08:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_otp_verified` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `gender`, `phone`, `otp`, `is_otp_verified`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sdsd', 'sdsds', 'sdsds', 'female', '2332323', '2232', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gifts_user_id_foreign` (`user_id`);

--
-- Indexes for table `gift_recipients`
--
ALTER TABLE `gift_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gifts_recipient_gift_id_foreign` (`gift_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_recipient_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_wallet_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `gift_recipients`
--
ALTER TABLE `gift_recipients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `gifts`
--
ALTER TABLE `gifts`
  ADD CONSTRAINT `gifts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gift_recipients`
--
ALTER TABLE `gift_recipients`
  ADD CONSTRAINT `gifts_recipient_gift_id_foreign` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_recipient_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `gift_recipients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD CONSTRAINT `user_wallet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
