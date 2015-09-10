
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_revisr` WRITE;
/*!40000 ALTER TABLE `wp_revisr` DISABLE KEYS */;
INSERT INTO `wp_revisr` VALUES (1,'2015-09-05 19:58:19','Successfully pushed 0 commits to origin/master.','push'),(2,'2015-09-05 20:23:49','Successfully backed up the database.','backup'),(3,'2015-09-05 20:24:00','Successfully pushed 0 commits to origin/master.','push'),(4,'2015-09-05 13:32:44','Successfully pushed 1 commit to origin/master.','push'),(5,'2015-09-05 13:37:36','Successfully pushed 1 commit to origin/master.','push'),(6,'2015-09-05 13:38:13','Successfully backed up the database.','backup'),(7,'2015-09-05 13:38:22','Successfully pushed 0 commits to origin/master.','push'),(8,'2015-09-05 13:38:38','Successfully imported the database. ','import'),(9,'2015-09-05 13:38:38','Successfully reverted the database to a previous commit. <a href=\"http://52.5.79.162/wp-admin/admin-post.php?action=process_revert&amp;revert_type=db&amp;db_hash=5524862&amp;branch=master&amp;backup_method=tables&amp;revisr_revert_nonce=e12755c565\">Undo</a>','revert'),(10,'2015-09-05 13:41:45','Successfully pushed 1 commit to origin/master.','push'),(11,'2015-09-05 13:42:33','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=7&action=edit\">#bc0d525</a> to the local repository.','commit'),(12,'2015-09-05 13:42:47','Successfully pushed 1 commit to origin/master.','push'),(13,'2015-09-05 13:46:46','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=8&action=edit\">#243e016</a> to the local repository.','commit'),(14,'2015-09-05 13:46:47','Successfully pushed 2 commits to origin/master.','push'),(15,'2015-09-05 13:47:28','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=9&action=edit\">#b5f0029</a> to the local repository.','commit'),(16,'2015-09-05 13:47:29','Successfully pushed 1 commit to origin/master.','push'),(17,'2015-09-05 16:01:37','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=10&action=edit\">#2a8846a</a> to the local repository.','commit'),(18,'2015-09-05 16:01:38','Successfully pushed 1 commit to origin/master.','push'),(19,'2015-09-08 12:02:10','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=11&action=edit\">#b34762c</a> to the local repository.','commit'),(20,'2015-09-08 12:02:11','Successfully pushed 1 commit to origin/master.','push'),(21,'2015-09-08 12:02:42','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=12&action=edit\">#9dbb871</a> to the local repository.','commit'),(22,'2015-09-08 12:02:42','Successfully pushed 1 commit to origin/master.','push'),(23,'2015-09-08 13:08:34','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=15&action=edit\">#3ee07d8</a> to the local repository.','commit'),(24,'2015-09-08 13:08:57','Successfully pushed 1 commit to origin/master.','push'),(25,'2015-09-09 21:58:34','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=16&action=edit\">#e386c46</a> to the local repository.','commit'),(26,'2015-09-09 21:58:35','Successfully pushed 1 commit to origin/master.','push'),(27,'2015-09-09 21:59:54','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=17&action=edit\">#f279985</a> to the local repository.','commit'),(28,'2015-09-09 21:59:55','Successfully pushed 1 commit to origin/master.','push'),(29,'2015-09-09 22:00:36','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=18&action=edit\">#a800318</a> to the local repository.','commit'),(30,'2015-09-09 22:00:37','Successfully pushed 1 commit to origin/master.','push'),(31,'2015-09-09 22:01:23','Successfully backed up the database.','backup'),(32,'2015-09-09 22:01:36','Successfully pushed 1 commit to origin/master.','push'),(33,'2015-09-09 22:02:01','Created new branch: fullbackup','branch'),(34,'2015-09-09 22:02:01','Checked out branch: fullbackup.','branch'),(35,'2015-09-09 22:02:17','Checked out branch: master.','branch'),(36,'2015-09-09 22:02:39','Deleted branch fullbackup.','branch'),(37,'2015-09-09 22:07:30','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=21&action=edit\">#876f876</a> to the local repository.','commit'),(38,'2015-09-09 22:07:31','Successfully pushed 1 commit to origin/master.','push'),(39,'2015-09-09 22:08:07','Created new branch: present','branch'),(40,'2015-09-09 22:08:07','Checked out branch: present.','branch'),(41,'2015-09-09 22:09:41','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=22&action=edit\">#7fac008</a> to the local repository.','commit'),(42,'2015-09-09 22:09:42','Successfully pushed 1 commit to origin/present.','push'),(43,'2015-09-09 22:51:26','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=40&action=edit\">#dad9a7c</a> to the local repository.','commit'),(44,'2015-09-09 22:51:26','Successfully pushed 1 commit to origin/present.','push'),(45,'2015-09-09 22:52:12','Committed <a href=\"http://52.5.79.162/wp-admin/post.php?post=41&action=edit\">#5ef907c</a> to the local repository.','commit'),(46,'2015-09-09 22:52:13','Successfully pushed 1 commit to origin/present.','push');
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

