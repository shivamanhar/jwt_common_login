-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.9.3-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table common_login.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table common_login.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table common_login.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.auth_permission: ~32 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
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
	(25, 'Can add blacklisted token', 7, 'add_blacklistedtoken'),
	(26, 'Can change blacklisted token', 7, 'change_blacklistedtoken'),
	(27, 'Can delete blacklisted token', 7, 'delete_blacklistedtoken'),
	(28, 'Can view blacklisted token', 7, 'view_blacklistedtoken'),
	(29, 'Can add outstanding token', 8, 'add_outstandingtoken'),
	(30, 'Can change outstanding token', 8, 'change_outstandingtoken'),
	(31, 'Can delete outstanding token', 8, 'delete_outstandingtoken'),
	(32, 'Can view outstanding token', 8, 'view_outstandingtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table common_login.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.auth_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$390000$pJ4zjkyVPrmOKpioPmjoem$JoKNqMDsjoqy/Cw8RjS0/fpXI4UPfwi2mErYDy2EVoc=', NULL, 1, 'shiva', '', '', 'shivamanhar@gmail.com', 1, 1, '2023-01-27 09:43:17.504263');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table common_login.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table common_login.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table common_login.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.django_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table common_login.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.django_content_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session'),
	(7, 'token_blacklist', 'blacklistedtoken'),
	(8, 'token_blacklist', 'outstandingtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table common_login.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.django_migrations: ~29 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2023-01-27 07:39:16.106099'),
	(2, 'auth', '0001_initial', '2023-01-27 07:39:16.329498'),
	(3, 'admin', '0001_initial', '2023-01-27 07:39:16.374607'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-27 07:39:16.380590'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-27 07:39:16.385646'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-27 07:39:16.414799'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-27 07:39:16.433601'),
	(8, 'auth', '0003_alter_user_email_max_length', '2023-01-27 07:39:16.447358'),
	(9, 'auth', '0004_alter_user_username_opts', '2023-01-27 07:39:16.452444'),
	(10, 'auth', '0005_alter_user_last_login_null', '2023-01-27 07:39:16.469571'),
	(11, 'auth', '0006_require_contenttypes_0002', '2023-01-27 07:39:16.470514'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-27 07:39:16.475504'),
	(13, 'auth', '0008_alter_user_username_max_length', '2023-01-27 07:39:16.488693'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-27 07:39:16.500866'),
	(15, 'auth', '0010_alter_group_name_max_length', '2023-01-27 07:39:16.514619'),
	(16, 'auth', '0011_update_proxy_permissions', '2023-01-27 07:39:16.519317'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-27 07:39:16.536437'),
	(18, 'sessions', '0001_initial', '2023-01-27 07:39:16.555468'),
	(19, 'token_blacklist', '0001_initial', '2023-01-27 07:56:41.598212'),
	(20, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2023-01-27 07:56:41.615167'),
	(21, 'token_blacklist', '0003_auto_20171017_2007', '2023-01-27 07:56:41.623145'),
	(22, 'token_blacklist', '0004_auto_20171017_2013', '2023-01-27 07:56:41.656057'),
	(23, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2023-01-27 07:56:41.676508'),
	(24, 'token_blacklist', '0006_auto_20171017_2113', '2023-01-27 07:56:41.696455'),
	(25, 'token_blacklist', '0007_auto_20171017_2214', '2023-01-27 07:56:43.451343'),
	(26, 'token_blacklist', '0008_migrate_to_bigautofield', '2023-01-27 07:56:43.589696'),
	(27, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2023-01-27 07:56:43.598641'),
	(28, 'token_blacklist', '0011_linearizes_history', '2023-01-27 07:56:43.599517'),
	(29, 'token_blacklist', '0012_alter_outstandingtoken_user', '2023-01-27 07:56:43.606456');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table common_login.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.django_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table common_login.token_blacklist_blacklistedtoken
CREATE TABLE IF NOT EXISTS `token_blacklist_blacklistedtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.token_blacklist_blacklistedtoken: ~0 rows (approximately)
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;

-- Dumping structure for table common_login.token_blacklist_outstandingtoken
CREATE TABLE IF NOT EXISTS `token_blacklist_outstandingtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table common_login.token_blacklist_outstandingtoken: ~45 rows (approximately)
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` (`id`, `token`, `created_at`, `expires_at`, `user_id`, `jti`) VALUES
	(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDg5OTAyOCwiaWF0IjoxNjc0ODEyNjI4LCJqdGkiOiJmNWVlOGE3OGNiZjk0ZjhjYjA2OTkzN2UxODE0NzA1ZiIsInVzZXJfaWQiOjF9.Tw5eC8EjIwQC6bEvyVpCaGtSWSf-KSp7u1DeEXzyxhc', '2023-01-27 09:43:48.990856', '2023-01-28 09:43:48.000000', 1, 'f5ee8a78cbf94f8cb069937e1814705f'),
	(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDAwNywiaWF0IjoxNjc0ODEzNjA3LCJqdGkiOiJhZGQzOWE2ZTc1NDM0M2RlYjNlZjA2YzgzNWFjNjc3OCIsInVzZXJfaWQiOjF9.ij6kP2kDTV986RxU_jkypjRDiws244frZ17gFnGD4aA', '2023-01-27 10:00:07.678680', '2023-01-28 10:00:07.000000', 1, 'add39a6e754343deb3ef06c835ac6778'),
	(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDAwOSwiaWF0IjoxNjc0ODEzNjA5LCJqdGkiOiIwZjQyMTVlZTM0NTg0ZGEyOGU4OTIxNjc0MTJhNDY4YiIsInVzZXJfaWQiOjF9.TQRm2RT9NeQT4ZoAUJp25hndKA0Er866y11lXKRJK-Y', '2023-01-27 10:00:09.406043', '2023-01-28 10:00:09.000000', 1, '0f4215ee34584da28e892167412a468b'),
	(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDAyMywiaWF0IjoxNjc0ODEzNjIzLCJqdGkiOiI1NDlkYTEyZDExOGQ0YjM3YTEzNzg0M2M5YmVjNjk4NyIsInVzZXJfaWQiOjF9.yYW_2I53tsCZDo89FPsPTijYLEAjSwl_byRS7AeXHRI', '2023-01-27 10:00:23.864287', '2023-01-28 10:00:23.000000', 1, '549da12d118d4b37a137843c9bec6987'),
	(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDAyNCwiaWF0IjoxNjc0ODEzNjI0LCJqdGkiOiJlNzhkYzZlNTA4NTg0ZjM1YTQwODI3YzMxNmE0NWM3MCIsInVzZXJfaWQiOjF9.Icx8MrKH7kqFgdTc3w5SRUcuiVgeg77vzsWyw4-hQRE', '2023-01-27 10:00:24.941212', '2023-01-28 10:00:24.000000', 1, 'e78dc6e508584f35a40827c316a45c70'),
	(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDA2NSwiaWF0IjoxNjc0ODEzNjY1LCJqdGkiOiI5MDRkNzAxYzMyMWY0M2U4YWVjODIyYWZmYmVlYTljNCIsInVzZXJfaWQiOjF9.m9jvWAv4YId0p3db7_NRFZ6eHGneX1bTrX96bvgXJmM', '2023-01-27 10:01:05.052424', '2023-01-28 10:01:05.000000', 1, '904d701c321f43e8aec822affbeea9c4'),
	(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDA2NiwiaWF0IjoxNjc0ODEzNjY2LCJqdGkiOiJiYmU0NTBiZjRmYjc0YmQ5Yjk1YmNmOWM4YWRiYzc1NyIsInVzZXJfaWQiOjF9.qHZEXmq5dugAVUHcg1W9imA5vO4QTaGjK1XKMp5tNX4', '2023-01-27 10:01:06.703426', '2023-01-28 10:01:06.000000', 1, 'bbe450bf4fb74bd9b95bcf9c8adbc757'),
	(8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDA3NCwiaWF0IjoxNjc0ODEzNjc0LCJqdGkiOiIyMTI3NjE4NjViNDg0M2RhYTJhZGUzNDA5MmM2ZGRkNiIsInVzZXJfaWQiOjF9.6uMEUnJN4nv76s_fstJkbGv42uJPjUCkdCWfgU3ftU4', '2023-01-27 10:01:14.154589', '2023-01-28 10:01:14.000000', 1, '212761865b4843daa2ade34092c6ddd6'),
	(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDA5NiwiaWF0IjoxNjc0ODEzNjk2LCJqdGkiOiJjN2FhODRkNjcwODA0ODMyOTk4YjZmNTViMDQ4ODJmMSIsInVzZXJfaWQiOjF9.QAQW7WBn8MzXAsik-b8Pm1AG6W7at2PeSfryCbOd0Tk', '2023-01-27 10:01:36.320826', '2023-01-28 10:01:36.000000', 1, 'c7aa84d670804832998b6f55b04882f1'),
	(10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDE1MiwiaWF0IjoxNjc0ODEzNzUyLCJqdGkiOiI3YzMyZjRmNDFkOWU0ODFhYjIzNjYzMTUzYmEyOWIyOSIsInVzZXJfaWQiOjF9.6vo3H4DwJgYx15eJn_Ed494dGtHa-FD4iuNxFaI_BbA', '2023-01-27 10:02:32.337677', '2023-01-28 10:02:32.000000', 1, '7c32f4f41d9e481ab23663153ba29b29'),
	(11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDE2OSwiaWF0IjoxNjc0ODEzNzY5LCJqdGkiOiI4OGYyZTM3ZDlmY2U0ZDZjOGQ4YTcwMzE0ZWU5ZGZlNCIsInVzZXJfaWQiOjF9.Irx6WQlSiGKSYFKjYc-y0b4GTKLApNA6tFhl1VzUNoY', '2023-01-27 10:02:49.333982', '2023-01-28 10:02:49.000000', 1, '88f2e37d9fce4d6c8d8a70314ee9dfe4'),
	(12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDE3MiwiaWF0IjoxNjc0ODEzNzcyLCJqdGkiOiIwYTBiNWM0YjQ4Yzg0ZTU1OWIwYzYyMzdhMjkwMzNiNCIsInVzZXJfaWQiOjF9.jenEsnDrzj9DVaHNHyBlidKyiXsygiIqkN7bxrxNgMg', '2023-01-27 10:02:52.316405', '2023-01-28 10:02:52.000000', 1, '0a0b5c4b48c84e559b0c6237a29033b4'),
	(13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDIxOSwiaWF0IjoxNjc0ODEzODE5LCJqdGkiOiJmZmVhZTk0OWE5NmY0NWNkOTYyMjJlZTRmZjA5OGRlMSIsInVzZXJfaWQiOjF9.hfAzPoz3zpOm3JsvI8OijJ-2yuadRNAIYwib-THa9wI', '2023-01-27 10:03:39.341737', '2023-01-28 10:03:39.000000', 1, 'ffeae949a96f45cd96222ee4ff098de1'),
	(14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDIyMywiaWF0IjoxNjc0ODEzODIzLCJqdGkiOiI0NWUwZmRmMjA1MDY0MTVjODE2Mjc2MTc5ZjM1MjEyZCIsInVzZXJfaWQiOjF9.Xrr6btHZhAiWb4bBHLTWQq_D2Ps3DbTGHz4Tg4AWW4M', '2023-01-27 10:03:43.471550', '2023-01-28 10:03:43.000000', 1, '45e0fdf20506415c816276179f35212d'),
	(15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDI1OCwiaWF0IjoxNjc0ODEzODU4LCJqdGkiOiIxNGZjNTY2YjAwMTk0NTQ0OTE5ZTVjYTE4MGIxNDhhMSIsInVzZXJfaWQiOjF9.-pkFEZ7pQapcZXN2THtcSmSCCv2xuQa8_y9tSCvToBg', '2023-01-27 10:04:18.326448', '2023-01-28 10:04:18.000000', 1, '14fc566b00194544919e5ca180b148a1'),
	(16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDI2MywiaWF0IjoxNjc0ODEzODYzLCJqdGkiOiJiNDhmYzI1NDlkODM0OTgwOWNkNjRlMDY3ZTZlZTUzMiIsInVzZXJfaWQiOjF9.FtwF4z4hklLHLCPaMhrYwBu8YzJyzf6XlOsvFPQjcZU', '2023-01-27 10:04:23.705533', '2023-01-28 10:04:23.000000', 1, 'b48fc2549d8349809cd64e067e6ee532'),
	(17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDI4NCwiaWF0IjoxNjc0ODEzODg0LCJqdGkiOiI2N2E1MmMyNWY0NTE0NWU2OGRkM2VjYmFmNWIwOGU4ZiIsInVzZXJfaWQiOjF9.gvUndPdq2RCD_3oHRIFGrervASDYTnVomlDDOUi1O9s', '2023-01-27 10:04:44.343384', '2023-01-28 10:04:44.000000', 1, '67a52c25f45145e68dd3ecbaf5b08e8f'),
	(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDI4NiwiaWF0IjoxNjc0ODEzODg2LCJqdGkiOiJhODcyNWFmOTg4M2I0ODYyYTUwYTIwZGU1NDU0MWE0NyIsInVzZXJfaWQiOjF9.wESiLO3hi_KGw8qH9LiB7C9zMeaGPidVX2o3lJKJ06g', '2023-01-27 10:04:46.495478', '2023-01-28 10:04:46.000000', 1, 'a8725af9883b4862a50a20de54541a47'),
	(19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDI4NywiaWF0IjoxNjc0ODEzODg3LCJqdGkiOiI3NTVjMTM2MWU3MWY0Y2QwOWU1NmFiYzZhMTBhOTVmNSIsInVzZXJfaWQiOjF9.QpNQhNKWWSeiWEJVFbuc_0yYFPR0vsGvWqjoVXe8haA', '2023-01-27 10:04:47.961328', '2023-01-28 10:04:47.000000', 1, '755c1361e71f4cd09e56abc6a10a95f5'),
	(20, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDc1NywiaWF0IjoxNjc0ODE0MzU3LCJqdGkiOiIzN2IxZjM0MTUwOTQ0Mzk0YTg4ZThhMWMwYzQ1MGE5ZSIsInVzZXJfaWQiOjF9.RYGTvLt92SW4u4GQ1d-oxEZVm2BGU3u0_LD2Id7rtoY', '2023-01-27 10:12:37.640488', '2023-01-28 10:12:37.000000', 1, '37b1f34150944394a88e8a1c0c450a9e'),
	(21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDc2MSwiaWF0IjoxNjc0ODE0MzYxLCJqdGkiOiI3OTEzNTQ2NGFiZjI0NmU3YjAwYmEwZWQ0YzM5ZGEwMyIsInVzZXJfaWQiOjF9.fP0qA4jAOZ3WP-bQVVQXBV4en8mOGQECCtTueu6ZEqw', '2023-01-27 10:12:41.047030', '2023-01-28 10:12:41.000000', 1, '79135464abf246e7b00ba0ed4c39da03'),
	(22, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDc3MSwiaWF0IjoxNjc0ODE0MzcxLCJqdGkiOiJkYjEzZjJlYTk4ZWY0OTQ3OGI1YjM0Y2IxNGRlNjBmZiIsInVzZXJfaWQiOjF9.HjblEDWQPXCJ4G-R0zkUHGZ6VtJOISVS0PcHEdxYgjI', '2023-01-27 10:12:51.090163', '2023-01-28 10:12:51.000000', 1, 'db13f2ea98ef49478b5b34cb14de60ff'),
	(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMDc3OSwiaWF0IjoxNjc0ODE0Mzc5LCJqdGkiOiJlY2FiMDlhOTZkMjI0MDEyYjY4ZGIxYWM3YjVkMjQ5YyIsInVzZXJfaWQiOjF9.QwPlufjpbdqeO7LiYPCsSkUt2PKS1sW8sXAcnasQ25g', '2023-01-27 10:12:59.280102', '2023-01-28 10:12:59.000000', 1, 'ecab09a96d224012b68db1ac7b5d249c'),
	(24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMTcwMywiaWF0IjoxNjc0ODE1MzAzLCJqdGkiOiI0MzVkODFmYjAyNzg0OWZkYmMzOTAyOTE2MzljNTUyYyIsInVzZXJfaWQiOjF9.KVqjV2P250C-ke-bYYLmvkxCK8uFAsxfMEI8tVqcGDA', '2023-01-27 10:28:23.072482', '2023-01-28 10:28:23.000000', 1, '435d81fb027849fdbc390291639c552c'),
	(25, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMTcwOCwiaWF0IjoxNjc0ODE1MzA4LCJqdGkiOiJkZTAyODAzYmVhNzQ0ZWU5YTU0ZTlkZTEwODI2NjczYiIsInVzZXJfaWQiOjF9.fK4w0FDXiAJY0Mw1S7ZN0KqbK7LLtZgGjrRf58XxPcg', '2023-01-27 10:28:28.744815', '2023-01-28 10:28:28.000000', 1, 'de02803bea744ee9a54e9de10826673b'),
	(26, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMTcwOSwiaWF0IjoxNjc0ODE1MzA5LCJqdGkiOiJjZWMxNDQ4MTVlMzI0OGI5OTNiYzcwY2YzZWYxYmZkYyIsInVzZXJfaWQiOjF9.e9PcCPUeyyyi8pV5onoRIXmsG8I2o4H2oT6Gjpw_yO8', '2023-01-27 10:28:29.148417', '2023-01-28 10:28:29.000000', 1, 'cec144815e3248b993bc70cf3ef1bfdc'),
	(27, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMzk5MSwiaWF0IjoxNjc0ODE3NTkxLCJqdGkiOiI5OGY5ZDBhNGY3MTU0OWVkOTNkZTAyODI5OTBkMDgzNSIsInVzZXJfaWQiOjF9.w1UptLeby-kI8HE58ogEslOSmHYhILLC08og-CTzNE0', '2023-01-27 11:06:31.664276', '2023-01-28 11:06:31.000000', 1, '98f9d0a4f71549ed93de0282990d0835'),
	(28, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMzk5MSwiaWF0IjoxNjc0ODE3NTkxLCJqdGkiOiJkY2RkODkxNTFkNjk0NTdkOGNjNGRiNjRlOTcwMjlhNCIsInVzZXJfaWQiOjF9.xS-uzWUcLtg7sClpGtjVzOVzjzN4f3KNDP6_saGvwCM', '2023-01-27 11:06:31.678239', '2023-01-28 11:06:31.000000', 1, 'dcdd89151d69457d8cc4db64e97029a4'),
	(29, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwMzk5OSwiaWF0IjoxNjc0ODE3NTk5LCJqdGkiOiIyMzVlNTNlYmJjMDY0OWIyYjQ1ZTc1OWI0NTRmM2U4ZiIsInVzZXJfaWQiOjF9.tQiuqhdc5UGZOW18APVknr7dxn2zGaQ6BbTTBOQFtDk', '2023-01-27 11:06:39.267884', '2023-01-28 11:06:39.000000', 1, '235e53ebbc0649b2b45e759b454f3e8f'),
	(30, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDAwMCwiaWF0IjoxNjc0ODE3NjAwLCJqdGkiOiI0MzU5ZmQ1MDNiOTg0MTNiOGJmMTIyMWVkYjQ3MDJmNCIsInVzZXJfaWQiOjF9.secdsNzzNgb-2vpMr6QIJuGIJ2c5unGcilyCTGiAizI', '2023-01-27 11:06:40.848457', '2023-01-28 11:06:40.000000', 1, '4359fd503b98413b8bf1221edb4702f4'),
	(31, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDAwNywiaWF0IjoxNjc0ODE3NjA3LCJqdGkiOiI2OTBlYTJiMmJiNzQ0MzU5YWVlZTkwNTYyYzY2YjA4YyIsInVzZXJfaWQiOjF9.Aqibs2WYWzy9qWKhjya2E1sF18lWWWDeRkOBvvx6lJY', '2023-01-27 11:06:47.221760', '2023-01-28 11:06:47.000000', 1, '690ea2b2bb744359aeee90562c66b08c'),
	(32, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDAyNSwiaWF0IjoxNjc0ODE3NjI1LCJqdGkiOiJmYWRlZTk1OTc2ZjM0OGU1OTAyNjc0ZjYxZjQ3M2FkMyIsInVzZXJfaWQiOjF9.w9c-2YL2BWO0va0o8U-GHq_CqjNXqoFlV9grb4ILPlE', '2023-01-27 11:07:05.352878', '2023-01-28 11:07:05.000000', 1, 'fadee95976f348e5902674f61f473ad3'),
	(33, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDAyOCwiaWF0IjoxNjc0ODE3NjI4LCJqdGkiOiJjMGYwZmQwMmE4YTc0ZDg5YWM4MWM3OTk2NjFmN2Y3ZiIsInVzZXJfaWQiOjF9._kvJbYBbaWmSXL_zalIRlSKACdnkNSP82MTg-JnfMwU', '2023-01-27 11:07:08.370666', '2023-01-28 11:07:08.000000', 1, 'c0f0fd02a8a74d89ac81c799661f7f7f'),
	(34, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDEzOCwiaWF0IjoxNjc0ODE3NzM4LCJqdGkiOiJmZWYzNzEwM2U3YmE0NDQ0OWFmYmI3NDI0MTllZmQzOSIsInVzZXJfaWQiOjF9.JFu-eNlVc4njN-mlePpLrYsP8Gl9Wt5NN8XQrwbP60g', '2023-01-27 11:08:58.274601', '2023-01-28 11:08:58.000000', 1, 'fef37103e7ba44449afbb742419efd39'),
	(35, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDE0MywiaWF0IjoxNjc0ODE3NzQzLCJqdGkiOiIwZDFkNjYxMmFjNzI0OGQ5OWUzNjdiNWU5NmM4NDhkZiIsInVzZXJfaWQiOjF9.0XJYkqo1oEe71KOYBmHhgZIhPRlJz1pD3OYvPqpTGDc', '2023-01-27 11:09:03.234553', '2023-01-28 11:09:03.000000', 1, '0d1d6612ac7248d99e367b5e96c848df'),
	(36, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDIwMiwiaWF0IjoxNjc0ODE3ODAyLCJqdGkiOiJlNmMwNzk5NjAzOTM0NWFhOWVhYThmYTRjNzdjNzNjNiIsInVzZXJfaWQiOjF9.IFDuXPvXJ3lgWPr2fy2OZd-pbAvVMwAA1SSyGUiCjMw', '2023-01-27 11:10:02.931429', '2023-01-28 11:10:02.000000', 1, 'e6c07996039345aa9eaa8fa4c77c73c6'),
	(37, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDIwNCwiaWF0IjoxNjc0ODE3ODA0LCJqdGkiOiI5MDFhMmJjMGVjODI0ZTZjYjVkMGRmN2EzNWVjOWMyZCIsInVzZXJfaWQiOjF9.kAOk3R108OKET5kd9Ge1cUEeEkg0gOL9QDhIwrae5Ag', '2023-01-27 11:10:04.375583', '2023-01-28 11:10:04.000000', 1, '901a2bc0ec824e6cb5d0df7a35ec9c2d'),
	(38, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDIwNywiaWF0IjoxNjc0ODE3ODA3LCJqdGkiOiJhMTMxMTMzYjI0ZDQ0OWY3OTkyOTYwMmEwZmQ2OTNiYSIsInVzZXJfaWQiOjF9.V6LDsdyzmmsbgnm6m6KJG8tl5kSbh5S-jcIZIdcPVFc', '2023-01-27 11:10:07.459882', '2023-01-28 11:10:07.000000', 1, 'a131133b24d449f79929602a0fd693ba'),
	(39, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDIwNywiaWF0IjoxNjc0ODE3ODA3LCJqdGkiOiI0OWQ3MjQ0YWYwNmM0NzYwYmNmMGI0MTBiOTk1M2VjNSIsInVzZXJfaWQiOjF9.aAbROdg1pNFuAaLRo0vKrGR_U9Dlwbot1vdWfRR69mo', '2023-01-27 11:10:07.513014', '2023-01-28 11:10:07.000000', 1, '49d7244af06c4760bcf0b410b9953ec5'),
	(40, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDMwMywiaWF0IjoxNjc0ODE3OTAzLCJqdGkiOiI0ZmJhMGM3MzIxN2U0NmM0OWZiMzQ1NmQ3MmIwZDdkYiIsInVzZXJfaWQiOjF9.wXVxsXgFeYgtfO5ytgcvAWOLP1PwzGeStiZd_VkQivw', '2023-01-27 11:11:43.653184', '2023-01-28 11:11:43.000000', 1, '4fba0c73217e46c49fb3456d72b0d7db'),
	(41, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNDc1MCwiaWF0IjoxNjc0ODE4MzUwLCJqdGkiOiIyMjc3NDg1NzkwODg0ZDlkYjhjMDRlMGM1NGE0ZDVhYyIsInVzZXJfaWQiOjF9.lrISmVCcLhMt72byHscSMrSxddctn-gIh-6L8mC8r-s', '2023-01-27 11:19:10.191443', '2023-01-28 11:19:10.000000', 1, '2277485790884d9db8c04e0c54a4d5ac'),
	(42, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNTI5NiwiaWF0IjoxNjc0ODE4ODk2LCJqdGkiOiI1NTY3MjNjMzhhMDI0ZTIwYjQ2ZmE0ODZkNjYyODdhNyIsInVzZXJfaWQiOjF9.IAoRIxjEUOXrB2c25HQRQUKIUDQQuPRzsKdI5-mpDEA', '2023-01-27 11:28:16.611255', '2023-01-28 11:28:16.000000', 1, '556723c38a024e20b46fa486d66287a7'),
	(43, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNTM1OCwiaWF0IjoxNjc0ODE4OTU4LCJqdGkiOiJkNTEzOTg1MzQ0YmM0OWM3ODQyMDUxYzk4MGIxZjc1MCIsInVzZXJfaWQiOjF9.LW_xRGWoclLbke5R3cFr3Z5YY1Ud2-B1aXDjcJFvpk0', '2023-01-27 11:29:18.523181', '2023-01-28 11:29:18.000000', 1, 'd513985344bc49c7842051c980b1f750'),
	(44, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNTQzNCwiaWF0IjoxNjc0ODE5MDM0LCJqdGkiOiIzMmViM2Q4ZWFkNDU0YTY2YjdlMGYyZjYyMjU3ZTU0YiIsInVzZXJfaWQiOjF9.wJiopRelXRTfyPoIJkZOTphc9fsMiFya6ohwcaMhyJs', '2023-01-27 11:30:34.749370', '2023-01-28 11:30:34.000000', 1, '32eb3d8ead454a66b7e0f2f62257e54b'),
	(45, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDkwNTQ1MSwiaWF0IjoxNjc0ODE5MDUxLCJqdGkiOiIyYjBlNjQwYmRkMTU0NTQ2YWJiMmE2ZTVlNWM1MDNiMiIsInVzZXJfaWQiOjF9.lNAbJ933eqL_yUCEJlAuoHbmvCJwOD9Ls9A-Gn_37F0', '2023-01-27 11:30:51.916321', '2023-01-28 11:30:51.000000', 1, '2b0e640bdd154546abb2a6e5e5c503b2');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
