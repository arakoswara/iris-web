-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2015 at 06:41 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `popoji_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
`id_album` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `seotitle` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `title`, `seotitle`, `active`) VALUES
(1, 'Retro', 'retro', 'Y'),
(2, 'Vintage', 'vintage', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id_category` int(5) NOT NULL,
  `title` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `seotitle` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `active` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `title`, `seotitle`, `active`) VALUES
(1, 'Profil', 'profil', 'Y'),
(8, 'ceo', 'ceo', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id_comment` int(10) NOT NULL,
  `id_post` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `comment` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `id_post`, `name`, `email`, `url`, `comment`, `date`, `time`, `active`, `status`) VALUES
(1, 7, 'ara', 'arakosw@gmail..com', 'Website', ' widihh  webite  nya  keren  banget  mass..  ajarin  dong   ', '2015-04-20', '13:38:03', 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

CREATE TABLE IF NOT EXISTS `component` (
`id_component` int(10) NOT NULL,
  `component` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL,
  `table_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`id_component`, `component`, `date`, `table_name`) VALUES
(1, 'po-contact', '2014-08-11', 'contact'),
(2, 'po-gallery', '2014-08-11', 'gallery'),
(3, 'po-comment', '2014-08-11', 'comment');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`id_contact` int(10) NOT NULL,
  `name_contact` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email_contact` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subjek_contact` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `message_contact` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
`id_gallery` int(10) NOT NULL,
  `id_album` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `picture` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `title`, `picture`) VALUES
