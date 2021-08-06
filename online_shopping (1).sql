-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 02:20 PM
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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE `cart_product` (
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_product`
--

INSERT INTO `cart_product` (`cart_id`, `product_id`, `qty`) VALUES
(2, 9, 1),
(1, 9, 1),
(3, 4, 1),
(3, 3, 1),
(3, 7, 1),
(4, 4, 1),
(4, 3, 1),
(4, 5, 1),
(1, 9, 1),
(4, 7, 1),
(7, 12, 1),
(7, 3, 1),
(7, 4, 1),
(2, 3, 1),
(2, 7, 1),
(2, 12, 1),
(9, 3, 3);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_02_012240_create_products_table', 1),
(6, '2021_08_03_223647_create_carts_table', 1),
(7, '2021_08_03_224142_create_orders_table', 1),
(8, '2021_08_04_000624_create_cart_product_table', 1),
(9, '2021_08_04_000832_create_order_product_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address`, `phonenumber`, `total`, `status`, `created_at`, `updated_at`) VALUES
(4, 5, 'ASD', '12345678900', '7000', 'Approved', '2021-08-05 21:30:44', '2021-08-05 21:30:44'),
(5, 7, 'Talamban', '098762324', '5000', 'Pending', '2021-08-05 22:16:34', '2021-08-05 22:16:34'),
(6, 8, 'Cebu', '0324345', '16500', 'Pending', '2021-08-05 22:19:03', '2021-08-05 22:19:03'),
(7, 8, 'dfgdfg', '03454356', '5000', 'Approved', '2021-08-05 22:19:29', '2021-08-05 22:19:29'),
(8, 8, 'safsdf', '078996', '7500', 'Pending', '2021-08-05 22:19:45', '2021-08-05 22:19:45'),
(9, 8, 'sdfsdf', '0678567654', '6000', 'Approved', '2021-08-05 22:20:04', '2021-08-05 22:20:04'),
(10, 8, 'wdfe', '07698796', '5000', 'Pending', '2021-08-05 22:21:39', '2021-08-05 22:21:39'),
(11, 8, 'dfvgdfbgf', '0912121212121', '5000', 'Pending', '2021-08-05 22:21:54', '2021-08-05 22:21:54'),
(12, 6, 'Nasipit', '12345678900', '5000', 'Pending', '2021-08-05 22:37:20', '2021-08-05 22:37:20'),
(13, 6, 'Nasipit', '0912121212121', '5000', 'Pending', '2021-08-05 22:38:29', '2021-08-05 22:38:29'),
(14, 2, 'zxczscv', '23453', '3000', 'Pending', '2021-08-05 23:12:43', '2021-08-05 23:12:43'),
(15, 6, 'Punod', '325345', '5000', 'Pending', '2021-08-05 23:59:58', '2021-08-05 23:59:58'),
(16, 6, 'jsdfsdfvdv', '0986634234', '16000', 'Pending', '2021-08-06 00:03:09', '2021-08-06 00:03:09'),
(17, 9, 'Talamban', '0912121212121', '5000', 'Pending', '2021-08-06 00:07:05', '2021-08-06 00:07:05'),
(18, 7, 'Talamban', '0987653', '16500', 'Pending', '2021-08-06 01:33:43', '2021-08-06 01:33:43'),
(19, 11, 'Talamban', '0912121212121', '17000', 'Pending', '2021-08-06 03:54:14', '2021-08-06 03:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 9),
(4, 6),
(5, 12),
(6, 3),
(6, 4),
(6, 6),
(6, 7),
(6, 9),
(7, 3),
(8, 9),
(8, 7),
(9, 9),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 4),
(15, 3),
(16, 5),
(16, 12),
(16, 6),
(16, 9),
(17, 3),
(18, 9),
(18, 7),
(18, 6),
(18, 4),
(18, 3),
(19, 3),
(19, 5),
(19, 4);

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
(1, 'App\\Models\\User', 1, 'online_shopping', '79cd76598ae02d16fe1461aede6c7e13691b1a4e1add09662372aa93ad3f45ae', '[\"*\"]', NULL, '2021-08-05 15:33:39', '2021-08-05 15:33:39'),
(2, 'App\\Models\\User', 2, 'online_shopping', 'ec0b69e928aba45a3f5ca997b3a3cac16d625232fc744f1be27498215095aa43', '[\"*\"]', NULL, '2021-08-05 17:14:22', '2021-08-05 17:14:22'),
(3, 'App\\Models\\User', 2, 'online_shopping', 'fdb74b7a44f0103b4753218d5a371bccb4d37134d8b04e25dc05e2a21f441c3c', '[\"*\"]', NULL, '2021-08-05 17:22:39', '2021-08-05 17:22:39'),
(4, 'App\\Models\\User', 3, 'online_shopping', '411de007a026fb1ed063fd865889b2bbed2148ab06c0ce1b3708d49590264a79', '[\"*\"]', NULL, '2021-08-05 17:34:44', '2021-08-05 17:34:44'),
(5, 'App\\Models\\User', 1, 'online_shopping', 'cb21cfff0274b2910bd4875a2752a66e033a0c7e7a7387839372d9d51e194918', '[\"*\"]', NULL, '2021-08-05 17:55:23', '2021-08-05 17:55:23'),
(6, 'App\\Models\\User', 1, 'online_shopping', '694770b2b84da359d7962733bee366e94b53dcfacef1e723e14b076cc8080871', '[\"*\"]', NULL, '2021-08-05 17:57:04', '2021-08-05 17:57:04'),
(7, 'App\\Models\\User', 4, 'online_shopping', '6f54d7e74a2dbd5cb65edb1eb1d948ca24cc5c5b8ba323463412008958719617', '[\"*\"]', NULL, '2021-08-05 19:08:43', '2021-08-05 19:08:43'),
(8, 'App\\Models\\User', 5, 'online_shopping', 'c614ff554910f28e6192f8e8a4752eacd7f22ade1730164d665bfd036dec7d46', '[\"*\"]', NULL, '2021-08-05 20:38:08', '2021-08-05 20:38:08'),
(9, 'App\\Models\\User', 5, 'online_shopping', '4c939b11bb0db3c4c9508dcf88ddd3cf74fe3609feefaa71ec0c8fc9703e595d', '[\"*\"]', NULL, '2021-08-05 20:39:07', '2021-08-05 20:39:07'),
(10, 'App\\Models\\User', 1, 'online_shopping', '677461e3853cc7ded8410222f1d39dff8cd4ee8a67447772773e15daee77c169', '[\"*\"]', NULL, '2021-08-05 21:06:09', '2021-08-05 21:06:09'),
(11, 'App\\Models\\User', 1, 'online_shopping', '23a51ebb638c9904f0c0e27dd7c947d6f63a8b31f78e82478625b349018c566b', '[\"*\"]', NULL, '2021-08-05 21:08:01', '2021-08-05 21:08:01'),
(12, 'App\\Models\\User', 6, 'online_shopping', '919594d6a4b8fa0d0825a25b2874b8bf767f7c5b4ba887a4f099f25dfa34dd8e', '[\"*\"]', NULL, '2021-08-05 21:13:09', '2021-08-05 21:13:09'),
(13, 'App\\Models\\User', 6, 'online_shopping', '4672dbb3a286bae56a66f8cde9f473dbd8e74497e70f80280700b031f785d74e', '[\"*\"]', NULL, '2021-08-05 21:14:02', '2021-08-05 21:14:02'),
(14, 'App\\Models\\User', 6, 'online_shopping', '99c7739d52aa9e5adb39f477145e94e351ab85dd3a45d42ec7719b09ef8d66e4', '[\"*\"]', NULL, '2021-08-05 21:16:54', '2021-08-05 21:16:54'),
(15, 'App\\Models\\User', 7, 'online_shopping', 'e65429e8866fc9013a9eb2ef104a1eef906bc0421a05e3a40f7a11ac321e324d', '[\"*\"]', NULL, '2021-08-05 22:08:17', '2021-08-05 22:08:17'),
(16, 'App\\Models\\User', 7, 'online_shopping', '19b5d989c3e0fdf07f0276c0d9c8195ace6dbdbccfffea0067a382766097c9a6', '[\"*\"]', NULL, '2021-08-05 22:09:18', '2021-08-05 22:09:18'),
(17, 'App\\Models\\User', 8, 'online_shopping', 'e354c9eeef7b00cc9538e16d187997c7f2b38a172c85fe54ca9b47a32b2d613c', '[\"*\"]', NULL, '2021-08-05 22:18:30', '2021-08-05 22:18:30'),
(18, 'App\\Models\\User', 6, 'online_shopping', '02e5084daca44cf4da26caefb78d59675a4d62c6c2676ab49a337f91e2104a72', '[\"*\"]', NULL, '2021-08-05 22:31:09', '2021-08-05 22:31:09'),
(19, 'App\\Models\\User', 2, 'online_shopping', '93ce63add81472267ef6aae70e2aecb40a4c4fc6eed75d0d50931720bb2e58b9', '[\"*\"]', NULL, '2021-08-05 22:39:42', '2021-08-05 22:39:42'),
(20, 'App\\Models\\User', 6, 'online_shopping', '7d605d4411981c6de3cfd23ca3ddfb84351105fdf38d21cf10cb6a6fbe610afc', '[\"*\"]', NULL, '2021-08-05 23:32:29', '2021-08-05 23:32:29'),
(21, 'App\\Models\\User', 7, 'online_shopping', 'fe8bec5071f6886bc11ffe46323c9821261aa4e26990c7fbd22e9bc8cf2a16b3', '[\"*\"]', NULL, '2021-08-06 00:04:55', '2021-08-06 00:04:55'),
(22, 'App\\Models\\User', 9, 'online_shopping', '42580cbc7e6855c5ebcd9c261b0151d9137a9edb901bda4e6323758bb2cce0f7', '[\"*\"]', NULL, '2021-08-06 00:05:25', '2021-08-06 00:05:25'),
(23, 'App\\Models\\User', 7, 'online_shopping', 'a97bb1618187e42e5ce06ef8578a8d8593f3ef3123a763a21bd6a0765040f2ed', '[\"*\"]', NULL, '2021-08-06 00:07:32', '2021-08-06 00:07:32'),
(24, 'App\\Models\\User', 10, 'online_shopping', '0f2587f9471890536411b83c2b8c437e8db61d00f9b8bf5538b0a49f2b56787f', '[\"*\"]', NULL, '2021-08-06 01:35:30', '2021-08-06 01:35:30'),
(25, 'App\\Models\\User', 11, 'online_shopping', '0f6b8995b5c64db683a10821c08610b19e6369a0c051b30865dba692e380a677', '[\"*\"]', NULL, '2021-08-06 02:33:25', '2021-08-06 02:33:25'),
(26, 'App\\Models\\User', 7, 'online_shopping', '26c3381e70e4b4af37f4a44b5f5487b93bf33792b37de0cff57d9c5bcbb6d5a5', '[\"*\"]', NULL, '2021-08-06 02:34:22', '2021-08-06 02:34:22'),
(27, 'App\\Models\\User', 11, 'online_shopping', 'c4e9f5db0f9e8ff88860e6ed6f27fe377945ef33760fc655317930808d23e09e', '[\"*\"]', NULL, '2021-08-06 02:42:37', '2021-08-06 02:42:37'),
(28, 'App\\Models\\User', 7, 'online_shopping', 'efa12848c06e23959b245a197f03f9079c71d71a5d0e295644cd5c6ecc44fcc4', '[\"*\"]', NULL, '2021-08-06 02:49:54', '2021-08-06 02:49:54'),
(29, 'App\\Models\\User', 7, 'online_shopping', '3049d2cb89e052daaa31175f54a84da55e60c20e26ad27feadfae119cb2fa569', '[\"*\"]', NULL, '2021-08-06 03:52:20', '2021-08-06 03:52:20'),
(30, 'App\\Models\\User', 11, 'online_shopping', '9e38e42d998a46649d1ef9450dd834898f6aba30cb91bac92a81ed32b019c09b', '[\"*\"]', NULL, '2021-08-06 03:53:27', '2021-08-06 03:53:27');

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
(3, 'BB SNEAKERS', '5000', 'It\'s an objectively sleek shoe, more importantly though, it\'s quite comfortable. ', 'https://cms.qz.com/wp-content/uploads/2019/01/Sp19_BB_Nike_Adapt_20181218_NIKE0538_Detail5_original_colorcorrected-e1547588975586.jpeg?quality=75&strip=all&w=1200&h=900&crop=1', '2021-08-05 19:14:01', '2021-08-05 19:14:01'),
(4, 'HyperAdapt', '3000', 'The Nike HyperAdapt 1.0 is the first fully-functioning athletic shoe that electronically adjusts to the contours of your foot .', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrG_QxuCj8vZjFCNLIu4yDJuNJaSwjqCJFFrhTqO1V4r_vieEaY7AZt6mdbMvKEpyhm0Q&usqp=CAU', '2021-08-05 19:21:35', '2021-08-05 19:21:35'),
(5, 'Auto-Laced', '4000', 'A breakthrough lacing system that electronically adjusts to the shape of your foot.', 'https://techcrunch.com/wp-content/uploads/2019/01/Nike-Adapt-BB.jpeg', '2021-08-05 19:26:07', '2021-08-05 19:26:07'),
(6, 'Running Shoes', '1000', 'Its perfect for the runner who wants a very versatile running shoe.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDi1UVhDL-fLoiIT4NeSosPIXSTxojGV8OMMX3pG6OwcZJ9jbdyOtFzPl6LR8-tcxlMN0&usqp=CAU', '2021-08-05 19:28:23', '2021-08-05 19:28:23'),
(7, 'Air Force', '1500', 'Designed by Bruce Kilgore and introduced in 1982, the Air Force 1 was the first ever basketball shoe to feature Nike Air.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsp5C1PL0d9HsY9enulv9GFVVTQ40sY99uRsFo59XVmJAqDUVY873UJs4WNBPJFRy966A&usqp=CAU', '2021-08-05 19:30:21', '2021-08-05 19:30:21'),
(8, 'Red Sneakers', '500', 'Red shoes are a stand-in for the liberation of women\'s desires. When it comes to the color red, we associate it with passion.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7l7AnnRRUI0QGZCrUGMcgF8PcZCjEwmLAnO5_HzitzrnMnpSFrJXMHTde_4MbicwCnLY&usqp=CAU', '2021-08-05 19:37:17', '2021-08-05 19:37:17'),
(9, 'Nike Air Max', '6000', 'Nike Air Max Shoes with Reliable, Lightweight Cushioning. Choose Your Favourite Style. Experience The Air Max Legacy.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGqyerHBhaonymeUSW0NWOZ2omd7q-YCMuvw&usqp=CAU', '2021-08-05 19:49:44', '2021-08-05 19:49:44'),
(12, 'Douzo Sushi', '5000', 'Douzo Sushi)Huang and his senior management team were able to raise the $270,000 from dining customers, to-go orders and gift card sales from all .', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4OucoXRXaTm0jQJit2JDLlLxlxeFspWM-PX3UPcV7f37eTmy1GJ8LPy8e-Yug4hT0cd0&usqp=CAU', '2021-08-05 19:56:35', '2021-08-05 19:56:35');

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
(1, 'lorem', 'lorem', 'lorem', '$2y$10$37d8dTB6bTsfqq7F0Jdmm.kFl4Upi2IXCGMDsl640v4zsD7K/zQkq', 'default.png', 'customer', NULL, '2021-08-05 17:34:36', '2021-08-05 17:34:36'),
(2, 'lesh', 'reyes', 'leshyang', '$2y$10$dBSZgjP5kRUVKyoP0QZ.D.4oVDYozH8Y1rP7mA/Y6p/WejYl7ps9.', 'default.png', 'admin', NULL, '2021-08-05 17:13:45', '2021-08-05 17:13:45'),
(4, 'Emelisa', 'Rafols', 'Julie24', '$2y$10$f4Ka8OgvJEO/I5EZGKqI8.9LJNZzY0Uj0g131H0mlG8wWcoo67tr2', 'default.png', 'admin', NULL, '2021-08-05 19:08:14', '2021-08-05 19:08:14'),
(5, 'telez', 'kopio', 'pandesal', '$2y$10$znZ/b35IJhocAhJBNNQoAeMG7mYWN90g20tVnIHLS8q0FCNdZGLoq', 'default.png', 'customer', NULL, '2021-08-05 20:37:48', '2021-08-05 20:37:48'),
(6, 'trial', 'trial', 'trial', '$2y$10$NiHrE0z9t.XautIkuxf.2uHzkaX9A3r4eUFG8xeHsM1PKz/YSU1Ja', 'default.png', 'customer', NULL, '2021-08-05 21:12:50', '2021-08-05 21:12:50'),
(7, 'Mery-an', 'Telez', 'Ann...', '$2y$10$mCJIWHlNLWzoQnXTF.5kBeZKgC3wC7dPIXrDmlcAZgyWVwWy2n2oe', 'default.png', 'admin', NULL, '2021-08-05 22:07:57', '2021-08-05 22:07:57'),
(8, 'Justine', 'Ambrad', 'Justine', '$2y$10$JqqgCk35IXMWwRfyTiqZeeEZGrB7kpcnDcN.1MST4Uq/NZUg7c25a', 'default.png', 'customer', NULL, '2021-08-05 22:18:12', '2021-08-05 22:18:12'),
(9, 'Marie', 'Telez', 'Telez', '$2y$10$P3qX/wdkP/vWbSuS1jU70e6ZUA9ycL6eexvVTXXOEru7uLgVh9Aeu', 'default.png', 'customer', NULL, '2021-08-06 00:04:39', '2021-08-06 00:04:39'),
(10, 'Emelisa', 'rafols', 'rafols24', '$2y$10$aeOh.Rz0D4dri/SNr7RF3OPsBxf5gY.kXmpabtIxm4o0Q2wDlSzU.', 'default.png', 'customer', NULL, '2021-08-06 01:35:13', '2021-08-06 01:35:13'),
(11, 'Emelisa', 'Rafols', 'emelisa24', '$2y$10$WnVxjZHpIiUT1bENAQ6EJOOqdNpei1QRWH6ZZp0TM9n528Hhy1ELm', 'default.png', 'customer', NULL, '2021-08-06 02:32:36', '2021-08-06 02:32:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
