-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 19 Avril 2018 à 15:50
-- Version du serveur :  5.7.21-0ubuntu0.17.10.1
-- Version de PHP :  7.1.15-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wdmdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-10 09:09:34', '2018-04-10 09:09:34', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_nextend2_image_storage`
--

CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `image` text NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_nextend2_image_storage`
--

INSERT INTO `wp_nextend2_image_storage` (`id`, `hash`, `image`, `value`) VALUES
(1, '860b827832181c3af6a15c0032c5434c', '$upload$/2018/04/laioli.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(2, '7464bffd13f2e44208936a4d4648534b', '$upload$/2018/04/food-1330531_1920.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(3, '42a1640e576b44450cb49e9b1bbd33e5', '$upload$/2018/04/restau.jpeg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(4, '0ca60eaa551ab09c69721c7f27390df0', '$upload$/2018/04/cheese-3265466_1920.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(5, '403215cb3a28a767d45e59b3e648f8dd', '$upload$/2018/04/fish-2366925_1920.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(6, '674805fcc4911636624e88a8832a2ce4', '$upload$/2018/04/food-1330531_1920-1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(7, '77a6d6deb98af87c71b8d65e5d77101a', '$upload$/2018/04/laioli-1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(8, '3a0f75965ae29713fdf589220f1f68f0', '$upload$/2018/04/salmon-1238667_1920.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');

-- --------------------------------------------------------

--
-- Structure de la table `wp_nextend2_section_storage`
--

CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL,
  `application` varchar(20) NOT NULL,
  `section` varchar(128) NOT NULL,
  `referencekey` varchar(128) NOT NULL,
  `value` mediumtext NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  `editable` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_nextend2_section_storage`
--

INSERT INTO `wp_nextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'system', 'global', 'n2_ss3_version', '3.2.14', 1, 1),
(10001, 'smartslider', 'sliderChanged', '2', '0', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_nextend2_smartslider3_generators`
--

CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL,
  `group` varchar(254) NOT NULL,
  `type` varchar(254) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_nextend2_smartslider3_sliders`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `params` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_nextend2_smartslider3_sliders`
--

