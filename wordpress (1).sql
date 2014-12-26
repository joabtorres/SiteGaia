-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 26-Dez-2014 às 19:12
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_commentmeta`
--

CREATE TABLE IF NOT EXISTS `cg_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `cg_commentmeta`
--

INSERT INTO `cg_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 6, '_wp_trash_meta_status', '1'),
(2, 6, '_wp_trash_meta_time', '1418227494'),
(3, 5, '_wp_trash_meta_status', '1'),
(4, 5, '_wp_trash_meta_time', '1418227495'),
(5, 4, '_wp_trash_meta_status', '1'),
(6, 4, '_wp_trash_meta_time', '1418227495'),
(7, 3, '_wp_trash_meta_status', '1'),
(8, 3, '_wp_trash_meta_time', '1418227496'),
(9, 2, '_wp_trash_meta_status', '1'),
(10, 2, '_wp_trash_meta_time', '1418227496');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_comments`
--

CREATE TABLE IF NOT EXISTS `cg_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `cg_comments`
--

INSERT INTO `cg_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr. WordPress', '', 'https://wordpress.org/', '', '2014-12-09 02:24:14', '2014-12-09 02:24:14', 'Olá, Isto é um comentário.\nPara excluir um comentário, faça o login e veja os comentários de posts. Lá você terá a opção de editá-los ou excluí-los.', 0, 'post-trashed', '', '', 0, 0),
(2, 69, 'joabtorres', 'joabtorres1508@gmail.com', '', '::1', '2014-12-09 22:12:39', '2014-12-09 22:12:39', 'kkkkkkkkkkkkkkkkkkk', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '', 0, 1),
(3, 69, 'joabtorres', 'joabtorres1508@gmail.com', '', '::1', '2014-12-09 22:12:54', '2014-12-09 22:12:54', 'Este dia foi muito legal :D', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '', 0, 1),
(4, 64, 'joabtorres', 'joabtorres1508@gmail.com', '', '::1', '2014-12-09 22:13:30', '2014-12-09 22:13:30', 'Tomara que não aconteça isso novamente .... por que se não a cobra vai fuma kkkkkkk', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '', 0, 1),
(5, 64, 'joabtorres', 'joabtorres1508@gmail.com', '', '::1', '2014-12-09 22:13:48', '2014-12-09 22:13:48', 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '', 0, 1),
(6, 53, 'joabtorres', 'joabtorres1508@gmail.com', '', '::1', '2014-12-09 22:13:58', '2014-12-09 22:13:58', 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_links`
--

CREATE TABLE IF NOT EXISTS `cg_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_ngg_album`
--

CREATE TABLE IF NOT EXISTS `cg_ngg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext,
  `sortorder` longtext NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_ngg_gallery`
--

CREATE TABLE IF NOT EXISTS `cg_ngg_gallery` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `path` mediumtext,
  `title` mediumtext,
  `galdesc` mediumtext,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `cg_ngg_gallery`
--

INSERT INTO `cg_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'test', 'test', '\\wp-content\\gallery\\test', 'test', '', 0, 1, 1, 36);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_ngg_pictures`
--

CREATE TABLE IF NOT EXISTS `cg_ngg_pictures` (
  `pid` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_slug` varchar(255) NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL,
  `description` mediumtext,
  `alttext` mediumtext,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `cg_ngg_pictures`
--

INSERT INTO `cg_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, '12811_1576162485935385_1795049575334379606_n-4', 0, 1, '12811_1576162485935385_1795049575334379606_n.jpg', ' top', '12811_1576162485935385_1795049575334379606_n', '2014-12-09 17:04:12', 0, 0, 'eyJ3aWR0aCI6NjQwLCJoZWlnaHQiOjQ4MCwiZnVsbCI6eyJ3aWR0aCI6NjQwLCJoZWlnaHQiOjQ4MH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTIwLCJoZWlnaHQiOjkwLCJmaWxlbmFtZSI6InRodW1ic18xMjgxMV8xNTc2MTYyNDg1OTM1Mzg1XzE3OTUwNDk1NzUzMzQzNzk2MDZfbi5qcGciLCJnZW5lcmF0ZWQiOiIwLjIxNDczNTAwIDE0MTgxNDQ2NTIifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 35, 1418144652),
(2, '1463533_389354047863241_890614636_n-4', 0, 1, '1463533_389354047863241_890614636_n.jpg', ' ', '1463533_389354047863241_890614636_n', '2014-12-09 17:04:14', 0, 0, 'eyJ3aWR0aCI6NTY3LCJoZWlnaHQiOjU2NywiZnVsbCI6eyJ3aWR0aCI6NTY3LCJoZWlnaHQiOjU2N30sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTIwLCJoZWlnaHQiOjkwLCJmaWxlbmFtZSI6InRodW1ic18xNDYzNTMzXzM4OTM1NDA0Nzg2MzI0MV84OTA2MTQ2MzZfbi5qcGciLCJnZW5lcmF0ZWQiOiIwLjMzMDQ4MzAwIDE0MTgxNDQ2NTQifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 38, 1418144654),
(3, '1471929_512276155547273_938646529_n-4', 0, 1, '1471929_512276155547273_938646529_n.jpg', ' ', '1471929_512276155547273_938646529_n', '2014-12-09 17:04:15', 0, 0, 'eyJ3aWR0aCI6OTU2LCJoZWlnaHQiOjUwMCwiZnVsbCI6eyJ3aWR0aCI6OTU2LCJoZWlnaHQiOjUwMH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTIwLCJoZWlnaHQiOjkwLCJmaWxlbmFtZSI6InRodW1ic18xNDcxOTI5XzUxMjI3NjE1NTU0NzI3M185Mzg2NDY1Mjlfbi5qcGciLCJnZW5lcmF0ZWQiOiIwLjExMTY4MjAwIDE0MTgxNDQ2NTYifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 40, 1418144656),
(4, '1535417_10201149780371549_1576874849_n-4', 0, 1, '1535417_10201149780371549_1576874849_n.jpg', ' ', '1535417_10201149780371549_1576874849_n', '2014-12-09 17:04:17', 0, 0, 'eyJ3aWR0aCI6NDkzLCJoZWlnaHQiOjM5MywiZnVsbCI6eyJ3aWR0aCI6NDkzLCJoZWlnaHQiOjM5M30sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTIwLCJoZWlnaHQiOjkwLCJmaWxlbmFtZSI6InRodW1ic18xNTM1NDE3XzEwMjAxMTQ5NzgwMzcxNTQ5XzE1NzY4NzQ4NDlfbi5qcGciLCJnZW5lcmF0ZWQiOiIwLjU4MzQ5ODAwIDE0MTgxNDQ2NTcifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 42, 1418144657),
(5, '10614411_840490849318032_126894980795035244_n-4', 0, 1, '10614411_840490849318032_126894980795035244_n.jpg', ' ', '10614411_840490849318032_126894980795035244_n', '2014-12-09 17:04:19', 0, 0, 'eyJ3aWR0aCI6MjI4LCJoZWlnaHQiOjIxOSwiZnVsbCI6eyJ3aWR0aCI6MjI4LCJoZWlnaHQiOjIxOX0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTIwLCJoZWlnaHQiOjkwLCJmaWxlbmFtZSI6InRodW1ic18xMDYxNDQxMV84NDA0OTA4NDkzMTgwMzJfMTI2ODk0OTgwNzk1MDM1MjQ0X24uanBnIiwiZ2VuZXJhdGVkIjoiMC4xODcwNjAwMCAxNDE4MTQ0NjU5In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 44, 1418144659),
(6, '10624613_525555117579873_5289703569671615120_n-4', 0, 1, '10624613_525555117579873_5289703569671615120_n.jpg', ' ', '10624613_525555117579873_5289703569671615120_n', '2014-12-09 17:04:20', 0, 0, 'eyJ3aWR0aCI6MjYxLCJoZWlnaHQiOjE5NywiZnVsbCI6eyJ3aWR0aCI6MjYxLCJoZWlnaHQiOjE5N30sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTIwLCJoZWlnaHQiOjkwLCJmaWxlbmFtZSI6InRodW1ic18xMDYyNDYxM181MjU1NTUxMTc1Nzk4NzNfNTI4OTcwMzU2OTY3MTYxNTEyMF9uLmpwZyIsImdlbmVyYXRlZCI6IjAuNzcyODQyMDAgMTQxODE0NDY2MCJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 46, 1418144660),
(7, '10730944_557511911045940_6005688197592875036_n-4', 0, 1, '10730944_557511911045940_6005688197592875036_n.jpg', ' ', '10730944_557511911045940_6005688197592875036_n', '2014-12-09 17:04:22', 0, 0, 'eyJ3aWR0aCI6NDQ0LCJoZWlnaHQiOjQ2NCwiZnVsbCI6eyJ3aWR0aCI6NDQ0LCJoZWlnaHQiOjQ2NH0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTIwLCJoZWlnaHQiOjkwLCJmaWxlbmFtZSI6InRodW1ic18xMDczMDk0NF81NTc1MTE5MTEwNDU5NDBfNjAwNTY4ODE5NzU5Mjg3NTAzNl9uLmpwZyIsImdlbmVyYXRlZCI6IjAuMDg1OTY2MDAgMTQxODE0NDY2MiJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 48, 1418144662);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_options`
--

