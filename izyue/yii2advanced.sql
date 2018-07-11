-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018-03-07 14:07:30
-- 服务器版本: 5.5.59-0ubuntu0.14.04.1
-- PHP 版本: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `yii2advanced`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '38DNfGIngv9KCQAzbfZbXoOrWT2WAtRg', '$2y$13$6IzUSUN/0O6b.C/nbQDZSeqi4QPHZ5ICBgWEAslOnIEg0CTyyWzMO', NULL, 'liu.lipeng@newsnow.com.cn', 10, 1520400467, 1520400627);

-- --------------------------------------------------------

--
-- 表的结构 `admin_log`
--

CREATE TABLE IF NOT EXISTS `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gets` text COLLATE utf8_unicode_ci,
  `posts` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `admin_log`
--

INSERT INTO `admin_log` (`id`, `route`, `url`, `user_agent`, `gets`, `posts`, `admin_id`, `admin_email`, `ip`, `created_at`, `updated_at`) VALUES
(1, 'admin/permission/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fpermission%2Findex', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '{"r":"admin\\/permission\\/index"}', '[]', 1, 'liu.lipeng@newsnow.com.cn', '127.0.0.1', 1520400573, 1520400573),
(2, 'admin/role/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Frole%2Findex', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '{"r":"admin\\/role\\/index"}', '[]', 1, 'liu.lipeng@newsnow.com.cn', '127.0.0.1', 1520400598, 1520400598),
(3, 'admin/role/update', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Frole%2Fupdate&id=Admin', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '{"r":"admin\\/role\\/update","id":"Admin"}', '[]', 1, 'liu.lipeng@newsnow.com.cn', '127.0.0.1', 1520400602, 1520400602),
(4, 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '{"r":"admin\\/assignment\\/index"}', '[]', 1, 'liu.lipeng@newsnow.com.cn', '127.0.0.1', 1520400617, 1520400617),
(5, 'admin/assignment/update', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Fupdate&id=1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '{"r":"admin\\/assignment\\/update","id":"1"}', '[]', 1, 'liu.lipeng@newsnow.com.cn', '127.0.0.1', 1520400620, 1520400620),
(6, 'admin/assignment/update', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Fupdate&id=1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '{"r":"admin\\/assignment\\/update","id":"1"}', '{"_csrf":"PFyLPxKMXHLnvjHgWrPEqe6kD7P2g4pzO1hTUUWqPN5xZPl4VukZFdeTfpMq5ozHt9Vk1q_c6T4KCSEVNewMtg==","AdminModel":{"username":"admin","email":"liu.lipeng@newsnow.com.cn","password":"123456"}}', 1, 'liu.lipeng@newsnow.com.cn', '127.0.0.1', 1520400627, 1520400627),
(7, 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '{"r":"admin\\/assignment\\/index"}', '[]', 1, 'liu.lipeng@newsnow.com.cn', '127.0.0.1', 1520400627, 1520400627);

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', '1', 1457092343);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/admin/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/assignment/create', 2, NULL, NULL, NULL, 1457521995, 1457521995),
('/admin/assignment/delete', 2, NULL, NULL, NULL, 1458010804, 1458010804),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/assignment/search', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/assignment/update', 2, NULL, NULL, NULL, 1458010804, 1458010804),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/default/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/default/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/log/*', 2, NULL, NULL, NULL, 1468288689, 1468288689),
('/admin/log/index', 2, NULL, NULL, NULL, 1468288689, 1468288689),
('/admin/log/view', 2, NULL, NULL, NULL, 1468288689, 1468288689),
('/admin/menu/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/menu/create', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/menu/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/menu/update', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/menu/view', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/permission/*', 2, NULL, NULL, NULL, 1457948575, 1457948575),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/permission/create', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/permission/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/permission/search', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/permission/update', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/permission/view', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/role/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/role/assign', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/role/create', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/role/delete', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/role/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/role/search', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/role/update', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/role/view', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/route/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/route/assign', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/route/create', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/route/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1457947924, 1457947924),
('/admin/route/search', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/rule/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/rule/create', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/rule/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/rule/update', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/admin/rule/view', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/debug/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/debug/default/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/debug/default/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/debug/default/view', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/gii/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/gii/default/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/gii/default/action', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/gii/default/diff', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/gii/default/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/gii/default/preview', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/gii/default/view', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/site/*', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/site/error', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/site/index', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/site/login', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('/site/logout', 2, NULL, NULL, NULL, 1457330826, 1457330826),
('Admin', 1, 'Administrators', NULL, NULL, 1457084487, 1457947508),
('修改用户', 2, NULL, NULL, NULL, 1457522051, 1457522051),
('修改菜单', 2, NULL, NULL, NULL, 1457330464, 1457405433),
('删除权限', 2, NULL, NULL, NULL, 1457331320, 1457331320),
('删除菜单', 2, NULL, NULL, NULL, 1457330485, 1457330485),
('删除规则', 2, NULL, NULL, NULL, 1457331677, 1457331677),
('删除角色', 2, NULL, NULL, NULL, 1457331161, 1457331161),
('删除路由', 2, NULL, NULL, NULL, 1457331499, 1457331499),
('操作日志', 2, NULL, NULL, NULL, 1468288713, 1468288713),
('新增权限', 2, NULL, NULL, NULL, 1457331279, 1457331279),
('新增用户', 2, NULL, NULL, NULL, 1457433802, 1457433802),
('新增菜单', 2, NULL, NULL, NULL, 1457330445, 1457330445),
('新增规则', 2, NULL, NULL, NULL, 1457331552, 1457331610),
('新增角色', 2, NULL, NULL, NULL, 1457331075, 1457331075),
('新增路由', 2, NULL, NULL, NULL, 1457331386, 1457331386),
('更新权限', 2, NULL, NULL, NULL, 1457331303, 1457331303),
('更新规则', 2, NULL, NULL, NULL, 1457331647, 1457331647),
('更新角色', 2, NULL, NULL, NULL, 1457331126, 1457331126),
('更新路由', 2, NULL, NULL, NULL, 1457331492, 1457331492),
('权限分配', 2, NULL, NULL, NULL, 1457418746, 1457418746),
('权限管理', 2, NULL, NULL, NULL, 1457331258, 1457331258),
('查看操作日志', 2, NULL, NULL, NULL, 1468294314, 1468294314),
('查看权限', 2, NULL, NULL, NULL, 1457331342, 1457331342),
('查看用户权限', 2, NULL, NULL, NULL, 1457331965, 1457331965),
('查看菜单', 2, NULL, NULL, NULL, 1457330619, 1457330619),
('查看规则', 2, NULL, NULL, NULL, 1457331692, 1457331692),
('查看角色', 2, NULL, NULL, NULL, 1457331191, 1457331191),
('用户权限分配', 2, NULL, NULL, NULL, 1457333258, 1457333258),
('用户管理', 2, NULL, NULL, NULL, 1457079781, 1457331877),
('菜单管理', 2, NULL, NULL, NULL, 1457324314, 1457324314),
('规则管理', 2, NULL, NULL, NULL, 1457331529, 1457331529),
('角色权限分配', 2, NULL, NULL, NULL, 1457333688, 1457333688),
('角色管理', 2, NULL, NULL, NULL, 1457330790, 1457330790),
('路由分配', 2, NULL, NULL, NULL, 1457333742, 1457333742),
('路由管理', 2, NULL, NULL, NULL, 1457331368, 1457331368);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('用户权限分配', '/admin/assignment/assign'),
('新增用户', '/admin/assignment/create'),
('用户管理', '/admin/assignment/index'),
('查看用户权限', '/admin/assignment/search'),
('修改用户', '/admin/assignment/update'),
('查看用户权限', '/admin/assignment/view'),
('操作日志', '/admin/log/index'),
('查看操作日志', '/admin/log/view'),
('新增菜单', '/admin/menu/create'),
('删除菜单', '/admin/menu/delete'),
('菜单管理', '/admin/menu/index'),
('修改菜单', '/admin/menu/update'),
('查看菜单', '/admin/menu/view'),
('权限分配', '/admin/permission/assign'),
('新增权限', '/admin/permission/create'),
('删除权限', '/admin/permission/delete'),
('权限管理', '/admin/permission/index'),
('查看权限', '/admin/permission/search'),
('更新权限', '/admin/permission/update'),
('查看权限', '/admin/permission/view'),
('角色权限分配', '/admin/role/assign'),
('新增角色', '/admin/role/create'),
('删除角色', '/admin/role/delete'),
('角色管理', '/admin/role/index'),
('查看角色', '/admin/role/search'),
('更新角色', '/admin/role/update'),
('查看角色', '/admin/role/view'),
('路由分配', '/admin/route/assign'),
('新增路由', '/admin/route/create'),
('查看规则', '/admin/route/index'),
('查看规则', '/admin/route/search'),
('新增规则', '/admin/rule/create'),
('删除规则', '/admin/rule/delete'),
('规则管理', '/admin/rule/index'),
('路由管理', '/admin/rule/index'),
('更新规则', '/admin/rule/update'),
('Admin', '修改用户'),
('Admin', '修改菜单'),
('Admin', '删除权限'),
('Admin', '删除菜单'),
('Admin', '删除规则'),
('Admin', '删除角色'),
('Admin', '删除路由'),
('Admin', '操作日志'),
('Admin', '新增权限'),
('Admin', '新增用户'),
('Admin', '新增菜单'),
('Admin', '新增规则'),
('Admin', '新增角色'),
('Admin', '新增路由'),
('Admin', '更新权限'),
('Admin', '更新规则'),
('Admin', '更新角色'),
('Admin', '更新路由'),
('Admin', '权限分配'),
('Admin', '权限管理'),
('Admin', '查看操作日志'),
('Admin', '查看权限'),
('Admin', '查看用户权限'),
('Admin', '查看菜单'),
('Admin', '查看规则'),
('Admin', '查看角色'),
('Admin', '用户权限分配'),
('Admin', '用户管理'),
('Admin', '菜单管理'),
('Admin', '规则管理'),
('Admin', '角色权限分配'),
('Admin', '角色管理'),
('Admin', '路由分配'),
('Admin', '路由管理');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, '系统管理', NULL, NULL, NULL, NULL),
(2, '用户管理', 1, '/admin/assignment/index', 0, NULL),
(3, '菜单管理', 1, '/admin/menu/index', 1, NULL),
(4, '权限管理', 1, '/admin/permission/index', NULL, NULL),
(5, '角色管理', 1, '/admin/role/index', NULL, NULL),
(6, '路由管理', 1, '/admin/route/index', NULL, NULL),
(7, '规则管理', 1, '/admin/rule/index', NULL, NULL),
(8, '操作日志', 1, '/admin/log/index', 100, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1520400441),
('m140506_102106_rbac_init', 1520400444),
('m160608_050000_create_admin', 1520400467),
('m160712_034501_create_admin_log', 1520400467),
('m160712_111327_create_menu_table', 1520400467),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1520400444);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '123', '$2y$13$oiMuHrv2CWdzf2tOPVfzT.WOe1pfaahuSaCmOMYc8JNOu.QRbw4TC', NULL, '', 10, 0, 0);

--
-- 限制导出的表
--

--
-- 限制表 `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