INSERT INTO `wp_nextend2_smartslider3_sliders` (`id`, `alias`, `title`, `type`, `params`, `time`, `thumbnail`, `ordering`) VALUES
(1, NULL, 'Sample Slider', 'simple', '{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"controlsTilt\":\"0\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"600\",\"animation-delay\":\"0\",\"animation-easing\":\"easeOutQuad\",\"animation-parallax\":\"1\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"animation-shifted-background-animation\":\"auto\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"carousel\":\"1\",\"background\":\"\",\"background-fixed\":\"0\",\"background-size\":\"cover\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"backgroundVideoMode\":\"fill\",\"dynamic-height\":\"0\",\"loop-single-slide\":\"0\",\"padding\":\"0|*|0|*|0|*|0\",\"border-width\":\"0\",\"border-color\":\"3E3E3Eff\",\"border-radius\":\"0\",\"slider-preset\":\"\",\"slider-css\":\"\",\"slide-css\":\"\",\"width\":\"1200\",\"height\":\"600\",\"desktop-portrait-minimum-font-size\":\"1\",\"desktop-landscape\":\"0\",\"desktop-landscape-width\":\"1440\",\"desktop-landscape-height\":\"0\",\"desktop-landscape-minimum-font-size\":\"1\",\"fontsize\":\"16\",\"desktop\":\"1\",\"tablet\":\"1\",\"mobile\":\"1\",\"margin\":\"0|*|0|*|0|*|0\",\"tablet-portrait\":\"0\",\"tablet-portrait-width\":\"800\",\"tablet-portrait-height\":\"0\",\"tablet-portrait-minimum-font-size\":\"1\",\"tablet-landscape\":\"0\",\"tablet-landscape-width\":\"1024\",\"tablet-landscape-height\":\"0\",\"tablet-landscape-minimum-font-size\":\"1\",\"mobile-portrait\":\"0\",\"mobile-portrait-width\":\"440\",\"mobile-portrait-height\":\"0\",\"mobile-portrait-minimum-font-size\":\"1\",\"mobile-landscape\":\"0\",\"mobile-landscape-width\":\"740\",\"mobile-landscape-height\":\"0\",\"mobile-landscape-minimum-font-size\":\"1\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"1\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStart\":\"1\",\"autoplayfinish\":\"0|*|loop|*|current\",\"autoplayAllowReStart\":\"0\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"playfirstlayer\":\"1\",\"playonce\":\"0\",\"layer-animation-play-in\":\"end\",\"layer-animation-play-mode\":\"skippable\",\"parallax-enabled\":\"1\",\"parallax-enabled-mobile\":\"0\",\"parallax-3d\":\"0\",\"parallax-animate\":\"1\",\"parallax-horizontal\":\"mouse\",\"parallax-vertical\":\"mouse\",\"parallax-mouse-origin\":\"slider\",\"parallax-scroll-move\":\"both\",\"perspective\":\"1000\",\"imageload\":\"0\",\"imageloadNeighborSlides\":\"0\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"layer-image-optimize\":\"0\",\"layer-image-tablet\":\"50\",\"layer-image-mobile\":\"30\",\"layer-image-base64\":\"0\",\"layer-image-base64-size\":\"5\",\"playWhenVisible\":\"1\",\"fadeOnLoad\":\"1\",\"fadeOnScroll\":\"0\",\"spinner\":\"simpleWhite\",\"custom-spinner\":\"\",\"custom-spinner-width\":\"100\",\"custom-spinner-height\":\"100\",\"custom-display\":\"1\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"randomize\":\"0\",\"randomizeFirst\":\"0\",\"randomize-cache\":\"1\",\"variations\":\"5\",\"maximumslidecount\":\"1000\",\"global-lightbox\":\"0\",\"global-lightbox-label\":\"0\",\"maintain-session\":\"0\",\"blockrightclick\":\"0\",\"overflow-hidden-page\":\"0\",\"scroll-fix\":\"0\",\"bg-parallax-tablet\":\"1\",\"bg-parallax-mobile\":\"1\",\"callbacks\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-desktop\":\"1\",\"widget-arrow-display-tablet\":\"1\",\"widget-arrow-display-mobile\":\"1\",\"widget-arrow-exclude-slides\":\"\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-responsive-desktop\":\"1\",\"widget-arrow-responsive-tablet\":\"0.7\",\"widget-arrow-responsive-mobile\":\"0.5\",\"widget-arrow-previous-image\":\"\",\"widget-arrow-previous\":\"$ss$/plugins/widgetarrow/image/image/previous/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-animation\":\"fade\",\"widget-arrow-mirror\":\"1\",\"widget-arrow-next-image\":\"\",\"widget-arrow-next\":\"$ss$/plugins/widgetarrow/image/image/next/thin-horizontal.svg\",\"widget-arrow-next-color\":\"ffffffcc\",\"widget-arrow-next-hover\":\"0\",\"widget-arrow-next-hover-color\":\"ffffffcc\",\"widgetbullet\":\"transition\",\"widget-bullet-display-desktop\":\"1\",\"widget-bullet-display-tablet\":\"1\",\"widget-bullet-display-mobile\":\"1\",\"widget-bullet-exclude-slides\":\"\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"1\",\"widget-bullet-thumbnail-width\":\"120\",\"widget-bullet-thumbnail-height\":\"81\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDsifV19\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"12\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-action\":\"click\",\"widget-bullet-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJwYWRkaW5nIjoiNXwqfDV8Knw1fCp8NXwqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiI1MCIsImV4dHJhIjoibWFyZ2luOiA0cHg7In0seyJleHRyYSI6IiIsImJhY2tncm91bmRjb2xvciI6IjA5YjQ3NGZmIn1dfQ==\",\"widget-bullet-bar\":\"\",\"widget-bullet-bar-full-size\":\"0\",\"widget-bullet-align\":\"center\",\"widget-bullet-orientation\":\"auto\",\"widget-bullet-overlay\":\"0\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-desktop\":\"1\",\"widget-autoplay-display-tablet\":\"1\",\"widget-autoplay-display-mobile\":\"1\",\"widget-autoplay-exclude-slides\":\"\",\"widget-autoplay-display-hover\":\"0\",\"widgetindicator\":\"disabled\",\"widget-indicator-display-desktop\":\"1\",\"widget-indicator-display-tablet\":\"1\",\"widget-indicator-display-mobile\":\"1\",\"widget-indicator-exclude-slides\":\"\",\"widget-indicator-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-desktop\":\"1\",\"widget-bar-display-tablet\":\"1\",\"widget-bar-display-mobile\":\"1\",\"widget-bar-exclude-slides\":\"\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-desktop\":\"1\",\"widget-thumbnail-display-tablet\":\"1\",\"widget-thumbnail-display-mobile\":\"1\",\"widget-thumbnail-exclude-slides\":\"\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-show-image\":\"1\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widget-shadow-display-desktop\":\"1\",\"widget-shadow-display-tablet\":\"1\",\"widget-shadow-display-mobile\":\"1\",\"widget-shadow-exclude-slides\":\"\",\"widgetfullscreen\":\"disabled\",\"widget-fullscreen-display-desktop\":\"1\",\"widget-fullscreen-display-tablet\":\"1\",\"widget-fullscreen-display-mobile\":\"1\",\"widget-fullscreen-exclude-slides\":\"\",\"widget-fullscreen-display-hover\":\"0\",\"widgethtml\":\"disabled\",\"widget-html-display-desktop\":\"1\",\"widget-html-display-tablet\":\"1\",\"widget-html-display-mobile\":\"1\",\"widget-html-exclude-slides\":\"\",\"widget-html-display-hover\":\"0\",\"widgets\":\"arrow\"}', '2015-11-01 14:14:20', '', 0),
(2, NULL, 'Diaporama', 'simple', '{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"width\":\"1200\",\"height\":\"500\",\"fontsize\":\"16\",\"margin\":\"0|*|0|*|0|*|0\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"1\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"1\",\"autoplayDuration\":\"1000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"overflow-hidden-page\":\"0\",\"clear-both\":\"0\",\"callbacks\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-hover\":\"1\",\"widget-arrow-previous\":\"$ss$\\/plugins\\/widgetarrow\\/image\\/image\\/previous\\/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widgetbullet\":\"disabled\",\"widget-bullet-display-hover\":\"1\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"100\",\"widget-bullet-thumbnail-height\":\"20\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDtiYWNrZ3JvdW5kLXNpemU6Y292ZXI7In1dfQ==\",\"widget-bullet-thumbnail-side\":\"before\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-hover\":\"1\",\"widgetbar\":\"disabled\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"shadow\",\"widget-shadow-shadow\":\"$ss$\\/plugins\\/widgetshadow\\/shadow\\/shadow\\/shadow\\/curved.png\",\"widgets\":\"shadow\"}', '2018-04-11 12:46:30', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_nextend2_smartslider3_sliders_xref`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_nextend2_smartslider3_sliders_xref`
--

INSERT INTO `wp_nextend2_smartslider3_sliders_xref` (`group_id`, `slider_id`, `ordering`) VALUES
(0, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_nextend2_smartslider3_slides`
--

CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_nextend2_smartslider3_slides`
--

INSERT INTO `wp_nextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(1, 'Slide One', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Martin Dwyer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Martin Dwyer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Application Developer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Application Developer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/developerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/programmer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 0, 0),
(2, 'Slide Two', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Rachel Wright\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Rachel Wright\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Art Director & Photographer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Art Director & Photographer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/artdirectorthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/free1.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 1, 0),
(3, 'Slide Three', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Andrew Butler\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Andrew Butler\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Photographer & Illustrator\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Photographer & Illustrator\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/photographerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/photographer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 2, 0),
(5, 'food-1330531_1920', 2, '2018-04-10 12:48:06', '2028-04-11 12:48:06', 1, 0, '[]', '', '$upload$/2018/04/food-1330531_1920.jpg', '{\"backgroundImage\":\"$upload$\\/2018\\/04\\/food-1330531_1920.jpg\",\"version\":\"3.2.14\"}', 1, 0),
(7, 'cheese-3265466_1920', 2, '2018-04-10 12:48:30', '2028-04-11 12:48:30', 1, 0, '[]', '', '$upload$/2018/04/cheese-3265466_1920.jpg', '{\"backgroundImage\":\"$upload$\\/2018\\/04\\/cheese-3265466_1920.jpg\",\"version\":\"3.2.14\"}', 3, 0),
(8, 'fish-2366925_1920', 2, '2018-04-10 12:48:30', '2028-04-11 12:48:30', 1, 0, '[]', '', '$upload$/2018/04/fish-2366925_1920.jpg', '{\"backgroundImage\":\"$upload$\\/2018\\/04\\/fish-2366925_1920.jpg\",\"version\":\"3.2.14\"}', 4, 0),
(9, 'food-1330531_1920', 2, '2018-04-10 12:48:30', '2028-04-11 12:48:30', 1, 0, '[]', '', '$upload$/2018/04/food-1330531_1920-1.jpg', '{\"backgroundImage\":\"$upload$\\/2018\\/04\\/food-1330531_1920-1.jpg\",\"version\":\"3.2.14\"}', 5, 0),
(11, 'salmon-1238667_1920', 2, '2018-04-10 12:48:30', '2028-04-11 12:48:30', 1, 0, '[]', '', '$upload$/2018/04/salmon-1238667_1920.jpg', '{\"backgroundImage\":\"$upload$\\/2018\\/04\\/salmon-1238667_1920.jpg\",\"version\":\"3.2.14\"}', 7, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci,
  `key` longtext COLLATE utf8mb4_unicode_520_ci,
  `type` longtext COLLATE utf8mb4_unicode_520_ci,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'save', 1, 1, '2018-04-10 12:52:02', '2018-04-10 14:52:02'),
(2, '', '', 'email', 1, 1, '2018-04-10 12:52:02', '2018-04-10 14:52:02'),
(3, '', '', 'email', 1, 1, '2018-04-10 12:52:02', '2018-04-10 14:52:02'),
(4, '', '', 'successmessage', 1, 1, '2018-04-10 12:52:03', '2018-04-10 14:52:03');

-- --------------------------------------------------------

--
-- Structure de la table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Store Submission'),
(2, 1, 'objectType', 'Action'),
(3, 1, 'objectDomain', 'actions'),
(4, 1, 'editActive', ''),
(5, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(6, 1, 'payment_gateways', ''),
(7, 1, 'payment_total', '0'),
(8, 1, 'tag', ''),
(9, 1, 'to', '{wp:admin_email}'),
(10, 1, 'email_subject', 'Formulaires Ninja'),
(11, 1, 'email_message', '{fields_table}'),
(12, 1, 'from_name', ''),
(13, 1, 'from_address', ''),
(14, 1, 'reply_to', ''),
(15, 1, 'email_format', 'html'),
(16, 1, 'cc', ''),
(17, 1, 'bcc', ''),
(18, 1, 'attach_csv', ''),
(19, 1, 'redirect_url', ''),
(20, 1, 'email_message_plain', ''),
(21, 2, 'label', 'Email Confirmation'),
(22, 2, 'to', '{field:email}'),
(23, 2, 'subject', 'This is an email action.'),
(24, 2, 'message', 'Hello, Ninja Forms!'),
(25, 2, 'objectType', 'Action'),
(26, 2, 'objectDomain', 'actions'),
(27, 2, 'editActive', ''),
(28, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(29, 2, 'payment_gateways', ''),
(30, 2, 'payment_total', '0'),
(31, 2, 'tag', ''),
(32, 2, 'email_subject', 'Submission Confirmation '),
(33, 2, 'email_message', '<p>{all_fields_table}<br></p>'),
(34, 2, 'from_name', ''),
(35, 2, 'from_address', ''),
(36, 2, 'reply_to', ''),
(37, 2, 'email_format', 'html'),
(38, 2, 'cc', ''),
(39, 2, 'bcc', ''),
(40, 2, 'attach_csv', ''),
(41, 2, 'email_message_plain', ''),
(42, 3, 'objectType', 'Action'),
(43, 3, 'objectDomain', 'actions'),
(44, 3, 'editActive', ''),
(45, 3, 'label', 'Email Notification'),
(46, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(47, 3, 'payment_gateways', ''),
(48, 3, 'payment_total', '0'),
(49, 3, 'tag', ''),
(50, 3, 'to', '{system:admin_email}'),
(51, 3, 'email_subject', 'New message from {field:prenom_1523376227286}'),
(52, 3, 'email_message', '<p>{field:message}</p><p>-{field:prenom_1523376227286} ( {field:email} )</p>'),
(53, 3, 'from_name', ''),
(54, 3, 'from_address', ''),
(55, 3, 'reply_to', '{field:email}'),
(56, 3, 'email_format', 'html'),
(57, 3, 'cc', ''),
(58, 3, 'bcc', ''),
(59, 3, 'attach_csv', '0'),
(60, 3, 'email_message_plain', ''),
(61, 4, 'label', 'Success Message'),
(62, 4, 'message', 'Thank you {field:prenom_1523376227286} for filling out my form!'),
(63, 4, 'objectType', 'Action'),
(64, 4, 'objectDomain', 'actions'),
(65, 4, 'editActive', ''),
(66, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(67, 4, 'payment_gateways', ''),
(68, 4, 'payment_total', '0'),
(69, 4, 'tag', ''),
(70, 4, 'to', '{wp:admin_email}'),
(71, 4, 'email_subject', 'Formulaires Ninja'),
(72, 4, 'email_message', '{fields_table}'),
(73, 4, 'from_name', ''),
(74, 4, 'from_address', ''),
(75, 4, 'reply_to', ''),
(76, 4, 'email_format', 'html'),
(77, 4, 'cc', ''),
(78, 4, 'bcc', ''),
(79, 4, 'attach_csv', ''),
(80, 4, 'redirect_url', ''),
(81, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(82, 4, 'email_message_plain', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext COLLATE utf8mb4_unicode_520_ci,
  `key` longtext COLLATE utf8mb4_unicode_520_ci,
  `type` longtext COLLATE utf8mb4_unicode_520_ci,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Prénom', 'prenom_1523376227286', 'textbox', 1, '2018-04-10 16:04:25', '2018-04-10 14:52:02'),
(2, 'Email', 'email', 'email', 1, '2018-04-10 16:04:25', '2018-04-10 14:52:02'),
(3, 'Message', 'message', 'textarea', 1, '2018-04-10 16:04:25', '2018-04-10 14:52:02'),
(4, 'Envoyer', 'envoyer_1523376243720', 'submit', 1, '2018-04-10 16:04:25', '2018-04-10 14:52:02'),
(5, 'Nom', 'firstname_1523376253592', 'firstname', 1, '2018-04-10 16:04:25', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 5, 'objectType', 'Field'),
(2, 5, 'objectDomain', 'fields'),
(3, 5, 'editActive', ''),
(4, 5, 'order', '1'),
(5, 5, 'label', 'Nom'),
(6, 5, 'type', 'firstname'),
(7, 5, 'key', 'firstname_1523376253592'),
(8, 5, 'label_pos', 'default'),
(9, 5, 'required', ''),
(10, 5, 'default', ''),
(11, 5, 'placeholder', ''),
(12, 5, 'container_class', ''),
(13, 5, 'element_class', ''),
(14, 5, 'admin_label', ''),
(15, 5, 'help_text', ''),
(16, 5, 'custom_name_attribute', 'fname'),
(17, 1, 'objectType', 'Field'),
(18, 1, 'objectDomain', 'fields'),
(19, 1, 'editActive', ''),
(20, 1, 'order', '2'),
(21, 1, 'label', 'Prénom'),
(22, 1, 'key', 'prenom_1523376227286'),
(23, 1, 'type', 'textbox'),
(24, 1, 'created_at', '2018-04-10 14:52:02'),
(25, 1, 'label_pos', 'above'),
(26, 1, 'required', '1'),
(27, 1, 'placeholder', ''),
(28, 1, 'default', ''),
(29, 1, 'wrapper_class', ''),
(30, 1, 'element_class', ''),
(31, 1, 'container_class', ''),
(32, 1, 'input_limit', ''),
(33, 1, 'input_limit_type', 'characters'),
(34, 1, 'input_limit_msg', 'Character(s) left'),
(35, 1, 'manual_key', ''),
(36, 1, 'disable_input', ''),
(37, 1, 'admin_label', ''),
(38, 1, 'help_text', ''),
(39, 1, 'desc_text', ''),
(40, 1, 'disable_browser_autocomplete', ''),
(41, 1, 'mask', ''),
(42, 1, 'custom_mask', ''),
(43, 1, 'wrap_styles_background-color', ''),
(44, 1, 'wrap_styles_border', ''),
(45, 1, 'wrap_styles_border-style', ''),
(46, 1, 'wrap_styles_border-color', ''),
(47, 1, 'wrap_styles_color', ''),
(48, 1, 'wrap_styles_height', ''),
(49, 1, 'wrap_styles_width', ''),
(50, 1, 'wrap_styles_font-size', ''),
(51, 1, 'wrap_styles_margin', ''),
(52, 1, 'wrap_styles_padding', ''),
(53, 1, 'wrap_styles_display', ''),
(54, 1, 'wrap_styles_float', ''),
(55, 1, 'wrap_styles_show_advanced_css', '0'),
(56, 1, 'wrap_styles_advanced', ''),
(57, 1, 'label_styles_background-color', ''),
(58, 1, 'label_styles_border', ''),
(59, 1, 'label_styles_border-style', ''),
(60, 1, 'label_styles_border-color', ''),
(61, 1, 'label_styles_color', ''),
(62, 1, 'label_styles_height', ''),
(63, 1, 'label_styles_width', ''),
(64, 1, 'label_styles_font-size', ''),
(65, 1, 'label_styles_margin', ''),
(66, 1, 'label_styles_padding', ''),
(67, 1, 'label_styles_display', ''),
(68, 1, 'label_styles_float', ''),
(69, 1, 'label_styles_show_advanced_css', '0'),
(70, 1, 'label_styles_advanced', ''),
(71, 1, 'element_styles_background-color', ''),
(72, 1, 'element_styles_border', ''),
(73, 1, 'element_styles_border-style', ''),
(74, 1, 'element_styles_border-color', ''),
(75, 1, 'element_styles_color', ''),
(76, 1, 'element_styles_height', ''),
(77, 1, 'element_styles_width', ''),
(78, 1, 'element_styles_font-size', ''),
(79, 1, 'element_styles_margin', ''),
(80, 1, 'element_styles_padding', ''),
(81, 1, 'element_styles_display', ''),
(82, 1, 'element_styles_float', ''),
(83, 1, 'element_styles_show_advanced_css', '0'),
(84, 1, 'element_styles_advanced', ''),
(85, 1, 'cellcid', 'c3277'),
(86, 1, 'custom_name_attribute', ''),
(87, 1, 'drawerDisabled', ''),
(88, 2, 'objectType', 'Field'),
(89, 2, 'objectDomain', 'fields'),
(90, 2, 'editActive', ''),
(91, 2, 'order', '3'),
(92, 2, 'label', 'Email'),
(93, 2, 'key', 'email'),
(94, 2, 'type', 'email'),
(95, 2, 'created_at', '2018-04-10 14:52:02'),
(96, 2, 'label_pos', 'above'),
(97, 2, 'required', '1'),
(98, 2, 'placeholder', ''),
(99, 2, 'default', ''),
(100, 2, 'wrapper_class', ''),
(101, 2, 'element_class', ''),
(102, 2, 'container_class', ''),
(103, 2, 'admin_label', ''),
(104, 2, 'help_text', ''),
(105, 2, 'desc_text', ''),
(106, 2, 'wrap_styles_background-color', ''),
(107, 2, 'wrap_styles_border', ''),
(108, 2, 'wrap_styles_border-style', ''),
(109, 2, 'wrap_styles_border-color', ''),
(110, 2, 'wrap_styles_color', ''),
(111, 2, 'wrap_styles_height', ''),
(112, 2, 'wrap_styles_width', ''),
(113, 2, 'wrap_styles_font-size', ''),
(114, 2, 'wrap_styles_margin', ''),
(115, 2, 'wrap_styles_padding', ''),
(116, 2, 'wrap_styles_display', ''),
(117, 2, 'wrap_styles_float', ''),
(118, 2, 'wrap_styles_show_advanced_css', '0'),
(119, 2, 'wrap_styles_advanced', ''),
(120, 2, 'label_styles_background-color', ''),
(121, 2, 'label_styles_border', ''),
(122, 2, 'label_styles_border-style', ''),
(123, 2, 'label_styles_border-color', ''),
(124, 2, 'label_styles_color', ''),
(125, 2, 'label_styles_height', ''),
(126, 2, 'label_styles_width', ''),
(127, 2, 'label_styles_font-size', ''),
(128, 2, 'label_styles_margin', ''),
(129, 2, 'label_styles_padding', ''),
(130, 2, 'label_styles_display', ''),
(131, 2, 'label_styles_float', ''),
(132, 2, 'label_styles_show_advanced_css', '0'),
(133, 2, 'label_styles_advanced', ''),
(134, 2, 'element_styles_background-color', ''),
(135, 2, 'element_styles_border', ''),
(136, 2, 'element_styles_border-style', ''),
(137, 2, 'element_styles_border-color', ''),
(138, 2, 'element_styles_color', ''),
(139, 2, 'element_styles_height', ''),
(140, 2, 'element_styles_width', ''),
(141, 2, 'element_styles_font-size', ''),
(142, 2, 'element_styles_margin', ''),
(143, 2, 'element_styles_padding', ''),
(144, 2, 'element_styles_display', ''),
(145, 2, 'element_styles_float', ''),
(146, 2, 'element_styles_show_advanced_css', '0'),
(147, 2, 'element_styles_advanced', ''),
(148, 2, 'cellcid', 'c3281'),
(149, 2, 'custom_name_attribute', 'email'),
(150, 3, 'objectType', 'Field'),
(151, 3, 'objectDomain', 'fields'),
(152, 3, 'editActive', ''),
(153, 3, 'order', '4'),
(154, 3, 'label', 'Message'),
(155, 3, 'key', 'message'),
(156, 3, 'type', 'textarea'),
(157, 3, 'created_at', '2018-04-10 14:52:02'),
(158, 3, 'label_pos', 'above'),
(159, 3, 'required', '1'),
(160, 3, 'placeholder', ''),
(161, 3, 'default', ''),
(162, 3, 'wrapper_class', ''),
(163, 3, 'element_class', ''),
(164, 3, 'container_class', ''),
(165, 3, 'input_limit', ''),
(166, 3, 'input_limit_type', 'characters'),
(167, 3, 'input_limit_msg', 'Character(s) left'),
(168, 3, 'manual_key', ''),
(169, 3, 'disable_input', ''),
(170, 3, 'admin_label', ''),
(171, 3, 'help_text', ''),
(172, 3, 'desc_text', ''),
(173, 3, 'disable_browser_autocomplete', ''),
(174, 3, 'textarea_rte', ''),
(175, 3, 'disable_rte_mobile', ''),
(176, 3, 'textarea_media', ''),
(177, 3, 'wrap_styles_background-color', ''),
(178, 3, 'wrap_styles_border', ''),
(179, 3, 'wrap_styles_border-style', ''),
(180, 3, 'wrap_styles_border-color', ''),
(181, 3, 'wrap_styles_color', ''),
(182, 3, 'wrap_styles_height', ''),
(183, 3, 'wrap_styles_width', ''),
(184, 3, 'wrap_styles_font-size', ''),
(185, 3, 'wrap_styles_margin', ''),
(186, 3, 'wrap_styles_padding', ''),
(187, 3, 'wrap_styles_display', ''),
(188, 3, 'wrap_styles_float', ''),
(189, 3, 'wrap_styles_show_advanced_css', '0'),
(190, 3, 'wrap_styles_advanced', ''),
(191, 3, 'label_styles_background-color', ''),
(192, 3, 'label_styles_border', ''),
(193, 3, 'label_styles_border-style', ''),
(194, 3, 'label_styles_border-color', ''),
(195, 3, 'label_styles_color', ''),
(196, 3, 'label_styles_height', ''),
(197, 3, 'label_styles_width', ''),
(198, 3, 'label_styles_font-size', ''),
(199, 3, 'label_styles_margin', ''),
(200, 3, 'label_styles_padding', ''),
(201, 3, 'label_styles_display', ''),
(202, 3, 'label_styles_float', ''),
(203, 3, 'label_styles_show_advanced_css', '0'),
(204, 3, 'label_styles_advanced', ''),
(205, 3, 'element_styles_background-color', ''),
(206, 3, 'element_styles_border', ''),
(207, 3, 'element_styles_border-style', ''),
(208, 3, 'element_styles_border-color', ''),
(209, 3, 'element_styles_color', ''),
(210, 3, 'element_styles_height', ''),
(211, 3, 'element_styles_width', ''),
(212, 3, 'element_styles_font-size', ''),
(213, 3, 'element_styles_margin', ''),
(214, 3, 'element_styles_padding', ''),
(215, 3, 'element_styles_display', ''),
(216, 3, 'element_styles_float', ''),
(217, 3, 'element_styles_show_advanced_css', '0'),
(218, 3, 'element_styles_advanced', ''),
(219, 3, 'cellcid', 'c3284'),
(220, 4, 'objectType', 'Field'),
(221, 4, 'objectDomain', 'fields'),
(222, 4, 'editActive', ''),
(223, 4, 'order', '5'),
(224, 4, 'label', 'Envoyer'),
(225, 4, 'key', 'envoyer_1523376243720'),
(226, 4, 'type', 'submit'),
(227, 4, 'created_at', '2018-04-10 14:52:02'),
(228, 4, 'processing_label', 'Processing'),
(229, 4, 'container_class', ''),
(230, 4, 'element_class', ''),
(231, 4, 'wrap_styles_background-color', ''),
(232, 4, 'wrap_styles_border', ''),
(233, 4, 'wrap_styles_border-style', ''),
(234, 4, 'wrap_styles_border-color', ''),
(235, 4, 'wrap_styles_color', ''),
(236, 4, 'wrap_styles_height', ''),
(237, 4, 'wrap_styles_width', ''),
(238, 4, 'wrap_styles_font-size', ''),
(239, 4, 'wrap_styles_margin', ''),
(240, 4, 'wrap_styles_padding', ''),
(241, 4, 'wrap_styles_display', ''),
(242, 4, 'wrap_styles_float', ''),
(243, 4, 'wrap_styles_show_advanced_css', '0'),
(244, 4, 'wrap_styles_advanced', ''),
(245, 4, 'label_styles_background-color', ''),
(246, 4, 'label_styles_border', ''),
(247, 4, 'label_styles_border-style', ''),
(248, 4, 'label_styles_border-color', ''),
(249, 4, 'label_styles_color', ''),
(250, 4, 'label_styles_height', ''),
(251, 4, 'label_styles_width', ''),
(252, 4, 'label_styles_font-size', ''),
(253, 4, 'label_styles_margin', ''),
(254, 4, 'label_styles_padding', ''),
(255, 4, 'label_styles_display', ''),
(256, 4, 'label_styles_float', ''),
(257, 4, 'label_styles_show_advanced_css', '0'),
(258, 4, 'label_styles_advanced', ''),
(259, 4, 'element_styles_background-color', ''),
(260, 4, 'element_styles_border', ''),
(261, 4, 'element_styles_border-style', ''),
(262, 4, 'element_styles_border-color', ''),
(263, 4, 'element_styles_color', ''),
(264, 4, 'element_styles_height', ''),
(265, 4, 'element_styles_width', ''),
(266, 4, 'element_styles_font-size', ''),
(267, 4, 'element_styles_margin', ''),
(268, 4, 'element_styles_padding', ''),
(269, 4, 'element_styles_display', ''),
(270, 4, 'element_styles_float', ''),
(271, 4, 'element_styles_show_advanced_css', '0'),
(272, 4, 'element_styles_advanced', ''),
(273, 4, 'submit_element_hover_styles_background-color', ''),
(274, 4, 'submit_element_hover_styles_border', ''),
(275, 4, 'submit_element_hover_styles_border-style', ''),
(276, 4, 'submit_element_hover_styles_border-color', ''),
(277, 4, 'submit_element_hover_styles_color', ''),
(278, 4, 'submit_element_hover_styles_height', ''),
(279, 4, 'submit_element_hover_styles_width', ''),
(280, 4, 'submit_element_hover_styles_font-size', ''),
(281, 4, 'submit_element_hover_styles_margin', ''),
(282, 4, 'submit_element_hover_styles_padding', ''),
(283, 4, 'submit_element_hover_styles_display', ''),
(284, 4, 'submit_element_hover_styles_float', ''),
(285, 4, 'submit_element_hover_styles_show_advanced_css', '0'),
(286, 4, 'submit_element_hover_styles_advanced', ''),
(287, 4, 'cellcid', 'c3287'),
(288, 4, 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci,
  `key` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`) VALUES
(1, 'Nous contacter', '', '2018-04-10 12:52:02', '2018-04-10 14:52:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'default_label_pos', 'above'),
(2, 1, 'conditions', 'a:0:{}'),
(3, 1, 'objectType', 'Form Setting'),
(4, 1, 'editActive', '1'),
(5, 1, 'show_title', '1'),
(6, 1, 'clear_complete', '0'),
(7, 1, 'hide_complete', '0'),
(8, 1, 'wrapper_class', ''),
(9, 1, 'element_class', ''),
(10, 1, 'add_submit', '1'),
(11, 1, 'logged_in', ''),
(12, 1, 'not_logged_in_msg', ''),
(13, 1, 'sub_limit_number', ''),
(14, 1, 'sub_limit_msg', ''),
(15, 1, 'calculations', 'a:0:{}'),
(16, 1, 'formContentData', 'a:5:{i:0;s:23:\"firstname_1523376253592\";i:1;s:20:\"prenom_1523376227286\";i:2;s:5:\"email\";i:3;s:7:\"message\";i:4;s:21:\"envoyer_1523376243720\";}'),
(17, 1, 'container_styles_background-color', ''),
(18, 1, 'container_styles_border', ''),
(19, 1, 'container_styles_border-style', ''),
(20, 1, 'container_styles_border-color', ''),
(21, 1, 'container_styles_color', ''),
(22, 1, 'container_styles_height', ''),
(23, 1, 'container_styles_width', ''),
(24, 1, 'container_styles_font-size', ''),
(25, 1, 'container_styles_margin', ''),
(26, 1, 'container_styles_padding', ''),
(27, 1, 'container_styles_display', ''),
(28, 1, 'container_styles_float', ''),
(29, 1, 'container_styles_show_advanced_css', '0'),
(30, 1, 'container_styles_advanced', ''),
(31, 1, 'title_styles_background-color', ''),
(32, 1, 'title_styles_border', ''),
(33, 1, 'title_styles_border-style', ''),
(34, 1, 'title_styles_border-color', ''),
(35, 1, 'title_styles_color', ''),
(36, 1, 'title_styles_height', ''),
(37, 1, 'title_styles_width', ''),
(38, 1, 'title_styles_font-size', ''),
(39, 1, 'title_styles_margin', ''),
(40, 1, 'title_styles_padding', ''),
(41, 1, 'title_styles_display', ''),
(42, 1, 'title_styles_float', ''),
(43, 1, 'title_styles_show_advanced_css', '0'),
(44, 1, 'title_styles_advanced', ''),
(45, 1, 'row_styles_background-color', ''),
(46, 1, 'row_styles_border', ''),
(47, 1, 'row_styles_border-style', ''),
(48, 1, 'row_styles_border-color', ''),
(49, 1, 'row_styles_color', ''),
(50, 1, 'row_styles_height', ''),
(51, 1, 'row_styles_width', ''),
(52, 1, 'row_styles_font-size', ''),
(53, 1, 'row_styles_margin', ''),
(54, 1, 'row_styles_padding', ''),
(55, 1, 'row_styles_display', ''),
(56, 1, 'row_styles_show_advanced_css', '0'),
(57, 1, 'row_styles_advanced', ''),
(58, 1, 'row-odd_styles_background-color', ''),
(59, 1, 'row-odd_styles_border', ''),
(60, 1, 'row-odd_styles_border-style', ''),
(61, 1, 'row-odd_styles_border-color', ''),
(62, 1, 'row-odd_styles_color', ''),
(63, 1, 'row-odd_styles_height', ''),
(64, 1, 'row-odd_styles_width', ''),
(65, 1, 'row-odd_styles_font-size', ''),
(66, 1, 'row-odd_styles_margin', ''),
(67, 1, 'row-odd_styles_padding', ''),
(68, 1, 'row-odd_styles_display', ''),
(69, 1, 'row-odd_styles_show_advanced_css', '0'),
(70, 1, 'row-odd_styles_advanced', ''),
(71, 1, 'success-msg_styles_background-color', ''),
(72, 1, 'success-msg_styles_border', ''),
(73, 1, 'success-msg_styles_border-style', ''),
(74, 1, 'success-msg_styles_border-color', ''),
(75, 1, 'success-msg_styles_color', ''),
(76, 1, 'success-msg_styles_height', ''),
(77, 1, 'success-msg_styles_width', ''),
(78, 1, 'success-msg_styles_font-size', ''),
(79, 1, 'success-msg_styles_margin', ''),
(80, 1, 'success-msg_styles_padding', ''),
(81, 1, 'success-msg_styles_display', ''),
(82, 1, 'success-msg_styles_show_advanced_css', '0'),
(83, 1, 'success-msg_styles_advanced', ''),
(84, 1, 'error_msg_styles_background-color', ''),
(85, 1, 'error_msg_styles_border', ''),
(86, 1, 'error_msg_styles_border-style', ''),
(87, 1, 'error_msg_styles_border-color', ''),
(88, 1, 'error_msg_styles_color', ''),
(89, 1, 'error_msg_styles_height', ''),
(90, 1, 'error_msg_styles_width', ''),
(91, 1, 'error_msg_styles_font-size', ''),
(92, 1, 'error_msg_styles_margin', ''),
(93, 1, 'error_msg_styles_padding', ''),
(94, 1, 'error_msg_styles_display', ''),
(95, 1, 'error_msg_styles_show_advanced_css', '0'),
(96, 1, 'error_msg_styles_advanced', ''),
(97, 1, 'currency', ''),
(98, 1, 'unique_field_error', 'A form with this value has already been submitted.'),
(99, 1, '_seq_num', '2'),
(100, 1, 'changeEmailErrorMsg', ''),
(101, 1, 'confirmFieldErrorMsg', ''),
(102, 1, 'fieldNumberNumMinError', ''),
(103, 1, 'fieldNumberNumMaxError', ''),
(104, 1, 'fieldNumberIncrementBy', ''),
(105, 1, 'formErrorsCorrectErrors', ''),
(106, 1, 'validateRequiredField', ''),
(107, 1, 'honeypotHoneypotError', ''),
(108, 1, 'fieldsMarkedRequired', ''),
(109, 1, 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext COLLATE utf8mb4_unicode_520_ci,
  `title` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kirill.petrov.centrale@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:173:{s:9:\"nf_sub/?$\";s:26:\"index.php?post_type=nf_sub\";s:39:\"nf_sub/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=nf_sub&feed=$matches[1]\";s:34:\"nf_sub/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=nf_sub&feed=$matches[1]\";s:26:\"nf_sub/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=nf_sub&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"plats/?$\";s:25:\"index.php?post_type=plats\";s:38:\"plats/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=plats&feed=$matches[1]\";s:33:\"plats/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=plats&feed=$matches[1]\";s:25:\"plats/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=plats&paged=$matches[1]\";s:14:\"imgplatjour/?$\";s:31:\"index.php?post_type=imgplatjour\";s:44:\"imgplatjour/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=imgplatjour&feed=$matches[1]\";s:39:\"imgplatjour/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=imgplatjour&feed=$matches[1]\";s:31:\"imgplatjour/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=imgplatjour&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"nf_sub/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"nf_sub/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"nf_sub/([^/]+)/embed/?$\";s:39:\"index.php?nf_sub=$matches[1]&embed=true\";s:27:\"nf_sub/([^/]+)/trackback/?$\";s:33:\"index.php?nf_sub=$matches[1]&tb=1\";s:47:\"nf_sub/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?nf_sub=$matches[1]&feed=$matches[2]\";s:42:\"nf_sub/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?nf_sub=$matches[1]&feed=$matches[2]\";s:35:\"nf_sub/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&paged=$matches[2]\";s:42:\"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&cpage=$matches[2]\";s:31:\"nf_sub/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?nf_sub=$matches[1]&page=$matches[2]\";s:23:\"nf_sub/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"nf_sub/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"nf_sub/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"rtb-booking/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"rtb-booking/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"rtb-booking/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"rtb-booking/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"rtb-booking/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"rtb-booking/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"rtb-booking/([^/]+)/embed/?$\";s:44:\"index.php?rtb-booking=$matches[1]&embed=true\";s:32:\"rtb-booking/([^/]+)/trackback/?$\";s:38:\"index.php?rtb-booking=$matches[1]&tb=1\";s:40:\"rtb-booking/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?rtb-booking=$matches[1]&paged=$matches[2]\";s:47:\"rtb-booking/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?rtb-booking=$matches[1]&cpage=$matches[2]\";s:36:\"rtb-booking/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?rtb-booking=$matches[1]&page=$matches[2]\";s:28:\"rtb-booking/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"rtb-booking/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"rtb-booking/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"rtb-booking/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"rtb-booking/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"rtb-booking/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"plats/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"plats/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"plats/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"plats/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"plats/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"plats/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"plats/([^/]+)/embed/?$\";s:38:\"index.php?plats=$matches[1]&embed=true\";s:26:\"plats/([^/]+)/trackback/?$\";s:32:\"index.php?plats=$matches[1]&tb=1\";s:46:\"plats/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?plats=$matches[1]&feed=$matches[2]\";s:41:\"plats/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?plats=$matches[1]&feed=$matches[2]\";s:34:\"plats/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?plats=$matches[1]&paged=$matches[2]\";s:41:\"plats/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?plats=$matches[1]&cpage=$matches[2]\";s:30:\"plats/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?plats=$matches[1]&page=$matches[2]\";s:22:\"plats/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"plats/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"plats/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"plats/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"plats/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"plats/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"imgplatjour/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"imgplatjour/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"imgplatjour/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"imgplatjour/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"imgplatjour/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"imgplatjour/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"imgplatjour/([^/]+)/embed/?$\";s:44:\"index.php?imgplatjour=$matches[1]&embed=true\";s:32:\"imgplatjour/([^/]+)/trackback/?$\";s:38:\"index.php?imgplatjour=$matches[1]&tb=1\";s:52:\"imgplatjour/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?imgplatjour=$matches[1]&feed=$matches[2]\";s:47:\"imgplatjour/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?imgplatjour=$matches[1]&feed=$matches[2]\";s:40:\"imgplatjour/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?imgplatjour=$matches[1]&paged=$matches[2]\";s:47:\"imgplatjour/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?imgplatjour=$matches[1]&cpage=$matches[2]\";s:36:\"imgplatjour/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?imgplatjour=$matches[1]&page=$matches[2]\";s:28:\"imgplatjour/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"imgplatjour/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"imgplatjour/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"imgplatjour/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"imgplatjour/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"imgplatjour/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=165&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:27:\"ninja-forms/ninja-forms.php\";i:4;s:51:\"restaurant-reservations/restaurant-reservations.php\";i:5;s:47:\"show-current-template/show-current-template.php\";i:6;s:33:\"smart-slider-3/smart-slider-3.php\";i:7;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-bootstrap-starter', 'yes'),
(41, 'stylesheet', 'wp-bootstrap-starter-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '165', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:70:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"manage_bookings\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:43:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"manage_bookings\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:19:\"rtb_booking_manager\";a:2:{s:4:\"name\";s:28:\"Gestionnaire de réservation\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:15:\"manage_bookings\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1524147495;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524172175;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524215386;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1526050328;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523351701;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, 'can_compress_scripts', '0', 'no'),
(145, 'current_theme', 'WP Bootstrap Starter Child', 'yes'),
(146, 'theme_mods_wp-bootstrap-starter-child', 'a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:5:\"blank\";s:20:\"theme_option_setting\";s:3:\"lux\";s:27:\"header_banner_title_setting\";s:18:\"Restaurant du Port\";s:29:\"header_banner_tagline_setting\";s:0:\"\";s:24:\"header_banner_visibility\";b:1;s:12:\"header_image\";s:13:\"remove-header\";s:23:\"header_bg_color_setting\";s:7:\"#ffffff\";}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(148, 'triggered_welcomet', '1', 'yes'),
(156, 'WPLANG', 'fr_FR', 'yes'),
(157, 'new_admin_email', 'kirill.petrov.centrale@gmail.com', 'yes'),
(173, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(180, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:19:\"localhost/wordpress\";s:8:\"username\";s:4:\"root\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(187, 'recently_activated', 'a:0:{}', 'yes'),
(188, 'widget_rtb_booking_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(191, 'rtb_pending_count', '0', 'yes'),
(196, 'ninja_forms_version', '3.2.21', 'yes'),
(197, 'ninja_forms_settings', 'a:7:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;}', 'yes'),
(198, 'wp_nf_update_fields_batch_f6cf20113991a73e0b6f9cbeb475e84c', 'a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(200, 'nf_form_1', 'a:7:{s:2:\"id\";i:1;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:5:{i:0;a:2:{s:8:\"settings\";a:16:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:5:\"label\";s:3:\"Nom\";s:4:\"type\";s:9:\"firstname\";s:3:\"key\";s:23:\"firstname_1523376253592\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"fname\";}s:2:\"id\";s:1:\"5\";}i:1;a:2:{s:8:\"settings\";a:71:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:5:\"label\";s:7:\"Prénom\";s:3:\"key\";s:20:\"prenom_1523376227286\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:21:\"custom_name_attribute\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:1;}i:2;a:2:{s:8:\"settings\";a:62:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:21:\"custom_name_attribute\";s:5:\"email\";}s:2:\"id\";i:2;}i:3;a:2:{s:8:\"settings\";a:70:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}s:2:\"id\";i:3;}i:4;a:2:{s:8:\"settings\";a:69:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:5;s:5:\"label\";s:7:\"Envoyer\";s:3:\"key\";s:21:\"envoyer_1523376243720\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:4;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:17:\"Formulaires Ninja\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:45:\"New message from {field:prenom_1523376227286}\";s:13:\"email_message\";s:76:\"<p>{field:message}</p><p>-{field:prenom_1523376227286} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:26:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:03\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:63:\"Thank you {field:prenom_1523376227286} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:17:\"Formulaires Ninja\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:4;}}s:8:\"settings\";a:111:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:1;s:5:\"title\";s:14:\"Nous contacter\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2018-04-10 14:52:02\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";i:0;s:13:\"hide_complete\";i:0;s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:5:{i:0;s:23:\"firstname_1523376253592\";i:1;s:20:\"prenom_1523376227286\";i:2;s:5:\"email\";i:3;s:7:\"message\";i:4;s:21:\"envoyer_1523376243720\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:19:\"changeEmailErrorMsg\";s:0:\"\";s:20:\"confirmFieldErrorMsg\";s:0:\"\";s:22:\"fieldNumberNumMinError\";s:0:\"\";s:22:\"fieldNumberNumMaxError\";s:0:\"\";s:22:\"fieldNumberIncrementBy\";s:0:\"\";s:23:\"formErrorsCorrectErrors\";s:0:\"\";s:21:\"validateRequiredField\";s:0:\"\";s:21:\"honeypotHoneypotError\";s:0:\"\";s:20:\"fieldsMarkedRequired\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 'yes'),
(201, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'ninja_forms_optin_reported', '1', 'yes'),
(203, 'nf_admin_notice', 'a:2:{s:16:\"one_week_support\";a:3:{s:5:\"start\";s:9:\"4/17/2018\";s:3:\"int\";i:7;s:9:\"dismissed\";i:1;}s:14:\"allow_tracking\";a:3:{s:5:\"start\";s:9:\"4/10/2018\";s:3:\"int\";i:0;s:9:\"dismissed\";i:1;}}', 'yes'),
(212, 'n2_ss3_version', '3.2.14', 'yes'),
(213, 'widget_smartslider3', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(225, 'cptui_new_install', 'false', 'yes'),
(230, 'acf_version', '4.4.12', 'yes'),
(231, 'nf_form_tel_data', '1', 'no'),
(232, 'nf_form_tel_sent', 'true', 'no'),
(242, 'category_children', 'a:0:{}', 'yes'),
(309, 'whl_page', 'login', 'yes'),
(318, 'cptui_post_types', 'a:0:{}', 'yes'),
(617, '_site_transient_timeout_browser_6df47feeeda72948e2378527bc065d7f', '1524576705', 'no'),
(618, '_site_transient_browser_6df47feeeda72948e2378527bc065d7f', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"57.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(630, 'ai1wm_secret_key', 'EIWAsX2JW11s', 'yes'),
(631, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:208:\"<a href=\"http://localhost/wordpress/wp-content/ai1wm-backups/localhost-wordpress-20180418-220502-358.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\"><span>Download localhost</span><em>Size: 124 MB</em></a>\";}', 'yes'),
(634, '_transient_is_multi_author', '0', 'yes'),
(637, 'ai1wm_updater', 'a:0:{}', 'yes'),
(672, '_site_transient_timeout_theme_roots', '1524145751', 'no'),
(673, '_site_transient_theme_roots', 'a:8:{s:13:\"cannyon-child\";s:7:\"/themes\";s:7:\"cannyon\";s:7:\"/themes\";s:16:\"one-page-express\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:26:\"wp-bootstrap-starter-child\";s:7:\"/themes\";s:20:\"wp-bootstrap-starter\";s:7:\"/themes\";}', 'no'),
(676, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1524187154', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(677, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Apr 2018 13:02:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Sep 2017 11:59:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1860285\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/gen5-evenement-numerique-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"N9pKyU7QxI+abCZvJG9GH3Pj150\";s:13:\"last-modified\";s:29:\"Thu, 19 Apr 2018 13:14:44 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Thu, 19 Apr 2018 13:19:14 GMT\";s:7:\"expires\";s:29:\"Thu, 19 Apr 2018 13:19:14 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303433; quic=51303432; quic=51303431; quic=51303339; quic=51303335,quic=\":443\"; ma=2592000; v=\"43,42,41,39,35\"\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(678, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1524187154', 'no'),
(679, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1524143954', 'no'),
(680, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1524187154', 'no'),
(681, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:21:\"Tout Public / BarCamp\";s:3:\"url\";s:67:\"https://www.meetup.com/Marseille-WordPress-Meetup/events/249596486/\";s:6:\"meetup\";s:26:\"Marseille WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Marseille-WordPress-Meetup/\";s:4:\"date\";s:19:\"2018-04-20 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Marseille, France\";s:7:\"country\";s:2:\"fr\";s:8:\"latitude\";d:43.292274;s:9:\"longitude\";d:5.372829;}}}}', 'no'),
(682, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1524187154', 'no'),
(683, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Guide de maintenance d’un site WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/Bi1I8868yXw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://www.whodunit.fr/guide-de-maintenance-dun-site-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Apr 2018 11:09:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:264:\"\n		        Depuis 8 ans, l’agence Whodunit assure la maintenance de centaines de sites WordPress et a ainsi développé une expertise que...\nCet article Guide de maintenance d&#8217;un site WordPress est apparu en premier sur Agence WordPress Whodunit.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:495:\"<p>Depuis 8 ans, l’agence Whodunit assure la maintenance de centaines de sites WordPress et a ainsi développé une expertise que...</p>\n<p>Cet article <a rel=\"nofollow\" href=\"https://www.whodunit.fr/guide-de-maintenance-dun-site-wordpress/\">Guide de maintenance d&#8217;un site WordPress</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://www.whodunit.fr\">Agence WordPress Whodunit</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/Bi1I8868yXw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://www.whodunit.fr/guide-de-maintenance-dun-site-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"RGPD et WordPress : Le guide ultime (et concret) pour se mettre en conformité\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/MlRq0AXvnwo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://wpmarmite.com/rgpd-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=rgpd-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Apr 2018 09:25:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:333:\"\n		        \nDécidément, en ce début d’année 2018, l’univers du web s’agite de toutes parts ! Il y a quelques semaines, on vous parlait de l’arrivée de WordPress 5.0 dans les mois...\nL’article RGPD et WordPress : Le guide ultime (et concret) pour se mettre en conformité est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:703:\"<p><img width=\"640\" height=\"220\" src=\"https://wpmarmite.com/wp-content/uploads/2018/04/rgpd-wordpress.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Décidément, en ce début d’année 2018, l’univers du web s’agite de toutes parts ! Il y a quelques semaines, on vous parlait de l’arrivée de WordPress 5.0 dans les mois...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/rgpd-wordpress/\">RGPD et WordPress : Le guide ultime (et concret) pour se mettre en conformité</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/MlRq0AXvnwo\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://wpmarmite.com/rgpd-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=rgpd-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Ajouter le support des catégories dans vos pages WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/4qTBLoCru74/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wpchannel.com/wordpress/tutoriels-wordpress/ajouter-support-categories-pages-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Apr 2018 07:00:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:507:\"\n		        Les catégories sous WordPress sont actives pour vos articles mais comme n&#8217;importe quelle taxonomie vous pouvez en disposer pour d&#8217;autres types de contenus comme les pages. Cette technique permet de croiser l&#8217;information et d&#8217;utiliser l&#8217;identifiant de la catégorie dans vos URLS. Commencez par créer un mu-plugin puis collez ces lignes de code à l&#8217;intérieur : Une fois le fichier déposé dans votre répertoire /wp-content/mu-plugins/, [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:770:\"<div class=\"post-thumbnail\"><img width=\"391\" height=\"300\" src=\"https://wpchannel.com/images/2010/12/coding-macbook-391x300.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>Les catégories sous WordPress sont actives pour vos articles mais comme n&#8217;importe quelle taxonomie vous pouvez en disposer pour d&#8217;autres types de contenus comme les pages. Cette technique permet de croiser l&#8217;information et d&#8217;utiliser l&#8217;identifiant de la catégorie dans vos URLS. Commencez par créer un mu-plugin puis collez ces lignes de code à l&#8217;intérieur : Une fois le fichier déposé dans votre répertoire /wp-content/mu-plugins/, [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/4qTBLoCru74\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wpchannel.com/wordpress/tutoriels-wordpress/ajouter-support-categories-pages-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"Comment ajouter des messages sur la page d’inscription/connexion de WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/9HkirTqyzMo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:181:\"https://wpmarmite.com/snippet/personnaliser-inscription-connexion-woocommerce/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=personnaliser-inscription-connexion-woocommerce\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 07:38:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:362:\"\n		        \nPour personnaliser une peu la page de connexion à votre boutique en ligne WooCommerce, nous allons voir comment afficher un texte informatif au dessus du formulaire de connexion ou d&rsquo;inscription...\nL’article Comment ajouter des messages sur la page d&rsquo;inscription/connexion de WooCommerce est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:797:\"<p><img width=\"640\" height=\"220\" src=\"https://wpmarmite.com/wp-content/uploads/2017/06/woocommerce-snippet.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"woocommerce snippet\" /></p>\n<p>Pour personnaliser une peu la page de connexion à votre boutique en ligne WooCommerce, nous allons voir comment afficher un texte informatif au dessus du formulaire de connexion ou d&rsquo;inscription...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/snippet/personnaliser-inscription-connexion-woocommerce/\">Comment ajouter des messages sur la page d&rsquo;inscription/connexion de WooCommerce</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/9HkirTqyzMo\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:181:\"https://wpmarmite.com/snippet/personnaliser-inscription-connexion-woocommerce/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=personnaliser-inscription-connexion-woocommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"Comment importer un contenu oEmbed (tweet, article Facebook, vidéo YouTube) sous WordPress ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/t5ZukUlBY1w/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"https://wpchannel.com/wordpress/tutoriels-wordpress/importer-un-contenu-oembed-tweet-article-facebook-video-youtube-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Apr 2018 07:00:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:464:\"\n		        Embarquer des contenus tiers comme des tweets, des vidéos YouTube ou Vimeo, des posts Facebook ou même des articles issus d&#8217;un autre WordPress est un véritable jeu d&#8217;enfant sous WordPress à condition d&#8217;utiliser correctement les oEmbeds. Ce tutoriel fait suite à la lecture du billet Comment centrer un Tweet sur wordpress paru sur le Siècle Digital qui m&#8217;a paru fort compliqué dans l&#8217;approche. En [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:736:\"<div class=\"post-thumbnail\"><img width=\"450\" height=\"300\" src=\"https://wpchannel.com/images/2018/04/twitter-wordpress-embed-450x300.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>Embarquer des contenus tiers comme des tweets, des vidéos YouTube ou Vimeo, des posts Facebook ou même des articles issus d&#8217;un autre WordPress est un véritable jeu d&#8217;enfant sous WordPress à condition d&#8217;utiliser correctement les oEmbeds. Ce tutoriel fait suite à la lecture du billet Comment centrer un Tweet sur wordpress paru sur le Siècle Digital qui m&#8217;a paru fort compliqué dans l&#8217;approche. En [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/t5ZukUlBY1w\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"https://wpchannel.com/wordpress/tutoriels-wordpress/importer-un-contenu-oembed-tweet-article-facebook-video-youtube-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/AOf32FFpTck/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wpformation.com/wordpress-ou-wix/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Apr 2018 06:35:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:628:\"\n		        Choisir une plateforme pour créer votre site web peut être difficile, et beaucoup d’utilisateurs en viennent à comparer WordPress et Wix. L’un comme l’autre sont des solutions populaires et appréciées qui vous permettront de construire un très bon site. Mais alors, quelle est la meilleure solution pour votre projet ? Dans ce guide comparatif entre WordPress [&#8230;]\n\nL’article WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ? est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1443:\"<p><img width=\"1500\" height=\"562\" src=\"https://wpformation.com/wp-content/uploads/2018/04/WordPress-vs-Wix.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"WordPress-vs-Wix\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Choisir une plateforme pour créer votre site web peut être difficile, et beaucoup d’utilisateurs en viennent à comparer WordPress et Wix. L’un comme l’autre sont des solutions populaires et appréciées qui vous permettront de construire un très bon site. Mais alors, quelle est la meilleure solution pour votre projet ? Dans ce guide comparatif entre WordPress [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/wordpress-ou-wix/\">WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ?</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/AOf32FFpTck\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wpformation.com/wordpress-ou-wix/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Le CNRS lance un nouveau kit Web fait avec WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/bWFWwkEmt2I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://www.wpnormandie.fr/le-cnrs-lance-un-nouveau-kit-web-fait-avec-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 15 Apr 2018 16:37:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:392:\"\n		        On le sait WordPress représente 30% des sites web au monde. Cela bon nombre d&#8217;entreprises l&#8217;on compris et fabriquent leur site internet avec cet outil. Ce que l&#8217;on sait moins, c&#8217;est que de grands noms en dehors du monde de l&#8217;entreprise le font de manière à inclure WordPress dans leur stratégie informatique. C&#8217;est le cas [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:462:\"On le sait WordPress représente 30% des sites web au monde. Cela bon nombre d&#8217;entreprises l&#8217;on compris et fabriquent leur site internet avec cet outil. Ce que l&#8217;on sait moins, c&#8217;est que de grands noms en dehors du monde de l&#8217;entreprise le font de manière à inclure WordPress dans leur stratégie informatique. C&#8217;est le cas [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/bWFWwkEmt2I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://www.wpnormandie.fr/le-cnrs-lance-un-nouveau-kit-web-fait-avec-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Composer : Make Stable\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"http://feedproxy.google.com/~r/wpfr/~3/PAUiXgcYcBI/composer-make-stable\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://blog.beapi.fr/composer-make-stable\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Apr 2018 08:03:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:185:\"\n		        Voici un petit script pour rendre stable les versions des dépendances dans composer.\nCet article Composer : Make Stable est apparu en premier sur Be API Tech blog.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4743:\"<p>Voici un <a href=\"https://github.com/BeAPI/composer-make-stable\">petit script</a> pour rendre les versions des dépendances dans <a href=\"https://getcomposer.org/\"><strong>composer</strong></a> stables. Vous allez gagner un temps précieux !</p>\n<p><span id=\"more-560\"></span></p>\n<p>Quelques explications avant de se lancer dans le <a href=\"#la-naissance-d-un-script-composer\">vif du sujet</a>.</p>\n<h2>En phase de production</h2>\n<p>Lorsque votre projet est en production, il est recommandé de gérer les versions de WP et plugins de manière figée. Un composer update n&rsquo;aura plus d&rsquo;effet sur les versions des dépendances. Nous allons donc chercher à tout transformer en version stable dans un but de faciliter la maintenance et le suivi des mises à jour.</p>\n<figure id=\"attachment_522\" style=\"width: 635px\" class=\"wp-caption aligncenter\"><a href=\"https://i2.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-prod.png?ssl=1\"><img class=\"wp-image-522 size-full\" src=\"https://i2.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-prod.png?resize=635%2C951&#038;ssl=1\" alt=\"composer.json de prod\" width=\"635\" height=\"951\" /></a><figcaption class=\"wp-caption-text\">composer.json de prod</figcaption></figure>\n<h2>En phase de développement</h2>\n<p>Lorsque vous utilisez composer pour gérer les dépendances de votre projet durant la phase de développement, les versions sont généralement « dev-master » ou « stable ». Comme ceci, à chaque <em>composer update</em>, vous forcer les mises à jour et êtes à la page. Utile pour détecter rapidement un bug mais également bénéficier de toutes les nouvelles mises à jour.</p>\n<figure id=\"attachment_521\" style=\"width: 592px\" class=\"wp-caption aligncenter\"><a href=\"https://i0.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-dev.png?ssl=1\"><img class=\"wp-image-521 size-full\" src=\"https://i0.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-dev.png?resize=592%2C842&#038;ssl=1\" alt=\"composer.json de dev\" width=\"592\" height=\"842\" /></a><figcaption class=\"wp-caption-text\">composer.json de dev</figcaption></figure>\n<h2 id=\"la-naissance-d-un-script-composer\">La naissance d&rsquo;un script</h2>\n<p>Durant la R&amp;D de vendredi dernier, <a href=\"https://twitter.com/TweetPressFr\">Julien Maury</a> nous a concocté un petit script ( <a href=\"https://github.com/BeAPI/composer-make-stable\"><em><strong>composer make stable</strong></em></a> ) pour figer les versions dans le composer.json. Ce dernier va transformer les versions du composer.json pour les rendre stable. Pratique pour faire un composer update lors d&rsquo;un audit de mise à jour.<br />\nCeci fonctionne pour toutes les dépendances : thèmes, mu-plugins, plugins et cœur de WordPress.</p>\n<p>Ce script nous a fait gagner énormément de temps ! Et comme il n&rsquo;existait pas encore sur les internets, nous avons jugé intéressant de le <strong>partager avec vous en open source</strong>.</p>\n<h3>1. Ajouter le script à votre projet</h3>\n<p>Il suffit d&rsquo;ajouter le script comme une dépendance de votre projet :</p>\n<div class=\"code-embed-wrapper\"> <pre class=\"language-php code-embed-pre\"><code class=\"language-php code-embed-code\"># Ajouter le repository de les source :\n{ &quot;type&quot;: &quot;vcs&quot;, &quot;url&quot;: &quot;https://github.com/BeAPI/composer-make-stable&quot; }\n# Require en require-dev dans votre composer.json\n&quot;bea/composer/make-stable&quot;: &quot;dev-master&quot; \n# Puis avant usage un :\ncomposer update </code></pre> <div class=\"code-embed-infos\"> </div> </div>\n<h3>2. Utiliser le script</h3>\n<p>Easy as pie !</p>\n<div class=\"code-embed-wrapper\"> <pre class=\"language-bash code-embed-pre\"><code class=\"language-bash code-embed-code\">composer make-stable</code></pre> <div class=\"code-embed-infos\"> </div> </div>\n<h3>3. Le petit plus</h3>\n<p>Pour refaire la manipulation dans l&rsquo;autre sens :</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://blog.beapi.fr/composer-freeze-versions\">Composer : Freeze Versions</a></p></blockquote>\n<p></p>\n<hr />\n<p><em>Avez-vous facilement réussi à le mètre en place ? Est-il simple d&rsquo;utilisation ? Avez-vous gagné du temps ?</em><br />\n<em>Dites-nous tout dans les commentaires.</em></p>\n<p>Enjoy ! <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f917.png\" alt=\"🤗\" class=\"wp-smiley\" style=\"height: 1em;max-height: 1em\" /></p>\n<p>Cet article <a rel=\"nofollow\" href=\"https://blog.beapi.fr/composer-make-stable\">Composer : Make Stable</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://blog.beapi.fr\">Be API Tech blog</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/PAUiXgcYcBI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://blog.beapi.fr/composer-make-stable\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"2VsQBn/BASCirbRF2GyszaRywUQ\";s:13:\"last-modified\";s:29:\"Thu, 19 Apr 2018 13:03:43 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Thu, 19 Apr 2018 13:19:14 GMT\";s:7:\"expires\";s:29:\"Thu, 19 Apr 2018 13:19:14 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303433; quic=51303432; quic=51303431; quic=51303339; quic=51303335,quic=\":443\"; ma=2592000; v=\"43,42,41,39,35\"\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no'),
(684, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1524187154', 'no'),
(685, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1524143954', 'no'),
(686, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1524187154', 'no'),
(687, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\'>Résultats des élections du bureau 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/Bi1I8868yXw/\'>Guide de maintenance d’un site WordPress</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/MlRq0AXvnwo/\'>RGPD et WordPress : Le guide ultime (et concret) pour se mettre en conformité</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/4qTBLoCru74/\'>Ajouter le support des catégories dans vos pages WordPress</a></li></ul></div>', 'no'),
(688, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1524143958;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(689, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1524143960;s:7:\"checked\";a:8:{s:13:\"cannyon-child\";s:5:\"0.1.0\";s:7:\"cannyon\";s:6:\"0.0.15\";s:16:\"one-page-express\";s:6:\"1.0.12\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";s:26:\"wp-bootstrap-starter-child\";s:17:\"3.0.11.1522934596\";s:20:\"wp-bootstrap-starter\";s:6:\"3.0.11\";}s:8:\"response\";a:3:{s:7:\"cannyon\";a:4:{s:5:\"theme\";s:7:\"cannyon\";s:11:\"new_version\";s:6:\"0.0.16\";s:3:\"url\";s:37:\"https://wordpress.org/themes/cannyon/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/cannyon.0.0.16.zip\";}s:16:\"one-page-express\";a:4:{s:5:\"theme\";s:16:\"one-page-express\";s:11:\"new_version\";s:6:\"1.0.13\";s:3:\"url\";s:46:\"https://wordpress.org/themes/one-page-express/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/one-page-express.1.0.13.zip\";}s:20:\"wp-bootstrap-starter\";a:4:{s:5:\"theme\";s:20:\"wp-bootstrap-starter\";s:11:\"new_version\";s:6:\"3.0.13\";s:3:\"url\";s:50:\"https://wordpress.org/themes/wp-bootstrap-starter/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/theme/wp-bootstrap-starter.3.0.13.zip\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:16:\"one-page-express\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"1.0.12\";s:7:\"updated\";s:19:\"2018-03-21 10:58:47\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/translation/theme/one-page-express/1.0.12/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(690, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1524143961;s:7:\"checked\";a:10:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.67\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.7\";s:9:\"hello.php\";s:3:\"1.7\";s:27:\"ninja-forms/ninja-forms.php\";s:6:\"3.2.21\";s:51:\"restaurant-reservations/restaurant-reservations.php\";s:5:\"1.7.6\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.3.0\";s:33:\"smart-slider-3/smart-slider-3.php\";s:6:\"3.2.14\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.2.7\";}s:8:\"response\";a:2:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";N;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";N;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.67\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.67.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1691996\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:6:\"3.2.21\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/ninja-forms.3.2.21.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=1649747\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=1649747\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"restaurant-reservations/restaurant-reservations.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/restaurant-reservations\";s:4:\"slug\";s:23:\"restaurant-reservations\";s:6:\"plugin\";s:51:\"restaurant-reservations/restaurant-reservations.php\";s:11:\"new_version\";s:5:\"1.7.6\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/restaurant-reservations/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/restaurant-reservations.1.7.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/restaurant-reservations/assets/icon-256x256.png?rev=975736\";s:2:\"1x\";s:75:\"https://ps.w.org/restaurant-reservations/assets/icon-128x128.png?rev=975736\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/restaurant-reservations/assets/banner-1544x500.png?rev=910307\";s:2:\"1x\";s:77:\"https://ps.w.org/restaurant-reservations/assets/banner-772x250.png?rev=910307\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.3.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.3.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:33:\"smart-slider-3/smart-slider-3.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/smart-slider-3\";s:4:\"slug\";s:14:\"smart-slider-3\";s:6:\"plugin\";s:33:\"smart-slider-3/smart-slider-3.php\";s:11:\"new_version\";s:6:\"3.2.14\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/smart-slider-3/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/smart-slider-3.3.2.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-256x256.png?rev=1284893\";s:2:\"1x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-128x128.png?rev=1284893\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/smart-slider-3/assets/banner-1544x500.png?rev=1686842\";s:2:\"1x\";s:69:\"https://ps.w.org/smart-slider-3/assets/banner-772x250.png?rev=1686842\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(691, '_site_transient_timeout_available_translations', '1524155903', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(692, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 19:38:49\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 13:41:14\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 03:44:52\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-16 18:12:49\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 05:10:07\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-11 09:40:36\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-19 17:34:31\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-02-12 10:10:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-22 15:43:53\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-18 15:25:41\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.5/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-18 15:23:35\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-05 12:41:56\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 08:59:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-15 20:17:27\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 09:54:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-29 16:28:34\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-17 05:20:05\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-18 17:06:15\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-26 19:32:51\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-23 18:34:33\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-02-27 05:22:44\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-30 07:44:25\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-06 10:09:56\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-21 22:04:16\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 03:45:18\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-10 18:19:59\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-31 18:09:34\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-26 21:01:10\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-02 12:51:15\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-13 11:16:25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-18 05:27:48\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-16 18:46:39\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-08 06:01:48\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 22:24:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-15 02:27:09\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 19:40:23\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-02-28 10:55:13\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 10:26:07\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-26 08:04:00\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.5/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-23 12:42:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-05 12:59:55\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 09:27:50\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-11 18:05:33\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-19 09:40:05\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 18:30:41\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-19 08:38:02\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 15:56:45\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 08:50:10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-25 10:30:04\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-25 20:12:50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 12:42:33\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 21:51:10\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-06 20:34:06\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-13 08:24:25\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-11 05:09:29\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(28, 2, '_edit_lock', '1523459999:1'),
(29, 13, '_menu_item_type', 'custom'),
(30, 13, '_menu_item_menu_item_parent', '0'),
(31, 13, '_menu_item_object_id', '13'),
(32, 13, '_menu_item_object', 'custom'),
(33, 13, '_menu_item_target', ''),
(34, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 13, '_menu_item_xfn', ''),
(36, 13, '_menu_item_url', 'http://localhost/wordpress/'),
(37, 13, '_menu_item_orphaned', '1523366111'),
(38, 14, '_menu_item_type', 'post_type'),
(39, 14, '_menu_item_menu_item_parent', '0'),
(40, 14, '_menu_item_object_id', '2'),
(41, 14, '_menu_item_object', 'page'),
(42, 14, '_menu_item_target', ''),
(43, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 14, '_menu_item_xfn', ''),
(45, 14, '_menu_item_url', ''),
(46, 14, '_menu_item_orphaned', '1523366111'),
(47, 15, '_menu_item_type', 'custom'),
(48, 15, '_menu_item_menu_item_parent', '0'),
(49, 15, '_menu_item_object_id', '15'),
(50, 15, '_menu_item_object', 'custom'),
(51, 15, '_menu_item_target', ''),
(52, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 15, '_menu_item_xfn', ''),
(54, 15, '_menu_item_url', 'http://localhost/wordpress/'),
(55, 15, '_menu_item_orphaned', '1523366125'),
(56, 16, '_menu_item_type', 'post_type'),
(57, 16, '_menu_item_menu_item_parent', '0'),
(58, 16, '_menu_item_object_id', '2'),
(59, 16, '_menu_item_object', 'page'),
(60, 16, '_menu_item_target', ''),
(61, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 16, '_menu_item_xfn', ''),
(63, 16, '_menu_item_url', ''),
(64, 16, '_menu_item_orphaned', '1523366125'),
(65, 17, '_edit_last', '1'),
(66, 17, '_edit_lock', '1523438347:1'),
(67, 17, '_wp_page_template', 'reservation.php'),
(77, 20, '_menu_item_type', 'post_type'),
(78, 20, '_menu_item_menu_item_parent', '0'),
(79, 20, '_menu_item_object_id', '17'),
(80, 20, '_menu_item_object', 'page'),
(81, 20, '_menu_item_target', ''),
(82, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 20, '_menu_item_xfn', ''),
(84, 20, '_menu_item_url', ''),
(86, 21, '_menu_item_type', 'post_type'),
(87, 21, '_menu_item_menu_item_parent', '0'),
(88, 21, '_menu_item_object_id', '2'),
(89, 21, '_menu_item_object', 'page'),
(90, 21, '_menu_item_target', ''),
(91, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 21, '_menu_item_xfn', ''),
(93, 21, '_menu_item_url', ''),
(94, 21, '_menu_item_orphaned', '1523369952'),
(95, 22, '_menu_item_type', 'post_type'),
(96, 22, '_menu_item_menu_item_parent', '0'),
(97, 22, '_menu_item_object_id', '17'),
(98, 22, '_menu_item_object', 'page'),
(99, 22, '_menu_item_target', ''),
(100, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 22, '_menu_item_xfn', ''),
(102, 22, '_menu_item_url', ''),
(103, 22, '_menu_item_orphaned', '1523369971'),
(105, 23, '_edit_lock', '1523370158:1'),
(106, 23, '_wp_trash_meta_status', 'publish'),
(107, 23, '_wp_trash_meta_time', '1523370172'),
(108, 24, '_edit_last', '1'),
(109, 24, 'field_5acce1c49a5f3', 'a:11:{s:3:\"key\";s:19:\"field_5acce1c49a5f3\";s:5:\"label\";s:10:\"Notre plat\";s:4:\"name\";s:4:\"menu\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(110, 24, 'field_5acce20a9a5f4', 'a:14:{s:3:\"key\";s:19:\"field_5acce20a9a5f4\";s:5:\"label\";s:18:\"Détailles de menu\";s:4:\"name\";s:17:\"detailles_de_menu\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(112, 24, 'position', 'normal'),
(113, 24, 'layout', 'no_box'),
(114, 24, 'hide_on_screen', ''),
(115, 24, '_edit_lock', '1523452555:1'),
(117, 25, '_edit_last', '1'),
(118, 25, '_wp_page_template', 'default'),
(119, 25, '_edit_lock', '1523458836:1'),
(129, 28, '_edit_last', '1'),
(130, 28, '_edit_lock', '1523377624:1'),
(133, 29, 'menu', ''),
(134, 29, '_menu', 'field_5acce1c49a5f3'),
(135, 29, 'detailles_de_menu', 'Test'),
(136, 29, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(137, 28, 'menu', '30'),
(138, 28, '_menu', 'field_5acce1c49a5f3'),
(139, 28, 'detailles_de_menu', 'Test'),
(140, 28, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(141, 30, '_wp_attached_file', '2018/04/restau.jpeg'),
(142, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:19:\"2018/04/restau.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"restau-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 31, 'menu', '30'),
(146, 31, '_menu', 'field_5acce1c49a5f3'),
(147, 31, 'detailles_de_menu', 'Test'),
(148, 31, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(162, 37, 'menu', '30'),
(163, 37, '_menu', 'field_5acce1c49a5f3'),
(164, 37, 'detailles_de_menu', 'test'),
(165, 37, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(166, 25, 'menu', '48'),
(167, 25, '_menu', 'field_5acce1c49a5f3'),
(168, 25, 'detailles_de_menu', 'Bouillabaisse du pêcheur 20€ (Soupe de poisson, accompagnée de croutons de pains tartinés à l\'ail, de rouille, de morceaux de poisson et de pommes de terre)'),
(169, 25, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(170, 38, 'menu', '30'),
(171, 38, '_menu', 'field_5acce1c49a5f3'),
(172, 38, 'detailles_de_menu', 'test'),
(173, 38, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(174, 39, 'menu', '30'),
(175, 39, '_menu', 'field_5acce1c49a5f3'),
(176, 39, 'detailles_de_menu', 'test'),
(177, 39, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(179, 28, '_wp_trash_meta_status', 'publish'),
(180, 28, '_wp_trash_meta_time', '1523378922'),
(181, 28, '_wp_desired_post_slug', 'plat-du-jour'),
(183, 24, 'field_5accebe69fb20', 'a:11:{s:3:\"key\";s:19:\"field_5accebe69fb20\";s:5:\"label\";s:5:\"plat2\";s:4:\"name\";s:5:\"menu2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(186, 41, 'menu', '30'),
(187, 41, '_menu', 'field_5acce1c49a5f3'),
(188, 41, 'detailles_de_menu', 'test'),
(189, 41, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(190, 41, 'menu2', 'test'),
(191, 41, '_menu2', 'field_5accebe69fb20'),
(192, 25, 'menu2', '51'),
(193, 25, '_menu2', 'field_5accebe69fb20'),
(194, 42, 'menu', '30'),
(195, 42, '_menu', 'field_5acce1c49a5f3'),
(196, 42, 'detailles_de_menu', 'test'),
(197, 42, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(198, 42, 'menu2', '2test'),
(199, 42, '_menu2', 'field_5accebe69fb20'),
(200, 24, 'field_5accedd845c68', 'a:14:{s:3:\"key\";s:19:\"field_5accedd845c68\";s:5:\"label\";s:17:\"Détailles plat 2\";s:4:\"name\";s:16:\"detailles_plat_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(201, 24, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"25\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(202, 43, 'menu', '30'),
(203, 43, '_menu', 'field_5acce1c49a5f3'),
(204, 43, 'detailles_de_menu', 'test'),
(205, 43, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(206, 43, 'menu2', '30'),
(207, 43, '_menu2', 'field_5accebe69fb20'),
(208, 43, 'detailles_plat_2', 'test 2'),
(209, 43, '_detailles_plat_2', 'field_5accedd845c68'),
(210, 25, 'detailles_plat_2', 'L’aïoli 19€ (L’aïoli est une sauce épaisse, type mayonnaise, à base d’ail et d’huile d’olive. C’est également un plat à part entière, accompagné de morue et de légumes)'),
(211, 25, '_detailles_plat_2', 'field_5accedd845c68'),
(212, 44, '_field_5', 'kirill'),
(213, 44, '_field_1', 'kir'),
(214, 44, '_field_2', 'kail_x@mail.ru'),
(215, 44, '_field_3', 'test\n'),
(216, 44, '_form_id', '1'),
(217, 44, '_seq_num', '1'),
(218, 45, 'menu', '30'),
(219, 45, '_menu', 'field_5acce1c49a5f3'),
(220, 45, 'detailles_de_menu', 'test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test '),
(221, 45, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(222, 45, 'menu2', '30'),
(223, 45, '_menu2', 'field_5accebe69fb20'),
(224, 45, 'detailles_plat_2', 'test 2'),
(225, 45, '_detailles_plat_2', 'field_5accedd845c68'),
(226, 46, 'menu', '30'),
(227, 46, '_menu', 'field_5acce1c49a5f3'),
(228, 46, 'detailles_de_menu', 'test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test '),
(229, 46, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(230, 46, 'menu2', '30'),
(231, 46, '_menu2', 'field_5accebe69fb20'),
(232, 46, 'detailles_plat_2', 'test 2 test 2 test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2test 2 test 2'),
(233, 46, '_detailles_plat_2', 'field_5accedd845c68'),
(234, 47, 'menu', '30'),
(235, 47, '_menu', 'field_5acce1c49a5f3'),
(236, 47, 'detailles_de_menu', 'test test test test test test test test test test test test test '),
(237, 47, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(238, 47, 'menu2', '30'),
(239, 47, '_menu2', 'field_5accebe69fb20'),
(240, 47, 'detailles_plat_2', 'test 2 test 2 test 2 test 2test 2 test 2test 2 test 2test'),
(241, 47, '_detailles_plat_2', 'field_5accedd845c68'),
(242, 48, '_wp_attached_file', '2018/04/food-1330531_1920.jpg'),
(243, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:29:\"2018/04/food-1330531_1920.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"food-1330531_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"food-1330531_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"food-1330531_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"food-1330531_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 49, 'menu', '48'),
(245, 49, '_menu', 'field_5acce1c49a5f3'),
(246, 49, 'detailles_de_menu', 'Bouillabaisse du pêcheur 20€'),
(247, 49, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(248, 49, 'menu2', '30'),
(249, 49, '_menu2', 'field_5accebe69fb20'),
(250, 49, 'detailles_plat_2', 'test 2 test 2 test 2 test 2test 2 test 2test 2 test 2test'),
(251, 49, '_detailles_plat_2', 'field_5accedd845c68'),
(252, 50, 'menu', '48'),
(253, 50, '_menu', 'field_5acce1c49a5f3'),
(254, 50, 'detailles_de_menu', 'Bouillabaisse du pêcheur 20€ (Soupe de poisson, accompagnée de croutons de pains tartinés à l\'ail, de rouille, de morceaux de poisson et de pommes de terre.)'),
(255, 50, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(256, 50, 'menu2', '30'),
(257, 50, '_menu2', 'field_5accebe69fb20'),
(258, 50, 'detailles_plat_2', 'test 2 test 2 test 2 test 2test 2 test 2test 2 test 2test'),
(259, 50, '_detailles_plat_2', 'field_5accedd845c68'),
(260, 51, '_wp_attached_file', '2018/04/laioli.jpg'),
(261, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:335;s:6:\"height\";i:410;s:4:\"file\";s:18:\"2018/04/laioli.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"laioli-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"laioli-245x300.jpg\";s:5:\"width\";i:245;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 52, 'menu', '48'),
(263, 52, '_menu', 'field_5acce1c49a5f3'),
(264, 52, 'detailles_de_menu', 'Bouillabaisse du pêcheur 20€ (Soupe de poisson, accompagnée de croutons de pains tartinés à l\'ail, de rouille, de morceaux de poisson et de pommes de terre)'),
(265, 52, '_detailles_de_menu', 'field_5acce20a9a5f4'),
(266, 52, 'menu2', '51'),
(267, 52, '_menu2', 'field_5accebe69fb20'),
(268, 52, 'detailles_plat_2', 'L’aïoli 19€ (L’aïoli est une sauce épaisse, type mayonnaise, à base d’ail et d’huile d’olive. C’est également un plat à part entière, accompagné de morue et de légumes)'),
(269, 52, '_detailles_plat_2', 'field_5accedd845c68'),
(270, 53, '_wp_attached_file', '2018/04/cheese-3265466_1920.jpg'),
(271, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:31:\"2018/04/cheese-3265466_1920.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cheese-3265466_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cheese-3265466_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"cheese-3265466_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"cheese-3265466_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"58\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 54, '_wp_attached_file', '2018/04/fish-2366925_1920.jpg'),
(273, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:29:\"2018/04/fish-2366925_1920.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"fish-2366925_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"fish-2366925_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"fish-2366925_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"fish-2366925_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"140\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 55, '_wp_attached_file', '2018/04/food-1330531_1920-1.jpg'),
(275, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:31:\"2018/04/food-1330531_1920-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"food-1330531_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"food-1330531_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"food-1330531_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"food-1330531_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 56, '_wp_attached_file', '2018/04/laioli-1.jpg'),
(277, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:335;s:6:\"height\";i:410;s:4:\"file\";s:20:\"2018/04/laioli-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"laioli-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"laioli-1-245x300.jpg\";s:5:\"width\";i:245;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 57, '_wp_attached_file', '2018/04/salmon-1238667_1920.jpg'),
(279, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1396;s:4:\"file\";s:31:\"2018/04/salmon-1238667_1920.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"salmon-1238667_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"salmon-1238667_1920-300x218.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"salmon-1238667_1920-768x558.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:558;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"salmon-1238667_1920-1024x745.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:745;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 59, '_edit_last', '1'),
(281, 59, '_edit_lock', '1523893357:1'),
(282, 59, '_wp_page_template', 'index.php'),
(283, 61, '_edit_last', '1'),
(285, 61, 'position', 'normal'),
(286, 61, 'layout', 'no_box'),
(287, 61, 'hide_on_screen', ''),
(288, 61, '_edit_lock', '1523459336:1'),
(289, 61, 'field_5ace0b2215069', 'a:11:{s:3:\"key\";s:19:\"field_5ace0b2215069\";s:5:\"label\";s:12:\"Plat du jour\";s:4:\"name\";s:12:\"plat_du_jour\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(290, 61, 'field_5ace0b3f1506a', 'a:14:{s:3:\"key\";s:19:\"field_5ace0b3f1506a\";s:5:\"label\";s:14:\"Detail du plat\";s:4:\"name\";s:14:\"detail_du_plat\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:16:\"Détails du plat\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(294, 63, 'plat_du_jour', '62'),
(295, 63, '_plat_du_jour', 'field_5ace0b2215069'),
(296, 63, 'detail_du_plat', 'Rouleaux de poisson chinois'),
(297, 63, '_detail_du_plat', 'field_5ace0b3f1506a'),
(298, 59, 'plat_du_jour', '51'),
(299, 59, '_plat_du_jour', 'field_5ad0e8aa3c030'),
(300, 59, 'detail_du_plat', 'Rouleaux de poisson chinois'),
(301, 59, '_detail_du_plat', 'field_5ace0b3f1506a'),
(302, 61, 'field_5ace16aaaf4e3', 'a:11:{s:3:\"key\";s:19:\"field_5ace16aaaf4e3\";s:5:\"label\";s:5:\"Plat1\";s:4:\"name\";s:5:\"plat1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(303, 61, 'field_5ace16c8af4e4', 'a:14:{s:3:\"key\";s:19:\"field_5ace16c8af4e4\";s:5:\"label\";s:11:\"detail plat\";s:4:\"name\";s:11:\"detail_plat\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(305, 66, '_edit_last', '1'),
(306, 66, 'plat_du_jour', '62'),
(307, 66, '_plat_du_jour', 'field_5ace0b2215069'),
(308, 66, 'detail_du_plat', 'test'),
(309, 66, '_detail_du_plat', 'field_5ace0b3f1506a'),
(310, 66, 'plat1', '57'),
(311, 66, '_plat1', 'field_5ace16aaaf4e3'),
(312, 66, 'detail_plat', 'test2'),
(313, 66, '_detail_plat', 'field_5ace16c8af4e4'),
(314, 66, '_edit_lock', '1523459847:1'),
(324, 68, '_edit_last', '1'),
(325, 68, 'plat_du_jour', ''),
(326, 68, '_plat_du_jour', 'field_5ace0b2215069'),
(327, 68, 'detail_du_plat', ''),
(328, 68, '_detail_du_plat', 'field_5ace0b3f1506a'),
(329, 68, 'plat1', ''),
(330, 68, '_plat1', 'field_5ace16aaaf4e3'),
(331, 68, 'detail_plat', ''),
(332, 68, '_detail_plat', 'field_5ace16c8af4e4'),
(333, 68, '_edit_lock', '1523457715:1'),
(335, 61, 'rule', 'a:5:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"66\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(337, 70, '_edit_last', '1'),
(338, 70, '_edit_lock', '1523458312:1'),
(339, 70, '_thumbnail_id', '57'),
(340, 70, '_wp_trash_meta_status', 'publish'),
(341, 70, '_wp_trash_meta_time', '1523458460'),
(342, 70, '_wp_desired_post_slug', 'test-2'),
(343, 68, '_wp_trash_meta_status', 'publish'),
(344, 68, '_wp_trash_meta_time', '1523458462'),
(345, 68, '_wp_desired_post_slug', 'test'),
(346, 25, '_wp_trash_meta_status', 'publish'),
(347, 25, '_wp_trash_meta_time', '1523460102'),
(348, 25, '_wp_desired_post_slug', 'menu'),
(349, 66, '_wp_trash_meta_status', 'publish'),
(350, 66, '_wp_trash_meta_time', '1523460108'),
(351, 66, '_wp_desired_post_slug', '66'),
(352, 61, '_wp_trash_meta_status', 'publish'),
(353, 61, '_wp_trash_meta_time', '1523460118'),
(354, 61, '_wp_desired_post_slug', 'acf_plat-du-jour'),
(355, 24, '_wp_trash_meta_status', 'publish'),
(356, 24, '_wp_trash_meta_time', '1523460121'),
(357, 24, '_wp_desired_post_slug', 'acf_menu'),
(358, 2, '_wp_trash_meta_status', 'publish'),
(359, 2, '_wp_trash_meta_time', '1523460148'),
(360, 2, '_wp_desired_post_slug', 'sample-page'),
(361, 72, '_edit_last', '1'),
(362, 72, '_edit_lock', '1523460064:1'),
(363, 72, '_wp_trash_meta_status', 'publish'),
(364, 72, '_wp_trash_meta_time', '1523460275'),
(365, 72, '_wp_desired_post_slug', 'test'),
(366, 75, '_edit_last', '1'),
(367, 75, 'field_5ace2de1d10b8', 'a:14:{s:3:\"key\";s:19:\"field_5ace2de1d10b8\";s:5:\"label\";s:8:\"nom_plat\";s:4:\"name\";s:8:\"nom_plat\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(369, 75, 'position', 'normal'),
(370, 75, 'layout', 'no_box'),
(371, 75, 'hide_on_screen', ''),
(372, 75, '_edit_lock', '1523640960:1'),
(376, 77, '_edit_last', '1'),
(377, 77, '_edit_lock', '1523463091:1'),
(378, 79, '_edit_last', '1'),
(379, 79, '_edit_lock', '1523901344:1'),
(380, 79, '_wp_page_template', 'default'),
(381, 81, '_menu_item_type', 'post_type'),
(382, 81, '_menu_item_menu_item_parent', '0'),
(383, 81, '_menu_item_object_id', '79'),
(384, 81, '_menu_item_object', 'page'),
(385, 81, '_menu_item_target', ''),
(386, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 81, '_menu_item_xfn', ''),
(388, 81, '_menu_item_url', ''),
(391, 84, '_edit_last', '1'),
(392, 84, '_edit_lock', '1523464976:1'),
(395, 84, '_wp_desired_post_slug', ''),
(396, 75, 'field_5ace3a30d4309', 'a:11:{s:3:\"key\";s:19:\"field_5ace3a30d4309\";s:5:\"label\";s:8:\"img_plat\";s:4:\"name\";s:8:\"img_plat\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(400, 84, '_wp_trash_meta_status', 'draft'),
(401, 84, '_wp_trash_meta_time', '1523465121'),
(402, 89, '_edit_last', '1'),
(403, 90, 'nom_plat', 'nom'),
(404, 90, '_nom_plat', 'field_5ace2de1d10b8'),
(405, 90, 'img_plat', '62'),
(406, 90, '_img_plat', 'field_5ace3a30d4309'),
(407, 89, 'nom_plat', 'Bouillabaisse'),
(408, 89, '_nom_plat', 'field_5ace2de1d10b8'),
(409, 89, 'img_plat', '48'),
(410, 89, '_img_plat', 'field_5ace3a30d4309'),
(411, 89, '_edit_lock', '1523636105:1'),
(415, 91, '_edit_last', '1'),
(416, 92, 'nom_plat', 'test 2'),
(417, 92, '_nom_plat', 'field_5ace2de1d10b8'),
(418, 92, 'img_plat', '57'),
(419, 92, '_img_plat', 'field_5ace3a30d4309'),
(420, 91, 'nom_plat', 'La bourride'),
(421, 91, '_nom_plat', 'field_5ace2de1d10b8'),
(422, 91, 'img_plat', '100'),
(423, 91, '_img_plat', 'field_5ace3a30d4309'),
(424, 91, '_edit_lock', '1523635430:1'),
(425, 96, 'nom_plat', 'Bouillabaisse'),
(426, 96, '_nom_plat', 'field_5ace2de1d10b8'),
(427, 96, 'img_plat', '48'),
(428, 96, '_img_plat', 'field_5ace3a30d4309'),
(429, 97, 'nom_plat', ' '),
(430, 97, '_nom_plat', 'field_5ace2de1d10b8'),
(431, 97, 'img_plat', '48'),
(432, 97, '_img_plat', 'field_5ace3a30d4309'),
(433, 98, 'nom_plat', 'Soupe de poisson, accompagnée de croutons de pains tartinés à l\'ail, de rouille, de morceaux de poisson et de pommes de terre. '),
(434, 98, '_nom_plat', 'field_5ace2de1d10b8'),
(435, 98, 'img_plat', '48'),
(436, 98, '_img_plat', 'field_5ace3a30d4309'),
(437, 99, 'nom_plat', 'test '),
(438, 99, '_nom_plat', 'field_5ace2de1d10b8'),
(439, 99, 'img_plat', ''),
(440, 99, '_img_plat', 'field_5ace3a30d4309'),
(441, 100, '_wp_attached_file', '2018/04/bourride.jpeg'),
(442, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:467;s:4:\"file\";s:21:\"2018/04/bourride.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bourride-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bourride-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(443, 101, 'nom_plat', 'La bourride est un mets de poisons blancs et de fruits de mer proche de la Bouillabaisse. 15 €'),
(444, 101, '_nom_plat', 'field_5ace2de1d10b8'),
(445, 101, 'img_plat', '100'),
(446, 101, '_img_plat', 'field_5ace3a30d4309'),
(447, 102, 'nom_plat', 'Soupe de poisson, accompagnée de croutons de pains tartinés à l\'ail, de rouille, de morceaux de poisson et de pommes de terre. 20€'),
(448, 102, '_nom_plat', 'field_5ace2de1d10b8'),
(449, 102, 'img_plat', '48'),
(450, 102, '_img_plat', 'field_5ace3a30d4309'),
(451, 89, '_wp_old_slug', 'test'),
(452, 91, '_wp_old_slug', 'test2'),
(453, 104, '_wp_attached_file', '2018/04/pistou.jpeg'),
(454, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:287;s:6:\"height\";i:175;s:4:\"file\";s:19:\"2018/04/pistou.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"pistou-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(455, 103, '_edit_last', '1'),
(456, 105, 'nom_plat', 'La soupe au pistou est une soupe de légumes d\'été, à base de de pâtes et servie avec du pistou (mélange d\'ail, d\'huile d\'olive et de basilic). 18€'),
(457, 105, '_nom_plat', 'field_5ace2de1d10b8'),
(458, 105, 'img_plat', '104'),
(459, 105, '_img_plat', 'field_5ace3a30d4309'),
(460, 103, 'nom_plat', 'La soupe au pistou'),
(461, 103, '_nom_plat', 'field_5ace2de1d10b8'),
(462, 103, 'img_plat', '104'),
(463, 103, '_img_plat', 'field_5ace3a30d4309'),
(464, 103, '_edit_lock', '1523634609:1'),
(465, 106, 'nom_plat', 'La soupe au pistou est une soupe de légumes d\'été, à base de de pâtes et servie avec du pistou (mélange d\'ail, d\'huile d\'olive et de basilic). 18€'),
(466, 106, '_nom_plat', 'field_5ace2de1d10b8'),
(467, 106, 'img_plat', '104'),
(468, 106, '_img_plat', 'field_5ace3a30d4309'),
(469, 107, 'nom_plat', 'La soupe au pistou est une soupe de légumes d\'été, à base de de pâtes et servie avec du pistou (mélange d\'ail, d\'huile d\'olive et de basilic). 18€'),
(470, 107, '_nom_plat', 'field_5ace2de1d10b8'),
(471, 107, 'img_plat', '104'),
(472, 107, '_img_plat', 'field_5ace3a30d4309'),
(473, 108, 'nom_plat', 'La soupe au pistou est une soupe de légumes d\'été, à base de de pâtes et servie avec du pistou (mélange d\'ail, d\'huile d\'olive et de basilic). 18€'),
(474, 108, '_nom_plat', 'field_5ace2de1d10b8'),
(475, 108, 'img_plat', '104'),
(476, 108, '_img_plat', 'field_5ace3a30d4309'),
(477, 75, 'field_5ad0cb6f6661a', 'a:14:{s:3:\"key\";s:19:\"field_5ad0cb6f6661a\";s:5:\"label\";s:4:\"prix\";s:4:\"name\";s:4:\"prix\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(479, 109, 'nom_plat', 'La soupe au pistou est une soupe de légumes d\'été, à base de de pâtes et servie avec du pistou (mélange d\'ail, d\'huile d\'olive et de basilic). 18€'),
(480, 109, '_nom_plat', 'field_5ace2de1d10b8'),
(481, 109, 'img_plat', '104'),
(482, 109, '_img_plat', 'field_5ace3a30d4309'),
(483, 109, 'prix', '18€'),
(484, 109, '_prix', 'field_5ad0cb6f6661a'),
(485, 103, 'prix', 'Prix: 18€'),
(486, 103, '_prix', 'field_5ad0cb6f6661a'),
(487, 110, 'nom_plat', 'La soupe au pistou est une soupe de légumes d\'été, à base de de pâtes et servie avec du pistou (mélange d\'ail, d\'huile d\'olive et de basilic).'),
(488, 110, '_nom_plat', 'field_5ace2de1d10b8'),
(489, 110, 'img_plat', '104'),
(490, 110, '_img_plat', 'field_5ace3a30d4309'),
(491, 110, 'prix', '18€'),
(492, 110, '_prix', 'field_5ad0cb6f6661a'),
(493, 111, 'nom_plat', 'La soupe au pistou'),
(494, 111, '_nom_plat', 'field_5ace2de1d10b8'),
(495, 111, 'img_plat', '104'),
(496, 111, '_img_plat', 'field_5ace3a30d4309'),
(497, 111, 'prix', '18€'),
(498, 111, '_prix', 'field_5ad0cb6f6661a'),
(499, 75, 'field_5ad0cc8845ba8', 'a:14:{s:3:\"key\";s:19:\"field_5ad0cc8845ba8\";s:5:\"label\";s:21:\"liste_des_ingredients\";s:4:\"name\";s:21:\"liste_des_ingredients\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(503, 112, 'nom_plat', 'La soupe au pistou'),
(504, 112, '_nom_plat', 'field_5ace2de1d10b8'),
(505, 112, 'img_plat', '104'),
(506, 112, '_img_plat', 'field_5ace3a30d4309'),
(507, 112, 'prix', '18€'),
(508, 112, '_prix', 'field_5ad0cb6f6661a'),
(509, 112, 'liste_des_ingredients', '     2 pommes de terre moyenne     1kg de haricots verts     600g de haricots coco écossés (soit environ 1,2kg avec la cosse)     4 carottes     1 grosse courgette (ou 2 petites)     1 oignon     2 tomates     6 gousses d’ail     12 cl d’huile d’olive     1 gros bouquet de basilic (il n’y en a jamais trop !)     50g de coquillettes (cuisson rapide)     Sel'),
(510, 112, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(511, 112, '_', 'field_5ad0cdb145ba9'),
(512, 103, 'liste_des_ingredients', 'Les ingrédients: 2 pommes de terre moyenne , 1kg de haricots verts , 600g de haricots coco écossés (soit environ 1,2kg avec la cosse), 4 carottes , 1 grosse courgette (ou 2 petites), 1 oignon ,2 tomates, 6 gousses d’ail , 12 cl d’huile d’olive, 1 gros bouquet de basilic (il n’y en a jamais trop !), 50g de coquillettes (cuisson rapide), Sel.'),
(513, 103, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(514, 103, '_', 'field_5ad0d10ee582a'),
(515, 113, 'nom_plat', 'La soupe au pistou'),
(516, 113, '_nom_plat', 'field_5ace2de1d10b8'),
(517, 113, 'img_plat', '104'),
(518, 113, '_img_plat', 'field_5ace3a30d4309'),
(519, 113, 'prix', '18€'),
(520, 113, '_prix', 'field_5ad0cb6f6661a'),
(521, 113, 'liste_des_ingredients', 'Les ingrédients: 2 pommes de terre moyenne , 1kg de haricots verts , 600g de haricots coco écossés (soit environ 1,2kg avec la cosse), 4 carottes , 1 grosse courgette (ou 2 petites), 1 oignon ,2 tomates, 6 gousses d’ail , 12 cl d’huile d’olive, 1 gros bouquet de basilic (il n’y en a jamais trop !), 50g de coquillettes (cuisson rapide), Sel.'),
(522, 113, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(523, 113, '_', 'field_5ad0cdb145ba9'),
(528, 114, 'nom_plat', 'La soupe au pistou'),
(529, 114, '_nom_plat', 'field_5ace2de1d10b8'),
(530, 114, 'img_plat', '104'),
(531, 114, '_img_plat', 'field_5ace3a30d4309'),
(532, 114, 'prix', '18€'),
(533, 114, '_prix', 'field_5ad0cb6f6661a'),
(534, 114, 'liste_des_ingredients', 'Les ingrédients: 2 pommes de terre moyenne , 1kg de haricots verts , 600g de haricots coco écossés (soit environ 1,2kg avec la cosse), 4 carottes , 1 grosse courgette (ou 2 petites), 1 oignon ,2 tomates, 6 gousses d’ail , 12 cl d’huile d’olive, 1 gros bouquet de basilic (il n’y en a jamais trop !), 50g de coquillettes (cuisson rapide), Sel.'),
(535, 114, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(536, 114, '_', 'field_5ad0d10ee582a'),
(537, 115, 'nom_plat', 'La soupe au pistou'),
(538, 115, '_nom_plat', 'field_5ace2de1d10b8'),
(539, 115, 'img_plat', '104'),
(540, 115, '_img_plat', 'field_5ace3a30d4309'),
(541, 115, 'prix', '18€'),
(542, 115, '_prix', 'field_5ad0cb6f6661a'),
(543, 115, 'liste_des_ingredients', 'Les ingrédients: 2 pommes de terre moyenne , 1kg de haricots verts , 600g de haricots coco écossés (soit environ 1,2kg avec la cosse), 4 carottes , 1 grosse courgette (ou 2 petites), 1 oignon ,2 tomates, 6 gousses d’ail , 12 cl d’huile d’olive, 1 gros bouquet de basilic (il n’y en a jamais trop !), 50g de coquillettes (cuisson rapide), Sel.'),
(544, 115, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(545, 115, '_', 'field_5ad0d10ee582a'),
(546, 75, 'field_5ad0d187e2a5c', 'a:14:{s:3:\"key\";s:19:\"field_5ad0d187e2a5c\";s:5:\"label\";s:9:\"categorie\";s:4:\"name\";s:9:\"categorie\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(547, 75, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"plats\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(548, 116, 'nom_plat', 'La soupe au pistou'),
(549, 116, '_nom_plat', 'field_5ace2de1d10b8'),
(550, 116, 'img_plat', '104'),
(551, 116, '_img_plat', 'field_5ace3a30d4309'),
(552, 116, 'prix', '18€'),
(553, 116, '_prix', 'field_5ad0cb6f6661a'),
(554, 116, 'liste_des_ingredients', 'Les ingrédients: 2 pommes de terre moyenne , 1kg de haricots verts , 600g de haricots coco écossés (soit environ 1,2kg avec la cosse), 4 carottes , 1 grosse courgette (ou 2 petites), 1 oignon ,2 tomates, 6 gousses d’ail , 12 cl d’huile d’olive, 1 gros bouquet de basilic (il n’y en a jamais trop !), 50g de coquillettes (cuisson rapide), Sel.'),
(555, 116, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(556, 116, 'categorie', 'Catégorie: Plat principal'),
(557, 116, '_categorie', 'field_5ad0d187e2a5c'),
(558, 103, 'categorie', 'Catégorie: Plat principal'),
(559, 103, '_categorie', 'field_5ad0d187e2a5c'),
(560, 117, 'nom_plat', 'La soupe au pistou'),
(561, 117, '_nom_plat', 'field_5ace2de1d10b8'),
(562, 117, 'img_plat', '104'),
(563, 117, '_img_plat', 'field_5ace3a30d4309'),
(564, 117, 'prix', 'Prix: 18€'),
(565, 117, '_prix', 'field_5ad0cb6f6661a'),
(566, 117, 'liste_des_ingredients', 'Les ingrédients: 2 pommes de terre moyenne , 1kg de haricots verts , 600g de haricots coco écossés (soit environ 1,2kg avec la cosse), 4 carottes , 1 grosse courgette (ou 2 petites), 1 oignon ,2 tomates, 6 gousses d’ail , 12 cl d’huile d’olive, 1 gros bouquet de basilic (il n’y en a jamais trop !), 50g de coquillettes (cuisson rapide), Sel.'),
(567, 117, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(568, 117, 'categorie', 'Catégorie: Plat principal'),
(569, 117, '_categorie', 'field_5ad0d187e2a5c'),
(570, 118, 'nom_plat', 'La bourride'),
(571, 118, '_nom_plat', 'field_5ace2de1d10b8'),
(572, 118, 'img_plat', '100'),
(573, 118, '_img_plat', 'field_5ace3a30d4309'),
(574, 118, 'prix', 'Prix 15€'),
(575, 118, '_prix', 'field_5ad0cb6f6661a'),
(576, 118, 'liste_des_ingredients', 'Les ingrédients: une petite queue de lotte, un rouget-grondin, un beau tronçon de congre, 4 merlans,  un petit turbot,  un loup d’un petit kilo,  un petit Saint-Pierre, 8 langoustines, 4 coquilles saint-jacques , 2 poireaux , 2 carottes un gros oignon, 6 gousses d’ail, une branche de céleri, 6 jaunes d’oeuf, 15 cl d’huile d’olive,  un citron , un bouquet garni , sel, poivre,  une baguette de pain coupée en rondelles.'),
(577, 118, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(578, 118, 'categorie', 'Catégorie: Plat principal'),
(579, 118, '_categorie', 'field_5ad0d187e2a5c'),
(580, 91, 'prix', 'Prix 15€'),
(581, 91, '_prix', 'field_5ad0cb6f6661a'),
(582, 91, 'liste_des_ingredients', 'Les ingrédients: une petite queue de lotte, un rouget-grondin, un beau tronçon de congre, 4 merlans,  un petit turbot,  un loup d’un petit kilo,  un petit Saint-Pierre, 8 langoustines, 4 coquilles saint-jacques , 2 poireaux , 2 carottes un gros oignon, 6 gousses d’ail, une branche de céleri, 6 jaunes d’oeuf, 15 cl d’huile d’olive,  un citron , un bouquet garni , sel, poivre,  une baguette de pain coupée en rondelles.'),
(583, 91, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(584, 91, 'categorie', 'Catégorie: Plat principal'),
(585, 91, '_categorie', 'field_5ad0d187e2a5c'),
(586, 119, 'nom_plat', 'Soupe de poisson, accompagnée de croutons de pains tartinés à l\'ail, de rouille, de morceaux de poisson et de pommes de terre. 20€'),
(587, 119, '_nom_plat', 'field_5ace2de1d10b8'),
(588, 119, 'img_plat', '48'),
(589, 119, '_img_plat', 'field_5ace3a30d4309'),
(590, 119, 'prix', '50€'),
(591, 119, '_prix', 'field_5ad0cb6f6661a'),
(592, 119, 'liste_des_ingredients', 'Les ingredients:            Aimer la recette (2 coups de coeur)   Bouillabaisse comme à Marseille Bouillabaisse comme à Marseille Les Ingrédients: 2 kg de poissons variés entiers (rascasse saint-pierre lotte daurade grondin merlan etc…), des tranches de congre, 2 oignons, 3 gousses d\'ail , 3 branches de céleri, 10 cl d\'huile d\'olive, 2 poireaux, 3 tomates, 1 bulbe de fenouil, 1 tronçon d\'écorce d\'orange séché, 1 bouquet garni, 1 dizaine de petites étrilles, 1 bol de rouille, 1 baguette de pain, 1 pincée de safran, sel fin de cuisine , poivre blanc moulu. '),
(593, 119, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(594, 119, 'categorie', 'Catégorie: Plat principal'),
(595, 119, '_categorie', 'field_5ad0d187e2a5c'),
(596, 89, 'prix', '50€'),
(597, 89, '_prix', 'field_5ad0cb6f6661a'),
(598, 89, 'liste_des_ingredients', 'Les ingredients: 2 kg de poissons variés entiers (rascasse saint-pierre lotte daurade grondin merlan etc…), des tranches de congre, 2 oignons, 3 gousses d\'ail , 3 branches de céleri, 10 cl d\'huile d\'olive, 2 poireaux, 3 tomates, 1 bulbe de fenouil, 1 tronçon d\'écorce d\'orange séché, 1 bouquet garni, 1 dizaine de petites étrilles, 1 bol de rouille, 1 baguette de pain, 1 pincée de safran, sel fin de cuisine , poivre blanc moulu. '),
(599, 89, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(600, 89, 'categorie', 'Catégorie: Plat principal'),
(601, 89, '_categorie', 'field_5ad0d187e2a5c'),
(602, 120, 'nom_plat', 'Bouillabaisse'),
(603, 120, '_nom_plat', 'field_5ace2de1d10b8'),
(604, 120, 'img_plat', '48'),
(605, 120, '_img_plat', 'field_5ace3a30d4309'),
(606, 120, 'prix', '50€'),
(607, 120, '_prix', 'field_5ad0cb6f6661a'),
(608, 120, 'liste_des_ingredients', 'Les ingredients:            Aimer la recette (2 coups de coeur)   Bouillabaisse comme à Marseille Bouillabaisse comme à Marseille Les Ingrédients: 2 kg de poissons variés entiers (rascasse saint-pierre lotte daurade grondin merlan etc…), des tranches de congre, 2 oignons, 3 gousses d\'ail , 3 branches de céleri, 10 cl d\'huile d\'olive, 2 poireaux, 3 tomates, 1 bulbe de fenouil, 1 tronçon d\'écorce d\'orange séché, 1 bouquet garni, 1 dizaine de petites étrilles, 1 bol de rouille, 1 baguette de pain, 1 pincée de safran, sel fin de cuisine , poivre blanc moulu. '),
(609, 120, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(610, 120, 'categorie', 'Catégorie: Plat principal'),
(611, 120, '_categorie', 'field_5ad0d187e2a5c'),
(612, 121, 'nom_plat', 'Bouillabaisse'),
(613, 121, '_nom_plat', 'field_5ace2de1d10b8'),
(614, 121, 'img_plat', '48'),
(615, 121, '_img_plat', 'field_5ace3a30d4309'),
(616, 121, 'prix', '50€'),
(617, 121, '_prix', 'field_5ad0cb6f6661a'),
(618, 121, 'liste_des_ingredients', 'Les ingredients: 2 kg de poissons variés entiers (rascasse saint-pierre lotte daurade grondin merlan etc…), des tranches de congre, 2 oignons, 3 gousses d\'ail , 3 branches de céleri, 10 cl d\'huile d\'olive, 2 poireaux, 3 tomates, 1 bulbe de fenouil, 1 tronçon d\'écorce d\'orange séché, 1 bouquet garni, 1 dizaine de petites étrilles, 1 bol de rouille, 1 baguette de pain, 1 pincée de safran, sel fin de cuisine , poivre blanc moulu. '),
(619, 121, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(620, 121, 'categorie', 'Catégorie: Plat principal'),
(621, 121, '_categorie', 'field_5ad0d187e2a5c'),
(622, 122, '_edit_last', '1'),
(623, 122, '_edit_lock', '1523636728:1'),
(624, 123, '_wp_attached_file', '2018/04/espadon-grillé-au-romarin.jpg'),
(625, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:38:\"2018/04/espadon-grillé-au-romarin.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"espadon-grillé-au-romarin-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"espadon-grillé-au-romarin-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"espadon-grillé-au-romarin-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(626, 124, 'nom_plat', 'Espadon grillé au romarin '),
(627, 124, '_nom_plat', 'field_5ace2de1d10b8'),
(628, 124, 'img_plat', '123'),
(629, 124, '_img_plat', 'field_5ace3a30d4309'),
(630, 124, 'prix', '14€'),
(631, 124, '_prix', 'field_5ad0cb6f6661a'),
(632, 124, 'liste_des_ingredients', 'Les ingrédients: 11 cl de vin blanc ,5 gousses d\'ail hachées, 2 cuillères à café de romarin frais haché, 450 g de steaks d\'espadon, sel et poivre du moulin, 3 cl de jus de citron, 1,5 cl d\'huile d\'olive vierge extra, 4 rondelles de citron (pour la présentation).'),
(633, 124, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(634, 124, 'categorie', 'Catégorie: Plat principal'),
(635, 124, '_categorie', 'field_5ad0d187e2a5c'),
(636, 122, 'nom_plat', 'Espadon grillé au romarin '),
(637, 122, '_nom_plat', 'field_5ace2de1d10b8'),
(638, 122, 'img_plat', '123'),
(639, 122, '_img_plat', 'field_5ace3a30d4309'),
(640, 122, 'prix', '14€'),
(641, 122, '_prix', 'field_5ad0cb6f6661a'),
(642, 122, 'liste_des_ingredients', 'Les ingrédients: 11 cl de vin blanc ,5 gousses d\'ail hachées, 2 cuillères à café de romarin frais haché, 450 g de steaks d\'espadon, sel et poivre du moulin, 3 cl de jus de citron, 1,5 cl d\'huile d\'olive vierge extra, 4 rondelles de citron (pour la présentation).'),
(643, 122, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(644, 122, 'categorie', 'Catégorie: Plat principal'),
(645, 122, '_categorie', 'field_5ad0d187e2a5c'),
(648, 125, '_edit_last', '1'),
(649, 127, 'nom_plat', 'Filets de saumon au four '),
(650, 127, '_nom_plat', 'field_5ace2de1d10b8'),
(651, 127, 'img_plat', '126'),
(652, 127, '_img_plat', 'field_5ace3a30d4309'),
(653, 127, 'prix', '17€'),
(654, 127, '_prix', 'field_5ad0cb6f6661a'),
(655, 127, 'liste_des_ingredients', 'Les ingrédients: 2 filets de saumon frais, d\'environ 150 g chacun, 2 gousses d\'ail, hachées, 10 cl d\'huile d\'olive, 1 cuillère à café de basilic séché, Sel et poivre du moulin, 1 cuillère à soupe de jus de citron, 1 cuillère à soupe de persil haché'),
(656, 127, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(657, 127, 'categorie', 'Catégorie: Plat principal'),
(658, 127, '_categorie', 'field_5ad0d187e2a5c'),
(659, 125, 'nom_plat', 'Filets de saumon au four '),
(660, 125, '_nom_plat', 'field_5ace2de1d10b8'),
(661, 125, 'img_plat', '133'),
(662, 125, '_img_plat', 'field_5ace3a30d4309'),
(663, 125, 'prix', 'Prix 17€'),
(664, 125, '_prix', 'field_5ad0cb6f6661a'),
(665, 125, 'liste_des_ingredients', 'Les ingrédients: 2 filets de saumon frais, d\'environ 150 g chacun, 2 gousses d\'ail, hachées, 10 cl d\'huile d\'olive, 1 cuillère à café de basilic séché, Sel et poivre du moulin, 1 cuillère à soupe de jus de citron, 1 cuillère à soupe de persil haché'),
(666, 125, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(667, 125, 'categorie', 'Catégorie: Plat principal'),
(668, 125, '_categorie', 'field_5ad0d187e2a5c'),
(669, 125, '_edit_lock', '1523637698:1'),
(670, 128, '_edit_last', '1'),
(671, 128, '_edit_lock', '1523640638:1'),
(674, 130, 'nom_plat', 'Curry de saumon au chutney de fruit'),
(675, 130, '_nom_plat', 'field_5ace2de1d10b8'),
(676, 130, 'img_plat', '129');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(677, 130, '_img_plat', 'field_5ace3a30d4309'),
(678, 130, 'prix', '15€'),
(679, 130, '_prix', 'field_5ad0cb6f6661a'),
(680, 130, 'liste_des_ingredients', 'Les ingrédients: 2 cuillères à soupe de pâte de curry, 2 cuillères à soupe de jus de citron vert frais, 4 filets de saumon, 1 nectarine dénoyautée et coupée en morceaux, 2 prunes dénoyautées et coupées en morceaux, 50 g de mûres.'),
(681, 130, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(682, 130, 'categorie', 'Catégorie: Plat principal'),
(683, 130, '_categorie', 'field_5ad0d187e2a5c'),
(684, 128, 'nom_plat', 'Curry de saumon au chutney à la mangue'),
(685, 128, '_nom_plat', 'field_5ace2de1d10b8'),
(686, 128, 'img_plat', '135'),
(687, 128, '_img_plat', 'field_5ace3a30d4309'),
(688, 128, 'prix', 'Prix 15€'),
(689, 128, '_prix', 'field_5ad0cb6f6661a'),
(690, 128, 'liste_des_ingredients', 'Les ingrédients: 2 cuillères à soupe de pâte de curry, 2 cuillères à soupe de jus de citron vert frais, 4 filets de saumon, 1 nectarine dénoyautée et coupée en morceaux, 2 prunes dénoyautées et coupées en morceaux, 50 g de mangue.'),
(691, 128, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(692, 128, 'categorie', 'Catégorie: Plat principal'),
(693, 128, '_categorie', 'field_5ad0d187e2a5c'),
(694, 131, 'nom_plat', 'Filets de saumon au four '),
(695, 131, '_nom_plat', 'field_5ace2de1d10b8'),
(696, 131, 'img_plat', '126'),
(697, 131, '_img_plat', 'field_5ace3a30d4309'),
(698, 131, 'prix', 'Prix 17€'),
(699, 131, '_prix', 'field_5ad0cb6f6661a'),
(700, 131, 'liste_des_ingredients', 'Les ingrédients: 2 filets de saumon frais, d\'environ 150 g chacun, 2 gousses d\'ail, hachées, 10 cl d\'huile d\'olive, 1 cuillère à café de basilic séché, Sel et poivre du moulin, 1 cuillère à soupe de jus de citron, 1 cuillère à soupe de persil haché'),
(701, 131, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(702, 131, 'categorie', 'Catégorie: Plat principal'),
(703, 131, '_categorie', 'field_5ad0d187e2a5c'),
(704, 132, 'nom_plat', 'Curry de saumon au chutney de fruit'),
(705, 132, '_nom_plat', 'field_5ace2de1d10b8'),
(706, 132, 'img_plat', '129'),
(707, 132, '_img_plat', 'field_5ace3a30d4309'),
(708, 132, 'prix', 'Prix 15€'),
(709, 132, '_prix', 'field_5ad0cb6f6661a'),
(710, 132, 'liste_des_ingredients', 'Les ingrédients: 2 cuillères à soupe de pâte de curry, 2 cuillères à soupe de jus de citron vert frais, 4 filets de saumon, 1 nectarine dénoyautée et coupée en morceaux, 2 prunes dénoyautées et coupées en morceaux, 50 g de mûres.'),
(711, 132, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(712, 132, 'categorie', 'Catégorie: Plat principal'),
(713, 132, '_categorie', 'field_5ad0d187e2a5c'),
(714, 133, '_wp_attached_file', '2018/04/filets-de-saumon-au-four-.jpg'),
(715, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:37:\"2018/04/filets-de-saumon-au-four-.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"filets-de-saumon-au-four--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"filets-de-saumon-au-four--300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"filets-de-saumon-au-four--768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(716, 134, 'nom_plat', 'Filets de saumon au four '),
(717, 134, '_nom_plat', 'field_5ace2de1d10b8'),
(718, 134, 'img_plat', '133'),
(719, 134, '_img_plat', 'field_5ace3a30d4309'),
(720, 134, 'prix', 'Prix 17€'),
(721, 134, '_prix', 'field_5ad0cb6f6661a'),
(722, 134, 'liste_des_ingredients', 'Les ingrédients: 2 filets de saumon frais, d\'environ 150 g chacun, 2 gousses d\'ail, hachées, 10 cl d\'huile d\'olive, 1 cuillère à café de basilic séché, Sel et poivre du moulin, 1 cuillère à soupe de jus de citron, 1 cuillère à soupe de persil haché'),
(723, 134, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(724, 134, 'categorie', 'Catégorie: Plat principal'),
(725, 134, '_categorie', 'field_5ad0d187e2a5c'),
(726, 135, '_wp_attached_file', '2018/04/curry-de-saumon-au-chutney-à-la-mangue.jpg'),
(727, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:521;s:4:\"file\";s:51:\"2018/04/curry-de-saumon-au-chutney-à-la-mangue.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"curry-de-saumon-au-chutney-à-la-mangue-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"curry-de-saumon-au-chutney-à-la-mangue-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"curry-de-saumon-au-chutney-à-la-mangue-768x500.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(728, 136, 'nom_plat', 'Curry de saumon au chutney à la mangue'),
(729, 136, '_nom_plat', 'field_5ace2de1d10b8'),
(730, 136, 'img_plat', '135'),
(731, 136, '_img_plat', 'field_5ace3a30d4309'),
(732, 136, 'prix', 'Prix 15€'),
(733, 136, '_prix', 'field_5ad0cb6f6661a'),
(734, 136, 'liste_des_ingredients', 'Les ingrédients: 2 cuillères à soupe de pâte de curry, 2 cuillères à soupe de jus de citron vert frais, 4 filets de saumon, 1 nectarine dénoyautée et coupée en morceaux, 2 prunes dénoyautées et coupées en morceaux, 50 g de mangue.'),
(735, 136, '_liste_des_ingredients', 'field_5ad0cc8845ba8'),
(736, 136, 'categorie', 'Catégorie: Plat principal'),
(737, 136, '_categorie', 'field_5ad0d187e2a5c'),
(739, 138, '_wp_attached_file', '2018/04/cropped-laioli-1.jpg'),
(740, 138, '_wp_attachment_context', 'custom-header'),
(741, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:740;s:4:\"file\";s:28:\"2018/04/cropped-laioli-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-laioli-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-laioli-1-300x222.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-laioli-1-768x568.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:56;}'),
(744, 139, '_wp_attached_file', '2018/04/table.jpg'),
(745, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:848;s:4:\"file\";s:17:\"2018/04/table.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"table-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"table-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"table-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"table-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(746, 140, '_wp_attached_file', '2018/04/cropped-table.jpg'),
(747, 140, '_wp_attachment_context', 'custom-header'),
(748, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:662;s:4:\"file\";s:25:\"2018/04/cropped-table.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-table-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-table-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"cropped-table-768x508.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:139;}'),
(751, 137, '_wp_trash_meta_status', 'publish'),
(752, 137, '_wp_trash_meta_time', '1523638662'),
(753, 141, '_wp_trash_meta_status', 'publish'),
(754, 141, '_wp_trash_meta_time', '1523638918'),
(755, 142, '_edit_last', '1'),
(758, 142, 'position', 'normal'),
(759, 142, 'layout', 'no_box'),
(760, 142, 'hide_on_screen', ''),
(761, 142, '_edit_lock', '1523640298:1'),
(762, 143, 'plat_du_jour', '123'),
(763, 143, '_plat_du_jour', 'field_5ad0e3510332a'),
(772, 145, 'plat_du_jour', ''),
(773, 145, '_plat_du_jour', 'field_5ad0e3510332a'),
(776, 146, 'plat_du_jour', '51'),
(777, 146, '_plat_du_jour', 'field_5ad0e3510332a'),
(781, 142, 'rule', 'a:5:{s:5:\"param\";s:11:\"post_format\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"standard\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(782, 142, '_wp_trash_meta_status', 'publish'),
(783, 142, '_wp_trash_meta_time', '1523640446'),
(784, 142, '_wp_desired_post_slug', 'acf_plat-du-jour'),
(785, 147, '_edit_last', '1'),
(788, 147, 'position', 'normal'),
(789, 147, 'layout', 'no_box'),
(790, 147, 'hide_on_screen', ''),
(791, 147, '_edit_lock', '1523644014:1'),
(804, 151, '_edit_last', '1'),
(805, 151, '_edit_lock', '1523641105:1'),
(807, 152, '_edit_lock', '1523641538:1'),
(809, 147, 'field_5ad0f271e1b46', 'a:11:{s:3:\"key\";s:19:\"field_5ad0f271e1b46\";s:5:\"label\";s:13:\"img_plat_jour\";s:4:\"name\";s:13:\"img_plat_jour\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(813, 152, '_customize_restore_dismissed', '1'),
(814, 156, 'img_plat_jour', '135'),
(815, 156, '_img_plat_jour', 'field_5ad0f271e1b46'),
(816, 59, 'img_plat_jour', '135'),
(817, 59, '_img_plat_jour', 'field_5ad0f271e1b46'),
(819, 147, 'rule', 'a:5:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(820, 147, '_wp_trash_meta_status', 'publish'),
(821, 147, '_wp_trash_meta_time', '1523644163'),
(822, 147, '_wp_desired_post_slug', 'acf_platdujour'),
(823, 161, '_edit_last', '1'),
(825, 161, 'position', 'normal'),
(826, 161, 'layout', 'no_box'),
(827, 161, 'hide_on_screen', ''),
(828, 161, '_edit_lock', '1523902402:1'),
(829, 161, 'field_5ad0f7adb843b', 'a:11:{s:3:\"key\";s:19:\"field_5ad0f7adb843b\";s:5:\"label\";s:11:\"Imgplatjour\";s:4:\"name\";s:11:\"imgplatjour\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(831, 162, '_edit_last', '1'),
(832, 162, '_edit_lock', '1523952350:1'),
(833, 162, 'img_plat_jour', '135'),
(834, 162, '_img_plat_jour', 'field_5ad0f7adb843b'),
(839, 162, 'imgplatjour', '135'),
(840, 162, '_imgplatjour', 'field_5ad0f7adb843b'),
(843, 163, '_wp_trash_meta_status', 'publish'),
(844, 163, '_wp_trash_meta_time', '1523882950'),
(845, 164, '_edit_lock', '1523883176:1'),
(846, 164, '_wp_trash_meta_status', 'publish'),
(847, 164, '_wp_trash_meta_time', '1523883211'),
(851, 165, '_edit_last', '1'),
(852, 165, '_edit_lock', '1523953105:1'),
(853, 165, '_wp_page_template', 'plat_jour.php'),
(855, 167, '_wp_trash_meta_status', 'publish'),
(856, 167, '_wp_trash_meta_time', '1523893677'),
(857, 168, '_edit_lock', '1523893738:1'),
(858, 168, '_wp_trash_meta_status', 'publish'),
(859, 168, '_wp_trash_meta_time', '1523893751'),
(860, 169, 'imgplatjour', '135'),
(861, 169, '_imgplatjour', 'field_5ad0f7adb843b'),
(862, 165, 'imgplatjour', '135'),
(863, 165, '_imgplatjour', 'field_5ad0f7adb843b'),
(868, 161, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"imgplatjour\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(869, 170, '_edit_lock', '1523902195:1'),
(870, 170, '_customize_restore_dismissed', '1'),
(871, 161, '_wp_trash_meta_status', 'publish'),
(872, 161, '_wp_trash_meta_time', '1523902549'),
(873, 161, '_wp_desired_post_slug', 'acf_imgplatjour'),
(874, 171, '_edit_last', '1'),
(875, 171, 'field_5ad4e8927b813', 'a:14:{s:3:\"key\";s:19:\"field_5ad4e8927b813\";s:5:\"label\";s:7:\"nom_pdj\";s:4:\"name\";s:7:\"nom_pdj\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(876, 171, 'field_5ad4e8a47b814', 'a:11:{s:3:\"key\";s:19:\"field_5ad4e8a47b814\";s:5:\"label\";s:7:\"img_pdj\";s:4:\"name\";s:7:\"img_pdj\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(877, 171, 'field_5ad4e8b77b815', 'a:14:{s:3:\"key\";s:19:\"field_5ad4e8b77b815\";s:5:\"label\";s:8:\"prix_pdj\";s:4:\"name\";s:8:\"prix_pdj\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(879, 171, 'position', 'normal'),
(880, 171, 'layout', 'no_box'),
(881, 171, 'hide_on_screen', ''),
(882, 171, '_edit_lock', '1523952820:1'),
(883, 172, 'nom_pdj', 'zebi'),
(884, 172, '_nom_pdj', 'field_5ad4e8927b813'),
(885, 172, 'img_pdj', '135'),
(886, 172, '_img_pdj', 'field_5ad4e8a47b814'),
(887, 172, 'prix_pdj', '1'),
(888, 172, '_prix_pdj', 'field_5ad4e8b77b815'),
(889, 165, 'nom_pdj', 'Curry de saumon au chutney à la mangue'),
(890, 165, '_nom_pdj', 'field_5ad4e8927b813'),
(891, 165, 'img_pdj', '135'),
(892, 165, '_img_pdj', 'field_5ad4e8a47b814'),
(893, 165, 'prix_pdj', 'Prix: 15€'),
(894, 165, '_prix_pdj', 'field_5ad4e8b77b815'),
(895, 173, 'nom_pdj', 'nique sa mere'),
(896, 173, '_nom_pdj', 'field_5ad4e8927b813'),
(897, 173, 'img_pdj', '135'),
(898, 173, '_img_pdj', 'field_5ad4e8a47b814'),
(899, 173, 'prix_pdj', '1'),
(900, 173, '_prix_pdj', 'field_5ad4e8b77b815'),
(910, 59, '_wp_trash_meta_status', 'publish'),
(911, 59, '_wp_trash_meta_time', '1523903817'),
(912, 59, '_wp_desired_post_slug', 'accueil'),
(913, 175, '_wp_trash_meta_status', 'publish'),
(914, 175, '_wp_trash_meta_time', '1523903941'),
(924, 177, '_menu_item_type', 'post_type'),
(925, 177, '_menu_item_menu_item_parent', '0'),
(926, 177, '_menu_item_object_id', '165'),
(927, 177, '_menu_item_object', 'page'),
(928, 177, '_menu_item_target', ''),
(929, 177, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(930, 177, '_menu_item_xfn', ''),
(931, 177, '_menu_item_url', ''),
(932, 178, 'nom_pdj', 'Curry de saumon au chutney à la mangue'),
(933, 178, '_nom_pdj', 'field_5ad4e8927b813'),
(934, 178, 'img_pdj', '135'),
(935, 178, '_img_pdj', 'field_5ad4e8a47b814'),
(936, 178, 'prix_pdj', '15'),
(937, 178, '_prix_pdj', 'field_5ad4e8b77b815'),
(939, 179, 'nom_pdj', 'Curry de saumon au chutney à la mangue'),
(940, 179, '_nom_pdj', 'field_5ad4e8927b813'),
(941, 179, 'img_pdj', '135'),
(942, 179, '_img_pdj', 'field_5ad4e8a47b814'),
(943, 179, 'prix_pdj', '15€'),
(944, 179, '_prix_pdj', 'field_5ad4e8b77b815'),
(945, 180, 'nom_pdj', 'Curry de saumon au chutney à la mangue'),
(946, 180, '_nom_pdj', 'field_5ad4e8927b813'),
(947, 180, 'img_pdj', '135'),
(948, 180, '_img_pdj', 'field_5ad4e8a47b814'),
(949, 180, 'prix_pdj', 'Prix: 15€'),
(950, 180, '_prix_pdj', 'field_5ad4e8b77b815'),
(951, 171, 'field_5ad5ad0919bc9', 'a:14:{s:3:\"key\";s:19:\"field_5ad5ad0919bc9\";s:5:\"label\";s:11:\"ingredients\";s:4:\"name\";s:11:\"ingredients\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(953, 171, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"165\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(954, 181, 'nom_pdj', 'Curry de saumon au chutney à la mangue'),
(955, 181, '_nom_pdj', 'field_5ad4e8927b813'),
(956, 181, 'img_pdj', '135'),
(957, 181, '_img_pdj', 'field_5ad4e8a47b814'),
(958, 181, 'prix_pdj', 'Prix: 15€'),
(959, 181, '_prix_pdj', 'field_5ad4e8b77b815'),
(960, 181, 'ingredients', 'LEs ingrédients: 2 cuillères à soupe de pâte de curry, 2 cuillères à soupe de jus de citron vert frais, 4 filets de saumon, 1 nectarine dénoyautée et coupée en morceaux, 2 prunes dénoyautées et coupées en morceaux, 50 g de mangue. '),
(961, 181, '_ingredients', 'field_5ad5ad0919bc9'),
(962, 165, 'ingredients', 'Les ingrédients: 2 cuillères à soupe de pâte de curry, 2 cuillères à soupe de jus de citron vert frais, 4 filets de saumon, 1 nectarine dénoyautée et coupée en morceaux, 2 prunes dénoyautées et coupées en morceaux, 50 g de mangue. '),
(963, 165, '_ingredients', 'field_5ad5ad0919bc9'),
(964, 182, 'nom_pdj', 'Curry de saumon au chutney à la mangue'),
(965, 182, '_nom_pdj', 'field_5ad4e8927b813'),
(966, 182, 'img_pdj', '135'),
(967, 182, '_img_pdj', 'field_5ad4e8a47b814'),
(968, 182, 'prix_pdj', 'Prix: 15€'),
(969, 182, '_prix_pdj', 'field_5ad4e8b77b815'),
(970, 182, 'ingredients', 'Les ingrédients: 2 cuillères à soupe de pâte de curry, 2 cuillères à soupe de jus de citron vert frais, 4 filets de saumon, 1 nectarine dénoyautée et coupée en morceaux, 2 prunes dénoyautées et coupées en morceaux, 50 g de mangue. '),
(971, 182, '_ingredients', 'field_5ad5ad0919bc9');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-10 09:09:34', '2018-04-10 09:09:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-10 09:09:34', '2018-04-10 09:09:34', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-10 09:09:34', '2018-04-10 09:09:34', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-04-11 15:22:28', '2018-04-11 15:22:28', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(13, 1, '2018-04-10 13:15:10', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-10 13:15:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2018-04-10 13:15:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-10 13:15:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2018-04-10 13:15:25', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-10 13:15:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-04-10 13:15:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-10 13:15:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-04-10 14:18:59', '2018-04-10 14:18:59', '', 'Contacte et réservation', '', 'publish', 'closed', 'closed', '', 'contacte-et-reservation', '', '', '2018-04-10 14:18:59', '2018-04-10 14:18:59', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-04-10 14:18:59', '2018-04-10 14:18:59', '', 'Contacte et réservation', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-04-10 14:18:59', '2018-04-10 14:18:59', '', 17, 'http://localhost/wordpress/2018/04/10/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-04-10 14:19:47', '2018-04-10 14:19:47', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-04-16 18:41:41', '2018-04-16 18:41:41', '', 0, 'http://localhost/wordpress/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2018-04-10 14:19:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-10 14:19:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-04-10 14:19:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-10 14:19:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-04-10 14:22:51', '2018-04-10 14:22:51', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:21:38\"\n    },\n    \"wp-bootstrap-starter-child::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:21:38\"\n    },\n    \"wp-bootstrap-starter-child::theme_option_setting\": {\n        \"value\": \"flatly\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:21:38\"\n    },\n    \"wp-bootstrap-starter-child::header_banner_title_setting\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:22:38\"\n    },\n    \"wp-bootstrap-starter-child::header_banner_tagline_setting\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:22:38\"\n    },\n    \"wp-bootstrap-starter-child::header_banner_visibility\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:22:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ed89e097-39da-4855-83af-2968d18e14ee', '', '', '2018-04-10 14:22:51', '2018-04-10 14:22:51', '', 0, 'http://localhost/wordpress/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2018-04-10 16:11:13', '2018-04-10 16:11:13', '', 'Menu', '', 'trash', 'closed', 'closed', '', 'acf_menu__trashed', '', '', '2018-04-11 15:22:01', '2018-04-11 15:22:01', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=24', 0, 'acf', '', 0),
(25, 1, '2018-04-10 16:13:31', '2018-04-10 16:13:31', '', 'Menu', '', 'trash', 'closed', 'closed', '', 'menu__trashed', '', '', '2018-04-11 15:21:42', '2018-04-11 15:21:42', '', 0, 'http://localhost/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-04-10 16:13:31', '2018-04-10 16:13:31', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:13:31', '2018-04-10 16:13:31', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-04-10 16:15:01', '2018-04-10 16:15:01', '', 'Plat du jour', '', 'trash', 'open', 'open', '', 'plat-du-jour__trashed', '', '', '2018-04-10 16:48:42', '2018-04-10 16:48:42', '', 0, 'http://localhost/wordpress/?p=28', 0, 'post', '', 0),
(29, 1, '2018-04-10 16:15:01', '2018-04-10 16:15:01', '', 'Plat du jour', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-04-10 16:15:01', '2018-04-10 16:15:01', '', 28, 'http://localhost/wordpress/2018/04/10/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-04-10 16:23:09', '2018-04-10 16:23:09', '', 'restau', '', 'inherit', 'open', 'closed', '', 'restau', '', '', '2018-04-10 16:23:09', '2018-04-10 16:23:09', '', 28, 'http://localhost/wordpress/wp-content/uploads/2018/04/restau.jpeg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-04-10 16:25:36', '2018-04-10 16:25:36', '', 'Plat du jour', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-04-10 16:25:36', '2018-04-10 16:25:36', '', 28, 'http://localhost/wordpress/2018/04/10/28-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-04-10 16:27:49', '2018-04-10 16:27:49', 'xvccxvx', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:27:49', '2018-04-10 16:27:49', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-04-10 16:28:17', '2018-04-10 16:28:17', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:28:17', '2018-04-10 16:28:17', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-04-10 16:28:25', '2018-04-10 16:28:25', 'nfgfg', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:28:25', '2018-04-10 16:28:25', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-04-10 16:28:36', '2018-04-10 16:28:36', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:28:36', '2018-04-10 16:28:36', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-04-10 16:42:03', '2018-04-10 16:42:03', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:42:03', '2018-04-10 16:42:03', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-04-10 16:43:17', '2018-04-10 16:43:17', 'fdg', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:43:17', '2018-04-10 16:43:17', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-04-10 16:43:27', '2018-04-10 16:43:27', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:43:27', '2018-04-10 16:43:27', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-04-10 16:55:49', '2018-04-10 16:55:49', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:55:49', '2018-04-10 16:55:49', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-04-10 16:56:03', '2018-04-10 16:56:03', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 16:56:03', '2018-04-10 16:56:03', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-04-10 17:03:41', '2018-04-10 17:03:41', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 17:03:41', '2018-04-10 17:03:41', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-04-10 18:20:43', '2018-04-10 18:20:43', '', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-04-10 18:20:43', '2018-04-10 18:20:43', '', 0, 'http://localhost/wordpress/nf_sub/44/', 0, 'nf_sub', '', 0),
(45, 1, '2018-04-10 18:31:35', '2018-04-10 18:31:35', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 18:31:35', '2018-04-10 18:31:35', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-04-10 18:32:34', '2018-04-10 18:32:34', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 18:32:34', '2018-04-10 18:32:34', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-04-10 18:36:07', '2018-04-10 18:36:07', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-10 18:36:07', '2018-04-10 18:36:07', '', 25, 'http://localhost/wordpress/2018/04/10/25-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-04-11 07:47:15', '2018-04-11 07:47:15', '', 'food-1330531_1920', '', 'inherit', 'open', 'closed', '', 'food-1330531_1920', '', '', '2018-04-11 07:47:15', '2018-04-11 07:47:15', '', 25, 'http://localhost/wordpress/wp-content/uploads/2018/04/food-1330531_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-04-11 09:18:22', '2018-04-11 09:18:22', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-11 09:18:22', '2018-04-11 09:18:22', '', 25, 'http://localhost/wordpress/2018/04/11/25-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-04-11 09:21:49', '2018-04-11 09:21:49', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-11 09:21:49', '2018-04-11 09:21:49', '', 25, 'http://localhost/wordpress/2018/04/11/25-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-04-11 09:26:49', '2018-04-11 09:26:49', '', 'l\'aioli', '', 'inherit', 'open', 'closed', '', 'laioli', '', '', '2018-04-11 09:26:49', '2018-04-11 09:26:49', '', 25, 'http://localhost/wordpress/wp-content/uploads/2018/04/laioli.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-04-11 09:27:39', '2018-04-11 09:27:39', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-04-11 09:27:39', '2018-04-11 09:27:39', '', 25, 'http://localhost/wordpress/2018/04/11/25-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-04-11 12:48:22', '2018-04-11 12:48:22', '', 'cheese-3265466_1920', '', 'inherit', 'open', 'closed', '', 'cheese-3265466_1920', '', '', '2018-04-11 12:48:22', '2018-04-11 12:48:22', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/04/cheese-3265466_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-04-11 12:48:23', '2018-04-11 12:48:23', '', 'fish-2366925_1920', '', 'inherit', 'open', 'closed', '', 'fish-2366925_1920', '', '', '2018-04-11 12:48:23', '2018-04-11 12:48:23', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/04/fish-2366925_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-04-11 12:48:24', '2018-04-11 12:48:24', '', 'food-1330531_1920', '', 'inherit', 'open', 'closed', '', 'food-1330531_1920-2', '', '', '2018-04-11 12:48:24', '2018-04-11 12:48:24', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/04/food-1330531_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-04-11 12:48:25', '2018-04-11 12:48:25', '', 'l\'aioli', '', 'inherit', 'open', 'closed', '', 'laioli-2', '', '', '2018-04-11 12:48:25', '2018-04-11 12:48:25', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/04/laioli-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-04-11 12:48:26', '2018-04-11 12:48:26', '', 'salmon-1238667_1920', '', 'inherit', 'open', 'closed', '', 'salmon-1238667_1920', '', '', '2018-04-11 14:53:22', '2018-04-11 14:53:22', '', 70, 'http://localhost/wordpress/wp-content/uploads/2018/04/salmon-1238667_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-04-11 13:16:34', '2018-04-11 13:16:34', '', 'Accueil', '', 'trash', 'closed', 'closed', '', 'accueil__trashed', '', '', '2018-04-16 18:36:57', '2018-04-16 18:36:57', '', 0, 'http://localhost/wordpress/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-04-11 13:16:34', '2018-04-11 13:16:34', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-04-11 13:16:34', '2018-04-11 13:16:34', '', 59, 'http://localhost/wordpress/2018/04/11/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-04-11 13:18:02', '2018-04-11 13:18:02', '', 'Plat du jour', '', 'trash', 'closed', 'closed', '', 'acf_plat-du-jour__trashed', '', '', '2018-04-11 15:21:58', '2018-04-11 15:21:58', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=61', 0, 'acf', '', 0),
(63, 1, '2018-04-11 13:22:01', '2018-04-11 13:22:01', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-04-11 13:22:01', '2018-04-11 13:22:01', '', 59, 'http://localhost/wordpress/2018/04/11/59-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-04-11 14:09:12', '2018-04-11 14:09:12', 'fvdfvdfvdfv', 'Plat du jour', '', 'trash', 'closed', 'closed', '', '66__trashed', '', '', '2018-04-11 15:21:48', '2018-04-11 15:21:48', '', 0, 'http://localhost/wordpress/?post_type=plat_du_jour&#038;p=66', 0, 'plat_du_jour', '', 0),
(68, 1, '2018-04-11 14:24:22', '2018-04-11 14:24:22', 'fvdfvdfvdf', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2018-04-11 14:54:22', '2018-04-11 14:54:22', '', 0, 'http://localhost/wordpress/?post_type=plat_du_jour&#038;p=68', 0, 'plat_du_jour', '', 0),
(70, 1, '2018-04-11 14:53:30', '2018-04-11 14:53:30', 'test', 'test', '', 'trash', 'closed', 'closed', '', 'test-2__trashed', '', '', '2018-04-11 14:54:20', '2018-04-11 14:54:20', '', 0, 'http://localhost/wordpress/?post_type=plat_du_jour&#038;p=70', 0, 'plat_du_jour', '', 0),
(71, 1, '2018-04-11 15:22:28', '2018-04-11 15:22:28', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-11 15:22:28', '2018-04-11 15:22:28', '', 2, 'http://localhost/wordpress/2-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-04-11 15:23:12', '2018-04-11 15:23:12', 'test erg dfbsdbnfg<img class=\"alignnone size-full wp-image-62\" src=\"http://localhost/wordpress/wp-content/uploads/2018/04/plat_jour.jpg\" alt=\"\" width=\"250\" height=\"250\" />', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed-2', '', '', '2018-04-11 15:24:35', '2018-04-11 15:24:35', '', 0, 'http://localhost/wordpress/?post_type=plat_du_jour&#038;p=72', 0, 'plat_du_jour', '', 0),
(75, 1, '2018-04-11 15:47:11', '2018-04-11 15:47:11', '', 'Plats', '', 'publish', 'closed', 'closed', '', 'acf_plats', '', '', '2018-04-13 15:49:36', '2018-04-13 15:49:36', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=75', 0, 'acf', '', 0),
(77, 1, '2018-04-11 16:12:51', '2018-04-11 16:12:51', 'test du plat\r\n\r\n<img class=\"alignnone size-full wp-image-62\" src=\"http://localhost/wordpress/wp-content/uploads/2018/04/plat_jour.jpg\" alt=\"\" width=\"250\" height=\"250\" />', 'Test', '', 'publish', 'open', 'closed', '', 'test', '', '', '2018-04-11 16:13:51', '2018-04-11 16:13:51', '', 0, 'http://localhost/wordpress/?post_type=recettes&#038;p=77', 0, 'recettes', '', 0),
(79, 1, '2018-04-11 16:07:30', '2018-04-11 16:07:30', 'test', 'Plats', '', 'publish', 'closed', 'closed', '', 'plats', '', '', '2018-04-16 17:57:54', '2018-04-16 17:57:54', '', 0, 'http://localhost/wordpress/?page_id=79', 0, 'page', '', 0),
(80, 1, '2018-04-11 16:07:30', '2018-04-11 16:07:30', 'test', 'Plats', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-04-11 16:07:30', '2018-04-11 16:07:30', '', 79, 'http://localhost/wordpress/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-04-11 16:10:14', '2018-04-11 16:10:14', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2018-04-16 18:41:41', '2018-04-16 18:41:41', '', 0, 'http://localhost/wordpress/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2018-04-11 16:12:51', '2018-04-11 16:12:51', 'test du plat\r\n\r\n<img class=\"alignnone size-full wp-image-62\" src=\"http://localhost/wordpress/wp-content/uploads/2018/04/plat_jour.jpg\" alt=\"\" width=\"250\" height=\"250\" />', 'Test', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-04-11 16:12:51', '2018-04-11 16:12:51', '', 77, 'http://localhost/wordpress/77-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-04-11 16:25:12', '2018-04-11 16:25:12', '', 'Plats', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2018-04-11 16:45:21', '2018-04-11 16:45:21', '', 0, 'http://localhost/wordpress/?post_type=plats&#038;p=84', 0, 'plats', '', 0),
(86, 1, '2018-04-11 16:25:12', '2018-04-11 16:25:12', '', 'Plats', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-04-11 16:25:12', '2018-04-11 16:25:12', '', 84, 'http://localhost/wordpress/84-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-04-11 16:45:49', '2018-04-11 16:45:49', '', 'Bouillabaisse', '', 'publish', 'closed', 'closed', '', 'bouillabaisse', '', '', '2018-04-13 16:11:08', '2018-04-13 16:11:08', '', 0, 'http://localhost/wordpress/?post_type=plats&#038;p=89', 0, 'plats', '', 0),
(90, 1, '2018-04-11 16:45:49', '2018-04-11 16:45:49', '', 'test', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-11 16:45:49', '2018-04-11 16:45:49', '', 89, 'http://localhost/wordpress/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-04-11 16:56:40', '2018-04-11 16:56:40', '', 'La bourride', '', 'publish', 'closed', 'closed', '', 'labourride', '', '', '2018-04-13 15:56:55', '2018-04-13 15:56:55', '', 0, 'http://localhost/wordpress/?post_type=plats&#038;p=91', 0, 'plats', '', 0),
(92, 1, '2018-04-11 16:56:40', '2018-04-11 16:56:40', '', 'test2', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-11 16:56:40', '2018-04-11 16:56:40', '', 91, 'http://localhost/wordpress/91-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-04-11 17:25:49', '2018-04-11 17:25:49', '', 'Bouillabaisse', '', 'inherit', 'closed', 'closed', '', '89-autosave-v1', '', '', '2018-04-11 17:25:49', '2018-04-11 17:25:49', '', 89, 'http://localhost/wordpress/89-autosave-v1/', 0, 'revision', '', 0),
(96, 1, '2018-04-11 17:25:52', '2018-04-11 17:25:52', '', 'Bouillabaisse', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-11 17:25:52', '2018-04-11 17:25:52', '', 89, 'http://localhost/wordpress/89-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-04-11 17:27:18', '2018-04-11 17:27:18', '', 'Bouillabaisse', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-11 17:27:18', '2018-04-11 17:27:18', '', 89, 'http://localhost/wordpress/89-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-04-11 17:29:19', '2018-04-11 17:29:19', '', 'Bouillabaisse', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-11 17:29:19', '2018-04-11 17:29:19', '', 89, 'http://localhost/wordpress/89-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-04-11 17:36:26', '2018-04-11 17:36:26', '', 'La bourride', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-11 17:36:26', '2018-04-11 17:36:26', '', 91, 'http://localhost/wordpress/91-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-04-11 17:37:40', '2018-04-11 17:37:40', '', 'bourride', '', 'inherit', 'open', 'closed', '', 'bourride', '', '', '2018-04-11 17:37:40', '2018-04-11 17:37:40', '', 91, 'http://localhost/wordpress/wp-content/uploads/2018/04/bourride.jpeg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-04-11 17:37:59', '2018-04-11 17:37:59', '', 'La bourride', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-11 17:37:59', '2018-04-11 17:37:59', '', 91, 'http://localhost/wordpress/91-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-04-11 17:50:55', '2018-04-11 17:50:55', '', 'Bouillabaisse', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-11 17:50:55', '2018-04-11 17:50:55', '', 89, 'http://localhost/wordpress/89-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-04-11 18:12:30', '2018-04-11 18:12:30', '', 'La soupe au pistou', '', 'publish', 'closed', 'closed', '', 'la-soupe-au-pistou', '', '', '2018-04-13 15:50:58', '2018-04-13 15:50:58', '', 0, 'http://localhost/wordpress/?post_type=plats&#038;p=103', 0, 'plats', '', 0),
(104, 1, '2018-04-11 18:12:15', '2018-04-11 18:12:15', '', 'pistou', '', 'inherit', 'open', 'closed', '', 'pistou', '', '', '2018-04-11 18:12:15', '2018-04-11 18:12:15', '', 103, 'http://localhost/wordpress/wp-content/uploads/2018/04/pistou.jpeg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2018-04-11 18:12:30', '2018-04-11 18:12:30', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-11 18:12:30', '2018-04-11 18:12:30', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-04-12 06:58:37', '2018-04-12 06:58:37', '', 'La soupe au', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-12 06:58:37', '2018-04-12 06:58:37', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-04-12 06:58:46', '2018-04-12 06:58:46', '', 'La', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-12 06:58:46', '2018-04-12 06:58:46', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-04-12 06:59:31', '2018-04-12 06:59:31', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-12 06:59:31', '2018-04-12 06:59:31', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-04-13 15:26:04', '2018-04-13 15:26:04', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-13 15:26:04', '2018-04-13 15:26:04', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-04-13 15:27:15', '2018-04-13 15:27:15', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-13 15:27:15', '2018-04-13 15:27:15', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-04-13 15:32:58', '2018-04-13 15:32:58', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-13 15:32:58', '2018-04-13 15:32:58', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-04-13 15:36:45', '2018-04-13 15:36:45', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-13 15:36:45', '2018-04-13 15:36:45', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-04-13 15:46:06', '2018-04-13 15:46:06', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-13 15:46:06', '2018-04-13 15:46:06', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-04-13 15:48:04', '2018-04-13 15:48:04', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-13 15:48:04', '2018-04-13 15:48:04', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-04-13 15:48:54', '2018-04-13 15:48:54', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-13 15:48:54', '2018-04-13 15:48:54', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-04-13 15:50:01', '2018-04-13 15:50:01', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-13 15:50:01', '2018-04-13 15:50:01', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-04-13 15:50:58', '2018-04-13 15:50:58', '', 'La soupe au pistou', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-04-13 15:50:58', '2018-04-13 15:50:58', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-04-13 15:56:55', '2018-04-13 15:56:55', '', 'La bourride', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-13 15:56:55', '2018-04-13 15:56:55', '', 91, 'http://localhost/wordpress/91-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-04-13 16:08:58', '2018-04-13 16:08:58', '', 'Bouillabaisse', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-13 16:08:58', '2018-04-13 16:08:58', '', 89, 'http://localhost/wordpress/89-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-04-13 16:09:31', '2018-04-13 16:09:31', '', 'Bouillabaisse', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-13 16:09:31', '2018-04-13 16:09:31', '', 89, 'http://localhost/wordpress/89-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-04-13 16:11:08', '2018-04-13 16:11:08', '', 'Bouillabaisse', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-04-13 16:11:08', '2018-04-13 16:11:08', '', 89, 'http://localhost/wordpress/89-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-04-13 16:19:57', '2018-04-13 16:19:57', '', 'Espadon grillé au romarin', '', 'publish', 'closed', 'closed', '', 'espadon-grille-au-romarin', '', '', '2018-04-13 16:20:24', '2018-04-13 16:20:24', '', 0, 'http://localhost/wordpress/?post_type=plats&#038;p=122', 0, 'plats', '', 0),
(123, 1, '2018-04-13 16:18:31', '2018-04-13 16:18:31', '', 'espadon grillé au romarin', '', 'inherit', 'open', 'closed', '', 'espadon-grille-au-romarin', '', '', '2018-04-13 16:18:31', '2018-04-13 16:18:31', '', 122, 'http://localhost/wordpress/wp-content/uploads/2018/04/espadon-grillé-au-romarin.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2018-04-13 16:19:57', '2018-04-13 16:19:57', '', 'Espadon grillé au romarin', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2018-04-13 16:19:57', '2018-04-13 16:19:57', '', 122, 'http://localhost/wordpress/122-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-04-13 16:29:59', '2018-04-13 16:29:59', '', 'Filets de saumon au four', '', 'publish', 'closed', 'closed', '', 'filets-de-saumon-au-four', '', '', '2018-04-13 16:40:27', '2018-04-13 16:40:27', '', 0, 'http://localhost/wordpress/?post_type=plats&#038;p=125', 0, 'plats', '', 0),
(127, 1, '2018-04-13 16:29:59', '2018-04-13 16:29:59', '', 'Filets de saumon au four', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-04-13 16:29:59', '2018-04-13 16:29:59', '', 125, 'http://localhost/wordpress/125-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-04-13 16:32:31', '2018-04-13 16:32:31', '', 'Curry de saumon au chutney à la mangue', '', 'publish', 'closed', 'closed', '', 'curry-de-saumon-au-chutney-de-fruit', '', '', '2018-04-13 16:44:58', '2018-04-13 16:44:58', '', 0, 'http://localhost/wordpress/?post_type=plats&#038;p=128', 0, 'plats', '', 0),
(130, 1, '2018-04-13 16:32:31', '2018-04-13 16:32:31', '', 'Curry de saumon au chutney de fruit', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-04-13 16:32:31', '2018-04-13 16:32:31', '', 128, 'http://localhost/wordpress/128-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-04-13 16:37:35', '2018-04-13 16:37:35', '', 'Filets de saumon au four', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-04-13 16:37:35', '2018-04-13 16:37:35', '', 125, 'http://localhost/wordpress/125-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-04-13 16:37:54', '2018-04-13 16:37:54', '', 'Curry de saumon au chutney de fruit', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-04-13 16:37:54', '2018-04-13 16:37:54', '', 128, 'http://localhost/wordpress/128-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-04-13 16:40:23', '2018-04-13 16:40:23', '', 'filets de saumon au four', '', 'inherit', 'open', 'closed', '', 'filets-de-saumon-au-four-2', '', '', '2018-04-13 16:40:23', '2018-04-13 16:40:23', '', 125, 'http://localhost/wordpress/wp-content/uploads/2018/04/filets-de-saumon-au-four-.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2018-04-13 16:40:27', '2018-04-13 16:40:27', '', 'Filets de saumon au four', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-04-13 16:40:27', '2018-04-13 16:40:27', '', 125, 'http://localhost/wordpress/125-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-04-13 16:44:51', '2018-04-13 16:44:51', '', 'curry de saumon au chutney à la mangue', '', 'inherit', 'open', 'closed', '', 'curry-de-saumon-au-chutney-a-la-mangue', '', '', '2018-04-13 16:44:51', '2018-04-13 16:44:51', '', 128, 'http://localhost/wordpress/wp-content/uploads/2018/04/curry-de-saumon-au-chutney-à-la-mangue.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2018-04-13 16:44:58', '2018-04-13 16:44:58', '', 'Curry de saumon au chutney à la mangue', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-04-13 16:44:58', '2018-04-13 16:44:58', '', 128, 'http://localhost/wordpress/128-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-04-13 16:57:41', '2018-04-13 16:57:41', '{\n    \"wp-bootstrap-starter-child::header_banner_title_setting\": {\n        \"value\": \"Restaurant du Port\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-13 16:50:20\"\n    },\n    \"wp-bootstrap-starter-child::header_banner_visibility\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-13 16:48:28\"\n    },\n    \"wp-bootstrap-starter-child::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/04/cropped-table.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-13 16:56:02\"\n    },\n    \"wp-bootstrap-starter-child::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2018/04/cropped-table.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2018/04/cropped-table.jpg\",\n            \"timestamp\": 1523638505567,\n            \"attachment_id\": 140,\n            \"width\": 1000,\n            \"height\": 662\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-13 16:56:02\"\n    },\n    \"wp-bootstrap-starter-child::header_bg_color_setting\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-13 16:51:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f0f9bf43-b8eb-41fc-8135-64e09a4200c6', '', '', '2018-04-13 16:57:41', '2018-04-13 16:57:41', '', 0, 'http://localhost/wordpress/?p=137', 0, 'customize_changeset', '', 0),
(138, 1, '2018-04-13 16:50:45', '2018-04-13 16:50:45', '', 'cropped-laioli-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-laioli-1-jpg', '', '', '2018-04-13 16:50:45', '2018-04-13 16:50:45', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/04/cropped-laioli-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2018-04-13 16:54:51', '2018-04-13 16:54:51', '', 'table', '', 'inherit', 'open', 'closed', '', 'table', '', '', '2018-04-13 16:54:51', '2018-04-13 16:54:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/04/table.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-04-13 16:55:05', '2018-04-13 16:55:05', '', 'cropped-table.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-table-jpg', '', '', '2018-04-13 16:55:05', '2018-04-13 16:55:05', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/04/cropped-table.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2018-04-13 17:01:58', '2018-04-13 17:01:58', '{\n    \"wp-bootstrap-starter-child::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-13 17:01:58\"\n    },\n    \"wp-bootstrap-starter-child::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-13 17:01:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2c348d1c-2186-4bdd-84ce-e31235d94e2c', '', '', '2018-04-13 17:01:58', '2018-04-13 17:01:58', '', 0, 'http://localhost/wordpress/2c348d1c-2186-4bdd-84ce-e31235d94e2c/', 0, 'customize_changeset', '', 0),
(142, 1, '2018-04-13 17:06:18', '2018-04-13 17:06:18', '', 'Plat du jour', '', 'trash', 'closed', 'closed', '', 'acf_plat-du-jour__trashed-2', '', '', '2018-04-13 17:27:26', '2018-04-13 17:27:26', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=142', 0, 'acf', '', 0),
(143, 1, '2018-04-13 17:08:25', '2018-04-13 17:08:25', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-04-13 17:08:25', '2018-04-13 17:08:25', '', 59, 'http://localhost/wordpress/59-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-04-13 17:18:49', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-13 17:18:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=144', 0, 'post', '', 0),
(145, 1, '2018-04-13 17:21:16', '2018-04-13 17:21:16', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-04-13 17:21:16', '2018-04-13 17:21:16', '', 59, 'http://localhost/wordpress/59-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-04-13 17:23:26', '2018-04-13 17:23:26', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-04-13 17:23:26', '2018-04-13 17:23:26', '', 59, 'http://localhost/wordpress/59-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-04-13 17:28:26', '2018-04-13 17:28:26', '', 'platdujour', '', 'trash', 'closed', 'closed', '', 'acf_platdujour__trashed', '', '', '2018-04-13 18:29:23', '2018-04-13 18:29:23', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=147', 0, 'acf', '', 0),
(148, 1, '2018-04-13 17:32:13', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-13 17:32:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=plats&p=148', 0, 'plats', '', 0),
(149, 1, '2018-04-13 17:32:34', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-13 17:32:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=plats&p=149', 0, 'plats', '', 0),
(151, 1, '2018-04-13 17:39:43', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-13 17:39:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=plats&p=151', 0, 'plats', '', 0),
(152, 1, '2018-04-13 17:45:38', '0000-00-00 00:00:00', '{\n    \"wp-bootstrap-starter-child::header_banner_tagline_setting\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-13 17:45:38\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '652af454-703e-476e-a883-d1e07fca7d36', '', '', '2018-04-13 17:45:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=152', 0, 'customize_changeset', '', 0),
(153, 1, '2018-04-13 18:15:26', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-13 18:15:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=153', 0, 'post', '', 0),
(154, 1, '2018-04-13 18:15:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-13 18:15:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=154', 0, 'post', '', 0),
(155, 1, '2018-04-13 18:17:25', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-13 18:17:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=155', 0, 'post', '', 0),
(156, 1, '2018-04-13 18:21:57', '2018-04-13 18:21:57', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-04-13 18:21:57', '2018-04-13 18:21:57', '', 59, 'http://localhost/wordpress/59-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2018-04-13 18:22:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-13 18:22:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=157', 0, 'post', '', 0),
(158, 1, '2018-04-13 18:30:21', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-13 18:30:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf&p=158', 0, 'acf', '', 0),
(159, 1, '2018-04-13 18:30:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-13 18:30:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf&p=159', 0, 'acf', '', 0),
(160, 1, '2018-04-13 18:31:16', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-13 18:31:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf&p=160', 0, 'acf', '', 0),
(161, 1, '2018-04-13 18:32:09', '2018-04-13 18:32:09', '', 'Imgplatjour', '', 'trash', 'closed', 'closed', '', 'acf_imgplatjour__trashed', '', '', '2018-04-16 18:15:49', '2018-04-16 18:15:49', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=161', 0, 'acf', '', 0),
(162, 1, '2018-04-13 18:33:35', '2018-04-13 18:33:35', '', 'plat du jour', '', 'publish', 'closed', 'closed', '', 'plat-du-jour', '', '', '2018-04-17 08:08:11', '2018-04-17 08:08:11', '', 0, 'http://localhost/wordpress/?post_type=imgplatjour&#038;p=162', 0, 'imgplatjour', '', 0),
(163, 1, '2018-04-16 12:49:10', '2018-04-16 12:49:10', '{\n    \"wp-bootstrap-starter-child::header_banner_visibility\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 12:49:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '24c5dba5-5fec-4830-bd9d-0b90867f19ab', '', '', '2018-04-16 12:49:10', '2018-04-16 12:49:10', '', 0, 'http://localhost/wordpress/24c5dba5-5fec-4830-bd9d-0b90867f19ab/', 0, 'customize_changeset', '', 0),
(164, 1, '2018-04-16 12:53:31', '2018-04-16 12:53:31', '{\n    \"wp-bootstrap-starter-child::theme_option_setting\": {\n        \"value\": \"lux\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 12:53:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '840854f5-03e1-492d-91db-91fae5e9e351', '', '', '2018-04-16 12:53:31', '2018-04-16 12:53:31', '', 0, 'http://localhost/wordpress/?p=164', 0, 'customize_changeset', '', 0),
(165, 1, '2018-04-16 15:45:20', '2018-04-16 15:45:20', '', 'plat_jour', '', 'publish', 'closed', 'closed', '', 'plat_jour', '', '', '2018-04-17 08:17:15', '2018-04-17 08:17:15', '', 0, 'http://localhost/wordpress/?page_id=165', 0, 'page', '', 0),
(166, 1, '2018-04-16 15:45:20', '2018-04-16 15:45:20', '', 'plat_jour', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2018-04-16 15:45:20', '2018-04-16 15:45:20', '', 165, 'http://localhost/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2018-04-16 15:47:57', '2018-04-16 15:47:57', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 15:47:57\"\n    },\n    \"page_on_front\": {\n        \"value\": \"59\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 15:47:57\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"165\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 15:47:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4655ef3-fd3d-4447-9127-8d61044dd49f', '', '', '2018-04-16 15:47:57', '2018-04-16 15:47:57', '', 0, 'http://localhost/wordpress/e4655ef3-fd3d-4447-9127-8d61044dd49f/', 0, 'customize_changeset', '', 0),
(168, 1, '2018-04-16 15:49:10', '2018-04-16 15:49:10', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 15:48:58\"\n    },\n    \"page_on_front\": {\n        \"value\": \"59\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 15:48:58\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"165\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 15:48:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd0f1798c-f1f1-44fe-b4b1-7124bdaeb34c', '', '', '2018-04-16 15:49:10', '2018-04-16 15:49:10', '', 0, 'http://localhost/wordpress/?p=168', 0, 'customize_changeset', '', 0),
(169, 1, '2018-04-16 15:50:33', '2018-04-16 15:50:33', '', 'plat_jour', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2018-04-16 15:50:33', '2018-04-16 15:50:33', '', 165, 'http://localhost/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2018-04-16 18:09:54', '0000-00-00 00:00:00', '{\n    \"wp-bootstrap-starter-child::header_banner_visibility\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 18:09:54\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7dfe5e70-8a0a-4829-935b-7756cd60aa91', '', '', '2018-04-16 18:09:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=170', 0, 'customize_changeset', '', 0),
(171, 1, '2018-04-16 18:18:23', '2018-04-16 18:18:23', '', 'plat_du_jour', '', 'publish', 'closed', 'closed', '', 'acf_plat_du_jour', '', '', '2018-04-17 08:15:53', '2018-04-17 08:15:53', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=171', 0, 'acf', '', 0),
(172, 1, '2018-04-16 18:18:50', '2018-04-16 18:18:50', '', 'plat_jour', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2018-04-16 18:18:50', '2018-04-16 18:18:50', '', 165, 'http://localhost/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2018-04-16 18:21:00', '2018-04-16 18:21:00', '', 'plat_jour', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2018-04-16 18:21:00', '2018-04-16 18:21:00', '', 165, 'http://localhost/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2018-04-16 18:39:01', '2018-04-16 18:39:01', '{\n    \"nav_menu_item[174]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-16 18:39:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2036e684-7bd1-428b-9872-8a1f96d16e2e', '', '', '2018-04-16 18:39:01', '2018-04-16 18:39:01', '', 0, 'http://localhost/wordpress/2036e684-7bd1-428b-9872-8a1f96d16e2e/', 0, 'customize_changeset', '', 0),
(177, 1, '2018-04-16 18:41:41', '2018-04-16 18:41:41', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-04-16 18:41:41', '2018-04-16 18:41:41', '', 0, 'http://localhost/wordpress/?p=177', 1, 'nav_menu_item', '', 0),
(178, 1, '2018-04-17 07:57:32', '2018-04-17 07:57:32', '', 'plat_jour', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2018-04-17 07:57:32', '2018-04-17 07:57:32', '', 165, 'http://localhost/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2018-04-17 08:10:20', '2018-04-17 08:10:20', '', 'plat_jour', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2018-04-17 08:10:20', '2018-04-17 08:10:20', '', 165, 'http://localhost/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2018-04-17 08:14:22', '2018-04-17 08:14:22', '', 'plat_jour', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2018-04-17 08:14:22', '2018-04-17 08:14:22', '', 165, 'http://localhost/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2018-04-17 08:16:55', '2018-04-17 08:16:55', '', 'plat_jour', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2018-04-17 08:16:55', '2018-04-17 08:16:55', '', 165, 'http://localhost/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2018-04-17 08:17:15', '2018-04-17 08:17:15', '', 'plat_jour', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2018-04-17 08:17:15', '2018-04-17 08:17:15', '', 165, 'http://localhost/wordpress/165-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2018-04-17 15:04:51', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-17 15:04:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=183', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 2, 0),
(28, 1, 0),
(81, 2, 0),
(177, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
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
(16, 1, 'session_tokens', 'a:4:{s:64:\"799f12c6fc0745df3797ef75cc95b1b09c0b6c029cc664a8e252fc1c73432630\";a:4:{s:10:\"expiration\";i:1524680787;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1523471187;}s:64:\"3eb67f9909a0d6ecf9e6d1acc96fcc80ae4376212514aef727ffc647e075c6c2\";a:4:{s:10:\"expiration\";i:1524156663;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1523983863;}s:64:\"30a8d0e647a340baa3e569c190b15bde39a24367fd1b89706d976c6eac495d94\";a:4:{s:10:\"expiration\";i:1524158343;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1523985543;}s:64:\"b798407f5c95dea10ac6785096d13f50eba3c0f1651ef90a2b1bdc723d675e97\";a:4:{s:10:\"expiration\";i:1525298067;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1524088467;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '183'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(24, 1, 'wp_user-settings-time', '1523471258'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:7:{i:0;s:6:\"acf_75\";i:1;s:12:\"revisionsdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(27, 2, 'nickname', 'gost'),
(28, 2, 'first_name', 'Admin 2'),
(29, 2, 'last_name', ''),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(39, 2, 'wp_user_level', '10'),
(40, 2, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BAMsgWv8WU.I0109YdNvgTUWjc61t8.', 'root', 'kirill.petrov.centrale@gmail.com', '', '2018-04-10 09:09:34', '1524087959:$P$B4ZD5V4uSz7IRg0ujv0ikOVyZT.h7/0', 0, 'root'),
(2, 'gost', '$P$BIOnWKQhx8MNMpPqQEqwMWuav2aewG.', 'gost', 'kail_x@mail.ru', 'http://reastauduport.co.nf/', '2018-04-19 13:32:35', '', 0, 'Admin 2');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Index pour la table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application` (`application`,`section`,`referencekey`),
  ADD KEY `application_2` (`application`,`section`);

--
-- Index pour la table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_nextend2_smartslider3_sliders_xref`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders_xref`
  ADD PRIMARY KEY (`group_id`,`slider_id`);

--
-- Index pour la table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT pour la table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT pour la table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;
--
-- AUTO_INCREMENT pour la table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT pour la table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=693;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=972;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
