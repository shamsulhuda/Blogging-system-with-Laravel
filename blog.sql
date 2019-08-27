-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2019 at 09:10 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programming', '2019-02-12 03:25:09', '2019-05-11 13:21:54'),
(2, 'career', '2019-02-12 03:25:16', '2019-02-12 03:25:16'),
(3, 'Laravel', '2019-02-12 03:25:27', '2019-02-12 03:25:27'),
(4, 'WordPress', '2019-02-12 03:25:42', '2019-05-11 13:21:39'),
(5, 'Tutorials', '2019-02-12 03:25:55', '2019-02-12 03:25:55');

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
(3, '2018_10_11_194105_create_posts_table', 1),
(4, '2018_10_11_195027_create_categories_table', 1),
(5, '2018_11_01_133828_create_tags_table', 1),
(6, '2018_11_01_134805_create_post_tag_table', 1),
(7, '2018_11_04_042346_create_profiles_table', 1),
(8, '2018_11_11_155629_create_settings_table', 1),
(9, '2018_11_15_190316_insert_user_id_column', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(7, 'WordPress and WordPress plugins | WordPress', 'wordpress-and-wordpress-plugins-wordpress', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel quam odio. Aenean cursus pulvinar facilisis. Sed non volutpat lacus, id laoreet leo. Nam euismod eros eget urna ornare, ut venenatis nunc gravida. Cras eu gravida nisi. Nullam euismod orci a neque sodales, eu ullamcorper felis congue. Quisque neque ligula, tincidunt at dapibus nec, pellentesque non diam. Sed a magna ante. Morbi scelerisque elit et lorem vehicula, eget mattis libero gravida. Cras ornare bibendum pellentesque. Nullam semper, mauris ac ornare efficitur, nisl nibh malesuada lorem, in feugiat nisi lacus sit amet turpis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Fusce a dui eu ex accumsan egestas at vel augue. Phasellus consectetur aliquet massa, nec bibendum elit varius vulputate. Cras arcu tortor, viverra sed enim at, viverra auctor velit. Sed luctus nunc nec elit gravida dignissim. Maecenas eu laoreet justo. Praesent ac orci ante. Sed quis urna fringilla nunc imperdiet semper eget sed velit. Maecenas fringilla, sem eget rhoncus mattis, nibh arcu condimentum libero, a maximus metus nunc ut ipsum. Suspendisse quis posuere purus. Integer metus eros, laoreet a elit ut, pretium vestibulum nisl. Integer a tortor pulvinar, cursus sem sit amet, mattis nulla. Maecenas nec rhoncus elit. Ut mollis a orci vitae varius. Pellentesque venenatis sapien ut pulvinar condimentum. Duis molestie egestas libero sit amet consequat.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Suspendisse vulputate malesuada bibendum. Sed vestibulum erat lacus, et pulvinar ipsum porttitor ut. Ut egestas est vitae est accumsan consequat. Nunc non massa nec ligula semper pellentesque. Mauris accumsan eros dolor, eu condimentum massa porttitor vitae. Cras posuere fermentum risus id hendrerit. Praesent lacinia vehicula nunc id varius. Quisque consequat massa vel ligula ultrices, non cursus urna interdum. Nullam aliquam tellus eget felis hendrerit, sed mattis metus rutrum. Aenean quis ex fringilla nunc mollis sagittis a nec orci. Donec vestibulum sagittis metus, vitae iaculis mi pulvinar ut.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Sed vitae bibendum odio. Suspendisse at nulla in eros vulputate tincidunt. Pellentesque vitae magna quis massa aliquet luctus. Fusce volutpat, urna ut semper sagittis, nisi leo finibus ex, a fringilla enim massa at nulla. Nullam varius placerat nisl quis blandit. Praesent vestibulum tellus vitae dolor blandit maximus. Morbi eget diam turpis. Proin et porttitor augue. Nam aliquam, neque a ultricies euismod, risus massa imperdiet quam, sit amet viverra est ligula quis nunc. Nullam vel est felis. Nulla erat magna, laoreet at nisi sit amet, condimentum tempus nunc.</p>', 1, 'uploads/posts/1556213637WordPress.png', NULL, '2019-04-25 11:33:57', '2019-04-27 09:06:03', 3),
(8, 'How to create Bootstrap Alerts? In simple way include close button.', 'how-to-create-bootstrap-alerts-in-simple-way-include-close-button', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel quam odio. Aenean cursus pulvinar facilisis. Sed non volutpat lacus, id laoreet leo. Nam euismod eros eget urna ornare, ut venenatis nunc gravida. Cras eu gravida nisi. Nullam euismod orci a neque sodales, eu ullamcorper felis congue. Quisque neque ligula, tincidunt at dapibus nec, pellentesque non diam. Sed a magna ante. Morbi scelerisque elit et lorem vehicula, eget mattis libero gravida. Cras ornare bibendum pellentesque. Nullam semper, mauris ac ornare efficitur, nisl nibh malesuada lorem, in feugiat nisi lacus sit amet turpis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Fusce a dui eu ex accumsan egestas at vel augue. Phasellus consectetur aliquet massa, nec bibendum elit varius vulputate. Cras arcu tortor, viverra sed enim at, viverra auctor velit. Sed luctus nunc nec elit gravida dignissim. Maecenas eu laoreet justo. Praesent ac orci ante. Sed quis urna fringilla nunc imperdiet semper eget sed velit. Maecenas fringilla, sem eget rhoncus mattis, nibh arcu condimentum libero, a maximus metus nunc ut ipsum. Suspendisse quis posuere purus. Integer metus eros, laoreet a elit ut, pretium vestibulum nisl. Integer a tortor pulvinar, cursus sem sit amet, mattis nulla. Maecenas nec rhoncus elit. Ut mollis a orci vitae varius. Pellentesque venenatis sapien ut pulvinar condimentum. Duis molestie egestas libero sit amet consequat.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Suspendisse vulputate malesuada bibendum. Sed vestibulum erat lacus, et pulvinar ipsum porttitor ut. Ut egestas est vitae est accumsan consequat. Nunc non massa nec ligula semper pellentesque. Mauris accumsan eros dolor, eu condimentum massa porttitor vitae. Cras posuere fermentum risus id hendrerit. Praesent lacinia vehicula nunc id varius. Quisque consequat massa vel ligula ultrices, non cursus urna interdum. Nullam aliquam tellus eget felis hendrerit, sed mattis metus rutrum. Aenean quis ex fringilla nunc mollis sagittis a nec orci. Donec vestibulum sagittis metus, vitae iaculis mi pulvinar ut.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Sed vitae bibendum odio. Suspendisse at nulla in eros vulputate tincidunt. Pellentesque vitae magna quis massa aliquet luctus. Fusce volutpat, urna ut semper sagittis, nisi leo finibus ex, a fringilla enim massa at nulla. Nullam varius placerat nisl quis blandit. Praesent vestibulum tellus vitae dolor blandit maximus. Morbi eget diam turpis. Proin et porttitor augue. Nam aliquam, neque a ultricies euismod, risus massa imperdiet quam, sit amet viverra est ligula quis nunc. Nullam vel est felis. Nulla erat magna, laoreet at nisi sit amet, condimentum tempus nunc.</p>', 5, 'uploads/posts/1556213717CABECERA-BEST-TUTORIALS-01.jpg', '2019-04-27 09:05:40', '2019-04-25 11:35:17', '2019-04-27 09:05:40', 3),
(9, 'All about Spark | programming problems', 'all-about-spark-programming-problems', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ex neque, pulvinar quis fermentum non, gravida ut nisl. Vivamus condimentum risus justo, facilisis vehicula nibh pretium eget. Curabitur vel arcu nunc. Suspendisse ac tellus venenatis, malesuada lacus non, efficitur leo. Duis laoreet facilisis felis et pulvinar. Praesent sollicitudin facilisis nisl ornare aliquam. Donec elementum consectetur est. Curabitur ac auctor nisi. Proin porta velit nec libero elementum sagittis. Integer ut nunc placerat, dictum tellus mollis, vestibulum lectus. Donec quam augue, malesuada vel euismod vitae, bibendum sed metus. Nunc condimentum ornare gravida. Nunc viverra massa metus, quis dignissim enim finibus quis. Pellentesque eu lacinia nulla, eget suscipit ligula. Donec sit amet euismod mi.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Duis et dictum mi. Integer congue tempus pulvinar. Pellentesque eu enim fringilla, euismod eros non, finibus ligula. Quisque augue quam, ultricies nec posuere id, luctus et tortor. Suspendisse mattis ex massa, vel vehicula nulla fringilla id. Suspendisse et maximus nibh. Sed tempor neque diam, non vestibulum lacus dictum posuere. Nunc at elit ac quam malesuada pellentesque sit amet ac tellus. In nec euismod sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer sit amet dui turpis. Fusce et dictum velit. Nunc pretium nulla nulla, ut feugiat sem sollicitudin et.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Phasellus scelerisque posuere turpis, id rutrum tellus consequat in. Suspendisse potenti. Proin vel risus vel lacus convallis pretium eget quis lacus. Donec pulvinar scelerisque ipsum ut scelerisque. Aenean non hendrerit arcu. Sed ultricies lacus non urna aliquam feugiat id sit amet metus. Ut dictum tellus lobortis interdum dapibus. Integer mattis libero lobortis porttitor auctor. Quisque luctus pellentesque velit et egestas. Suspendisse eu lorem quam. Maecenas venenatis nunc id lorem tincidunt, vitae finibus ex tristique. Etiam fermentum mattis scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Praesent arcu tellus, luctus ac pharetra ac, laoreet id velit. Phasellus eleifend mauris nunc, eu lobortis diam tincidunt id. Sed nec quam lectus. Vivamus non diam sed turpis condimentum dictum. Suspendisse congue sem quam, et mattis lorem ornare vitae. Ut non consectetur leo, a gravida libero. Morbi in metus a dolor sodales efficitur ut id nisi. Morbi hendrerit urna in metus finibus tempor. Vestibulum sit amet nulla dui. Curabitur suscipit dapibus sem, id finibus sapien dapibus nec. Fusce odio urna, sagittis eget ornare eu, sodales at dolor.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Vivamus id augue quam. Vestibulum eget risus tortor. Nunc feugiat, dui vitae luctus faucibus, lectus lectus mattis ipsum, ut elementum lacus eros quis odio. Nulla volutpat odio eget quam finibus vestibulum. Phasellus convallis nulla lectus, a egestas nibh efficitur nec. Nunc mollis felis nec felis lobortis, ut ultrices eros feugiat. Integer vestibulum feugiat lacus quis sodales. Integer hendrerit quis est vel porttitor. Vestibulum condimentum aliquet faucibus. Phasellus id lorem eget erat semper lobortis in ut sapien. Morbi et lectus at risus facilisis vulputate at sed lacus. Nam laoreet dui nibh, eu congue augue auctor ut. Praesent suscipit odio sed elit blandit pulvinar. Praesent egestas sapien eget porttitor tincidunt. Aenean tincidunt nec augue sed tempor. Nunc ut maximus velit.</p>', 4, 'uploads/posts/1556213792ph.png', NULL, '2019-04-25 11:36:32', '2019-04-25 11:36:32', 3),
(10, 'Carrier with web application and web development | Carrier', 'carrier-with-web-application-and-web-development-carrier', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ex neque, pulvinar quis fermentum non, gravida ut nisl. Vivamus condimentum risus justo, facilisis vehicula nibh pretium eget. Curabitur vel arcu nunc. Suspendisse ac tellus venenatis, malesuada lacus non, efficitur leo. Duis laoreet facilisis felis et pulvinar. Praesent sollicitudin facilisis nisl ornare aliquam. Donec elementum consectetur est. Curabitur ac auctor nisi. Proin porta velit nec libero elementum sagittis. Integer ut nunc placerat, dictum tellus mollis, vestibulum lectus. Donec quam augue, malesuada vel euismod vitae, bibendum sed metus. Nunc condimentum ornare gravida. Nunc viverra massa metus, quis dignissim enim finibus quis. Pellentesque eu lacinia nulla, eget suscipit ligula. Donec sit amet euismod mi.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Duis et dictum mi. Integer congue tempus pulvinar. Pellentesque eu enim fringilla, euismod eros non, finibus ligula. Quisque augue quam, ultricies nec posuere id, luctus et tortor. Suspendisse mattis ex massa, vel vehicula nulla fringilla id. Suspendisse et maximus nibh. Sed tempor neque diam, non vestibulum lacus dictum posuere. Nunc at elit ac quam malesuada pellentesque sit amet ac tellus. In nec euismod sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer sit amet dui turpis. Fusce et dictum velit. Nunc pretium nulla nulla, ut feugiat sem sollicitudin et.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Phasellus scelerisque posuere turpis, id rutrum tellus consequat in. Suspendisse potenti. Proin vel risus vel lacus convallis pretium eget quis lacus. Donec pulvinar scelerisque ipsum ut scelerisque. Aenean non hendrerit arcu. Sed ultricies lacus non urna aliquam feugiat id sit amet metus. Ut dictum tellus lobortis interdum dapibus. Integer mattis libero lobortis porttitor auctor. Quisque luctus pellentesque velit et egestas. Suspendisse eu lorem quam. Maecenas venenatis nunc id lorem tincidunt, vitae finibus ex tristique. Etiam fermentum mattis scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Praesent arcu tellus, luctus ac pharetra ac, laoreet id velit. Phasellus eleifend mauris nunc, eu lobortis diam tincidunt id. Sed nec quam lectus. Vivamus non diam sed turpis condimentum dictum. Suspendisse congue sem quam, et mattis lorem ornare vitae. Ut non consectetur leo, a gravida libero. Morbi in metus a dolor sodales efficitur ut id nisi. Morbi hendrerit urna in metus finibus tempor. Vestibulum sit amet nulla dui. Curabitur suscipit dapibus sem, id finibus sapien dapibus nec. Fusce odio urna, sagittis eget ornare eu, sodales at dolor.</p>', 2, 'uploads/posts/1556299655web-development-skills.jpg', NULL, '2019-04-25 11:39:10', '2019-04-26 11:27:35', 2),
(11, 'Displaying Content with Cards', 'displaying-content-with-cards', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Duis et dictum mi. Integer congue tempus pulvinar. Pellentesque eu enim fringilla, euismod eros non, finibus ligula. Quisque augue quam, ultricies nec posuere id, luctus et tortor. Suspendisse mattis ex massa, vel vehicula nulla fringilla id. Suspendisse et maximus nibh. Sed tempor neque diam, non vestibulum lacus dictum posuere. Nunc at elit ac quam malesuada pellentesque sit amet ac tellus. In nec euismod sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer sit amet dui turpis. Fusce et dictum velit. Nunc pretium nulla nulla, ut feugiat sem sollicitudin et.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Phasellus scelerisque posuere turpis, id rutrum tellus consequat in. Suspendisse potenti. Proin vel risus vel lacus convallis pretium eget quis lacus. Donec pulvinar scelerisque ipsum ut scelerisque. Aenean non hendrerit arcu. Sed ultricies lacus non urna aliquam feugiat id sit amet metus. Ut dictum tellus lobortis interdum dapibus. Integer mattis libero lobortis porttitor auctor. Quisque luctus pellentesque velit et egestas. Suspendisse eu lorem quam. Maecenas venenatis nunc id lorem tincidunt, vitae finibus ex tristique. Etiam fermentum mattis scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Praesent arcu tellus, luctus ac pharetra ac, laoreet id velit. Phasellus eleifend mauris nunc, eu lobortis diam tincidunt id. Sed nec quam lectus. Vivamus non diam sed turpis condimentum dictum. Suspendisse congue sem quam, et mattis lorem ornare vitae. Ut non consectetur leo, a gravida libero. Morbi in metus a dolor sodales efficitur ut id nisi. Morbi hendrerit urna in metus finibus tempor. Vestibulum sit amet nulla dui. Curabitur suscipit dapibus sem, id finibus sapien dapibus nec. Fusce odio urna, sagittis eget ornare eu, sodales at dolor.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Vivamus id augue quam. Vestibulum eget risus tortor. Nunc feugiat, dui vitae luctus faucibus, lectus lectus mattis ipsum, ut elementum lacus eros quis odio. Nulla volutpat odio eget quam finibus vestibulum. Phasellus convallis nulla lectus, a egestas nibh efficitur nec. Nunc mollis felis nec felis lobortis, ut ultrices eros feugiat. Integer vestibulum feugiat lacus quis sodales. Integer hendrerit quis est vel porttitor. Vestibulum condimentum aliquet faucibus. Phasellus id lorem eget erat semper lobortis in ut sapien. Morbi et lectus at risus facilisis vulputate at sed lacus. Nam laoreet dui nibh, eu congue augue auctor ut. Praesent suscipit odio sed elit blandit pulvinar. Praesent egestas sapien eget porttitor tincidunt. Aenean tincidunt nec augue sed tempor. Nunc ut maximus velit.</p>', 3, 'uploads/posts/1556214230Closeup_Pine_needlesPine_483394.jpg', '2019-04-27 09:06:22', '2019-04-25 11:43:50', '2019-04-27 09:06:22', 2),
(12, 'How to build your Career as an Interpreter/Translator', 'how-to-build-your-career-as-an-interpretertranslator', '<div id=\"mntl-sc-block_1-0-5\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Formal education is less important than language skills for this job; interpreters and translators need to have native-level proficiency in both languages, the language of the original text or speech, and the language of the finished product. Translators, who work with the written word, must also have an expert-level knowledge of grammar and style in both languages.</p></div><div id=\"mntl-sc-block_1-0-6\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><div id=\"mntl-block_4-0\" class=\"comp mntl-block\" style=\"margin: 0px; padding: 0px;\"><div id=\"billboard3-sticky-dynamic_1-0\" class=\"comp scads-to-load right-rail__item billboard-sticky billboard3-sticky-dynamic billboard-sticky--sc scads-stick-in-parent scads-ad-placed\" data-height=\"600\" style=\"margin: 0px; padding: 0px; position: absolute; right: -312px; top: 1984px;\"><div class=\"spacer\" style=\"margin: 0px; padding: 0px;\"></div></div></div></div><div id=\"mntl-sc-block_1-0-7\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><ul style=\"margin: 1.25rem 0px; padding: 0px 1.5em 0px 0px; list-style: none; position: relative; z-index: 1; left: 1.5em;\"><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><a href=\"https://www.payscale.com/research/US/Job=Interpreter_or_Translator/Hourly_Rate\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"externalLink\" data-ordinal=\"1\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">Median Pay</a>: $42,973</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\">Typical Education: Bachelor\'s Degree</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><a href=\"https://www.bls.gov/ooh/media-and-communication/interpreters-and-translators.htm\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"externalLink\" data-ordinal=\"2\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">Occupational Outlook, 2016-2026</a>: 18%</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id quam vel massa mattis sodales. Sed varius nulla in viverra imperdiet. Sed dictum leo mi, et vestibulum nunc interdum sed. Mauris ut lectus ex. Curabitur consectetur condimentum placerat. Mauris accumsan libero sit amet dignissim dictum. Sed nec ultrices magna.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Morbi nunc eros, suscipit quis urna et, condimentum pharetra lorem. Duis velit libero, ultricies at urna id, pellentesque tincidunt felis. Fusce fermentum enim eu velit maximus, nec luctus sapien viverra. Curabitur non maximus purus. Nulla et justo elit. Integer eu ornare dolor, non tempus tellus. Vivamus metus dolor, tincidunt eget consequat vel, luctus sit amet neque. Phasellus at commodo lorem, vel placerat ex. Proin nec quam nec nisl mollis sodales viverra eu turpis. Praesent convallis tincidunt tristique. Integer aliquet lacus a mauris congue aliquet. Cras fringilla facilisis tincidunt. Pellentesque eleifend varius finibus. Etiam rhoncus tincidunt arcu, eget mollis ipsum laoreet at.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Vestibulum bibendum ac elit eu aliquam. Aliquam vitae ligula ante. Aliquam augue magna, accumsan nec purus bibendum, elementum egestas nibh. Donec venenatis lacus eget risus laoreet sagittis. Aliquam erat volutpat. Integer at ipsum faucibus massa accumsan fermentum. Maecenas eros eros, congue ut vehicula at, tempor sit amet ante. Pellentesque nec nulla in mi accumsan porta. Fusce vel facilisis odio. Quisque posuere tincidunt mauris eu lobortis. Fusce ut odio sed orci bibendum ornare. Donec dui neque, volutpat et velit ac, convallis luctus metus. Etiam molestie magna ut condimentum aliquam.</p></li></ul></div>', 2, 'uploads/posts/1557602147on-site-interpreting.jpg', NULL, '2019-05-11 13:15:47', '2019-05-11 13:15:47', 3),
(13, 'Build your career as a Film/Video Editor', 'build-your-career-as-a-filmvideo-editor', '<div id=\"mntl-sc-block_1-0-9\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">The explosion of online and mobile video content had led to a corresponding increase in demand for film and video editors, who take raw footage and transform it into a finished product. Editors must be adept at using film editing software programs and generally have a degree related to film or broadcasting.</p></div><div id=\"mntl-sc-block_1-0-10\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><div id=\"mntl-sc-block_1-0-11\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><ul style=\"margin: 1.25rem 0px; padding: 0px 1.5em 0px 0px; list-style: none; position: relative; z-index: 1; left: 1.5em;\"><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><a href=\"https://www.payscale.com/research/US/Job=Film_Editor/Salary\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"externalLink\" data-ordinal=\"1\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">Median Pay</a>: $51,569</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\">Typical Education: Bachelor\'s Degree</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><a href=\"https://www.bls.gov/ooh/media-and-communication/film-and-video-editors-and-camera-operators.htm\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"externalLink\" data-ordinal=\"2\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">Occupational Outlook, 2016-2026</a>: 13% (For film/video editors and camera operators.)</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id quam vel massa mattis sodales. Sed varius nulla in viverra imperdiet. Sed dictum leo mi, et vestibulum nunc interdum sed. Mauris ut lectus ex. Curabitur consectetur condimentum placerat. Mauris accumsan libero sit amet dignissim dictum. Sed nec ultrices magna.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Morbi nunc eros, suscipit quis urna et, condimentum pharetra lorem. Duis velit libero, ultricies at urna id, pellentesque tincidunt felis. Fusce fermentum enim eu velit maximus, nec luctus sapien viverra. Curabitur non maximus purus. Nulla et justo elit. Integer eu ornare dolor, non tempus tellus. Vivamus metus dolor, tincidunt eget consequat vel, luctus sit amet neque. Phasellus at commodo lorem, vel placerat ex. Proin nec quam nec nisl mollis sodales viverra eu turpis. Praesent convallis tincidunt tristique. Integer aliquet lacus a mauris congue aliquet. Cras fringilla facilisis tincidunt. Pellentesque eleifend varius finibus. Etiam rhoncus tincidunt arcu, eget mollis ipsum laoreet at.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Vestibulum bibendum ac elit eu aliquam. Aliquam vitae ligula ante. Aliquam augue magna, accumsan nec purus bibendum, elementum egestas nibh. Donec venenatis lacus eget risus laoreet sagittis. Aliquam erat volutpat. Integer at ipsum faucibus massa accumsan fermentum. Maecenas eros eros, congue ut vehicula at, tempor sit amet ante. Pellentesque nec nulla in mi accumsan porta. Fusce vel facilisis odio. Quisque posuere tincidunt mauris eu lobortis. Fusce ut odio sed orci bibendum ornare. Donec dui neque, volutpat et velit ac, convallis luctus metus. Etiam molestie magna ut condimentum aliquam.</p></li></ul></div>', 2, 'uploads/posts/1557602278Video Editing.jpg', NULL, '2019-05-11 13:17:58', '2019-05-11 13:17:58', 3),
(14, 'Build your career as a Blogger', 'build-your-career-as-a-blogger', '<div id=\"mntl-sc-block_1-0-25\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Companies often employ bloggers as part of their marketing strategy; an engaging blog provides a friendly public face for the company, while potentially helping the organization\'s ranking on Google and other search engines. Writers who work primarily on blogs have to be able to turn out attention-grabbing copy that adheres to the organization\'s voice and style guidelines, while keeping social media and SEO principles in mind.</p></div><div id=\"mntl-sc-block_1-0-26\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><div id=\"mntl-sc-block_1-0-27\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><ul style=\"margin: 1.25rem 0px; padding: 0px 1.5em 0px 0px; list-style: none; position: relative; z-index: 1; left: 1.5em;\"><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><a href=\"https://www.payscale.com/research/US/Job=Blogger/Salary\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"externalLink\" data-ordinal=\"1\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">Median Pay</a>: $41,511</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\">Typical Education: Bachelor\'s Degree</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><a href=\"https://www.bls.gov/ooh/media-and-communication/writers-and-authors.htm\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"externalLink\" data-ordinal=\"2\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">Occupational Outlook, 2016-2026</a>: 8% (For all writers and authors, including bloggers.)</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id quam vel massa mattis sodales. Sed varius nulla in viverra imperdiet. Sed dictum leo mi, et vestibulum nunc interdum sed. Mauris ut lectus ex. Curabitur consectetur condimentum placerat. Mauris accumsan libero sit amet dignissim dictum. Sed nec ultrices magna.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Morbi nunc eros, suscipit quis urna et, condimentum pharetra lorem. Duis velit libero, ultricies at urna id, pellentesque tincidunt felis. Fusce fermentum enim eu velit maximus, nec luctus sapien viverra. Curabitur non maximus purus. Nulla et justo elit. Integer eu ornare dolor, non tempus tellus. Vivamus metus dolor, tincidunt eget consequat vel, luctus sit amet neque. Phasellus at commodo lorem, vel placerat ex. Proin nec quam nec nisl mollis sodales viverra eu turpis. Praesent convallis tincidunt tristique. Integer aliquet lacus a mauris congue aliquet. Cras fringilla facilisis tincidunt. Pellentesque eleifend varius finibus. Etiam rhoncus tincidunt arcu, eget mollis ipsum laoreet at.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Vestibulum bibendum ac elit eu aliquam. Aliquam vitae ligula ante. Aliquam augue magna, accumsan nec purus bibendum, elementum egestas nibh. Donec venenatis lacus eget risus laoreet sagittis. Aliquam erat volutpat. Integer at ipsum faucibus massa accumsan fermentum. Maecenas eros eros, congue ut vehicula at, tempor sit amet ante. Pellentesque nec nulla in mi accumsan porta. Fusce vel facilisis odio. Quisque posuere tincidunt mauris eu lobortis. Fusce ut odio sed orci bibendum ornare. Donec dui neque, volutpat et velit ac, convallis luctus metus. Etiam molestie magna ut condimentum aliquam.</p></li></ul></div>', 2, 'uploads/posts/1557602390df5550f2930c5e109b5bd3e77f4224c0_original.png', NULL, '2019-05-11 13:19:50', '2019-05-11 13:19:50', 3),
(15, 'Programming with PHP', 'programming-with-php', '<p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">PHP&nbsp;is one of the most popular&nbsp;<a title=\"Server-side scripting\" href=\"http://en.wikipedia.org/wiki/Server-side_scripting\" target=\"_blank\" style=\"color: rgb(153, 0, 0); border: 0px;\">server-side scripting</a>&nbsp;languages&nbsp;in&nbsp;existence&nbsp;today. The language has the ability to communicate back and forth with a server and create a dynamic web page for the user. If you have a web hosting account to run your personal blog or website, I can&nbsp;guarantee&nbsp;that PHP is already installed. Even the page you are looking at right now was created by PHP. If you have ambitions of becoming a web developer, PHP is a must for you and will allow you to create dynamic web pages based on external input, usually from the user. It is also important to note that PHP is an object-oriented programming language, and O.O.P. is one of the things we will cover in the series.</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">PHP is not the language to jump straight into if you have had no experience at all. Getting a grasp of the basic programming concepts might be easier in a language such as Visual Basic as the syntax and concepts in PHP might be quite confusing for a beginner. If you have no experience in scripting, I might also suggest taking a look at JavaScript which is a&nbsp;<a title=\"Client-side scripting\" href=\"http://en.wikipedia.org/wiki/Client-side_scripting\" target=\"_blank\" style=\"color: rgb(153, 0, 0); border: 0px;\">client-side scripting</a>&nbsp;language, making it limited when compared to PHP. But don’t let that scare you, PHP teaches some great coding&nbsp;habits&nbsp;and if you are capable of picking things up quickly then you should be just fine. Let’s take a little look at the syntax first, here’s how you would tell PHP to output the text “Welcome to my website” to a browser:</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\"><br></p><pre style=\"border: 1px solid black; color: rgb(0, 0, 0); margin: 10px; padding: 10px; background: rgb(250, 250, 250); font-size: 12px;\">&lt;?php\r\necho \'Welcome to my website\';\r\n?&gt;</pre><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">It all looks pretty logical, right? You are echoing out the sentence enclosed in the quotation marks to the web browser. And each statement in PHP must end with a “;”&nbsp;to notify the processor module that we have ended our statement. New lines and blank space are not recognised. You must also wrap PHP code inside “&lt;?php” and “?&gt;” tags to notify the server when a PHP script will start and end. So if you think you are ready to start learning PHP, click on the first video just below this paragraph to begin learning. I hope you find the free tutorials useful.<br></p>', 1, 'uploads/posts/15576027201_4lAASSCG5h2QLClrjj-ClA.jpeg', NULL, '2019-05-11 13:25:20', '2019-05-12 10:25:36', 3),
(16, 'Programming with .NET', 'programming-with-net', '<p class=\"aboutcourse\" style=\"font-family: &quot;Montserrat Light&quot;, Arial; margin-top: 20px; margin-bottom: 15px; clear: both; color: rgb(49, 52, 62); font-size: 16px;\">Gain the skills necessary to be a computer programmer. This course provides hands-on experience creating software for Microsoft\'s .NET (Windows platform) using the Visual Studio development environment. Starting with the most fundamental elements of computer programming, the training evolves to leverage development techniques sufficient to produce a complete web application including the user interface, business logic and data access layers. Participants have the choice of using either C# (C Sharp) or VB (Visual Basic) – the Microsoft .NET core languages. Techniques presented include design, code generation, testing and debugging including use of the ASP.NET (Active Server Pages) the SQL Server database.</p><div id=\"youlearn\" style=\"clear: both; margin-top: 30px; width: 1140px; color: rgb(49, 52, 62); font-family: Montserrat, Arial, sans-serif; font-size: 16px;\"><h2 style=\"font-family: Montserrat, Arial; margin-bottom: 10px; font-size: 24px; text-align: center;\">You Will Learn How To</h2><ul style=\"margin-top: 25px; margin-bottom: 10px; font-family: &quot;Montserrat Light&quot;, Arial; font-size: 15px; padding-left: 18px;\"><li style=\"margin-bottom: 4px; margin-top: 0px; padding-bottom: 4px; padding-left: 0px;\">Demonstrate the fundamental aspects of modern computer programming</li><li style=\"margin-bottom: 4px; margin-top: 0px; padding-bottom: 4px; padding-left: 0px;\">Design and implement .NET web and Windows applications</li><li style=\"margin-bottom: 4px; margin-top: 0px; padding-bottom: 4px; padding-left: 0px;\">Write object-oriented logic using C# and Visual Basic (classes and libraries)</li><li style=\"margin-bottom: 4px; margin-top: 0px; padding-bottom: 4px; padding-left: 0px;\">Leverage Visual Studio for code generation, user interface design, testing, and debugging</li><li style=\"margin-bottom: 4px; margin-top: 0px; padding-bottom: 4px; padding-left: 0px;\">Build SQL Server databases and access them using the Entity Framework (EF)</li></ul></div><div id=\"crsimp\" style=\"color: rgb(49, 52, 62); font-family: Montserrat, Arial, sans-serif; font-size: 16px;\"><h2 style=\"font-family: Montserrat, Arial; margin-bottom: 10px; font-size: 24px; text-align: center;\">Important Course Information</h2><ul class=\"accordion\" style=\"margin-bottom: 10px; font-family: &quot;Montserrat Light&quot;, Arial; font-size: 15px; padding-left: 18px;\"><li style=\"margin-bottom: 4px; margin-top: 0px; padding-bottom: 4px; padding-left: 0px;\"><h3 class=\"active\" style=\"font-family: Montserrat, Arial; font-weight: 700; line-height: 36px; color: rgb(48, 52, 61); margin: 10px 20px 0px 0px; font-size: 15px; letter-spacing: -1px;\">Requirements</h3><div aria-hidden=\"false\" class=\"active\"><ul><li style=\"margin-bottom: 4px; margin-top: 4px; padding-bottom: 4px;\">Basic computer skills including the use of the Windows operating system and accessing Web application and other computer programs</li></ul></div></li><li style=\"margin-bottom: 4px; margin-top: 0px; padding-bottom: 4px; padding-left: 0px;\"><h3 class=\"active\" style=\"font-family: Montserrat, Arial; font-weight: 700; line-height: 36px; color: rgb(48, 52, 61); margin: 10px 20px 0px 0px; font-size: 15px; letter-spacing: -1px;\">Recommended Experience</h3><div aria-hidden=\"false\" class=\"active\"><ul><li style=\"margin-bottom: 4px; margin-top: 4px; padding-bottom: 4px;\">Some prior programming experience</li></ul></div></li><li style=\"margin-bottom: 4px; margin-top: 0px; padding-bottom: 4px; padding-left: 0px;\"><h3 class=\"active\" style=\"font-family: Montserrat, Arial; font-weight: 700; line-height: 36px; color: rgb(48, 52, 61); margin: 10px 20px 0px 0px; font-size: 15px; letter-spacing: -1px;\">Software</h3><div aria-hidden=\"false\" class=\"active\"><ul><li style=\"margin-bottom: 4px; margin-top: 4px; padding-bottom: 4px;\">This course uses Visual Studio 2017 but is useful to those using an earlier version</li></ul></div></li></ul></div>', 1, 'uploads/posts/1557603074splash.png', NULL, '2019-05-11 13:29:37', '2019-05-11 13:31:14', 3);
INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(17, 'Laravel 5.8 - Redirect back to the same page where the request comes from', 'laravel-58-redirect-back-to-the-same-page-where-the-request-comes-from', '<p style=\"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both; color: rgb(36, 39, 41);\">You can certainly use</p><p style=\"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both; color: rgb(36, 39, 41);\"><code style=\"margin: 0px; padding: 1px 5px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inherit; background-color: rgb(239, 240, 241); white-space: pre-wrap;\">Redirect::back()-&gt;withMessage(\'Profile saved!\')</code></p><p style=\"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both; color: rgb(36, 39, 41);\">in place of</p><p style=\"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both; color: rgb(36, 39, 41);\"><code style=\"margin: 0px; padding: 1px 5px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inherit; background-color: rgb(239, 240, 241); white-space: pre-wrap;\">Redirect::to(\'profile\')-&gt;withMessage(\'Profile saved!\')</code></p><p style=\"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both; color: rgb(36, 39, 41);\">*<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit;\">nifty feature in Laravel that it parses your camelCase on the&nbsp;<code style=\"margin: 0px; padding: 1px 5px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inherit; background-color: rgb(239, 240, 241); white-space: pre-wrap;\">-&gt;with(\'name\', \'value\')</code>&nbsp;so that&nbsp;<code style=\"margin: 0px; padding: 1px 5px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inherit; background-color: rgb(239, 240, 241); white-space: pre-wrap;\">-&gt;withName(\'value\')</code>&nbsp;works just the same.</em></p><h3 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.3; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 17px; vertical-align: baseline; box-sizing: inherit; overflow-wrap: break-word; color: rgb(36, 39, 41);\">Also....</h3><p style=\"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both; color: rgb(36, 39, 41);\">I\'m assuming your form is bound to the model such as&nbsp;<code style=\"margin: 0px; padding: 1px 5px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inherit; background-color: rgb(239, 240, 241); white-space: pre-wrap;\">Form::model($user, [...]</code>&nbsp;to pre-fill form fields, but if not you may want to re-flash the input on the Redirect (or if your validation failed and you want to user to be able to correct the invalid info).</p><h3 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.3; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 17px; vertical-align: baseline; box-sizing: inherit; overflow-wrap: break-word; color: rgb(36, 39, 41);\">Just a snippet [untested]...</h3><pre class=\"lang-php prettyprint prettyprinted\" style=\"margin-bottom: 1em; padding: 12px 8px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; background-color: rgb(239, 240, 241); border-radius: 3px; color: rgb(57, 51, 24); overflow-wrap: normal;\"><code style=\"margin: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inherit; background-color: rgb(239, 240, 241); white-space: inherit;\"><span class=\"com\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(133, 140, 147);\">// [[... validation and other magic here]]</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">\r\n\r\n</span><span class=\"kwd\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(16, 16, 148);\">if</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\"> </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">(</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">$validator</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">-&gt;</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">fails</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">())</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\"> </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">{</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">\r\n    </span><span class=\"kwd\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(16, 16, 148);\">return</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\"> </span><span class=\"typ\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(43, 145, 175);\">Redirect</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">::</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">back</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">()</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">\r\n        </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">-&gt;</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">withMessage</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">(</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">$message_fail</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">)</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">\r\n        </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">-&gt;</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">withErrors</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">(</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">$validator</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">)</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">\r\n        </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">-&gt;</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">withInput</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">();</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">\r\n</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">}</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">\r\n\r\n</span><span class=\"kwd\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(16, 16, 148);\">return</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\"> </span><span class=\"typ\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(43, 145, 175);\">Redirect</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">::</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">back</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">()</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">\r\n        </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">-&gt;</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">withMessage</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">(</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">$message_success</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; color: rgb(48, 51, 54);\">)</span></code></pre><p style=\"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both; color: rgb(36, 39, 41);\">Hope that helps!</p>', 3, 'uploads/posts/1557671291laravel.jpg', NULL, '2019-05-12 08:28:11', '2019-05-12 08:28:11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 5, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 3, 1, NULL, NULL),
(6, 3, 5, NULL, NULL),
(7, 4, 1, NULL, NULL),
(8, 4, 3, NULL, NULL),
(9, 5, 1, NULL, NULL),
(10, 5, 5, NULL, NULL),
(11, 6, 1, NULL, NULL),
(12, 6, 2, NULL, NULL),
(13, 6, 3, NULL, NULL),
(14, 1, 1, NULL, NULL),
(15, 7, 1, NULL, NULL),
(16, 7, 2, NULL, NULL),
(17, 7, 4, NULL, NULL),
(18, 8, 1, NULL, NULL),
(19, 8, 2, NULL, NULL),
(20, 8, 3, NULL, NULL),
(21, 9, 1, NULL, NULL),
(22, 9, 2, NULL, NULL),
(23, 9, 5, NULL, NULL),
(24, 10, 1, NULL, NULL),
(25, 10, 2, NULL, NULL),
(26, 10, 5, NULL, NULL),
(27, 11, 1, NULL, NULL),
(28, 11, 3, NULL, NULL),
(29, 12, 2, NULL, NULL),
(30, 12, 5, NULL, NULL),
(31, 13, 2, NULL, NULL),
(32, 14, 2, NULL, NULL),
(33, 14, 5, NULL, NULL),
(34, 15, 1, NULL, NULL),
(35, 16, 1, NULL, NULL),
(36, 17, 1, NULL, NULL),
(37, 17, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `git` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `git`, `twitter`, `created_at`, `updated_at`) VALUES
(2, 'uploads/avatars/1556214047robi.jpg', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ex neque, pulvinar quis fermentum non, gravida ut nisl. Vivamus condimentum risus justo, facilisis vehicula nibh pretium eget. Curabitur vel arcu nunc. Suspendisse ac tellus venenatis, malesuada lacus non, efficitur leo. Duis laoreet facilisis felis et pulvinar. Praesent sollicitudin', 'http://facebook.com', 'https://youtube.com', 'https://github.com', 'https://twitter.com', '2019-04-05 14:17:58', '2019-04-25 11:40:47'),
(3, 'uploads/avatars/1556213388170390 (1).jpg', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'http://facebook.com', 'https://youtube.com', 'https://github.com', 'https://twitter.com', '2019-04-25 11:26:10', '2019-04-25 11:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `faq`, `created_at`, `updated_at`) VALUES
(2, 'CodeHut', '+880 179 7703 131', 'codehut.info@gmail.com', 'Dhaka, Bangladesh', 'The FAQ of the site goes here! Sed vitae bibendum odio. Suspendisse at nulla in eros vulputate tincidunt. Pellentesque vitae magna quis massa aliquet luctus. Fusce volutpat, urna ut semper sagittis, nisi leo finibus ex, a fringilla enim massa at nulla. Nullam varius placerat nisl quis blandit.', '2019-02-12 03:22:56', '2019-04-26 11:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'programming', '2019-02-12 03:24:22', '2019-02-12 03:24:22'),
(2, 'career', '2019-02-12 03:24:30', '2019-02-12 03:24:30'),
(3, 'laravel', '2019-02-12 03:24:39', '2019-02-12 03:24:39'),
(4, 'wordpress', '2019-02-12 03:24:53', '2019-02-12 03:24:53'),
(5, 'other', '2019-02-12 03:25:00', '2019-02-12 03:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Robiul islam', 'robi@gmail.com', 0, '$2y$10$dWPIKfC3FN0n6USdna9RHOYTU9TQRfvozYqq13V6TeirYUMJFhgmG', 'ytdMTDOHEQrGkKdpJRLSIvXK1jKGDPzilvTCiTboOn8kgrjBHNVN1KFEUWvs', '2019-04-05 14:17:58', '2019-04-25 11:40:47'),
(3, 'Shamsul Huda', 'shamsulhuda310@gmail.com', 1, '$2y$10$r5HzC3wLQPLqaLsnmuVDUOZL1KGksISMtkMHSZx1DR9vjQnq.n2My', 'Qq30QLkMQ9rTEdxVPQaM1TGfFwafnmeAJogAQBBX6Hd57Nh5P8KeNwqEZ81h', '2019-04-25 11:26:10', '2019-04-25 11:29:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
