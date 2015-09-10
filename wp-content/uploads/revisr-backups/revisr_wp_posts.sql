
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2015-09-05 19:55:49','2015-09-05 19:55:49','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2015-09-05 19:55:49','2015-09-05 19:55:49','',0,'http://52.5.79.162/?p=1',0,'post','',1),(2,1,'2015-09-05 19:55:49','2015-09-05 19:55:49','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://52.5.79.162/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2015-09-05 19:55:49','2015-09-05 19:55:49','',0,'http://52.5.79.162/?page_id=2',0,'page','',0),(3,1,'2015-09-05 19:55:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2015-09-05 19:55:55','0000-00-00 00:00:00','',0,'http://52.5.79.162/?p=3',0,'post','',0),(4,1,'2015-09-05 20:07:49','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2015-09-05 20:07:49','0000-00-00 00:00:00','',0,'http://52.5.79.162/?post_type=revisr_commits&p=4',0,'revisr_commits','',0),(5,1,'2015-09-05 20:23:49','2015-09-05 20:23:49','','Backed up the database with Revisr.','','publish','closed','closed','','backed-up-the-database-with-revisr','','','2015-09-05 20:23:49','2015-09-05 20:23:49','',0,'http://52.5.79.162/index.php/revisr_commits/backed-up-the-database-with-revisr/',0,'revisr_commits','',0),(6,1,'2015-09-05 13:38:13','2015-09-05 20:38:13','','Backed up the database with Revisr.','','publish','closed','closed','','backed-up-the-database-with-revisr-2','','','2015-09-05 13:38:13','2015-09-05 20:38:13','',0,'http://52.5.79.162/index.php/revisr_commits/backed-up-the-database-with-revisr-2/',0,'revisr_commits','',0),(7,1,'2015-09-05 13:42:33','2015-09-05 20:42:33','','add backups','','publish','closed','closed','','add-backups','','','2015-09-05 13:42:33','2015-09-05 20:42:33','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=7',0,'revisr_commits','',0),(8,1,'2015-09-05 13:46:46','2015-09-05 20:46:46','','add backups','','publish','closed','closed','','add-backups-2','','','2015-09-05 13:46:46','2015-09-05 20:46:46','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=8',0,'revisr_commits','',0),(9,1,'2015-09-05 13:47:28','2015-09-05 20:47:28','','add previously ignored files','','publish','closed','closed','','add-previously-ignored-files','','','2015-09-05 13:47:28','2015-09-05 20:47:28','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=9',0,'revisr_commits','',0),(10,1,'2015-09-05 16:01:37','2015-09-05 23:01:37','','add responsive theme and plugins','','publish','closed','closed','','add-responsive-theme-and-plugins','','','2015-09-05 16:01:37','2015-09-05 23:01:37','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=10',0,'revisr_commits','',0),(11,1,'2015-09-08 12:02:10','2015-09-08 19:02:10','','add additional Responsive Theme plugin','','publish','closed','closed','','add-additional-responsive-theme-plugin','','','2015-09-08 12:02:10','2015-09-08 19:02:10','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=11',0,'revisr_commits','',0),(12,1,'2015-09-08 12:02:41','2015-09-08 19:02:41','','add Flat Responsive theme','','publish','closed','closed','','add-flat-responsive-theme','','','2015-09-08 12:02:41','2015-09-08 19:02:41','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=12',0,'revisr_commits','',0),(13,1,'2015-09-08 12:04:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2015-09-08 12:04:42','0000-00-00 00:00:00','',0,'http://52.5.79.162/?post_type=revisr_commits&p=13',0,'revisr_commits','',0),(15,1,'2015-09-08 13:08:33','2015-09-08 20:08:33','','add reco plugins for flat responsive theme','','publish','closed','closed','','add-reco-plugins-for-flat-responsive-theme','','','2015-09-08 13:08:33','2015-09-08 20:08:33','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=15',0,'revisr_commits','',0),(16,1,'2015-09-09 21:58:28','2015-09-10 04:58:28','','plugin cleanup','','publish','closed','closed','','plugin-cleanup','','','2015-09-09 21:58:28','2015-09-10 04:58:28','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=16',0,'revisr_commits','',0),(17,1,'2015-09-09 21:59:51','2015-09-10 04:59:51','','more plugin cleanup','','publish','closed','closed','','more-plugin-cleanup','','','2015-09-09 21:59:51','2015-09-10 04:59:51','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=17',0,'revisr_commits','',0),(18,1,'2015-09-09 22:00:36','2015-09-10 05:00:36','','add debug bar','','publish','closed','closed','','add-debug-bar','','','2015-09-09 22:00:36','2015-09-10 05:00:36','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=18',0,'revisr_commits','',0),(19,1,'2015-09-09 22:00:58','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2015-09-09 22:00:58','0000-00-00 00:00:00','',0,'http://52.5.79.162/?post_type=revisr_commits&p=19',0,'revisr_commits','',0),(20,1,'2015-09-09 22:01:23','2015-09-10 05:01:23','','Backed up the database with Revisr.','','publish','closed','closed','','backed-up-the-database-with-revisr-3','','','2015-09-09 22:01:23','2015-09-10 05:01:23','',0,'http://52.5.79.162/index.php/revisr_commits/backed-up-the-database-with-revisr-3/',0,'revisr_commits','',0),(21,1,'2015-09-09 22:07:30','2015-09-10 05:07:30','','theme cleanup','','publish','closed','closed','','theme-cleanup','','','2015-09-09 22:07:30','2015-09-10 05:07:30','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=21',0,'revisr_commits','',0),(22,1,'2015-09-09 22:09:41','2015-09-10 05:09:41','','add reco plugins for Responsive theme','','publish','closed','closed','','add-reco-plugins-for-responsive-theme','','','2015-09-09 22:09:41','2015-09-10 05:09:41','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=22',0,'revisr_commits','',0),(23,1,'2015-09-09 22:12:35','2015-09-10 05:12:35','','Auto Draft','','trash','closed','closed','','auto-draft','','','2015-09-09 22:12:56','2015-09-10 05:12:56','',0,'http://52.5.79.162/?post_type=if_slider&#038;p=23',0,'if_slider','',0),(24,1,'2015-09-09 22:17:15','2015-09-10 05:17:15','<p>Learn how WordPress can be SAVED by you (the Ninja) and how to not join the Darkside.</p>','Becoming a WordPress Ninja','','publish','closed','closed','','becoming-a-wordpress-ninja','','','2015-09-09 22:54:56','2015-09-10 05:54:56','',0,'http://52.5.79.162/?post_type=presentations&#038;p=24',0,'presentations','',0),(25,1,'2015-09-09 22:17:15','2015-09-10 05:17:15','<p>Learn how WordPress can be SAVED by you (the Ninja) and how to not join the Darkside.</p>','Becoming a WordPress Ninja','','inherit','closed','closed','','24-revision-v1','','','2015-09-09 22:17:15','2015-09-10 05:17:15','',24,'http://52.5.79.162/index.php/2015/09/09/24-revision-v1/',0,'revision','',0),(26,1,'2015-09-09 22:18:37','2015-09-10 05:18:37','<h2 style=\"text-align: center\">The Tao of WordPress</h2>\n<ul>\n<li><a href=\"https://codex.wordpress.org/WordPress_Coding_Standards/\" target=\"_blank\">Where code goes and how it\'s formatted</a></li>\n<li>Proper <code><a href=\"https://codex.wordpress.org/Writing_a_Plugin/\" target=\"_blank\">plugin</a></code> and <code><a href=\"https://codex.wordpress.org/Theme_Development/\" target=\"_blank\">theme</a></code> development</li>\n<li>Public distribution of <code><a href=\"https://wordpress.org/plugins/about/\" target=\"_blank\">plugins</a></code> &amp; <code><a href=\"https://wordpress.org/themes/getting-started/\" target=\"_blank\">themes</a></code></li>\n<li><a href=\"https://codex.wordpress.org/Configuring_Automatic_Background_Updates/\" target=\"_blank\">Maintaining WordPress</a></li>\n</ul>','The Tao of WordPressWhere code goes and how it\'s formattedProper plugin and theme developmentPublic distribution of plugins &amp; themesMaintaining WordPress','','trash','closed','closed','','section-h3a-double-edged-swordh3-div-ul-lilinux-apache-amp-mysqlmaria-phpli-lithemespluginsli-liextensiblelt','','','2015-09-09 22:28:23','2015-09-10 05:28:23','',0,'http://52.5.79.162/index.php/slide/section-h3a-double-edged-swordh3-div-ul-lilinux-apache-amp-mysqlmaria-phpli-lithemespluginsli-liextensiblelt/',0,'slide','',0),(27,1,'2015-09-09 22:20:28','2015-09-10 05:20:28','<h2>A Double Edged Sword</h2>\n<div>\n<ul>\n<li>Linux Apache &amp; MySQL/Maria PHP</li>\n<li>Themes/Plugins</li>\n<li>Extensible</li>\n<li>Admin UI &amp; Ease of Use</li>\n<li>SEO and Content in Realtime</li>\n</ul>\n</div>','A Double Edged Sword\n\n\nLinux Apache &amp; MySQL/Maria PHP\nThemes/Plugins\nExtensible\nAdmin UI &amp; Ease of Use\nSEO and Content in Realtime','','publish','closed','closed','','a-double-edged-swordlinux-apache-mysqlmaria-phpthemespluginsextensibleadmin-ui-ease-of-useseo-and-content-in-realtime','','','2015-09-09 22:20:28','2015-09-10 05:20:28','',0,'http://52.5.79.162/index.php/slide/a-double-edged-swordlinux-apache-mysqlmaria-phpthemespluginsextensibleadmin-ui-ease-of-useseo-and-content-in-realtime/',0,'slide','',0),(28,1,'2015-09-09 22:21:45','2015-09-10 05:21:45','<h2>The Tao of WordPress</h2>\n<ul>\n<li><a href=\"https://codex.wordpress.org/WordPress_Coding_Standards/\" target=\"_blank\">Where code goes and how it\'s formatted</a></li>\n<li>Proper <code><a href=\"https://codex.wordpress.org/Writing_a_Plugin/\" target=\"_blank\">plugin</a></code> and <code><a href=\"https://codex.wordpress.org/Theme_Development/\" target=\"_blank\">theme</a></code> development</li>\n<li>Public distribution of <code><a href=\"https://wordpress.org/plugins/about/\" target=\"_blank\">plugins</a></code> &amp; <code><a href=\"https://wordpress.org/themes/getting-started/\" target=\"_blank\">themes</a></code></li>\n<li><a href=\"https://codex.wordpress.org/Configuring_Automatic_Background_Updates/\" target=\"_blank\">Maintaining WordPress</a></li>\n</ul>','The Tao of WordPressWhere code goes and how it\'s formattedProper plugin and theme developmentPublic distribution of plugins &amp; themesMaintaining WordPress','','publish','closed','closed','','the-tao-of-wordpresswhere-code-goes-and-how-its-formattedproper-plugin-and-theme-developmentpublic-distribution-of-plugins-themesmaintaining-wordpress','','','2015-09-09 22:22:54','2015-09-10 05:22:54','',0,'http://52.5.79.162/index.php/slide/the-tao-of-wordpresswhere-code-goes-and-how-its-formattedproper-plugin-and-theme-developmentpublic-distribution-of-plugins-themesmaintaining-wordpress/',0,'slide','',0),(29,1,'2015-09-09 22:27:04','2015-09-10 05:27:04','<h2>A Double Edged Sword</h2>\n<div>\n<ul>\n<li>Linux Apache &amp; MySQL/Maria PHP</li>\n<li>Themes/Plugins</li>\n<li>Extensible</li>\n<li>Admin UI &amp; Ease of Use</li>\n<li>SEO and Content in Realtime</li>\n</ul>\n</div>','A Double Edged SwordLinux Apache &amp; MySQL/Maria PHPThemes/PluginsExtensibleAdmin UI &amp; Ease of UseSEO and Content in Realtime','','publish','closed','closed','','a-double-edged-swordlinux-apache-mysqlmaria-phpthemespluginsextensibleadmin-ui-ease-of-useseo-and-content-in-realtime-2','','','2015-09-09 23:58:28','2015-09-10 06:58:28','',0,'http://52.5.79.162/index.php/slide/a-double-edged-swordlinux-apache-mysqlmaria-phpthemespluginsextensibleadmin-ui-ease-of-useseo-and-content-in-realtime-2/',0,'slide','',0),(30,1,'2015-09-09 22:27:56','2015-09-10 05:27:56','<h2 style=\"text-align: center\">The Tao of WordPress</h2>\n<ul>\n<li>\n<h4><a href=\"https://codex.wordpress.org/WordPress_Coding_Standards/\" target=\"_blank\">Where code goes and how it\'s formatted</a></h4>\n</li>\n<li>\n<h4>Proper <code><a href=\"https://codex.wordpress.org/Writing_a_Plugin/\" target=\"_blank\">plugin</a></code> and <code><a href=\"https://codex.wordpress.org/Theme_Development/\" target=\"_blank\">theme</a></code> development</h4>\n</li>\n<li>\n<h4>Public distribution of <code><a href=\"https://wordpress.org/plugins/about/\" target=\"_blank\">plugins</a></code> &amp; <code><a href=\"https://wordpress.org/themes/getting-started/\" target=\"_blank\">themes</a></code></h4>\n</li>\n<li>\n<h4><a href=\"https://codex.wordpress.org/Configuring_Automatic_Background_Updates/\" target=\"_blank\">Maintaining WordPress</a></h4>\n</li>\n</ul>','The Tao of WordPressWhere code goes and how it\'s formattedProper plugin and theme developmentPublic distribution of plugins &amp; themesMaintaining WordPress','','publish','closed','closed','','the-tao-of-wordpresswhere-code-goes-and-how-its-formattedproper-plugin-and-theme-developmentpublic-distribution-of-plugins-themesmaintaining-wordpress-2','','','2015-09-09 22:28:39','2015-09-10 05:28:39','',0,'http://52.5.79.162/index.php/slide/the-tao-of-wordpresswhere-code-goes-and-how-its-formattedproper-plugin-and-theme-developmentpublic-distribution-of-plugins-themesmaintaining-wordpress-2/',0,'slide','',0),(31,1,'2015-09-09 22:29:27','2015-09-10 05:29:27','<h2>Think Like a WP Ninja</h2>\n<ul>\n<li><i><strong>S</strong>elect</i> tools, not load up</li>\n<li><i><strong>A</strong>utomate</i>, simplify &amp; improve</li>\n<li><i><strong>V</strong>ersion</i> code &amp; database</li>\n<li><i><strong>E</strong>mpower</i>, not impede users &amp; developers</li>\n<li><i><strong>D</strong>efend</i> threats and follow the WP Tao</li>\n</ul>','Think Like a WP NinjaSelect tools, not load upAutomate, simplify &amp; improveVersion code &amp; databaseEmpower, not impede users &amp; developersDefend threats and follow the WP Tao','','publish','closed','closed','','think-like-a-wp-ninjaselect-tools-not-load-upautomate-simplify-improveversion-code-databaseempower-not-impede-users-developersdefend-threats-and-follow-the-wp-tao','','','2015-09-09 22:29:41','2015-09-10 05:29:41','',0,'http://52.5.79.162/index.php/slide/think-like-a-wp-ninjaselect-tools-not-load-upautomate-simplify-improveversion-code-databaseempower-not-impede-users-developersdefend-threats-and-follow-the-wp-tao/',0,'slide','',0),(32,1,'2015-09-09 22:31:05','2015-09-10 05:31:05','<div class=\"layout-split\">\n<div>\n<h1 class=\"large\">...but Wait!</h1>\n</div>\n<div>\n<h4>Does this mean <code>apache</code> or <code>www-data</code> need permission to write to more than just <code>/wp-content/uploads/</code>?</h4>\n</div>\n</div>','...but Wait!\n\n\nDoes this mean apache or www-data need permission to write to more than just /wp-content/uploads/?','','publish','closed','closed','','but-waitdoes-this-mean-apache-or-www-data-need-permission-to-write-to-more-than-just-wp-contentuploads','','','2015-09-09 22:31:05','2015-09-10 05:31:05','',0,'http://52.5.79.162/index.php/slide/but-waitdoes-this-mean-apache-or-www-data-need-permission-to-write-to-more-than-just-wp-contentuploads/',0,'slide','',0),(33,1,'2015-09-09 22:31:46','2015-09-10 05:31:46','<div class=\"layout-split\">\n<div>\n<h1 class=\"large\">Yes!</h1>\n</div>\n<ul>\n<li>The Tao of WordPress is to allow this kind of self-service</li>\n<li>WP provides <a href=\"http://codex.wordpress.org/Hardening_WordPress\" target=\"_blank\">simple documentation on how to harden security</a></li>\n<li>WP &amp; others recommend <a href=\"http://www.wpbeginner.com/wp-tutorials/how-to-disable-php-execution-in-certain-wordpress-directories/\" target=\"_blank\">disabling php execution</a> in <code>/wp-content/uploads</code></li>\n</ul>\n</div>','Yes!\n\n\nThe Tao of WordPress is to allow this kind of self-service\nWP provides simple documentation on how to harden security\nWP &amp; others recommend disabling php execution in /wp-content/uploads','','publish','closed','closed','','yesthe-tao-of-wordpress-is-to-allow-this-kind-of-self-servicewp-provides-simple-documentation-on-how-to-harden-securitywp-others-recommend-disabling-php-execution-in-wp-contentuploads','','','2015-09-09 22:31:46','2015-09-10 05:31:46','',0,'http://52.5.79.162/index.php/slide/yesthe-tao-of-wordpress-is-to-allow-this-kind-of-self-servicewp-provides-simple-documentation-on-how-to-harden-securitywp-others-recommend-disabling-php-execution-in-wp-contentuploads/',0,'slide','',0),(34,1,'2015-09-09 22:32:57','2015-09-10 05:32:57','<h2>How do I <i>Select</i> tools?</h2>\n<ul>\n<li><a title=\"Revisr\" href=\"https://wordpress.org/plugins/revisr/\" target=\"_blank\">Revisr</a> - <i>Version</i> &amp; <i>Empower</i></li>\n<li><a title=\"WP Editor\" href=\"https://wordpress.org/plugins/wp-editor/\" target=\"_blank\">WP Editor</a> &amp; <a title=\"TinyMCE Advanced\" href=\"https://wordpress.org/plugins/tinymce-advanced/\" target=\"_blank\">TinyMCE Advanced</a> - <i>Automate</i> &amp; <i>Empower</i></li>\n<li><a title=\"Pods - Custom Content Types and Fields\" href=\"https://wordpress.org/plugins/pods/\" target=\"_blank\">Pods</a> - <i>Automate</i> &amp; <i>Empower</i></li>\n<li><a title=\"REST Api\" href=\"https://wordpress.org/plugins/rest-api/\" target=\"_blank\">WordPress REST API</a> &amp; <a title=\"AngularJS for WordPress\" href=\"https://wordpress.org/plugins/angularjs-for-wp/\" target=\"_blank\">AngularJS for WordPress</a> - <i>Automate</i> &amp; <i>Empower</i></li>\n</ul>','How do I Select tools?\n\nRevisr - Version &amp; Empower\nWP Editor &amp; TinyMCE Advanced - Automate &amp; Empower\nPods - Automate &amp; Empower\nWordPress REST API &amp; AngularJS for WordPress - Automate &amp; Empower','','publish','closed','closed','','how-do-i-select-toolsrevisr-version-empowerwp-editor-tinymce-advanced-automate-empowerpods-automate-empowerwordpress-rest-api-angularjs-for-wordpress-automa','','','2015-09-09 22:32:57','2015-09-10 05:32:57','',0,'http://52.5.79.162/index.php/slide/how-do-i-select-toolsrevisr-version-empowerwp-editor-tinymce-advanced-automate-empowerpods-automate-empowerwordpress-rest-api-angularjs-for-wordpress-automa/',0,'slide','',0),(35,1,'2015-09-09 22:33:53','2015-09-10 05:33:53','<h2><i>Select</i> more tools?</h2>\n<ul>\n<li><a title=\"Bad Behavior\" href=\"https://wordpress.org/plugins/bad-behavior/\" target=\"_blank\">Bad Behavior</a> - <i>Automate</i>, <i>Defend</i> &amp; <i>Empower</i></li>\n<li><a title=\"Debug Bar\" href=\"https://wordpress.org/plugins/debug-bar/\" target=\"_blank\">Debug Bar</a> - <i>Defend</i> &amp; <i>Empower</i></li>\n<li><a title=\"Busted!\" href=\"https://wordpress.org/plugins/busted/\" target=\"_blank\">Busted!</a> - <i>Automate</i> &amp; <i>Empower</i></li>\n<li><a title=\"Remote Attachments\" href=\"https://github.com/jeremybradbury/wp-remote-attachments\" target=\"_blank\">Remote Attachments</a> - <i>Automate</i> &amp; <i>Empower</i></li>\n<li><a title=\"Manage Updates\" href=\"https://github.com/jeremybradbury/wp-manage-updates\" target=\"_blank\"><code>mu-plugins/manage-updates.php</code></a> - <i>Defend</i> &amp; <i>Automate</i></li>\n</ul>','Select more tools?Bad Behavior - Automate, Defend &amp; EmpowerDebug Bar - Defend &amp; EmpowerBusted! - Automate &amp; EmpowerRemote Attachments - Automate &amp; Empowermu-plugins/manage-updates - Defend &amp; Automate','','publish','closed','closed','','select-more-toolsbad-behavior-automate-defend-empowerdebug-bar-defend-empowerbusted-automate-empowerremote-attachments-automate-empowermu-pluginsmanage-update','','','2015-09-10 13:29:12','2015-09-10 20:29:12','',0,'http://52.5.79.162/index.php/slide/select-more-toolsbad-behavior-automate-defend-empowerdebug-bar-defend-empowerbusted-automate-empowerremote-attachments-automate-empowermu-pluginsmanage-update/',0,'slide','',0),(36,1,'2015-09-09 22:34:44','2015-09-10 05:34:44','<div class=\"layout-split\">\n<div>\n<h1 class=\"large\">..but Wait!</h1>\n</div>\n<div>\n<h4>Don\'t you have a demo around here somewhere?</h4>\n</div>\n</div>','..but Wait!\n\n\nDon\'t you have a demo around here somewhere?','','publish','closed','closed','','but-waitdont-you-have-a-demo-around-here-somewhere','','','2015-09-09 22:34:44','2015-09-10 05:34:44','',0,'http://52.5.79.162/index.php/slide/but-waitdont-you-have-a-demo-around-here-somewhere/',0,'slide','',0),(37,1,'2015-09-09 22:35:21','2015-09-10 05:35:21','<div class=\"layout-split\">\n<div>\n<h1 class=\"large\">Yes!</h1>\n</div>\n<ul>\n<li>Version everything, manage updates, quickly debug, reject bots, avoid image transfers and bust caches.</li>\n<li>Empower Devs and Users with powerful editing tools</li>\n<li>Simplify templates &amp; improve load times with angular.js</li>\n</ul>\n</div>','Yes!\n\n\nVersion everything, manage updates, quickly debug, reject bots, avoid image transfers and bust caches.\nEmpower Devs and Users with powerful editing tools\nSimplify templates &amp; improve load times with angular.js','','publish','closed','closed','','yesversion-everything-manage-updates-quickly-debug-reject-bots-avoid-image-transfers-and-bust-caches-empower-devs-and-users-with-powerful-editing-toolssimplify-templates-improve-load-t','','','2015-09-09 22:35:21','2015-09-10 05:35:21','',0,'http://52.5.79.162/index.php/slide/yesversion-everything-manage-updates-quickly-debug-reject-bots-avoid-image-transfers-and-bust-caches-empower-devs-and-users-with-powerful-editing-toolssimplify-templates-improve-load-t/',0,'slide','',0),(38,1,'2015-09-09 22:36:49','2015-09-10 05:36:49','<div class=\"layout-split\">\n<div>\n<h1 class=\"large\">...but Wait!</h1>\n</div>\n<div>\n<h4>Can I ask a question?</h4>\n</div>\n</div>','...but Wait!\n\n\nCan I ask a question?','','publish','closed','closed','','but-waitcan-i-ask-a-question','','','2015-09-09 22:36:49','2015-09-10 05:36:49','',0,'http://52.5.79.162/index.php/slide/but-waitcan-i-ask-a-question/',0,'slide','',0),(39,1,'2015-09-09 22:45:55','2015-09-10 05:45:55','<h2 style=\"text-align: center\">Additional Resources</h2>\n<ul>\n<li class=\"entry-title public \" style=\"text-align: left\"><a title=\"YeoPress\" href=\"https://github.com/wesleytodd/YeoPress\" target=\"_blank\">YeoPress</a></li>\n<li class=\"entry-title public \"><a title=\"Yoast SEO\" href=\"https://wordpress.org/plugins/wordpress-seo/\" target=\"_blank\">Yoast SEO</a></li>\n<li class=\"entry-title public \">\n<p class=\"entry-title public \"><a title=\"wp-ninja-kit\" href=\"https://github.com/jeremybradbury/wp-ninja-kit\" target=\"_blank\">jeremybradbury/wp-ninja-kit</a></p>\n</li>\n<li class=\"entry-title public \"><a title=\"Jeremy\'s Repos\" href=\"https://github.com/jeremybradbury?tab=repositories\" target=\"_blank\">github.com/jeremybradbury</a></li>\n</ul>','Additional ResourcesYeoPressYoast SEOjeremybradbury/wp-ninja-kit','','publish','closed','closed','','additional-resourcesyeopressyoast-seojeremybradburywp-ninja-kit','','','2015-09-10 13:27:57','2015-09-10 20:27:57','',0,'http://52.5.79.162/index.php/slide/additional-resourcesyeopressyoast-seojeremybradburywp-ninja-kit/',0,'slide','',0),(40,1,'2015-09-09 22:51:23','2015-09-10 05:51:23','','plugin cleanup','','publish','closed','closed','','plugin-cleanup-2','','','2015-09-09 22:51:23','2015-09-10 05:51:23','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=40',0,'revisr_commits','',0),(41,1,'2015-09-09 22:52:12','2015-09-10 05:52:12','','add WP Present','','publish','closed','closed','','add-wp-present','','','2015-09-09 22:52:12','2015-09-10 05:52:12','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=41',0,'revisr_commits','',0),(42,1,'2015-09-09 23:56:06','2015-09-10 06:56:06','','Backed up the database with Revisr.','','publish','closed','closed','','backed-up-the-database-with-revisr-4','','','2015-09-09 23:56:06','2015-09-10 06:56:06','',0,'http://52.5.79.162/revisr_commits/backed-up-the-database-with-revisr-4/',0,'revisr_commits','',0),(43,1,'2015-09-09 23:58:38','2015-09-10 06:58:38','','Backed up the database with Revisr.','','publish','closed','closed','','backed-up-the-database-with-revisr-5','','','2015-09-09 23:58:38','2015-09-10 06:58:38','',0,'http://52.5.79.162/revisr_commits/backed-up-the-database-with-revisr-5/',0,'revisr_commits','',0),(44,1,'2015-09-10 00:01:53','2015-09-10 07:01:53','<h2>Becoming a WordPress Ninja</h2>\n<h3>Learn how WordPress can be SAVED by you (the Ninja) and how to not join the Darkside.</h3>','Becoming a WordPress Ninja\nLearn how WordPress can be SAVED by you (the Ninja) and how to not join the Darkside.','','publish','closed','closed','','becoming-a-wordpress-ninjalearn-how-wordpress-can-be-saved-by-you-the-ninja-and-how-to-not-join-the-darkside','','','2015-09-10 00:01:53','2015-09-10 07:01:53','',0,'http://52.5.79.162/slide/becoming-a-wordpress-ninjalearn-how-wordpress-can-be-saved-by-you-the-ninja-and-how-to-not-join-the-darkside/',0,'slide','',0),(45,1,'2015-09-10 00:14:17','2015-09-10 07:14:17','<h2 style=\"text-align: center\">Additional Resources</h2>\n<ul>\n<li class=\"entry-title public \" style=\"text-align: left\"><a title=\"YeoPress\" href=\"https://github.com/wesleytodd/YeoPress\" target=\"_blank\">YeoPress</a></li>\n<li class=\"entry-title public \"><a title=\"Yoast SEO\" href=\"https://wordpress.org/plugins/wordpress-seo/\" target=\"_blank\">Yoast SEO</a></li>\n<li class=\"entry-title public \">\n<p class=\"entry-title public \"><a title=\"wp-ninja-kit\" href=\"https://github.com/jeremybradbury/wp-ninja-kit\" target=\"_blank\">jeremybradbury/wp-ninja-kit</a></p>\n</li>\n<li class=\"entry-title public \"><a title=\"Jeremy\'s Repos\" href=\"https://github.com/jeremybradbury?tab=repositories\" target=\"_blank\">github.com/jeremybradbury</a></li>\n</ul>','Additional ResourcesYeoPressYoast SEOjeremybradbury/wp-ninja-kit','','publish','closed','closed','','faqq-whats-the-darksidea-locking-down-file-permissions-and-disabling-ui-features-either-by-force-or-training-q-must-i-abandon-my-idea-no-i-love-my-coda-this-is-workflow-flexib','','','2015-09-10 13:27:57','2015-09-10 20:27:57','',0,'http://52.5.79.162/slide/faqq-whats-the-darksidea-locking-down-file-permissions-and-disabling-ui-features-either-by-force-or-training-q-must-i-abandon-my-idea-no-i-love-my-coda-this-is-workflow-flexib/',0,'slide','',0),(46,1,'2015-09-10 00:27:58','2015-09-10 07:27:58','','Backed up the database with Revisr.','','publish','closed','closed','','backed-up-the-database-with-revisr-6','','','2015-09-10 00:27:58','2015-09-10 07:27:58','',0,'http://52.5.79.162/revisr_commits/backed-up-the-database-with-revisr-6/',0,'revisr_commits','',0),(47,1,'2015-09-10 12:42:29','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2015-09-10 12:42:29','0000-00-00 00:00:00','',0,'http://52.5.79.162/?post_type=revisr_commits&p=47',0,'revisr_commits','',0),(48,1,'2015-09-10 13:25:16','2015-09-10 20:25:16','','add update manager','','publish','closed','closed','','add-update-manager','','','2015-09-10 13:25:16','2015-09-10 20:25:16','',0,'http://52.5.79.162/?post_type=revisr_commits&#038;p=48',0,'revisr_commits','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

