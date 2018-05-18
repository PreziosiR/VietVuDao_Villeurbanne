-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 18 mai 2018 à 07:28
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdd_wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-16 10:49:19', '2018-02-16 09:49:19', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/wordpress', 'yes'),
(2, 'home', 'http://127.0.0.1/wordpress', 'yes'),
(3, 'blogname', 'VietVuDao Villeurbanne', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@test.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vietvudao_theme', 'yes'),
(41, 'stylesheet', 'vietvudao_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1526636959;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1526660692;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1526661178;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521325823;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(333, '_site_transient_timeout_theme_roots', '1526629742', 'no'),
(334, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:15:\"vietvudao_theme\";s:7:\"/themes\";}', 'no'),
(196, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(197, '_transient_twentyseventeen_categories', '1', 'yes'),
(201, 'theme_switched', '', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(229, 'acf_version', '4.4.12', 'yes'),
(199, 'current_theme', '', 'yes'),
(200, 'theme_mods_vietvudao_theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(335, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1526627943;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";s:15:\"vietvudao_theme\";s:5:\"0.0.1\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.6.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(336, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1526627944;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(276, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.6-partial-4.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1526627941;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(299, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(37, 2, '_edit_lock', '1522689078:1'),
(38, 23, '_edit_lock', '1522415339:1'),
(36, 9, '_wp_page_template', 'presentation.php'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1522874428:1'),
(13, 14, '_wp_attached_file', '2018/03/baton-long.jpg'),
(14, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:291;s:6:\"height\";i:451;s:4:\"file\";s:22:\"2018/03/baton-long.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"baton-long-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"baton-long-194x300.jpg\";s:5:\"width\";i:194;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 54, '_wp_attached_file', '2018/03/fleau.jpg'),
(117, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:17:\"2018/03/fleau.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"fleau-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"fleau-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 16, '_wp_attached_file', '2018/03/kiem.png'),
(18, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2018/03/kiem.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"kiem-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"kiem-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"kiem-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 17, '_wp_attached_file', '2018/03/paysage.jpg'),
(20, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:565;s:4:\"file\";s:19:\"2018/03/paysage.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"paysage-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"paysage-300x106.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:106;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"paysage-768x271.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"paysage-1024x362.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:362;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 18, '_wp_attached_file', '2018/03/paysage-eau.jpg'),
(22, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:963;s:6:\"height\";i:642;s:4:\"file\";s:23:\"2018/03/paysage-eau.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"paysage-eau-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"paysage-eau-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"paysage-eau-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 19, '_wp_attached_file', '2018/03/temple.jpg'),
(24, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2018/03/temple.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"temple-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"temple-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"temple-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"temple-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 23, '_edit_last', '1'),
(40, 23, '_wp_page_template', 'accueil.php'),
(41, 25, '_edit_lock', '1522686631:1'),
(42, 25, '_edit_last', '1'),
(43, 25, '_wp_page_template', 'single-armes.php'),
(44, 27, '_wp_attached_file', '2018/03/vvd-logo.png'),
(45, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:110;s:4:\"file\";s:20:\"2018/03/vvd-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 29, '_edit_last', '1'),
(49, 29, '_wp_page_template', 'single-ceintures.php'),
(50, 29, '_edit_lock', '1522689390:1'),
(51, 31, '_wp_attached_file', '2018/03/francis.jpg'),
(52, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:232;s:6:\"height\";i:350;s:4:\"file\";s:19:\"2018/03/francis.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"francis-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"francis-199x300.jpg\";s:5:\"width\";i:199;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 32, '_wp_attached_file', '2018/03/jesse.jpg'),
(54, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:262;s:6:\"height\";i:350;s:4:\"file\";s:17:\"2018/03/jesse.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"jesse-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"jesse-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 34, '_edit_lock', '1522875791:1'),
(58, 34, '_edit_last', '1'),
(59, 34, '_wp_page_template', 'reglement.php'),
(60, 36, '_edit_lock', '1521908836:1'),
(61, 36, '_edit_last', '1'),
(62, 36, '_wp_page_template', 'contact.php'),
(185, 61, '_edit_lock', '1522688606:1'),
(80, 43, '_wp_attached_file', '2018/03/vvd-logo-1.png'),
(81, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:110;s:4:\"file\";s:22:\"2018/03/vvd-logo-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 44, '_', 'field_5ab67e8e2bdac'),
(83, 25, '_', 'field_5ab67e8e2bdac'),
(85, 47, '_edit_lock', '1522874578:1'),
(86, 47, '_edit_last', '1'),
(87, 49, '_edit_lock', '1522874438:1'),
(88, 49, '_edit_last', '1'),
(89, 50, '_edit_lock', '1522401604:1'),
(90, 50, '_edit_last', '1'),
(91, 51, '_edit_lock', '1522688085:1'),
(92, 51, '_edit_last', '1'),
(93, 52, '_edit_lock', '1522404656:1'),
(94, 52, '_edit_last', '1'),
(101, 53, '_edit_lock', '1522688513:1'),
(102, 53, '_edit_last', '1'),
(103, 53, 'field_5abdff49996a0', 'a:11:{s:3:\"key\";s:19:\"field_5abdff49996a0\";s:5:\"label\";s:15:\"Image de l\'arme\";s:4:\"name\";s:14:\"image_de_larme\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(111, 53, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"armes\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(105, 53, 'position', 'normal'),
(106, 53, 'layout', 'no_box'),
(107, 53, 'hide_on_screen', ''),
(108, 49, 'image_de_larme', '14'),
(109, 49, '_image_de_larme', 'field_5abdff49996a0'),
(112, 50, 'image_de_larme', '16'),
(113, 50, '_image_de_larme', 'field_5abdff49996a0'),
(114, 47, 'image_de_larme', '54'),
(115, 47, '_image_de_larme', 'field_5abdff49996a0'),
(118, 55, '_edit_lock', '1522688890:1'),
(119, 55, '_edit_last', '1'),
(120, 55, 'field_5abe37abcdaa7', 'a:13:{s:3:\"key\";s:19:\"field_5abe37abcdaa7\";s:5:\"label\";s:13:\"Paragraphe un\";s:4:\"name\";s:13:\"paragraphe_un\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(121, 55, 'field_5abe37c9cdaa8', 'a:13:{s:3:\"key\";s:19:\"field_5abe37c9cdaa8\";s:5:\"label\";s:15:\"Paragraphe deux\";s:4:\"name\";s:15:\"paragraphe_deux\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(197, 55, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(123, 55, 'position', 'normal'),
(124, 55, 'layout', 'no_box'),
(125, 55, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(127, 56, 'paragraphe_un', 'Au XVème siècle, la dynastie impériale chinoise des Ming s’installa à Pékin. Pendant leur règne, la Chine envahit les pays\r\n         voisins et notamment le Vietnam. Une des légendes raconte que le Việt vũ Ðạo serait apparu à cette époque.\r\n         Cinq chevaliers, experts en arts martiaux, tenant leur savoir des multiples  rencontres faites au cours de leurs pérégrinations vinrent\r\n          s’établir dans la province de Phuoc Tuy au Sud du pays. Chacun de ces chevaliers était expert dans un domaine : Le premier était\r\n          expert dans la science du combat à mains nues (Đấu tay không), le second dans le maniement du bâton (Cây Tre), le troisième\r\n           dans le maniement du fléau (Nông gia cụ), plus connu sous le nom de nunchaku. Le quatrième était expert dans le maniement\r\n            du sabre (kiếm) et le dernier était expert en philosophie (Triết).\r\n         Face à l’envahisseur chinois, ce dernier décida les autres chevaliers à rassembler leurs connaissances en transformant la synthèse\r\n          de leur art en une redoutable méthode de combat. Chacun initia à son tour les paysans de la région de Phuoc Tuy. Les résultats\r\n           furent tels que les envahisseurs chinois furent chassés de la province.\r\n         L’existence concrète du Việt vũ Ðạo remonte à 1920 où Pham Văn Tân aidé de Nguyễn Van Lượng établirent les premières codifications de la discipline.\r\n         La guerre d’Indochine et les accords de Genève en 1957 amenèrent des émigrants, décidés à quitter leurs pays, aux quatre coins\r\n          du monde. C’est ainsi que les arts martiaux vietnamiens se développèrent.\r\n         Le Việt vũ Ðạo est un art martial de défense. Il comporte un travail à mains nues et allie des techniques de pieds et de poings\r\n          ainsi que des balayages, projections, ciseaux et clés. Le maniement des armes (bâton, fléau et sabre) fait aussi partie\r\n           de l’enseignement. Il permet aussi de travailler et de canaliser les énergies interne et externe.\r\n            Cet art martial s’adresse à tous : hommes, femmes, jeunes et moins jeunes.'),
(128, 56, '_paragraphe_un', 'field_5abe37abcdaa7'),
(129, 56, 'paragraphe_2', 'Une légende raconte que le Việt vũ Đạo serait naît, toujours au 15ème siècle pendant l\'invasion chinoise, suite à l\'igéniosité de guerriers Viêtnamiens.Ceux-ci se déguisèrent en danseuses et parvinrernt à se glisser à l\'intérieur des fortifications chinoises. Une fois à l\'intérieur, ils ne mirent pas longtemps à repousser les envahiseurs.Une autre légende raconte que les chinois furent repoussés grâce au concours d\'une jeune femme, une danseuse.Ces légendes illustre l\'idée de danse dans cet art martial. Le vũ aurait comme signification la danse, le mouvement.Une autre théorie parle de la discipline des cinq. En effet, le Vũ descendrait du mot chinois \"Wu\" qui veut dire cinq. Ce mot fut déformé par les habitants et donna le Vũ.'),
(130, 56, '_paragraphe_2', 'field_5abe37c9cdaa8'),
(131, 9, 'paragraphe_un', 'Au XVème siècle, la dynastie impériale chinoise des Ming s’installa à Pékin. Pendant leur règne, la Chine envahit les pays\r\n         voisins et notamment le Vietnam. Une des légendes raconte que le Việt vũ Ðạo serait apparu à cette époque.\r\n         Cinq chevaliers, experts en arts martiaux, tenant leur savoir des multiples  rencontres faites au cours de leurs pérégrinations vinrent\r\n          s’établir dans la province de Phuoc Tuy au Sud du pays. Chacun de ces chevaliers était expert dans un domaine : Le premier était\r\n          expert dans la science du combat à mains nues (Đấu tay không), le second dans le maniement du bâton (Cây Tre), le troisième\r\n           dans le maniement du fléau (Nông gia cụ), plus connu sous le nom de nunchaku. Le quatrième était expert dans le maniement\r\n            du sabre (kiếm) et le dernier était expert en philosophie (Triết).\r\n         Face à l’envahisseur chinois, ce dernier décida les autres chevaliers à rassembler leurs connaissances en transformant la synthèse\r\n          de leur art en une redoutable méthode de combat. Chacun initia à son tour les paysans de la région de Phuoc Tuy. Les résultats\r\n           furent tels que les envahisseurs chinois furent chassés de la province.\r\n         L’existence concrète du Việt vũ Ðạo remonte à 1920 où Pham Văn Tân aidé de Nguyễn Van Lượng établirent les premières codifications de la discipline.\r\n         La guerre d’Indochine et les accords de Genève en 1957 amenèrent des émigrants, décidés à quitter leurs pays, aux quatre coins\r\n          du monde. C’est ainsi que les arts martiaux vietnamiens se développèrent.\r\n         Le Việt vũ Ðạo est un art martial de défense. Il comporte un travail à mains nues et allie des techniques de pieds et de poings\r\n          ainsi que des balayages, projections, ciseaux et clés. Le maniement des armes (bâton, fléau et sabre) fait aussi partie\r\n           de l’enseignement. Il permet aussi de travailler et de canaliser les énergies interne et externe.\r\n            Cet art martial s’adresse à tous : hommes, femmes, jeunes et moins jeunes.'),
(132, 9, '_paragraphe_un', 'field_5abe37abcdaa7'),
(133, 9, 'paragraphe_2', 'Une légende raconte que le Việt vũ Đạo serait naît, toujours au 15ème siècle pendant l\'invasion chinoise, suite à l\'igéniosité de guerriers Viêtnamiens.Ceux-ci se déguisèrent en danseuses et parvinrernt à se glisser à l\'intérieur des fortifications chinoises. Une fois à l\'intérieur, ils ne mirent pas longtemps à repousser les envahiseurs.Une autre légende raconte que les chinois furent repoussés grâce au concours d\'une jeune femme, une danseuse.Ces légendes illustre l\'idée de danse dans cet art martial. Le vũ aurait comme signification la danse, le mouvement.Une autre théorie parle de la discipline des cinq. En effet, le Vũ descendrait du mot chinois \"Wu\" qui veut dire cinq. Ce mot fut déformé par les habitants et donna le Vũ.'),
(134, 9, '_paragraphe_2', 'field_5abe37c9cdaa8'),
(138, 55, 'field_5abe428b1c7bb', 'a:14:{s:3:\"key\";s:19:\"field_5abe428b1c7bb\";s:5:\"label\";s:19:\"Titre paragraphe un\";s:4:\"name\";s:19:\"titre_paragraphe_un\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(140, 55, 'field_5abe42a9a0387', 'a:14:{s:3:\"key\";s:19:\"field_5abe42a9a0387\";s:5:\"label\";s:21:\"Titre paragraphe deux\";s:4:\"name\";s:21:\"titre_paragraphe_deux\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(143, 57, 'titre_paragraphe_un', 'La légende du Việt vũ Ðạo'),
(144, 57, '_titre_paragraphe_un', 'field_5abe428b1c7bb'),
(145, 57, 'paragraphe_un', 'Au XVème siècle, la dynastie impériale chinoise des Ming s’installa à Pékin. Pendant leur règne, la Chine envahit les pays\r\n         voisins et notamment le Vietnam. Une des légendes raconte que le Việt vũ Ðạo serait apparu à cette époque.\r\n         Cinq chevaliers, experts en arts martiaux, tenant leur savoir des multiples  rencontres faites au cours de leurs pérégrinations vinrent\r\n          s’établir dans la province de Phuoc Tuy au Sud du pays. Chacun de ces chevaliers était expert dans un domaine : Le premier était\r\n          expert dans la science du combat à mains nues (Đấu tay không), le second dans le maniement du bâton (Cây Tre), le troisième\r\n           dans le maniement du fléau (Nông gia cụ), plus connu sous le nom de nunchaku. Le quatrième était expert dans le maniement\r\n            du sabre (kiếm) et le dernier était expert en philosophie (Triết).\r\n         Face à l’envahisseur chinois, ce dernier décida les autres chevaliers à rassembler leurs connaissances en transformant la synthèse\r\n          de leur art en une redoutable méthode de combat. Chacun initia à son tour les paysans de la région de Phuoc Tuy. Les résultats\r\n           furent tels que les envahisseurs chinois furent chassés de la province.\r\n         L’existence concrète du Việt vũ Ðạo remonte à 1920 où Pham Văn Tân aidé de Nguyễn Van Lượng établirent les premières codifications de la discipline.\r\n         La guerre d’Indochine et les accords de Genève en 1957 amenèrent des émigrants, décidés à quitter leurs pays, aux quatre coins\r\n          du monde. C’est ainsi que les arts martiaux vietnamiens se développèrent.\r\n         Le Việt vũ Ðạo est un art martial de défense. Il comporte un travail à mains nues et allie des techniques de pieds et de poings\r\n          ainsi que des balayages, projections, ciseaux et clés. Le maniement des armes (bâton, fléau et sabre) fait aussi partie\r\n           de l’enseignement. Il permet aussi de travailler et de canaliser les énergies interne et externe.\r\n            Cet art martial s’adresse à tous : hommes, femmes, jeunes et moins jeunes.'),
(146, 57, '_paragraphe_un', 'field_5abe37abcdaa7'),
(147, 57, 'titre_paragraphe_deux', 'La signification du Vũ'),
(148, 57, '_titre_paragraphe_deux', 'field_5abe42a9a0387'),
(149, 57, 'paragraphe_deux', 'Une légende raconte que le Việt vũ Đạo serait naît, toujours au 15ème siècle pendant l\'invasion chinoise, suite à l\'igéniosité de guerriers Viêtnamiens.\r\n\r\nCeux-ci se déguisèrent en danseuses et parvinrernt à se glisser à l\'intérieur des fortifications chinoises. Une fois à l\'intérieur, ils ne mirent pas longtemps à repousser les envahiseurs.\r\n\r\nUne autre légende raconte que les chinois furent repoussés grâce au concours d\'une jeune femme, une danseuse.\r\n\r\nCes légendes illustre l\'idée de danse dans cet art martial. Le vũ aurait comme signification la danse, le mouvement.\r\n\r\n \r\n\r\nUne autre théorie parle de la discipline des cinq. En effet, le Vũ descendrait du mot chinois \"Wu\" qui veut dire cinq. Ce mot fut déformé par les habitants et donna le Vũ.'),
(150, 57, '_paragraphe_deux', 'field_5abe37c9cdaa8'),
(151, 9, 'titre_paragraphe_un', 'La légende du Việt vũ Ðạo'),
(152, 9, '_titre_paragraphe_un', 'field_5abe428b1c7bb'),
(153, 9, 'titre_paragraphe_deux', 'La signification du Vũ'),
(154, 9, '_titre_paragraphe_deux', 'field_5abe42a9a0387'),
(155, 9, 'paragraphe_deux', 'Une légende raconte que le Việt vũ Đạo serait naît, toujours au 15ème siècle pendant l\'invasion chinoise, suite à l\'igéniosité de guerriers Viêtnamiens.\r\n\r\nCeux-ci se déguisèrent en danseuses et parvinrernt à se glisser à l\'intérieur des fortifications chinoises. Une fois à l\'intérieur, ils ne mirent pas longtemps à repousser les envahiseurs.\r\n\r\nUne autre légende raconte que les chinois furent repoussés grâce au concours d\'une jeune femme, une danseuse.\r\n\r\nCes légendes illustre l\'idée de danse dans cet art martial. Le vũ aurait comme signification la danse, le mouvement.\r\n\r\nUne autre théorie parle de la discipline des cinq. En effet, le Vũ descendrait du mot chinois \"Wu\" qui veut dire cinq. Ce mot fut déformé par les habitants et donna le Vũ.'),
(156, 9, '_paragraphe_deux', 'field_5abe37c9cdaa8'),
(158, 58, 'titre_paragraphe_un', 'La légende du Việt vũ Ðạo'),
(159, 58, '_titre_paragraphe_un', 'field_5abe428b1c7bb'),
(160, 58, 'paragraphe_un', 'Au XVème siècle, la dynastie impériale chinoise des Ming s’installa à Pékin. Pendant leur règne, la Chine envahit les pays\r\n         voisins et notamment le Vietnam. Une des légendes raconte que le Việt vũ Ðạo serait apparu à cette époque.\r\n         Cinq chevaliers, experts en arts martiaux, tenant leur savoir des multiples  rencontres faites au cours de leurs pérégrinations vinrent\r\n          s’établir dans la province de Phuoc Tuy au Sud du pays. Chacun de ces chevaliers était expert dans un domaine : Le premier était\r\n          expert dans la science du combat à mains nues (Đấu tay không), le second dans le maniement du bâton (Cây Tre), le troisième\r\n           dans le maniement du fléau (Nông gia cụ), plus connu sous le nom de nunchaku. Le quatrième était expert dans le maniement\r\n            du sabre (kiếm) et le dernier était expert en philosophie (Triết).\r\n         Face à l’envahisseur chinois, ce dernier décida les autres chevaliers à rassembler leurs connaissances en transformant la synthèse\r\n          de leur art en une redoutable méthode de combat. Chacun initia à son tour les paysans de la région de Phuoc Tuy. Les résultats\r\n           furent tels que les envahisseurs chinois furent chassés de la province.\r\n         L’existence concrète du Việt vũ Ðạo remonte à 1920 où Pham Văn Tân aidé de Nguyễn Van Lượng établirent les premières codifications de la discipline.\r\n         La guerre d’Indochine et les accords de Genève en 1957 amenèrent des émigrants, décidés à quitter leurs pays, aux quatre coins\r\n          du monde. C’est ainsi que les arts martiaux vietnamiens se développèrent.\r\n         Le Việt vũ Ðạo est un art martial de défense. Il comporte un travail à mains nues et allie des techniques de pieds et de poings\r\n          ainsi que des balayages, projections, ciseaux et clés. Le maniement des armes (bâton, fléau et sabre) fait aussi partie\r\n           de l’enseignement. Il permet aussi de travailler et de canaliser les énergies interne et externe.\r\n            Cet art martial s’adresse à tous : hommes, femmes, jeunes et moins jeunes.'),
(161, 58, '_paragraphe_un', 'field_5abe37abcdaa7'),
(162, 58, 'titre_paragraphe_deux', 'La signification du Vũ'),
(163, 58, '_titre_paragraphe_deux', 'field_5abe42a9a0387'),
(164, 58, 'paragraphe_deux', 'Une légende raconte que le Việt vũ Đạo serait naît, toujours au 15ème siècle pendant l\'invasion chinoise, suite à l\'igéniosité de guerriers Viêtnamiens.\r\n\r\nCeux-ci se déguisèrent en danseuses et parvinrernt à se glisser à l\'intérieur des fortifications chinoises. Une fois à l\'intérieur, ils ne mirent pas longtemps à repousser les envahiseurs.\r\n\r\nUne autre légende raconte que les chinois furent repoussés grâce au concours d\'une jeune femme, une danseuse.\r\n\r\nCes légendes illustre l\'idée de danse dans cet art martial. Le vũ aurait comme signification la danse, le mouvement.\r\n\r\nUne autre théorie parle de la discipline des cinq. En effet, le Vũ descendrait du mot chinois \"Wu\" qui veut dire cinq. Ce mot fut déformé par les habitants et donna le Vũ.'),
(165, 58, '_paragraphe_deux', 'field_5abe37c9cdaa8'),
(169, 59, 'titre_paragraphe_un', 'La légende du Việt vũ Ðạo'),
(170, 59, '_titre_paragraphe_un', 'field_5abe428b1c7bb'),
(171, 59, 'paragraphe_un', 'Au XVème siècle, la dynastie impériale chinoise des Ming s’installa à Pékin. Pendant leur règne, la Chine envahit les pays\r\n         voisins et notamment le Vietnam. Une des légendes raconte que le Việt vũ Ðạo serait apparu à cette époque.\r\n         Cinq chevaliers, experts en arts martiaux, tenant leur savoir des multiples  rencontres faites au cours de leurs pérégrinations vinrent\r\n          s’établir dans la province de Phuoc Tuy au Sud du pays. Chacun de ces chevaliers était expert dans un domaine : Le premier était\r\n          expert dans la science du combat à mains nues (Đấu tay không), le second dans le maniement du bâton (Cây Tre), le troisième\r\n           dans le maniement du fléau (Nông gia cụ), plus connu sous le nom de nunchaku. Le quatrième était expert dans le maniement\r\n            du sabre (kiếm) et le dernier était expert en philosophie (Triết).\r\n         Face à l’envahisseur chinois, ce dernier décida les autres chevaliers à rassembler leurs connaissances en transformant la synthèse\r\n          de leur art en une redoutable méthode de combat. Chacun initia à son tour les paysans de la région de Phuoc Tuy. Les résultats\r\n           furent tels que les envahisseurs chinois furent chassés de la province.\r\n         L’existence concrète du Việt vũ Ðạo remonte à 1920 où Pham Văn Tân aidé de Nguyễn Van Lượng établirent les premières codifications de la discipline.\r\n         La guerre d’Indochine et les accords de Genève en 1957 amenèrent des émigrants, décidés à quitter leurs pays, aux quatre coins\r\n          du monde. C’est ainsi que les arts martiaux vietnamiens se développèrent.\r\n         Le Việt vũ Ðạo est un art martial de défense. Il comporte un travail à mains nues et allie des techniques de pieds et de poings\r\n          ainsi que des balayages, projections, ciseaux et clés. Le maniement des armes (bâton, fléau et sabre) fait aussi partie\r\n           de l’enseignement. Il permet aussi de travailler et de canaliser les énergies interne et externe.\r\n            Cet art martial s’adresse à tous : hommes, femmes, jeunes et moins jeunes.'),
(172, 59, '_paragraphe_un', 'field_5abe37abcdaa7'),
(173, 59, 'titre_paragraphe_deux', 'La signification du Vũ'),
(174, 59, '_titre_paragraphe_deux', 'field_5abe42a9a0387'),
(175, 59, 'paragraphe_deux', 'Une légende raconte que le Việt vũ Đạo serait naît, toujours au 15ème siècle pendant l\'invasion chinoise, suite à l\'igéniosité de guerriers Viêtnamiens.\r\n\r\nCeux-ci se déguisèrent en danseuses et parvinrernt à se glisser à l\'intérieur des fortifications chinoises. Une fois à l\'intérieur, ils ne mirent pas longtemps à repousser les envahiseurs.\r\n\r\nUne autre légende raconte que les chinois furent repoussés grâce au concours d\'une jeune femme, une danseuse.\r\n\r\nCes légendes illustre l\'idée de danse dans cet art martial. Le vũ aurait comme signification la danse, le mouvement.\r\n\r\nUne autre théorie parle de la discipline des cinq. En effet, le Vũ descendrait du mot chinois \"Wu\" qui veut dire cinq. Ce mot fut déformé par les habitants et donna le Vũ.'),
(176, 59, '_paragraphe_deux', 'field_5abe37c9cdaa8'),
(177, 60, 'titre_paragraphe_un', 'La légende du Việt vũ Ðạo'),
(178, 60, '_titre_paragraphe_un', 'field_5abe428b1c7bb'),
(179, 60, 'paragraphe_un', 'Au XVème siècle, la dynastie impériale chinoise des Ming s’installa à Pékin. Pendant leur règne, la Chine envahit les pays\r\n         voisins et notamment le Vietnam. Une des légendes raconte que le Việt vũ Ðạo serait apparu à cette époque.\r\n         Cinq chevaliers, experts en arts martiaux, tenant leur savoir des multiples  rencontres faites au cours de leurs pérégrinations vinrent\r\n          s’établir dans la province de Phuoc Tuy au Sud du pays. Chacun de ces chevaliers était expert dans un domaine : Le premier était\r\n          expert dans la science du combat à mains nues (Đấu tay không), le second dans le maniement du bâton (Cây Tre), le troisième\r\n           dans le maniement du fléau (Nông gia cụ), plus connu sous le nom de nunchaku. Le quatrième était expert dans le maniement\r\n            du sabre (kiếm) et le dernier était expert en philosophie (Triết).\r\n         Face à l’envahisseur chinois, ce dernier décida les autres chevaliers à rassembler leurs connaissances en transformant la synthèse\r\n          de leur art en une redoutable méthode de combat. Chacun initia à son tour les paysans de la région de Phuoc Tuy. Les résultats\r\n           furent tels que les envahisseurs chinois furent chassés de la province.\r\n         L’existence concrète du Việt vũ Ðạo remonte à 1920 où Pham Văn Tân aidé de Nguyễn Van Lượng établirent les premières codifications de la discipline.\r\n         La guerre d’Indochine et les accords de Genève en 1957 amenèrent des émigrants, décidés à quitter leurs pays, aux quatre coins\r\n          du monde. C’est ainsi que les arts martiaux vietnamiens se développèrent.\r\n         Le Việt vũ Ðạo est un art martial de défense. Il comporte un travail à mains nues et allie des techniques de pieds et de poings\r\n          ainsi que des balayages, projections, ciseaux et clés. Le maniement des armes (bâton, fléau et sabre) fait aussi partie\r\n           de l’enseignement. Il permet aussi de travailler et de canaliser les énergies interne et externe.\r\n            Cet art martial s’adresse à tous : hommes, femmes, jeunes et moins jeunes.'),
(180, 60, '_paragraphe_un', 'field_5abe37abcdaa7'),
(181, 60, 'titre_paragraphe_deux', 'La signification du Vũ'),
(182, 60, '_titre_paragraphe_deux', 'field_5abe42a9a0387'),
(183, 60, 'paragraphe_deux', 'Une légende raconte que le Việt vũ Đạo serait naît, toujours au 15ème siècle pendant l\'invasion chinoise, suite à l\'igéniosité de guerriers Viêtnamiens.\r\n\r\nCeux-ci se déguisèrent en danseuses et parvinrernt à se glisser à l\'intérieur des fortifications chinoises. Une fois à l\'intérieur, ils ne mirent pas longtemps à repousser les envahiseurs.\r\n\r\nUne autre légende raconte que les chinois furent repoussés grâce au concours d\'une jeune femme, une danseuse.\r\n\r\nCes légendes illustre l\'idée de danse dans cet art martial. Le vũ aurait comme signification la danse, le mouvement.\r\n\r\nUne autre théorie parle de la discipline des cinq. En effet, le Vũ descendrait du mot chinois \"Wu\" qui veut dire cinq. Ce mot fut déformé par les habitants et donna le Vũ.'),
(184, 60, '_paragraphe_deux', 'field_5abe37c9cdaa8'),
(186, 61, '_edit_last', '1'),
(187, 61, 'field_5ac257e66cead', 'a:11:{s:3:\"key\";s:19:\"field_5ac257e66cead\";s:5:\"label\";s:26:\"image de la ceinture noire\";s:4:\"name\";s:26:\"image_de_la_ceinture_noire\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(206, 61, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"ceintures\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(189, 61, 'position', 'normal'),
(190, 61, 'layout', 'no_box'),
(191, 61, 'hide_on_screen', ''),
(199, 65, '_edit_lock', '1522689472:1'),
(193, 64, '_edit_lock', '1522688205:1'),
(194, 64, '_edit_last', '1'),
(195, 64, 'image_de_la_ceinture_noire', '31'),
(196, 64, '_image_de_la_ceinture_noire', 'field_5ac257e66cead'),
(200, 65, '_edit_last', '1'),
(201, 65, 'image_de_la_ceinture_noire', '32'),
(202, 65, '_image_de_la_ceinture_noire', 'field_5ac257e66cead'),
(203, 51, 'image_de_larme', ''),
(204, 51, '_image_de_larme', 'field_5abdff49996a0'),
(205, 61, 'field_5ac260ea48cf1', 'a:13:{s:3:\"key\";s:19:\"field_5ac260ea48cf1\";s:5:\"label\";s:13:\"ceintures VVD\";s:4:\"name\";s:13:\"ceintures_vvd\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(214, 69, 'explication_des_ceintures', 'Le Việt vũ Đạo est un art martial traditionnel, il est donc important de souligner qu\'il n\'existait pas de ceintures dans la pratique des arts martiaux en Asie. L\'introduction de la ceinture, blanche et de couleur, se fait en occident. Elle a pour but de matérialiser un niveau et surtout une hiérarchie dans un club et parmis les pratiquants dans une fédération.\r\n\r\nAu Việt vũ Đạo, nous avons trois ceintures :\r\n\r\n- la blanche : représente le début de l\'apprentissage du VVD. On est un élève.\r\n\r\n- la noire : donne le statut de guide, de professeur. Ce pratiquant est capable d\'enseigner, de transmettre son savoir aux pratiquants ceintures blanches.\r\n\r\n- la blanche et noire : représente les ceintures noires supérieures, à partir du 3ème Đang (il n\'existe que 5 Đang dans notre école). Ce sont eux qui dirigent l\'école de Việt vũ Đạo Tân-Lượng.\r\n'),
(215, 69, '_explication_des_ceintures', 'field_5ac261c0dd353'),
(216, 29, 'explication_des_ceintures', 'Le Việt vũ Đạo est un art martial traditionnel, il est donc important de souligner qu\'il n\'existait pas de ceintures dans la pratique des arts martiaux en Asie. L\'introduction de la ceinture, blanche et de couleur, se fait en occident. Elle a pour but de matérialiser un niveau et surtout une hiérarchie dans un club et parmis les pratiquants dans une fédération.\r\n\r\nAu Việt vũ Đạo, nous avons trois ceintures :\r\n\r\n- la blanche : représente le début de l\'apprentissage du VVD. On est un élève.\r\n\r\n- la noire : donne le statut de guide, de professeur. Ce pratiquant est capable d\'enseigner, de transmettre son savoir aux pratiquants ceintures blanches.\r\n\r\n- la blanche et noire : représente les ceintures noires supérieures, à partir du 3ème Đang (il n\'existe que 5 Đang dans notre école). Ce sont eux qui dirigent l\'école de Việt vũ Đạo Tân-Lượng.\r\n'),
(217, 29, '_explication_des_ceintures', 'field_5ac261c0dd353'),
(221, 70, '_edit_lock', '1522689066:1'),
(222, 70, '_edit_last', '1'),
(223, 70, 'field_5ac26302a14f4', 'a:13:{s:3:\"key\";s:19:\"field_5ac26302a14f4\";s:5:\"label\";s:27:\"description ceintures noire\";s:4:\"name\";s:27:\"description_ceintures_noire\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(235, 70, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"29\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(225, 70, 'position', 'normal'),
(226, 70, 'layout', 'no_box'),
(227, 70, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(228, 71, 'description_ceintures_noire', 'Le Việt vũ Đạo est un art martial traditionnel, il est donc important de souligner qu\'il n\'existait pas de ceintures dans la pratique des arts martiaux en Asie. L\'introduction de la ceinture, blanche et de couleur, se fait en occident. Elle a pour but de matérialiser un niveau et surtout une hiérarchie dans un club et parmis les pratiquants dans une fédération.\r\n\r\nAu Việt vũ Đạo, nous avons trois ceintures :\r\n\r\n- la blanche : représente le début de l\'apprentissage du VVD. On est un élève.\r\n\r\n- la noire : donne le statut de guide, de professeur. Ce pratiquant est capable d\'enseigner, de transmettre son savoir aux pratiquants ceintures blanches.\r\n\r\n- la blanche et noire : représente les ceintures noires supérieures, à partir du 3ème Đang (il n\'existe que 5 Đang dans notre école). Ce sont eux qui dirigent l\'école de Việt vũ Đạo Tân-Lượng.\r\n'),
(229, 71, '_description_ceintures_noire', 'field_5ac26302a14f4'),
(230, 29, 'description_ceintures_noire', 'Le Việt vũ Đạo est un art martial traditionnel, il est donc important de souligner qu\'il n\'existait pas de ceintures dans la pratique des arts martiaux en Asie. L\'introduction de la ceinture, blanche et de couleur, se fait en occident. Elle a pour but de matérialiser un niveau et surtout une hiérarchie dans un club et parmis les pratiquants dans une fédération.\r\n\r\nAu Việt vũ Đạo, nous avons trois ceintures :\r\n\r\n- la blanche : représente le début de l\'apprentissage du VVD. On est un élève.\r\n\r\n- la noire : donne le statut de guide, de professeur. Ce pratiquant est capable d\'enseigner, de transmettre son savoir aux pratiquants ceintures blanches.\r\n\r\n- la blanche et noire : représente les ceintures noires supérieures, à partir du 3ème Đang (il n\'existe que 5 Đang dans notre école). Ce sont eux qui dirigent l\'école de Việt vũ Đạo Tân-Lượng.\r\n'),
(231, 29, '_description_ceintures_noire', 'field_5ac26302a14f4'),
(233, 70, 'field_5ac2647f41f46', 'a:14:{s:3:\"key\";s:19:\"field_5ac2647f41f46\";s:5:\"label\";s:27:\"titre description ceintures\";s:4:\"name\";s:27:\"titre_description_ceintures\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(236, 72, 'titre_description_ceintures', 'Les ceintures du VVD'),
(237, 72, '_titre_description_ceintures', 'field_5ac2647f41f46'),
(238, 72, 'description_ceintures_noire', 'Le Việt vũ Đạo est un art martial traditionnel, il est donc important de souligner qu\'il n\'existait pas de ceintures dans la pratique des arts martiaux en Asie. L\'introduction de la ceinture, blanche et de couleur, se fait en occident. Elle a pour but de matérialiser un niveau et surtout une hiérarchie dans un club et parmis les pratiquants dans une fédération.\r\n\r\nAu Việt vũ Đạo, nous avons trois ceintures :\r\n\r\n- la blanche : représente le début de l\'apprentissage du VVD. On est un élève.\r\n\r\n- la noire : donne le statut de guide, de professeur. Ce pratiquant est capable d\'enseigner, de transmettre son savoir aux pratiquants ceintures blanches.\r\n\r\n- la blanche et noire : représente les ceintures noires supérieures, à partir du 3ème Đang (il n\'existe que 5 Đang dans notre école). Ce sont eux qui dirigent l\'école de Việt vũ Đạo Tân-Lượng.\r\n'),
(239, 72, '_description_ceintures_noire', 'field_5ac26302a14f4'),
(240, 29, 'titre_description_ceintures', 'Les ceintures du VVD'),
(241, 29, '_titre_description_ceintures', 'field_5ac2647f41f46'),
(242, 65, 'ceintures_vvd', ''),
(243, 65, '_ceintures_vvd', 'field_5ac260ea48cf1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-16 10:49:19', '2018-02-16 09:49:19', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-02-16 10:49:19', '2018-02-16 09:49:19', '', 0, 'http://127.0.0.1/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-16 10:49:19', '2018-02-16 09:49:19', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://127.0.0.1/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-02-16 10:49:19', '2018-02-16 09:49:19', '', 0, 'http://127.0.0.1/wordpress/?page_id=2', 0, 'page', '', 0),
(9, 1, '2018-03-18 12:27:52', '2018-03-18 11:27:52', '', 'Présentation de Việt vũ Đạo Club Lyon Gian', '', 'publish', 'closed', 'closed', '', 'presentation', '', '', '2018-03-30 16:12:43', '2018-03-30 14:12:43', '', 0, 'http://127.0.0.1/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-03-18 12:27:52', '2018-03-18 11:27:52', '', 'Le Việt vũ Đạo', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-18 12:27:52', '2018-03-18 11:27:52', '', 9, 'http://127.0.0.1/wordpress/2018/03/18/9-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-03-24 16:07:09', '2018-03-24 15:07:09', '', 'Le Việt vũ Đạo', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-24 16:07:09', '2018-03-24 15:07:09', '', 9, 'http://127.0.0.1/wordpress/2018/03/24/9-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-03-18 12:37:39', '2018-03-18 11:37:39', 'presentation', 'Le Việt vũ Đạo', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-18 12:37:39', '2018-03-18 11:37:39', '', 9, 'http://127.0.0.1/wordpress/2018/03/18/9-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-03-18 12:50:34', '2018-03-18 11:50:34', '', 'baton-long', '', 'inherit', 'open', 'closed', '', 'baton-long', '', '', '2018-03-18 12:50:34', '2018-03-18 11:50:34', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/baton-long.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-03-30 12:14:50', '2018-03-30 10:14:50', '', 'fleau', '', 'inherit', 'open', 'closed', '', 'fleau', '', '', '2018-03-30 12:14:50', '2018-03-30 10:14:50', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/fleau.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-03-18 12:50:35', '2018-03-18 11:50:35', '', 'kiem', '', 'inherit', 'open', 'closed', '', 'kiem', '', '', '2018-03-18 12:50:35', '2018-03-18 11:50:35', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/kiem.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2018-03-18 12:50:36', '2018-03-18 11:50:36', '', 'paysage', '', 'inherit', 'open', 'closed', '', 'paysage', '', '', '2018-03-18 12:50:36', '2018-03-18 11:50:36', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/paysage.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-03-18 12:50:37', '2018-03-18 11:50:37', '', 'paysage-eau', '', 'inherit', 'open', 'closed', '', 'paysage-eau', '', '', '2018-03-18 12:50:37', '2018-03-18 11:50:37', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/paysage-eau.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-03-18 12:50:37', '2018-03-18 11:50:37', '', 'temple', '', 'inherit', 'open', 'closed', '', 'temple-2', '', '', '2018-03-18 12:50:37', '2018-03-18 11:50:37', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/temple.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-03-24 16:25:48', '2018-03-24 15:25:48', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-03-24 16:25:48', '2018-03-24 15:25:48', '', 0, 'http://127.0.0.1/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-03-24 16:25:48', '2018-03-24 15:25:48', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-03-24 16:25:48', '2018-03-24 15:25:48', '', 23, 'http://127.0.0.1/wordpress/2018/03/24/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-03-24 16:28:44', '2018-03-24 15:28:44', '', 'Armes', '', 'publish', 'closed', 'closed', '', 'armes', '', '', '2018-03-30 10:38:47', '2018-03-30 08:38:47', '', 0, 'http://127.0.0.1/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-03-24 16:28:44', '2018-03-24 15:28:44', '', 'Armes', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-24 16:28:44', '2018-03-24 15:28:44', '', 25, 'http://127.0.0.1/wordpress/2018/03/24/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-03-24 16:38:33', '2018-03-24 15:38:33', '', 'vvd-logo', '', 'inherit', 'open', 'closed', '', 'vvd-logo', '', '', '2018-03-24 16:38:33', '2018-03-24 15:38:33', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/vvd-logo.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2018-03-24 16:59:41', '2018-03-24 15:59:41', '', 'les ceintures noires de lyon', '', 'publish', 'closed', 'closed', '', 'ceintures', '', '', '2018-04-02 19:14:16', '2018-04-02 17:14:16', '', 0, 'http://127.0.0.1/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-03-24 16:59:41', '2018-03-24 15:59:41', '', 'les ceintures noires de lyon', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-24 16:59:41', '2018-03-24 15:59:41', '', 29, 'http://127.0.0.1/wordpress/2018/03/24/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-03-24 17:04:33', '2018-03-24 16:04:33', '', 'francis', '', 'inherit', 'open', 'closed', '', 'francis', '', '', '2018-03-24 17:04:33', '2018-03-24 16:04:33', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/francis.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-03-24 17:04:34', '2018-03-24 16:04:34', '', 'jesse', '', 'inherit', 'open', 'closed', '', 'jesse', '', '', '2018-03-24 17:04:34', '2018-03-24 16:04:34', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/jesse.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-03-24 17:22:13', '2018-03-24 16:22:13', '', 'reglement', '', 'publish', 'closed', 'closed', '', 'reglement', '', '', '2018-03-24 17:22:13', '2018-03-24 16:22:13', '', 0, 'http://127.0.0.1/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-03-24 17:22:13', '2018-03-24 16:22:13', '', 'reglement', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-03-24 17:22:13', '2018-03-24 16:22:13', '', 34, 'http://127.0.0.1/wordpress/2018/03/24/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-03-24 17:25:32', '2018-03-24 16:25:32', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-03-24 17:25:32', '2018-03-24 16:25:32', '', 0, 'http://127.0.0.1/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-03-24 17:25:32', '2018-03-24 16:25:32', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-03-24 17:25:32', '2018-03-24 16:25:32', '', 36, 'http://127.0.0.1/wordpress/2018/03/24/36-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-04-02 18:19:20', '2018-04-02 16:19:20', '', 'Ceintures', '', 'publish', 'closed', 'closed', '', 'acf_ceintures', '', '', '2018-04-02 18:58:05', '2018-04-02 16:58:05', '', 0, 'http://127.0.0.1/wordpress/?post_type=acf&#038;p=61', 0, 'acf', '', 0),
(43, 5, '2018-03-24 17:40:24', '2018-03-24 16:40:24', '', 'vvd-logo', '', 'inherit', 'open', 'closed', '', 'vvd-logo-2', '', '', '2018-03-24 17:40:24', '2018-03-24 16:40:24', '', 25, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/03/vvd-logo-1.png', 0, 'attachment', 'image/png', 0),
(44, 5, '2018-03-24 17:40:29', '2018-03-24 16:40:29', '', 'Armes', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-24 17:40:29', '2018-03-24 16:40:29', '', 25, 'http://127.0.0.1/wordpress/2018/03/24/25-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-03-30 10:25:33', '2018-03-30 08:25:33', 'Appelé en Français le fléau, cette arme est avant tout un outils agricole comme l\'indique le nom en Viêtnamien : Nông qui veut dire agricole et cụ traduit par outils.A l\'époque de l\'apparition du Việt vũ Đạo, les armes étaient strictement interdites dans le pays. C\'est pour cela que le fléau a cette petite taille. En effet, il pouvait aisément être dissimulé dans les manches des habitants.Cet outils, fait en bois, servait à battre les céréales comme on le faisait en France ou dans un grand nombre de pays. A la base, il y avait un brin plus long que l\'autre. L\'un servait à battre les céréales et l\'autre servait de manche (le plus long).Par la suite et pour des raisons pratiques, cet outils fut raccourci et équilibré de façon à pouvoir utiliser les deux brins sans aucuns soucis.Les deux brins sont relìs entre eux par une chaîne (bien souvent), comme c\'était le cas lorqu\'ils servaient d\'outils, ou par une corde. Il en existe en mousse pour les débutants ou ceux qui aurait peur de prendre quelques coups de bâton !', 'Nông gia cụ', '', 'publish', 'closed', 'closed', '', 'arme-test', '', '', '2018-03-30 12:15:19', '2018-03-30 10:15:19', '', 0, 'http://127.0.0.1/wordpress/?post_type=armes&#038;p=47', 0, 'armes', '', 0),
(49, 1, '2018-03-30 11:02:50', '2018-03-30 09:02:50', 'Appelé en Français bâton long, c\'est avant tout le prolongement de notre corps.En effet, à l\'origine il sert à atteindre les branches des arbres les plus hautes. Il peut servir aussi à décupler notre force notamment en permettent de porter plus de charges et plus lourdes, il sert de levier... Cet instrument de travail permet aussi au veillards de se mouvoir plus facilement, il sert d\'appuis. Servant à travailler, cette arme n\'a pu être interdite par les Mings(dynastie chinoise) et permit aux paysans de se défendre.', 'Cây Tre', '', 'publish', 'closed', 'closed', '', 'cay-tre', '', '', '2018-03-30 11:13:10', '2018-03-30 09:13:10', '', 0, 'http://127.0.0.1/wordpress/?post_type=armes&#038;p=49', 0, 'armes', '', 0),
(50, 1, '2018-03-30 11:04:42', '2018-03-30 09:04:42', 'Cette arme, réservée aux ceintures noires, est certainement la plus exigente.En effet, elle tranche et ne laisse pas le droit aux doutes où à l\'approximation. Pour cela, il est nécessaire d\'avoir appris les positions de bases à mains nues, puis avec armes, notamment avec le bâton long.Le maniement simple n\'existe pas au VVD, le sabre ne sort du foureau uniquement pour couper. Toutes les techniques sont apprises à mains nues en le mimant. Le travail de coupe est réservé aux 3ème đang minimum.', 'Kiếm', '', 'publish', 'closed', 'closed', '', 'kiem-2', '', '', '2018-03-30 11:22:24', '2018-03-30 09:22:24', '', 0, 'http://127.0.0.1/wordpress/?post_type=armes&#038;p=50', 0, 'armes', '', 0),
(51, 1, '2018-03-30 11:05:10', '2018-03-30 09:05:10', '<p style=\"text-align: left;\">Cette discipline comporte plusieurs volets :\r\n- l\'histoire du Viêtnam et du Việt vũ Đạo\r\n- la mythologie asiatique\r\n- la stratégie militaire\r\nCette discipline reste une ouverture sur le monde extérieur ainsi qu\'une passerelle vers le bien-être.</p>', 'Triết', '', 'publish', 'closed', 'closed', '', 'triet', '', '', '2018-04-02 18:53:56', '2018-04-02 16:53:56', '', 0, 'http://127.0.0.1/wordpress/?post_type=armes&#038;p=51', 0, 'armes', '', 0),
(52, 1, '2018-03-30 11:05:48', '2018-03-30 09:05:48', 'Cela veut dire : combats mains nues. Elle englobe toutes les techniques de quyên, les techniques libres de défense, la self défense et les combats à mains nus.', 'Đấu tay không', '', 'publish', 'closed', 'closed', '', 'dau-tay-khong', '', '', '2018-03-30 11:05:48', '2018-03-30 09:05:48', '', 0, 'http://127.0.0.1/wordpress/?post_type=armes&#038;p=52', 0, 'armes', '', 0),
(53, 1, '2018-03-30 11:12:48', '2018-03-30 09:12:48', '', 'Armes', '', 'publish', 'closed', 'closed', '', 'acf_armes', '', '', '2018-03-30 11:19:28', '2018-03-30 09:19:28', '', 0, 'http://127.0.0.1/wordpress/?post_type=acf&#038;p=53', 0, 'acf', '', 0),
(55, 1, '2018-03-30 15:13:10', '2018-03-30 13:13:10', '', 'Présentation', '', 'publish', 'closed', 'closed', '', 'acf_presentation', '', '', '2018-04-02 18:49:07', '2018-04-02 16:49:07', '', 0, 'http://127.0.0.1/wordpress/?post_type=acf&#038;p=55', 0, 'acf', '', 0),
(56, 1, '2018-03-30 15:22:24', '2018-03-30 13:22:24', '', 'Le Việt vũ Đạo', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-30 15:22:24', '2018-03-30 13:22:24', '', 9, 'http://127.0.0.1/wordpress/2018/03/30/9-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-03-30 16:02:16', '2018-03-30 14:02:16', '', 'Le Việt vũ Đạo', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-30 16:02:16', '2018-03-30 14:02:16', '', 9, 'http://127.0.0.1/wordpress/2018/03/30/9-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-03-30 16:04:39', '2018-03-30 14:04:39', '', 'Le Việt vũ Đạo', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-30 16:04:39', '2018-03-30 14:04:39', '', 9, 'http://127.0.0.1/wordpress/2018/03/30/9-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-03-30 16:12:25', '2018-03-30 14:12:25', '', 'Présentation de Việt vũ Đạo Club Lyon Gian Read', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-30 16:12:25', '2018-03-30 14:12:25', '', 9, 'http://127.0.0.1/wordpress/2018/03/30/9-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-03-30 16:12:43', '2018-03-30 14:12:43', '', 'Présentation de Việt vũ Đạo Club Lyon Gian', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-30 16:12:43', '2018-03-30 14:12:43', '', 9, 'http://127.0.0.1/wordpress/2018/03/30/9-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-04-02 18:22:32', '2018-04-02 16:22:32', 'Instructeur Fédéral de VVD depuis 2006, diplômé du CAFA (2006) et détenteur du diplôme International de VVD depuis 2010.', 'Francis Chauffour CN Việt vũ Đạo 3ème Đang / 15 Câp Võ Cỏ Truyến', '', 'publish', 'closed', 'closed', '', 'francis-chauffour-cn-viet-vu-dao-3eme-dang-15-cap-vo-co-truyen', '', '', '2018-04-02 18:30:30', '2018-04-02 16:30:30', '', 0, 'http://127.0.0.1/wordpress/?post_type=ceintures&#038;p=64', 0, 'ceintures', '', 0),
(65, 1, '2018-04-02 18:50:47', '2018-04-02 16:50:47', '<p style=\"text-align: center;\">Obtention du CAFA en 2014</p>\r\n<p style=\"text-align: center;\">1ère Đang en 2016</p>\r\n<p style=\"text-align: center;\"></p>', 'Jessica Maroud CN Việt Vũ Đạo 1ère Đang', '', 'publish', 'closed', 'closed', '', 'jessica-maroud-cn-viet-vu-dao-1ere-dang', '', '', '2018-04-02 19:19:19', '2018-04-02 17:19:19', '', 0, 'http://127.0.0.1/wordpress/?post_type=ceintures&#038;p=65', 0, 'ceintures', '', 0),
(66, 1, '2018-04-02 18:59:22', '2018-04-02 16:59:22', 'fuhdsoifjdspof', 'les ceintures noires de lyon', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-04-02 18:59:22', '2018-04-02 16:59:22', '', 29, 'http://127.0.0.1/wordpress/2018/04/02/29-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-04-02 18:59:53', '2018-04-02 16:59:53', '', 'les ceintures noires de lyon', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-04-02 18:59:53', '2018-04-02 16:59:53', '', 29, 'http://127.0.0.1/wordpress/2018/04/02/29-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-04-02 19:02:03', '2018-04-02 17:02:03', '', 'les ceintures noires de lyon', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-04-02 19:02:03', '2018-04-02 17:02:03', '', 29, 'http://127.0.0.1/wordpress/2018/04/02/29-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-04-02 19:06:43', '2018-04-02 17:06:43', '', 'description ceintures noire', '', 'publish', 'closed', 'closed', '', 'acf_description-ceintures-noire', '', '', '2018-04-02 19:13:27', '2018-04-02 17:13:27', '', 0, 'http://127.0.0.1/wordpress/?post_type=acf&#038;p=70', 0, 'acf', '', 0),
(71, 1, '2018-04-02 19:07:10', '2018-04-02 17:07:10', '', 'les ceintures noires de lyon', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-04-02 19:07:10', '2018-04-02 17:07:10', '', 29, 'http://127.0.0.1/wordpress/2018/04/02/29-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-04-02 19:13:54', '2018-04-02 17:13:54', '', 'les ceintures noires de lyon', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-04-02 19:13:54', '2018-04-02 17:13:54', '', 29, 'http://127.0.0.1/wordpress/2018/04/02/29-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(81, 5, 'locale', ''),
(82, 5, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(83, 5, 'wp_user_level', '7'),
(84, 5, 'dismissed_wp_pointers', ''),
(86, 5, 'wp_dashboard_quick_press_last_post_id', '42'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '46'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1521909036'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(80, 5, 'show_admin_bar_front', 'true'),
(79, 5, 'use_ssl', '0'),
(78, 5, 'admin_color', 'fresh'),
(77, 5, 'comment_shortcuts', 'false'),
(85, 5, 'session_tokens', 'a:1:{s:64:\"cdf2415eaff553e2c8ef9e6043ca405dcb5f1ab24b0c2b04381b578f410a2a6b\";a:4:{s:10:\"expiration\";i:1522082400;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36\";s:5:\"login\";i:1521909600;}}'),
(45, 3, 'use_ssl', '0'),
(44, 3, 'admin_color', 'fresh'),
(43, 3, 'comment_shortcuts', 'false'),
(42, 3, 'syntax_highlighting', 'true'),
(41, 3, 'rich_editing', 'true'),
(40, 3, 'description', ''),
(39, 3, 'last_name', ''),
(38, 3, 'first_name', ''),
(37, 3, 'nickname', 'user'),
(46, 3, 'show_admin_bar_front', 'true'),
(47, 3, 'locale', ''),
(48, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(49, 3, 'wp_user_level', '0'),
(50, 3, 'dismissed_wp_pointers', ''),
(53, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(76, 5, 'syntax_highlighting', 'true'),
(75, 5, 'rich_editing', 'true'),
(74, 5, 'description', ''),
(73, 5, 'last_name', ''),
(72, 5, 'first_name', ''),
(71, 5, 'nickname', 'editeur'),
(87, 5, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(88, 5, 'wp_user-settings', 'libraryContent=browse'),
(89, 5, 'wp_user-settings-time', '1521909625'),
(90, 1, 'session_tokens', 'a:1:{s:64:\"54e6dd054357c497edb6fcd408422f0bb3055e2b76e818b6a6ebd2ed97c791c5\";a:4:{s:10:\"expiration\";i:1523047291;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522874491;}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BH4Lgo21NEV7OGw4S.Id07HqmDHpVm1', 'root', 'test@test.com', '', '2018-02-16 09:49:19', '', 0, 'root'),
(3, 'user', '$P$B1bPCaDXmLroP6DSZedj7xQ5K.bNxB1', 'user', 'user@user.com', '', '2018-03-18 12:06:52', '1521374813:$P$BfP.bN7f.fkB0.rlUEZzEAxgEU/5.5/', 0, 'user'),
(5, 'editeur', '$P$B2jPxV597rETod6QjlALROHyVjy7M81', 'editeur', 'editeur@test.com', '', '2018-03-24 16:39:51', '', 0, 'editeur');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
