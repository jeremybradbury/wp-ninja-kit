
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
DROP TABLE IF EXISTS `wp_wpeditor_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpeditor_settings` (
  `key` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_wpeditor_settings` WRITE;
/*!40000 ALTER TABLE `wp_wpeditor_settings` DISABLE KEYS */;
INSERT INTO `wp_wpeditor_settings` VALUES ('admin_page_roles','a:3:{s:8:\"settings\";s:14:\"manage_options\";s:12:\"theme-editor\";s:11:\"edit_themes\";s:13:\"plugin-editor\";s:12:\"edit_plugins\";}'),('change_plugin_editor_font_size',''),('change_theme_editor_font_size',''),('enable_plugin_active_line','1'),('enable_plugin_editor_height',''),('enable_plugin_line_numbers','1'),('enable_plugin_line_wrapping','1'),('enable_plugin_tab_characters','spaces'),('enable_plugin_tab_size',''),('enable_post_active_line','1'),('enable_post_editor','1'),('enable_post_line_numbers','1'),('enable_post_line_wrapping','1'),('enable_theme_active_line','1'),('enable_theme_editor_height',''),('enable_theme_line_numbers','1'),('enable_theme_line_wrapping','1'),('enable_theme_tab_characters','spaces'),('enable_theme_tab_size',''),('hide_default_plugin_editor','1'),('hide_default_theme_editor','1'),('plugin_create_new','1'),('plugin_editor_allowed_extensions','php~js~css~txt~htm~html~jpg~jpeg~png~gif~sql~po~less~xml'),('plugin_editor_theme','default'),('plugin_file_upload','1'),('plugin_indent_unit','2'),('post_indent_unit','2'),('replace_plugin_edit_links','1'),('run_overview','1'),('settings_tab','plugins'),('theme_create_new','1'),('theme_editor_allowed_extensions','php~js~css~txt~htm~html~jpg~jpeg~png~gif~sql~po~less~xml'),('theme_editor_theme','default'),('theme_file_upload','1'),('theme_indent_unit','2'),('upgrade','1'),('version','1.2.5.2');
/*!40000 ALTER TABLE `wp_wpeditor_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