(1, 1, 'Glasses On Macbook', 'glasses-on-macbook.jpg'),
(4, 2, 'Morning with Coffee', 'morning-with-coffee.jpg'),
(5, 2, 'Golden Gate San Francisco', 'golden-gate-san-francisco.jpg'),
(6, 2, 'House with Window Vintage', 'house-with-window-vintage.jpg'),
(8, 2, 'CEO', 'membuat-perempuan-dicintai.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
`id_media` int(10) NOT NULL,
  `file_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `file_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `file_size` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id_media`, `file_name`, `file_type`, `file_size`, `date`) VALUES
(13, 'bg2-213562-popoji.png', 'image/png', '135841', '2015-07-22'),
(16, 'bghitam-646759-popoji.png', 'image/png', '102086', '2015-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` tinyint(3) unsigned NOT NULL,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `title`, `url`, `class`, `position`, `group_id`) VALUES
(1, 0, 'Beranda', './', '', 1, 1),
(3, 0, 'Profil', 'category/Profil', '', 3, 1),
(8, 0, 'Galeri', 'gallery', '', 7, 1),
(9, 0, 'Kontak', 'contact', '', 8, 1),
(10, 0, 'Home', './', '', 1, 2),
(11, 0, 'About', 'pages/tentang-kami', '', 2, 2),
(12, 0, 'Services', 'pages/layanan', '', 3, 2),
(13, 0, 'Blog', '#', 'dropdown', 4, 2),
(14, 13, 'Indonesiaku', 'category/indonesiaku', '', 1, 2),
(15, 13, 'Motivasi', 'category/motivasi', '', 2, 2),
(16, 13, 'Hubungan', 'category/hubungan', '', 3, 2),
(17, 13, 'Sukses', 'category/sukses', '', 4, 2),
(18, 0, 'Contact', 'contact', '', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu_group`
--

CREATE TABLE IF NOT EXISTS `menu_group` (
`id` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `menu_group`
--

INSERT INTO `menu_group` (`id`, `title`) VALUES
(1, 'Main Menu Chingsy'),
(2, 'Main Menu Neon');

-- --------------------------------------------------------

--
-- Table structure for table `oauth`
--

CREATE TABLE IF NOT EXISTS `oauth` (
`id_oauth` int(10) NOT NULL,
  `oauth_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `oauth_key` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `oauth_secret` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `oauth_id` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `oauth_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `oauth_token1` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `oauth_token2` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `oauth_fbtype` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oauth`
--

INSERT INTO `oauth` (`id_oauth`, `oauth_type`, `oauth_key`, `oauth_secret`, `oauth_id`, `oauth_user`, `oauth_token1`, `oauth_token2`, `oauth_fbtype`) VALUES
(1, 'facebook', '', '', '', '', '', '', ''),
(2, 'twitter', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`id_pages` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `seotitle` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `picture` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id_pages`, `title`, `content`, `seotitle`, `picture`, `active`) VALUES
(4, 'aaaa', '', 'aaaa', 'bghitam-646759-popoji.png', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id_post` int(10) NOT NULL,
  `id_category` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `seotitle` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tag` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `editor` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '1',
  `active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `headline` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `picture` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `id_category`, `title`, `content`, `seotitle`, `tag`, `date`, `time`, `editor`, `active`, `headline`, `picture`, `hits`) VALUES
(9, '1', 'Koswara Ara', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;ARA | KOSWARA&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', 'koswara-ara', '', '2015-04-19', '20:42:23', '1', 'Y', 'N', 'membuat-perempuan-dicintai.jpg', 13),
(13, '1', 'Pramesti Hatta K.', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;Pramesti Hatta K.&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', 'pramesti-hatta-k', '', '2015-07-22', '00:02:16', '1', 'Y', 'N', 'terus-melangkah-jangan-menyerah.jpg', 3),
(14, '1', 'Derma Putra W', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;Derma Putra W&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;', 'derma-putra-w', '', '2015-07-22', '00:04:25', '1', 'Y', 'N', 'morning-with-coffee.jpg', 2),
(15, '1', 'Haris', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;Haris&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', 'haris', '', '2015-07-22', '00:09:54', '1', 'Y', 'N', 'golden-gate-san-francisco.jpg', 1),
(16, '1', 'Arya', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;Arya&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', 'arya', '', '2015-07-22', '00:15:06', '1', 'Y', 'N', 'glasses-on-macbook.jpg', 1),
(17, '1', 'Zufar', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;Zufar&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', 'zufar', '', '2015-07-22', '00:15:34', '1', 'Y', 'N', 'morning-with-coffee.jpg', 2),
(18, '1', 'Krisman', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;Krisman&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', 'krisman', '', '2015-07-22', '00:16:04', '1', 'Y', 'N', 'perfect-day-with-you.jpg', 30),
(19, '8', 'C.E.O', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;C.E.O&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', 'c-e-o', '', '2015-07-22', '01:27:01', '1', 'Y', 'N', 'bghitam-646759-popoji.png', 9);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`id_setting` int(5) NOT NULL,
  `website_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `website_url` varchar(100) CHARACTER SET latin1 NOT NULL,
  `website_email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `meta_description` varchar(250) CHARACTER SET latin1 NOT NULL,
  `meta_keyword` varchar(250) CHARACTER SET latin1 NOT NULL,
  `favicon` varchar(50) CHARACTER SET latin1 NOT NULL,
  `timezone` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `website_maintenance` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `website_maintenance_tgl` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `website_cache` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `website_cache_time` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `member_register` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `website_name`, `website_url`, `website_email`, `meta_description`, `meta_keyword`, `favicon`, `timezone`, `website_maintenance`, `website_maintenance_tgl`, `website_cache`, `website_cache_time`, `member_register`) VALUES
(1, 'website kita', 'http://localhost/BELAJAR_KU/iris/web/', 'araksr@gmail.com', 'c.e.o', 'c.e.o', 'favicon.png', 'Asia/Jakarta', 'N', '', 'N', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
`id_subscribe` int(10) NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
`id_tag` int(5) NOT NULL,
  `tag_title` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE IF NOT EXISTS `theme` (
`id_theme` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `author` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id_theme`, `title`, `author`, `folder`, `active`) VALUES
(1, 'New Chingsy Theme', 'Dwira Survivor', 'newchingsy', 'Y'),
(2, 'Neon Theme', 'Dwira Survivor', 'neon', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `traffic`
--

CREATE TABLE IF NOT EXISTS `traffic` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traffic`
--

INSERT INTO `traffic` (`ip`, `tanggal`, `hits`, `online`) VALUES
('::1', '2015-04-18', 72, '1429351204'),
('::1', '2015-04-19', 330, '1429458054'),
('::1', '2015-04-20', 77, '1429539599'),
('::1', '2015-04-21', 3, '1429612795'),
('::1', '2015-04-23', 3, '1429764753'),
('::1', '2015-04-27', 2, '1430120997'),
('::1', '2015-05-01', 41, '1430446361'),
('::1', '2015-05-03', 29, '1430646486'),
('::1', '2015-05-04', 22, '1430740501'),
('::1', '2015-05-05', 7, '1430797369'),
('::1', '2015-05-06', 239, '1430912848'),
('::1', '2015-05-07', 122, '1430959775'),
('::1', '2015-05-08', 6, '1431046236'),
('::1', '2015-05-17', 1, '1431820400'),
('::1', '2015-05-18', 1, '1431919660'),
('::1', '2015-05-27', 226, '1432745999'),
('::1', '2015-05-28', 49, '1432747453'),
('::1', '2015-06-01', 1, '1433143263'),
('::1', '2015-06-05', 9, '1433440921'),
('::1', '2015-07-07', 2, '1436284604'),
('::1', '2015-07-11', 2, '1436594928'),
('::1', '2015-07-15', 6, '1436950632'),
('::1', '2015-07-21', 302, '1437497999'),
('::1', '2015-07-22', 345, '1437505585'),
('::1', '2015-07-24', 66, '1437746660'),
('::1', '2015-07-25', 15, '1437797815');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(10) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `bio` text COLLATE latin1_general_ci NOT NULL,
  `userpicture` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '2',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_daftar` date NOT NULL,
  `forget_key` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `locktype` varchar(1) COLLATE latin1_general_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `bio`, `userpicture`, `level`, `blokir`, `id_session`, `tgl_daftar`, `forget_key`, `locktype`) VALUES
(1, 'Ara', '636bfa0fb2716ff876f5e33854cc9648', 'Administrator', 'araksr@gmail.com', '08xxxxxxxxxx', 'No matter how exciting or significant a person''s life is, a poorly written biography will make it seem like a snore. On the other hand, a good biographer can draw insight from an ordinary life-because they recognize that even the most exciting life is an ordinary life! After all, a biography isn''t supposed to be a collection of facts assembled in chronological order; it''s the biographer''s interpretation of how that life was different and important.', '', '1', 'N', 'i2odafmcf0fh580s2n0b1paj43', '2015-04-18', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE IF NOT EXISTS `user_level` (
`id_level` int(10) NOT NULL,
  `level` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_level`, `level`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
`id_role` int(10) NOT NULL,
  `id_level` int(10) NOT NULL,
  `module` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `read_access` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `write_access` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `modify_access` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `delete_access` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id_role`, `id_level`, `module`, `read_access`, `write_access`, `modify_access`, `delete_access`) VALUES
(1, 1, 'post', 'Y', 'Y', 'Y', 'Y'),
(2, 1, 'category', 'Y', 'Y', 'Y', 'Y'),
(3, 1, 'tag', 'Y', 'Y', 'Y', 'Y'),
(4, 1, 'pages', 'Y', 'Y', 'Y', 'Y'),
(5, 1, 'library', 'Y', 'Y', 'Y', 'Y'),
(6, 1, 'setting', 'Y', 'Y', 'Y', 'Y'),
(7, 1, 'theme', 'Y', 'Y', 'Y', 'Y'),
(8, 1, 'menumanager', 'Y', 'Y', 'Y', 'Y'),
(9, 1, 'component', 'Y', 'Y', 'Y', 'Y'),
(10, 1, 'user', 'Y', 'Y', 'Y', 'Y'),
(11, 1, 'comment', 'Y', 'Y', 'Y', 'Y'),
(12, 1, 'gallery', 'Y', 'Y', 'Y', 'Y'),
(13, 1, 'contact', 'Y', 'Y', 'Y', 'Y'),
(14, 1, 'cogen', 'Y', 'Y', 'Y', 'Y'),
(15, 2, 'post', 'Y', 'Y', 'Y', 'Y'),
(16, 2, 'category', 'Y', 'Y', 'Y', 'Y'),
(17, 2, 'tag', 'Y', 'Y', 'Y', 'Y'),
(18, 2, 'pages', 'Y', 'Y', 'Y', 'Y'),
(19, 2, 'library', 'Y', 'Y', 'Y', 'Y'),
(20, 2, 'setting', 'N', 'N', 'N', 'N'),
(21, 2, 'theme', 'N', 'N', 'N', 'N'),
(22, 2, 'menumanager', 'N', 'N', 'N', 'N'),
(23, 2, 'component', 'Y', 'N', 'N', 'N'),
(24, 2, 'user', 'Y', 'N', 'Y', 'N'),
(25, 2, 'comment', 'Y', 'Y', 'Y', 'Y'),
(26, 2, 'gallery', 'Y', 'Y', 'Y', 'Y'),
(27, 2, 'contact', 'Y', 'Y', 'Y', 'Y'),
(28, 2, 'cogen', 'Y', 'Y', 'Y', 'Y'),
(29, 3, 'post', 'Y', 'Y', 'Y', 'Y'),
(30, 3, 'category', 'Y', 'Y', 'Y', 'Y'),
(31, 3, 'tag', 'Y', 'Y', 'Y', 'Y'),
(32, 3, 'pages', 'N', 'N', 'N', 'N'),
(33, 3, 'library', 'N', 'N', 'N', 'N'),
(34, 3, 'setting', 'N', 'N', 'N', 'N'),
(35, 3, 'theme', 'N', 'N', 'N', 'N'),
(36, 3, 'menumanager', 'N', 'N', 'N', 'N'),
(37, 3, 'component', 'N', 'N', 'N', 'N'),
(38, 3, 'user', 'Y', 'N', 'Y', 'N'),
(39, 3, 'comment', 'N', 'N', 'N', 'N'),
(40, 3, 'gallery', 'N', 'N', 'N', 'N'),
(41, 3, 'contact', 'N', 'N', 'N', 'N'),
(42, 3, 'cogen', 'N', 'N', 'N', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
 ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `component`
--
ALTER TABLE `component`
 ADD PRIMARY KEY (`id_component`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
 ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
 ADD PRIMARY KEY (`id_media`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_group`
--
ALTER TABLE `menu_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth`
--
ALTER TABLE `oauth`
 ADD PRIMARY KEY (`id_oauth`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id_pages`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
 ADD PRIMARY KEY (`id_subscribe`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
 ADD PRIMARY KEY (`id_theme`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
 ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
 ADD PRIMARY KEY (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
MODIFY `id_album` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id_category` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id_comment` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `component`
--
ALTER TABLE `component`
MODIFY `id_component` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `id_contact` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
MODIFY `id_gallery` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
MODIFY `id_media` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `menu_group`
--
ALTER TABLE `menu_group`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oauth`
--
ALTER TABLE `oauth`
MODIFY `id_oauth` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id_pages` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id_post` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `id_setting` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
MODIFY `id_subscribe` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
MODIFY `id_theme` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
MODIFY `id_level` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
MODIFY `id_role` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
