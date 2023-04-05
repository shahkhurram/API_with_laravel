-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 07:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`) VALUES
(1, 'khurram', 'khurramgaur8@gmail.com ', '9248559456'),
(2, 'car', 'car@gmail.com', '756546565454'),
(3, 'phone', 'wenf@gmail.com', '9248559456'),
(4, 'flipkart', 'wenf@gmail.com', '924855945'),
(5, 'shah', 'shah@gmail.com', '6746346634'),
(7, 'khurram', 'khurramgaur8@gmail.com', '924956566'),
(8, 'khurram', 'khurramgaur8@gmail.com', '66666666'),
(9, 'khurram', 'khurramgaur8@gmail.com', '66666666'),
(10, 'khurram', 'lsakodfioer8@gmail.com', '645545454');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
(1, 'App\\Models\\User', 1, 'my-app-token', '85c718c36cf99dc204b03d54ceaf40b391ddd972602f88e277b4d6c7e5d12df3', '[\"*\"]', NULL, NULL, '2023-02-17 06:10:14', '2023-02-17 06:10:14'),
(2, 'App\\Models\\User', 1, 'my-app-token', 'f056237c8e3a73c5b7a9162c8d672d0a7ebdeb3b462bda80159b7749cde30b29', '[\"*\"]', NULL, NULL, '2023-02-17 06:11:22', '2023-02-17 06:11:22'),
(3, 'App\\Models\\User', 1, 'my-app-token', '46b977c7a78d2736b91f68c255b266ec1426fa6306009cb066ae67fa970e0045', '[\"*\"]', NULL, NULL, '2023-02-17 06:12:53', '2023-02-17 06:12:53'),
(4, 'App\\Models\\User', 1, 'my-app-token', '3e7920814995d5d9a55cb59d8cedce352c2838f4b47175ac652983663c451bb6', '[\"*\"]', NULL, NULL, '2023-02-17 06:13:07', '2023-02-17 06:13:07'),
(5, 'App\\Models\\User', 1, 'my-app-token', 'cfd4912656cc89a59f9a4cef64295e2b64b8e5eb9b85960f628b77482e52d5f7', '[\"*\"]', NULL, NULL, '2023-02-17 06:13:30', '2023-02-17 06:13:30'),
(6, 'App\\Models\\User', 1, 'my-app-token', 'f26d49069a41efad4562eaaf53cf2151a73f9ffa6c1726acb33e2417c5dc65be', '[\"*\"]', NULL, NULL, '2023-02-17 06:15:51', '2023-02-17 06:15:51'),
(7, 'App\\Models\\User', 1, 'my-app-token', '4e700dff20b35cc3e92307fd9e36b5d03cd1815ccc4714ddab26f83fc59f4dc3', '[\"*\"]', NULL, NULL, '2023-02-17 06:17:56', '2023-02-17 06:17:56'),
(8, 'App\\Models\\User', 1, 'my-app-token', 'b2c057ecc28b84d07aede2e4ef73c0f40eb105f462a0b95dffb4b715a18698dd', '[\"*\"]', NULL, NULL, '2023-02-17 06:21:33', '2023-02-17 06:21:33'),
(9, 'App\\Models\\User', 1, 'my-app-token', 'efbfdf5a276245f769151bbbb2aef994ff3189a17d535e2e4c6a7137aea1e325', '[\"*\"]', NULL, NULL, '2023-02-17 06:31:06', '2023-02-17 06:31:06'),
(10, 'App\\Models\\User', 1, 'my-app-token', 'db9b29c296826765e7ce8e3d57a01c7ace332ee02f2392d8b17f0f4a2d55049b', '[\"*\"]', NULL, NULL, '2023-02-17 06:32:21', '2023-02-17 06:32:21'),
(11, 'App\\Models\\User', 1, 'my-app-token', 'a6f7d98e82e9175e95be11b23fe84c67c39fab550e8aa8340419f47e45c72066', '[\"*\"]', '2023-02-17 06:36:06', NULL, '2023-02-17 06:35:12', '2023-02-17 06:36:06'),
(12, 'App\\Models\\User', 1, 'my-app-token', '44e0afedbc3382296f5c9e1a747de044d9d8ed7b084070ec4ef3d3936aced312', '[\"*\"]', NULL, NULL, '2023-02-17 06:42:50', '2023-02-17 06:42:50'),
(13, 'App\\Models\\User', 1, 'my-app-token', '2cce9ad4523cd08a5237b9e585d1ee02d6503dd30eb62d560517eb1230bc631e', '[\"*\"]', NULL, NULL, '2023-02-17 06:50:10', '2023-02-17 06:50:10'),
(14, 'App\\Models\\User', 1, 'my-app-token', 'a6b219deaa101c07ff0ca531a0056670b4f61b061f7d119eade53664de129b14', '[\"*\"]', NULL, NULL, '2023-02-17 06:53:59', '2023-02-17 06:53:59'),
(15, 'App\\Models\\User', 1, 'my-app-token', '036ea25f9878a8a7e1d5b897cb62ca266bfb0732a3a73be1aeafdba80485281a', '[\"*\"]', '2023-02-17 06:57:03', NULL, '2023-02-17 06:54:04', '2023-02-17 06:57:03'),
(16, 'App\\Models\\User', 1, 'my-app-token', 'e23e2ce4af443dbeece2c994527088049dd26fb2dffe014b38b6b3a59f59ae21', '[\"*\"]', NULL, NULL, '2023-02-17 06:55:46', '2023-02-17 06:55:46'),
(17, 'App\\Models\\User', 1, 'my-app-token', 'b2d9eaff0938319baf7c596fbb0392c2214915237bdd532bbd3f3556cc030ca0', '[\"*\"]', NULL, NULL, '2023-02-17 06:58:38', '2023-02-17 06:58:38'),
(18, 'App\\Models\\User', 1, 'my-app-token', '05d55e2d99d757d50e420c5fb36ab1ad8f13cf09307fb7e21856da2b1e75360a', '[\"*\"]', NULL, NULL, '2023-02-17 07:00:12', '2023-02-17 07:00:12'),
(19, 'App\\Models\\User', 1, 'my-app-token', '702bebba5686408623fe0f857aac96dba2d121738c920226feb010b128deed61', '[\"*\"]', NULL, NULL, '2023-02-17 07:01:01', '2023-02-17 07:01:01'),
(20, 'App\\Models\\User', 1, 'my-app-token', 'e8beeb61e9bf870a462028a35940f8aff9d1f642a1918f2515c59a24caa46cb3', '[\"*\"]', NULL, NULL, '2023-02-19 23:55:44', '2023-02-19 23:55:44'),
(21, 'App\\Models\\User', 1, 'my-app-token', 'c3bae4855f2955bfd9bf9774a11b31f22ed57a0d65c22d3a5189678ba616aec3', '[\"*\"]', NULL, NULL, '2023-02-19 23:57:46', '2023-02-19 23:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `otherinfo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `productname`, `otherinfo`) VALUES
(1, 'bat', 'cricket bat', 'this is made up of wood');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'khurram', 'khurram@gmail.com', NULL, '$2y$10$R/wz5FVxwd5hX591KMLjL.s9CvnfVOm2BivIqkJSW.smtYcf4Of0S', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
