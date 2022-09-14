-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 09:53 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fire`
--

-- --------------------------------------------------------

--
-- Table structure for table `awarded_certificates`
--

CREATE TABLE `awarded_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `certificate_id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stage` enum('initial','renewal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'initial',
  `receiving_date` date DEFAULT NULL,
  `issue_date` date NOT NULL,
  `lapse_date` date DEFAULT NULL,
  `firefighters_read_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awarded_certificates`
--

INSERT INTO `awarded_certificates` (`id`, `certificate_id`, `firefighter_id`, `organization_id`, `stage`, `receiving_date`, `issue_date`, `lapse_date`, `firefighters_read_status`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 1, 'initial', NULL, '2019-04-15', '2022-04-15', 1, '2022-04-19 05:05:17', '2022-04-19 05:15:55'),
(2, 7, 1, 1, 'renewal', NULL, '2022-04-19', '2024-04-30', 1, '2022-04-19 05:40:29', '2022-04-19 06:30:23'),
(3, 8, 1, 1, 'initial', NULL, '2019-04-15', '2022-04-15', 1, '2022-04-19 06:29:28', '2022-04-19 06:31:34'),
(4, 8, 1, 1, 'renewal', NULL, '2022-04-19', '2025-04-30', 0, '2022-04-19 06:34:25', '2022-04-19 06:34:25'),
(5, 11, 1, 1, 'initial', NULL, '2018-04-20', '2021-01-01', 0, '2022-04-20 00:40:53', '2022-04-20 00:40:53'),
(6, 9, 1, 1, 'initial', NULL, '2018-04-20', '2021-01-01', 0, '2022-04-20 00:41:28', '2022-04-20 00:41:28'),
(7, 11, 1, 1, 'renewal', NULL, '2022-04-20', '2022-04-30', 0, '2022-04-20 04:52:58', '2022-04-20 04:52:58'),
(8, 9, 1, 1, 'renewal', NULL, '2022-04-20', NULL, 0, '2022-04-20 04:54:23', '2022-05-06 06:04:33'),
(9, 12, 1, 1, 'initial', NULL, '2022-04-20', '2022-01-01', 0, '2022-04-20 05:04:37', '2022-04-20 05:04:37'),
(10, 12, 1, 1, 'renewal', NULL, '2022-04-20', '2022-04-30', 0, '2022-04-20 05:10:12', '2022-04-20 05:10:12'),
(11, 14, 1, 1, 'initial', NULL, '2018-01-01', '2021-01-01', 0, '2022-04-29 19:00:00', '2022-04-20 05:22:20'),
(12, 15, 1, 1, 'initial', NULL, '2022-04-20', '2025-04-30', 0, '2022-04-20 05:23:57', '2022-04-20 05:23:57'),
(13, 16, 1, 1, 'initial', NULL, '2018-01-01', '2021-01-01', 0, '2022-04-20 05:38:11', '2022-04-20 05:38:11'),
(14, 14, 1, 1, 'renewal', NULL, '2022-04-20', '2022-04-28', 1, '2022-04-20 05:42:57', '2022-04-25 01:40:51'),
(15, 17, 1, 1, 'initial', NULL, '2018-04-20', '2021-01-01', 0, '2022-04-21 01:57:33', '2022-04-21 01:57:33'),
(16, 18, 1, 1, 'initial', NULL, '2018-04-20', '2021-01-01', 0, '2022-04-21 02:19:40', '2022-04-21 02:19:40'),
(17, 18, 1, 1, 'renewal', NULL, '2022-04-21', '2022-04-30', 0, '2022-04-21 04:22:20', '2022-04-21 04:22:20'),
(18, 22, 1, 1, 'initial', NULL, '2018-04-21', '2022-04-10', 0, '2022-04-26 05:10:31', '2022-04-26 05:10:31'),
(19, 22, 1, 1, 'renewal', NULL, '2022-04-26', '2025-04-30', 0, '2022-04-26 05:48:46', '2022-04-26 05:48:46'),
(20, 17, 1, 1, 'renewal', NULL, '2022-04-26', '2025-04-30', 0, '2022-04-26 05:48:46', '2022-04-26 05:48:46'),
(21, 14, 1, 1, 'renewal', NULL, '2022-04-28', '2022-04-30', 0, '2022-04-28 06:18:36', '2022-04-28 06:18:36'),
(22, 16, 1, 1, 'renewal', NULL, '2022-05-13', '2025-04-30', 0, '2022-05-13 01:49:28', '2022-05-13 01:49:28'),
(23, 23, 1, 1, 'initial', NULL, '2019-05-13', '2020-04-30', 0, '2022-05-13 05:59:38', '2022-05-13 05:59:38'),
(24, 23, 1, 1, 'renewal', NULL, '2022-05-13', '2022-04-14', 0, '2022-05-13 06:14:04', '2022-05-13 06:14:04'),
(25, 14, 1, 1, 'renewal', NULL, '2022-05-13', '2025-04-30', 0, '2022-05-13 06:14:26', '2022-05-13 06:14:26'),
(26, 23, 1, 1, 'renewal', NULL, '2022-05-13', '2022-04-14', 0, '2022-05-13 06:14:31', '2022-05-13 06:14:31'),
(27, 18, 1, 1, 'renewal', NULL, '2022-05-13', '2025-04-30', 0, '2022-05-13 06:29:34', '2022-05-13 06:29:34'),
(28, 23, 1, 1, 'renewal', NULL, '2022-05-13', '2022-04-14', 0, '2022-05-13 06:41:20', '2022-05-13 06:41:20'),
(29, 23, 1, 1, 'renewal', NULL, '2022-05-13', '2022-04-14', 0, '2022-05-13 06:41:37', '2022-05-13 06:41:37'),
(30, 23, 1, 1, 'renewal', NULL, '2022-05-13', '2022-04-14', 0, '2022-05-13 06:42:38', '2022-05-13 06:42:38'),
(31, 12, 1, 1, 'renewal', NULL, '2022-05-13', '2022-04-30', 0, '2022-05-13 06:43:11', '2022-05-13 06:43:11'),
(32, 23, 1, 1, 'renewal', NULL, '2022-05-13', '2025-04-30', 0, '2022-05-13 07:10:07', '2022-05-13 07:10:07'),
(33, 24, 1, 1, 'initial', NULL, '2022-05-02', '2022-05-10', 0, '2022-05-13 07:28:57', '2022-05-13 07:28:57'),
(34, 24, 1, 1, 'renewal', NULL, '2022-05-10', '2022-05-11', 0, '2022-05-13 08:06:11', '2022-05-13 08:25:27'),
(40, 24, 1, 1, 'renewal', NULL, '2022-05-13', '2022-04-30', 0, '2022-05-13 08:54:27', '2022-05-13 08:54:27'),
(41, 24, 1, 1, 'renewal', NULL, '2022-05-13', '2022-05-01', 0, '2022-05-13 09:02:53', '2022-05-13 09:02:53'),
(42, 24, 1, 1, 'renewal', NULL, '2022-05-13', '2022-04-30', 0, '2022-05-13 09:08:07', '2022-05-13 09:08:07'),
(43, 24, 1, 1, 'renewal', NULL, '2022-05-13', '2025-04-30', 0, '2022-05-13 09:09:04', '2022-05-13 09:09:04'),
(44, 12, 1, 1, 'renewal', NULL, '2022-05-13', '2025-04-30', 0, '2022-05-13 09:40:37', '2022-05-13 09:40:37'),
(45, 9, 1, 1, 'renewal', NULL, '2022-05-13', '2025-04-30', 0, '2022-05-13 09:40:41', '2022-05-13 09:40:41'),
(46, 11, 1, 1, 'renewal', NULL, '2022-04-13', '2022-04-30', 0, '2022-05-13 09:40:48', '2022-05-13 09:40:48'),
(47, 11, 1, 1, 'renewal', NULL, '2022-05-16', '2025-04-30', 0, '2022-05-16 07:31:10', '2022-05-16 07:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `certificatehistories`
--

CREATE TABLE `certificatehistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `certificate_id` bigint(20) UNSIGNED NOT NULL,
  `operation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificatehistories`
--

INSERT INTO `certificatehistories` (`id`, `firefighter_id`, `certificate_id`, `operation`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 22, 'Certificate Applied', '2022-04-26', '2022-04-26 04:15:10', '2022-04-26 04:15:10'),
(2, 1, 22, 'Request Accepted , Test Date :2022-04-27', '2022-04-26', '2022-04-26 04:48:10', '2022-04-26 04:48:10'),
(3, 1, 22, 'Passed & Awarded', '2022-04-26', '2022-04-26 05:10:31', '2022-04-26 05:10:31'),
(4, 1, 22, 'Credential Renewed By Richlo', '2022-04-26', '2022-04-26 05:48:46', '2022-04-26 05:48:46'),
(5, 1, 17, 'Credential Renewed By Richlo', '2022-04-26', '2022-04-26 05:48:46', '2022-04-26 05:48:46'),
(6, 1, 14, 'Credential Renewed By Richlo', '2022-04-28', '2022-04-28 06:18:36', '2022-04-28 06:18:36'),
(7, 1, 23, 'Credential Applied', '2022-05-13', '2022-05-13 05:28:46', '2022-05-13 05:28:46'),
(9, 1, 23, 'Request Accepted , Test Date :2022-05-13', '2022-05-13', '2022-05-13 05:56:38', '2022-05-13 05:56:38'),
(10, 1, 23, 'Passed & Awarded', '2022-05-13', '2022-05-13 05:59:38', '2022-05-13 05:59:38'),
(11, 1, 23, 'Credential Renewed By Richlo', '2022-05-13', '2022-05-13 06:41:20', '2022-05-13 06:41:20'),
(12, 1, 23, 'Credential Renewed By Richlo', '2022-05-13', '2022-05-13 06:41:37', '2022-05-13 06:41:37'),
(13, 1, 23, 'Credential Renewed By Richlo', '2022-05-13', '2022-05-13 06:42:38', '2022-05-13 06:42:38'),
(14, 1, 24, 'Credential Applied', '2022-05-13', '2022-05-13 07:27:01', '2022-05-13 07:27:01'),
(15, 1, 24, 'Request Accepted , Test Date :2022-05-13', '2022-05-13', '2022-05-13 07:28:06', '2022-05-13 07:28:06'),
(16, 1, 24, 'Passed & Awarded', '2022-05-13', '2022-05-13 07:28:57', '2022-05-13 07:28:57'),
(17, 1, 24, 'Credential Renewed By Richlo', '2022-05-13', '2022-05-13 08:06:11', '2022-05-13 08:06:11'),
(18, 1, 24, 'Credential Renewed By Richlo', '2022-05-13', '2022-05-13 08:07:27', '2022-05-13 08:07:27'),
(19, 1, 25, 'Credential Applied', '2022-06-01', '2022-06-01 06:20:55', '2022-06-01 06:20:55'),
(20, 1, 26, 'Credential Applied', '2022-06-01', '2022-06-01 06:44:21', '2022-06-01 06:44:21'),
(21, 1, 27, 'Credential Applied', '2022-06-01', '2022-06-01 06:46:39', '2022-06-01 06:46:39'),
(22, 1, 28, 'Credential Applied', '2022-06-01', '2022-06-01 06:52:50', '2022-06-01 06:52:50'),
(23, 1, 29, 'Credential Applied', '2022-06-01', '2022-06-01 09:07:08', '2022-06-01 09:07:08'),
(24, 33, 29, 'Credential Applied', '2022-06-17', '2022-06-17 07:22:32', '2022-06-17 07:22:32'),
(25, 33, 29, 'Request Accepted , Test Date :2022-06-21', '2022-06-20', '2022-06-20 08:39:28', '2022-06-20 08:39:28'),
(26, 33, 28, 'Credential Applied', '2022-06-20', '2022-06-20 08:47:06', '2022-06-20 08:47:06'),
(27, 33, 25, 'Credential Applied', '2022-06-20', '2022-06-20 09:06:14', '2022-06-20 09:06:14'),
(28, 33, 26, 'Credential Applied', '2022-06-20', '2022-06-20 09:14:10', '2022-06-20 09:14:10'),
(29, 33, 26, 'Request Accepted , Test Date :2022-06-21', '2022-06-20', '2022-06-20 09:14:38', '2022-06-20 09:14:38'),
(30, 33, 27, 'Credential Applied', '2022-06-20', '2022-06-20 09:19:13', '2022-06-20 09:19:13'),
(31, 33, 27, 'Request Accepted , Test Date :2022-06-21', '2022-06-20', '2022-06-20 09:19:51', '2022-06-20 09:19:51'),
(32, 33, 22, 'Credential Applied', '2022-06-20', '2022-06-20 09:20:59', '2022-06-20 09:20:59'),
(33, 33, 17, 'Credential Applied', '2022-06-20', '2022-06-20 09:30:40', '2022-06-20 09:30:40'),
(34, 34, 29, 'Credential Applied', '2022-06-21', '2022-06-21 07:46:21', '2022-06-21 07:46:21'),
(35, 35, 29, 'Credential Applied', '2022-06-22', '2022-06-22 04:33:04', '2022-06-22 04:33:04'),
(36, 40, 29, 'Credential Applied', '2022-06-23', '2022-06-23 05:08:34', '2022-06-23 05:08:34'),
(37, 41, 29, 'Credential Applied', '2022-06-23', '2022-06-23 05:24:56', '2022-06-23 05:24:56'),
(38, 41, 28, 'Credential Applied', '2022-06-23', '2022-06-23 08:24:01', '2022-06-23 08:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_rejected_reasons`
--

CREATE TABLE `certificate_rejected_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_certificates_id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_rejected_reasons`
--

INSERT INTO `certificate_rejected_reasons` (`id`, `firefighter_certificates_id`, `firefighter_id`, `reason`, `read_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'no reason', 1, '2022-04-18 04:19:58', '2022-04-18 04:19:58'),
(2, 30, 33, 'axddA', 0, '2022-06-20 09:06:48', '2022-06-20 09:10:05'),
(3, 35, 34, 'these ara the reason', 1, '2022-06-21 07:52:12', '2022-06-21 07:52:12'),
(4, 36, 35, 'this the reasons', 1, '2022-06-22 04:35:14', '2022-06-22 04:35:14'),
(5, 37, 40, 'these are the reasons', 1, '2022-06-23 05:10:56', '2022-06-23 05:10:56'),
(6, 38, 41, 'these are the reasons', 1, '2022-06-23 05:27:43', '2022-06-23 05:27:43'),
(7, 39, 41, 'yyyyy', 1, '2022-06-23 08:25:47', '2022-06-23 08:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_statuses`
--

CREATE TABLE `certificate_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_certificates_id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `test_date` date NOT NULL,
  `test_time` time NOT NULL,
  `status` enum('none','passed','failed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_statuses`
--

INSERT INTO `certificate_statuses` (`id`, `firefighter_certificates_id`, `firefighter_id`, `test_date`, `test_time`, `status`, `read_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-04-27', '06:45:00', 'none', 0, '2022-04-18 04:08:45', '2022-04-18 04:08:45'),
(2, 1, 1, '2022-04-20', '18:50:00', 'none', 0, '2022-04-18 04:13:53', '2022-04-18 04:13:53'),
(3, 2, 1, '2022-05-07', '16:45:00', 'none', 0, '2022-04-18 04:23:12', '2022-04-18 04:23:12'),
(4, 3, 1, '2022-04-28', '14:45:00', 'none', 1, '2022-04-19 01:19:24', '2022-04-19 01:19:24'),
(9, 5, 1, '2022-04-19', '17:45:00', 'none', 1, '2022-04-19 02:31:24', '2022-04-19 02:31:24'),
(10, 6, 1, '2022-04-19', '13:45:00', 'passed', 1, '2022-04-19 03:57:18', '2022-04-19 03:57:18'),
(11, 7, 1, '2022-04-18', '14:30:00', 'passed', 1, '2022-04-19 04:42:21', '2022-04-19 05:05:17'),
(12, 8, 1, '2022-04-18', '12:30:00', 'passed', 0, '2022-04-19 06:28:31', '2022-04-19 06:29:28'),
(13, 10, 1, '2022-04-19', '17:50:00', 'passed', 0, '2022-04-20 00:37:45', '2022-04-20 00:40:53'),
(14, 9, 1, '2022-04-19', '12:15:00', 'passed', 0, '2022-04-20 00:39:01', '2022-04-20 00:41:28'),
(15, 11, 1, '2022-04-19', '15:35:00', 'passed', 0, '2022-04-20 05:02:00', '2022-04-20 05:04:37'),
(16, 12, 1, '2022-04-19', '14:40:00', 'passed', 0, '2022-04-20 05:21:19', '2022-04-20 05:22:20'),
(17, 13, 1, '2022-04-19', '14:45:00', 'passed', 0, '2022-04-20 05:23:13', '2022-04-20 05:23:57'),
(18, 14, 1, '2022-04-19', '17:00:00', 'passed', 0, '2022-04-20 05:37:32', '2022-04-20 05:38:11'),
(19, 15, 1, '2022-04-20', '16:35:00', 'passed', 0, '2022-04-21 01:56:48', '2022-04-21 01:57:33'),
(20, 16, 1, '2022-04-20', '16:40:00', 'passed', 0, '2022-04-21 02:19:09', '2022-04-21 02:19:40'),
(21, 20, 1, '2022-04-25', '19:45:00', 'passed', 0, '2022-04-26 04:48:10', '2022-04-26 05:10:31'),
(28, 21, 1, '2022-05-12', '15:40:00', 'passed', 0, '2022-05-13 05:56:38', '2022-05-13 05:59:38'),
(29, 22, 1, '2022-05-12', '16:30:00', 'passed', 0, '2022-05-13 07:28:06', '2022-05-13 07:28:57'),
(30, 28, 33, '2022-06-21', '03:15:00', 'none', 0, '2022-06-20 08:39:27', '2022-06-20 08:39:27'),
(31, 31, 33, '2022-06-21', '01:15:00', 'none', 0, '2022-06-20 09:14:38', '2022-06-20 09:14:38'),
(32, 32, 33, '2022-06-21', '02:10:00', 'none', 0, '2022-06-20 09:19:51', '2022-06-20 09:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renewable` tinyint(1) DEFAULT NULL,
  `renewal_period` int(11) DEFAULT NULL,
  `certification_cycle_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certification_cycle_end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renewed_expiry_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_credit_types` int(11) DEFAULT NULL,
  `no_of_pre_req_cert` int(11) DEFAULT NULL,
  `no_of_pre_req_course` int(11) DEFAULT NULL,
  `admin_ceu` double(8,2) DEFAULT '0.00',
  `tech_ceu` double(8,2) DEFAULT '0.00',
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `prefix_id`, `title`, `short_title`, `renewable`, `renewal_period`, `certification_cycle_start`, `certification_cycle_end`, `renewed_expiry_date`, `no_of_credit_types`, `no_of_pre_req_cert`, `no_of_pre_req_course`, `admin_ceu`, `tech_ceu`, `comment`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '21345', 'guard', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ddddddd', 1, '2022-04-14 01:53:58', '2022-04-14 01:53:58'),
(2, '21376', 'uouo', NULL, 1, 3, '2022-04-04', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.00, 1.50, 'jhkjh', 1, '2022-04-14 05:09:49', '2022-04-14 05:09:49'),
(3, '21343', 'master', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdasasd', 1, '2022-04-18 02:26:18', '2022-04-18 02:26:18'),
(4, '21111', 'master2', NULL, 1, 3, '2022-04-30', '2025-04-30', '2025-04-30', 2, NULL, NULL, 1.00, 1.50, 'weqwqewq', 1, '2022-04-18 02:27:27', '2022-04-18 02:27:27'),
(5, '21322', 'dsadsadsa', NULL, 1, 1, '2018-04-14', '2021-04-14', '2022-04-14', 1, NULL, NULL, 1.00, 1.00, 'dsdsa', 1, '2022-04-18 05:06:10', '2022-04-19 05:22:15'),
(6, '20000', 'MBA', NULL, 1, 3, '2019-04-19', '2022-04-18', '2025-04-18', 2, NULL, NULL, 1.50, 1.50, 'jkjkkkk', 1, '2022-04-19 03:30:13', '2022-04-19 04:22:23'),
(7, '09000', 'BBA', NULL, 1, 3, '2018-04-30', '2021-04-30', '2024-04-30', 1, NULL, NULL, 1.50, 1.50, 'GGGGGGGGGGGGG', 1, '2022-04-19 04:25:12', '2022-04-19 05:38:01'),
(8, '34234', 'bscs', NULL, 1, 3, '2022-04-28', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.00, 1.00, 'dsadsa', 1, '2022-04-19 06:24:56', '2022-04-19 06:24:56'),
(9, '44234', 'CS', NULL, 1, 3, '2018-05-05', '2022-01-01', '2022-01-01', 1, NULL, NULL, 1.50, 1.50, 'dfsf', 1, '2022-04-20 00:32:50', '2022-04-20 00:32:50'),
(11, '21222', 'CS2', NULL, 1, 3, '2018-05-05', '2022-01-01', '2022-01-01', 1, NULL, NULL, 1.50, 1.50, 'SSSSSSSS', 1, '2022-04-20 00:34:18', '2022-04-20 00:34:18'),
(12, '76756', 'SE', NULL, 1, 3, '2018-05-05', '2022-01-01', '2022-01-01', 1, NULL, NULL, 1.00, 1.00, 'ffffffffffffffttttttttt', 1, '2022-04-20 04:56:34', '2022-04-20 04:56:34'),
(13, '43232', 'SE2', NULL, 1, 3, '2018-05-05', '2022-01-01', '2025-04-30', 1, NULL, NULL, 1.00, 1.00, 'FFFFFFFFFFFF', 1, '2022-04-20 05:01:23', '2022-05-13 04:51:44'),
(14, '54688', 'SE3', NULL, 1, 3, '2018-05-05', '2022-01-01', '2025-04-30', 1, NULL, NULL, 2.00, 2.00, 'PPPPPPPPOOOOOOOOO', 1, '2022-04-20 05:13:07', '2022-05-13 04:54:40'),
(15, '55551', 'SE4', NULL, 1, 3, '2022-04-22', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.50, 1.50, 'sssssssssss', 1, '2022-04-20 05:16:57', '2022-04-20 05:16:57'),
(16, '45293', 'SE5', NULL, 1, 3, '2022-04-22', '2025-04-30', '2025-04-30', 1, NULL, NULL, 2.00, 2.00, 'sdsadsa', 1, '2022-04-20 05:33:22', '2022-04-20 05:33:22'),
(17, '90909', 'BE', NULL, 1, 3, '2022-04-22', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.00, 1.00, 'SDSAFASF', 1, '2022-04-21 01:54:06', '2022-04-21 01:54:06'),
(18, '34012', 'BE2', NULL, 1, 3, '2018-05-05', '2022-01-01', '2025-04-30', 1, NULL, NULL, 1.50, 1.50, 'DSDAD', 1, '2022-04-21 02:17:43', '2022-05-13 05:11:33'),
(19, '43325', 'BE6', NULL, 1, 3, '2022-04-22', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.50, 1.50, 'FSDF', 1, '2022-04-21 05:19:52', '2022-04-21 05:19:52'),
(20, '34243', 'software eng', NULL, 1, 3, '2022-04-05', '2025-05-10', '2025-05-10', 1, NULL, NULL, 1.00, 1.00, 'ddddddddd', 1, '2022-04-26 04:02:14', '2022-04-26 04:02:14'),
(21, '32432', 'comp eng', NULL, 1, 3, '2022-04-12', '2025-05-10', '2025-05-10', 1, NULL, NULL, 1.00, 1.00, 'sadsad', 1, '2022-04-26 04:05:48', '2022-04-26 04:05:48'),
(22, '21334', 'computer program', NULL, 1, 3, '2022-03-30', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.00, 1.00, 'dfdsfdsf', 1, '2022-04-26 04:12:19', '2022-04-26 04:12:19'),
(23, '88800', 'laravel', NULL, 1, 3, '2018-04-14', '2021-04-14', '2022-04-14', 1, NULL, NULL, 2.00, 2.00, 'new certi', 1, '2022-05-13 05:15:11', '2022-05-13 05:15:11'),
(24, '00120', 'laravel2', NULL, 1, 3, '2022-05-01', '2022-05-11', '2022-05-11', 1, NULL, NULL, 2.00, 2.00, 'sadsad', 1, '2022-05-13 07:26:42', '2022-05-13 07:26:42'),
(25, '09200', 'new subject', NULL, 1, 3, '2022-05-31', '2025-05-30', '2025-05-30', 1, NULL, NULL, 1.00, 1.00, '3333', 1, '2022-06-01 06:19:58', '2022-06-01 06:19:58'),
(26, '23231', 'new certiiiii', NULL, 1, 3, '2022-06-01', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.00, 1.00, '32323232', 1, '2022-06-01 06:42:44', '2022-06-01 06:42:44'),
(27, '34300', 'New certificate 2', NULL, 1, 3, '2022-06-01', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.00, 1.00, 'sadasd', 1, '2022-06-01 06:46:13', '2022-06-01 06:46:13'),
(28, '01854', 'New Kingdom', NULL, 1, 3, '2022-06-01', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.00, 1.00, 'dffrert43543', 1, '2022-06-01 06:52:08', '2022-06-01 06:52:08'),
(29, '32DS9', 'very new certificate', NULL, 1, 3, '2022-06-01', '2025-04-30', '2025-04-30', 1, NULL, NULL, 1.00, 1.00, 'sadsad', 1, '2022-06-01 09:04:06', '2022-06-01 09:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `organization_type` enum('EO','FD') COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fire_department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `facility_id` bigint(20) UNSIGNED DEFAULT NULL,
  `no_of_facility_types` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `admin_ceu` double(8,2) DEFAULT NULL,
  `tech_ceu` double(8,2) DEFAULT NULL,
  `is_archive` tinyint(1) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `semester_id`, `course_id`, `organization_type`, `organization_id`, `fire_department_id`, `instructor_id`, `facility_id`, `no_of_facility_types`, `start_date`, `end_date`, `start_time`, `end_time`, `admin_ceu`, `tech_ceu`, `is_archive`, `archived_at`, `archived_by`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'EO', 1, 1, 1, 1, 2, '2022-04-25', '2022-04-27', '12:09:04', '14:09:04', 0.40, 0.20, 0, '2022-04-13 00:00:00', 1, 1, '2022-04-19 19:00:00', '2022-04-19 19:00:00'),
(2, 3, 9, 'EO', 1, 1, 1, 1, 2, '2022-04-25', '2022-04-25', '12:09:04', '14:09:04', 0.40, 0.20, 0, '2022-04-13 00:00:00', 2, 2, '2022-04-19 19:00:00', '2018-05-04 19:00:00'),
(3, 3, 9, 'EO', 1, NULL, 5, 1, 1, '2022-04-25', '0000-00-00', '19:00:00', '20:00:00', 1.00, 1.00, NULL, NULL, NULL, 1, '2022-04-25 03:58:12', '2022-04-25 03:58:12'),
(4, 4, 12, 'EO', 1, NULL, 21, 1, 1, '2022-04-28', '0000-00-00', '14:15:00', '15:15:00', 1.00, 2.00, NULL, NULL, NULL, 1, '2022-04-28 05:12:34', '2022-04-28 05:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `class_firefighter`
--

CREATE TABLE `class_firefighter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `admin_ceu` double(8,2) DEFAULT NULL,
  `tech_ceu` double(8,2) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_firefighter`
--

INSERT INTO `class_firefighter` (`id`, `class_id`, `firefighter_id`, `admin_ceu`, `tech_ceu`, `created_at`, `updated_at`) VALUES
(3, 4, 2, 1.00, 2.00, '2022-04-28', NULL),
(4, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(5, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(6, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(7, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(8, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(9, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(10, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(11, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(12, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(13, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(14, NULL, 1, 1.00, 1.00, '2022-04-30', NULL),
(15, NULL, 1, 2.00, 2.00, '2022-04-30', NULL),
(16, NULL, 26, 1.00, 1.00, '2022-04-30', NULL),
(17, NULL, 1, 2.00, 2.00, '2022-05-06', NULL),
(18, NULL, 26, 2.00, 2.00, '2022-05-06', NULL),
(19, NULL, 5, 2.00, 2.00, '2022-05-16', NULL),
(20, NULL, 17, 1.00, 1.00, '2022-05-16', NULL),
(21, NULL, 17, 1.00, 1.00, '2022-05-16', NULL),
(22, NULL, 17, 1.00, 1.00, '2022-05-16', NULL),
(23, NULL, 17, 1.00, 1.00, '2022-05-16', NULL),
(24, NULL, 17, 2.00, 1.00, '2022-05-16', NULL),
(25, NULL, 26, 2.00, 2.00, '2022-05-17', NULL),
(26, NULL, 26, 3.00, 3.00, '2022-05-17', NULL),
(27, NULL, 26, 1.00, 1.00, '2022-05-17', NULL),
(28, NULL, 26, 1.00, 1.00, '2022-05-17', NULL),
(29, NULL, 26, 1.00, 1.00, '2022-05-17', NULL),
(30, NULL, 26, 1.00, 1.00, '2022-05-17', NULL),
(31, NULL, 26, 1.00, 1.00, '2022-05-17', NULL),
(32, NULL, 26, 2.00, 2.00, '2022-05-17', NULL),
(33, NULL, 26, 1.00, 1.00, '2022-05-17', NULL),
(34, NULL, 26, 1.00, 1.00, '2022-05-17', NULL),
(35, NULL, 1, 1.00, 1.00, '2022-05-18', NULL),
(36, NULL, 21, 2.00, 2.00, '2022-05-18', NULL),
(40, NULL, 1, 2.00, 2.00, '2022-05-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `completed_courses`
--

CREATE TABLE `completed_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED DEFAULT NULL,
  `semester_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transcript_sent` tinyint(4) NOT NULL DEFAULT '0',
  `issue_date` date DEFAULT NULL,
  `is_archive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fema_course` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfpa_std` double(8,2) DEFAULT NULL,
  `course_hours` double(8,2) NOT NULL,
  `no_of_credit_types` int(11) DEFAULT NULL,
  `no_of_pre_req_course` int(11) DEFAULT NULL,
  `maximum_students` int(11) NOT NULL,
  `instructor_level` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `is_archive` tinyint(1) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `prefix_id`, `fema_course`, `course_name`, `nfpa_std`, `course_hours`, `no_of_credit_types`, `no_of_pre_req_course`, `maximum_students`, `instructor_level`, `comment`, `is_archive`, `archived_at`, `archived_by`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'C1X01', 'sadad', 'Maths', 0.00, 3.00, 1, NULL, 100, 5, 'sadd', NULL, NULL, NULL, 1, '2022-04-14 01:37:06', '2022-04-14 01:37:06'),
(2, 'C7F02', 'sadad', 'english', 0.00, 15.00, 2, NULL, 16, 1, 'twet', NULL, NULL, NULL, 1, '2022-04-14 03:43:20', '2022-04-14 03:43:20'),
(3, 'C8C03', 'sadad', 'urdu', 0.00, 5.00, 1, NULL, 19, 1, 'tyt', NULL, NULL, NULL, 1, '2022-04-14 03:44:35', '2022-04-14 03:44:35'),
(5, 'C1J05', 'sadad', 'SST', 0.00, 3.00, 2, NULL, 15, 1, 'DSF', NULL, NULL, NULL, 1, '2022-04-14 03:45:29', '2022-04-14 03:45:29'),
(6, 'C9A06', 'sadad', 'Persian', 0.00, 16.00, 1, NULL, 156, 2, 'ERRER', NULL, NULL, NULL, 1, '2022-04-14 03:47:22', '2022-04-14 03:47:22'),
(8, 'C2E08', 'sadad', 'programming', 0.00, 15.00, 1, NULL, 23, 1, 'wwwww', NULL, NULL, NULL, 1, '2022-04-14 04:15:31', '2022-04-14 04:15:31'),
(9, 'C4H09', 'sadad', 'history', 0.00, 2.00, 1, NULL, 12, 5, 'fgdgfdg', NULL, NULL, NULL, 1, '2022-04-18 02:06:09', '2022-04-18 02:06:09'),
(10, 'C5L10', 'sadad', 'history2', 0.00, 15.00, 2, NULL, 55, 5, 'fdgfd', NULL, NULL, NULL, 1, '2022-04-18 02:10:29', '2022-04-18 02:10:29'),
(11, 'C4O11', '2344444', 'statistics', 0.00, 4.00, 2, NULL, 19, 1, 'fewfewsdf', NULL, NULL, NULL, 1, '2022-04-22 05:31:00', '2022-04-22 05:31:00'),
(12, 'C3F12', 'fdsafsa', 'oop', 0.00, 2.00, 2, NULL, 155, 1, 'dfsafa', NULL, NULL, NULL, 1, '2022-04-28 05:07:15', '2022-04-28 05:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `course_classes`
--

CREATE TABLE `course_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attendance` enum('completed','withdraw','no show','enrolled','stand by') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enrolled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_classes`
--

INSERT INTO `course_classes` (`id`, `semester_id`, `course_id`, `class_id`, `firefighter_id`, `attendance`, `created_at`, `updated_at`) VALUES
(1, 3, 9, 3, 1, 'completed', '2022-04-25 03:58:12', '2022-04-25 04:04:44'),
(2, 4, 12, 4, 2, 'completed', '2022-04-28 05:12:34', '2022-04-28 05:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `course_prerequisites`
--

CREATE TABLE `course_prerequisites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `preq_course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credential_problem_letters`
--

CREATE TABLE `credential_problem_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rejected_reason_id` bigint(20) UNSIGNED NOT NULL,
  `application_form` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_date_app_form` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_age_requirement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driving_birth_certifiate_copy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_training_courses` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_equivalency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prerequisite_titles_course_identified` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `practical_exams` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentation_for_review` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grandfathering_criteria` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preboard_credentialing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsac_accreditation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_fee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credential_problem_letters`
--

INSERT INTO `credential_problem_letters` (`id`, `rejected_reason_id`, `application_form`, `sign_date_app_form`, `minimum_age_requirement`, `driving_birth_certifiate_copy`, `document_training_courses`, `document_equivalency`, `prerequisite_titles_course_identified`, `practical_exams`, `documentation_for_review`, `grandfathering_criteria`, `preboard_credentialing`, `ifsac_accreditation`, `application_fee`, `created_at`, `updated_at`) VALUES
(1, 2, '1', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2022-06-20 09:10:05', '2022-06-20 09:10:05'),
(2, 3, '0', '0', '0', '0', '0', '1', '0', '1', '0', '1', '0', '0', '0', '2022-06-21 07:52:12', '2022-06-21 07:52:12'),
(3, 4, '1', '0', '0', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '2022-06-22 04:35:14', '2022-06-22 04:35:14'),
(4, 5, '1', '1', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '2022-06-23 05:10:56', '2022-06-23 05:10:56'),
(5, 6, '0', '0', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '2022-06-23 05:27:43', '2022-06-23 05:27:43'),
(6, 7, '1', '1', '1', '0', '1', '1', '0', '1', '1', '1', '1', '1', '1', '2022-06-23 08:25:47', '2022-06-23 08:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `credit_types`
--

CREATE TABLE `credit_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_types`
--

INSERT INTO `credit_types` (`id`, `prefix_id`, `code`, `description`, `comment`, `created_at`, `updated_at`) VALUES
(1, '001', '', 'fantastic', NULL, '2022-04-14 01:35:48', '2022-04-14 01:35:48'),
(2, '002', '', 'fantastic877777', NULL, '2022-04-14 03:42:16', '2022-04-14 03:42:16'),
(3, '003', '', 'UUUUUU', NULL, '2022-04-14 03:46:29', '2022-04-14 03:46:29'),
(4, '004', '', 'dasdsad', NULL, '2022-04-25 05:11:25', '2022-04-25 05:11:25'),
(5, '005', 'M234', 'AVENGERS', NULL, '2022-04-25 05:20:17', '2022-04-25 05:20:17'),
(6, '006', '0900A', 'AVE2', NULL, '2022-04-25 05:24:07', '2022-04-25 05:24:07'),
(7, '007', 'AS1111', 'AVENGERS3', NULL, '2022-04-25 05:24:21', '2022-04-25 05:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `firefighter_id`, `admin_id`, `name`, `uploaded_by`, `document`, `status`, `created_at`, `updated_at`) VALUES
(24, 1, NULL, 'High School Certificate', 'ahfaz', 'wVL7yWpgllqP7MVgxrQ8EP.pdf', 2, '2022-05-16 05:35:26', '2022-05-27 09:08:00'),
(25, 1, NULL, 'Birth Certificate', 'ahfaz', 'wVL7yWpgllqP7MVgxrQ8EP.pdf', 2, '2022-05-16 05:35:40', '2022-05-28 02:24:28'),
(26, 1, NULL, 'Maaz', 'Richlo', '6744084945.PNG', 1, '2022-05-15 21:56:13', '2022-05-16 09:56:13'),
(27, 1, NULL, 'hi muzammil', 'Richlo', '7863976312.png', 1, '2022-05-15 22:02:23', '2022-05-16 10:02:23'),
(28, 1, NULL, 'Maaz3333333333', 'Richlo', '5213652856.png', 1, '2022-05-16 20:16:40', '2022-05-17 08:16:40'),
(29, 1, NULL, 'cnic', 'Richlo', '4746617716.jpg', 1, '2022-05-16 20:40:03', '2022-05-17 08:40:03'),
(30, 26, NULL, 'cnnn', 'Richlo', '1444834956.png', 1, '2022-05-16 20:42:37', '2022-05-17 08:42:37'),
(31, 26, 1, 'mmmmmmm', 'Richlo', '9067083489.png', 1, '2022-05-16 20:45:49', '2022-05-17 08:45:49'),
(32, 26, NULL, 'fdfs', 'Richlo', '8775584757.png', 1, '2022-05-16 20:52:35', '2022-05-17 08:52:35'),
(33, 26, 1, '2nd Category', 'Richlo', '5739593284.png', 1, '2022-05-16 20:53:10', '2022-05-17 08:53:10'),
(34, 26, NULL, 'fdfs6666', 'Richlo', '2597792197.png', 1, '2022-05-16 20:55:03', '2022-05-17 08:55:03'),
(35, 26, NULL, 'sadasdsa', 'Richlo', '5125217107.png', 1, '2022-05-16 21:15:27', '2022-05-17 09:15:27'),
(36, 1, 1, 'mmmmmmm343', 'Richlo', '1604384182.png', 1, '2022-05-18 04:28:15', '2022-05-18 04:28:15'),
(37, 1, 1, 'ooo', 'Richlo', '3244171078.png', 1, '2022-05-18 04:44:56', '2022-05-18 04:44:56'),
(38, 1, 1, '1st Product34343', 'Richlo', '3773459407.png', 1, '2022-05-18 04:46:39', '2022-05-18 04:46:39'),
(39, 1, 1, '1st Product-=-=-=-=-=-=', 'Richlo', '1220988304.PNG', 1, '2022-05-18 04:48:28', '2022-05-18 04:48:28'),
(40, 1, 1, 'mmmmmmm43643643', 'Richlo', '6310116301.png', 1, '2022-05-18 04:51:47', '2022-05-18 04:51:47'),
(41, 1, 1, 'sadsadsa', 'Richlo', '9184481793.png', 1, '2022-05-18 04:54:15', '2022-05-18 04:54:15'),
(42, 1, 1, '2222222222233333333333', 'Richlo', '8992487221.PNG', 1, '2022-05-18 04:54:44', '2022-05-18 04:54:44'),
(43, 1, 1, '22222222222333333343432323232323232323232323232323232323232', 'Richlo', '6556811415.PNG', 1, '2022-05-18 04:55:45', '2022-05-18 04:55:45'),
(44, 1, 1, 'sssssssssssssss5', 'Richlo', '6423369045.PNG', 1, '2022-05-18 05:15:24', '2022-05-18 05:15:24'),
(45, 1, 1, 'ahfaz new document', 'Richlo', '9049948733.PNG', 1, '2022-05-18 05:18:52', '2022-05-18 05:18:52'),
(46, 1, 1, 'dgbbbbb', 'Richlo', '7393199078.png', 1, '2022-05-18 05:20:49', '2022-05-18 05:20:49'),
(47, 1, 1, '565hhhhhhhhhhhhhh', 'Richlo', '3660044235.PNG', 1, '2022-05-18 05:33:20', '2022-05-18 05:33:20'),
(48, 1, 1, 'Maaz777', 'Richlo', '9122241195.PNG', 1, '2022-05-18 05:35:58', '2022-05-18 05:35:58'),
(49, 1, 1, 'sssssssss3', 'Richlo', '4942725559.png', 1, '2022-05-18 05:36:53', '2022-05-18 05:36:53'),
(50, 1, 1, '9', 'Richlo', '2715315513.PNG', 1, '2022-05-18 05:37:25', '2022-05-18 05:37:25'),
(51, 1, 1, 'nnno', 'Richlo', '2484276435.PNG', 1, '2022-05-18 05:51:33', '2022-05-18 05:51:33'),
(52, 1, 1, 'Maazsssssssssds', 'Richlo', '6047665351.png', 1, '2022-05-18 05:52:09', '2022-05-18 05:52:09'),
(53, 1, 1, 'opop', 'Richlo', '3392747219.jpg', 1, '2022-05-18 05:54:43', '2022-05-18 05:54:43'),
(54, 1, 1, '1st Category25', 'Richlo', '4250038916.PNG', 1, '2022-05-18 05:55:43', '2022-05-18 05:55:43'),
(55, 1, 1, 'team', 'Richlo', '8618626702.png', 1, '2022-05-18 06:00:09', '2022-05-18 06:00:09'),
(56, 1, 1, 'new sab', 'Richlo', '2395129173.png', 1, '2022-05-18 06:03:20', '2022-05-18 06:03:20'),
(57, 1, 1, 'muzom', 'Richlo', '4647520021.PNG', 1, '2022-05-18 06:08:08', '2022-05-18 06:08:08'),
(58, 1, 1, 'pop', 'Richlo', '1549934010.jpg', 1, '2022-05-18 06:10:16', '2022-05-18 06:10:16'),
(59, 1, 1, '1st Category00000000', 'Richlo', '2365675555.jpg', 1, '2022-05-18 06:43:36', '2022-05-18 06:43:36'),
(60, 21, 1, 'Maaz', 'Richlo', '3458356234.PNG', 1, '2022-05-18 07:25:10', '2022-05-18 07:25:10'),
(61, 21, 1, '1st Category', 'Richlo', '1929121335.PNG', 1, '2022-05-18 07:33:56', '2022-05-18 07:33:56'),
(62, 21, 1, '2nd Category', 'Richlo', '7206227536.png', 1, '2022-05-18 07:34:23', '2022-05-18 07:34:23'),
(63, 21, 1, '2nd Category2', 'Richlo', '9703718021.jpg', 1, '2022-05-18 07:35:18', '2022-05-18 07:35:18'),
(64, 1, 1, 'Maazers', 'Richlo', '4700518317.jpg', 1, '2022-05-17 20:55:28', '2022-05-18 08:55:28'),
(65, 1, 1, 'kom', 'Richlo', '1915323916.jpg', 1, '2022-05-17 22:12:32', '2022-05-18 10:12:32'),
(66, 1, NULL, 'no', 'Richlo', '7838332103.jpg', 1, '2022-05-17 22:21:59', '2022-05-18 10:21:59'),
(67, 1, NULL, 'no2', 'Richlo', '2911031773.jpg', 1, '2022-05-17 22:22:30', '2022-05-18 10:22:30'),
(68, 1, NULL, 'no3', 'Richlo', '7718215736.jpg', 1, '2022-05-17 22:23:51', '2022-05-18 10:23:51'),
(69, 1, NULL, 'no4', 'Richlo', '6467463696.PNG', 1, '2022-05-17 22:24:55', '2022-05-18 10:24:55'),
(70, 1, NULL, 'super1', 'Richlo', '5492438384.PNG', 1, '2022-05-19 01:40:10', '2022-05-19 01:40:10'),
(71, 1, NULL, 'avenger1', 'Richlo', '7867286873.png', 1, '2022-05-19 01:54:39', '2022-05-19 01:54:39'),
(72, 1, NULL, '1st Product10', 'Richlo', '9017563235.PNG', 1, '2022-05-19 02:05:59', '2022-05-19 02:05:59'),
(73, 1, NULL, '1st Product10sds6667676', 'Richlo', '9105830501.jpg', 1, '2022-05-19 02:07:41', '2022-05-19 02:07:41'),
(74, 1, NULL, 'iron1', 'Richlo', '3757714390.jpg', 1, '2022-05-19 02:08:54', '2022-05-19 02:08:54'),
(75, 1, NULL, 'bnbnvb', 'Richlo', '1619053376.jpg', 1, '2022-05-19 02:16:51', '2022-05-19 02:16:51'),
(76, 1, NULL, 'superman', 'Richlo', '2642568935.jpg', 1, '2022-05-19 02:21:26', '2022-05-19 02:21:26'),
(77, 22, NULL, 'mmmmmmm544444', 'Richlo', 'ahfaz (6).jpg', 1, '2022-05-19 02:50:23', '2022-05-19 02:50:23'),
(78, 22, NULL, 'xfcdfds353', 'Richlo', 'ahfaz (5).jpg', 1, '2022-05-19 02:53:18', '2022-05-19 02:53:18'),
(79, 22, 1, 'fdfs34343', ' ', '7101578489.jpg', 1, '2022-05-19 03:04:52', '2022-05-19 03:04:52'),
(80, 22, 1, '23421421', ' ', '7478373591.jpg', 1, '2022-05-19 03:04:59', '2022-05-19 03:04:59'),
(81, 1, 1, '1st Category4hggd', 'Richlo', '1263130941.txt', 1, '2022-05-19 06:23:17', '2022-05-19 06:23:17'),
(82, 1, 1, 'sfdasfsaf', 'ahfaz malik', '1901982895.jpg', 3, '2022-05-19 06:46:55', '2022-05-19 06:46:55'),
(84, 1, 1, 'boi', 'Richlo', '3579932778.jpg', 1, '2022-05-19 06:52:57', '2022-05-19 06:52:57'),
(86, 1, 1, 'Driving License 333333', 'ahfaz malik', '4040698103.PNG', 1, '2022-05-19 06:55:28', '2022-05-19 06:55:28'),
(87, 1, 1, '2nd Category', 'ahfaz malik', '8758695047.PNG', 1, '2022-05-18 20:03:30', '2022-05-19 08:03:30'),
(88, 1, 1, '555554', 'ahfaz malik', '8172586824.PNG', 1, '2022-05-18 20:03:37', '2022-05-19 08:03:37'),
(89, 1, 1, '657657jjjjjjjjjj', 'ahfaz malik', '4049287403.jpg', 2, '2022-05-18 20:03:45', '2022-05-19 08:03:45'),
(90, 1, 1, 'xzvzxv', 'Richlo', '3593255767.PNG', 1, '2022-05-18 20:16:32', '2022-05-19 08:16:32'),
(91, 1, 1, 'muzammilk', 'ahfaz malik', '9165229951.png', 2, '2022-05-23 02:43:51', '2022-05-23 02:43:51'),
(92, 1, 1, '1st Categoryiujk', 'ahfaz malik', '8129636507.PNG', 2, '2022-05-23 02:44:19', '2022-05-23 02:44:19'),
(93, 1, 1, 'uyhguyguygiy', 'ahfaz malik', '1708967987.png', 3, '2022-05-23 02:46:23', '2022-05-23 02:46:23'),
(94, 1, 1, 'guyguygygi', 'ahfaz malik', '1762629235.png', 3, '2022-05-23 02:46:49', '2022-05-23 02:46:49'),
(95, 1, 1, '1st Category', 'ahfaz malik', '4535790540.sql', 3, '2022-05-24 04:49:06', '2022-05-24 04:49:06'),
(96, 1, 1, 'hhhhhj6', 'Richlo', '1893659057.png', 1, '2022-05-23 20:43:17', '2022-05-24 08:43:17'),
(97, 1, 1, 'saasa', 'Richlo', '2591115773.pdf', 1, '2022-05-23 20:57:43', '2022-05-24 08:57:43'),
(98, 1, 1, '00000', 'Richlo', '5045816192.pdf', 1, '2022-05-23 21:09:26', '2022-05-24 09:09:26'),
(99, 1, 1, '5443534', 'Richlo', '4575616465.pdf', 1, '2022-05-23 21:17:42', '2022-05-24 09:17:42'),
(100, 1, 1, 'oinjnoij9oi0', 'Richlo', '8168670660.txt', 1, '2022-05-23 21:18:55', '2022-05-24 09:18:55'),
(101, 1, 1, 't7utfh', 'Richlo', '9976251504.txt', 1, '2022-05-23 21:24:16', '2022-05-24 09:24:16'),
(102, 1, 1, 'jjjktr435454', 'Richlo', '9271062723.pdf', 1, '2022-05-23 21:43:34', '2022-05-24 09:43:34'),
(103, 1, 1, '43543gfdfdgfddsf', 'Richlo', '5037299064.pdf', 1, '2022-05-23 21:46:15', '2022-05-24 09:46:15'),
(104, 1, 1, 'erydfg', 'Richlo', '8247947287.pdf', 1, '2022-05-23 21:48:05', '2022-05-24 09:48:05'),
(105, 1, 1, 'hfgfdh', 'Richlo', '9626525752.pdf', 1, '2022-05-23 21:49:17', '2022-05-24 09:49:17'),
(106, 1, 1, '6uygfuyguyiui', 'Richlo', '8720894175.pdf', 1, '2022-05-23 21:51:46', '2022-05-24 09:51:46'),
(107, 1, 1, 'gfhdfg', 'Richlo', '9774639521.pdf', 1, '2022-05-23 21:53:34', '2022-05-24 09:53:34'),
(108, 1, 1, 'gjhgf', 'Richlo', '6499542080.pdf', 1, '2022-05-23 21:53:58', '2022-05-24 09:53:58'),
(109, 1, 1, 'fdsssssf', 'ahfaz malik', '6705465786.pdf', 2, '2022-05-25 20:49:17', '2022-05-26 08:49:17'),
(110, 1, 1, 'Maazer22', 'ahfaz malik', '9886415244.pdf', 3, '2022-05-27 05:24:26', '2022-05-27 05:24:26'),
(111, 1, 1, 'Driving License', 'ahfaz', 'Invoice Management - IMAGES IN FRAMES.pdf', 2, '2022-05-27 05:31:54', '2022-05-27 08:42:56'),
(112, 33, 1, 'Maaz', 'Richlo', '8201767138.pdf', 1, '2022-06-17 07:32:13', '2022-06-17 07:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` enum('permanent','temporary') COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_municipal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_burn_permit` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `lapse_date` date DEFAULT NULL,
  `tier` enum('Tier 1','Tier 2','Tier 3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacancy_status` enum('available','unavailable') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `mail_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_municipality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_municipality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_address` text COLLATE utf8mb4_unicode_ci,
  `owner_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signator_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `is_archive` tinyint(1) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `prefix_id`, `category`, `country_municipal_code`, `name`, `live_burn_permit`, `lapse_date`, `tier`, `organization`, `status`, `vacancy_status`, `start_date`, `end_date`, `mail_address`, `mail_municipality`, `mail_state`, `mail_zipcode`, `physical_address`, `physical_municipality`, `physical_state`, `physical_zipcode`, `owner_name`, `owner_address`, `owner_city`, `owner_state`, `owner_zipcode`, `contact_person_name`, `contact_person_phone`, `representative_name`, `representative_phone`, `signator`, `signator_phone`, `comment`, `is_archive`, `archived_at`, `archived_by`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'F00001', 'permanent', '4444444', 'Supervisor', 'no', NULL, 'Tier 1', NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'pakistan', '12344', 'Govt Primary School, Lines Area, Karachi, Karachi City, Sindh 74200', NULL, 'pakistan', '21321', 'sda', 'Govt Primary School, Lines Area, Karachi, Karachi City, Sindh 74200', 'karachi', 'pakistan', '12321', 'adsdsa', '+13333333333', 'fgfdg', '213123', NULL, NULL, 'dsadsa', NULL, NULL, NULL, 1, '2022-04-14 02:06:08', '2022-04-14 02:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `facility_types`
--

CREATE TABLE `facility_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facility_types`
--

INSERT INTO `facility_types` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'fantastic', '2022-04-14 02:04:26', '2022-04-14 02:04:26');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `firefighters`
--

CREATE TABLE `firefighters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_suffix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dfsid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','transgender','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `race` enum('american indian or alaskan native','asian or pacific islander','black, not of hispanic origin','white, not of hispanic origin','hispanic') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vfd_county` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vfd_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vfdid_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfdid_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfd_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cfd_county` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('DCA-Firefighters') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_manager` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_mail` tinyint(1) DEFAULT NULL,
  `address_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_mail_2` tinyint(1) DEFAULT NULL,
  `address_title_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` text COLLATE utf8mb4_unicode_ci,
  `city_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_mail_3` tinyint(1) DEFAULT NULL,
  `address_title_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_3` text COLLATE utf8mb4_unicode_ci,
  `city_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone_verified` tinyint(1) DEFAULT NULL,
  `work_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone_ext` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_email_verified` tinyint(1) DEFAULT NULL,
  `ssn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ucc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nicet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fema` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `muni` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointed` tinyint(1) DEFAULT '1',
  `instructor_level` int(11) DEFAULT NULL,
  `is_archive` tinyint(1) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firefighter_image` text COLLATE utf8mb4_unicode_ci,
  `reset_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_invited` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firefighters`
--

INSERT INTO `firefighters` (`id`, `prefix_id`, `name_suffix`, `f_name`, `m_name`, `l_name`, `dfsid`, `business_name`, `dob`, `age`, `gender`, `race`, `vfd_county`, `vfd_name`, `vfdid_no`, `cfdid_no`, `cfd_name`, `cfd_county`, `role`, `role_manager`, `postal_mail`, `address_title`, `address`, `city`, `state`, `zipcode`, `county`, `postal_mail_2`, `address_title_2`, `address_2`, `city_2`, `state_2`, `zipcode_2`, `postal_mail_3`, `address_title_3`, `address_3`, `city_3`, `state_3`, `zipcode_3`, `phone_no`, `phone_token`, `home_phone`, `cell_phone`, `cell_phone_verified`, `work_phone`, `work_phone_ext`, `email_token`, `work_email`, `work_email_verified`, `ssn`, `ucc`, `nicet`, `fema`, `muni`, `vol`, `car`, `appkey`, `appointed`, `instructor_level`, `is_archive`, `archived_at`, `archived_by`, `created_by`, `created_at`, `updated_at`, `updated_by`, `email`, `email_2`, `email_3`, `comment`, `email_verified_at`, `password`, `remember_token`, `firefighter_image`, `reset_password`, `is_invited`) VALUES
(1, NULL, 'Jr', 'ahfaz', 'malik', 'malik', NULL, NULL, '1998-01-14', '24', 'male', 'asian or pacific islander', NULL, NULL, NULL, NULL, NULL, NULL, 'DCA-Firefighters', 'no', NULL, 'Block P, North Nazimabad, Umar Farooq Colony, Karachi, Karachi City, Sindh 74200', 'Govt Primary School, Lines Area, Karachi, Karachi City, Sindh 74200', 'karachi', 'pakistan', '12321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+12121212121', '+12333333333', NULL, NULL, NULL, NULL, NULL, NULL, '12345678912', '2', '3', '23', NULL, '213', '22', NULL, 1, 1, NULL, NULL, NULL, 1, '2022-04-14 01:32:20', '2022-04-14 01:32:20', NULL, 'malikahfaz123@gmail.com', NULL, NULL, 'erewr', NULL, '$2y$10$Td28GJJvlCrdKbEJFi3DyugvD9f8aya5iHd4TkrMZ3ktovwr/Gg/O', NULL, NULL, NULL, NULL),
(2, NULL, 'Jr', 'faraz', 'malik', 'malik', NULL, NULL, '1999-01-14', '23', 'male', 'american indian or alaskan native', NULL, NULL, NULL, NULL, NULL, NULL, 'DCA-Firefighters', 'no', NULL, 'Govt Primary School, Lines Area, Karachi, Karachi City, Sindh 74200', 'Govt Primary School, Lines Area, Karachi, Karachi City, Sindh 74200', 'karachi', 'pakistan', '23213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+13333333333', '+13344444444', NULL, NULL, NULL, NULL, NULL, NULL, '32322222222', '2', '4', '3', NULL, '34', '33', NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-04-14 02:07:58', '2022-04-14 02:07:58', NULL, 'malikahfaz12@gmail.com', NULL, NULL, 'sadas', NULL, '$2y$10$Td28GJJvlCrdKbEJFi3DyugvD9f8aya5iHd4TkrMZ3ktovwr/Gg/O', NULL, NULL, NULL, NULL),
(5, NULL, 'Sr', 'new', 'bie', 'hee', NULL, NULL, '2001-06-13', '20', 'male', 'asian or pacific islander', NULL, NULL, NULL, NULL, NULL, NULL, 'DCA-Firefighters', 'no', NULL, 'sdsadsad', 'sadsadsad', 'sadsa', 'sadsad', '21312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+14321412222', '+13333333333', NULL, NULL, NULL, NULL, NULL, NULL, '99999999222', '4321432', 'fdsfdsf', 'adsa', NULL, 'sadsad', 'sdsadsa', '2132132', 1, 5, NULL, NULL, NULL, 1, '2022-04-18 06:09:33', '2022-04-25 03:44:05', NULL, 'malikahfaz23312@gmail.com', NULL, NULL, 'sdsad', NULL, '$2y$10$ydkgY1Wabz4FSM17OwcSWOy5r3DiZXr0Z4oWs5SV8oi/qfszkbC5e', NULL, NULL, NULL, NULL),
(17, '213255', 'Jr', 'moiz', 'KHAN', 'KHNA', NULL, 'SDSAD', '1998-06-11', '23', 'male', 'asian or pacific islander', 'dgffdgdf', 'DSFSF', '324324', '34324', 'DSFSF', 'DSFDSF', 'DCA-Firefighters', 'no', NULL, NULL, 'sdsad', 'sfs', 'dsfdsf', '74000', 'sadsadsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+1342222222222', NULL, '+11432214124', '+14123123213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-27 06:21:36', '2022-05-06 05:35:24', NULL, 'malikahfaz123333333@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62692740eb1bf', NULL),
(21, '000021', 'Jr', 'juniro', 'dfsf', 'jun', NULL, NULL, '1993-03-12', '29', 'male', 'american indian or alaskan native', NULL, NULL, NULL, NULL, NULL, NULL, 'DCA-Firefighters', 'no', NULL, 'dsadsadsad', 'vbnnnnnnn', 'sadsad', 'sd', '74000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+14321432466', '+13432432666', NULL, NULL, NULL, NULL, NULL, NULL, '56666666666', 'dsfdsfdsfd', 'fddfw', 'sadsad', NULL, 'sdksakdns', 'sadad', '321321', 1, 1, NULL, NULL, NULL, 1, '2022-04-28 04:43:51', '2022-05-06 02:40:03', 1, 'malikahfaz1234534343@gmail.com', NULL, NULL, 'testing', NULL, '$2y$10$yvX065Wq/aMFWbbdQ4AaO.aHx6V8PtNUoV/sOGLWi0NnQEjrg0CU6', NULL, NULL, NULL, NULL),
(22, '213454', 'Jr', 'boossto', 'boossto', 'boossto', NULL, 'SDSAD', '1998-01-15', '24', 'male', 'american indian or alaskan native', 'DSFDSF', 'gfdgfg', '324324', '34324', 'DSFSF', 'DSFDSF', 'DCA-Firefighters', 'no', NULL, NULL, 'sadsadsa', 'Prayagraj', 'sadsadas', '74000', 'fffffffffffg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+1342222994123', NULL, '+14587567567', '+17654745745', NULL, NULL, NULL, NULL, NULL, NULL, '39999984444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-29 01:55:17', '2022-05-06 05:04:55', NULL, 'boossto@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '626b8bd59a415', NULL),
(26, '000026', 'Sr', 'boooot', 'sadsada', 'gjyjy', NULL, NULL, '1999-01-07', '23', 'male', 'american indian or alaskan native', NULL, NULL, NULL, NULL, NULL, NULL, 'DCA-Firefighters', 'no', NULL, 'sadsad', 'sadsa', 'sadasd', 'sadsad', '74000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+16464573433', '+13332356888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sadas', 'sdafaagg', 'yjyjy', NULL, 'rkjyjyj4', 'dsadsad4', '23213', 1, 1, NULL, NULL, NULL, 1, '2022-04-29 06:25:27', '2022-05-06 02:39:28', 1, 'boot@gmail.com', NULL, NULL, 'sadsad', NULL, '$2y$10$Td28GJJvlCrdKbEJFi3DyugvD9f8aya5iHd4TkrMZ3ktovwr/Gg/O', NULL, NULL, NULL, NULL),
(33, '000033', 'Jr', 'osman', 'osman', 'osman', '0900', NULL, '1998-05-15', NULL, 'male', 'american indian or alaskan native', NULL, NULL, NULL, NULL, NULL, NULL, 'DCA-Firefighters', 'no', NULL, 'sssssssss', 'sdddddddddd', 'adsssss', 'dsaaaaaaa', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+14242424242', '+12222222948', NULL, NULL, NULL, NULL, 'osman1233@gmail.com', NULL, NULL, 'sadsad', 'sadsad', 'sadsad', NULL, 'asdsadda', 'sadsadsa', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-16 06:56:20', '2022-06-16 10:13:59', NULL, 'osman123@gmail.com', NULL, NULL, 'weqqw', NULL, '$2y$10$l/2TGmqAa.tmdhV5JbCst.GuzLhoeJcFp3VJeooIx26YN3sHQkvAS', NULL, NULL, NULL, NULL),
(34, '000034', NULL, 'osama', 'osman', 'malik', '090078', NULL, '1998-01-21', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DCA-Firefighters', 'no', NULL, 'sdasdsa', 'sdsadsadsa', 'sdsa', 'sadsad', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+13343535222', '+12222222253', NULL, NULL, NULL, NULL, 'osamaosama1243@gmail.com', NULL, NULL, 'fdsf', 'dsfdsf', 'dsfdsfds', NULL, 'sdfdsf', 'dfdsfdss', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-21 06:59:23', '2022-06-21 07:05:06', NULL, 'osamaosama123@gmail.com', NULL, NULL, 'sdsadsa', NULL, '$2y$10$XFCIZOVVQj6lETzhSUKFjufrBXcx3SyuQ1qxhby59ozSJCSboAdoi', NULL, NULL, NULL, NULL),
(35, '000035', NULL, 'taimoor', 'taimoor', 'khan', '123456', NULL, '1997-01-29', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dsa', 'dadaD', 'SDSADSA', 'SADSAD', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+12322562623', NULL, NULL, NULL, NULL, 'taimoorkhan1223@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-22 04:28:52', '2022-06-22 04:28:52', NULL, 'taimoorkhan123@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$Nc4ZQ3V4sfD8hHyvxzSJSuFpwEOXV1KaT3SzwjUpnOWOW2b4qfS5q', NULL, NULL, NULL, NULL),
(36, '000036', NULL, 'zeeshan', 'zeeshan', 'malik', NULL, NULL, '1996-12-30', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sadsa', 'dsadsad', 'sadsadsa', 'dsadsa', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+13429228282', NULL, NULL, NULL, NULL, 'zeeshan123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-22 05:46:27', '2022-06-22 05:46:27', NULL, 'zeeshan123@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$S7CMbe.nqr5VXHKvsPOWguazmehmhkueNRx9O8TliqYmDE5p/p4xm', NULL, NULL, NULL, NULL),
(37, '000037', NULL, 'opp', 'pop', 'pop', NULL, NULL, '2001-05-14', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdsa', 'dsadsa', 'dsadsa', 'dsadsa', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+13244444444', NULL, NULL, NULL, NULL, 'op@3gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-22 05:48:42', '2022-06-22 05:48:42', NULL, 'op@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$mfmEXE5wngiFPJvzXiez2eDUWxytP5GZMDvpUW8cif2dFb7h.63Ta', NULL, NULL, NULL, NULL),
(38, '000038', NULL, 'sheh', 'sheh', 'sheh', NULL, NULL, '1997-01-13', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sadsad', 'sadsadsa', 'dsadsadsa', 'sadsadsadsa', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+14343434343', NULL, NULL, NULL, NULL, 'sheh1233@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-22 05:55:23', '2022-06-22 05:55:23', NULL, 'sheh123@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$WllwNXpJ0sltTuPgVG9.uOTy7qAiWteqAtO9WYvLBXu.GjmQal3xS', NULL, NULL, NULL, NULL),
(39, '000039', NULL, 'zaheer', 'zaheer', 'malik', NULL, NULL, '1997-05-22', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdasd', 'sadsad', 'sadsa', 'dsadsa', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+13222222223', NULL, NULL, NULL, NULL, 'zaheermalik1233@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-22 06:07:18', '2022-06-22 06:07:18', NULL, 'zaheermalik123@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$Io.bs10gtfOFfOSCg56R5.alc3l5MqJQEhHtP8kiHifaPsI1L9gvC', NULL, NULL, NULL, NULL),
(40, '000040', NULL, 'newuser', 'newuser', 'newuser', '1234560', NULL, '1995-01-02', NULL, 'male', 'asian or pacific islander', NULL, NULL, NULL, NULL, NULL, NULL, 'DCA-Firefighters', 'no', NULL, 'dsa', 'sadsadsa', 'dsadsa', 'dsadsa', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+14654643646', '+16768596976', NULL, NULL, NULL, NULL, 'newuser@3gmail.com', NULL, NULL, 'vddsvds', 'vdsvds', 'vdsvds', NULL, 'dsvdsvds', 'dsv', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-23 05:02:55', '2022-06-23 05:06:05', NULL, 'newuser@gmail.com', NULL, NULL, 'dvdsvdvds', NULL, '$2y$10$XuAcrsTIRSHN000UZYU9Me6eBsCzIyFNDSm4VGK8WUKy0.NLkh4hS', NULL, NULL, NULL, NULL),
(41, '000041', NULL, 'rich', 'rich', 'rich', '000123', NULL, '1999-01-05', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dsadsa', 'dsadsadas', 'sadsadsa', 'dsadsad', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+14543765757', NULL, NULL, NULL, NULL, 'rich@3gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-23 05:20:17', '2022-06-23 05:20:17', NULL, 'rich@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$moYZAndoml4ciGa7jUsDXOBCCnxw7hq7cCvuofjigjnBZiBrP3Ei2', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `firefighter_certificates`
--

CREATE TABLE `firefighter_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `certificate_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('applied','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_status` enum('none','passed','failed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firefighter_certificates`
--

INSERT INTO `firefighter_certificates` (`id`, `firefighter_id`, `certificate_id`, `status`, `test_status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'rejected', 'none', '2022-04-18 04:05:41', '2022-04-18 04:19:58'),
(2, 1, 1, 'applied', 'none', '2022-04-18 04:21:33', '2022-04-18 04:21:33'),
(3, 1, 2, 'accepted', 'none', '2022-04-19 01:16:13', '2022-04-19 01:46:05'),
(4, 1, 3, 'accepted', 'none', '2022-04-19 01:51:12', '2022-04-19 02:25:23'),
(5, 1, 5, 'accepted', 'none', '2022-04-19 02:28:09', '2022-04-19 02:31:24'),
(6, 1, 6, 'accepted', 'none', '2022-04-19 03:54:12', '2022-04-19 03:57:18'),
(7, 1, 7, 'accepted', 'passed', '2022-04-19 04:31:35', '2022-04-19 05:05:17'),
(8, 1, 8, 'accepted', 'passed', '2022-04-19 06:25:39', '2022-04-19 06:29:28'),
(9, 1, 9, 'accepted', 'passed', '2022-04-20 00:35:18', '2022-04-20 00:41:28'),
(10, 1, 11, 'accepted', 'passed', '2022-04-20 00:35:44', '2022-04-20 00:40:53'),
(11, 1, 12, 'accepted', 'passed', '2022-04-20 04:58:51', '2022-04-20 05:04:37'),
(12, 1, 14, 'accepted', 'passed', '2022-04-20 05:18:29', '2022-04-20 05:22:20'),
(13, 1, 15, 'accepted', 'passed', '2022-04-20 05:19:01', '2022-04-20 05:23:57'),
(14, 1, 16, 'accepted', 'passed', '2022-04-20 05:34:03', '2022-04-20 05:38:11'),
(15, 1, 17, 'accepted', 'passed', '2022-04-21 01:55:17', '2022-04-21 01:57:33'),
(16, 1, 18, 'accepted', 'passed', '2022-04-21 02:18:11', '2022-04-21 02:19:40'),
(17, 1, 19, 'applied', 'none', '2022-04-26 03:34:43', '2022-04-26 03:34:43'),
(18, 1, 20, 'applied', 'none', '2022-04-26 04:03:48', '2022-04-26 04:03:48'),
(19, 1, 21, 'applied', 'none', '2022-04-26 04:06:15', '2022-04-26 04:06:15'),
(20, 1, 22, 'accepted', 'passed', '2022-04-26 04:15:10', '2022-04-26 05:10:31'),
(21, 1, 23, 'accepted', 'passed', '2022-05-13 05:28:46', '2022-05-13 05:59:38'),
(22, 1, 24, 'accepted', 'passed', '2022-05-13 07:27:01', '2022-05-13 07:28:57'),
(23, 1, 25, 'applied', 'none', '2022-06-01 06:20:55', '2022-06-01 06:20:55'),
(24, 1, 26, 'applied', 'none', '2022-06-01 06:44:21', '2022-06-01 06:44:21'),
(25, 1, 27, 'applied', 'none', '2022-06-01 06:46:39', '2022-06-01 06:46:39'),
(26, 1, 28, 'applied', 'none', '2022-06-01 06:52:50', '2022-06-01 06:52:50'),
(27, 1, 29, 'applied', 'none', '2022-06-01 09:07:08', '2022-06-01 09:07:08'),
(28, 33, 29, 'accepted', 'none', '2022-06-17 07:22:32', '2022-06-20 08:39:28'),
(29, 33, 28, 'applied', 'none', '2022-06-20 08:47:06', '2022-06-20 08:47:06'),
(30, 33, 25, 'rejected', 'none', '2022-06-20 09:06:14', '2022-06-20 09:10:05'),
(31, 33, 26, 'accepted', 'none', '2022-06-20 09:14:10', '2022-06-20 09:14:38'),
(32, 33, 27, 'accepted', 'none', '2022-06-20 09:19:13', '2022-06-20 09:19:52'),
(33, 33, 22, 'applied', 'none', '2022-06-20 09:20:59', '2022-06-20 09:20:59'),
(34, 33, 17, 'applied', 'none', '2022-06-20 09:30:40', '2022-06-20 09:30:40'),
(35, 34, 29, 'rejected', 'none', '2022-06-21 07:46:21', '2022-06-21 07:52:12'),
(36, 35, 29, 'rejected', 'none', '2022-06-22 04:33:04', '2022-06-22 04:35:14'),
(37, 40, 29, 'rejected', 'none', '2022-06-23 05:08:34', '2022-06-23 05:10:56'),
(38, 41, 29, 'rejected', 'none', '2022-06-23 05:24:56', '2022-06-23 05:27:43'),
(39, 41, 28, 'rejected', 'none', '2022-06-23 08:24:01', '2022-06-23 08:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `firefighter_courses`
--

CREATE TABLE `firefighter_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('applied','enrolled','rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firefighter_courses`
--

INSERT INTO `firefighter_courses` (`id`, `semester_id`, `course_id`, `firefighter_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'enrolled', '2022-04-22 05:27:47', '2022-04-25 00:51:55'),
(2, 3, 9, 1, 'enrolled', '2022-04-25 01:09:10', '2022-04-25 01:11:10'),
(3, 3, 10, 1, 'enrolled', '2022-04-25 01:09:26', '2022-04-25 01:11:29'),
(4, 3, 11, 1, 'enrolled', '2022-04-25 01:09:47', '2022-04-25 01:10:56'),
(5, 4, 12, 2, 'enrolled', '2022-04-28 05:10:49', '2022-04-28 05:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `fire_departments`
--

CREATE TABLE `fire_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_archive` tinyint(1) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prefix_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_dept_types` int(11) DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `email_2` text COLLATE utf8mb4_unicode_ci,
  `email_3` text COLLATE utf8mb4_unicode_ci,
  `comment` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fire_departments`
--

INSERT INTO `fire_departments` (`id`, `name`, `address`, `city`, `zipcode`, `phone`, `phone2`, `is_archive`, `archived_at`, `archived_by`, `created_by`, `created_at`, `updated_at`, `prefix_id`, `state`, `no_of_dept_types`, `email`, `email_2`, `email_3`, `comment`) VALUES
(1, 'Maaz', 'Govt Primary School, Lines Area, Karachi, Karachi City, Sindh 74200', 'Karachi', '21212', '+13333333333', '+12222222222', NULL, NULL, NULL, 1, '2022-04-14 01:58:33', '2022-04-14 01:58:33', 'F0001', 'Pakistan', 1, 'irfan@kingdom-vision.co.uk', NULL, NULL, 'dssa');

-- --------------------------------------------------------

--
-- Table structure for table `fire_department_types`
--

CREATE TABLE `fire_department_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fire_department_types`
--

INSERT INTO `fire_department_types` (`id`, `prefix_id`, `description`, `created_at`, `updated_at`) VALUES
(1, '001', 'fantastic87777777', '2022-04-14 01:57:46', '2022-04-14 01:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `foreign_relations`
--

CREATE TABLE `foreign_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foreign_id` int(11) NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foreign_relations`
--

INSERT INTO `foreign_relations` (`id`, `foreign_id`, `module`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'fire_departments', 'fire_department_types', '1', '2022-04-14 01:58:33', '2022-04-14 01:58:33'),
(2, 1, 'facilities', 'facility_type', '1', '2022-04-14 02:06:08', '2022-04-14 02:06:08'),
(3, 2, 'courses', 'credit_types', '1', '2022-04-14 03:43:20', '2022-04-14 03:43:20'),
(4, 2, 'courses', 'credit_types', '2', '2022-04-14 03:43:20', '2022-04-14 03:43:20'),
(7, 8, 'courses', 'credit_types', '1', '2022-04-14 04:15:31', '2022-04-14 04:15:31'),
(8, 2, 'certifications', 'credit_types', '2', '2022-04-14 05:09:49', '2022-04-14 05:09:49'),
(9, 9, 'courses', 'credit_types', '1', '2022-04-18 02:06:09', '2022-04-18 02:06:09'),
(10, 10, 'courses', 'credit_types', '1', '2022-04-18 02:10:29', '2022-04-18 02:10:29'),
(11, 10, 'courses', 'credit_types', '2', '2022-04-18 02:10:29', '2022-04-18 02:10:29'),
(12, 4, 'certifications', 'credit_types', '1', '2022-04-18 02:27:27', '2022-04-18 02:27:27'),
(13, 4, 'certifications', 'credit_types', '3', '2022-04-18 02:27:27', '2022-04-18 02:27:27'),
(14, 5, 'certifications', 'credit_types', '1', '2022-04-18 05:06:10', '2022-04-18 05:06:10'),
(15, 6, 'certifications', 'credit_types', '1', '2022-04-19 03:30:13', '2022-04-19 03:30:13'),
(16, 6, 'certifications', 'credit_types', '2', '2022-04-19 03:30:13', '2022-04-19 03:30:13'),
(17, 7, 'certifications', 'credit_types', '3', '2022-04-19 04:25:12', '2022-04-19 04:25:12'),
(18, 8, 'certifications', 'credit_types', '2', '2022-04-19 06:24:56', '2022-04-19 06:24:56'),
(19, 9, 'certifications', 'credit_types', '2', '2022-04-20 00:32:50', '2022-04-20 00:32:50'),
(21, 11, 'certifications', 'credit_types', '3', '2022-04-20 00:34:18', '2022-04-20 00:34:18'),
(22, 12, 'certifications', 'credit_types', '3', '2022-04-20 04:56:35', '2022-04-20 04:56:35'),
(23, 13, 'certifications', 'credit_types', '2', '2022-04-20 05:01:23', '2022-04-20 05:01:23'),
(24, 14, 'certifications', 'credit_types', '2', '2022-04-20 05:13:07', '2022-04-20 05:13:07'),
(25, 15, 'certifications', 'credit_types', '3', '2022-04-20 05:16:57', '2022-04-20 05:16:57'),
(26, 16, 'certifications', 'credit_types', '2', '2022-04-20 05:33:22', '2022-04-20 05:33:22'),
(27, 17, 'certifications', 'credit_types', '2', '2022-04-21 01:54:06', '2022-04-21 01:54:06'),
(28, 18, 'certifications', 'credit_types', '2', '2022-04-21 02:17:43', '2022-04-21 02:17:43'),
(29, 19, 'certifications', 'credit_types', '3', '2022-04-21 05:19:52', '2022-04-21 05:19:52'),
(30, 11, 'courses', 'credit_types', '1', '2022-04-22 05:31:00', '2022-04-22 05:31:00'),
(31, 11, 'courses', 'credit_types', '2', '2022-04-22 05:31:00', '2022-04-22 05:31:00'),
(33, 5, 'firefighters', 'type', 'fire inspector', '2022-04-25 03:45:10', '2022-04-25 03:45:10'),
(34, 5, 'firefighters', 'type', 'fire official', '2022-04-25 03:45:10', '2022-04-25 03:45:10'),
(35, 5, 'firefighters', 'type', 'fire instructor', '2022-04-25 03:45:10', '2022-04-25 03:45:10'),
(36, 3, 'classes', 'facility_type', '1', '2022-04-25 03:58:12', '2022-04-25 03:58:12'),
(43, 20, 'certifications', 'credit_types', '3', '2022-04-26 04:02:14', '2022-04-26 04:02:14'),
(44, 21, 'certifications', 'credit_types', '5', '2022-04-26 04:05:48', '2022-04-26 04:05:48'),
(45, 22, 'certifications', 'credit_types', '2', '2022-04-26 04:12:19', '2022-04-26 04:12:19'),
(51, 21, 'firefighters', 'type', 'fire inspector', '2022-04-28 04:43:55', '2022-04-28 04:43:55'),
(52, 21, 'firefighters', 'type', 'fire official', '2022-04-28 04:43:55', '2022-04-28 04:43:55'),
(53, 21, 'firefighters', 'type', 'fire instructor', '2022-04-28 04:43:55', '2022-04-28 04:43:55'),
(54, 12, 'courses', 'credit_types', '1', '2022-04-28 05:07:15', '2022-04-28 05:07:15'),
(55, 12, 'courses', 'credit_types', '4', '2022-04-28 05:07:15', '2022-04-28 05:07:15'),
(56, 4, 'classes', 'facility_type', '1', '2022-04-28 05:12:34', '2022-04-28 05:12:34'),
(57, 26, 'firefighters', 'type', 'fire inspector', '2022-04-29 06:25:30', '2022-04-29 06:25:30'),
(58, 26, 'firefighters', 'type', 'fire official', '2022-04-29 06:25:30', '2022-04-29 06:25:30'),
(59, 26, 'firefighters', 'type', 'fire instructor', '2022-04-29 06:25:31', '2022-04-29 06:25:31'),
(62, 23, 'certifications', 'credit_types', '5', '2022-05-13 05:15:11', '2022-05-13 05:15:11'),
(63, 24, 'certifications', 'credit_types', '5', '2022-05-13 07:26:42', '2022-05-13 07:26:42'),
(64, 25, 'certifications', 'credit_types', '5', '2022-06-01 06:19:58', '2022-06-01 06:19:58'),
(65, 26, 'certifications', 'credit_types', '5', '2022-06-01 06:42:44', '2022-06-01 06:42:44'),
(66, 27, 'certifications', 'credit_types', '5', '2022-06-01 06:46:13', '2022-06-01 06:46:13'),
(67, 28, 'certifications', 'credit_types', '5', '2022-06-01 06:52:08', '2022-06-01 06:52:08'),
(68, 29, 'certifications', 'credit_types', '5', '2022-06-01 09:04:06', '2022-06-01 09:04:06'),
(75, 33, 'firefighters', 'type', 'fire inspector', '2022-06-16 06:56:20', '2022-06-16 06:56:20'),
(76, 34, 'firefighters', 'type', 'fire inspector', '2022-06-21 06:59:23', '2022-06-21 06:59:23'),
(77, 35, 'firefighters', 'type', 'fire inspector', '2022-06-22 04:28:52', '2022-06-22 04:28:52'),
(78, 36, 'firefighters', 'type', 'fire inspector', '2022-06-22 05:46:27', '2022-06-22 05:46:27'),
(79, 37, 'firefighters', 'type', 'fire inspector', '2022-06-22 05:48:42', '2022-06-22 05:48:42'),
(80, 38, 'firefighters', 'type', 'fire inspector', '2022-06-22 05:55:23', '2022-06-22 05:55:23'),
(81, 39, 'firefighters', 'type', 'fire inspector', '2022-06-22 06:07:18', '2022-06-22 06:07:18'),
(82, 40, 'firefighters', 'type', 'fire inspector', '2022-06-23 05:02:55', '2022-06-23 05:02:55'),
(83, 41, 'firefighters', 'type', 'fire inspector', '2022-06-23 05:20:17', '2022-06-23 05:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `group_credit_types`
--

CREATE TABLE `group_credit_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `credit_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_credit_types`
--

INSERT INTO `group_credit_types` (`id`, `credit_code`, `credit_type_id`, `description`, `comment`, `created_at`, `updated_at`) VALUES
(1, '123', 1, 'fantastic', NULL, '2022-04-14 01:36:24', '2022-04-14 01:36:24'),
(2, '4321', 1, 'fantastic', NULL, '2022-04-14 03:41:42', '2022-04-14 03:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `foreign_id` int(11) NOT NULL,
  `module` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `user_id`, `foreign_id`, `module`, `data`, `created_at`) VALUES
(1, 1, 5, 'certifications', '[{\"label\":\"renewed_expiry_date\",\"prev\":\"2023-04-14\",\"new\":\"2021-04-14\"}]', '2022-04-19 03:47:26'),
(2, 1, 5, 'firefighters', '[{\"label\":\"instructor_level\",\"prev\":\"\",\"new\":5},{\"label\":\"type\",\"prev\":[],\"new\":[\"fire instructor\"]}]', '2022-04-25 03:44:05'),
(3, 1, 5, 'firefighters', '[{\"label\":\"type\",\"prev\":[\"fire instructor\"],\"new\":[\"fire inspector\",\"fire official\",\"fire instructor\"]}]', '2022-04-25 03:45:10'),
(4, 1, 1, 'course_classes', '[{\"label\":\"attendance\",\"prev\":\"enrolled\",\"new\":\"completed\",\"class\":\"3\",\"firefighter\":1}]', '2022-04-25 04:04:44'),
(5, 1, 3, 'semesters', '[{\"label\":\"start_date\",\"prev\":\"2022-04-25\",\"new\":\"2025-05-05\"},{\"label\":\"end_date\",\"prev\":\"2022-04-30\",\"new\":\"2025-05-14\"},{\"label\":\"year\",\"prev\":2022,\"new\":2025}]', '2022-04-28 05:09:54'),
(6, 1, 2, 'course_classes', '[{\"label\":\"attendance\",\"prev\":\"enrolled\",\"new\":\"completed\",\"class\":\"4\",\"firefighter\":2}]', '2022-04-28 05:13:32'),
(8, 1, 26, 'firefighters', '[{\"label\":\"vol\",\"prev\":\"rkjyjyj\",\"new\":\"rkjyjyj4\"},{\"label\":\"car\",\"prev\":\"dsadsad\",\"new\":\"dsadsad4\"},{\"label\":\"updated_by\",\"prev\":\"\",\"new\":1}]', '2022-05-06 02:39:28'),
(9, 1, 21, 'firefighters', '[{\"label\":\"vol\",\"prev\":\"sadasda\",\"new\":\"sdksakdns\"},{\"label\":\"updated_by\",\"prev\":\"\",\"new\":1},{\"label\":\"comment\",\"prev\":\"sd\",\"new\":\"testing\"}]', '2022-05-06 02:40:03'),
(10, 1, 33, 'firefighters', '[{\"label\":\"name_suffix\",\"prev\":\"\",\"new\":\"Jr\"},{\"label\":\"race\",\"prev\":\"\",\"new\":\"american indian or alaskan native\"},{\"label\":\"role\",\"prev\":\"\",\"new\":\"DCA-Firefighters\"},{\"label\":\"role_manager\",\"prev\":\"\",\"new\":\"no\"},{\"label\":\"home_phone\",\"prev\":\"\",\"new\":\"+14242424242\"},{\"label\":\"cell_phone\",\"prev\":\"+12222222222\",\"new\":\"+12222222948\"},{\"label\":\"ucc\",\"prev\":\"\",\"new\":\"sadsad\"},{\"label\":\"nicet\",\"prev\":\"\",\"new\":\"sadsad\"},{\"label\":\"fema\",\"prev\":\"\",\"new\":\"sadsad\"},{\"label\":\"vol\",\"prev\":\"\",\"new\":\"asdsadda\"},{\"label\":\"car\",\"prev\":\"\",\"new\":\"sadsadsa\"},{\"label\":\"comment\",\"prev\":\"\",\"new\":\"weqqw\"}]', '2022-06-16 10:13:59'),
(11, 1, 34, 'firefighters', '[{\"label\":\"role\",\"prev\":\"\",\"new\":\"DCA-Firefighters\"},{\"label\":\"role_manager\",\"prev\":\"\",\"new\":\"no\"},{\"label\":\"home_phone\",\"prev\":\"\",\"new\":\"+13343535222\"},{\"label\":\"ucc\",\"prev\":\"\",\"new\":\"fdsf\"},{\"label\":\"nicet\",\"prev\":\"\",\"new\":\"dsfdsf\"},{\"label\":\"fema\",\"prev\":\"\",\"new\":\"dsfdsfds\"},{\"label\":\"vol\",\"prev\":\"\",\"new\":\"sdfdsf\"},{\"label\":\"car\",\"prev\":\"\",\"new\":\"dfdsfdss\"},{\"label\":\"comment\",\"prev\":\"\",\"new\":\"sdsadsa\"}]', '2022-06-21 07:05:06'),
(12, 1, 40, 'firefighters', '[{\"label\":\"race\",\"prev\":\"\",\"new\":\"asian or pacific islander\"},{\"label\":\"role\",\"prev\":\"\",\"new\":\"DCA-Firefighters\"},{\"label\":\"role_manager\",\"prev\":\"\",\"new\":\"no\"},{\"label\":\"home_phone\",\"prev\":\"\",\"new\":\"+14654643646\"},{\"label\":\"ucc\",\"prev\":\"\",\"new\":\"vddsvds\"},{\"label\":\"nicet\",\"prev\":\"\",\"new\":\"vdsvds\"},{\"label\":\"fema\",\"prev\":\"\",\"new\":\"vdsvds\"},{\"label\":\"vol\",\"prev\":\"\",\"new\":\"dsvdsvds\"},{\"label\":\"car\",\"prev\":\"\",\"new\":\"dsv\"},{\"label\":\"comment\",\"prev\":\"\",\"new\":\"dvdsvdvds\"}]', '2022-06-23 05:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_prerequisites`
--

CREATE TABLE `instructor_prerequisites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_level` int(11) NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invite_firefighters`
--

CREATE TABLE `invite_firefighters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` enum('sent','accepted','revoked') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invite_firefighters`
--

INSERT INTO `invite_firefighters` (`id`, `email`, `date`, `status`, `created_at`, `updated_at`) VALUES
(4, 'malikahfaz123333333@gmail.com', '2022-04-27', 'revoked', '2022-04-27 06:21:36', '2022-04-29 02:14:03'),
(5, 'admin@admin.com', '2022-04-27', 'sent', '2022-04-27 06:23:39', '2022-04-27 06:23:39'),
(6, 'boossto@gmail.com', '2022-04-29', 'sent', '2022-04-29 01:55:17', '2022-04-29 01:55:17'),
(9, 'batman123@gmail.com', '2022-04-29', 'revoked', '2022-04-29 06:20:27', '2022-04-29 06:20:48');

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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_08_20_164816_create_permission_tables', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2020_04_22_062454_create_settings_table', 1),
(11, '2020_07_03_054340_create_firefighters_table', 1),
(12, '2020_07_06_104906_create_foreign_relations_table', 1),
(13, '2020_07_08_054558_create_histories_table', 1),
(14, '2020_07_09_105920_create_credit_types', 1),
(15, '2020_07_10_053933_create_courses_table', 1),
(16, '2020_07_13_055320_create_semesters_table', 1),
(17, '2020_07_13_061528_create_semester_courses_table', 1),
(18, '2020_07_14_062417_create_organizations_table', 1),
(19, '2020_07_14_121356_create_facilities_table', 1),
(20, '2020_07_17_072614_create_facility_types_table', 1),
(21, '2020_07_20_110200_create_classes_table', 1),
(22, '2020_07_22_132724_create_course_classes_table', 1),
(23, '2020_07_29_062714_create_fire_departments_types_table', 1),
(24, '2020_07_29_062715_create_fire_departments_table', 1),
(25, '2020_08_17_060314_create_completed_courses_table', 1),
(26, '2020_08_19_062044_create_certifications_table', 1),
(27, '2020_08_20_070025_create_prerequisites_table', 1),
(28, '2020_08_22_124814_create_awarded_certificates_table', 1),
(29, '2020_10_19_111914_add_columns_to_fire_departments_table', 1),
(30, '2020_10_22_100942_create_instructor_prerequisites_table', 1),
(31, '2020_10_26_134513_add_columns_to_facilities_table', 1),
(32, '2020_10_26_140620_add_columns_to_organizations_table', 1),
(33, '2020_10_27_144520_add_geo_sent_column_to_awarded_certificates_table', 1),
(34, '2020_10_28_110637_add_instrctv_lvl_column_to_firefighters_table', 1),
(35, '2020_10_29_071409_add_date_ranges_column_to_semesters_table', 1),
(36, '2020_11_11_094046_add_columns_to_firefighters', 1),
(37, '2020_11_18_061954_create_course_prerequisites_table', 1),
(38, '2020_11_18_062714_add_column_to_courses_table', 1),
(39, '2020_11_18_063132_create_firefighter_courses_table', 1),
(40, '2020_11_18_064801_create_rejected_reasons_table', 1),
(41, '2020_11_18_065543_drop_columns_to_classes', 1),
(42, '2020_11_19_093940_add_reset_password_column_to_firefighters_table', 1),
(43, '2020_11_20_071642_add_is_invited_column_to_firefighters_table', 1),
(44, '2020_12_02_105300_create_firefighter_certificates_table', 1),
(45, '2020_12_02_105629_create_certificate_statuses_table', 1),
(46, '2020_12_02_110330_create_certificate_rejected_reasons_table', 1),
(47, '2020_12_02_110929_add_firefighters_read_status_column_to_awarded_certificates', 1),
(48, '2020_12_03_095107_create_invite_firefighters_table', 1),
(49, '2020_12_09_101829_add_test_status_column_to_firefighter_certificates', 1),
(50, '2020_12_10_112140_add_fire_department_id_to_classes', 1),
(51, '2020_12_14_063408_add_semester_column_to_course_classes', 1),
(52, '2020_12_16_063112_create_jobs_table', 1),
(53, '2021_01_05_111835_add_column_end_time_into_classes', 1),
(54, '2021_03_11_085448_create_group_credit_types_table', 1),
(55, '2021_04_21_111607_add_tier_and_lapse_date_to_facilities', 1),
(56, '2021_04_22_120458_create_municodes_table', 1),
(57, '2021_04_29_091712_add_comment_to_firefighters_table', 1),
(58, '2021_04_29_093600_add_comment_to_semesters_table', 1),
(59, '2021_04_29_093624_add_comment_to_courses_table', 1),
(60, '2021_04_29_093722_add_comment_to_credit_types_table', 1),
(61, '2021_04_29_093839_add_comment_to_group_credit_types_table', 1),
(62, '2021_04_29_093929_add_comment_to_certifications_table', 1),
(63, '2021_04_29_093953_add_comment_to_fire_departments_table', 1),
(64, '2021_04_29_094012_add_comment_to_organizations_table', 1),
(65, '2021_04_29_094039_add_comment_to_facilities_table', 1),
(66, '2021_05_03_124033_add_certification_cycle_start_and_certification_cycle_end_to_certifications', 1),
(67, '2021_05_06_111904_add_status_to_invite_firefighters', 1),
(68, '2021_05_17_075901_add_multiple_column_to_firefighters', 1),
(69, '2021_06_09_104607_add_multiple_column_to_classes', 1),
(70, '2021_06_09_123209_create_class_firefighter_table', 1),
(71, '2021_07_30_094732_add_renewed_expiry_date_to_certifications_table', 1),
(72, '2022_04_26_080345_create_certificatehistories_table', 2),
(73, '2022_04_21_104547_add_column_updated_by_to_firefighters_table', 3),
(74, '2022_05_06_134643_create_documents_table', 4),
(75, '2022_05_06_135849_create_documents_table', 5),
(76, '2022_05_06_140553_create_documents_table', 6),
(77, '2022_05_14_080214_create_documents_table', 7),
(78, '2022_05_16_135914_create_rejected_documents_table', 8),
(79, '2022_05_19_110036_create_rejected_documents_table', 9),
(80, '2022_06_01_093232_create_newdocuments_table', 10),
(81, '2022_06_16_093112_create_personnel_info_forms_table', 11),
(82, '2022_06_16_114421_create_personnel_info_forms_table', 12),
(83, '2022_06_20_070710_create_rejected_docs_table', 13),
(84, '2022_06_20_114213_create_credential_problem_letters_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 2),
(1, 'App\\User', 8),
(1, 'App\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `municodes`
--

CREATE TABLE `municodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newdocuments`
--

CREATE TABLE `newdocuments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `certificate_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newdocuments`
--

INSERT INTO `newdocuments` (`id`, `firefighter_id`, `certificate_id`, `admin_id`, `name`, `document`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 27, NULL, NULL, 'download (1) (8).png', 0, '2022-06-01 06:46:39', '2022-06-01 06:46:39'),
(2, 1, 27, NULL, NULL, 'download (1) (7).png', 0, '2022-06-01 06:46:39', '2022-06-01 06:46:39'),
(3, 1, 27, NULL, NULL, 'ahfaz (7).jpg', 0, '2022-06-01 06:46:39', '2022-06-01 06:46:39'),
(4, 1, 28, NULL, 'ahfaz one', 'download (1) (1).png', 0, '2022-06-01 06:52:50', '2022-06-01 06:52:50'),
(5, 1, 28, NULL, 'ahfaz three', 'po.PNG', 0, '2022-06-01 06:52:50', '2022-06-01 06:52:50'),
(6, 1, 28, NULL, 'ahfaz two', '1 (5).PNG', 0, '2022-06-01 06:52:50', '2022-06-01 06:52:50'),
(7, 1, 29, NULL, 'dsdsads', 'Database Design( Sufiyan Irfan) .pdf', 0, '2022-06-01 09:07:08', '2022-06-01 09:07:08'),
(8, 1, 29, NULL, 'sadsadsa2222', 'Database Design( Sufiyan Irfan) .pdf', 0, '2022-06-01 09:07:08', '2022-06-01 09:07:08'),
(9, 1, 29, NULL, 'sdsadsadsad', 'wVL7yWpgllqP7MVgxrQ8EP.pdf', 0, '2022-06-01 09:07:08', '2022-06-01 09:07:08'),
(10, 33, 29, NULL, 'maritius cert', 'Database Design( Sufiyan Irfan) .pdf', 0, '2022-06-17 07:22:32', '2022-06-17 07:22:32'),
(11, 33, 29, NULL, 'aus cert', 'wVL7yWpgllqP7MVgxrQ8EP.pdf', 0, '2022-06-17 07:22:32', '2022-06-17 07:22:32'),
(12, 33, 29, NULL, 'ind cert', 'staff-customer-compariso.pdf', 0, '2022-06-17 07:22:32', '2022-06-17 07:22:32'),
(13, 33, 28, NULL, 'sadsadsa', 'screencapture-docs-google-forms-d-e-1FAIpQLSdZhurvqoPzafHlfH5qB8Y-BIF4Jcx8lcLGE-hn-Li7gacUvQ-viewform-2021-01-28-12_25_11.pdf', 1, '2022-06-20 08:47:06', '2022-06-20 08:47:06'),
(14, 33, 28, NULL, 'gggggggggggg', 'Database Design( Sufiyan Irfan) .pdf', 1, '2022-06-20 08:47:06', '2022-06-20 08:47:06'),
(15, 33, 25, NULL, 'sa2314', 'Database Design( Sufiyan Irfan) .pdf', 0, '2022-06-20 09:06:14', '2022-06-20 09:06:14'),
(16, 33, 25, NULL, '343ccc', 'wVL7yWpgllqP7MVgxrQ8EP.pdf', 0, '2022-06-20 09:06:14', '2022-06-20 09:06:14'),
(17, 33, 26, NULL, 'sadsadsa', 'wVL7yWpgllqP7MVgxrQ8EP.pdf', 0, '2022-06-20 09:14:10', '2022-06-20 09:14:10'),
(18, 33, 26, NULL, 'sa2314', 'staff-customer-compariso.pdf', 0, '2022-06-20 09:14:10', '2022-06-20 09:14:10'),
(19, 33, 27, NULL, 'ahfaz', 'Database Design( Sufiyan Irfan) .pdf', 0, '2022-06-20 09:19:13', '2022-06-20 09:19:13'),
(20, 33, 27, NULL, 'sadsadsa', 'screencapture-docs-google-forms-d-e-1FAIpQLSdZhurvqoPzafHlfH5qB8Y-BIF4Jcx8lcLGE-hn-Li7gacUvQ-viewform-2021-01-28-12_25_11.pdf', 0, '2022-06-20 09:19:13', '2022-06-20 09:19:13'),
(21, 33, 22, NULL, 'sa2314', 'Database Design( Sufiyan Irfan) .pdf', 1, '2022-06-20 09:20:59', '2022-06-20 09:20:59'),
(22, 33, 22, NULL, 'sadsadsa', '3789018_010340####_01-07-2020_31-12-2020.pdf', 0, '2022-06-20 09:20:59', '2022-06-20 09:20:59'),
(23, 33, 17, NULL, '34343sd', 'staff-customer-compariso.pdf', 0, '2022-06-20 09:30:40', '2022-06-20 09:30:40'),
(24, 33, 17, NULL, '2424fsffsa', 'wVL7yWpgllqP7MVgxrQ8EP.pdf', 0, '2022-06-20 09:30:40', '2022-06-20 09:30:40'),
(25, 34, 29, NULL, 'doc1', 'Database Design( Sufiyan Irfan) .pdf', 1, '2022-06-21 07:46:21', '2022-06-21 07:46:21'),
(26, 34, 29, NULL, 'doc2', '3789018_010340####_01-07-2020_31-12-2020.pdf', 1, '2022-06-21 07:46:21', '2022-06-21 07:46:21'),
(27, 34, 29, NULL, 'doc3', 'screencapture-docs-google-forms-d-e-1FAIpQLSdZhurvqoPzafHlfH5qB8Y-BIF4Jcx8lcLGE-hn-Li7gacUvQ-viewform-2021-01-28-12_25_11.pdf', 1, '2022-06-21 07:46:21', '2022-06-21 07:46:21'),
(28, 34, 29, NULL, 'doc4', 'staff-customer-compariso.pdf', 1, '2022-06-21 07:46:21', '2022-06-21 07:46:21'),
(29, 35, 29, NULL, 'doc1', '3789018_010340####_01-07-2020_31-12-2020.pdf', 1, '2022-06-22 04:33:04', '2022-06-22 04:33:04'),
(30, 35, 29, NULL, 'doc2', 'Database Design( Sufiyan Irfan) .pdf', 1, '2022-06-22 04:33:04', '2022-06-22 04:33:04'),
(31, 35, 29, NULL, 'doc3', 'wVL7yWpgllqP7MVgxrQ8EP.pdf', 1, '2022-06-22 04:33:04', '2022-06-22 04:33:04'),
(32, 35, 29, NULL, 'doc4', 'screencapture-docs-google-forms-d-e-1FAIpQLSdZhurvqoPzafHlfH5qB8Y-BIF4Jcx8lcLGE-hn-Li7gacUvQ-viewform-2021-01-28-12_25_11.pdf', 1, '2022-06-22 04:33:04', '2022-06-22 04:33:04'),
(33, 40, 29, NULL, 'doc1', '3789018_010340####_01-07-2020_31-12-2020.pdf', 1, '2022-06-23 05:08:34', '2022-06-23 05:08:34'),
(34, 40, 29, NULL, 'doc2', 'wVL7yWpgllqP7MVgxrQ8EP.pdf', 1, '2022-06-23 05:08:34', '2022-06-23 05:08:34'),
(35, 40, 29, NULL, 'doc3', '3789018_010340####_01-07-2020_31-12-2020.pdf', 1, '2022-06-23 05:08:34', '2022-06-23 05:08:34'),
(36, 41, 29, NULL, 'doc1', 'Database Design( Sufiyan Irfan) .pdf', 1, '2022-06-23 05:24:56', '2022-06-23 05:24:56'),
(37, 41, 29, NULL, 'doc2', '3789018_010340####_01-07-2020_31-12-2020.pdf', 1, '2022-06-23 05:24:56', '2022-06-23 05:24:56'),
(38, 41, 29, NULL, 'doc3', 'staff-customer-compariso.pdf', 1, '2022-06-23 05:24:56', '2022-06-23 05:24:56'),
(39, 41, 28, NULL, 'dsssssss', 'Database Design( Sufiyan Irfan) .pdf', 1, '2022-06-23 08:24:01', '2022-06-23 08:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
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
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_municipal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fire department','fire district','government','voc-tech','higher education','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chief_dir_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chief_dir_email_2` text COLLATE utf8mb4_unicode_ci,
  `chief_dir_email_3` text COLLATE utf8mb4_unicode_ci,
  `chief_dir_email` text COLLATE utf8mb4_unicode_ci,
  `chief_dir_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_sign_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_sign_email_2` text COLLATE utf8mb4_unicode_ci,
  `auth_sign_email_3` text COLLATE utf8mb4_unicode_ci,
  `auth_sign_email` text COLLATE utf8mb4_unicode_ci,
  `auth_sign_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_municipality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_municipality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `is_archive` tinyint(1) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `prefix_id`, `country_municipal_code`, `name`, `type`, `other_type`, `phone`, `fax`, `chief_dir_name`, `chief_dir_email_2`, `chief_dir_email_3`, `chief_dir_email`, `chief_dir_phone`, `auth_sign_name`, `auth_sign_email_2`, `auth_sign_email_3`, `auth_sign_email`, `auth_sign_phone`, `mail_address`, `mail_municipality`, `mail_state`, `mail_zipcode`, `physical_address`, `physical_municipality`, `physical_state`, `physical_zipcode`, `comment`, `is_archive`, `archived_at`, `archived_by`, `created_at`, `updated_at`) VALUES
(1, 'E00001', 'india', 'Maaz india', 'government', NULL, '+13333333333', NULL, 'maaz', '', '', 'malikahfaz123@gmail.com', '5454777777', 'maaziya', '', '', 'malikahfaz123@gmail.com', '22222', 'Govt Primary School, Lines Area, Karachi, Karachi City, Sindh 74200', NULL, 'paksitan', '21212', 'Govt Primary School, Lines Area, Karachi, Karachi City, Sindh 74200', NULL, 'pakistan', '21312', 'sadsa', NULL, NULL, NULL, '2022-04-14 02:03:58', '2022-04-14 02:03:58'),
(2, 'E00002', '55555555555543', 'Supervisor', 'fire department', NULL, '+14444444444', NULL, 'ddddd', '', '', 'malikahfaz125555653@gmail.com', '3333334444', 'dddddddd', '', '', 'malikahfaz123@gmail.com', '6564353333', 'karachi', NULL, 'pak', '21321', 'fdfdfdfdfdfdfdfd', NULL, 'pak', '21321', 'dddddddddddd', NULL, NULL, NULL, '2022-04-18 03:33:09', '2022-04-18 03:33:09');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'firefighters.create', 'web', NULL, NULL),
(2, 'firefighters.read', 'web', NULL, NULL),
(3, 'firefighters.update', 'web', NULL, NULL),
(4, 'firefighters.delete', 'web', NULL, NULL),
(5, 'semesters.create', 'web', NULL, NULL),
(6, 'semesters.read', 'web', NULL, NULL),
(7, 'semesters.update', 'web', NULL, NULL),
(8, 'semesters.delete', 'web', NULL, NULL),
(9, 'courses.create', 'web', NULL, NULL),
(10, 'courses.read', 'web', NULL, NULL),
(11, 'courses.update', 'web', NULL, NULL),
(12, 'courses.delete', 'web', NULL, NULL),
(13, 'certifications.create', 'web', NULL, NULL),
(14, 'certifications.read', 'web', NULL, NULL),
(15, 'certifications.update', 'web', NULL, NULL),
(16, 'certifications.delete', 'web', NULL, NULL),
(17, 'fire_departments.create', 'web', NULL, NULL),
(18, 'fire_departments.read', 'web', NULL, NULL),
(19, 'fire_departments.update', 'web', NULL, NULL),
(20, 'fire_departments.delete', 'web', NULL, NULL),
(21, 'organizations.create', 'web', NULL, NULL),
(22, 'organizations.read', 'web', NULL, NULL),
(23, 'organizations.update', 'web', NULL, NULL),
(24, 'organizations.delete', 'web', NULL, NULL),
(25, 'facilities.create', 'web', NULL, NULL),
(26, 'facilities.read', 'web', NULL, NULL),
(27, 'facilities.update', 'web', NULL, NULL),
(28, 'facilities.delete', 'web', NULL, NULL),
(29, 'settings.create', 'web', NULL, NULL),
(30, 'settings.read', 'web', NULL, NULL),
(31, 'settings.update', 'web', NULL, NULL),
(32, 'settings.delete', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personnel_info_forms`
--

CREATE TABLE `personnel_info_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `applicant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssn_number` int(11) NOT NULL,
  `career_fd_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career_fdid_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume_fd_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume_fdid_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driving_document` text COLLATE utf8mb4_unicode_ci,
  `birth_document` text COLLATE utf8mb4_unicode_ci,
  `school_document` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personnel_info_forms`
--

INSERT INTO `personnel_info_forms` (`id`, `firefighter_id`, `applicant`, `ssn_number`, `career_fd_name`, `career_fdid_name`, `volume_fd_name`, `volume_fdid_name`, `driving_document`, `birth_document`, `school_document`, `created_at`, `updated_at`) VALUES
(1, 33, 'new', 333333, 'hhhhhhhhhhh', 'ttttttttttt', 'ffffffffffffff', 'sssssssssssss', 'screencapture-docs-google-forms-d-e-1FAIpQLSdZhurvqoPzafHlfH5qB8Y-BIF4Jcx8lcLGE-hn-Li7gacUvQ-viewform-2021-01-28-12_25_11.pdf', '3789018_010340####_01-07-2020_31-12-2020.pdf', 'Invoice Management - IMAGES IN FRAMES.pdf', '2022-06-16 06:56:20', '2022-06-16 07:43:53'),
(2, 34, 'new', 12345, 'sdsadsa', 'sadsadsads', 'sadsadsa', 'sadsadsadsadsadsa', 'Invoice Management - IMAGES IN FRAMES.pdf', '3789018_010340####_01-07-2020_31-12-2020.pdf', 'screencapture-docs-google-forms-d-e-1FAIpQLSdZhurvqoPzafHlfH5qB8Y-BIF4Jcx8lcLGE-hn-Li7gacUvQ-viewform-2021-01-28-12_25_11.pdf', '2022-06-21 06:59:23', '2022-06-21 07:00:49'),
(3, 35, 'new', 23232, 'SDADSA', 'DASDSADA', 'DSAD', 'SADSADSA', 'staff-customer-compariso.pdf', 'Database Design( Sufiyan Irfan) .pdf', 'screencapture-docs-google-forms-d-e-1FAIpQLSdZhurvqoPzafHlfH5qB8Y-BIF4Jcx8lcLGE-hn-Li7gacUvQ-viewform-2021-01-28-12_25_11.pdf', '2022-06-22 04:28:52', '2022-06-22 04:30:18'),
(4, 36, 'new', 232323, 'sadsad', 'sadsdsa', 'dsadsada', 'sadsadsadsa', NULL, NULL, NULL, '2022-06-22 05:46:27', '2022-06-22 05:46:27'),
(5, 37, 'new', 2147483647, 'dsadsadsadsadsa', 'dsgggg', 'ddgd', 'gdggdgd', NULL, NULL, NULL, '2022-06-22 05:48:42', '2022-06-22 05:48:42'),
(6, 38, 'new', 21332, 'saddddd', 'asdsadsadsaa', 'dsadsadsa', 'dsadsadsa', NULL, NULL, NULL, '2022-06-22 05:55:23', '2022-06-22 05:55:23'),
(7, 39, 'new', 3222222, 'afffffffff', 'saffffffff', 'safsafsahgsd', 'dsgdgfgfhgfhgf', NULL, NULL, NULL, '2022-06-22 06:07:18', '2022-06-22 06:07:18'),
(8, 40, 'new', 4324234, 'sadsad42', 'sadsay6', 'fhfhf68', '533fffff', 'staff-customer-compariso.pdf', '3789018_010340####_01-07-2020_31-12-2020.pdf', '3789018_010340####_01-07-2020_31-12-2020.pdf', '2022-06-23 05:02:55', '2022-06-23 05:04:00'),
(9, 41, 'new', 2147483647, 'sadddddddd', 'dddsadsa', 'sadsad', 'sadasdsadsada', '3789018_010340####_01-07-2020_31-12-2020.pdf', 'Invoice Management - IMAGES IN FRAMES.pdf', 'Invoice Management - IMAGES IN FRAMES.pdf', '2022-06-23 05:20:17', '2022-06-23 05:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `prerequisites`
--

CREATE TABLE `prerequisites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `certification_id` bigint(20) UNSIGNED NOT NULL,
  `pre_req_course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_req_certificate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rejected_documents`
--

CREATE TABLE `rejected_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_id` bigint(20) UNSIGNED NOT NULL,
  `rejected_reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rejected_documents`
--

INSERT INTO `rejected_documents` (`id`, `document_id`, `firefighter_id`, `rejected_reason`, `created_at`, `updated_at`) VALUES
(6, 111, 1, 'fffffff', '2022-05-27 05:33:07', '2022-05-27 05:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `rejected_reasons`
--

CREATE TABLE `rejected_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firefighter_courses_id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-04-14 01:27:11', '2022-04-14 01:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester` enum('spring','summer','fall','winter') COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `year` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `is_archive` tinyint(1) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `semester`, `start_date`, `end_date`, `year`, `comment`, `is_archive`, `archived_at`, `archived_by`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'spring', '2023-04-27', '2023-05-07', 2023, 'ytryt', NULL, NULL, NULL, 1, '2022-04-15 05:08:36', '2022-04-15 05:08:36'),
(2, 'spring', '2023-01-10', '2023-04-13', 2023, 'noooo', NULL, NULL, NULL, 1, '2022-04-18 00:46:54', '2022-04-18 00:46:54'),
(3, 'spring', '2025-05-05', '2025-05-14', 2025, 'saaaaaaaaaaa', NULL, NULL, NULL, 1, '2022-04-25 01:06:06', '2022-04-28 05:09:54'),
(4, 'spring', '2022-04-28', '2022-05-11', 2022, 'saedsad', NULL, NULL, NULL, 1, '2022-04-28 05:10:20', '2022-04-28 05:10:20'),
(5, 'summer', '2022-05-13', '2022-05-19', 2022, 'sadsadsad', NULL, NULL, NULL, 1, '2022-05-10 04:55:39', '2022-05-10 04:55:39'),
(6, 'fall', '2022-05-20', '2022-06-11', 2022, 'sadsad', NULL, NULL, NULL, 1, '2022-05-10 04:56:42', '2022-05-10 04:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `semester_courses`
--

CREATE TABLE `semester_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester_courses`
--

INSERT INTO `semester_courses` (`id`, `semester_id`, `course_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 9),
(4, 3, 10),
(5, 3, 11),
(6, 4, 12),
(7, 5, 1),
(8, 5, 11),
(9, 6, 1),
(10, 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'per_page', NULL),
(2, 'min_attendance_perc', NULL),
(3, 'logo', ''),
(4, 'fall_start', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('male','female','transgender','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `race` enum('american indian or alaskan native','asian or pacific islander','black, not of hispanic origin','white, not of hispanic origin','hispanic') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone_verified` tinyint(1) DEFAULT NULL,
  `work_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone_ext` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_archive` tinyint(1) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `invited_by` bigint(20) UNSIGNED DEFAULT NULL,
  `reset_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `dob`, `gender`, `race`, `user_image`, `address`, `city`, `state`, `zipcode`, `home_phone`, `cell_phone`, `cell_phone_verified`, `work_phone`, `work_phone_ext`, `remember_token`, `is_archive`, `archived_at`, `archived_by`, `invited_by`, `reset_password`, `created_at`, `updated_at`) VALUES
(1, 1, 'Richlo', 'admin@admin.com', '2022-04-14 01:27:12', '$2y$10$Td28GJJvlCrdKbEJFi3DyugvD9f8aya5iHd4TkrMZ3ktovwr/Gg/O', '2022-04-06', 'male', 'american indian or alaskan native', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-14 01:27:12', '2022-04-14 03:09:35'),
(2, 1, 'kingdom vision org', 'malikahfaz1234@gmail.com', NULL, '$2y$10$Td28GJJvlCrdKbEJFi3DyugvD9f8aya5iHd4TkrMZ3ktovwr/Gg/O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-14 06:02:17', '2022-04-14 06:02:17'),
(8, 1, 'batman boossto KHNAsdsds', 'batman123@gmail.com', NULL, '$2y$10$2zhYWW9NEmwFT05e6ABR.O8yxfqM3/qK7ikLp6lA34CLW4kDJd1rm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 05:04:17', '2022-05-06 05:04:17'),
(9, 1, 'moiz2 KHAN KHNA', 'malikahfaz123333333333@gmail.com', NULL, '$2y$10$kCrccNFjyFPBUAbKDEBHz.Hp85kzUytw.p.nplFElOCKJS53tPhu2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 05:04:45', '2022-05-06 05:04:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awarded_certificates`
--
ALTER TABLE `awarded_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awarded_certificates_certificate_id_foreign` (`certificate_id`),
  ADD KEY `awarded_certificates_firefighter_id_foreign` (`firefighter_id`),
  ADD KEY `awarded_certificates_organization_id_foreign` (`organization_id`);

--
-- Indexes for table `certificatehistories`
--
ALTER TABLE `certificatehistories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificatehistories_firefighter_id_foreign` (`firefighter_id`),
  ADD KEY `certificatehistories_certificate_id_foreign` (`certificate_id`);

--
-- Indexes for table `certificate_rejected_reasons`
--
ALTER TABLE `certificate_rejected_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_rejected_reasons_firefighter_certificates_id_foreign` (`firefighter_certificates_id`),
  ADD KEY `certificate_rejected_reasons_firefighter_id_foreign` (`firefighter_id`);

--
-- Indexes for table `certificate_statuses`
--
ALTER TABLE `certificate_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_statuses_firefighter_certificates_id_foreign` (`firefighter_certificates_id`),
  ADD KEY `certificate_statuses_firefighter_id_foreign` (`firefighter_id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certifications_created_by_foreign` (`created_by`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classes_semester_id_foreign` (`semester_id`),
  ADD KEY `classes_course_id_foreign` (`course_id`),
  ADD KEY `classes_organization_id_foreign` (`organization_id`),
  ADD KEY `classes_instructor_id_foreign` (`instructor_id`),
  ADD KEY `classes_facility_id_foreign` (`facility_id`),
  ADD KEY `classes_archived_by_foreign` (`archived_by`),
  ADD KEY `classes_created_by_foreign` (`created_by`),
  ADD KEY `classes_fire_department_id_foreign` (`fire_department_id`);

--
-- Indexes for table `class_firefighter`
--
ALTER TABLE `class_firefighter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_firefighter_class_id_foreign` (`class_id`),
  ADD KEY `class_firefighter_firefighter_id_foreign` (`firefighter_id`);

--
-- Indexes for table `completed_courses`
--
ALTER TABLE `completed_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `completed_courses_firefighter_id_foreign` (`firefighter_id`),
  ADD KEY `completed_courses_semester_id_foreign` (`semester_id`),
  ADD KEY `completed_courses_course_id_foreign` (`course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_archived_by_foreign` (`archived_by`),
  ADD KEY `courses_created_by_foreign` (`created_by`);

--
-- Indexes for table `course_classes`
--
ALTER TABLE `course_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_classes_course_id_foreign` (`course_id`),
  ADD KEY `course_classes_firefighter_id_foreign` (`firefighter_id`);

--
-- Indexes for table `course_prerequisites`
--
ALTER TABLE `course_prerequisites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_prerequisites_course_id_foreign` (`course_id`),
  ADD KEY `course_prerequisites_preq_course_id_foreign` (`preq_course_id`);

--
-- Indexes for table `credential_problem_letters`
--
ALTER TABLE `credential_problem_letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credential_problem_letters_rejected_reason_id_foreign` (`rejected_reason_id`);

--
-- Indexes for table `credit_types`
--
ALTER TABLE `credit_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_firefighter_id_foreign` (`firefighter_id`),
  ADD KEY `documents_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facilities_organization_foreign` (`organization`),
  ADD KEY `facilities_archived_by_foreign` (`archived_by`),
  ADD KEY `facilities_created_by_foreign` (`created_by`);

--
-- Indexes for table `facility_types`
--
ALTER TABLE `facility_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firefighters`
--
ALTER TABLE `firefighters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `firefighters_cell_phone_unique` (`cell_phone`),
  ADD UNIQUE KEY `firefighters_work_email_unique` (`work_email`),
  ADD KEY `firefighters_archived_by_foreign` (`archived_by`),
  ADD KEY `firefighters_created_by_foreign` (`created_by`);

--
-- Indexes for table `firefighter_certificates`
--
ALTER TABLE `firefighter_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firefighter_certificates_firefighter_id_foreign` (`firefighter_id`),
  ADD KEY `firefighter_certificates_certificate_id_foreign` (`certificate_id`);

--
-- Indexes for table `firefighter_courses`
--
ALTER TABLE `firefighter_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firefighter_courses_semester_id_foreign` (`semester_id`),
  ADD KEY `firefighter_courses_course_id_foreign` (`course_id`),
  ADD KEY `firefighter_courses_firefighter_id_foreign` (`firefighter_id`);

--
-- Indexes for table `fire_departments`
--
ALTER TABLE `fire_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fire_departments_archived_by_foreign` (`archived_by`),
  ADD KEY `fire_departments_created_by_foreign` (`created_by`);

--
-- Indexes for table `fire_department_types`
--
ALTER TABLE `fire_department_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foreign_relations`
--
ALTER TABLE `foreign_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_credit_types`
--
ALTER TABLE `group_credit_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_credit_types_credit_type_id_foreign` (`credit_type_id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `instructor_prerequisites`
--
ALTER TABLE `instructor_prerequisites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_prerequisites_course_id_foreign` (`course_id`);

--
-- Indexes for table `invite_firefighters`
--
ALTER TABLE `invite_firefighters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `municodes`
--
ALTER TABLE `municodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newdocuments`
--
ALTER TABLE `newdocuments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newdocuments_firefighter_id_foreign` (`firefighter_id`),
  ADD KEY `newdocuments_certificate_id_foreign` (`certificate_id`),
  ADD KEY `newdocuments_admin_id_foreign` (`admin_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organizations_archived_by_foreign` (`archived_by`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personnel_info_forms`
--
ALTER TABLE `personnel_info_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personnel_info_forms_firefighter_id_foreign` (`firefighter_id`);

--
-- Indexes for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prerequisites_certification_id_foreign` (`certification_id`),
  ADD KEY `prerequisites_pre_req_course_id_foreign` (`pre_req_course_id`),
  ADD KEY `prerequisites_pre_req_certificate_id_foreign` (`pre_req_certificate_id`);

--
-- Indexes for table `rejected_documents`
--
ALTER TABLE `rejected_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rejected_documents_document_id_foreign` (`document_id`),
  ADD KEY `rejected_documents_firefighter_id_foreign` (`firefighter_id`);

--
-- Indexes for table `rejected_reasons`
--
ALTER TABLE `rejected_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rejected_reasons_firefighter_courses_id_foreign` (`firefighter_courses_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semesters_archived_by_foreign` (`archived_by`),
  ADD KEY `semesters_created_by_foreign` (`created_by`);

--
-- Indexes for table `semester_courses`
--
ALTER TABLE `semester_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_courses_semester_id_foreign` (`semester_id`),
  ADD KEY `semester_courses_course_id_foreign` (`course_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_cell_phone_unique` (`cell_phone`),
  ADD UNIQUE KEY `users_reset_password_unique` (`reset_password`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_archived_by_foreign` (`archived_by`),
  ADD KEY `users_invited_by_foreign` (`invited_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awarded_certificates`
--
ALTER TABLE `awarded_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `certificatehistories`
--
ALTER TABLE `certificatehistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `certificate_rejected_reasons`
--
ALTER TABLE `certificate_rejected_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `certificate_statuses`
--
ALTER TABLE `certificate_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_firefighter`
--
ALTER TABLE `class_firefighter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `completed_courses`
--
ALTER TABLE `completed_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `course_classes`
--
ALTER TABLE `course_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_prerequisites`
--
ALTER TABLE `course_prerequisites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credential_problem_letters`
--
ALTER TABLE `credential_problem_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `credit_types`
--
ALTER TABLE `credit_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facility_types`
--
ALTER TABLE `facility_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firefighters`
--
ALTER TABLE `firefighters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `firefighter_certificates`
--
ALTER TABLE `firefighter_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `firefighter_courses`
--
ALTER TABLE `firefighter_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fire_departments`
--
ALTER TABLE `fire_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fire_department_types`
--
ALTER TABLE `fire_department_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foreign_relations`
--
ALTER TABLE `foreign_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `group_credit_types`
--
ALTER TABLE `group_credit_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `instructor_prerequisites`
--
ALTER TABLE `instructor_prerequisites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invite_firefighters`
--
ALTER TABLE `invite_firefighters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `municodes`
--
ALTER TABLE `municodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newdocuments`
--
ALTER TABLE `newdocuments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personnel_info_forms`
--
ALTER TABLE `personnel_info_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prerequisites`
--
ALTER TABLE `prerequisites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rejected_documents`
--
ALTER TABLE `rejected_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rejected_reasons`
--
ALTER TABLE `rejected_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `semester_courses`
--
ALTER TABLE `semester_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `awarded_certificates`
--
ALTER TABLE `awarded_certificates`
  ADD CONSTRAINT `awarded_certificates_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certifications` (`id`),
  ADD CONSTRAINT `awarded_certificates_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`),
  ADD CONSTRAINT `awarded_certificates_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`);

--
-- Constraints for table `certificatehistories`
--
ALTER TABLE `certificatehistories`
  ADD CONSTRAINT `certificatehistories_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certifications` (`id`),
  ADD CONSTRAINT `certificatehistories_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`);

--
-- Constraints for table `certificate_rejected_reasons`
--
ALTER TABLE `certificate_rejected_reasons`
  ADD CONSTRAINT `certificate_rejected_reasons_firefighter_certificates_id_foreign` FOREIGN KEY (`firefighter_certificates_id`) REFERENCES `firefighter_certificates` (`id`),
  ADD CONSTRAINT `certificate_rejected_reasons_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`);

--
-- Constraints for table `certificate_statuses`
--
ALTER TABLE `certificate_statuses`
  ADD CONSTRAINT `certificate_statuses_firefighter_certificates_id_foreign` FOREIGN KEY (`firefighter_certificates_id`) REFERENCES `firefighter_certificates` (`id`),
  ADD CONSTRAINT `certificate_statuses_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`);

--
-- Constraints for table `certifications`
--
ALTER TABLE `certifications`
  ADD CONSTRAINT `certifications_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `classes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `classes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `classes_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`),
  ADD CONSTRAINT `classes_fire_department_id_foreign` FOREIGN KEY (`fire_department_id`) REFERENCES `fire_departments` (`id`),
  ADD CONSTRAINT `classes_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `firefighters` (`id`),
  ADD CONSTRAINT `classes_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `classes_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `class_firefighter`
--
ALTER TABLE `class_firefighter`
  ADD CONSTRAINT `class_firefighter_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `class_firefighter_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`);

--
-- Constraints for table `completed_courses`
--
ALTER TABLE `completed_courses`
  ADD CONSTRAINT `completed_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `completed_courses_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`),
  ADD CONSTRAINT `completed_courses_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `courses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_classes`
--
ALTER TABLE `course_classes`
  ADD CONSTRAINT `course_classes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_classes_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`);

--
-- Constraints for table `course_prerequisites`
--
ALTER TABLE `course_prerequisites`
  ADD CONSTRAINT `course_prerequisites_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_prerequisites_preq_course_id_foreign` FOREIGN KEY (`preq_course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `credential_problem_letters`
--
ALTER TABLE `credential_problem_letters`
  ADD CONSTRAINT `credential_problem_letters_rejected_reason_id_foreign` FOREIGN KEY (`rejected_reason_id`) REFERENCES `certificate_rejected_reasons` (`id`);

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documents_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`);

--
-- Constraints for table `facilities`
--
ALTER TABLE `facilities`
  ADD CONSTRAINT `facilities_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `facilities_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `facilities_organization_foreign` FOREIGN KEY (`organization`) REFERENCES `organizations` (`id`);

--
-- Constraints for table `firefighters`
--
ALTER TABLE `firefighters`
  ADD CONSTRAINT `firefighters_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `firefighters_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `firefighter_certificates`
--
ALTER TABLE `firefighter_certificates`
  ADD CONSTRAINT `firefighter_certificates_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certifications` (`id`),
  ADD CONSTRAINT `firefighter_certificates_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`);

--
-- Constraints for table `firefighter_courses`
--
ALTER TABLE `firefighter_courses`
  ADD CONSTRAINT `firefighter_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `firefighter_courses_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`),
  ADD CONSTRAINT `firefighter_courses_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `fire_departments`
--
ALTER TABLE `fire_departments`
  ADD CONSTRAINT `fire_departments_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fire_departments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `group_credit_types`
--
ALTER TABLE `group_credit_types`
  ADD CONSTRAINT `group_credit_types_credit_type_id_foreign` FOREIGN KEY (`credit_type_id`) REFERENCES `credit_types` (`id`);

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructor_prerequisites`
--
ALTER TABLE `instructor_prerequisites`
  ADD CONSTRAINT `instructor_prerequisites_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `newdocuments`
--
ALTER TABLE `newdocuments`
  ADD CONSTRAINT `newdocuments_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `newdocuments_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certifications` (`id`),
  ADD CONSTRAINT `newdocuments_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`);

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `personnel_info_forms`
--
ALTER TABLE `personnel_info_forms`
  ADD CONSTRAINT `personnel_info_forms_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighters` (`id`);

--
-- Constraints for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD CONSTRAINT `prerequisites_certification_id_foreign` FOREIGN KEY (`certification_id`) REFERENCES `certifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prerequisites_pre_req_certificate_id_foreign` FOREIGN KEY (`pre_req_certificate_id`) REFERENCES `certifications` (`id`),
  ADD CONSTRAINT `prerequisites_pre_req_course_id_foreign` FOREIGN KEY (`pre_req_course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `rejected_documents`
--
ALTER TABLE `rejected_documents`
  ADD CONSTRAINT `rejected_documents_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `rejected_documents_firefighter_id_foreign` FOREIGN KEY (`firefighter_id`) REFERENCES `documents` (`firefighter_id`) ON DELETE CASCADE;

--
-- Constraints for table `rejected_reasons`
--
ALTER TABLE `rejected_reasons`
  ADD CONSTRAINT `rejected_reasons_firefighter_courses_id_foreign` FOREIGN KEY (`firefighter_courses_id`) REFERENCES `firefighter_courses` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `semesters_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `semester_courses`
--
ALTER TABLE `semester_courses`
  ADD CONSTRAINT `semester_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `semester_courses_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_invited_by_foreign` FOREIGN KEY (`invited_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
