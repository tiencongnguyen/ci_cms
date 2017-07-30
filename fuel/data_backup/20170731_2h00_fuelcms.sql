/*
 Navicat Premium Data Transfer

 Source Server         : locahost
 Source Server Type    : MySQL
 Source Server Version : 100113
 Source Host           : localhost:3306
 Source Schema         : fuelcms

 Target Server Type    : MySQL
 Target Server Version : 100113
 File Encoding         : 65001

 Date: 31/07/2017 01:50:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fuel_archives
-- ----------------------------
DROP TABLE IF EXISTS `fuel_archives`;
CREATE TABLE `fuel_archives`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ref_id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `version` smallint(5) UNSIGNED NOT NULL,
  `version_timestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `archived_user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_archives
-- ----------------------------
INSERT INTO `fuel_archives` VALUES (1, 1, 'fuel_pages', '{\"id\":1,\"location\":\"home\",\"layout\":\"main\",\"cache\":\"yes\",\"date_added\":\"2017-07-31 01:04:03\",\"last_modified\":\"2017-07-31 01:04:03\",\"last_modified_by\":\"\",\"variables\":[{\"id\":\"1\",\"page_id\":\"1\",\"name\":\"page_title\",\"scope\":\"\",\"value\":\"Create a new page\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"home\",\"page_published\":\"yes\"},{\"id\":\"2\",\"page_id\":\"1\",\"name\":\"meta_description\",\"scope\":\"\",\"value\":\"new page, create new page\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"home\",\"page_published\":\"yes\"},{\"id\":\"3\",\"page_id\":\"1\",\"name\":\"meta_keywords\",\"scope\":\"\",\"value\":\"page, new page\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"home\",\"page_published\":\"yes\"},{\"id\":\"4\",\"page_id\":\"1\",\"name\":\"heading\",\"scope\":\"\",\"value\":\"\\u0110&acirc;y l&agrave; trang m\\u1edbi\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"home\",\"page_published\":\"yes\"},{\"id\":\"5\",\"page_id\":\"1\",\"name\":\"body\",\"scope\":\"\",\"value\":\"N\\u1ed9i dung trang m\\u1edbi\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"home\",\"page_published\":\"yes\"},{\"id\":\"6\",\"page_id\":\"1\",\"name\":\"body_class\",\"scope\":\"\",\"value\":\"\",\"type\":\"string\",\"language\":\"english\",\"active\":\"yes\",\"layout\":\"main\",\"location\":\"home\",\"page_published\":\"yes\"}]}', 1, '2017-07-31 01:04:03', 1);
INSERT INTO `fuel_archives` VALUES (2, 1, 'fuel_blog_posts', '{\"id\":1,\"title\":\"Blog \\u0111\\u1ea7u ti&ecirc;n\",\"language\":\"english\",\"content\":\"\\u0111&acirc;y l&agrave; b&agrave;i vi\\u1ebft blog \\u0111\\u1ea7u ti&ecirc;n\",\"formatting\":\"auto_typography\",\"excerpt\":\"ng\\u1eafn g\\u1ecdn th&ocirc;i, \\u0111&acirc;y l&agrave; b&agrave;i vi\\u1ebft \\u0111\\u1ea7u ti&ecirc;n\",\"slug\":\"blog-u-tin\",\"author_id\":\"1\",\"main_image\":\"\",\"list_image\":\"\",\"thumbnail_image\":\"\",\"sticky\":\"no\",\"publish_date\":\"1970-01-01 08:00:00\",\"page_title\":\"\",\"meta_description\":\"\",\"meta_keywords\":\"\",\"canonical\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"category_id\":\"\",\"date_added\":\"2017-07-31 01:23:34\",\"last_modified\":\"2017-07-31 01:23:34\",\"published\":\"yes\"}', 1, '2017-07-31 01:23:34', 1);
INSERT INTO `fuel_archives` VALUES (3, 1, 'fuel_categories', '{\"id\":1,\"name\":\"H&igrave;nh \\u1ea3nh\",\"slug\":\"hnh-nh\",\"description\":\"N\\u1ed9i dung li&ecirc;n quan t\\u1edbi h&igrave;nh \\u1ea3nh\",\"context\":\"\",\"language\":\"english\",\"precedence\":\"\",\"parent_id\":\"\",\"published\":\"yes\"}', 1, '2017-07-31 01:24:35', 1);
INSERT INTO `fuel_archives` VALUES (4, 2, 'fuel_categories', '{\"id\":2,\"name\":\"Tr&ograve; ch\\u01a1i\",\"slug\":\"tr-chi\",\"description\":\"C&aacute;c n\\u1ed9i dung li&ecirc;n quan t\\u1edbi tr&ograve; ch\\u01a1i\",\"context\":\"\",\"language\":\"english\",\"precedence\":\"\",\"parent_id\":\"\",\"published\":\"yes\"}', 1, '2017-07-31 01:25:15', 1);
INSERT INTO `fuel_archives` VALUES (5, 2, 'fuel_categories', '{\"id\":\"2\",\"name\":\"Tr&ograve; ch\\u01a1i\",\"slug\":\"tr-chi\",\"description\":\"C&aacute;c n\\u1ed9i dung li&ecirc;n quan t\\u1edbi tr&ograve; ch\\u01a1i\",\"context\":\"\",\"language\":\"english\",\"precedence\":\"0\",\"parent_id\":\"\",\"published\":\"yes\"}', 2, '2017-07-31 01:25:21', 1);
INSERT INTO `fuel_archives` VALUES (6, 3, 'fuel_categories', '{\"id\":3,\"name\":\"Tin t\\u1ee9c\",\"slug\":\"tin-tc\",\"description\":\"c&aacute;c b&agrave;i vi\\u1ebft li&ecirc;n quan t\\u1edbi tin t\\u1ee9c\",\"context\":\"\",\"language\":\"english\",\"precedence\":\"\",\"parent_id\":\"\",\"published\":\"yes\"}', 1, '2017-07-31 01:25:46', 1);
INSERT INTO `fuel_archives` VALUES (7, 1, 'fuel_tags', '{\"id\":1,\"name\":\"tin n&oacute;ng\",\"category_id\":\"\",\"slug\":\"tin-nng\",\"description\":\"\",\"context\":\"\",\"language\":\"english\",\"precedence\":\"\",\"published\":\"yes\"}', 1, '2017-07-31 01:26:12', 1);
INSERT INTO `fuel_archives` VALUES (8, 1, 'fuel_blog_posts', '{\"id\":\"1\",\"title\":\"Blog \\u0111\\u1ea7u ti&ecirc;n\",\"language\":\"english\",\"content\":\"\\u0111&acirc;y l&agrave; b&agrave;i vi\\u1ebft blog \\u0111\\u1ea7u ti&ecirc;n\",\"formatting\":\"auto_typography\",\"excerpt\":\"ng\\u1eafn g\\u1ecdn th&ocirc;i, \\u0111&acirc;y l&agrave; b&agrave;i vi\\u1ebft \\u0111\\u1ea7u ti&ecirc;n\",\"slug\":\"blog-u-tin\",\"author_id\":\"1\",\"main_image\":\"\",\"list_image\":\"\",\"thumbnail_image\":\"\",\"sticky\":\"yes\",\"publish_date\":\"1970-01-01 08:00:00\",\"page_title\":\"\",\"meta_description\":\"\",\"meta_keywords\":\"\",\"canonical\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"category_id\":\"3\",\"date_added\":\"2017-07-31 01:23:34\",\"last_modified\":\"2017-07-31 01:26:26\",\"published\":\"yes\"}', 2, '2017-07-31 01:26:26', 1);
INSERT INTO `fuel_archives` VALUES (9, 2, 'fuel_blog_posts', '{\"id\":2,\"title\":\"b&agrave;i vi\\u1ebft ti\\u1ebfp theo\",\"language\":\"english\",\"content\":\"b&agrave;i vi\\u1ebft th\\u1ee9 2 trong danh s&aacute;ch blog\",\"formatting\":\"auto_typography\",\"excerpt\":\"\",\"slug\":\"bi-vit-tip-theo\",\"author_id\":\"1\",\"main_image\":\"\",\"list_image\":\"\",\"thumbnail_image\":\"\",\"sticky\":\"no\",\"publish_date\":\"1970-01-01 08:00:00\",\"page_title\":\"\",\"meta_description\":\"\",\"meta_keywords\":\"\",\"canonical\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"category_id\":\"3\",\"date_added\":\"2017-07-31 01:28:25\",\"last_modified\":\"2017-07-31 01:28:25\",\"published\":\"yes\"}', 1, '2017-07-31 01:28:25', 1);

-- ----------------------------
-- Table structure for fuel_blocks
-- ----------------------------
DROP TABLE IF EXISTS `fuel_blocks`;
CREATE TABLE `fuel_blocks`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `view` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `date_added` datetime(0) DEFAULT NULL,
  `last_modified` timestamp(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`, `language`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fuel_blog_comments
-- ----------------------------
DROP TABLE IF EXISTS `fuel_blog_comments`;
CREATE TABLE `fuel_blog_comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_spam` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `date_added` datetime(0) NOT NULL,
  `last_modified` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fuel_blog_links
-- ----------------------------
DROP TABLE IF EXISTS `fuel_blog_links`;
CREATE TABLE `fuel_blog_links`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `target` enum('blank','self','parent') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'blank',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `precedence` int(11) NOT NULL DEFAULT 0,
  `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fuel_blog_posts
-- ----------------------------
DROP TABLE IF EXISTS `fuel_blog_posts`;
CREATE TABLE `fuel_blog_posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_filtered` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `formatting` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'A condensed version of the content',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'This is the last part of the url string. If left blank, the slug will automatically be created for you.',
  `author_id` int(10) UNSIGNED NOT NULL COMMENT 'If left blank, you will assumed be the author.',
  `main_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumbnail_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sticky` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `allow_comments` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'no',
  `publish_date` datetime(0) NOT NULL,
  `page_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `canonical` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category_id` int(10) UNSIGNED NOT NULL,
  `date_added` datetime(0) DEFAULT NULL,
  `last_modified` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `published` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permalink`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_blog_posts
-- ----------------------------
INSERT INTO `fuel_blog_posts` VALUES (1, 'Blog đầu ti&ecirc;n', 'english', 'đ&acirc;y l&agrave; b&agrave;i viết blog đầu ti&ecirc;n', 'đ&acirc;y l&agrave; b&agrave;i viết blog đầu ti&ecirc;n', 'auto_typography', 'ngắn gọn th&ocirc;i, đ&acirc;y l&agrave; b&agrave;i viết đầu ti&ecirc;n', 'blog-u-tin', 1, '', '', '', 'yes', 'no', '1970-01-01 08:00:00', '', '', '', '', '', '', '', 3, '2017-07-31 01:23:34', '2017-07-31 01:27:19', 'yes');
INSERT INTO `fuel_blog_posts` VALUES (2, 'b&agrave;i viết tiếp theo', 'english', 'b&agrave;i viết thứ 2 trong danh s&aacute;ch blog', 'b&agrave;i viết thứ 2 trong danh s&aacute;ch blog', 'auto_typography', '', 'bi-vit-tip-theo', 1, '', '', '', 'no', 'no', '1970-01-01 08:00:00', '', '', '', '', '', '', '', 3, '2017-07-31 01:28:25', '2017-07-31 01:28:42', 'yes');

-- ----------------------------
-- Table structure for fuel_blog_users
-- ----------------------------
DROP TABLE IF EXISTS `fuel_blog_users`;
CREATE TABLE `fuel_blog_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fuel_user_id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `about` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `social_media_links` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_added` datetime(0) DEFAULT NULL,
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_blog_users
-- ----------------------------
INSERT INTO `fuel_blog_users` VALUES (1, 1, 'admin', '', '', '', '', '2017-07-31 01:23:34', '');

-- ----------------------------
-- Table structure for fuel_categories
-- ----------------------------
DROP TABLE IF EXISTS `fuel_categories`;
CREATE TABLE `fuel_categories`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'english',
  `precedence` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `slug`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_categories
-- ----------------------------
INSERT INTO `fuel_categories` VALUES (1, 'H&igrave;nh ảnh', 'hnh-nh', 'Nội dung li&ecirc;n quan tới h&igrave;nh ảnh', '', 'english', 0, 0, 'yes');
INSERT INTO `fuel_categories` VALUES (2, 'Tr&ograve; chơi', 'tr-chi', 'C&aacute;c nội dung li&ecirc;n quan tới tr&ograve; chơi', '', 'english', 0, 0, 'yes');
INSERT INTO `fuel_categories` VALUES (3, 'Tin tức', 'tin-tc', 'c&aacute;c b&agrave;i viết li&ecirc;n quan tới tin tức', '', 'english', 0, 0, 'yes');

-- ----------------------------
-- Table structure for fuel_logs
-- ----------------------------
DROP TABLE IF EXISTS `fuel_logs`;
CREATE TABLE `fuel_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `entry_date` datetime(0) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_logs
-- ----------------------------
INSERT INTO `fuel_logs` VALUES (1, '2017-07-31 00:45:41', 1, 'Successful login by \'admin\' from 127.0.0.1', 'debug');
INSERT INTO `fuel_logs` VALUES (2, '2017-07-31 00:46:42', 1, 'Password reset from CMS for \'congnt\' from 127.0.0.1', 'debug');
INSERT INTO `fuel_logs` VALUES (3, '2017-07-31 00:46:44', 1, 'Unable to send email using PHP mail(). Your server might not be configured to send mail using this method.<br /><pre>Date: Mon, 31 Jul 2017 00:46:42 +0700\nFrom: &quot;My Website&quot; &lt;admin@fuelcms.vn&gt;\nReturn-Path: &lt;admin@fuelcms.vn&gt;\nReply-To: &lt;admin@fuelcms.vn&gt;\nUser-Agent: CodeIgniter\nX-Sender: admin@fuelcms.vn\nX-Mailer: CodeIgniter\nX-Priority: 3 (Normal)\nMessage-ID: &lt;597e1b82ee223@fuelcms.vn&gt;\nMime-Version: 1.0\nContent-Type: multipart/alternative; boundary=&quot;B_ALT_597e1b82ee255&quot;\n=?UTF-8?Q?Your=20FUEL=20CMS=20accoun?==?UTF-8?Q?t=20has=20be?= =?UTF-8?Q?en=20created?=\nThis is a multi-part message in MIME format.\nYour email application may not support this format.\n\n--B_ALT_597e1b82ee255\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: 8bit\n\nYour FUEL CMS account has been created with the user name of &quot;congnt&quot;. Click\nthe following link to set your FUEL password:\nhttp://fuelcms.vn/index.phpfuel/login/reset/4c9d405a8f09993050961bfe866d8a538a1b79eed02db4a6c2a032b71bd6a35e\n\n\n--B_ALT_597e1b82ee255\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: quoted-printable\n\nYour FUEL CMS account has been created with the user name of =22congnt=22. =\nClick the following link to set your FUEL password:=20\n=3Ca href=3D=22http://fuelcms.vn/index.phpfuel/login/reset/4c9d405a8f099930=\n50961bfe866d8a538a1b79eed02db4a6c2a032b71bd6a35e=22=3Ehttp://fuelcms.vn/ind=\nex.phpfuel/login/reset/4c9d405a8f09993050961bfe866d8a538a1b79eed02db4a6c2a0=\n32b71bd6a35e=3C/a=3E\n\n--B_ALT_597e1b82ee255--</pre>', 'debug');
INSERT INTO `fuel_logs` VALUES (4, '2017-07-31 00:46:44', 1, 'Users item <em>tiencongnguyen@outlook.com</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (5, '2017-07-31 01:02:42', 1, 'Password reset from CMS for \'admin\' from 127.0.0.1', 'debug');
INSERT INTO `fuel_logs` VALUES (6, '2017-07-31 01:04:03', 1, 'Pages item <em>home</em> created', 'info');
INSERT INTO `fuel_logs` VALUES (7, '2017-07-31 01:16:22', 1, 'Users item <em>ngtiencong@gmail.com</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (8, '2017-07-31 01:23:34', 1, 'Posts item <em>Blog đầu ti&ecirc;n</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (9, '2017-07-31 01:24:35', 1, 'Categories item <em>H&igrave;nh ảnh</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (10, '2017-07-31 01:25:15', 1, 'Categories item <em>Tr&ograve; chơi</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (11, '2017-07-31 01:25:21', 1, 'Categories item <em>Tr&ograve; chơi</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (12, '2017-07-31 01:25:46', 1, 'Categories item <em>Tin tức</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (13, '2017-07-31 01:26:12', 1, 'Tags item <em>tin n&oacute;ng</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (14, '2017-07-31 01:26:26', 1, 'Posts item <em>Blog đầu ti&ecirc;n</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (15, '2017-07-31 01:27:19', 1, 'Posts item <em>Blog đầu ti&ecirc;n</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (16, '2017-07-31 01:28:25', 1, 'Posts item <em>b&agrave;i viết tiếp theo</em> edited', 'info');
INSERT INTO `fuel_logs` VALUES (17, '2017-07-31 01:28:43', 1, 'Posts item <em>b&agrave;i viết tiếp theo</em> edited', 'info');

-- ----------------------------
-- Table structure for fuel_navigation
-- ----------------------------
DROP TABLE IF EXISTS `fuel_navigation`;
CREATE TABLE `fuel_navigation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'The part of the path after the domain name that you want the link to go to (e.g. comany/about_us)',
  `group_id` int(5) UNSIGNED NOT NULL DEFAULT 1,
  `nav_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'The nav key is a friendly ID that you can use for setting the selected state. If left blank, a default value will be set for you.',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name you want to appear in the menu',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Used for creating menu hierarchies. No value means it is a root level menu item',
  `precedence` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The higher the number, the greater the precedence and farther up the list the navigational element will appear',
  `attributes` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Extra attributes that can be used for navigation implementation',
  `selected` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'The pattern to match for the active state. Most likely you leave this field blank',
  `hidden` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'A hidden value can be used in rendering the menu. In some areas, the menu item may not want to be displayed',
  `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Determines whether the item is displayed or not',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `group_id_nav_key_language`(`group_id`, `nav_key`, `language`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fuel_navigation_groups
-- ----------------------------
DROP TABLE IF EXISTS `fuel_navigation_groups`;
CREATE TABLE `fuel_navigation_groups`  (
  `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_navigation_groups
-- ----------------------------
INSERT INTO `fuel_navigation_groups` VALUES (1, 'main', 'yes');

-- ----------------------------
-- Table structure for fuel_page_variables
-- ----------------------------
DROP TABLE IF EXISTS `fuel_page_variables`;
CREATE TABLE `fuel_page_variables`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('string','int','boolean','array') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'string',
  `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `page_id`(`page_id`, `name`, `language`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_page_variables
-- ----------------------------
INSERT INTO `fuel_page_variables` VALUES (1, 1, 'page_title', '', 'Create a new page', 'string', 'english', 'yes');
INSERT INTO `fuel_page_variables` VALUES (2, 1, 'meta_description', '', 'new page, create new page', 'string', 'english', 'yes');
INSERT INTO `fuel_page_variables` VALUES (3, 1, 'meta_keywords', '', 'page, new page', 'string', 'english', 'yes');
INSERT INTO `fuel_page_variables` VALUES (4, 1, 'heading', '', 'Đ&acirc;y l&agrave; trang mới', 'string', 'english', 'yes');
INSERT INTO `fuel_page_variables` VALUES (5, 1, 'body', '', 'Nội dung trang mới', 'string', 'english', 'yes');
INSERT INTO `fuel_page_variables` VALUES (6, 1, 'body_class', '', '', 'string', 'english', 'yes');

-- ----------------------------
-- Table structure for fuel_pages
-- ----------------------------
DROP TABLE IF EXISTS `fuel_pages`;
CREATE TABLE `fuel_pages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Add the part of the url after the root of your site (usually after the domain name). For the homepage, just put the word \'home\'',
  `layout` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name of the template to associate with this page',
  `published` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'A \'yes\' value will display the page and an \'no\' value will give a 404 error message',
  `cache` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Cache controls whether the page will pull from the database or from a saved file which is more effeicent. If a page has content that is dynamic, it\'s best to set cache to \'no\'',
  `date_added` datetime(0) DEFAULT NULL,
  `last_modified` timestamp(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `last_modified_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `location`(`location`) USING BTREE,
  INDEX `layout`(`layout`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_pages
-- ----------------------------
INSERT INTO `fuel_pages` VALUES (1, 'home', 'main', 'yes', 'yes', '2017-07-31 01:04:03', '2017-07-31 01:04:03', 1);

-- ----------------------------
-- Table structure for fuel_permissions
-- ----------------------------
DROP TABLE IF EXISTS `fuel_permissions`;
CREATE TABLE `fuel_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_permissions
-- ----------------------------
INSERT INTO `fuel_permissions` VALUES (1, 'Pages', 'pages', 'yes');
INSERT INTO `fuel_permissions` VALUES (2, 'Pages: Create', 'pages/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (3, 'Pages: Edit', 'pages/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (4, 'Pages: Publish', 'pages/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (5, 'Pages: Delete', 'pages/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (6, 'Blocks', 'blocks', 'yes');
INSERT INTO `fuel_permissions` VALUES (7, 'Blocks: Create', 'blocks/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (8, 'Blocks: Edit', 'blocks/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (9, 'Blocks: Publish', 'blocks/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (10, 'Blocks: Delete', 'blocks/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (11, 'Navigation', 'navigation', 'yes');
INSERT INTO `fuel_permissions` VALUES (12, 'Navigation: Create', 'navigation/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (13, 'Navigation: Edit', 'navigation/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (14, 'Navigation: Publish', 'navigation/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (15, 'Navigation: Delete', 'navigation/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (16, 'Categories', 'categories', 'yes');
INSERT INTO `fuel_permissions` VALUES (17, 'Categories: Create', 'categories/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (18, 'Categories: Edit', 'categories/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (19, 'Categories: Publish', 'categories/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (20, 'Categories: Delete', 'categories/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (21, 'Tags', 'tags', 'yes');
INSERT INTO `fuel_permissions` VALUES (22, 'Tags: Create', 'tags/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (23, 'Tags: Edit', 'tags/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (24, 'Tags: Publish', 'tags/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (25, 'Tags: Delete', 'tags/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (26, 'Site Variables', 'sitevariables', 'yes');
INSERT INTO `fuel_permissions` VALUES (27, 'Assets', 'assets', 'yes');
INSERT INTO `fuel_permissions` VALUES (28, 'Site Documentation', 'site_docs', 'yes');
INSERT INTO `fuel_permissions` VALUES (29, 'Users', 'users', 'yes');
INSERT INTO `fuel_permissions` VALUES (30, 'Permissions', 'permissions', 'yes');
INSERT INTO `fuel_permissions` VALUES (31, 'Manage', 'manage', 'yes');
INSERT INTO `fuel_permissions` VALUES (32, 'Cache', 'manage/cache', 'yes');
INSERT INTO `fuel_permissions` VALUES (33, 'Logs', 'logs', 'yes');
INSERT INTO `fuel_permissions` VALUES (34, 'Settings', 'settings', 'yes');
INSERT INTO `fuel_permissions` VALUES (35, 'Generate Code', 'generate', 'yes');
INSERT INTO `fuel_permissions` VALUES (36, 'Blog Categories', 'blog_categories', 'yes');
INSERT INTO `fuel_permissions` VALUES (37, 'Blog Categories: Create', 'blog_categories/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (38, 'Blog Categories: Delete', 'blog_categories/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (39, 'Blog Categories: Edit', 'blog_categories/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (40, 'Blog Categories: Publish', 'blog_categories/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (41, 'Blog Comments', 'blog_comments', 'yes');
INSERT INTO `fuel_permissions` VALUES (42, 'Blog Comments: Create', 'blog_comments/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (43, 'Blog Comments: Delete', 'blog_comments/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (44, 'Blog Comments: Edit', 'blog_comments/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (45, 'Blog Comments: Publish', 'blog_comments/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (46, 'Blog Links', 'blog_links', 'yes');
INSERT INTO `fuel_permissions` VALUES (47, 'Blog Links: Create', 'blog_links/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (48, 'Blog Links: Delete', 'blog_links/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (49, 'Blog Links: Edit', 'blog_links/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (50, 'Blog Links: Publish', 'blog_links/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (51, 'Blog Posts', 'blog_posts', 'yes');
INSERT INTO `fuel_permissions` VALUES (52, 'Blog Posts: Create', 'blog_posts/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (53, 'Blog Posts: Delete', 'blog_posts/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (54, 'Blog Posts: Edit', 'blog_posts/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (55, 'Blog Posts: Publish', 'blog_posts/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (56, 'Blog Users', 'blog_users', 'yes');
INSERT INTO `fuel_permissions` VALUES (57, 'Blog Users: Create', 'blog_users/create', 'yes');
INSERT INTO `fuel_permissions` VALUES (58, 'Blog Users: Delete', 'blog_users/delete', 'yes');
INSERT INTO `fuel_permissions` VALUES (59, 'Blog Users: Edit', 'blog_users/edit', 'yes');
INSERT INTO `fuel_permissions` VALUES (60, 'Blog Users: Publish', 'blog_users/publish', 'yes');
INSERT INTO `fuel_permissions` VALUES (61, 'Blog Settings', 'blog/settings', 'yes');

-- ----------------------------
-- Table structure for fuel_relationships
-- ----------------------------
DROP TABLE IF EXISTS `fuel_relationships`;
CREATE TABLE `fuel_relationships`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `candidate_table` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `candidate_key` int(11) NOT NULL,
  `foreign_table` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_key`(`candidate_table`, `candidate_key`, `foreign_table`, `foreign_key`) USING BTREE,
  INDEX `candidate_table`(`candidate_table`, `candidate_key`) USING BTREE,
  INDEX `foreign_table`(`foreign_table`, `foreign_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_relationships
-- ----------------------------
INSERT INTO `fuel_relationships` VALUES (37, 'fuel_blog_posts', 1, 'fuel_tags', 1);
INSERT INTO `fuel_relationships` VALUES (39, 'fuel_blog_posts', 2, 'fuel_blog_posts', 1);
INSERT INTO `fuel_relationships` VALUES (38, 'fuel_blog_posts', 2, 'fuel_tags', 1);
INSERT INTO `fuel_relationships` VALUES (21, 'fuel_users', 2, 'fuel_permissions', 1);
INSERT INTO `fuel_relationships` VALUES (22, 'fuel_users', 2, 'fuel_permissions', 2);
INSERT INTO `fuel_relationships` VALUES (24, 'fuel_users', 2, 'fuel_permissions', 3);
INSERT INTO `fuel_relationships` VALUES (25, 'fuel_users', 2, 'fuel_permissions', 4);
INSERT INTO `fuel_relationships` VALUES (23, 'fuel_users', 2, 'fuel_permissions', 5);
INSERT INTO `fuel_relationships` VALUES (2, 'fuel_users', 2, 'fuel_permissions', 6);
INSERT INTO `fuel_relationships` VALUES (3, 'fuel_users', 2, 'fuel_permissions', 7);
INSERT INTO `fuel_relationships` VALUES (5, 'fuel_users', 2, 'fuel_permissions', 8);
INSERT INTO `fuel_relationships` VALUES (6, 'fuel_users', 2, 'fuel_permissions', 9);
INSERT INTO `fuel_relationships` VALUES (4, 'fuel_users', 2, 'fuel_permissions', 10);
INSERT INTO `fuel_relationships` VALUES (16, 'fuel_users', 2, 'fuel_permissions', 11);
INSERT INTO `fuel_relationships` VALUES (17, 'fuel_users', 2, 'fuel_permissions', 12);
INSERT INTO `fuel_relationships` VALUES (19, 'fuel_users', 2, 'fuel_permissions', 13);
INSERT INTO `fuel_relationships` VALUES (20, 'fuel_users', 2, 'fuel_permissions', 14);
INSERT INTO `fuel_relationships` VALUES (18, 'fuel_users', 2, 'fuel_permissions', 15);
INSERT INTO `fuel_relationships` VALUES (7, 'fuel_users', 2, 'fuel_permissions', 16);
INSERT INTO `fuel_relationships` VALUES (8, 'fuel_users', 2, 'fuel_permissions', 17);
INSERT INTO `fuel_relationships` VALUES (10, 'fuel_users', 2, 'fuel_permissions', 18);
INSERT INTO `fuel_relationships` VALUES (11, 'fuel_users', 2, 'fuel_permissions', 19);
INSERT INTO `fuel_relationships` VALUES (9, 'fuel_users', 2, 'fuel_permissions', 20);
INSERT INTO `fuel_relationships` VALUES (30, 'fuel_users', 2, 'fuel_permissions', 21);
INSERT INTO `fuel_relationships` VALUES (31, 'fuel_users', 2, 'fuel_permissions', 22);
INSERT INTO `fuel_relationships` VALUES (33, 'fuel_users', 2, 'fuel_permissions', 23);
INSERT INTO `fuel_relationships` VALUES (34, 'fuel_users', 2, 'fuel_permissions', 24);
INSERT INTO `fuel_relationships` VALUES (32, 'fuel_users', 2, 'fuel_permissions', 25);
INSERT INTO `fuel_relationships` VALUES (29, 'fuel_users', 2, 'fuel_permissions', 26);
INSERT INTO `fuel_relationships` VALUES (1, 'fuel_users', 2, 'fuel_permissions', 27);
INSERT INTO `fuel_relationships` VALUES (28, 'fuel_users', 2, 'fuel_permissions', 28);
INSERT INTO `fuel_relationships` VALUES (35, 'fuel_users', 2, 'fuel_permissions', 29);
INSERT INTO `fuel_relationships` VALUES (26, 'fuel_users', 2, 'fuel_permissions', 30);
INSERT INTO `fuel_relationships` VALUES (14, 'fuel_users', 2, 'fuel_permissions', 31);
INSERT INTO `fuel_relationships` VALUES (15, 'fuel_users', 2, 'fuel_permissions', 32);
INSERT INTO `fuel_relationships` VALUES (13, 'fuel_users', 2, 'fuel_permissions', 33);
INSERT INTO `fuel_relationships` VALUES (27, 'fuel_users', 2, 'fuel_permissions', 34);
INSERT INTO `fuel_relationships` VALUES (12, 'fuel_users', 2, 'fuel_permissions', 35);

-- ----------------------------
-- Table structure for fuel_settings
-- ----------------------------
DROP TABLE IF EXISTS `fuel_settings`;
CREATE TABLE `fuel_settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `module`(`module`, `key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fuel_site_variables
-- ----------------------------
DROP TABLE IF EXISTS `fuel_site_variables`;
CREATE TABLE `fuel_site_variables`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'leave blank if you want the variable to be available to all pages',
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fuel_tags
-- ----------------------------
DROP TABLE IF EXISTS `fuel_tags`;
CREATE TABLE `fuel_tags`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `precedence` int(11) NOT NULL,
  `published` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `slug`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_tags
-- ----------------------------
INSERT INTO `fuel_tags` VALUES (1, 'tin n&oacute;ng', 0, 'tin-nng', '', '', 'english', 0, 'yes');

-- ----------------------------
-- Table structure for fuel_users
-- ----------------------------
DROP TABLE IF EXISTS `fuel_users`;
CREATE TABLE `fuel_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reset_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `super_admin` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuel_users
-- ----------------------------
INSERT INTO `fuel_users` VALUES (1, 'admin', '300cb647bcd9a2e8dd8e32816dbae0ebee53a5d6', 'ngtiencong@gmail.com', 'Nguyễn', 'Admin', 'english', '', '4cd54eb34a204b71e86df9e12d5b2709', 'yes', 'yes');
INSERT INTO `fuel_users` VALUES (2, 'congnt', '25c6dbf75696de341dad4a4d90144fe6bcae2a4f', 'tiencongnguyen@outlook.com', 'Nguyễn', 'Tiến C&ocirc;ng', '', '4c9d405a8f09993050961bfe866d8a538a1b79eed02db4a6c2a032b71bd6a35e', 'a8e2143b67c417e51a2a3967b9f0b08b', 'no', 'yes');

SET FOREIGN_KEY_CHECKS = 1;
