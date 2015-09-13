
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
DROP TABLE IF EXISTS `wp_revisr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_revisr` WRITE;
/*!40000 ALTER TABLE `wp_revisr` DISABLE KEYS */;
INSERT INTO `wp_revisr` VALUES (1,'2015-09-05 19:58:19','Successfully pushed 0 commits to origin/master.','push'),(2,'2015-09-05 20:23:49','Successfully backed up the database.','backup'),(3,'2015-09-05 20:24:00','Successfully pushed 0 commits to origin/master.','push'),(4,'2015-09-05 13:32:44','Successfully pushed 1 commit to origin/master.','push'),(5,'2015-09-05 13:37:36','Successfully pushed 1 commit to origin/master.','push'),(6,'2015-09-05 13:38:13','Successfully backed up the database.','backup'),(7,'2015-09-05 13:38:22','Successfully pushed 0 commits to origin/master.','push'),(8,'2015-09-05 13:38:38','Successfully imported the database. ','import'),(9,'2015-09-05 13:38:38','Successfully reverted the database to a previous commit. <a href=\"http://52.5.79.162/wp-admin/admin-post.php?action=process_revert&amp;revert_type=db&amp;db_hash=5524862&amp;branch=master&amp;backup_method=tables&amp;revisr_revert_nonce=e12755c565\">Undo</a>','revert'),(10,'2015-09-05 13:41:45','Successfully pushed 1 commit to origin/master.','push'),(11,'2015-09-05 13:42:33','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=7&action=edit\">#bc0d525</a> to the local repository.','commit'),(12,'2015-09-05 13:42:47','Successfully pushed 1 commit to origin/master.','push'),(13,'2015-09-05 13:46:46','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=8&action=edit\">#243e016</a> to the local repository.','commit'),(14,'2015-09-05 13:46:47','Successfully pushed 2 commits to origin/master.','push'),(15,'2015-09-05 13:47:28','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=9&action=edit\">#b5f0029</a> to the local repository.','commit'),(16,'2015-09-05 13:47:29','Successfully pushed 1 commit to origin/master.','push'),(17,'2015-09-05 16:01:37','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=10&action=edit\">#2a8846a</a> to the local repository.','commit'),(18,'2015-09-05 16:01:38','Successfully pushed 1 commit to origin/master.','push'),(19,'2015-09-08 12:02:10','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=11&action=edit\">#b34762c</a> to the local repository.','commit'),(20,'2015-09-08 12:02:11','Successfully pushed 1 commit to origin/master.','push'),(21,'2015-09-08 12:02:42','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=12&action=edit\">#9dbb871</a> to the local repository.','commit'),(22,'2015-09-08 12:02:42','Successfully pushed 1 commit to origin/master.','push'),(23,'2015-09-08 13:08:34','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=15&action=edit\">#3ee07d8</a> to the local repository.','commit'),(24,'2015-09-08 13:08:57','Successfully pushed 1 commit to origin/master.','push'),(25,'2015-09-09 21:58:34','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=16&action=edit\">#e386c46</a> to the local repository.','commit'),(26,'2015-09-09 21:58:35','Successfully pushed 1 commit to origin/master.','push'),(27,'2015-09-09 21:59:54','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=17&action=edit\">#f279985</a> to the local repository.','commit'),(28,'2015-09-09 21:59:55','Successfully pushed 1 commit to origin/master.','push'),(29,'2015-09-09 22:00:36','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=18&action=edit\">#a800318</a> to the local repository.','commit'),(30,'2015-09-09 22:00:37','Successfully pushed 1 commit to origin/master.','push'),(31,'2015-09-09 22:01:23','Successfully backed up the database.','backup'),(32,'2015-09-09 22:01:36','Successfully pushed 1 commit to origin/master.','push'),(33,'2015-09-09 22:02:01','Created new branch: fullbackup','branch'),(34,'2015-09-09 22:02:01','Checked out branch: fullbackup.','branch'),(35,'2015-09-09 22:02:17','Checked out branch: master.','branch'),(36,'2015-09-09 22:02:39','Deleted branch fullbackup.','branch'),(37,'2015-09-09 22:07:30','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=21&action=edit\">#876f876</a> to the local repository.','commit'),(38,'2015-09-09 22:07:31','Successfully pushed 1 commit to origin/master.','push'),(39,'2015-09-09 22:08:07','Created new branch: present','branch'),(40,'2015-09-09 22:08:07','Checked out branch: present.','branch'),(41,'2015-09-09 22:09:41','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=22&action=edit\">#7fac008</a> to the local repository.','commit'),(42,'2015-09-09 22:09:42','Successfully pushed 1 commit to origin/present.','push'),(43,'2015-09-09 22:51:26','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=40&action=edit\">#dad9a7c</a> to the local repository.','commit'),(44,'2015-09-09 22:51:26','Successfully pushed 1 commit to origin/present.','push'),(45,'2015-09-09 22:52:12','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=41&action=edit\">#5ef907c</a> to the local repository.','commit'),(46,'2015-09-09 22:52:13','Successfully pushed 1 commit to origin/present.','push'),(47,'2015-09-09 23:56:06','Successfully backed up the database.','backup'),(48,'2015-09-09 23:56:20','Successfully pushed 1 commit to origin/present.','push'),(49,'2015-09-09 23:58:38','Successfully backed up the database.','backup'),(50,'2015-09-09 23:58:44','Successfully pushed 1 commit to origin/present.','push'),(51,'2015-09-10 00:27:58','Successfully backed up the database.','backup'),(52,'2015-09-10 00:28:03','Successfully pushed 1 commit to origin/present.','push'),(53,'2015-09-10 12:26:00','Checked out branch: master.','branch'),(54,'2015-09-10 12:26:19','Checked out branch: present.','branch'),(55,'2015-09-10 13:25:16','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=48&action=edit\">#60b7a8b</a> to the local repository.','commit'),(56,'2015-09-10 13:25:17','Successfully pushed 1 commit to origin/present.','push'),(57,'2015-09-10 13:30:55','Successfully backed up the database.','backup'),(58,'2015-09-10 13:31:03','Successfully pushed 1 commit to origin/present.','push'),(59,'2015-09-10 13:40:07','Checked out branch: present.','branch'),(60,'2015-09-10 13:46:05','Checked out branch: angles-theme.','branch'),(61,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=50&action=edit\">#f3cbc5a</a> from origin/angles-theme.','pull'),(62,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=51&action=edit\">#cc693a8</a> from origin/angles-theme.','pull'),(63,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=52&action=edit\">#f01f578</a> from origin/angles-theme.','pull'),(64,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=53&action=edit\">#60b7a8b</a> from origin/angles-theme.','pull'),(65,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=54&action=edit\">#45814e7</a> from origin/angles-theme.','pull'),(66,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=55&action=edit\">#06877bf</a> from origin/angles-theme.','pull'),(67,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=56&action=edit\">#b51e90c</a> from origin/angles-theme.','pull'),(68,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=57&action=edit\">#5ef907c</a> from origin/angles-theme.','pull'),(69,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=58&action=edit\">#dad9a7c</a> from origin/angles-theme.','pull'),(70,'2015-09-10 13:46:17','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=59&action=edit\">#7fac008</a> from origin/angles-theme.','pull'),(71,'2015-09-10 13:53:12','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=60&action=edit\">#dad5f56</a> to the local repository.','commit'),(72,'2015-09-10 13:53:47','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=60&action=edit\">#6107f4f</a> to the local repository.','commit'),(73,'2015-09-10 13:54:02','Successfully pushed 2 commits to origin/angles-theme.','push'),(74,'2015-09-11 18:56:19','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=64&action=edit\">#1481251</a> to the local repository.','commit'),(75,'2015-09-11 18:56:20','Successfully pushed 1 commit to origin/angles-theme.','push'),(76,'2015-09-11 18:57:06','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=65&action=edit\">#4d3344e</a> to the local repository.','commit'),(77,'2015-09-11 18:57:07','Successfully pushed 1 commit to origin/angles-theme.','push'),(78,'2015-09-12 13:51:54','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=68&action=edit\">#72fdb64</a> to the local repository.','commit'),(79,'2015-09-12 13:51:55','Successfully pushed 1 commit to origin/angles-theme.','push'),(80,'2015-09-12 15:13:45','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=71&action=edit\">#d5485ff</a> to the local repository.','commit'),(81,'2015-09-12 15:13:45','Successfully pushed 1 commit to origin/angles-theme.','push'),(82,'2015-09-12 15:30:48','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=73&action=edit\">#6cd9142</a> to the local repository.','commit'),(83,'2015-09-12 15:47:35','Reverted to commit <a href=\"http://52.5.79.162/wp-admin/post.php?post=73&action=edit\">#6cd9142</a>.','revert'),(84,'2015-09-12 16:04:14','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=76&action=edit\">#af21f40</a> to the local repository.','commit'),(85,'2015-09-12 16:04:15','Successfully pushed 2 commits to origin/angles-theme.','push'),(86,'2015-09-12 18:15:14','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=77&action=edit\">#9153b03</a> to the local repository.','commit'),(87,'2015-09-12 18:15:14','Successfully pushed 1 commit to origin/angles-theme.','push'),(88,'2015-09-12 18:15:49','Successfully pushed 0 commits to origin/angles-theme.','push'),(89,'2015-09-12 18:16:10','Reverted to commit <a href=\"http://52.5.79.162/wp-admin/post.php?post=77&action=edit\">#9153b03</a>.','revert'),(90,'2015-09-12 18:16:33','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=79&action=edit\">#9153b03</a> from origin/angles-theme.','pull'),(91,'2015-09-12 18:16:40','Successfully pushed 2 commits to origin/angles-theme.','push'),(92,'2015-09-12 22:05:35','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=80&action=edit\">#0e6199b</a> to the local repository.','commit'),(93,'2015-09-12 22:05:36','Successfully pushed 1 commit to origin/angles-theme.','push'),(94,'2015-09-12 22:12:25','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=82&action=edit\">#07359fe</a> to the local repository.','commit'),(95,'2015-09-12 22:12:25','Successfully pushed 1 commit to origin/angles-theme.','push'),(96,'2015-09-13 13:31:01','Checked out branch: master.','branch'),(97,'2015-09-13 13:32:26','Checked out branch: angles-theme.','branch'),(98,'2015-09-13 13:42:44','Checked out branch: master.','branch'),(99,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=84&action=edit\">#56e25e4</a> from origin/master.','pull'),(100,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=85&action=edit\">#07359fe</a> from origin/master.','pull'),(101,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=86&action=edit\">#0e6199b</a> from origin/master.','pull'),(102,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=87&action=edit\">#9792be7</a> from origin/master.','pull'),(103,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=88&action=edit\">#4d78935</a> from origin/master.','pull'),(104,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=89&action=edit\">#9153b03</a> from origin/master.','pull'),(105,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=90&action=edit\">#af21f40</a> from origin/master.','pull'),(106,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=91&action=edit\">#6460ee2</a> from origin/master.','pull'),(107,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=92&action=edit\">#d5485ff</a> from origin/master.','pull'),(108,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=93&action=edit\">#72fdb64</a> from origin/master.','pull'),(109,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=94&action=edit\">#4d3344e</a> from origin/master.','pull'),(110,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=95&action=edit\">#1481251</a> from origin/master.','pull'),(111,'2015-09-13 13:44:03','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=96&action=edit\">#6107f4f</a> from origin/master.','pull'),(112,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=97&action=edit\">#dad5f56</a> from origin/master.','pull'),(113,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=98&action=edit\">#f3cbc5a</a> from origin/master.','pull'),(114,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=99&action=edit\">#cc693a8</a> from origin/master.','pull'),(115,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=100&action=edit\">#f01f578</a> from origin/master.','pull'),(116,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=101&action=edit\">#60b7a8b</a> from origin/master.','pull'),(117,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=102&action=edit\">#45814e7</a> from origin/master.','pull'),(118,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=103&action=edit\">#06877bf</a> from origin/master.','pull'),(119,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=104&action=edit\">#b51e90c</a> from origin/master.','pull'),(120,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=105&action=edit\">#5ef907c</a> from origin/master.','pull'),(121,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=106&action=edit\">#dad9a7c</a> from origin/master.','pull'),(122,'2015-09-13 13:44:04','Pulled <a href=\"http://52.5.79.162/wp-admin/post.php?post=107&action=edit\">#7fac008</a> from origin/master.','pull'),(123,'2015-09-13 13:45:33','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=108&action=edit\">#c4b28bb</a> to the local repository.','commit'),(124,'2015-09-13 13:45:34','Successfully pushed 1 commit to origin/master.','push'),(125,'2015-09-13 13:46:09','Created new branch: sample-data','branch'),(126,'2015-09-13 13:46:09','Checked out branch: sample-data.','branch');
/*!40000 ALTER TABLE `wp_revisr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

