-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2021 at 11:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(5, '2021_08_02_012240_create_products_table', 3);

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
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'online_shopping', '0889437813091598f4484674e18a73a887db6db313dbc6657a93281127e239b2', '[\"*\"]', NULL, '2021-08-01 14:35:47', '2021-08-01 14:35:47'),
(2, 'App\\Models\\User', 1, 'online_shopping', '51b57d064150201e9b4d5820c54ea722f3dae2d66054a13b517c947369b51283', '[\"*\"]', NULL, '2021-08-01 14:37:03', '2021-08-01 14:37:03'),
(3, 'App\\Models\\User', 1, 'online_shopping', 'cdad55d9406119fd15938873c2380f371f770bf24433baa574da4885f5006a2d', '[\"*\"]', NULL, '2021-08-01 14:37:13', '2021-08-01 14:37:13'),
(4, 'App\\Models\\User', 1, 'online_shopping', 'c1d153330588cc0c0454d2143d0ea901e1f3d793a31fcbc411e4ae61c07f8730', '[\"*\"]', NULL, '2021-08-01 14:38:14', '2021-08-01 14:38:14'),
(5, 'App\\Models\\User', 1, 'online_shopping', 'fcca72cb3692944fb56ac2879ed9f5028bd06f848cf174dfa0e9e632fe7105c6', '[\"*\"]', NULL, '2021-08-01 15:04:32', '2021-08-01 15:04:32'),
(6, 'App\\Models\\User', 7, 'online_shopping', 'a59879a6c562793eca3cc4692007479c7175b8c3d4655f4f0daa088b311c147b', '[\"*\"]', NULL, '2021-08-01 17:05:39', '2021-08-01 17:05:39'),
(7, 'App\\Models\\User', 12, 'online_shopping', '931cf63c9323883c73caf982dc138ec7fc5f632fca4f2ca93e74b42ae80a19fa', '[\"*\"]', NULL, '2021-08-02 01:42:49', '2021-08-02 01:42:49'),
(8, 'App\\Models\\User', 12, 'online_shopping', '236dd47dcfb4b9a575e9807a96a3956d9dad181d67b5f6ac63abaa1c61d39221', '[\"*\"]', NULL, '2021-08-02 01:44:22', '2021-08-02 01:44:22'),
(9, 'App\\Models\\User', 12, 'online_shopping', 'cee972d0fcb291ff48ced14ff13cf2ba7677c830350b49bde62bf2e7ad92ed37', '[\"*\"]', NULL, '2021-08-02 01:46:36', '2021-08-02 01:46:36'),
(10, 'App\\Models\\User', 12, 'online_shopping', '88f9145a3f04079a699f79085264c320818b1cd9af1399f66e29b3e74624a313', '[\"*\"]', NULL, '2021-08-02 01:47:06', '2021-08-02 01:47:06'),
(11, 'App\\Models\\User', 12, 'online_shopping', '2a538197334cc334a9cc296c1e55120759fa59c19c5397792ecc5650e67c573b', '[\"*\"]', NULL, '2021-08-02 01:48:24', '2021-08-02 01:48:24'),
(12, 'App\\Models\\User', 12, 'online_shopping', '611e5468dd8f8f4b9f5df357e5820f2e0e12a9d7bb7a67f027e8fd9331877dd9', '[\"*\"]', NULL, '2021-08-02 01:50:40', '2021-08-02 01:50:40'),
(13, 'App\\Models\\User', 14, 'online_shopping', 'c00bf0b81397bfb6b995fa326e017b2917b2f516c4863437ff5ee2e9ca1b9423', '[\"*\"]', NULL, '2021-08-02 03:58:15', '2021-08-02 03:58:15'),
(14, 'App\\Models\\User', 14, 'online_shopping', 'e4e97aa6638bd1c80d0a7a2ea09580ef6ee3d4ccad38e9017b9af53239acff7b', '[\"*\"]', NULL, '2021-08-02 03:59:22', '2021-08-02 03:59:22'),
(15, 'App\\Models\\User', 16, 'online_shopping', '14d48ec4d62bb67bec44b2744a3f0802eb67035e37eb5a112bf0d26aa50aa17c', '[\"*\"]', NULL, '2021-08-02 05:36:16', '2021-08-02 05:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `description`, `product_image`, `created_at`, `updated_at`) VALUES
(6, 'scdsdsffa', '234', 'dfdsfffdgdgfdsgdsfgdfg', 'dfsfsdff', '2021-08-02 23:03:34', '2021-08-02 23:03:34'),
(7, 'dfcdsvdfxvfd', 'fgfdgbf', 'fb cvb cvb vbnvnbvn n', 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1619487269-tr3mmst080-shoe-angle-global-mens-tree-runner-mist-white-b11537e4-5c45-4443-a1dd-c70c31779715-png-1619487255.jpg?crop=1xw:1xh;center,top&resize=480:*', '2021-08-02 23:45:01', '2021-08-02 23:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `profile_image`, `usertype`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Jesselle', 'Ocampo', 'Jesselle', '$2y$10$/iNJPcf5LSaqlXRRQrrAL.36XuLHEd.BDmht/.sRTSJG.Mx5sh5I6', 'default.png', 'customer', NULL, '2021-08-01 16:49:42', '2021-08-01 16:49:42'),
(7, 'Judy-an', 'Arquisal', 'Judy', '$2y$10$YjL2DdkwnRGT1mcbLlj.FO3Ukqb/oOluSmblcSe1lxW0DHp94cSlS', 'default.png', 'customer', NULL, '2021-08-01 16:50:13', '2021-08-01 16:50:13'),
(8, 'Justine', 'Bayutas', 'Justine', '$2y$10$5mk/DXun18sMjGKNFTVHsethFQ.Jhm0i1LNdQXNG2fAi5Uj/ZMWZK', 'default.png', 'customer', NULL, '2021-08-01 17:00:31', '2021-08-01 17:00:31'),
(9, 'zcxvcxv', 'cvcvcvb', 'cvcvb', '$2y$10$sUXwMt7Zlq0dgWptzyZAhuExRSBjRjHLOqBPXuk2F9T231sheFs1S', 'default.png', 'customer', NULL, '2021-08-01 22:51:08', '2021-08-01 22:51:08'),
(10, 'hjm', 'hjmk', 'hjkhjkhjkh', '$2y$10$yUElqkLNht9ec7Fhvpvqs.fGAE/.5AzTQhY1IXa4M3eXz9kVx/QMe', 'default.png', 'customer', NULL, '2021-08-01 22:58:18', '2021-08-01 22:58:18'),
(11, 'sfgfdg', 'dfgdfg', 'ffgfvbvb', '$2y$10$n0CsA1b31o6tYvd.Iu4iMeoqfvInDD130YMloFvvFzm4TfNFXwBGq', 'default.png', 'customer', NULL, '2021-08-01 23:28:14', '2021-08-01 23:28:14'),
(12, 'Joseph', 'John', 'mags101', '$2y$10$NnjUPu5.iir3EsOgVD3yCu3/y.TSJQskMMPMF32rbPKETJeXfCbI2', 'default.png', 'customer', NULL, '2021-08-02 01:42:29', '2021-08-02 01:42:29'),
(13, 'lesliii', 'reyes', 'damsss', '$2y$10$Z9SfOy.JnOpyT9WGmJzwCOa63JyjTAqvgHv5yGxQ1gV9N8DlDtw0y', 'default.png', 'customer', NULL, '2021-08-02 03:32:09', '2021-08-02 03:32:09'),
(14, 'An', 'Telez', 'Ann123', '$2y$10$AMrrrsR84jToBZKBPObUX.gVGkkyStpNtDJHNR2TeqLnfkfbnHgd.', 'default.png', 'customer', NULL, '2021-08-02 03:57:53', '2021-08-02 03:57:53'),
(15, 'dfgfhg', 'dfgfg', 'zsfdvfb', '$2y$10$LVrTxxY0FwGGlBl3xsrzj.P1fIVG3ys/cWHr/9ADijAY2oWUebdBq', 'default.png', 'customer', NULL, '2021-08-02 04:28:56', '2021-08-02 04:28:56'),
(16, 'Ann', 'Teles', 'An138', '$2y$10$WOAnrQ1gsPYtDTf/tlt4je2kpoPEIhoYRIrgXVZAvzDWfb69zkMuq', 'default.png', 'customer', NULL, '2021-08-02 05:36:03', '2021-08-02 05:36:03');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
