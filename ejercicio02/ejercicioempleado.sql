/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ejercicioempleado

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-03-21 22:32:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_queues
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES ('1', 'Email Template Forgot Password Backend', 'forgot_password_backend', null, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', null, '2017-04-26 15:54:49', null);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES ('1', '2017-04-26 16:06:10', null, '172.16.1.134', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'http://172.16.0.10/proyectobase/public/admin/login', 'admin@crudbooster.com login with IP Address 172.16.1.134', '1');
INSERT INTO `cms_logs` VALUES ('2', '2018-03-20 23:09:24', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/login', ':Login con Email desde la Dirección IP ::1', '1');
INSERT INTO `cms_logs` VALUES ('3', '2018-03-20 23:33:29', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados/add-save', 'Añadir nueva información 1 en Empleados', '1');
INSERT INTO `cms_logs` VALUES ('4', '2018-03-20 23:34:04', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados/add-save', 'Añadir nueva información 2 en Empleados', '1');
INSERT INTO `cms_logs` VALUES ('5', '2018-03-20 23:34:42', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados/add-save', 'Añadir nueva información 3 en Empleados', '1');
INSERT INTO `cms_logs` VALUES ('6', '2018-03-20 23:35:17', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados/add-save', 'Añadir nueva información 4 en Empleados', '1');
INSERT INTO `cms_logs` VALUES ('7', '2018-03-20 23:35:50', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados/add-save', 'Añadir nueva información 5 en Empleados', '1');
INSERT INTO `cms_logs` VALUES ('8', '2018-03-20 23:36:35', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados/add-save', 'Añadir nueva información 6 en Empleados', '1');
INSERT INTO `cms_logs` VALUES ('9', '2018-03-20 23:37:21', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados/add-save', 'Añadir nueva información 7 en Empleados', '1');
INSERT INTO `cms_logs` VALUES ('10', '2018-03-20 23:38:05', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados/add-save', 'Añadir nueva información 8 en Empleados', '1');
INSERT INTO `cms_logs` VALUES ('11', '2018-03-21 00:48:48', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados_asignados/add-save', 'Añadir nueva información 1 en Personal a Cargo', '1');
INSERT INTO `cms_logs` VALUES ('12', '2018-03-22 00:16:48', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/login', ':Login con Email desde la Dirección IP ::1', '1');
INSERT INTO `cms_logs` VALUES ('13', '2018-03-22 00:19:23', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/users/edit-save/1', 'Actualizar información Super Admin en Users', '1');
INSERT INTO `cms_logs` VALUES ('14', '2018-03-22 00:20:02', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/users/delete-image', 'Eliminar la imagen de Super Admin en Users', '1');
INSERT INTO `cms_logs` VALUES ('15', '2018-03-22 00:21:53', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/users/add-save', 'Añadir nueva información Daniela en Users', '1');
INSERT INTO `cms_logs` VALUES ('16', '2018-03-22 00:24:26', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/users/delete-image', 'Eliminar la imagen de Daniela en Users', '1');
INSERT INTO `cms_logs` VALUES ('17', '2018-03-22 00:24:43', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/users/edit-save/2', 'Actualizar información Daniela en Users', '1');
INSERT INTO `cms_logs` VALUES ('18', '2018-03-22 00:25:02', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/users/edit-save/2', 'Actualizar información Daniela en Users', '1');
INSERT INTO `cms_logs` VALUES ('19', '2018-03-22 00:49:40', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/logout', 'admin@crudbooster.com se desconectó', '1');
INSERT INTO `cms_logs` VALUES ('20', '2018-03-22 00:50:11', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/login', ':Login con Email desde la Dirección IP ::1', '2');
INSERT INTO `cms_logs` VALUES ('21', '2018-03-22 00:50:35', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/logout', 'danieladayro@gmail.com se desconectó', '2');
INSERT INTO `cms_logs` VALUES ('22', '2018-03-22 00:50:55', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/login', ':Login con Email desde la Dirección IP ::1', '1');
INSERT INTO `cms_logs` VALUES ('23', '2018-03-22 00:54:02', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados_asignados/add-save', 'Añadir nueva información 2 en Personal a Cargo', '1');
INSERT INTO `cms_logs` VALUES ('24', '2018-03-22 00:54:17', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados_asignados/add-save', 'Añadir nueva información 3 en Personal a Cargo', '1');
INSERT INTO `cms_logs` VALUES ('25', '2018-03-22 00:54:31', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados_asignados/add-save', 'Añadir nueva información 4 en Personal a Cargo', '1');
INSERT INTO `cms_logs` VALUES ('26', '2018-03-22 00:55:07', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados_asignados/add-save', 'Añadir nueva información 5 en Personal a Cargo', '1');
INSERT INTO `cms_logs` VALUES ('27', '2018-03-22 00:55:17', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados_asignados/add-save', 'Añadir nueva información 6 en Personal a Cargo', '1');
INSERT INTO `cms_logs` VALUES ('28', '2018-03-22 00:55:30', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados_asignados/add-save', 'Añadir nueva información 7 en Personal a Cargo', '1');
INSERT INTO `cms_logs` VALUES ('29', '2018-03-22 00:55:43', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/empleados_asignados/add-save', 'Añadir nueva información 8 en Personal a Cargo', '1');
INSERT INTO `cms_logs` VALUES ('30', '2018-03-22 01:31:24', null, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/ejercicio-empleados/public/admin/logout', 'admin@crudbooster.com se desconectó', '1');

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES ('1', 'Empleados', 'Route', 'AdminEmpleadosControllerGetIndex', null, 'fa fa-users', '0', '1', '0', '1', '1', '2018-03-20 23:29:36', null);
INSERT INTO `cms_menus` VALUES ('2', 'Empleados', 'Route', 'AdminEmpleadosControllerGetIndex', 'normal', 'fa fa-users', '0', '1', '0', '2', '1', '2018-03-22 00:22:55', null);
INSERT INTO `cms_menus` VALUES ('3', 'Personal a Cargo', 'Route', 'AdminEmpleadosAsignadosControllerGetIndex', 'normal', 'fa fa-user-secret', '0', '0', '0', '2', '1', '2018-03-22 00:22:55', null);

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES ('1', '2017-04-26 15:54:48', null, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('2', '2017-04-26 15:54:48', null, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('3', '2017-04-26 15:54:48', null, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('4', '2017-04-26 15:54:48', null, 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', '0', '1');
INSERT INTO `cms_moduls` VALUES ('5', '2017-04-26 15:54:48', null, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('6', '2017-04-26 15:54:48', null, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('7', '2017-04-26 15:54:48', null, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('8', '2017-04-26 15:54:48', null, 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('9', '2017-04-26 15:54:48', null, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('10', '2017-04-26 15:54:48', null, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('11', '2017-04-26 15:54:48', null, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', '1', '1');
INSERT INTO `cms_moduls` VALUES ('12', '2018-03-20 23:29:35', null, 'Empleados', 'fa fa-users', 'empleados', 'empleados', 'AdminEmpleadosController', '0', '0');
INSERT INTO `cms_moduls` VALUES ('13', '2018-03-20 23:59:18', null, 'Personal a Cargo', 'fa fa-user-secret', 'empleados_asignados', 'empleados_asignados', 'AdminEmpleadosAsignadosController', '0', '0');

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES ('1', '2017-04-26 15:54:48', null, 'Super Administrator', '1', 'skin-red');
INSERT INTO `cms_privileges` VALUES ('2', null, null, 'Operador', '0', 'skin-yellow');

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES ('1', '2017-04-26 15:54:48', null, '1', '0', '0', '0', '0', '1', '1');
INSERT INTO `cms_privileges_roles` VALUES ('2', '2017-04-26 15:54:48', null, '1', '1', '1', '1', '1', '1', '2');
INSERT INTO `cms_privileges_roles` VALUES ('3', '2017-04-26 15:54:48', null, '0', '1', '1', '1', '1', '1', '3');
INSERT INTO `cms_privileges_roles` VALUES ('4', '2017-04-26 15:54:48', null, '1', '1', '1', '1', '1', '1', '4');
INSERT INTO `cms_privileges_roles` VALUES ('5', '2017-04-26 15:54:49', null, '1', '1', '1', '1', '1', '1', '5');
INSERT INTO `cms_privileges_roles` VALUES ('6', '2017-04-26 15:54:49', null, '1', '1', '1', '1', '1', '1', '6');
INSERT INTO `cms_privileges_roles` VALUES ('7', '2017-04-26 15:54:49', null, '1', '1', '1', '1', '1', '1', '7');
INSERT INTO `cms_privileges_roles` VALUES ('8', '2017-04-26 15:54:49', null, '1', '1', '1', '1', '1', '1', '8');
INSERT INTO `cms_privileges_roles` VALUES ('9', '2017-04-26 15:54:49', null, '1', '1', '1', '1', '1', '1', '9');
INSERT INTO `cms_privileges_roles` VALUES ('10', '2017-04-26 15:54:49', null, '1', '1', '1', '1', '1', '1', '10');
INSERT INTO `cms_privileges_roles` VALUES ('11', '2017-04-26 15:54:49', null, '1', '0', '1', '0', '1', '1', '11');
INSERT INTO `cms_privileges_roles` VALUES ('12', null, null, '1', '1', '1', '1', '1', '1', '12');
INSERT INTO `cms_privileges_roles` VALUES ('13', null, null, '1', '1', '1', '1', '1', '1', '13');
INSERT INTO `cms_privileges_roles` VALUES ('14', null, null, '1', '1', '1', '1', '1', '2', '12');
INSERT INTO `cms_privileges_roles` VALUES ('15', null, null, '1', '1', '1', '1', '1', '2', '13');

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES ('1', '2017-04-26 15:54:49', null, 'login_background_color', null, 'text', null, 'Input hexacode', 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES ('2', '2017-04-26 15:54:49', null, 'login_font_color', null, 'text', null, 'Input hexacode', 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES ('3', '2017-04-26 15:54:49', null, 'login_background_image', null, 'upload_image', null, null, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES ('4', '2017-04-26 15:54:49', null, 'email_sender', 'support@crudbooster.com', 'text', null, null, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES ('5', '2017-04-26 15:54:49', null, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', null, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES ('6', '2017-04-26 15:54:49', null, 'smtp_host', '', 'text', null, null, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES ('7', '2017-04-26 15:54:49', null, 'smtp_port', '25', 'text', null, 'default 25', 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES ('8', '2017-04-26 15:54:49', null, 'smtp_username', '', 'text', null, null, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES ('9', '2017-04-26 15:54:49', null, 'smtp_password', '', 'text', null, null, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES ('10', '2017-04-26 15:54:49', null, 'appname', 'DanielaRomero', 'text', null, null, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES ('11', '2017-04-26 15:54:49', null, 'default_paper_size', 'Legal', 'text', null, 'Paper size, ex : A4, Legal, etc', 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES ('12', '2017-04-26 15:54:49', null, 'logo', 'uploads/2018-03/e283ba75ff46b38ec3fdc54622b1961b.jpg', 'upload_image', null, null, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES ('13', '2017-04-26 15:54:49', null, 'favicon', null, 'upload_image', null, null, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES ('14', '2017-04-26 15:54:49', null, 'api_debug_mode', 'true', 'select', 'true,false', null, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES ('15', '2017-04-26 15:54:49', null, 'google_api_key', null, 'text', null, null, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES ('16', '2017-04-26 15:54:49', null, 'google_fcm_key', null, 'text', null, null, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES ('1', '2017-04-26 15:54:48', '2018-03-22 00:19:23', 'Super Admin', null, 'admin@crudbooster.com', '$2y$10$LrJxm.pCpNvbL.D0S2TE8eO1eILFWPExRhmXUN1JnuT9bSoIHZVBq', '1', 'Active');
INSERT INTO `cms_users` VALUES ('2', '2018-03-22 00:21:53', '2018-03-22 00:25:02', 'Daniela', 'uploads/2018-03/daniela.jpg', 'danieladayro@gmail.com', '$2y$10$fQB951VnymNfHPwfgTkiW.At5EST9KqmeaaJQnGObGFz2gc8Pi2wW', '2', null);

-- ----------------------------
-- Table structure for empleados
-- ----------------------------
DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fechanac` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empleados
-- ----------------------------
INSERT INTO `empleados` VALUES ('1', 'DANIELA', 'ROMERO', '1988-02-29');
INSERT INTO `empleados` VALUES ('2', 'YONIBEL', 'GONZALEZ', '1989-05-03');
INSERT INTO `empleados` VALUES ('3', 'KARLA', 'ROMERO', '1991-08-23');
INSERT INTO `empleados` VALUES ('4', 'JOSE DANIEL', 'ARAUJO', '1990-03-19');
INSERT INTO `empleados` VALUES ('5', 'CARMEN BEATRIZ', 'GIMENEZ', '1966-07-18');
INSERT INTO `empleados` VALUES ('6', 'JOSE ANTONIO', 'ROMERO', '1953-01-15');
INSERT INTO `empleados` VALUES ('7', 'NATALY', 'GRATEROL', '1983-11-18');
INSERT INTO `empleados` VALUES ('8', 'KATIUSKA', 'VILLEGAS', '1986-10-10');

-- ----------------------------
-- Table structure for empleados_asignados
-- ----------------------------
DROP TABLE IF EXISTS `empleados_asignados`;
CREATE TABLE `empleados_asignados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empleado_id` int(10) unsigned DEFAULT NULL,
  `empleadoacargo_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empleado_id` (`empleado_id`,`empleadoacargo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empleados_asignados
-- ----------------------------
INSERT INTO `empleados_asignados` VALUES ('6', '1', '4');
INSERT INTO `empleados_asignados` VALUES ('7', '1', '5');
INSERT INTO `empleados_asignados` VALUES ('5', '1', '7');
INSERT INTO `empleados_asignados` VALUES ('8', '1', '8');
INSERT INTO `empleados_asignados` VALUES ('1', '5', '7');
INSERT INTO `empleados_asignados` VALUES ('4', '7', '1');
INSERT INTO `empleados_asignados` VALUES ('3', '7', '3');
INSERT INTO `empleados_asignados` VALUES ('2', '7', '8');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2016_08_07_145904_add_table_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('2', '2016_08_07_150834_add_table_cms_dashboard', '1');
INSERT INTO `migrations` VALUES ('3', '2016_08_07_151210_add_table_cms_logs', '1');
INSERT INTO `migrations` VALUES ('4', '2016_08_07_152014_add_table_cms_privileges', '1');
INSERT INTO `migrations` VALUES ('5', '2016_08_07_152214_add_table_cms_privileges_roles', '1');
INSERT INTO `migrations` VALUES ('6', '2016_08_07_152320_add_table_cms_settings', '1');
INSERT INTO `migrations` VALUES ('7', '2016_08_07_152421_add_table_cms_users', '1');
INSERT INTO `migrations` VALUES ('8', '2016_08_07_154624_add_table_cms_moduls', '1');
INSERT INTO `migrations` VALUES ('9', '2016_08_17_225409_add_status_cms_users', '1');
INSERT INTO `migrations` VALUES ('10', '2016_08_20_125418_add_table_cms_notifications', '1');
INSERT INTO `migrations` VALUES ('11', '2016_09_04_033706_add_table_cms_email_queues', '1');
INSERT INTO `migrations` VALUES ('12', '2016_09_16_035347_add_group_setting', '1');
INSERT INTO `migrations` VALUES ('13', '2016_09_16_045425_add_label_setting', '1');
INSERT INTO `migrations` VALUES ('14', '2016_09_17_104728_create_nullable_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('15', '2016_10_01_141740_add_method_type_apicustom', '1');
INSERT INTO `migrations` VALUES ('16', '2016_10_01_141846_add_parameters_apicustom', '1');
INSERT INTO `migrations` VALUES ('17', '2016_10_01_141934_add_responses_apicustom', '1');
INSERT INTO `migrations` VALUES ('18', '2016_10_01_144826_add_table_apikey', '1');
INSERT INTO `migrations` VALUES ('19', '2016_11_14_141657_create_cms_menus', '1');
INSERT INTO `migrations` VALUES ('20', '2016_11_15_132350_create_cms_email_templates', '1');
INSERT INTO `migrations` VALUES ('21', '2016_11_15_190410_create_cms_statistics', '1');
INSERT INTO `migrations` VALUES ('22', '2016_11_17_102740_create_cms_statistic_components', '1');