CREATE TABLE IF NOT EXISTS `cg_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=285 ;

--
-- Extraindo dados da tabela `cg_options`
--

INSERT INTO `cg_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/git/SiteGaia/blog', 'yes'),
(2, 'home', 'http://localhost/git/SiteGaia/blog', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', 'Blog Do Carlos Gaia', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'joabtorres1508@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
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
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:29:"nextgen-gallery/nggallery.php";i:1;s:39:"options-framework/options-framework.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:70:"E:\\wamp\\www\\git\\SiteGaia\\blog/wp-content/themes/foghorn/searchform.php";i:2;s:88:"E:\\wamp\\www\\git\\SiteGaia\\blog/wp-content/themes/foghorn/extensions/options-functions.php";i:3;s:66:"E:\\wamp\\www\\git\\SiteGaia\\blog/wp-content/themes/foghorn/search.php";i:4;s:65:"E:\\wamp\\www\\git\\SiteGaia\\blog/wp-content/themes/foghorn/style.css";i:5;s:65:"E:\\wamp\\www\\git\\SiteGaia\\blog/wp-content/themes/foghorn/image.php";}', 'no'),
(41, 'template', 'foghorn', 'yes'),
(42, 'stylesheet', 'foghorn', 'yes'),
(43, 'comment_whitelist', '', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'blank', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'cg_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:72:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:24:"NextGEN Gallery overview";b:1;s:19:"NextGEN Use TinyMCE";b:1;s:21:"NextGEN Upload images";b:1;s:22:"NextGEN Manage gallery";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:18:"NextGEN Edit album";b:1;s:20:"NextGEN Change style";b:1;s:22:"NextGEN Change options";b:1;s:24:"NextGEN Attach Interface";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', 'pt_BR', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:8;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:3:{i:0;s:8:"search-2";i:1;s:12:"categories-2";i:2;s:14:"recent-posts-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:6:{i:1419622436;a:1:{s:29:"ngg_delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"ngg_custom";s:4:"args";a:0:{}s:8:"interval";i:1800;}}}i:1419623580;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1419647062;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1419647112;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1419649471;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(99, '_transient_random_seed', '4f05efdfe7462a268ce4eaaa1aa6bbf6', 'yes'),
(100, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:62:"http://downloads.wordpress.org/release/pt_BR/wordpress-4.1.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"http://downloads.wordpress.org/release/pt_BR/wordpress-4.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.1";s:7:"version";s:3:"4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:56:"http://downloads.wordpress.org/release/wordpress-4.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:56:"http://downloads.wordpress.org/release/wordpress-4.1.zip";s:10:"no_content";s:67:"http://downloads.wordpress.org/release/wordpress-4.1-no-content.zip";s:11:"new_bundled";s:68:"http://downloads.wordpress.org/release/wordpress-4.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.1";s:7:"version";s:3:"4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1419621132;s:15:"version_checked";s:5:"4.0.1";s:12:"translations";a:0:{}}', 'yes'),
(106, '_site_transient_timeout_browser_47528b6ef7b9641ffa82214a03e92000', '1418696668', 'yes'),
(107, '_site_transient_browser_47528b6ef7b9641ffa82214a03e92000', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"39.0.2171.71";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(108, 'can_compress_scripts', '1', 'yes'),
(109, '_transient_timeout_plugin_slugs', '1418344496', 'no'),
(110, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:29:"nextgen-gallery/nggallery.php";i:3;s:39:"options-framework/options-framework.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'no'),
(115, '_transient_twentyfourteen_category_count', '1', 'yes'),
(118, '_site_transient_timeout_wporg_theme_feature_list', '1418105893', 'yes'),
(119, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(122, 'recently_activated', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1418093932;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(125, 'current_theme', 'Foghorn', 'yes'),
(126, 'theme_mods_my-engine', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1418142632;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:12:"main-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"second-sidebar";a:0:{}s:13:"third-sidebar";a:0:{}s:14:"fourth-sidebar";N;}}}', 'yes'),
(127, 'theme_switched', '', 'yes'),
(134, 'theme_mods_melany', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1418144921;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(138, 'theme_mods_catch-box', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1418095107;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;s:9:"sidebar-4";N;}}}', 'yes'),
(139, '_transient_timeout_catchbox_favicon', '1418182041', 'no'),
(140, '_transient_catchbox_favicon', '', 'no'),
(141, '_transient_timeout_catchbox_webclip', '1418181966', 'no'),
(142, '_transient_catchbox_webclip', '', 'no'),
(143, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1419621140;s:7:"checked";a:1:{s:7:"foghorn";s:3:"0.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(144, 'theme_mods_foghorn', 'a:6:{i:0;b:0;s:16:"background_color";s:6:"ffffff";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:6:"scroll";}', 'yes'),
(151, 'theme_mods_twentytwelve', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1418142676;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(155, 'ngg_doing_upgrade', '', 'yes'),
(156, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(157, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(158, 'ngg_db_version', '1.8.1', 'yes'),
(159, 'pope_module_list', 'a:36:{i:0;s:28:"photocrati-nextgen|2.0.66.33";i:1;s:17:"photocrati-fs|0.4";i:2;s:21:"photocrati-router|0.6";i:3;s:19:"photocrati-i18n|0.1";i:4;s:25:"photocrati-validation|0.1";i:5;s:32:"photocrati-wordpress_routing|0.5";i:6;s:23:"photocrati-security|0.2";i:7;s:18:"photocrati-lzw|0.1";i:8;s:31:"photocrati-nextgen_settings|0.8";i:9;s:18:"photocrati-mvc|0.5";i:10;s:19:"photocrati-ajax|0.7";i:11;s:33:"photocrati-dynamic_stylesheet|0.3";i:12;s:34:"photocrati-frame_communication|0.4";i:13;s:25:"photocrati-datamapper|0.6";i:14;s:30:"photocrati-nextgen-legacy|0.13";i:15;s:27:"photocrati-nextgen-data|0.8";i:16;s:33:"photocrati-dynamic_thumbnails|0.5";i:17;s:28:"photocrati-nextgen_admin|0.7";i:18;s:38:"photocrati-nextgen_addgallery_page|0.6";i:19;s:33:"photocrati-nextgen_pagination|0.3";i:20;s:38:"photocrati-nextgen_gallery_display|0.9";i:21;s:30:"photocrati-attach_to_post|0.10";i:22;s:36:"photocrati-nextgen_other_options|0.7";i:23;s:34:"photocrati-nextgen_pro_upgrade|0.3";i:24;s:23:"photocrati-mediarss|0.4";i:25;s:20:"photocrati-cache|0.2";i:26;s:24:"photocrati-lightbox|0.14";i:27;s:34:"photocrati-nextgen_basic_album|0.9";i:28;s:38:"photocrati-nextgen_basic_templates|0.4";i:29;s:37:"photocrati-nextgen_basic_gallery|0.11";i:30;s:41:"photocrati-nextgen_basic_imagebrowser|0.9";i:31;s:38:"photocrati-nextgen_basic_singlepic|0.9";i:32;s:37:"photocrati-nextgen_basic_tagcloud|0.9";i:33;s:21:"photocrati-widget|0.5";i:34;s:33:"photocrati-third_party_compat|0.3";i:35;s:29:"photocrati-nextgen_xmlrpc|0.4";}', 'yes'),
(160, 'ngg_options', 'a:86:{s:22:"router_param_separator";s:2:"--";s:19:"router_param_prefix";s:0:"";s:17:"router_param_slug";s:9:"nggallery";s:11:"gallerypath";s:19:"wp-content\\gallery\\";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:22:"custom_post_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";i:500;s:9:"deleteImg";b:1;s:9:"swfUpload";b:1;s:13:"usePermalinks";b:0;s:13:"permalinkSlug";s:9:"nggallery";s:14:"graphicLibrary";s:2:"gd";s:14:"imageMagickDir";s:15:"/usr/local/bin/";s:11:"useMediaRSS";b:0;s:18:"galleries_in_feeds";b:0;s:10:"usePicLens";b:0;s:12:"activateTags";i:0;s:10:"appendType";s:4:"tags";s:9:"maxImages";i:7;s:14:"relatedHeading";s:24:"<h3>Related Images:</h3>";s:10:"thumbwidth";i:120;s:11:"thumbheight";i:90;s:8:"thumbfix";b:1;s:12:"thumbquality";i:100;s:8:"imgWidth";i:800;s:9:"imgHeight";i:600;s:10:"imgQuality";i:100;s:9:"imgBackup";b:1;s:13:"imgAutoResize";b:0;s:9:"galImages";s:2:"20";s:17:"galPagedGalleries";i:0;s:10:"galColumns";i:0;s:12:"galShowSlide";b:1;s:12:"galTextSlide";s:16:"[Show slideshow]";s:14:"galTextGallery";s:17:"[Show thumbnails]";s:12:"galShowOrder";s:7:"gallery";s:7:"galSort";s:9:"sortorder";s:10:"galSortDir";s:3:"ASC";s:10:"galNoPages";b:1;s:13:"galImgBrowser";i:0;s:12:"galHiddenImg";i:0;s:10:"galAjaxNav";i:0;s:11:"thumbEffect";s:8:"fancybox";s:9:"thumbCode";s:41:"class="ngg-fancybox" rel="%GALLERY_NAME%"";s:18:"thumbEffectContext";s:14:"nextgen_images";s:5:"wmPos";s:8:"botRight";s:6:"wmXpos";i:5;s:6:"wmYpos";i:5;s:6:"wmType";i:0;s:6:"wmPath";s:0:"";s:6:"wmFont";s:9:"arial.ttf";s:6:"wmSize";i:10;s:6:"wmText";s:11:"Carlos Gaia";s:7:"wmColor";s:6:"000000";s:8:"wmOpaque";s:3:"100";s:8:"enableIR";i:0;s:7:"slideFx";s:4:"fade";s:5:"irURL";s:0:"";s:12:"irXHTMLvalid";i:0;s:7:"irAudio";s:0:"";s:7:"irWidth";i:600;s:8:"irHeight";i:400;s:9:"irShuffle";b:1;s:17:"irLinkfromdisplay";b:1;s:16:"irShownavigation";i:0;s:11:"irShowicons";i:0;s:11:"irWatermark";i:0;s:13:"irOverstretch";s:4:"True";s:12:"irRotatetime";i:10;s:12:"irTransition";s:6:"random";s:10:"irKenburns";i:0;s:11:"irBackcolor";s:6:"000000";s:12:"irFrontcolor";s:6:"FFFFFF";s:12:"irLightcolor";s:6:"CC0000";s:13:"irScreencolor";s:6:"000000";s:11:"activateCSS";i:1;s:7:"CSSfile";s:13:"nggallery.css";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";s:22:"dynamic_thumbnail_slug";s:13:"nextgen-image";s:11:"installDate";i:1418142881;}', 'yes'),
(167, '_transient_all_the_cool_cats', '2', 'yes'),
(171, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(172, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(173, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(174, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(175, 'widget_ngg-images', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(176, 'widget_ngg-mrssw', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(177, 'widget_slideshow', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(178, 'optionsframework', 'a:1:{s:2:"id";s:7:"foghorn";}', 'yes'),
(196, 'category_children', 'a:0:{}', 'yes'),
(200, '_site_transient_timeout_available_translations', '1418173859', 'yes'),
(201, '_site_transient_available_translations', 'a:41:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 15:44:04";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-01 13:29:39";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-08 11:17:50";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 15:47:16";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-19 13:59:46";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 16:43:49";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-22 11:59:16";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-26 13:41:46";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 00:31:07";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 08:52:52";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-06 00:56:37";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 17:40:25";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 07:49:30";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 06:55:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 15:58:20";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-06 08:32:55";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-04 17:49:48";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 01:18:12";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 22:57:38";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-20 14:09:34";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:12:04";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 11:26:19";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-02 08:24:03";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-21 06:30:27";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 07:54:33";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-06 08:41:35";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 20:51:26";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-17 06:23:19";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-03 17:44:34";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-29 15:27:01";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-30 13:29:44";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-21 12:32:07";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-20 13:05:09";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 15:37:38";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-11 20:39:56";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-10-09 03:43:17";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:57:59";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 00:41:46";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 06:58:31";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(253, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1418268856', 'yes'),
(254, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4851";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3015";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2967";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2471";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2299";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1879";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1692";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1646";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1639";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1623";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1584";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1564";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1469";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1290";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1243";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1158";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1134";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1065";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1051";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"888";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"883";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"864";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"826";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"823";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"772";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"741";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"740";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"694";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"682";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"662";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"655";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"645";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"640";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"630";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"630";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"616";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"608";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"590";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"583";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"577";}}', 'yes'),
(256, 'wpmdb_settings', 'a:8:{s:3:"key";s:40:"JZuUE9q9xWFb0/ZLXH3unBKm1dHO1fLXWYQtODhA";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}s:11:"max_request";i:1048576;}', 'yes'),
(257, 'wpmdb_schema_version', '1', 'yes'),
(263, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1418311549', 'no'),
(264, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Não há  transportes HTTP disponíveis para completar o pedido solicitado.</p></div><div class="rss-widget"><p><strong>Erro de RSS</strong>: This XML document is invalid, likely due to invalid characters. XML error: Not well-formed (invalid token) at line 1, column 1</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(280, '_site_transient_timeout_theme_roots', '1419622934', 'yes'),
(281, '_site_transient_theme_roots', 'a:1:{s:7:"foghorn";s:7:"/themes";}', 'yes'),
(284, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1419621140;s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.0.4.zip";}s:29:"nextgen-gallery/nggallery.php";O:8:"stdClass":6:{s:2:"id";s:3:"592";s:4:"slug";s:15:"nextgen-gallery";s:6:"plugin";s:29:"nextgen-gallery/nggallery.php";s:11:"new_version";s:9:"2.0.66.37";s:3:"url";s:46:"https://wordpress.org/plugins/nextgen-gallery/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/nextgen-gallery.zip";}s:39:"options-framework/options-framework.php";O:8:"stdClass":6:{s:2:"id";s:5:"21510";s:4:"slug";s:17:"options-framework";s:6:"plugin";s:39:"options-framework/options-framework.php";s:11:"new_version";s:5:"1.8.3";s:3:"url";s:48:"https://wordpress.org/plugins/options-framework/";s:7:"package";s:65:"http://downloads.wordpress.org/plugin/options-framework.1.8.3.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:31:"wp-migrate-db/wp-migrate-db.php";O:8:"stdClass":6:{s:2:"id";s:4:"9135";s:4:"slug";s:13:"wp-migrate-db";s:6:"plugin";s:31:"wp-migrate-db/wp-migrate-db.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:44:"https://wordpress.org/plugins/wp-migrate-db/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/wp-migrate-db.0.6.1.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_postmeta`
--

CREATE TABLE IF NOT EXISTS `cg_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=295 ;

--
-- Extraindo dados da tabela `cg_postmeta`
--

INSERT INTO `cg_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, 'mythemes-post-layout', ''),
(5, 5, 'mythemes-post-sidebar', ''),
(6, 5, '_edit_last', '1'),
(7, 5, '_edit_lock', '1418144925:1'),
(24, 5, 'mythemes-post-title', '1'),
(25, 5, 'mythemes-mythemes-use-post-layout', '0'),
(26, 14, 'title', 'Galleries'),
(27, 14, 'name', 'galleries'),
(28, 14, 'has_variations', ''),
(29, 14, 'variation', '0'),
(30, 14, 'filter', 'raw'),
(31, 14, 'returns', 'WyJpbWFnZSJd'),
(32, 14, 'aliases', 'WyJnYWxsZXJ5IiwiaW1hZ2VzIiwiaW1hZ2UiXQ=='),
(33, 14, 'id_field', 'ID'),
(34, 15, 'title', 'Albums'),
(35, 15, 'name', 'albums'),
(36, 15, 'has_variations', ''),
(37, 15, 'variation', '0'),
(38, 15, 'filter', 'raw'),
(39, 15, 'returns', 'WyJnYWxsZXJ5IiwiYWxidW0iXQ=='),
(40, 15, 'aliases', 'WyJhbGJ1bSJd'),
(41, 15, 'id_field', 'ID'),
(42, 16, 'title', 'Tags'),
(43, 16, 'name', 'tags'),
(44, 16, 'has_variations', ''),
(45, 16, 'variation', '0'),
(46, 16, 'filter', 'raw'),
(47, 16, 'returns', 'WyJpbWFnZSJd'),
(48, 16, 'aliases', 'WyJ0YWciLCJpbWFnZV90YWciLCJpbWFnZV90YWdzIl0='),
(49, 16, 'id_field', 'ID'),
(50, 17, 'title', 'Random Images'),
(51, 17, 'has_variations', '1'),
(52, 17, 'name', 'random_images'),
(53, 17, 'variation', '0'),
(54, 17, 'filter', 'raw'),
(55, 17, 'returns', 'WyJpbWFnZSJd'),
(56, 17, 'aliases', 'WyJyYW5kb20iLCJyYW5kb21faW1hZ2UiXQ=='),
(57, 17, 'id_field', 'ID'),
(58, 18, 'title', 'Recent images'),
(59, 18, 'name', 'recent_images'),
(60, 18, 'has_variations', ''),
(61, 18, 'variation', '0'),
(62, 18, 'filter', 'raw'),
(63, 18, 'returns', 'WyJpbWFnZSJd'),
(64, 18, 'aliases', 'WyJyZWNlbnQiLCJyZWNlbnRfaW1hZ2UiXQ=='),
(65, 18, 'id_field', 'ID'),
(66, 19, 'name', 'none'),
(67, 19, 'title', 'No lightbox'),
(68, 19, 'code', ''),
(69, 19, 'styles', ''),
(70, 19, 'scripts', ''),
(71, 19, 'filter', 'raw'),
(72, 19, 'values', 'W10='),
(73, 19, 'i18n', 'W10='),
(74, 19, 'id_field', 'ID'),
(75, 19, 'display_settings', 'W10='),
(76, 20, 'name', 'lightbox'),
(77, 20, 'title', 'Lightbox'),
(78, 20, 'code', 'class=''ngg_lightbox'''),
(79, 20, 'styles', 'photocrati-lightbox#jquery.lightbox/jquery.lightbox-0.5.css'),
(80, 20, 'scripts', 'photocrati-lightbox#jquery.lightbox/jquery.lightbox-0.5.min.js\nphotocrati-lightbox#jquery.lightbox/nextgen_lightbox_init.js'),
(81, 20, 'filter', 'raw'),
(82, 20, 'values', 'eyJuZXh0Z2VuX2xpZ2h0Ym94X2xvYWRpbmdfaW1nX3VybCI6InBob3RvY3JhdGktbGlnaHRib3gjanF1ZXJ5LmxpZ2h0Ym94XC9saWdodGJveC1pY28tbG9hZGluZy5naWYiLCJuZXh0Z2VuX2xpZ2h0Ym94X2Nsb3NlX2J0bl91cmwiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2pxdWVyeS5saWdodGJveFwvbGlnaHRib3gtYnRuLWNsb3NlLmdpZiIsIm5leHRnZW5fbGlnaHRib3hfYnRuX3ByZXZfdXJsIjoicGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL2xpZ2h0Ym94LWJ0bi1wcmV2LmdpZiIsIm5leHRnZW5fbGlnaHRib3hfYnRuX25leHRfdXJsIjoicGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL2xpZ2h0Ym94LWJ0bi1uZXh0LmdpZiIsIm5leHRnZW5fbGlnaHRib3hfYmxhbmtfaW1nX3VybCI6InBob3RvY3JhdGktbGlnaHRib3gjanF1ZXJ5LmxpZ2h0Ym94XC9saWdodGJveC1ibGFuay5naWYifQ=='),
(83, 20, 'i18n', 'W10='),
(84, 20, 'id_field', 'ID'),
(85, 20, 'display_settings', 'W10='),
(86, 21, 'name', 'fancybox'),
(87, 21, 'title', 'Fancybox'),
(88, 21, 'code', 'class="ngg-fancybox" rel="%GALLERY_NAME%"'),
(89, 21, 'styles', 'photocrati-lightbox#fancybox/jquery.fancybox-1.3.4.css'),
(90, 21, 'scripts', 'photocrati-lightbox#fancybox/jquery.easing-1.3.pack.js\nphotocrati-lightbox#fancybox/jquery.fancybox-1.3.4.pack.js\nphotocrati-lightbox#fancybox/nextgen_fancybox_init.js'),
(91, 21, 'filter', 'raw'),
(92, 21, 'values', 'W10='),
(93, 21, 'i18n', 'W10='),
(94, 21, 'id_field', 'ID'),
(95, 21, 'display_settings', 'W10='),
(96, 22, 'name', 'highslide'),
(97, 22, 'title', 'Highslide'),
(98, 22, 'code', 'class="highslide" onclick="return hs.expand(this, {slideshowGroup: ''%GALLERY_NAME%''});"'),
(99, 22, 'styles', 'photocrati-lightbox#highslide/highslide.css'),
(100, 22, 'scripts', 'photocrati-lightbox#highslide/highslide-full.packed.js\nphotocrati-lightbox#highslide/nextgen_highslide_init.js'),
(101, 22, 'filter', 'raw'),
(102, 22, 'values', 'eyJuZXh0Z2VuX2hpZ2hzbGlkZV9ncmFwaGljc19kaXIiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2hpZ2hzbGlkZVwvZ3JhcGhpY3MifQ=='),
(103, 22, 'i18n', 'eyJjc3NEaXJlY3Rpb24iOiJsdHIiLCJsb2FkaW5nVGV4dCI6IkxvYWRpbmcuLi4iLCJwcmV2aW91c1RleHQiOiJQcmV2aW91cyIsIm5leHRUZXh0IjoiTmV4dCIsIm1vdmVUZXh0IjoiTW92ZSIsImNsb3NlVGV4dCI6IkNsb3NlIiwicmVzaXplVGl0bGUiOiJSZXNpemUiLCJwbGF5VGV4dCI6IlBsYXkiLCJwYXVzZVRleHQiOiJQYXVzZSIsIm1vdmVUaXRsZSI6Ik1vdmUiLCJmdWxsRXhwYW5kVGV4dCI6IjE6MSIsImNsb3NlVGl0bGUiOiJDbG9zZSAoZXNjKSIsInBhdXNlVGl0bGUiOiJQYXVzZSBzbGlkZXNob3cgKHNwYWNlYmFyKSIsImxvYWRpbmdUaXRsZSI6IkNsaWNrIHRvIGNhbmNlbCIsImZvY3VzVGl0bGUiOiJDbGljayB0byBicmluZyB0byBmcm9udCIsImZ1bGxFeHBhbmRUaXRsZSI6IkV4cGFuZCB0byBhY3R1YWwgc2l6ZSAoZikiLCJjcmVkaXRzVGV4dCI6IlBvd2VyZWQgYnkgSGlnaHNsaWRlIEpTIiwicGxheVRpdGxlIjoiUGxheSBzbGlkZXNob3cgKHNwYWNlYmFyKSIsInByZXZpb3VzVGl0bGUiOiJQcmV2aW91cyAoYXJyb3cgbGVmdCkiLCJuZXh0VGl0bGUiOiJOZXh0IChhcnJvdyByaWdodCkiLCJudW1iZXIiOiJJbWFnZSAlMSBvZiAlMiIsImNyZWRpdHNUaXRsZSI6IkdvIHRvIHRoZSBIaWdoc2xpZGUgSlMgaG9tZXBhZ2UiLCJyZXN0b3JlVGl0bGUiOiJDbGljayB0byBjbG9zZSBpbWFnZSwgY2xpY2sgYW5kIGRyYWcgdG8gbW92ZS4gVXNlIGFycm93IGtleXMgZm9yIG5leHQgYW5kIHByZXZpb3VzLiJ9'),
(104, 22, 'id_field', 'ID'),
(105, 22, 'display_settings', 'W10='),
(106, 23, 'name', 'shutter'),
(107, 23, 'title', 'Shutter'),
(108, 23, 'code', 'class="shutterset_%GALLERY_NAME%"'),
(109, 23, 'styles', 'photocrati-lightbox#shutter/shutter.css'),
(110, 23, 'scripts', 'photocrati-lightbox#shutter/shutter.js\nphotocrati-lightbox#shutter/nextgen_shutter.js'),
(111, 23, 'filter', 'raw'),
(112, 23, 'values', 'W10='),
(113, 23, 'i18n', 'eyJtc2dMb2FkaW5nIjoiTCBPIEEgRCBJIE4gRyIsIm1zZ0Nsb3NlIjoiQ2xpY2sgdG8gQ2xvc2UifQ=='),
(114, 23, 'id_field', 'ID'),
(115, 23, 'display_settings', 'W10='),
(116, 24, 'name', 'shutter2'),
(117, 24, 'title', 'Shutter 2'),
(118, 24, 'code', 'class="shutterset_%GALLERY_NAME%"'),
(119, 24, 'styles', 'photocrati-lightbox#shutter_reloaded/shutter.css'),
(120, 24, 'scripts', 'photocrati-lightbox#shutter_reloaded/shutter.js\nphotocrati-lightbox#shutter_reloaded/nextgen_shutter_reloaded.js'),
(121, 24, 'filter', 'raw'),
(122, 24, 'values', 'W10='),
(123, 24, 'i18n', 'WyJQcmV2aW91cyIsIk5leHQiLCJDbG9zZSIsIkZ1bGwgU2l6ZSIsIkZpdCB0byBTY3JlZW4iLCJJbWFnZSIsIm9mIiwiTG9hZGluZy4uLiJd'),
(124, 24, 'id_field', 'ID'),
(125, 24, 'display_settings', 'W10='),
(126, 25, 'name', 'thickbox'),
(127, 25, 'title', 'Thickbox'),
(128, 25, 'code', 'class=''thickbox'' rel=''%GALLERY_NAME%'''),
(129, 25, 'styles', 'wordpress#thickbox'),
(130, 25, 'scripts', 'photocrati-lightbox#thickbox/nextgen_thickbox_init.js\nwordpress#thickbox'),
(131, 25, 'filter', 'raw'),
(132, 25, 'values', 'W10='),
(133, 25, 'i18n', 'eyJuZXh0IjoiTmV4dCAmZ3Q7IiwicHJldiI6IiZsdDsgUHJldiIsImltYWdlIjoiSW1hZ2UiLCJvZiI6Im9mIiwiY2xvc2UiOiJDbG9zZSIsIm5vaWZyYW1lcyI6IlRoaXMgZmVhdHVyZSByZXF1aXJlcyBpbmxpbmUgZnJhbWVzLiBZb3UgaGF2ZSBpZnJhbWVzIGRpc2FibGVkIG9yIHlvdXIgYnJvd3NlciBkb2VzIG5vdCBzdXBwb3J0IHRoZW0uIn0='),
(134, 25, 'id_field', 'ID'),
(135, 25, 'display_settings', 'W10='),
(136, 26, 'title', 'NextGEN Basic Compact Album'),
(137, 26, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\compact_preview.jpg'),
(138, 26, 'default_source', 'albums'),
(139, 26, 'view_order', '10200'),
(140, 26, 'name', 'photocrati-nextgen_basic_compact_album'),
(141, 26, 'installed_at_version', '2.0.66.33'),
(142, 26, 'filter', 'raw'),
(143, 26, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(144, 26, 'id_field', 'ID'),
(145, 26, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGVtcGxhdGUiOiIiLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIn0='),
(146, 27, 'title', 'NextGEN Basic Extended Album'),
(147, 27, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\extended_preview.jpg'),
(148, 27, 'default_source', 'albums'),
(149, 27, 'view_order', '10210'),
(150, 27, 'name', 'photocrati-nextgen_basic_extended_album'),
(151, 27, 'installed_at_version', '2.0.66.33'),
(152, 27, 'filter', 'raw'),
(153, 27, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(154, 27, 'id_field', 'ID'),
(155, 27, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGVtcGxhdGUiOiIiLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF93aWR0aCI6MTIwLCJ0aHVtYm5haWxfaGVpZ2h0Ijo5MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMifQ=='),
(156, 28, 'title', 'NextGEN Basic Thumbnails'),
(157, 28, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\thumb_preview.jpg'),
(158, 28, 'default_source', 'galleries'),
(159, 28, 'view_order', '10000'),
(160, 28, 'name', 'photocrati-nextgen_basic_thumbnails'),
(161, 28, 'installed_at_version', '2.0.66.33'),
(162, 28, 'filter', 'raw'),
(163, 28, 'entity_types', 'WyJpbWFnZSJd'),
(164, 28, 'id_field', 'ID'),
(165, 28, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJpbWFnZXNfcGVyX3BhZ2UiOiIyMCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjEyMCwidGh1bWJuYWlsX2hlaWdodCI6OTAsInNob3dfYWxsX2luX2xpZ2h0Ym94IjowLCJhamF4X3BhZ2luYXRpb24iOjAsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjowLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInNob3dfc2xpZGVzaG93X2xpbmsiOjEsInNsaWRlc2hvd19saW5rX3RleHQiOiJbU2hvdyBzbGlkZXNob3ddIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJwaWNsZW5zX2xpbmtfdGV4dCI6IltTaG93IFBpY0xlbnNdIiwic2hvd19waWNsZW5zX2xpbmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(166, 29, 'title', 'NextGEN Basic Slideshow'),
(167, 29, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\slideshow_preview.jpg'),
(168, 29, 'default_source', 'galleries'),
(169, 29, 'view_order', '10010'),
(170, 29, 'name', 'photocrati-nextgen_basic_slideshow'),
(171, 29, 'installed_at_version', '2.0.66.33'),
(172, 29, 'filter', 'raw'),
(173, 29, 'entity_types', 'WyJpbWFnZSJd'),
(174, 29, 'id_field', 'ID'),
(175, 29, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MTIwLCJ0aHVtYm5haWxfaGVpZ2h0Ijo5MCwiY3ljbGVfaW50ZXJ2YWwiOjEwLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZmxhc2hfZW5hYmxlZCI6MCwiZmxhc2hfcGF0aCI6IiIsImZsYXNoX3NodWZmbGUiOnRydWUsImZsYXNoX25leHRfb25fY2xpY2siOnRydWUsImZsYXNoX25hdmlnYXRpb25fYmFyIjowLCJmbGFzaF9sb2FkaW5nX2ljb24iOjAsImZsYXNoX3dhdGVybWFya19sb2dvIjowLCJmbGFzaF9zdHJldGNoX2ltYWdlIjoiVHJ1ZSIsImZsYXNoX3RyYW5zaXRpb25fZWZmZWN0IjoicmFuZG9tIiwiZmxhc2hfc2xvd196b29tIjowLCJmbGFzaF9iYWNrZ3JvdW5kX2NvbG9yIjoiMDAwMDAwIiwiZmxhc2hfdGV4dF9jb2xvciI6IkZGRkZGRiIsImZsYXNoX3JvbGxvdmVyX2NvbG9yIjoiQ0MwMDAwIiwiZmxhc2hfc2NyZWVuX2NvbG9yIjoiMDAwMDAwIiwiZmxhc2hfYmFja2dyb3VuZF9tdXNpYyI6IiIsImZsYXNoX3hodG1sX3ZhbGlkYXRpb24iOjAsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwic2hvd190aHVtYm5haWxfbGluayI6MSwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(176, 30, 'title', 'NextGEN Basic ImageBrowser'),
(177, 30, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_imagebrowser\\static\\preview.jpg'),
(178, 30, 'default_source', 'galleries'),
(179, 30, 'view_order', '10020'),
(180, 30, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(181, 30, 'installed_at_version', '2.0.66.33'),
(182, 30, 'filter', 'raw'),
(183, 30, 'entity_types', 'WyJpbWFnZSJd'),
(184, 30, 'id_field', 'ID'),
(185, 30, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(186, 31, 'title', 'NextGEN Basic SinglePic'),
(187, 31, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_singlepic\\static\\preview.gif'),
(188, 31, 'default_source', 'galleries'),
(189, 31, 'view_order', '10060'),
(190, 31, 'name', 'photocrati-nextgen_basic_singlepic'),
(191, 31, 'installed_at_version', '2.0.66.33'),
(192, 31, 'filter', 'raw'),
(193, 31, 'entity_types', 'WyJpbWFnZSJd'),
(194, 31, 'id_field', 'ID'),
(195, 31, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(196, 32, 'title', 'NextGEN Basic TagCloud'),
(197, 32, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_tagcloud\\static\\preview.gif'),
(198, 32, 'default_source', 'tags'),
(199, 32, 'view_order', '10100'),
(200, 32, 'name', 'photocrati-nextgen_basic_tagcloud'),
(201, 32, 'installed_at_version', '2.0.66.33'),
(202, 32, 'filter', 'raw'),
(203, 32, 'entity_types', 'WyJpbWFnZSJd'),
(204, 32, 'id_field', 'ID'),
(205, 32, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsIm51bWJlciI6NDV9'),
(206, 33, 'filter', 'raw'),
(207, 33, 'id_field', 'ID'),
(208, 34, 'filter', 'raw'),
(209, 34, 'id_field', 'ID'),
(210, 35, 'filter', 'raw'),
(211, 35, 'id_field', 'ID'),
(212, 36, 'filter', 'raw'),
(213, 36, 'id_field', 'ID'),
(214, 37, 'filter', 'raw'),
(215, 37, 'id_field', 'ID'),
(216, 38, 'filter', 'raw'),
(217, 38, 'id_field', 'ID'),
(218, 39, 'filter', 'raw'),
(219, 39, 'id_field', 'ID'),
(220, 40, 'filter', 'raw'),
(221, 40, 'id_field', 'ID'),
(222, 41, 'filter', 'raw'),
(223, 41, 'id_field', 'ID'),
(224, 42, 'filter', 'raw'),
(225, 42, 'id_field', 'ID'),
(226, 43, 'filter', 'raw'),
(227, 43, 'id_field', 'ID'),
(228, 44, 'filter', 'raw'),
(229, 44, 'id_field', 'ID'),
(230, 45, 'filter', 'raw'),
(231, 45, 'id_field', 'ID'),
(232, 46, 'filter', 'raw'),
(233, 46, 'id_field', 'ID'),
(234, 47, 'filter', 'raw'),
(235, 47, 'id_field', 'ID'),
(236, 48, 'filter', 'raw'),
(237, 48, 'id_field', 'ID'),
(238, 49, '_edit_last', '1'),
(239, 49, '_edit_lock', '1418144736:1'),
(246, 2, '_edit_lock', '1418145309:1'),
(247, 2, '_wp_trash_meta_status', 'publish'),
(248, 2, '_wp_trash_meta_time', '1418145452'),
(249, 49, '_wp_trash_meta_status', 'publish'),
(250, 49, '_wp_trash_meta_time', '1418161664'),
(251, 5, '_wp_trash_meta_status', 'publish'),
(252, 5, '_wp_trash_meta_time', '1418161664'),
(253, 1, '_wp_trash_meta_status', 'publish'),
(254, 1, '_wp_trash_meta_time', '1418161665'),
(255, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(256, 53, '_edit_last', '1'),
(257, 53, '_edit_lock', '1418162429:1'),
(258, 54, '_wp_attached_file', '2014/12/free-disney-frozen-wallpapers-hd.jpg'),
(259, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1440;s:4:"file";s:44:"2014/12/free-disney-frozen-wallpapers-hd.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"free-disney-frozen-wallpapers-hd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"free-disney-frozen-wallpapers-hd-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"free-disney-frozen-wallpapers-hd-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"multiple-thumb";a:4:{s:4:"file";s:44:"free-disney-frozen-wallpapers-hd-325x205.jpg";s:5:"width";i:325;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(260, 53, '_thumbnail_id', '54'),
(261, 55, '_wp_attached_file', '2014/12/3D-Castle-Wallpapers-4.jpg'),
(262, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:34:"2014/12/3D-Castle-Wallpapers-4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"3D-Castle-Wallpapers-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"3D-Castle-Wallpapers-4-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"3D-Castle-Wallpapers-4-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"multiple-thumb";a:4:{s:4:"file";s:34:"3D-Castle-Wallpapers-4-325x205.jpg";s:5:"width";i:325;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(263, 56, '_wp_attached_file', '2014/12/3d-Creative-guitar-desktop-wallpaper.jpg'),
(264, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:48:"2014/12/3d-Creative-guitar-desktop-wallpaper.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"3d-Creative-guitar-desktop-wallpaper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"3d-Creative-guitar-desktop-wallpaper-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"3d-Creative-guitar-desktop-wallpaper-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"multiple-thumb";a:4:{s:4:"file";s:48:"3d-Creative-guitar-desktop-wallpaper-325x205.jpg";s:5:"width";i:325;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(265, 57, '_wp_attached_file', '2014/12/3D_Wallpapers-881.jpg'),
(266, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2560;s:6:"height";i:1600;s:4:"file";s:29:"2014/12/3D_Wallpapers-881.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"3D_Wallpapers-881-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"3D_Wallpapers-881-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"3D_Wallpapers-881-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"multiple-thumb";a:4:{s:4:"file";s:29:"3D_Wallpapers-881-325x205.jpg";s:5:"width";i:325;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(267, 58, '_wp_attached_file', '2014/12/1920-wallpaper-8.jpg'),
(268, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:28:"2014/12/1920-wallpaper-8.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"1920-wallpaper-8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"1920-wallpaper-8-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"1920-wallpaper-8-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"multiple-thumb";a:4:{s:4:"file";s:28:"1920-wallpaper-8-325x205.jpg";s:5:"width";i:325;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(269, 59, '_wp_attached_file', '2014/12/90353-39867.jpg'),
(270, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:23:"2014/12/90353-39867.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"90353-39867-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"90353-39867-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"90353-39867-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"multiple-thumb";a:4:{s:4:"file";s:23:"90353-39867-325x205.jpg";s:5:"width";i:325;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(271, 60, '_wp_attached_file', '2014/12/288155-1920x1080.jpg'),
(272, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:28:"2014/12/288155-1920x1080.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"288155-1920x1080-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"288155-1920x1080-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"288155-1920x1080-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"multiple-thumb";a:4:{s:4:"file";s:28:"288155-1920x1080-325x205.jpg";s:5:"width";i:325;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(275, 62, '_edit_last', '1'),
(276, 62, '_edit_lock', '1418162482:1'),
(277, 62, '_thumbnail_id', '59'),
(280, 64, '_edit_last', '1'),
(281, 64, '_edit_lock', '1418162575:1'),
(284, 67, '_wp_attached_file', '2014/12/life-is-a-game-1920x1080-wallpaper-9650.jpg'),
(285, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:51:"2014/12/life-is-a-game-1920x1080-wallpaper-9650.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:51:"life-is-a-game-1920x1080-wallpaper-9650-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:51:"life-is-a-game-1920x1080-wallpaper-9650-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:52:"life-is-a-game-1920x1080-wallpaper-9650-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"multiple-thumb";a:4:{s:4:"file";s:51:"life-is-a-game-1920x1080-wallpaper-9650-325x205.jpg";s:5:"width";i:325;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(286, 66, '_edit_last', '1'),
(287, 66, '_edit_lock', '1418162659:1'),
(290, 69, '_edit_last', '1'),
(291, 69, '_edit_lock', '1418162798:1'),
(292, 70, '_wp_attached_file', '2014/12/scrat-1920x1080-wallpaper-10249.jpg'),
(293, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:43:"2014/12/scrat-1920x1080-wallpaper-10249.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"scrat-1920x1080-wallpaper-10249-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"scrat-1920x1080-wallpaper-10249-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"scrat-1920x1080-wallpaper-10249-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"multiple-thumb";a:4:{s:4:"file";s:43:"scrat-1920x1080-wallpaper-10249-325x205.jpg";s:5:"width";i:325;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(294, 69, '_thumbnail_id', '70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_posts`
--

CREATE TABLE IF NOT EXISTS `cg_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Extraindo dados da tabela `cg_posts`
--

INSERT INTO `cg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-12-09 02:24:14', '2014-12-09 02:24:14', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a publicar!', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo', '', '', '2014-12-09 21:47:45', '2014-12-09 21:47:45', '', 0, 'http://localhost/git/SiteGaia/blog/?p=1', 0, 'post', '', 1),
(2, 1, '2014-12-09 02:24:14', '2014-12-09 02:24:14', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://localhost/git/SiteGaia/blog/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'trash', 'open', 'open', '', 'pagina-exemplo', '', '', '2014-12-09 17:17:32', '2014-12-09 17:17:32', '', 0, 'http://localhost/git/SiteGaia/blog/?page_id=2', 0, 'page', '', 0),
(5, 1, '2014-12-09 03:07:01', '2014-12-09 03:07:01', '<strong>Lorem Ipsum</strong> é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.\r\n\r\n[gallery link="file" ids="6,7,8,9,10,11,12"]', 'Lorem IPsum', '', 'trash', 'open', 'open', '', 'lorem-ipsum', '', '', '2014-12-09 21:47:44', '2014-12-09 21:47:44', '', 0, 'http://localhost/git/SiteGaia/blog/?p=5', 0, 'post', '', 0),
(13, 1, '2014-12-09 03:07:01', '2014-12-09 03:07:01', '<strong>Lorem Ipsum</strong> é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.\r\n\r\n[gallery link="file" ids="6,7,8,9,10,11,12"]', 'Lorem IPsum', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-12-09 03:07:01', '2014-12-09 03:07:01', '', 5, 'http://localhost/git/SiteGaia/blog/?p=13', 0, 'revision', '', 0),
(14, 1, '2014-12-09 16:33:24', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IkdhbGxlcmllcyIsInJldHVybnMiOlsiaW1hZ2UiXSwiYWxpYXNlcyI6WyJnYWxsZXJ5IiwiaW1hZ2VzIiwiaW1hZ2UiXSwibmFtZSI6ImdhbGxlcmllcyIsImlkX2ZpZWxkIjoiSUQiLCJoYXNfdmFyaWF0aW9ucyI6ZmFsc2UsInZhcmlhdGlvbiI6MH0=', 'Galleries', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:24', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IkdhbGxlcmllcyIsInJldHVybnMiOlsiaW1hZ2UiXSwiYWxpYXNlcyI6WyJnYWxsZXJ5IiwiaW1hZ2VzIiwiaW1hZ2UiXSwibmFtZSI6ImdhbGxlcmllcyIsImlkX2ZpZWxkIjoiSUQiLCJoYXNfdmFyaWF0aW9ucyI6ZmFsc2UsInZhcmlhdGlvbiI6MH0=', 0, 'http://localhost/git/SiteGaia/blog/?p=14', 0, 'gal_display_source', '', 0),
(15, 1, '2014-12-09 16:33:25', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IkFsYnVtcyIsInJldHVybnMiOlsiZ2FsbGVyeSIsImFsYnVtIl0sImFsaWFzZXMiOlsiYWxidW0iXSwibmFtZSI6ImFsYnVtcyIsImlkX2ZpZWxkIjoiSUQiLCJoYXNfdmFyaWF0aW9ucyI6ZmFsc2UsInZhcmlhdGlvbiI6MH0=', 'Albums', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:25', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IkFsYnVtcyIsInJldHVybnMiOlsiZ2FsbGVyeSIsImFsYnVtIl0sImFsaWFzZXMiOlsiYWxidW0iXSwibmFtZSI6ImFsYnVtcyIsImlkX2ZpZWxkIjoiSUQiLCJoYXNfdmFyaWF0aW9ucyI6ZmFsc2UsInZhcmlhdGlvbiI6MH0=', 0, 'http://localhost/git/SiteGaia/blog/?p=15', 0, 'gal_display_source', '', 0),
(16, 1, '2014-12-09 16:33:25', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IlRhZ3MiLCJyZXR1cm5zIjpbImltYWdlIl0sImFsaWFzZXMiOlsidGFnIiwiaW1hZ2VfdGFnIiwiaW1hZ2VfdGFncyJdLCJuYW1lIjoidGFncyIsImlkX2ZpZWxkIjoiSUQiLCJoYXNfdmFyaWF0aW9ucyI6ZmFsc2UsInZhcmlhdGlvbiI6MH0=', 'Tags', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:25', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IlRhZ3MiLCJyZXR1cm5zIjpbImltYWdlIl0sImFsaWFzZXMiOlsidGFnIiwiaW1hZ2VfdGFnIiwiaW1hZ2VfdGFncyJdLCJuYW1lIjoidGFncyIsImlkX2ZpZWxkIjoiSUQiLCJoYXNfdmFyaWF0aW9ucyI6ZmFsc2UsInZhcmlhdGlvbiI6MH0=', 0, 'http://localhost/git/SiteGaia/blog/?p=16', 0, 'gal_display_source', '', 0),
(17, 1, '2014-12-09 16:33:26', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IlJhbmRvbSBJbWFnZXMiLCJyZXR1cm5zIjpbImltYWdlIl0sImFsaWFzZXMiOlsicmFuZG9tIiwicmFuZG9tX2ltYWdlIl0sImhhc192YXJpYXRpb25zIjp0cnVlLCJuYW1lIjoicmFuZG9tX2ltYWdlcyIsImlkX2ZpZWxkIjoiSUQiLCJ2YXJpYXRpb24iOjB9', 'Random Images', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:26', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IlJhbmRvbSBJbWFnZXMiLCJyZXR1cm5zIjpbImltYWdlIl0sImFsaWFzZXMiOlsicmFuZG9tIiwicmFuZG9tX2ltYWdlIl0sImhhc192YXJpYXRpb25zIjp0cnVlLCJuYW1lIjoicmFuZG9tX2ltYWdlcyIsImlkX2ZpZWxkIjoiSUQiLCJ2YXJpYXRpb24iOjB9', 0, 'http://localhost/git/SiteGaia/blog/?p=17', 0, 'gal_display_source', '', 0),
(18, 1, '2014-12-09 16:33:26', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IlJlY2VudCBpbWFnZXMiLCJyZXR1cm5zIjpbImltYWdlIl0sImFsaWFzZXMiOlsicmVjZW50IiwicmVjZW50X2ltYWdlIl0sIm5hbWUiOiJyZWNlbnRfaW1hZ2VzIiwiaWRfZmllbGQiOiJJRCIsImhhc192YXJpYXRpb25zIjpmYWxzZSwidmFyaWF0aW9uIjowfQ==', 'Recent images', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:26', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6IlJlY2VudCBpbWFnZXMiLCJyZXR1cm5zIjpbImltYWdlIl0sImFsaWFzZXMiOlsicmVjZW50IiwicmVjZW50X2ltYWdlIl0sIm5hbWUiOiJyZWNlbnRfaW1hZ2VzIiwiaWRfZmllbGQiOiJJRCIsImhhc192YXJpYXRpb25zIjpmYWxzZSwidmFyaWF0aW9uIjowfQ==', 0, 'http://localhost/git/SiteGaia/blog/?p=18', 0, 'gal_display_source', '', 0),
(19, 1, '2014-12-09 16:33:26', '0000-00-00 00:00:00', 'eyJuYW1lIjoibm9uZSIsInRpdGxlIjoiTm8gbGlnaHRib3giLCJjb2RlIjoiIiwidmFsdWVzIjpbXSwiaTE4biI6W10sInN0eWxlcyI6IiIsInNjcmlwdHMiOiIiLCJpZF9maWVsZCI6IklEIiwiZGlzcGxheV9zZXR0aW5ncyI6W119', 'none', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:26', '0000-00-00 00:00:00', 'eyJuYW1lIjoibm9uZSIsInRpdGxlIjoiTm8gbGlnaHRib3giLCJjb2RlIjoiIiwidmFsdWVzIjpbXSwiaTE4biI6W10sInN0eWxlcyI6IiIsInNjcmlwdHMiOiIiLCJpZF9maWVsZCI6IklEIiwiZGlzcGxheV9zZXR0aW5ncyI6W119', 0, 'http://localhost/git/SiteGaia/blog/?p=19', 0, 'lightbox_library', '', 0),
(20, 1, '2014-12-09 16:33:27', '0000-00-00 00:00:00', 'eyJuYW1lIjoibGlnaHRib3giLCJ0aXRsZSI6IkxpZ2h0Ym94IiwiY29kZSI6ImNsYXNzPSduZ2dfbGlnaHRib3gnIiwidmFsdWVzIjp7Im5leHRnZW5fbGlnaHRib3hfbG9hZGluZ19pbWdfdXJsIjoicGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL2xpZ2h0Ym94LWljby1sb2FkaW5nLmdpZiIsIm5leHRnZW5fbGlnaHRib3hfY2xvc2VfYnRuX3VybCI6InBob3RvY3JhdGktbGlnaHRib3gjanF1ZXJ5LmxpZ2h0Ym94XC9saWdodGJveC1idG4tY2xvc2UuZ2lmIiwibmV4dGdlbl9saWdodGJveF9idG5fcHJldl91cmwiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2pxdWVyeS5saWdodGJveFwvbGlnaHRib3gtYnRuLXByZXYuZ2lmIiwibmV4dGdlbl9saWdodGJveF9idG5fbmV4dF91cmwiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2pxdWVyeS5saWdodGJveFwvbGlnaHRib3gtYnRuLW5leHQuZ2lmIiwibmV4dGdlbl9saWdodGJveF9ibGFua19pbWdfdXJsIjoicGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL2xpZ2h0Ym94LWJsYW5rLmdpZiJ9LCJpMThuIjpbXSwic3R5bGVzIjoicGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL2pxdWVyeS5saWdodGJveC0wLjUuY3NzIiwic2NyaXB0cyI6InBob3RvY3JhdGktbGlnaHRib3gjanF1ZXJ5LmxpZ2h0Ym94XC9qcXVlcnkubGlnaHRib3gtMC41Lm1pbi5qc1xucGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL25leHRnZW5fbGlnaHRib3hfaW5pdC5qcyIsImlkX2ZpZWxkIjoiSUQiLCJkaXNwbGF5X3NldHRpbmdzIjpbXX0=', 'lightbox', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:27', '0000-00-00 00:00:00', 'eyJuYW1lIjoibGlnaHRib3giLCJ0aXRsZSI6IkxpZ2h0Ym94IiwiY29kZSI6ImNsYXNzPSduZ2dfbGlnaHRib3gnIiwidmFsdWVzIjp7Im5leHRnZW5fbGlnaHRib3hfbG9hZGluZ19pbWdfdXJsIjoicGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL2xpZ2h0Ym94LWljby1sb2FkaW5nLmdpZiIsIm5leHRnZW5fbGlnaHRib3hfY2xvc2VfYnRuX3VybCI6InBob3RvY3JhdGktbGlnaHRib3gjanF1ZXJ5LmxpZ2h0Ym94XC9saWdodGJveC1idG4tY2xvc2UuZ2lmIiwibmV4dGdlbl9saWdodGJveF9idG5fcHJldl91cmwiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2pxdWVyeS5saWdodGJveFwvbGlnaHRib3gtYnRuLXByZXYuZ2lmIiwibmV4dGdlbl9saWdodGJveF9idG5fbmV4dF91cmwiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2pxdWVyeS5saWdodGJveFwvbGlnaHRib3gtYnRuLW5leHQuZ2lmIiwibmV4dGdlbl9saWdodGJveF9ibGFua19pbWdfdXJsIjoicGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL2xpZ2h0Ym94LWJsYW5rLmdpZiJ9LCJpMThuIjpbXSwic3R5bGVzIjoicGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL2pxdWVyeS5saWdodGJveC0wLjUuY3NzIiwic2NyaXB0cyI6InBob3RvY3JhdGktbGlnaHRib3gjanF1ZXJ5LmxpZ2h0Ym94XC9qcXVlcnkubGlnaHRib3gtMC41Lm1pbi5qc1xucGhvdG9jcmF0aS1saWdodGJveCNqcXVlcnkubGlnaHRib3hcL25leHRnZW5fbGlnaHRib3hfaW5pdC5qcyIsImlkX2ZpZWxkIjoiSUQiLCJkaXNwbGF5X3NldHRpbmdzIjpbXX0=', 0, 'http://localhost/git/SiteGaia/blog/?p=20', 0, 'lightbox_library', '', 0),
(21, 1, '2014-12-09 16:33:27', '0000-00-00 00:00:00', 'eyJuYW1lIjoiZmFuY3lib3giLCJ0aXRsZSI6IkZhbmN5Ym94IiwiY29kZSI6ImNsYXNzPVwibmdnLWZhbmN5Ym94XCIgcmVsPVwiJUdBTExFUllfTkFNRSVcIiIsInZhbHVlcyI6W10sImkxOG4iOltdLCJzdHlsZXMiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2ZhbmN5Ym94XC9qcXVlcnkuZmFuY3lib3gtMS4zLjQuY3NzIiwic2NyaXB0cyI6InBob3RvY3JhdGktbGlnaHRib3gjZmFuY3lib3hcL2pxdWVyeS5lYXNpbmctMS4zLnBhY2suanNcbnBob3RvY3JhdGktbGlnaHRib3gjZmFuY3lib3hcL2pxdWVyeS5mYW5jeWJveC0xLjMuNC5wYWNrLmpzXG5waG90b2NyYXRpLWxpZ2h0Ym94I2ZhbmN5Ym94XC9uZXh0Z2VuX2ZhbmN5Ym94X2luaXQuanMiLCJpZF9maWVsZCI6IklEIiwiZGlzcGxheV9zZXR0aW5ncyI6W119', 'fancybox', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:27', '0000-00-00 00:00:00', 'eyJuYW1lIjoiZmFuY3lib3giLCJ0aXRsZSI6IkZhbmN5Ym94IiwiY29kZSI6ImNsYXNzPVwibmdnLWZhbmN5Ym94XCIgcmVsPVwiJUdBTExFUllfTkFNRSVcIiIsInZhbHVlcyI6W10sImkxOG4iOltdLCJzdHlsZXMiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2ZhbmN5Ym94XC9qcXVlcnkuZmFuY3lib3gtMS4zLjQuY3NzIiwic2NyaXB0cyI6InBob3RvY3JhdGktbGlnaHRib3gjZmFuY3lib3hcL2pxdWVyeS5lYXNpbmctMS4zLnBhY2suanNcbnBob3RvY3JhdGktbGlnaHRib3gjZmFuY3lib3hcL2pxdWVyeS5mYW5jeWJveC0xLjMuNC5wYWNrLmpzXG5waG90b2NyYXRpLWxpZ2h0Ym94I2ZhbmN5Ym94XC9uZXh0Z2VuX2ZhbmN5Ym94X2luaXQuanMiLCJpZF9maWVsZCI6IklEIiwiZGlzcGxheV9zZXR0aW5ncyI6W119', 0, 'http://localhost/git/SiteGaia/blog/?p=21', 0, 'lightbox_library', '', 0),
(22, 1, '2014-12-09 16:33:27', '0000-00-00 00:00:00', 'eyJuYW1lIjoiaGlnaHNsaWRlIiwidGl0bGUiOiJIaWdoc2xpZGUiLCJjb2RlIjoiY2xhc3M9XCJoaWdoc2xpZGVcIiBvbmNsaWNrPVwicmV0dXJuIGhzLmV4cGFuZCh0aGlzLCB7c2xpZGVzaG93R3JvdXA6ICclR0FMTEVSWV9OQU1FJSd9KTtcIiIsInZhbHVlcyI6eyJuZXh0Z2VuX2hpZ2hzbGlkZV9ncmFwaGljc19kaXIiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2hpZ2hzbGlkZVwvZ3JhcGhpY3MifSwiaTE4biI6eyJjc3NEaXJlY3Rpb24iOiJsdHIiLCJsb2FkaW5nVGV4dCI6IkxvYWRpbmcuLi4iLCJwcmV2aW91c1RleHQiOiJQcmV2aW91cyIsIm5leHRUZXh0IjoiTmV4dCIsIm1vdmVUZXh0IjoiTW92ZSIsImNsb3NlVGV4dCI6IkNsb3NlIiwicmVzaXplVGl0bGUiOiJSZXNpemUiLCJwbGF5VGV4dCI6IlBsYXkiLCJwYXVzZVRleHQiOiJQYXVzZSIsIm1vdmVUaXRsZSI6Ik1vdmUiLCJmdWxsRXhwYW5kVGV4dCI6IjE6MSIsImNsb3NlVGl0bGUiOiJDbG9zZSAoZXNjKSIsInBhdXNlVGl0bGUiOiJQYXVzZSBzbGlkZXNob3cgKHNwYWNlYmFyKSIsImxvYWRpbmdUaXRsZSI6IkNsaWNrIHRvIGNhbmNlbCIsImZvY3VzVGl0bGUiOiJDbGljayB0byBicmluZyB0byBmcm9udCIsImZ1bGxFeHBhbmRUaXRsZSI6IkV4cGFuZCB0byBhY3R1YWwgc2l6ZSAoZikiLCJjcmVkaXRzVGV4dCI6IlBvd2VyZWQgYnkgSGlnaHNsaWRlIEpTIiwicGxheVRpdGxlIjoiUGxheSBzbGlkZXNob3cgKHNwYWNlYmFyKSIsInByZXZpb3VzVGl0bGUiOiJQcmV2aW91cyAoYXJyb3cgbGVmdCkiLCJuZXh0VGl0bGUiOiJOZXh0IChhcnJvdyByaWdodCkiLCJudW1iZXIiOiJJbWFnZSAlMSBvZiAlMiIsImNyZWRpdHNUaXRsZSI6IkdvIHRvIHRoZSBIaWdoc2xpZGUgSlMgaG9tZXBhZ2UiLCJyZXN0b3JlVGl0bGUiOiJDbGljayB0byBjbG9zZSBpbWFnZSwgY2xpY2sgYW5kIGRyYWcgdG8gbW92ZS4gVXNlIGFycm93IGtleXMgZm9yIG5leHQgYW5kIHByZXZpb3VzLiJ9LCJzdHlsZXMiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2hpZ2hzbGlkZVwvaGlnaHNsaWRlLmNzcyIsInNjcmlwdHMiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2hpZ2hzbGlkZVwvaGlnaHNsaWRlLWZ1bGwucGFja2VkLmpzXG5waG90b2NyYXRpLWxpZ2h0Ym94I2hpZ2hzbGlkZVwvbmV4dGdlbl9oaWdoc2xpZGVfaW5pdC5qcyIsImlkX2ZpZWxkIjoiSUQiLCJkaXNwbGF5X3NldHRpbmdzIjpbXX0=', 'highslide', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:27', '0000-00-00 00:00:00', 'eyJuYW1lIjoiaGlnaHNsaWRlIiwidGl0bGUiOiJIaWdoc2xpZGUiLCJjb2RlIjoiY2xhc3M9XCJoaWdoc2xpZGVcIiBvbmNsaWNrPVwicmV0dXJuIGhzLmV4cGFuZCh0aGlzLCB7c2xpZGVzaG93R3JvdXA6ICclR0FMTEVSWV9OQU1FJSd9KTtcIiIsInZhbHVlcyI6eyJuZXh0Z2VuX2hpZ2hzbGlkZV9ncmFwaGljc19kaXIiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2hpZ2hzbGlkZVwvZ3JhcGhpY3MifSwiaTE4biI6eyJjc3NEaXJlY3Rpb24iOiJsdHIiLCJsb2FkaW5nVGV4dCI6IkxvYWRpbmcuLi4iLCJwcmV2aW91c1RleHQiOiJQcmV2aW91cyIsIm5leHRUZXh0IjoiTmV4dCIsIm1vdmVUZXh0IjoiTW92ZSIsImNsb3NlVGV4dCI6IkNsb3NlIiwicmVzaXplVGl0bGUiOiJSZXNpemUiLCJwbGF5VGV4dCI6IlBsYXkiLCJwYXVzZVRleHQiOiJQYXVzZSIsIm1vdmVUaXRsZSI6Ik1vdmUiLCJmdWxsRXhwYW5kVGV4dCI6IjE6MSIsImNsb3NlVGl0bGUiOiJDbG9zZSAoZXNjKSIsInBhdXNlVGl0bGUiOiJQYXVzZSBzbGlkZXNob3cgKHNwYWNlYmFyKSIsImxvYWRpbmdUaXRsZSI6IkNsaWNrIHRvIGNhbmNlbCIsImZvY3VzVGl0bGUiOiJDbGljayB0byBicmluZyB0byBmcm9udCIsImZ1bGxFeHBhbmRUaXRsZSI6IkV4cGFuZCB0byBhY3R1YWwgc2l6ZSAoZikiLCJjcmVkaXRzVGV4dCI6IlBvd2VyZWQgYnkgSGlnaHNsaWRlIEpTIiwicGxheVRpdGxlIjoiUGxheSBzbGlkZXNob3cgKHNwYWNlYmFyKSIsInByZXZpb3VzVGl0bGUiOiJQcmV2aW91cyAoYXJyb3cgbGVmdCkiLCJuZXh0VGl0bGUiOiJOZXh0IChhcnJvdyByaWdodCkiLCJudW1iZXIiOiJJbWFnZSAlMSBvZiAlMiIsImNyZWRpdHNUaXRsZSI6IkdvIHRvIHRoZSBIaWdoc2xpZGUgSlMgaG9tZXBhZ2UiLCJyZXN0b3JlVGl0bGUiOiJDbGljayB0byBjbG9zZSBpbWFnZSwgY2xpY2sgYW5kIGRyYWcgdG8gbW92ZS4gVXNlIGFycm93IGtleXMgZm9yIG5leHQgYW5kIHByZXZpb3VzLiJ9LCJzdHlsZXMiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2hpZ2hzbGlkZVwvaGlnaHNsaWRlLmNzcyIsInNjcmlwdHMiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I2hpZ2hzbGlkZVwvaGlnaHNsaWRlLWZ1bGwucGFja2VkLmpzXG5waG90b2NyYXRpLWxpZ2h0Ym94I2hpZ2hzbGlkZVwvbmV4dGdlbl9oaWdoc2xpZGVfaW5pdC5qcyIsImlkX2ZpZWxkIjoiSUQiLCJkaXNwbGF5X3NldHRpbmdzIjpbXX0=', 0, 'http://localhost/git/SiteGaia/blog/?p=22', 0, 'lightbox_library', '', 0),
(23, 1, '2014-12-09 16:33:28', '0000-00-00 00:00:00', 'eyJuYW1lIjoic2h1dHRlciIsInRpdGxlIjoiU2h1dHRlciIsImNvZGUiOiJjbGFzcz1cInNodXR0ZXJzZXRfJUdBTExFUllfTkFNRSVcIiIsInZhbHVlcyI6W10sImkxOG4iOnsibXNnTG9hZGluZyI6IkwgTyBBIEQgSSBOIEciLCJtc2dDbG9zZSI6IkNsaWNrIHRvIENsb3NlIn0sInN0eWxlcyI6InBob3RvY3JhdGktbGlnaHRib3gjc2h1dHRlclwvc2h1dHRlci5jc3MiLCJzY3JpcHRzIjoicGhvdG9jcmF0aS1saWdodGJveCNzaHV0dGVyXC9zaHV0dGVyLmpzXG5waG90b2NyYXRpLWxpZ2h0Ym94I3NodXR0ZXJcL25leHRnZW5fc2h1dHRlci5qcyIsImlkX2ZpZWxkIjoiSUQiLCJkaXNwbGF5X3NldHRpbmdzIjpbXX0=', 'shutter', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:28', '0000-00-00 00:00:00', 'eyJuYW1lIjoic2h1dHRlciIsInRpdGxlIjoiU2h1dHRlciIsImNvZGUiOiJjbGFzcz1cInNodXR0ZXJzZXRfJUdBTExFUllfTkFNRSVcIiIsInZhbHVlcyI6W10sImkxOG4iOnsibXNnTG9hZGluZyI6IkwgTyBBIEQgSSBOIEciLCJtc2dDbG9zZSI6IkNsaWNrIHRvIENsb3NlIn0sInN0eWxlcyI6InBob3RvY3JhdGktbGlnaHRib3gjc2h1dHRlclwvc2h1dHRlci5jc3MiLCJzY3JpcHRzIjoicGhvdG9jcmF0aS1saWdodGJveCNzaHV0dGVyXC9zaHV0dGVyLmpzXG5waG90b2NyYXRpLWxpZ2h0Ym94I3NodXR0ZXJcL25leHRnZW5fc2h1dHRlci5qcyIsImlkX2ZpZWxkIjoiSUQiLCJkaXNwbGF5X3NldHRpbmdzIjpbXX0=', 0, 'http://localhost/git/SiteGaia/blog/?p=23', 0, 'lightbox_library', '', 0),
(24, 1, '2014-12-09 16:33:28', '0000-00-00 00:00:00', 'eyJuYW1lIjoic2h1dHRlcjIiLCJ0aXRsZSI6IlNodXR0ZXIgMiIsImNvZGUiOiJjbGFzcz1cInNodXR0ZXJzZXRfJUdBTExFUllfTkFNRSVcIiIsInZhbHVlcyI6W10sImkxOG4iOlsiUHJldmlvdXMiLCJOZXh0IiwiQ2xvc2UiLCJGdWxsIFNpemUiLCJGaXQgdG8gU2NyZWVuIiwiSW1hZ2UiLCJvZiIsIkxvYWRpbmcuLi4iXSwic3R5bGVzIjoicGhvdG9jcmF0aS1saWdodGJveCNzaHV0dGVyX3JlbG9hZGVkXC9zaHV0dGVyLmNzcyIsInNjcmlwdHMiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I3NodXR0ZXJfcmVsb2FkZWRcL3NodXR0ZXIuanNcbnBob3RvY3JhdGktbGlnaHRib3gjc2h1dHRlcl9yZWxvYWRlZFwvbmV4dGdlbl9zaHV0dGVyX3JlbG9hZGVkLmpzIiwiaWRfZmllbGQiOiJJRCIsImRpc3BsYXlfc2V0dGluZ3MiOltdfQ==', 'shutter2', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:28', '0000-00-00 00:00:00', 'eyJuYW1lIjoic2h1dHRlcjIiLCJ0aXRsZSI6IlNodXR0ZXIgMiIsImNvZGUiOiJjbGFzcz1cInNodXR0ZXJzZXRfJUdBTExFUllfTkFNRSVcIiIsInZhbHVlcyI6W10sImkxOG4iOlsiUHJldmlvdXMiLCJOZXh0IiwiQ2xvc2UiLCJGdWxsIFNpemUiLCJGaXQgdG8gU2NyZWVuIiwiSW1hZ2UiLCJvZiIsIkxvYWRpbmcuLi4iXSwic3R5bGVzIjoicGhvdG9jcmF0aS1saWdodGJveCNzaHV0dGVyX3JlbG9hZGVkXC9zaHV0dGVyLmNzcyIsInNjcmlwdHMiOiJwaG90b2NyYXRpLWxpZ2h0Ym94I3NodXR0ZXJfcmVsb2FkZWRcL3NodXR0ZXIuanNcbnBob3RvY3JhdGktbGlnaHRib3gjc2h1dHRlcl9yZWxvYWRlZFwvbmV4dGdlbl9zaHV0dGVyX3JlbG9hZGVkLmpzIiwiaWRfZmllbGQiOiJJRCIsImRpc3BsYXlfc2V0dGluZ3MiOltdfQ==', 0, 'http://localhost/git/SiteGaia/blog/?p=24', 0, 'lightbox_library', '', 0),
(25, 1, '2014-12-09 16:33:28', '0000-00-00 00:00:00', 'eyJuYW1lIjoidGhpY2tib3giLCJ0aXRsZSI6IlRoaWNrYm94IiwiY29kZSI6ImNsYXNzPSd0aGlja2JveCcgcmVsPSclR0FMTEVSWV9OQU1FJSciLCJ2YWx1ZXMiOltdLCJpMThuIjp7Im5leHQiOiJOZXh0ICZndDsiLCJwcmV2IjoiJmx0OyBQcmV2IiwiaW1hZ2UiOiJJbWFnZSIsIm9mIjoib2YiLCJjbG9zZSI6IkNsb3NlIiwibm9pZnJhbWVzIjoiVGhpcyBmZWF0dXJlIHJlcXVpcmVzIGlubGluZSBmcmFtZXMuIFlvdSBoYXZlIGlmcmFtZXMgZGlzYWJsZWQgb3IgeW91ciBicm93c2VyIGRvZXMgbm90IHN1cHBvcnQgdGhlbS4ifSwic3R5bGVzIjoid29yZHByZXNzI3RoaWNrYm94Iiwic2NyaXB0cyI6InBob3RvY3JhdGktbGlnaHRib3gjdGhpY2tib3hcL25leHRnZW5fdGhpY2tib3hfaW5pdC5qc1xud29yZHByZXNzI3RoaWNrYm94IiwiaWRfZmllbGQiOiJJRCIsImRpc3BsYXlfc2V0dGluZ3MiOltdfQ==', 'thickbox', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:28', '0000-00-00 00:00:00', 'eyJuYW1lIjoidGhpY2tib3giLCJ0aXRsZSI6IlRoaWNrYm94IiwiY29kZSI6ImNsYXNzPSd0aGlja2JveCcgcmVsPSclR0FMTEVSWV9OQU1FJSciLCJ2YWx1ZXMiOltdLCJpMThuIjp7Im5leHQiOiJOZXh0ICZndDsiLCJwcmV2IjoiJmx0OyBQcmV2IiwiaW1hZ2UiOiJJbWFnZSIsIm9mIjoib2YiLCJjbG9zZSI6IkNsb3NlIiwibm9pZnJhbWVzIjoiVGhpcyBmZWF0dXJlIHJlcXVpcmVzIGlubGluZSBmcmFtZXMuIFlvdSBoYXZlIGlmcmFtZXMgZGlzYWJsZWQgb3IgeW91ciBicm93c2VyIGRvZXMgbm90IHN1cHBvcnQgdGhlbS4ifSwic3R5bGVzIjoid29yZHByZXNzI3RoaWNrYm94Iiwic2NyaXB0cyI6InBob3RvY3JhdGktbGlnaHRib3gjdGhpY2tib3hcL25leHRnZW5fdGhpY2tib3hfaW5pdC5qc1xud29yZHByZXNzI3RoaWNrYm94IiwiaWRfZmllbGQiOiJJRCIsImRpc3BsYXlfc2V0dGluZ3MiOltdfQ==', 0, 'http://localhost/git/SiteGaia/blog/?p=25', 0, 'lightbox_library', '', 0),
(26, 1, '2014-12-09 16:33:28', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4wLjY2LjMzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0ZW1wbGF0ZSI6IiIsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMifX0=', 'NextGEN Basic Compact Album', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:28', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4wLjY2LjMzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0ZW1wbGF0ZSI6IiIsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMifX0=', 0, 'http://localhost/git/SiteGaia/blog/?p=26', 0, 'display_type', '', 0),
(27, 1, '2014-12-09 16:33:29', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGV4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4wLjY2LjMzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoxMjAsInRodW1ibmFpbF9oZWlnaHQiOjkwLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6dHJ1ZSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyJ9fQ==', 'NextGEN Basic Extended Album', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:29', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGV4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4wLjY2LjMzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoxMjAsInRodW1ibmFpbF9oZWlnaHQiOjkwLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6dHJ1ZSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyJ9fQ==', 0, 'http://localhost/git/SiteGaia/blog/?p=27', 0, 'display_type', '', 0),
(28, 1, '2014-12-09 16:33:29', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjAuNjYuMzMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiaW1hZ2VzX3Blcl9wYWdlIjoiMjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoxMjAsInRodW1ibmFpbF9oZWlnaHQiOjkwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjowLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjoxLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwicGljbGVuc19saW5rX3RleHQiOiJbU2hvdyBQaWNMZW5zXSIsInNob3dfcGljbGVuc19saW5rIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn19', 'NextGEN Basic Thumbnails', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:29', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjAuNjYuMzMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiaW1hZ2VzX3Blcl9wYWdlIjoiMjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoxMjAsInRodW1ibmFpbF9oZWlnaHQiOjkwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjowLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjoxLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwicGljbGVuc19saW5rX3RleHQiOiJbU2hvdyBQaWNMZW5zXSIsInNob3dfcGljbGVuc19saW5rIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn19', 0, 'http://localhost/git/SiteGaia/blog/?p=28', 0, 'display_type', '', 0),
(29, 1, '2014-12-09 16:33:29', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcXHN0YXRpY1xcc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zbGlkZXNob3ciLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMC42Ni4zMyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MTIwLCJ0aHVtYm5haWxfaGVpZ2h0Ijo5MCwiY3ljbGVfaW50ZXJ2YWwiOjEwLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZmxhc2hfZW5hYmxlZCI6MCwiZmxhc2hfcGF0aCI6IiIsImZsYXNoX3NodWZmbGUiOnRydWUsImZsYXNoX25leHRfb25fY2xpY2siOnRydWUsImZsYXNoX25hdmlnYXRpb25fYmFyIjowLCJmbGFzaF9sb2FkaW5nX2ljb24iOjAsImZsYXNoX3dhdGVybWFya19sb2dvIjowLCJmbGFzaF9zdHJldGNoX2ltYWdlIjoiVHJ1ZSIsImZsYXNoX3RyYW5zaXRpb25fZWZmZWN0IjoicmFuZG9tIiwiZmxhc2hfc2xvd196b29tIjowLCJmbGFzaF9iYWNrZ3JvdW5kX2NvbG9yIjoiMDAwMDAwIiwiZmxhc2hfdGV4dF9jb2xvciI6IkZGRkZGRiIsImZsYXNoX3JvbGxvdmVyX2NvbG9yIjoiQ0MwMDAwIiwiZmxhc2hfc2NyZWVuX2NvbG9yIjoiMDAwMDAwIiwiZmxhc2hfYmFja2dyb3VuZF9tdXNpYyI6IiIsImZsYXNoX3hodG1sX3ZhbGlkYXRpb24iOjAsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwic2hvd190aHVtYm5haWxfbGluayI6MSwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn19', 'NextGEN Basic Slideshow', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:29', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcXHN0YXRpY1xcc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zbGlkZXNob3ciLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMC42Ni4zMyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MTIwLCJ0aHVtYm5haWxfaGVpZ2h0Ijo5MCwiY3ljbGVfaW50ZXJ2YWwiOjEwLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZmxhc2hfZW5hYmxlZCI6MCwiZmxhc2hfcGF0aCI6IiIsImZsYXNoX3NodWZmbGUiOnRydWUsImZsYXNoX25leHRfb25fY2xpY2siOnRydWUsImZsYXNoX25hdmlnYXRpb25fYmFyIjowLCJmbGFzaF9sb2FkaW5nX2ljb24iOjAsImZsYXNoX3dhdGVybWFya19sb2dvIjowLCJmbGFzaF9zdHJldGNoX2ltYWdlIjoiVHJ1ZSIsImZsYXNoX3RyYW5zaXRpb25fZWZmZWN0IjoicmFuZG9tIiwiZmxhc2hfc2xvd196b29tIjowLCJmbGFzaF9iYWNrZ3JvdW5kX2NvbG9yIjoiMDAwMDAwIiwiZmxhc2hfdGV4dF9jb2xvciI6IkZGRkZGRiIsImZsYXNoX3JvbGxvdmVyX2NvbG9yIjoiQ0MwMDAwIiwiZmxhc2hfc2NyZWVuX2NvbG9yIjoiMDAwMDAwIiwiZmxhc2hfYmFja2dyb3VuZF9tdXNpYyI6IiIsImZsYXNoX3hodG1sX3ZhbGlkYXRpb24iOjAsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwic2hvd190aHVtYm5haWxfbGluayI6MSwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn19', 0, 'http://localhost/git/SiteGaia/blog/?p=29', 0, 'display_type', '', 0),
(30, 1, '2014-12-09 16:33:30', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclxcc3RhdGljXFxwcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjAuNjYuMzMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn19', 'NextGEN Basic ImageBrowser', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:30', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclxcc3RhdGljXFxwcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjAuNjYuMzMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn19', 0, 'http://localhost/git/SiteGaia/blog/?p=30', 0, 'display_type', '', 0),
(31, 1, '2014-12-09 16:33:30', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjAuNjYuMzMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwid2lkdGgiOiIiLCJoZWlnaHQiOiIiLCJtb2RlIjoiIiwiZGlzcGxheV93YXRlcm1hcmsiOjAsImRpc3BsYXlfcmVmbGVjdGlvbiI6MCwiZmxvYXQiOiIiLCJsaW5rIjoiIiwibGlua190YXJnZXQiOiJfYmxhbmsiLCJxdWFsaXR5IjoxMDAsImNyb3AiOjAsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9fQ==', 'NextGEN Basic SinglePic', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:30', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjAuNjYuMzMiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwid2lkdGgiOiIiLCJoZWlnaHQiOiIiLCJtb2RlIjoiIiwiZGlzcGxheV93YXRlcm1hcmsiOjAsImRpc3BsYXlfcmVmbGVjdGlvbiI6MCwiZmxvYXQiOiIiLCJsaW5rIjoiIiwibGlua190YXJnZXQiOiJfYmxhbmsiLCJxdWFsaXR5IjoxMDAsImNyb3AiOjAsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9fQ==', 0, 'http://localhost/git/SiteGaia/blog/?p=31', 0, 'display_type', '', 0),
(32, 1, '2014-12-09 16:33:30', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4wLjY2LjMzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NX19', 'NextGEN Basic TagCloud', '', 'draft', 'open', 'open', '', '', '', '', '2014-12-09 16:33:30', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4wLjY2LjMzIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NX19', 0, 'http://localhost/git/SiteGaia/blog/?p=32', 0, 'display_type', '', 0),
(33, 1, '2014-12-09 17:04:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_gallery', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:10', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_gallery&p=33', 0, 'ngg_gallery', '', 0),
(34, 1, '2014-12-09 17:04:11', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:11', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=34', 0, 'ngg_pictures', '', 0),
(35, 1, '2014-12-09 17:04:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=35', 0, 'ngg_pictures', '', 0),
(36, 1, '2014-12-09 17:04:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_gallery', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_gallery&p=36', 0, 'ngg_gallery', '', 0),
(37, 1, '2014-12-09 17:04:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:13', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=37', 0, 'ngg_pictures', '', 0),
(38, 1, '2014-12-09 17:04:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=38', 0, 'ngg_pictures', '', 0),
(39, 1, '2014-12-09 17:04:15', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:15', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=39', 0, 'ngg_pictures', '', 0),
(40, 1, '2014-12-09 17:04:16', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:16', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=40', 0, 'ngg_pictures', '', 0),
(41, 1, '2014-12-09 17:04:17', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:17', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=41', 0, 'ngg_pictures', '', 0),
(42, 1, '2014-12-09 17:04:17', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:17', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=42', 0, 'ngg_pictures', '', 0),
(43, 1, '2014-12-09 17:04:18', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:18', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=43', 0, 'ngg_pictures', '', 0),
(44, 1, '2014-12-09 17:04:19', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:19', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=44', 0, 'ngg_pictures', '', 0),
(45, 1, '2014-12-09 17:04:20', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:20', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=45', 0, 'ngg_pictures', '', 0),
(46, 1, '2014-12-09 17:04:20', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:20', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=46', 0, 'ngg_pictures', '', 0),
(47, 1, '2014-12-09 17:04:21', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:21', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=47', 0, 'ngg_pictures', '', 0),
(48, 1, '2014-12-09 17:04:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2014-12-09 17:04:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIn0=', 0, 'http://localhost/git/SiteGaia/blog/?post_type=ngg_pictures&p=48', 0, 'ngg_pictures', '', 0),
(49, 1, '2014-12-09 17:07:53', '2014-12-09 17:07:53', '<img class="ngg-singlepic ngg-none" src="http://localhost/git/SiteGaia/blog/wp-content/gallery/test/thumbs/thumbs_12811_1576162485935385_1795049575334379606_n.jpg" alt="12811_1576162485935385_1795049575334379606_n" width="247" height="185" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis amet nisi ab odio molestiae consequuntur omnis sunt soluta earum maxime maiores dignissimos culpa, labore neque distinctio. Autem deserunt, cupiditate distinctio!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis amet nisi ab odio molestiae consequuntur omnis sunt soluta earum maxime maiores dignissimos culpa, labore neque distinctio. Autem deserunt, cupiditate distinctio!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis amet nisi ab odio molestiae consequuntur omnis sunt soluta earum maxime maiores dignissimos culpa, labore neque distinctio. Autem deserunt, cupiditate distinctio!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis amet nisi ab odio molestiae consequuntur omnis sunt soluta earum maxime maiores dignissimos culpa, labore neque distinctio. Autem deserunt, cupiditate distinctio!\r\n\r\n&nbsp;\r\n\r\n[gallery columns="4" ids="11,12,9,10,6,7,8" orderby="rand"]', 'Lorem Ipsum 2', '', 'trash', 'open', 'open', '', 'lorem-ipsum-2', '', '', '2014-12-09 21:47:44', '2014-12-09 21:47:44', '', 0, 'http://localhost/git/SiteGaia/blog/?p=49', 0, 'post', '', 0),
(50, 1, '2014-12-09 17:07:53', '2014-12-09 17:07:53', '<img class="ngg-singlepic ngg-none" src="http://localhost/git/SiteGaia/blog/wp-content/gallery/test/thumbs/thumbs_12811_1576162485935385_1795049575334379606_n.jpg" alt="12811_1576162485935385_1795049575334379606_n" width="247" height="185" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis amet nisi ab odio molestiae consequuntur omnis sunt soluta earum maxime maiores dignissimos culpa, labore neque distinctio. Autem deserunt, cupiditate distinctio!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis amet nisi ab odio molestiae consequuntur omnis sunt soluta earum maxime maiores dignissimos culpa, labore neque distinctio. Autem deserunt, cupiditate distinctio!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis amet nisi ab odio molestiae consequuntur omnis sunt soluta earum maxime maiores dignissimos culpa, labore neque distinctio. Autem deserunt, cupiditate distinctio!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis amet nisi ab odio molestiae consequuntur omnis sunt soluta earum maxime maiores dignissimos culpa, labore neque distinctio. Autem deserunt, cupiditate distinctio!\r\n\r\n&nbsp;\r\n\r\n[gallery columns="4" ids="11,12,9,10,6,7,8" orderby="rand"]', 'Lorem Ipsum 2', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2014-12-09 17:07:53', '2014-12-09 17:07:53', '', 49, 'http://localhost/git/SiteGaia/blog/?p=50', 0, 'revision', '', 0),
(51, 1, '2014-12-09 17:17:32', '2014-12-09 17:17:32', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://localhost/git/SiteGaia/blog/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-12-09 17:17:32', '2014-12-09 17:17:32', '', 2, 'http://localhost/git/SiteGaia/blog/?p=51', 0, 'revision', '', 0),
(52, 1, '2014-12-09 21:47:45', '2014-12-09 21:47:45', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a publicar!', 'Olá, mundo!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-12-09 21:47:45', '2014-12-09 21:47:45', '', 1, 'http://localhost/git/SiteGaia/blog/?p=52', 0, 'revision', '', 0),
(53, 1, '2014-12-09 22:02:43', '2014-12-09 22:02:43', '<a href="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/free-disney-frozen-wallpapers-hd.jpg"><img class="alignleft size-full wp-image-54" src="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/free-disney-frozen-wallpapers-hd.jpg" alt="free-disney-frozen-wallpapers-hd" width="1920" height="1440" /></a>\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\nSuco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper. Pharetra in mattis molestie, volutpat elementum justo. Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean justo massa.\r\n\r\nCasamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.\r\n\r\nCevadis im ampola pa arma uma pindureta. Nam varius eleifend orci, sed viverra nisl condimentum ut. Donec eget justis enim. Atirei o pau no gatis. Viva Forevis aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Copo furadis é disculpa de babadis, arcu quam euismod magna, bibendum egestas augue arcu ut est. Delegadis gente finis. In sit amet mattis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis. Pellentesque viverra accumsan ipsum elementum gravidis.\r\n\r\n[gallery ids="54,55,56,57,58,59,60"]', 'O Natal esta no ar!', '', 'publish', 'open', 'open', '', 'o-natal-esta-no-ar', '', '', '2014-12-09 22:02:43', '2014-12-09 22:02:43', '', 0, 'http://localhost/git/SiteGaia/blog/?p=53', 0, 'post', '', 0),
(54, 1, '2014-12-09 22:01:00', '2014-12-09 22:01:00', '', 'free-disney-frozen-wallpapers-hd', '', 'inherit', 'open', 'open', '', 'free-disney-frozen-wallpapers-hd', '', '', '2014-12-09 22:01:00', '2014-12-09 22:01:00', '', 53, 'http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/free-disney-frozen-wallpapers-hd.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2014-12-09 22:01:34', '2014-12-09 22:01:34', '', '3D Castle Wallpapers 4', '', 'inherit', 'open', 'open', '', '3d-castle-wallpapers-4', '', '', '2014-12-09 22:01:34', '2014-12-09 22:01:34', '', 53, 'http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/3D-Castle-Wallpapers-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2014-12-09 22:01:35', '2014-12-09 22:01:35', '', '3d Creative guitar desktop wallpaper', '', 'inherit', 'open', 'open', '', '3d-creative-guitar-desktop-wallpaper', '', '', '2014-12-09 22:01:35', '2014-12-09 22:01:35', '', 53, 'http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/3d-Creative-guitar-desktop-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2014-12-09 22:01:37', '2014-12-09 22:01:37', '', '3D_Wallpapers-881', '', 'inherit', 'open', 'open', '', '3d_wallpapers-881', '', '', '2014-12-09 22:01:37', '2014-12-09 22:01:37', '', 53, 'http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/3D_Wallpapers-881.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2014-12-09 22:01:38', '2014-12-09 22:01:38', '', '1920-wallpaper-8', '', 'inherit', 'open', 'open', '', '1920-wallpaper-8', '', '', '2014-12-09 22:01:38', '2014-12-09 22:01:38', '', 53, 'http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/1920-wallpaper-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2014-12-09 22:01:40', '2014-12-09 22:01:40', '', '90353-39867', '', 'inherit', 'open', 'open', '', '90353-39867', '', '', '2014-12-09 22:01:40', '2014-12-09 22:01:40', '', 53, 'http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/90353-39867.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2014-12-09 22:01:41', '2014-12-09 22:01:41', '', '288155-1920x1080', '', 'inherit', 'open', 'open', '', '288155-1920x1080', '', '', '2014-12-09 22:01:41', '2014-12-09 22:01:41', '', 53, 'http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/288155-1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `cg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(61, 1, '2014-12-09 22:02:43', '2014-12-09 22:02:43', '<a href="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/free-disney-frozen-wallpapers-hd.jpg"><img class="alignleft size-full wp-image-54" src="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/free-disney-frozen-wallpapers-hd.jpg" alt="free-disney-frozen-wallpapers-hd" width="1920" height="1440" /></a>\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\nSuco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper. Pharetra in mattis molestie, volutpat elementum justo. Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean justo massa.\r\n\r\nCasamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.\r\n\r\nCevadis im ampola pa arma uma pindureta. Nam varius eleifend orci, sed viverra nisl condimentum ut. Donec eget justis enim. Atirei o pau no gatis. Viva Forevis aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Copo furadis é disculpa de babadis, arcu quam euismod magna, bibendum egestas augue arcu ut est. Delegadis gente finis. In sit amet mattis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis. Pellentesque viverra accumsan ipsum elementum gravidis.\r\n\r\n[gallery ids="54,55,56,57,58,59,60"]', 'O Natal esta no ar!', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2014-12-09 22:02:43', '2014-12-09 22:02:43', '', 53, 'http://localhost/git/SiteGaia/blog/53-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2014-12-09 22:03:37', '2014-12-09 22:03:37', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\n<a href="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/1920-wallpaper-8.jpg"><img class="alignleft size-full wp-image-58" src="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/1920-wallpaper-8.jpg" alt="1920-wallpaper-8" width="1920" height="1200" /></a>\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\n&nbsp;', 'O planeja para 2015?', '', 'publish', 'open', 'open', '', 'o-planeja-para-2015', '', '', '2014-12-09 22:03:37', '2014-12-09 22:03:37', '', 0, 'http://localhost/git/SiteGaia/blog/?p=62', 0, 'post', '', 0),
(63, 1, '2014-12-09 22:03:37', '2014-12-09 22:03:37', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\n<a href="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/1920-wallpaper-8.jpg"><img class="alignleft size-full wp-image-58" src="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/1920-wallpaper-8.jpg" alt="1920-wallpaper-8" width="1920" height="1200" /></a>\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\n&nbsp;', 'O planeja para 2015?', '', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2014-12-09 22:03:37', '2014-12-09 22:03:37', '', 62, 'http://localhost/git/SiteGaia/blog/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2014-12-09 22:05:11', '2014-12-09 22:05:11', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.<a href="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/3d-Creative-guitar-desktop-wallpaper.jpg"><img class="alignleft size-full wp-image-56" src="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/3d-Creative-guitar-desktop-wallpaper.jpg" alt="3d Creative guitar desktop wallpaper" width="1920" height="1200" /></a>', 'Lorem Mussum', '', 'publish', 'open', 'open', '', 'lorem-mussum', '', '', '2014-12-09 22:05:11', '2014-12-09 22:05:11', '', 0, 'http://localhost/git/SiteGaia/blog/?p=64', 0, 'post', '', 0),
(65, 1, '2014-12-09 22:05:11', '2014-12-09 22:05:11', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.<a href="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/3d-Creative-guitar-desktop-wallpaper.jpg"><img class="alignleft size-full wp-image-56" src="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/3d-Creative-guitar-desktop-wallpaper.jpg" alt="3d Creative guitar desktop wallpaper" width="1920" height="1200" /></a>', 'Lorem Mussum', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2014-12-09 22:05:11', '2014-12-09 22:05:11', '', 64, 'http://localhost/git/SiteGaia/blog/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2014-12-09 22:06:37', '2014-12-09 22:06:37', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\n<a href="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/life-is-a-game-1920x1080-wallpaper-9650.jpg"><img class="alignleft size-full wp-image-67" src="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/life-is-a-game-1920x1080-wallpaper-9650.jpg" alt="life-is-a-game-1920x1080-wallpaper-9650" width="1920" height="1080" /></a>\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.', 'O que fazer em momento de lazer?', '', 'publish', 'open', 'open', '', 'o-que-fazer-em-momento-de-lazer', '', '', '2014-12-09 22:06:37', '2014-12-09 22:06:37', '', 0, 'http://localhost/git/SiteGaia/blog/?p=66', 0, 'post', '', 0),
(67, 1, '2014-12-09 22:05:50', '2014-12-09 22:05:50', '', 'life-is-a-game-1920x1080-wallpaper-9650', '', 'inherit', 'open', 'open', '', 'life-is-a-game-1920x1080-wallpaper-9650', '', '', '2014-12-09 22:05:50', '2014-12-09 22:05:50', '', 66, 'http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/life-is-a-game-1920x1080-wallpaper-9650.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2014-12-09 22:06:37', '2014-12-09 22:06:37', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n\r\n<a href="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/life-is-a-game-1920x1080-wallpaper-9650.jpg"><img class="alignleft size-full wp-image-67" src="http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/life-is-a-game-1920x1080-wallpaper-9650.jpg" alt="life-is-a-game-1920x1080-wallpaper-9650" width="1920" height="1080" /></a>\r\n\r\nMussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.', 'O que fazer em momento de lazer?', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2014-12-09 22:06:37', '2014-12-09 22:06:37', '', 66, 'http://localhost/git/SiteGaia/blog/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2014-12-09 22:08:56', '2014-12-09 22:08:56', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n<blockquote>\r\n<p style="text-align: center;"><strong>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</strong></p>\r\n</blockquote>\r\n<p style="text-align: right;"><strong><em>Confira as imagens: </em></strong></p>\r\n[gallery ids="70,67,60,59,58,57,56,55,54"]', 'Noticias importantes da Google', '', 'publish', 'open', 'open', '', 'noticias-importantes-da-google', '', '', '2014-12-09 22:08:56', '2014-12-09 22:08:56', '', 0, 'http://localhost/git/SiteGaia/blog/?p=69', 0, 'post', '', 0),
(70, 1, '2014-12-09 22:08:26', '2014-12-09 22:08:26', '', 'scrat-1920x1080-wallpaper-10249', '', 'inherit', 'open', 'open', '', 'scrat-1920x1080-wallpaper-10249', '', '', '2014-12-09 22:08:26', '2014-12-09 22:08:26', '', 69, 'http://localhost/git/SiteGaia/blog/wp-content/uploads/2014/12/scrat-1920x1080-wallpaper-10249.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2014-12-09 22:08:56', '2014-12-09 22:08:56', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.\r\n<blockquote>\r\n<p style="text-align: center;"><strong>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</strong></p>\r\n</blockquote>\r\n<p style="text-align: right;"><strong><em>Confira as imagens: </em></strong></p>\r\n[gallery ids="70,67,60,59,58,57,56,55,54"]', 'Noticias importantes da Google', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2014-12-09 22:08:56', '2014-12-09 22:08:56', '', 69, 'http://localhost/git/SiteGaia/blog/69-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_terms`
--

CREATE TABLE IF NOT EXISTS `cg_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `cg_terms`
--

INSERT INTO `cg_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(4, 'post-format-image', 'post-format-image', 0),
(6, 'Natal', 'natal', 0),
(7, 'Neve', 'neve', 0),
(8, 'natal', 'natal-2', 0),
(9, 'Lorem', 'lorem', 0),
(10, 'test', 'test', 0),
(11, 'descanço', 'descanco', 0),
(12, 'ferias', 'ferias', 0),
(13, 'tustus', 'tustus', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_term_relationships`
--

CREATE TABLE IF NOT EXISTS `cg_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cg_term_relationships`
--

INSERT INTO `cg_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(49, 1, 0),
(49, 4, 0),
(53, 6, 0),
(53, 7, 0),
(53, 8, 0),
(62, 1, 0),
(64, 9, 0),
(64, 10, 0),
(66, 1, 0),
(66, 11, 0),
(66, 12, 0),
(66, 13, 0),
(69, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `cg_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `cg_term_taxonomy`
--

INSERT INTO `cg_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(4, 4, 'post_format', '', 0, 0),
(6, 6, 'category', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_usermeta`
--

CREATE TABLE IF NOT EXISTS `cg_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Extraindo dados da tabela `cg_usermeta`
--

INSERT INTO `cg_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'joabtorres'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'cg_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'cg_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:13:{s:64:"d9e944fbc2286f385abd61918d4bbfdb9d8d981f6f18ad5c6e2df275eb1d4aee";i:1418315317;s:64:"e2f9911de2b6e25beab4d1c39f3f60f2c43e88dd0c890797c3fdbded02d83c18";i:1418317939;s:64:"97d5bb33d71e24d9d161bf5e3904aff51f57e3578132f9054cc62bd92dc04b65";i:1418334426;s:64:"86a0a4b4f773773ce000f3defb132c834462b231d8950ef48535bccbd98846d9";i:1418335847;s:64:"c1cc1fd670059ea39b9d360f92ed27aeb8bed47d5d215a7f7aced7ad5cfcac23";i:1418337791;s:64:"ae195d797e6594399b1e8160f154a143eba523a44eb2d718482c615d3b76b9fb";i:1418394407;s:64:"5401e7a043b91ce7aba965e7fca77ec1d80509d46bdce84941218b3e0212811c";i:1418397781;s:64:"51078a59eeb7da45a774b7e8c8918810f2a68926a27e58c3a699b55761b5eafe";i:1418403894;s:64:"c225617a8040925c7a273ed86130c84667935540da352915d40b70275d829d88";i:1418427626;s:64:"7528d3395c1174f0fd3de2ae22636eccb78b5df4607568750b78cb2d2263f20f";i:1418429513;s:64:"6fada253792e4861d37eaab16217e3b2c929815c9ab941d3632e4218ccde13ed";i:1418441139;s:64:"e882af9be8d8c6dbe98d6a7fc95f8a952690e0bc28d6cc80f19a14b607063fbe";i:1418480621;s:64:"c03be56922cc1f249f4739dc287b8cbda15374c5b76cc8b6605e68190dd9c27f";i:1418481330;}'),
(15, 1, 'cg_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'cg_user-settings', 'libraryContent=browse&align=left&imgsize=full'),
(17, 1, 'cg_user-settings-time', '1418145055'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:11:"add-ngg_tag";}'),
(20, 1, 'cg_media_library_mode', 'list'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(23, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:38:"dashboard_right_now,dashboard_activity";s:4:"side";s:39:"dashboard_quick_press,dashboard_primary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cg_users`
--

CREATE TABLE IF NOT EXISTS `cg_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `cg_users`
--

INSERT INTO `cg_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'joabtorres', '$P$BSpN9k6gRm99hfvgHCTwhXjlvgb.41/', 'joabtorres', 'joabtorres1508@gmail.com', '', '2014-12-09 02:24:12', '', 0, 'joabtorres');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
