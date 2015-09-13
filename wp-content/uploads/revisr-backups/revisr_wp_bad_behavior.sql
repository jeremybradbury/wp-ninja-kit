
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
DROP TABLE IF EXISTS `wp_bad_behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bad_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_method` text NOT NULL,
  `request_uri` text NOT NULL,
  `server_protocol` text NOT NULL,
  `http_headers` text NOT NULL,
  `user_agent` text NOT NULL,
  `request_entity` text NOT NULL,
  `key` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`(15)),
  KEY `user_agent` (`user_agent`(10))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_bad_behavior` WRITE;
/*!40000 ALTER TABLE `wp_bad_behavior` DISABLE KEYS */;
INSERT INTO `wp_bad_behavior` VALUES (1,'93.174.93.33','2015-09-06 09:08:01','GET','/','HTTP/1.0','GET / HTTP/1.0\n','','','00000000'),(2,'182.118.53.164','2015-09-06 18:34:54','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nUser-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36\nAccept-Encoding: gzip\n','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36','','17566707'),(3,'93.174.93.33','2015-09-07 10:44:58','GET','/','HTTP/1.0','GET / HTTP/1.0\n','','','00000000'),(4,'183.60.48.25','2015-09-07 13:29:54','GET','http://www.baidu.com/','HTTP/1.1','GET http://www.baidu.com/ HTTP/1.1\nHost: www.baidu.com\nAccept: */*\nContent-Type: text/html\nProxy-Connection: Keep-Alive\nContent-length: 0\n','','','00000000'),(5,'137.226.113.7','2015-09-08 15:48:16','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nConnection: Keep-Alive\n','','','00000000'),(6,'182.118.55.234','2015-09-08 18:58:08','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nUser-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36\nAccept-Encoding: gzip\n','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36','','17566707'),(7,'137.226.113.7','2015-09-08 22:15:15','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nConnection: Keep-Alive\n','','','00000000'),(8,'141.212.121.144','2015-09-09 01:58:21','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nUser-Agent: Mozilla/5.0 zgrab/0.x\n','Mozilla/5.0 zgrab/0.x','','17566707'),(9,'141.212.122.50','2015-09-10 03:06:01','CONNECT','proxytest.zmap.io:80','HTTP/1.1','CONNECT proxytest.zmap.io:80 HTTP/1.1\nHost: 52.5.79.162\nUser-Agent: Mozilla/5.0 zgrab/0.x\n','Mozilla/5.0 zgrab/0.x','','17566707'),(10,'117.21.173.36','2015-09-10 09:32:22','GET','/manager/html','HTTP/1.1','GET /manager/html HTTP/1.1\nContent-Type: text/html\nHost: 52.5.79.162\nAccept: text/html, */*\nUser-Agent: Mozilla/3.0 (compatible; Indy Library)\nAuthorization: Basic Og==\n','Mozilla/3.0 (compatible; Indy Library)','','17f4e8c8'),(11,'182.118.54.34','2015-09-10 17:18:33','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nUser-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36\nAccept-Encoding: gzip\n','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36','','17566707'),(12,'206.190.130.124','2015-09-11 00:47:02','HEAD','/','HTTP/1.0','HEAD / HTTP/1.0\n','','','00000000'),(13,'85.25.43.94','2015-09-11 15:19:50','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nAccept-Encoding: identity\n','','','00000000'),(14,'85.25.43.94','2015-09-11 15:19:51','GET','/robots.txt','HTTP/1.1','GET /robots.txt HTTP/1.1\nHost: 52.5.79.162\nAccept-Encoding: identity\n','','','00000000'),(15,'85.25.43.94','2015-09-11 15:19:51','GET','/sitemap.xml','HTTP/1.1','GET /sitemap.xml HTTP/1.1\nHost: 52.5.79.162\nAccept-Encoding: identity\n','','','00000000'),(16,'141.212.121.128','2015-09-12 00:03:41','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nUser-Agent: Mozilla/5.0 zgrab/0.x\n','Mozilla/5.0 zgrab/0.x','','17566707'),(17,'208.67.1.113','2015-09-12 11:35:58','GET','/muieblackcat','HTTP/1.1','GET /muieblackcat HTTP/1.1\nAccept: */*\nAccept-Language: en-us\nAccept-Encoding: gzip, deflate\nHost: 52.5.79.162\nConnection: Close\n','','','00000000'),(18,'208.67.1.113','2015-09-12 11:35:58','GET','//phpMyAdmin/scripts/setup.php','HTTP/1.1','GET //phpMyAdmin/scripts/setup.php HTTP/1.1\nAccept: */*\nAccept-Language: en-us\nAccept-Encoding: gzip, deflate\nHost: 52.5.79.162\nConnection: Close\n','','','00000000'),(19,'208.67.1.113','2015-09-12 11:35:59','GET','//phpmyadmin/scripts/setup.php','HTTP/1.1','GET //phpmyadmin/scripts/setup.php HTTP/1.1\nAccept: */*\nAccept-Language: en-us\nAccept-Encoding: gzip, deflate\nHost: 52.5.79.162\nConnection: Close\n','','','00000000'),(20,'208.67.1.113','2015-09-12 11:36:05','GET','//MyAdmin/scripts/setup.php','HTTP/1.1','GET //MyAdmin/scripts/setup.php HTTP/1.1\nAccept: */*\nAccept-Language: en-us\nAccept-Encoding: gzip, deflate\nHost: 52.5.79.162\nConnection: Close\n','','','00000000'),(21,'182.118.55.165','2015-09-12 17:48:26','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nUser-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36\nAccept-Encoding: gzip\n','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36','','17566707'),(22,'155.94.222.12','2015-09-12 19:13:26','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nUser-Agent: Mozilla/5.0 Project 25499 (project25499.com)\n','Mozilla/5.0 Project 25499 (project25499.com)','','17566707'),(23,'54.80.115.135','2015-09-13 07:08:55','GET','/','HTTP/1.1','GET / HTTP/1.1\nHost: 52.5.79.162\nUser-Agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)\nAccept-Encoding: none\nConnection: close\n','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)','','17566707');
/*!40000 ALTER TABLE `wp_bad_behavior` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

