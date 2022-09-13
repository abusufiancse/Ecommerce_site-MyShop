-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 30, 2022 at 07:43 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_qty`, `created_at`, `updated_at`) VALUES
(6, '1', '1', '1', '2022-07-30 09:05:32', '2022-07-30 09:05:32'),
(7, '1', '5', '2', '2022-07-30 09:07:17', '2022-07-30 13:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `popular` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'men\'s fashion', 'men\'s fashion', 'All kind\'s of men fashionable products 2022', 0, 1, '1658815841.jpg', 'men\'s fashion', 'men\'s fashion, fashionable products', 'men\'s fashion, fashionable products', '2022-07-25 23:17:42', '2022-07-26 03:44:06'),
(2, 'women\'s fashion', 'women\'s fashion', 'All kind\'s of women fashionable products', 0, 1, '1658813572.jpg', 'women\'s fashion, fashionable products', 'women\'s fashion, fashionable products', 'women\'s fashion, fashionable products', '2022-07-25 23:32:52', '2022-07-26 01:43:33'),
(3, 'Computer-accessories', 'Computer-accessories', 'All kind\'s of Electronics & Computer-accessories', 0, 1, '1658813917.jpg', 'Electronics & Computer-accessories', 'Electronics & Computer-accessories', 'Electronics & Computer-accessories', '2022-07-25 23:38:37', '2022-07-26 01:43:41'),
(5, 'Health & Beauty', 'Health & Beauty', 'Buy the perfect health & beauty products.', 0, 1, '1658815176.jpg', 'Health & Beauty', 'Health & Beauty', 'Health & Beauty', '2022-07-25 23:59:36', '2022-07-26 01:44:15'),
(6, 'Laptop Bags & Cases', 'Laptop Bags & Cases', 'Latest Laptop Bags & Cases 2022', 0, 1, '1658816100.jpg', 'Laptop Bags & Cases', 'Laptop Bags & Cases', 'Laptop Bags & Cases', '2022-07-26 00:15:00', '2022-07-26 01:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_21_170951_create_categories_table', 1),
(6, '2022_07_22_123057_create_products_table', 1),
(7, '2022_07_23_193136_create_carts_table', 1),
(8, '2022_07_25_070647_alter_users_table', 1),
(9, '2022_07_25_081200_create_orders_table', 1),
(10, '2022_07_25_081909_create_order_items_table', 1),
(11, '2022_07_25_165353_alter_orders_table', 1),
(12, '2022_07_26_184439_create_wishlists_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '2', 'user1', 'user1', 'user1@gmail.com', '01793862233', 'Mohakhali', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1212', '4120', 0, NULL, 'sobhan245', '2022-07-27 12:11:38', '2022-07-27 12:11:38'),
(2, '1', 'admin', 'admin', 'admin@gmail.com', '01793865052', 'Uttara', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1230', '1140', 0, NULL, 'sobhan688', '2022-07-30 13:33:55', '2022-07-30 13:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '8', '1', '2200', '2022-07-27 12:11:39', '2022-07-27 12:11:39'),
(2, '1', '3', '1', '1350', '2022-07-27 12:11:39', '2022-07-27 12:11:39'),
(3, '1', '1', '1', '570', '2022-07-27 12:11:39', '2022-07-27 12:11:39'),
(4, '2', '1', '1', '570', '2022-07-30 13:33:56', '2022-07-30 13:33:56'),
(5, '2', '5', '2', '570', '2022-07-30 13:33:56', '2022-07-30 13:33:56');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Black Cotton polo for men', 'Black Cotton polo for men', 'Product Type:Polo-Shirt\r\nMain Material: Cotton\r\nStylish and Polo\r\nComfortable', 'Product Type:Polo-Shirt\r\nMain Material: Cotton\r\nStylish and Polo\r\nComfortable', '999', '570', '1658817127.jpg', '23', '10', 0, 1, 'Black Cotton polo for men', 'Black Cotton polo for men', 'Black Cotton polo for men', '2022-07-26 00:32:07', '2022-07-30 13:33:56'),
(2, 1, 'Four Brother Fashion Polo', 'Four Brother Fashion Special Polo For Men', 'Â· Product Type: Polo T-shirt\r\nÂ· Material: Cotton\r\nÂ· Gender: Men\r\nÂ· Stylish Design\r\nÂ· High Quality Cotton Fabric\r\nÂ· Fabric: 100% Cotton', 'Â· Product Type: Polo T-shirt\r\nÂ· Material: Cotton\r\nÂ· Gender: Men\r\nÂ· Stylish Design\r\nÂ· High Quality Cotton Fabric\r\nÂ· Fabric: 100% Cotton\r\nÂ· Color Guaranteed\r\nÂ· 100% QC Product', '1290', '1090', '1658817292.jpg', '25', '12', 0, 1, 'Four Brother Fashion Special Polo For Men', 'Four Brother Fashion Special Polo For Men', 'Four Brother Fashion Special Polo For Men', '2022-07-26 00:34:52', '2022-07-26 00:35:47'),
(3, 1, 'Red cotton pk stylish polo', 'Red cotton pk stylish polo for men', 'Product Type:Polo-Shirt\r\nMain Material: Cotton\r\nStylish and Polo', 'Product Type:Polo-Shirt\r\nMain Material: Cotton\r\nStylish and Polo', '1550', '1350', '1658817484.jpg', '29', '12', 0, 1, 'Product Type:Polo-Shirt\r\nMain Material: Cotton\r\nStylish and Polo', 'Product Type:Polo-Shirt\r\nMain Material: Cotton\r\nStylish and Polo', 'Product Type:Polo-Shirt\r\nMain Material: Cotton\r\nStylish and Polo', '2022-07-26 00:38:04', '2022-07-27 12:11:39'),
(4, 1, 'Premium Navy Blue Polo', 'Premium Quality Navy Blue Polo', 'Shop Name: iCon MarT BD\r\nProduct Type: Polo T-shirt\r\nColor: Navy Blue ,\r\nMain Material: Cotton', 'Shop Name: iCon MarT BD\r\nProduct Type: Polo T-shirt\r\nColor: Navy Blue ,\r\nMain Material: Cotton', '1570', '1150', '1658817744.jpg', '30', '23', 0, 1, 'Men`s Premium Quality Navy Blue Polo', 'Men`s Premium Quality Navy Blue Polo', 'Men`s Premium Quality Navy Blue Polo', '2022-07-26 00:42:24', '2022-07-30 11:07:06'),
(5, 1, 'White Color  T-Shirt', 'White Color T-Shirt', 'T-shirt for men and women.\r\n100% Color & Print Guarantee Product.\r\nType: Round nack T-shirt.\r\nMain Material: Taiwan CVC\r\nGender: Men\r\nStylish and Fashionable', 'T-shirt for men and women.\r\n100% Color & Print Guarantee Product.\r\nType: Round nack T-shirt.\r\nMain Material: Taiwan CVC\r\nGender: Men\r\nStylish and Fashionable', '850', '570', '1658817974.jpg', '23', '12', 0, 1, 'White Color T-Shirt for Men', 'White Color T-Shirt for Men', 'White Color T-Shirt for Men', '2022-07-26 00:46:14', '2022-07-30 13:33:56'),
(6, 1, 'Stylish Long Sleeve Shirts', 'Stylish Long Sleeve Formal Shirts', 'Brand : Xara Lifestyle\r\nProduct type : Export Quality New Stylish Long Sleeve Formal Shirts For Men\r\nGeander : Men\r\nMaterial : Cotton\r\nColour : Same As Picture', 'Brand : Xara Lifestyle\r\nProduct type : Export Quality New Stylish Long Sleeve Formal Shirts For Men\r\nGeander : Men\r\nMaterial : Cotton\r\nColour : Same As Picture', '2280', '1950', '1658818192.jpg', '25', '12', 0, 1, 'Stylish Long Sleeve Formal Shirts', 'Stylish Long Sleeve Formal Shirts', 'Stylish Long Sleeve Formal Shirts', '2022-07-26 00:49:52', '2022-07-26 00:51:05'),
(7, 2, 'Stylish One Pis', 'Stylish One Pis', 'Color: Same as Picture·\r\nMain Material: lily cotton\r\nKameez:Lily Cotton·\r\nGender: Women· Rich fabric·\r\nDesigned according to latest patterns·', 'Color: Same as Picture·\r\nMain Material: lily cotton\r\nKameez:Lily Cotton·\r\nGender: Women· Rich fabric·\r\nDesigned according to latest patterns·', '1250', '950', '1658820314.jpg', '25', '12', 0, 1, 'Stylish One Pis For Women', 'Stylish One Pis For Women', 'Stylish One Pis For Women', '2022-07-26 01:25:14', '2022-07-26 01:26:02'),
(8, 2, '1piece Long Kurti', '1piece Long Kurti', 'Exclusive Designed Gown 1piece Long Kurti', 'Exclusive Designed Gown 1piece Long Kurti Different Koti, Gown Long Kurti for Stylish Women / Girls', '2500', '2200', '1658820631.jpg', '24', '12', 0, 1, '1piece Long Kurti', '1piece Long Kurti', '1piece Long Kurti', '2022-07-26 01:30:31', '2022-07-27 12:11:39'),
(9, 2, 'Readymade Stylish Koti', 'Readymade Stylish Koti', 'Brand: ShadaMon Shop\r\nProduct Type: Kurti\r\nProduct Size: Free Size,\r\nLong: 42 Inches', 'Brand: ShadaMon Shop\r\nProduct Type: Kurti\r\nProduct Size: Free Size,\r\nLong: 42 Inches', '1850', '1590', '1658820767.jpg', '25', '12', 0, 1, 'Readymade Stylish Koti', 'Readymade Stylish Koti', 'Readymade Stylish Koti', '2022-07-26 01:32:47', '2022-07-26 01:32:47'),
(10, 2, 'Unstitched Jamdani katan', 'Unstitched Jamdani katan', 'Type: Unstitched 2 piece\r\nColor: As like pic\r\nMaterials : katan\r\nOrna\r\nKameez\r\n100% same as pic\r\nEasy to wash', 'Type: Unstitched 2 piece\r\nColor: As like pic\r\nMaterials : katan\r\nOrna\r\nKameez\r\n100% same as pic\r\nEasy to wash', '3590', '3180', '1658820876.jpg', '25', '12', 0, 1, 'Unstitched Jamdani katan', 'Unstitched Jamdani katan', 'Unstitched Jamdani katan', '2022-07-26 01:34:36', '2022-07-26 01:34:36'),
(11, 2, 'Georgette Kameez', 'Georgette Kameez', 'Product Type : Georgette Emboridery Kameez\r\nBody : indian Weightless Georgette\r\nDesign Work : Embroidery\r\nGender : Women\r\nButterfly Salwar\r\nShifon Orna\r\nSize: Free Size.', 'Product Type : Georgette Emboridery Kameez\r\nBody : indian Weightless Georgette\r\nDesign Work : Embroidery\r\nGender : Women\r\nButterfly Salwar\r\nShifon Orna\r\nSize: Free Size.', '4100', '3500', '1658820982.jpg', '28', '12', 0, 1, 'Unstitched Georgette Kameez', 'Unstitched Georgette Kameez', 'Unstitched Georgette Kameez', '2022-07-26 01:36:22', '2022-07-30 11:09:10'),
(12, 2, 'New Kurti ButterFly', 'New Kurti ButterFly', 'Brand: ShadaMon Shop\r\nProduct Type: Koti Kurti\r\nMaterial: Linen\r\nDress Code:BT\r\nBody: 40/44 Inches\r\nLong: 42 Inches', 'Brand: ShadaMon Shop\r\nProduct Type: Koti Kurti\r\nMaterial: Linen\r\nDress Code:BT\r\nBody: 40/44 Inches\r\nLong: 42 Inches', '1840', '1590', '1658821117.jpg', '30', '12', 0, 1, 'New Kurti ButterFly', 'New Kurti ButterFly', 'New Kurti ButterFly', '2022-07-26 01:38:37', '2022-07-26 01:38:37'),
(13, 5, 'Nivea Body Lotion 400 ml', 'Nivea Body Lotion 400 ml', 'Brand Name: Nivea\r\nProduct Type: Body Lotion', 'Brand Name: Nivea\r\nProduct Type: Body Lotion', '490', '390', '1658821370.jpg', '22', '12', 0, 1, 'Nivea Body Lotion 400 ml', 'Nivea Body Lotion 400 ml', 'Nivea Body Lotion 400 ml', '2022-07-26 01:42:50', '2022-07-26 01:42:50'),
(14, 5, 'Baby Milk Lotion', 'Baby Milk Lotion', 'Johnson\'s Baby Milk + Rice Lotion 500ml (Malaysia)', 'Johnson\'s Baby Milk + Rice Lotion 500ml (Malaysia)', '890', '750', '1658821669.jpg', '24', '12', 0, 1, 'Johnson\'s Baby Milk Lotion 500ml', 'Johnson\'s Baby Milk Lotion 500ml', 'Johnson\'s Baby Milk Lotion 500ml', '2022-07-26 01:47:49', '2022-07-30 11:10:15'),
(15, 5, 'Strawberry Body Yogurt', 'Strawberry Body Yogurt', 'The Body Shop\r\nStrawberry Body Yogurt 200ml', 'The Body Shop\r\nStrawberry Body Yogurt', '1260', '1090', '1658821776.jpg', '35', '12', 0, 1, 'Strawberry Body Yogurt 200ml', 'Strawberry Body Yogurt 200ml', 'Strawberry Body Yogurt 200ml', '2022-07-26 01:49:36', '2022-07-30 11:08:30'),
(16, 5, 'Rosemary Essential Oil-10ml', 'Rosemary Essential Oil-10ml', 'Product Type: Essential Oil\r\nPremium Therapeutic Grade', 'Product Type: Essential Oil\r\nPremium Therapeutic Grade\r\nCapacity: 10ml\r\nHelps to Relax', '800', '600', '1658821896.jpg', '24', '12', 0, 1, 'Rosemary Essential Oil-10ml', 'Rosemary Essential Oil-10ml', 'Rosemary Essential Oil-10ml', '2022-07-26 01:51:36', '2022-07-26 01:51:36'),
(17, 5, 'LaOliva Olive Oil 250ml', 'LaOliva Olive Oil 250ml (Hair & Skin)', 'Containes Vitamin -E\r\nNatural Anti-Oxident\r\nProtect Skin from UV Rays\r\nSkin Moisturizer', 'Containes Vitamin -E\r\nNatural Anti-Oxident\r\nProtect Skin from UV Rays\r\nSkin Moisturizer', '780', '580', '1658822000.png', '25', '12', 0, 1, 'LaOliva Olive Oil 250ml (Hair & Skin)', 'LaOliva Olive Oil 250ml (Hair & Skin)', 'LaOliva Olive Oil 250ml (Hair & Skin)', '2022-07-26 01:53:20', '2022-07-26 01:53:20'),
(18, 3, 'HP 15s-du3039TX Intel Core i5', 'HP 15s-du3039TX Intel Core i5', 'RAM 8GB\r\nGeneration 11th (Intel)\r\nProcessor Type Intel Core i5\r\nGraphics Memory 2GB\r\nDisplay Size (Inch) 15.6', 'RAM 8GB\r\nGeneration 11th (Intel)\r\nProcessor Type Intel Core i5\r\nGraphics Memory 2GB\r\nDisplay Size (Inch) 15.6', '56990', '54850', '1658822281.jpg', '25', '12', 0, 1, 'HP 15s-du3039TX Intel Core i5', 'HP 15s-du3039TX Intel Core i5', 'HP 15s-du3039TX Intel Core i5', '2022-07-26 01:58:01', '2022-07-26 01:58:01'),
(19, 3, 'Black Gaming Headphone', 'Black Gaming Headphone', 'Logitech G Pro Black Gaming Headphone #981-000814', 'Logitech G PRO Gaming Headset is the outcome of close collaboration with many pro gamers across genres. Hear every shot, ability, footstep with the positional and spatial awareness pros need. Stay connected to your team with crystal-clear voice communications. PRO Headset is designed with pros and engineered to win. Built to last with a durable aluminum fork and steel headband. Soft memory foam ear pads with passive noise-canceling leatherette offer supreme comfort for marathon gaming sessions.', '1580', '1390', '1658822405.jpg', '30', '12', 0, 1, 'Black Gaming Headphone', 'Black Gaming Headphone', 'Black Gaming Headphone', '2022-07-26 02:00:05', '2022-07-26 02:00:05'),
(20, 3, 'Gaming Keyboard', 'Gaming Keyboard', 'Skyloong SK61 Black Hot Swap Wired (Red Switch) RGB Mechanical Gaming Keyboard', 'Type Mechanical Gaming Keyboard\r\nLighting Yes\r\nInterface USB\r\nMouse, Touchpad Keyboard only\r\nMechanical (Key) Yes', '780', '650', '1658822535.jpg', '23', '12', 0, 1, 'Gaming Keyboard', 'Gaming Keyboard', 'Gaming Keyboard', '2022-07-26 02:02:15', '2022-07-26 02:02:15'),
(21, 3, 'Black Liquid CPU Cooler', 'Black Liquid CPU Cooler', 'Corsair iCUE H150i ELITE CAPELLIX Black Liquid CPU Cooler #CW-9060048-WW (12th Gen Supported)', 'Fan Speed 2400 RPM\r\nLED Color RGB\r\nCooler Type Liquid CPU Cooler\r\nSupported Socket Intel 1700, 1200, 1150, 1151, 1155, 1156, 1366, 2011, 2066 AMD AM4, AM3, AM2, sTRX4, sTR4, Core i9, i7, i5, i3, Pentium, Celeron, Ryzen Threadripper, Ryzen, Phenom II, Athlon II, FX, A-Series, Opteron, Sempron, Athlon 64', '1550', '1350', '1658822772.jpg', '12', '12', 0, 1, 'Black Liquid CPU Cooler', 'Black Liquid CPU Cooler', 'Black Liquid CPU Cooler', '2022-07-26 02:06:12', '2022-07-26 02:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lname`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `zip`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$G9sIEOUQwnqLXViVw6Kv/.Sxb/scC3UcmAHq4WkhD3ZGIGFV3H4LC', 1, NULL, '2022-07-25 22:42:07', '2022-07-25 22:42:07', '01793865052', 'Uttara', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1230'),
(2, 'user1', 'user1', 'user1@gmail.com', NULL, '$2y$10$REuPnWmoKlCHKWJ43RprV.wQxzl3h5xr0EBNn82KY.XJAKjXkoAYq', 0, NULL, '2022-07-25 22:54:09', '2022-07-25 22:54:09', '01793862233', 'Mohakhali', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1212'),
(3, 'user2', 'user2', 'user2@gmail.com', NULL, '$2y$10$LMiWgV4t5QcZ/VFVlWK7rOOgeVlntwhG.MvGfT3tCq/aUkjH.35qe', 0, NULL, '2022-07-25 22:55:43', '2022-07-25 22:55:43', '01796545052', 'Mirpur', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1216'),
(4, 'user3', 'user3', 'user3@gmail.com', NULL, '$2y$10$/twFMEL9uvfoO8KZh.jMduKszb7DaOXh3tUro3Vuo8HtdssVtXq1e', 0, NULL, '2022-07-25 22:56:03', '2022-07-25 22:56:03', '01721865052', 'Nikunja', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1231');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2022-07-26 13:18:25', '2022-07-26 13:18:25'),
(3, '1', '19', '2022-07-30 09:16:17', '2022-07-30 09:16:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
