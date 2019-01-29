-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30-Jan-2019 às 00:14
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-24 20:50:19', '2019-01-24 22:50:19', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress/wordpress', 'yes'),
(3, 'blogname', 'Boa Comida', 'yes'),
(4, 'blogdescription', 'Só mais um site de comida', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jeanddg@hotmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'restaurante', 'yes'),
(41, 'stylesheet', 'restaurante', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pt_BR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'nonce_key', 'E}SlFx5<fHTULp5]VL3GX!AmN/*3~E@#,|q;ARX1;gYi5:qcUT#M5Q)N:*n/$w1d', 'no'),
(110, 'nonce_salt', 'W3q,l4Pem.RDPL^pTp#5vys*D{7D/UF(ils#ss_Q(]PNLp@_ bh@$l1HKYs_ab-2', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'cron', 'a:6:{i:1548805821;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1548845421;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1548888653;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548888654;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548888699;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548370289;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'auth_key', '9>SvO-83;FE6t#[t#ltsBa%u?;}jp]n_jpbqJqUN 8I5.2QaT4xCY/`/X>=1+Qx3', 'no'),
(127, 'auth_salt', 'Ag>Jl{%<OP/WoA(V[&{Cr&w1SZ[lU0=R[2eF%LHHM=;Q4l<1T(iZZ`Ma.^PS_zUT', 'no'),
(128, 'logged_in_key', 'YV]:*KZY73$qY[_L!ni0im|EP9KkEsE_2AL>[|O]}i TJSg{<a^v:0bf*)v>;7y)', 'no'),
(129, 'logged_in_salt', 'i6k%z9X&R#6]t2:2L@FX5(eZeCKC09>4S Xt#vfQILU*sQ{UE7=AOhnr5@oxP8t{', 'no'),
(131, '_site_transient_timeout_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', '1548975034', 'no'),
(132, '_site_transient_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(149, 'current_theme', '', 'yes'),
(150, 'theme_mods_restaurante', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes'),
(161, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.0.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1548802326;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(163, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1548802326;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(170, 'category_children', 'a:0:{}', 'yes'),
(174, '_site_transient_timeout_theme_roots', '1548802750', 'no'),
(175, '_site_transient_theme_roots', 'a:4:{s:11:\"restaurante\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(176, '_transient_timeout_plugin_slugs', '1548887433', 'no'),
(177, '_transient_plugin_slugs', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}', 'no'),
(178, 'recently_activated', 'a:0:{}', 'yes'),
(181, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1548802328;s:7:\"checked\";a:4:{s:11:\"restaurante\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:1:{s:11:\"restaurante\";a:4:{s:5:\"theme\";s:11:\"restaurante\";s:11:\"new_version\";s:5:\"3.0.7\";s:3:\"url\";s:41:\"https://wordpress.org/themes/restaurante/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/restaurante.3.0.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1548800903:1'),
(4, 6, '_wp_attached_file', '2019/01/download.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2019/01/download.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"download-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 8, '_edit_lock', '1548795814:1'),
(9, 9, '_wp_attached_file', '2019/01/download-1.jpg'),
(10, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2019/01/download-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"download-1-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 11, '_menu_item_type', 'custom'),
(14, 11, '_menu_item_menu_item_parent', '0'),
(15, 11, '_menu_item_object_id', '11'),
(16, 11, '_menu_item_object', 'custom'),
(17, 11, '_menu_item_target', ''),
(18, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 11, '_menu_item_xfn', ''),
(20, 11, '_menu_item_url', 'http://localhost/wordpress/wordpress/'),
(21, 11, '_menu_item_orphaned', '1548371184'),
(22, 12, '_menu_item_type', 'post_type'),
(23, 12, '_menu_item_menu_item_parent', '0'),
(24, 12, '_menu_item_object_id', '2'),
(25, 12, '_menu_item_object', 'page'),
(26, 12, '_menu_item_target', ''),
(27, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 12, '_menu_item_xfn', ''),
(29, 12, '_menu_item_url', ''),
(30, 12, '_menu_item_orphaned', '1548371184'),
(31, 13, '_menu_item_type', 'custom'),
(32, 13, '_menu_item_menu_item_parent', '0'),
(33, 13, '_menu_item_object_id', '13'),
(34, 13, '_menu_item_object', 'custom'),
(35, 13, '_menu_item_target', ''),
(36, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 13, '_menu_item_xfn', ''),
(38, 13, '_menu_item_url', 'http://localhost/wordpress/wordpress/'),
(39, 13, '_menu_item_orphaned', '1548371198'),
(40, 15, '_edit_lock', '1548371801:1'),
(41, 16, '_menu_item_type', 'custom'),
(42, 16, '_menu_item_menu_item_parent', '0'),
(43, 16, '_menu_item_object_id', '16'),
(44, 16, '_menu_item_object', 'custom'),
(45, 16, '_menu_item_target', ''),
(46, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 16, '_menu_item_xfn', ''),
(48, 16, '_menu_item_url', 'http://localhost/wordpress/wordpress/'),
(77, 2, '_edit_lock', '1548371649:1'),
(78, 20, '_edit_lock', '1548803535:1'),
(79, 21, '_wp_attached_file', '2019/01/organic-restaurant-logo-D34AC3E788-seeklogo.com_.png'),
(80, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:300;s:4:\"file\";s:60:\"2019/01/organic-restaurant-logo-D34AC3E788-seeklogo.com_.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"organic-restaurant-logo-D34AC3E788-seeklogo.com_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"organic-restaurant-logo-D34AC3E788-seeklogo.com_-289x300.png\";s:5:\"width\";i:289;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 22, '_menu_item_type', 'post_type'),
(82, 22, '_menu_item_menu_item_parent', '0'),
(83, 22, '_menu_item_object_id', '20'),
(84, 22, '_menu_item_object', 'page'),
(85, 22, '_menu_item_target', ''),
(86, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 22, '_menu_item_xfn', ''),
(88, 22, '_menu_item_url', ''),
(89, 24, '_menu_item_type', 'post_type'),
(90, 24, '_menu_item_menu_item_parent', '0'),
(91, 24, '_menu_item_object_id', '20'),
(92, 24, '_menu_item_object', 'page'),
(93, 24, '_menu_item_target', ''),
(94, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 24, '_menu_item_xfn', ''),
(96, 24, '_menu_item_url', ''),
(98, 25, '_edit_lock', '1548798025:1'),
(99, 27, '_menu_item_type', 'post_type'),
(100, 27, '_menu_item_menu_item_parent', '0'),
(101, 27, '_menu_item_object_id', '25'),
(102, 27, '_menu_item_object', 'page'),
(103, 27, '_menu_item_target', ''),
(104, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 27, '_menu_item_xfn', ''),
(106, 27, '_menu_item_url', ''),
(107, 28, '_menu_item_type', 'post_type'),
(108, 28, '_menu_item_menu_item_parent', '0'),
(109, 28, '_menu_item_object_id', '25'),
(110, 28, '_menu_item_object', 'page'),
(111, 28, '_menu_item_target', ''),
(112, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 28, '_menu_item_xfn', ''),
(114, 28, '_menu_item_url', ''),
(115, 1, '_wp_trash_meta_status', 'publish'),
(116, 1, '_wp_trash_meta_time', '1548795061'),
(117, 1, '_wp_desired_post_slug', 'ola-mundo'),
(118, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(119, 30, '_edit_lock', '1548798053:1'),
(120, 31, '_wp_attached_file', '2019/01/CHE1.jpg'),
(121, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:724;s:4:\"file\";s:16:\"2019/01/CHE1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"CHE1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"CHE1-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"CHE1-768x463.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"CHE1-1024x618.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:618;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 37, '_edit_lock', '1548795514:1'),
(133, 8, '_edit_last', '1'),
(136, 5, '_edit_last', '1'),
(137, 5, '_pingme', '1'),
(138, 5, '_encloseme', '1'),
(139, 45, '_wp_trash_meta_status', 'publish'),
(140, 45, '_wp_trash_meta_time', '1548801008');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-24 20:50:19', '2019-01-24 22:50:19', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2019-01-29 18:51:01', '2019-01-29 20:51:01', '', 0, 'http://localhost/wordpress/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-24 20:50:19', '2019-01-24 22:50:19', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wordpress/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2019-01-24 20:50:19', '2019-01-24 22:50:19', '', 0, 'http://localhost/wordpress/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-24 20:50:19', '2019-01-24 22:50:19', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/wordpress/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2019-01-24 20:50:19', '2019-01-24 22:50:19', '', 0, 'http://localhost/wordpress/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-24 20:50:35', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-24 20:50:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2019-01-24 20:56:27', '2019-01-24 22:56:27', '<!-- wp:image {\"id\":6} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/download.jpg\" alt=\"\" class=\"wp-image-6\"/><figcaption>Comida aaaaaaaa</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->', 'What is Lorem Ipsum?', '', 'publish', 'open', 'open', '', 'what-is-lorem-ipsum', '', '', '2019-01-29 19:03:41', '2019-01-29 21:03:41', '', 0, 'http://localhost/wordpress/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2019-01-24 20:55:07', '2019-01-24 22:55:07', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2019-01-24 20:55:07', '2019-01-24 22:55:07', '', 5, 'http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2019-01-24 20:56:03', '2019-01-24 22:56:03', '<!-- wp:image {\"id\":6} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/download.jpg\" alt=\"\" class=\"wp-image-6\"/><figcaption>Comida aaaaaaaa</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->', 'What is Lorem Ipsum?', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-24 20:56:03', '2019-01-24 22:56:03', '', 5, 'http://localhost/wordpress/wordpress/2019/01/24/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-01-24 21:05:52', '2019-01-24 23:05:52', '<!-- wp:image {\"id\":9} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/download-1.jpg\" alt=\"\" class=\"wp-image-9\"/><figcaption> <br>Why do we use it? </figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\n</p>\n<!-- /wp:paragraph -->', 'Why do we use it?', '', 'publish', 'open', 'open', '', 'why-do-we-use-it', '', '', '2019-01-29 19:03:34', '2019-01-29 21:03:34', '', 0, 'http://localhost/wordpress/wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2019-01-24 21:05:27', '2019-01-24 23:05:27', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2019-01-24 21:05:27', '2019-01-24 23:05:27', '', 8, 'http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2019-01-24 21:05:52', '2019-01-24 23:05:52', '<!-- wp:image {\"id\":9} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/download-1.jpg\" alt=\"\" class=\"wp-image-9\"/><figcaption> <br>Why do we use it? </figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\n</p>\n<!-- /wp:paragraph -->', 'Why do we use it?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-24 21:05:52', '2019-01-24 23:05:52', '', 8, 'http://localhost/wordpress/wordpress/2019/01/24/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-01-24 21:06:23', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-24 21:06:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-01-24 21:06:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-24 21:06:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-01-24 21:06:38', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-24 21:06:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wordpress/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2019-01-24 21:07:10', '2019-01-24 23:07:10', '<!-- wp:image {\"id\":9} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/download-1.jpg\" alt=\"\" class=\"wp-image-9\"/><figcaption> <br>Why do we use it? </figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\n</p>\n<!-- /wp:paragraph -->', 'Why do we use it?', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2019-01-24 21:07:10', '2019-01-24 23:07:10', '', 8, 'http://localhost/wordpress/wordpress/2019/01/24/8-autosave-v1/', 0, 'revision', '', 0),
(15, 1, '2019-01-24 21:08:01', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-24 21:08:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-01-24 21:08:46', '2019-01-24 23:08:46', '', 'Início', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2019-01-24 21:28:01', '2019-01-24 23:28:01', '', 0, 'http://localhost/wordpress/wordpress/?p=16', 1, 'nav_menu_item', '', 0),
(20, 1, '2019-01-24 21:18:41', '2019-01-24 23:18:41', '<!-- wp:image {\"id\":21,\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/organic-restaurant-logo-D34AC3E788-seeklogo.com_.png\" alt=\"\" class=\"wp-image-21\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n\n</p>\n<!-- /wp:paragraph -->', 'Quem somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2019-01-29 20:30:58', '2019-01-29 22:30:58', '', 0, 'http://localhost/wordpress/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-01-24 21:18:13', '2019-01-24 23:18:13', '', 'organic-restaurant-logo-D34AC3E788-seeklogo.com', '', 'inherit', 'open', 'closed', '', 'organic-restaurant-logo-d34ac3e788-seeklogo-com', '', '', '2019-01-24 21:18:13', '2019-01-24 23:18:13', '', 20, 'http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/organic-restaurant-logo-D34AC3E788-seeklogo.com_.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2019-01-24 21:18:41', '2019-01-24 23:18:41', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-01-24 21:18:41', '2019-01-24 23:18:41', '', 0, 'http://localhost/wordpress/wordpress/2019/01/24/22/', 0, 'nav_menu_item', '', 0),
(23, 1, '2019-01-24 21:18:41', '2019-01-24 23:18:41', '<!-- wp:image {\"id\":21} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/organic-restaurant-logo-D34AC3E788-seeklogo.com_.png\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n\n</p>\n<!-- /wp:paragraph -->', 'Quem somos', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-01-24 21:18:41', '2019-01-24 23:18:41', '', 20, 'http://localhost/wordpress/wordpress/2019/01/24/20-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-01-24 21:19:42', '2019-01-24 23:19:42', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-01-24 21:28:01', '2019-01-24 23:28:01', '', 0, 'http://localhost/wordpress/wordpress/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2019-01-24 21:27:47', '2019-01-24 23:27:47', '<!-- wp:html -->\n<form>\n<label>Email:\n<input type=\"email\">\n</label><br>\n<label>Titulo:\n<input type=\"email\">\n</label></br>\n<label>Texto:\n<textarea rows=\"4\" cols=\"50\">\n</textarea>\n</label>\n</br>\n<input type=\"submit\" value=\"Enviar\">\n</form>\n<!-- /wp:html -->', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2019-01-29 19:29:42', '2019-01-29 21:29:42', '', 0, 'http://localhost/wordpress/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2019-01-24 21:27:44', '2019-01-24 23:27:44', '<!-- wp:html -->\n<<form>\n<label>Email:\n<input type=\"email\">\n</label>\n<label>Titulo:\n<input type=\"email\">\n</label>\n<label>Texto:\n<textarea></textarea>\n</label>\n</br>\n<imput type=\"submit\">\n</form>\n<!-- /wp:html -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-01-24 21:27:44', '2019-01-24 23:27:44', '', 25, 'http://localhost/wordpress/wordpress/2019/01/24/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-01-24 21:27:47', '2019-01-24 23:27:47', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-01-24 21:27:47', '2019-01-24 23:27:47', '', 0, 'http://localhost/wordpress/wordpress/2019/01/24/27/', 2, 'nav_menu_item', '', 0),
(28, 1, '2019-01-24 21:28:01', '2019-01-24 23:28:01', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-01-24 21:28:01', '2019-01-24 23:28:01', '', 0, 'http://localhost/wordpress/wordpress/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2019-01-29 18:51:01', '2019-01-29 20:51:01', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-29 18:51:01', '2019-01-29 20:51:01', '', 1, 'http://localhost/wordpress/wordpress/2019/01/29/1-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-01-29 18:54:26', '2019-01-29 20:54:26', '<!-- wp:image {\"id\":31,\"align\":\"center\",\"width\":505,\"height\":304} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/CHE1-1024x618.jpg\" alt=\"\" class=\"wp-image-31\" width=\"505\" height=\"304\"/><figcaption> <br><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </figcaption></figure></div>\n<!-- /wp:image -->', 'Frango Salada', '', 'publish', 'open', 'open', '', 'frango-salada', '', '', '2019-01-29 19:03:14', '2019-01-29 21:03:14', '', 0, 'http://localhost/wordpress/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2019-01-29 18:54:11', '2019-01-29 20:54:11', '', 'CHE1', '', 'inherit', 'open', 'closed', '', 'che1', '', '', '2019-01-29 18:54:11', '2019-01-29 20:54:11', '', 30, 'http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/CHE1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-01-29 18:54:26', '2019-01-29 20:54:26', '<!-- wp:image {\"id\":31,\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/CHE1-1024x618.jpg\" alt=\"\" class=\"wp-image-31\"/><figcaption> <br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </figcaption></figure></div>\n<!-- /wp:image -->', 'Frango Salada', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-01-29 18:54:26', '2019-01-29 20:54:26', '', 30, 'http://localhost/wordpress/wordpress/2019/01/29/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-01-29 18:54:54', '2019-01-29 20:54:54', '<!-- wp:image {\"id\":31,\"align\":\"center\",\"width\":415,\"height\":250} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/CHE1-1024x618.jpg\" alt=\"\" class=\"wp-image-31\" width=\"415\" height=\"250\"/><figcaption> <br><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </figcaption></figure></div>\n<!-- /wp:image -->', 'Frango Salada', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-01-29 18:54:54', '2019-01-29 20:54:54', '', 30, 'http://localhost/wordpress/wordpress/2019/01/29/30-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-01-29 18:55:09', '2019-01-29 20:55:09', '<!-- wp:image {\"id\":31,\"align\":\"center\",\"width\":505,\"height\":304} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/CHE1-1024x618.jpg\" alt=\"\" class=\"wp-image-31\" width=\"505\" height=\"304\"/><figcaption> <br><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </figcaption></figure></div>\n<!-- /wp:image -->', 'Frango Salada', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-01-29 18:55:09', '2019-01-29 20:55:09', '', 30, 'http://localhost/wordpress/wordpress/2019/01/29/30-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-01-29 18:56:25', '2019-01-29 20:56:25', '<!-- wp:html -->\n<form>\n<label>Email:\n<input type=\"email\">\n</label>\n<label>Titulo:\n<input type=\"email\">\n</label>\n<label>Texto:\n<textarea></textarea>\n</label>\n</br>\n<imput type=\"submit\">\n</form>\n<!-- /wp:html -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-01-29 18:56:25', '2019-01-29 20:56:25', '', 25, 'http://localhost/wordpress/wordpress/2019/01/29/25-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-01-29 19:00:54', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-29 19:00:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wordpress/?p=37', 0, 'post', '', 0),
(40, 1, '2019-01-29 19:25:42', '2019-01-29 21:25:42', '<!-- wp:html -->\n<form>\n<label>Email:\n<input type=\"email\">\n</label>\n<label>Titulo:\n<input type=\"email\">\n</label>\n<label>Texto:\n<textarea></textarea>\n</label>\n</br>\n<input type=\"submit\" value=\"Submit\">\n</form>\n<!-- /wp:html -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-01-29 19:25:42', '2019-01-29 21:25:42', '', 25, 'http://localhost/wordpress/wordpress/2019/01/29/25-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-01-29 19:26:00', '2019-01-29 21:26:00', '<!-- wp:html -->\n<form>\n<label>Email:\n<input type=\"email\">\n</label>\n<label>Titulo:\n<input type=\"email\">\n</label>\n<label>Texto:\n<textarea></textarea>\n</label>\n</br>\n<input type=\"submit\" value=\"Enviar\">\n</form>\n<!-- /wp:html -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-01-29 19:26:00', '2019-01-29 21:26:00', '', 25, 'http://localhost/wordpress/wordpress/2019/01/29/25-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-01-29 19:27:22', '2019-01-29 21:27:22', '<!-- wp:html -->\n<form>\n<label>Email:\n<input type=\"email\">\n</label>\n<label>Titulo:\n<input type=\"email\">\n</label>\n<label>Texto:\n<textarea rows=\"4\" cols=\"50\">\n</texarea>\n</label>\n</br>\n<input type=\"submit\" value=\"Enviar\">\n</form>\n<!-- /wp:html -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-01-29 19:27:22', '2019-01-29 21:27:22', '', 25, 'http://localhost/wordpress/wordpress/2019/01/29/25-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-01-29 19:28:01', '2019-01-29 21:28:01', '<!-- wp:html -->\n<form>\n<label>Email:\n<input type=\"email\">\n</label>\n<label>Titulo:\n<input type=\"email\">\n</label>\n<label>Texto:\n<textarea rows=\"4\" cols=\"50\">\n</textarea>\n</label>\n</br>\n<input type=\"submit\" value=\"Enviar\">\n</form>\n<!-- /wp:html -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-01-29 19:28:01', '2019-01-29 21:28:01', '', 25, 'http://localhost/wordpress/wordpress/2019/01/29/25-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-01-29 19:28:50', '2019-01-29 21:28:50', '<!-- wp:html -->\n<form>\n<label>Email:\n<input type=\"email\">\n</label><br>\n<label>Titulo:\n<input type=\"email\">\n</label></br>\n<label>Texto:\n<textarea rows=\"4\" cols=\"50\">\n</textarea>\n</label>\n</br>\n<input type=\"submit\" value=\"Enviar\">\n</form>\n<!-- /wp:html -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-01-29 19:28:50', '2019-01-29 21:28:50', '', 25, 'http://localhost/wordpress/wordpress/2019/01/29/25-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-01-29 20:30:08', '2019-01-29 22:30:08', '{\n    \"blogdescription\": {\n        \"value\": \"S\\u00f3 mais um site de comida\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-29 22:30:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e9e98f20-9032-4eb6-a0b8-0134292b7662', '', '', '2019-01-29 20:30:08', '2019-01-29 22:30:08', '', 0, 'http://localhost/wordpress/wordpress/2019/01/29/e9e98f20-9032-4eb6-a0b8-0134292b7662/', 0, 'customize_changeset', '', 0),
(46, 1, '2019-01-29 20:30:58', '2019-01-29 22:30:58', '<!-- wp:image {\"id\":21,\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/organic-restaurant-logo-D34AC3E788-seeklogo.com_.png\" alt=\"\" class=\"wp-image-21\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n\n</p>\n<!-- /wp:paragraph -->', 'Quem somos', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-01-29 20:30:58', '2019-01-29 22:30:58', '', 20, 'http://localhost/wordpress/wordpress/2019/01/29/20-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-01-29 20:31:00', '2019-01-29 22:31:00', '<!-- wp:image {\"id\":21,\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"http://localhost/wordpress/wordpress/wp-content/uploads/2019/01/organic-restaurant-logo-D34AC3E788-seeklogo.com_.png\" alt=\"\" class=\"wp-image-21\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n\n</p>\n<!-- /wp:paragraph -->', 'Quem somos', '', 'inherit', 'closed', 'closed', '', '20-autosave-v1', '', '', '2019-01-29 20:31:00', '2019-01-29 22:31:00', '', 20, 'http://localhost/wordpress/wordpress/2019/01/29/20-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Contato', 'contato', 0),
(3, 'Quem somos', 'quem-somos', 0),
(4, 'Comida', 'comida', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 4, 0),
(8, 4, 0),
(16, 2, 0),
(22, 3, 0),
(24, 2, 0),
(27, 3, 0),
(28, 2, 0),
(30, 1, 0),
(30, 4, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'txtdbr'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"bb07436141f40762723a939d385a4ba78aa667b4a292bacb3e2cfe8f7a8f2a7e\";a:4:{s:10:\"expiration\";i:1548966640;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1548793840;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1548370229'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'txtdbr', '$P$BW.CaP/CpI/ffYBM79vma9G8vwWPSG.', 'txtdbr', 'jeanddg@hotmail.com', '', '2019-01-24 22:50:18', '', 0, 'txtdbr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
