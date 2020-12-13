-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 05:25 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'python', '2020-08-15 09:47:21', '2020-08-15 09:47:21'),
(2, 'PHP', '2020-08-15 09:47:38', '2020-08-15 09:47:38'),
(3, 'Java', '2020-08-15 09:48:14', '2020-08-15 09:48:14'),
(4, 'C++', '2020-08-15 09:48:18', '2020-08-15 09:48:18'),
(5, 'JavaScript', '2020-08-15 10:30:50', '2020-08-15 10:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2020_08_02_180730_create_categories_table', 1),
(20, '2020_08_13_181948_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `author`, `image`, `description`, `created_at`, `updated_at`) VALUES
(5, 2, 'New Post', 'Sohag', '1597685844test.php.jpg', 'This is the New Post', '2020-08-17 11:37:24', '2020-08-17 11:37:24'),
(6, 4, 'Top 10 Best Dummy Content', 'Md Al Mamun Sohag', '1597771640Screenshot_2017-05-04-18-16-01.png', 'As a WordPress developer, whenever you build a new theme, plugin or even if you are testing out new features of WordPress that you might not be familiar with. There’s one task that get’s extremely repetitive, cumbersome and mundane.\r\n\r\nYou will always need to create some custom dummy data to test whether your plugin is working as expected, and as developers ourselves we have had this problem quite a lot. Thankfully, there are easy ways to solve it.\r\n\r\nThe usual way people tend to do this is either hire someone on Fiverr, to create all this dummy text or as a WordPress developer you’ll need to perform the task of filling up an empty theme with dummy content yourself.\r\n\r\nOur goal with this post is to help you to alleviate this time-consuming aspect of the development process by covering a list of plugins that help you achieve this goal in just a matter of seconds.\r\n\r\nNot only does the test data have to be comprehensive enough to capture all the possible post scenarios, it has to be as close enough as possible to real world data. This way you can effectively test the features you are building and luckily, these plugins do just that.', '2020-08-18 11:27:20', '2020-08-18 11:27:20'),
(7, 5, 'FakerPress', 'Sujon', '1597772116Screenshot_2017-04-19-22-08-28.png', 'With over 900 downloads and a consistent five start rating. FakerPress is currently the leading and a very popular test data generation plugin which provides a clean way to generate fake and dummy content to your WordPress which is perfect for developers who need testing.', '2020-08-18 11:35:16', '2020-08-18 11:35:16'),
(8, 2, 'WP Dummy Content', 'Oredhi', '1597772175Screenshot_2017-06-04-20-24-59.png', 'The next of the list is WP Dummy Content. Whilst not as often updated as FakerPress, it is still a very good WordPress Plugin to generate dummy content on your blog. It automatically creates posts, pages etc with single or multiple paragraphs of text. You can also insert unordered lists, shortcodes, block-quotes, links etc with just a click.', '2020-08-18 11:36:15', '2020-08-18 11:36:15'),
(9, 3, 'Better Lorem Ipsum Generator', 'Emma', '1597772223Screenshot_20170306-142157.png', 'Better Lorem Ipsum Generator is yet another dummy content generator for WordPress. This plugin has some additional features when compared to the rest above, the most important ones are its ability to generate custom taxonomies and custom post types automatically. Install this plugin and generate posts, pages, comments, tags, categories etc with ease.', '2020-08-18 11:37:03', '2020-08-18 11:37:03'),
(10, 4, 'Lorem Ipsum Post Generator', 'Taslima', '1597772262Screenshot_20170307-090440.png', 'Lorem Ipsum Post Generator is a simple plugin that generates posts and comments automatically. It’s also super easy to use, All you need to do is to just specify the number of posts and number of comments per post, rest of the job will be done by this plugin. One thing missing in this plugin is that it doesn’t have the ability to generate pages, categories, tags etc.', '2020-08-18 11:37:42', '2020-08-18 11:37:42'),
(11, 4, 'WP Lorem Ipsum Generator', 'Tanin', '1597772292Screenshot_20170307-090559.png', 'Just as the name suggests, this plugin helps to add lorem ipsum text to any post on your blog. A button will be displayed in the toolbar of post editor (WYSIWYG editor), which helps to insert dummy text inside the post. Apart from generating dummy text, it doesn’t have any further options. It simplicity makes it useful when you need to go a little testing without generating a lot of random posts.', '2020-08-18 11:38:12', '2020-08-18 11:38:12'),
(12, 5, 'WP Lipsum', 'Tamim', '1597772359Screenshot_20170307-093820.png', 'WP Lipsum is yet another dummy data generator WordPress plugin, it allows you to add dummy text using Shortcodes and Template tags. This is a great plugin for generating dummy text on your WordPress Blog with ease. We recommend trying this awesome plugin when you need to do some light testing', '2020-08-18 11:39:19', '2020-08-18 11:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
