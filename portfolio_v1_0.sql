-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2020 at 10:52 PM
-- Server version: 10.3.20-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_v1_0`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add person', 7, 'add_person'),
(26, 'Can change person', 7, 'change_person'),
(27, 'Can delete person', 7, 'delete_person'),
(28, 'Can view person', 7, 'view_person'),
(29, 'Can add details', 8, 'add_details'),
(30, 'Can change details', 8, 'change_details'),
(31, 'Can delete details', 8, 'delete_details'),
(32, 'Can view details', 8, 'view_details'),
(33, 'Can add education', 9, 'add_education'),
(34, 'Can change education', 9, 'change_education'),
(35, 'Can delete education', 9, 'delete_education'),
(36, 'Can view education', 9, 'view_education'),
(37, 'Can add work', 10, 'add_work'),
(38, 'Can change work', 10, 'change_work'),
(39, 'Can delete work', 10, 'delete_work'),
(40, 'Can view work', 10, 'view_work'),
(41, 'Can add skills', 11, 'add_skills'),
(42, 'Can change skills', 11, 'change_skills'),
(43, 'Can delete skills', 11, 'delete_skills'),
(44, 'Can view skills', 11, 'view_skills'),
(45, 'Can add projects', 12, 'add_projects'),
(46, 'Can change projects', 12, 'change_projects'),
(47, 'Can delete projects', 12, 'delete_projects'),
(48, 'Can view projects', 12, 'view_projects');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(4, 'pbkdf2_sha256$180000$RdgTGK41fHOj$8hF2FnrV7LYhyFS5BQDDIUdkdr88PtTG9nJd8UGKIzU=', '2020-06-01 03:45:29.896165', 1, 'sanket@admin', '', '', 'sanket28sahu@gmail.com', 1, 1, '2020-06-01 03:45:06.704341');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `details_table`
--

DROP TABLE IF EXISTS `details_table`;
CREATE TABLE IF NOT EXISTS `details_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row_ref_id_id` int(11) NOT NULL,
  `info_head` varchar(70) NOT NULL,
  `info_detail` varchar(250) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `details_table_row_ref_id_id_fba74995` (`row_ref_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details_table`
--

INSERT INTO `details_table` (`id`, `row_ref_id_id`, `info_head`, `info_detail`, `modified_date`) VALUES
(1, 1, 'Prof_title', 'Web Developer and Business Analyst', '2020-05-29 17:18:01.000000'),
(2, 1, 'dob', '28 Feb 1993', '2020-05-29 17:21:31.000000'),
(3, 1, 'Marital Status', 'Single', '2020-05-29 17:21:51.000000'),
(4, 1, 'phone_no', '+1 2268983050', '2020-05-29 17:22:29.000000'),
(5, 1, 'Edu_Title', 'Graduate', '2020-05-29 17:23:30.000000'),
(6, 1, 'Email', 'sanket28sahu@gmail.com', '2020-05-29 17:23:43.000000'),
(7, 1, 'facebook_link', 'https://www.facebook.com/shanky2892/', '2020-05-29 17:26:19.000000'),
(8, 1, 'Linkedin_link', 'https://www.linkedin.com/in/sanket28sahu/', '2020-05-29 17:40:08.000000'),
(9, 1, 'insta_link', 'https://www.instagram.com/28sanketsahu/', '2020-05-29 17:41:05.000000'),
(10, 1, 'Nationality', 'Indian', '2020-05-29 17:41:24.000000'),
(11, 1, 'Resume Link', 'https://sanket28sahu.github.io/sanketsahu.me/assets/resume/Resume_Sahu', '2020-05-29 17:42:33.000000'),
(12, 1, 'sex', 'Male', '2020-05-29 17:43:02.000000'),
(13, 1, 'address', 'Kitchener - Ontario - N2E2K1', '2020-05-29 17:44:08.000000'),
(14, 1, 'Languages Known', 'English, Hindi', '2020-05-29 17:44:40.000000'),
(15, 1, 'strength', 'Integrity towards my work environment', '2020-05-29 17:45:16.000000'),
(16, 1, 'added_strength', 'Optimistic as we should never loose hope in any situation which allows us to strive for solution', '2020-05-29 17:45:46.000000');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(35, '2020-06-01 03:45:46.865000', '1', 'sanket_user', 3, '', 4, 4),
(36, '2020-06-03 16:29:34.342288', '1', 'PHP', 1, '[{\"added\": {}}]', 11, 4),
(37, '2020-06-03 16:30:39.279313', '2', 'MySQL', 1, '[{\"added\": {}}]', 11, 4),
(38, '2020-06-03 16:31:14.028990', '3', 'Python', 1, '[{\"added\": {}}]', 11, 4),
(39, '2020-06-03 16:33:07.689529', '4', 'Bootstrap', 1, '[{\"added\": {}}]', 11, 4),
(40, '2020-06-03 16:34:55.318048', '5', 'HTML', 1, '[{\"added\": {}}]', 11, 4),
(41, '2020-06-03 16:35:53.687702', '6', 'CSS', 1, '[{\"added\": {}}]', 11, 4),
(42, '2020-06-03 16:36:58.370580', '7', 'JavaScript', 1, '[{\"added\": {}}]', 11, 4),
(43, '2020-06-03 16:37:47.330847', '8', 'MSSQL Server', 1, '[{\"added\": {}}]', 11, 4),
(44, '2020-06-03 16:38:35.857673', '9', 'CodeIgniter', 1, '[{\"added\": {}}]', 11, 4),
(45, '2020-06-03 16:39:12.393782', '10', 'Netbeans', 1, '[{\"added\": {}}]', 11, 4),
(46, '2020-06-03 16:39:46.382382', '11', 'PyCharm', 1, '[{\"added\": {}}]', 11, 4),
(47, '2020-06-03 16:40:21.815015', '12', 'OpenCart', 1, '[{\"added\": {}}]', 11, 4),
(48, '2020-06-03 18:09:25.985138', '11', 'PyCharm', 2, '[{\"changed\": {\"fields\": [\"Skill per level\"]}}]', 11, 4),
(49, '2020-06-03 18:09:35.820712', '10', 'Netbeans', 2, '[{\"changed\": {\"fields\": [\"Skill per level\"]}}]', 11, 4),
(50, '2020-06-03 18:09:47.926920', '9', 'CodeIgniter', 2, '[{\"changed\": {\"fields\": [\"Skill per level\"]}}]', 11, 4),
(51, '2020-06-03 18:10:35.104492', '6', 'CSS', 2, '[{\"changed\": {\"fields\": [\"Skill per level\"]}}]', 11, 4),
(52, '2020-06-03 18:10:59.491840', '1', 'PHP', 2, '[{\"changed\": {\"fields\": [\"Skill per level\"]}}]', 11, 4),
(53, '2020-06-03 18:11:10.192109', '2', 'MySQL', 2, '[{\"changed\": {\"fields\": [\"Skill per level\"]}}]', 11, 4),
(54, '2020-06-04 17:33:38.156495', '1', '11SQFT', 1, '[{\"added\": {}}]', 12, 4),
(55, '2020-06-04 17:37:45.172915', '1', '11SQFT', 2, '[{\"changed\": {\"fields\": [\"Project image\"]}}]', 12, 4),
(56, '2020-06-04 17:38:27.277112', '1', '11SQFT', 3, '', 12, 4),
(57, '2020-06-04 17:38:48.503792', '2', '11SQFT', 1, '[{\"added\": {}}]', 12, 4),
(58, '2020-06-04 17:39:43.356438', '2', '11SQFT', 2, '[{\"changed\": {\"fields\": [\"Project image\"]}}]', 12, 4),
(59, '2020-06-04 17:40:13.213129', '2', '11SQFT', 2, '[{\"changed\": {\"fields\": [\"Project image\"]}}]', 12, 4),
(60, '2020-06-06 19:08:55.921162', '2', '11SQFT', 3, '', 12, 4),
(61, '2020-06-06 19:15:08.822093', '3', '11SQFT', 1, '[{\"added\": {}}]', 12, 4),
(62, '2020-06-06 19:16:33.830707', '3', '11SQFT', 3, '', 12, 4),
(63, '2020-06-06 19:17:51.793495', '4', '11SQFT', 1, '[{\"added\": {}}]', 12, 4),
(64, '2020-06-06 19:18:39.883364', '4', '11SQFT', 2, '[{\"changed\": {\"fields\": [\"Project image\"]}}]', 12, 4),
(65, '2020-06-06 19:20:45.664365', '4', '11SQFT', 3, '', 12, 4),
(66, '2020-06-06 19:21:28.546954', '5', '11SQFT', 1, '[{\"added\": {}}]', 12, 4),
(67, '2020-06-07 22:08:25.272856', '5', '11SQFT', 2, '[{\"changed\": {\"fields\": [\"Project image\"]}}]', 12, 4),
(68, '2020-06-07 22:08:46.202946', '5', '11SQFT', 2, '[{\"changed\": {\"fields\": [\"Project image\"]}}]', 12, 4),
(69, '2020-06-07 22:10:25.731541', '5', '11SQFT', 2, '[{\"changed\": {\"fields\": [\"Project image\"]}}]', 12, 4),
(70, '2020-06-07 22:10:33.633182', '5', '11SQFT', 2, '[{\"changed\": {\"fields\": [\"Project image\"]}}]', 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'portfolio_web', 'person'),
(8, 'portfolio_web', 'details'),
(9, 'portfolio_web', 'education'),
(10, 'portfolio_web', 'work'),
(11, 'portfolio_web', 'skills'),
(12, 'portfolio_web', 'projects');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-05-28 06:20:36.279754'),
(2, 'auth', '0001_initial', '2020-05-28 06:20:37.150834'),
(3, 'admin', '0001_initial', '2020-05-28 06:20:39.293169'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-28 06:20:39.711656'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-28 06:20:39.724594'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-05-28 06:20:40.050540'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-05-28 06:20:40.150181'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-05-28 06:20:40.339900'),
(9, 'auth', '0004_alter_user_username_opts', '2020-05-28 06:20:40.349874'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-05-28 06:20:40.469669'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-05-28 06:20:40.471662'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-05-28 06:20:40.480353'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-05-28 06:20:40.681461'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-05-28 06:20:40.867962'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-05-28 06:20:40.970700'),
(16, 'auth', '0011_update_proxy_permissions', '2020-05-28 06:20:40.980660'),
(17, 'portfolio_web', '0001_initial', '2020-05-28 06:20:41.090654'),
(18, 'portfolio_web', '0002_auto_20200528_0217', '2020-05-28 06:20:41.145509'),
(19, 'sessions', '0001_initial', '2020-05-28 06:20:41.264190'),
(20, 'portfolio_web', '0003_auto_20200528_0222', '2020-05-28 06:22:20.146511'),
(21, 'portfolio_web', '0004_auto_20200528_0235', '2020-05-28 06:35:22.897922'),
(22, 'portfolio_web', '0005_auto_20200529_1315', '2020-05-29 17:15:40.878549'),
(23, 'portfolio_web', '0006_auto_20200529_1320', '2020-05-29 17:20:21.814306'),
(24, 'portfolio_web', '0007_auto_20200529_1346', '2020-05-29 17:46:24.060744'),
(25, 'portfolio_web', '0008_auto_20200530_0235', '2020-05-30 06:36:09.887880'),
(26, 'portfolio_web', '0009_auto_20200531_0002', '2020-05-31 04:02:10.393869'),
(27, 'portfolio_web', '0010_auto_20200531_2047', '2020-06-01 00:47:38.097263'),
(28, 'portfolio_web', '0011_auto_20200531_2052', '2020-06-01 00:52:39.361564'),
(29, 'portfolio_web', '0002_auto_20200531_2349', '2020-06-01 03:58:56.445935'),
(30, 'portfolio_web', '0003_auto_20200531_2350', '2020-06-01 03:58:56.476850'),
(31, 'portfolio_web', '0004_auto_20200531_2358', '2020-06-01 03:58:56.688652'),
(32, 'portfolio_web', '0005_auto_20200604_1330', '2020-06-04 17:30:53.954570'),
(33, 'portfolio_web', '0006_auto_20200604_1337', '2020-06-04 17:37:20.911874'),
(34, 'portfolio_web', '0007_auto_20200606_1518', '2020-06-06 19:18:22.394225'),
(35, 'portfolio_web', '0008_auto_20200606_1522', '2020-06-06 19:22:36.240264');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('uk1bg92rbu1o0o7w8mdl6us8o372u5uj', 'N2U3Mjk2OWNmMzBkZDEzMzViNTNjMGEzY2FlOTkzNTA3ZGIxNzMwMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjZmMmZkMWFiZjI5OTlhZjFkZGYyN2ZkN2NhZDU5NjcxYmNlMWZhIn0=', '2020-06-12 17:53:27.307126'),
('7biszat2b7r8s4a3hw6vxkggc38wc7fg', 'NGY4ZjQ4MzU0YTIyMmJjNjBiNWU5OWQyY2RlN2M3ZDFiYjNmM2RmOTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZmM5ZWY0NGE2N2ZjZWJiNDQ3NDJhZmQ2NWNhMTlhYzJhNThjN2RkIn0=', '2020-06-15 02:00:15.443042'),
('awuyu2rx3ur5mk5yclah2t7vjnhsof62', 'MWVlNmNkNjEwOTE0YjBkMzJhZjg3YTQ5MTljNjY4ODVjYzJhOTc5MDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTIxOGVjZWEzYTgwZGQzM2NlOGFjOGZiYzY2NjU4ZmVlYjI5ZWQ3In0=', '2020-06-15 03:45:29.900161');

-- --------------------------------------------------------

--
-- Table structure for table `edu_table`
--

DROP TABLE IF EXISTS `edu_table`;
CREATE TABLE IF NOT EXISTS `edu_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row_ref_id_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `inst_name` varchar(100) NOT NULL,
  `completion_yr` varchar(100) NOT NULL,
  `job_type` varchar(15) NOT NULL,
  `description` varchar(350) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `edu_table_row_ref_id_id_db56af1c` (`row_ref_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edu_table`
--

INSERT INTO `edu_table` (`id`, `row_ref_id_id`, `course_name`, `inst_name`, `completion_yr`, `job_type`, `description`, `modified_date`) VALUES
(2, 1, 'Diploma in Computer Technology', 'Priyadarshini Polytechnic', '2011', 'Full Time', 'I have learned various concepts relating to the computer architecture and its working which have helped me building strong skills in computer development in range from software to hardware. I have learned various software skills along with communication skills.', '2020-06-01 02:32:51.000000'),
(3, 1, 'Bachelor\'s Degree in Computer Science and Engineering', 'Gurunanak Institute of Engineering and Technology', '2014', 'Full Time', 'I got knowledge in area of electrical engineering and software engineering concepts. I got hands on skills with various phases of software development such as software requirements specification, software testing, planning and designing. I can say, I got the ability about taking complex problem and finding a solution by the application from the fie', '2020-06-01 02:35:10.000000'),
(4, 1, 'Graduate Certificate in IT Business Analysis', 'Conestoga College', '2020', 'Full Time', 'I got opportunity to brush up my IT project analysis skills and got to know about various tools important for gathering information and formulate project on the basis of client needs and make a plan which in turn improve my communication skills which is going to make me a dynamic person and develop me professionally.', '2020-06-01 02:36:45.000000');

-- --------------------------------------------------------

--
-- Table structure for table `person_table`
--

DROP TABLE IF EXISTS `person_table`;
CREATE TABLE IF NOT EXISTS `person_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_table`
--

INSERT INTO `person_table` (`id`, `firstname`, `lastname`, `modified_date`) VALUES
(1, 'Sanket', 'Sahu', '2020-05-28 06:06:45.000000');

-- --------------------------------------------------------

--
-- Table structure for table `projects_table`
--

DROP TABLE IF EXISTS `projects_table`;
CREATE TABLE IF NOT EXISTS `projects_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row_ref_id_id` int(11) NOT NULL,
  `project_name` varchar(150) NOT NULL,
  `project_image` varchar(100) NOT NULL,
  `proj_details` varchar(350) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_table_row_ref_id_id_1c1e3469` (`row_ref_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects_table`
--

INSERT INTO `projects_table` (`id`, `row_ref_id_id`, `project_name`, `project_image`, `proj_details`, `modified_date`) VALUES
(5, 1, '11SQFT', 'project/11sqft_FU7RlnN.jpg', 'This Web Application is for a property broker who wants to create an online platform for its customers who can search and list property. ALso and admin panel for broker for managing its website.', '2020-06-06 19:21:26.000000');

-- --------------------------------------------------------

--
-- Table structure for table `skills_table`
--

DROP TABLE IF EXISTS `skills_table`;
CREATE TABLE IF NOT EXISTS `skills_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(100) NOT NULL,
  `skill_per_level` varchar(100) NOT NULL,
  `skill_proficiency` varchar(15) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `row_ref_id_id` int(11) NOT NULL,
  `skill_description` varchar(350) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `skills_table_row_ref_id_id_85506354` (`row_ref_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills_table`
--

INSERT INTO `skills_table` (`id`, `skill_name`, `skill_per_level`, `skill_proficiency`, `modified_date`, `row_ref_id_id`, `skill_description`) VALUES
(1, 'PHP', '93', 'Intermediate', '2020-06-03 16:29:21.000000', 1, 'PHP'),
(2, 'MySQL', '95', 'Intermediate', '2020-06-03 16:30:37.000000', 1, 'Database'),
(3, 'Python', '92', 'Intermediate', '2020-06-03 16:31:12.000000', 1, 'Python Language'),
(4, 'Bootstrap', '92', 'Intermediate', '2020-06-03 16:33:06.000000', 1, 'Web Development'),
(5, 'HTML', '92', 'Advanced', '2020-06-03 16:34:54.000000', 1, 'Web Development'),
(6, 'CSS', '92', 'Intermediate', '2020-06-03 16:35:52.000000', 1, 'Web Designing'),
(7, 'JavaScript', '92', 'Intermediate', '2020-06-03 16:36:57.000000', 1, 'Web Development'),
(8, 'MSSQL Server', '92', 'Intermediate', '2020-06-03 16:37:46.000000', 1, 'MSSQL Server'),
(9, 'CodeIgniter', '90', 'Intermediate', '2020-06-03 16:38:34.000000', 1, 'Web Development'),
(10, 'Netbeans', '90', 'Intermediate', '2020-06-03 16:39:10.000000', 1, 'Web Development'),
(11, 'PyCharm', '95', 'Intermediate', '2020-06-03 16:39:45.000000', 1, 'Web Development'),
(12, 'OpenCart', '92', 'Intermediate', '2020-06-03 16:40:20.000000', 1, 'Web Development');

-- --------------------------------------------------------

--
-- Table structure for table `work_table`
--

DROP TABLE IF EXISTS `work_table`;
CREATE TABLE IF NOT EXISTS `work_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `job_type` varchar(15) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `Description` varchar(350) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `row_ref_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `work_table_row_ref_id_id_553a484b` (`row_ref_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_table`
--

INSERT INTO `work_table` (`id`, `company_name`, `start_date`, `end_date`, `job_type`, `designation`, `Description`, `modified_date`, `row_ref_id_id`) VALUES
(1, 'Gyankatta', '2014', '2017', 'Full Time', 'Web Designer', 'I have started my career as web developer where I got practical real-life experience which allows me on to apply my software skills for development of web application.', '2020-06-01 03:27:47.000000', 1),
(2, 'Iuris Technology and Services', '2018', '2018', 'Full Time', 'Web Developer', 'I worked as web Designer where I applied my designing skills along with development of web application.', '2020-06-01 03:28:38.000000', 1),
(3, 'Persistent Systems Pvt. Ltd.', '2018', '2018', 'Full Time', 'Senior UI Developer', 'I got an opportunity to interact with clients and get myself involve in building software and formulate according to clients needs. It has helped me in improving my communication skills along with software development.', '2020-06-01 03:29:40.000000', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
