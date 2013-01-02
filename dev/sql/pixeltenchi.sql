# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.21)
# Database: pixeltenchi
# Generation Time: 2013-01-02 04:20:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table campaigns
# ------------------------------------------------------------

DROP TABLE IF EXISTS `campaigns`;

CREATE TABLE `campaigns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_code` int(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `download_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;

INSERT INTO `campaigns` (`id`, `campaign_code`, `name`, `description`, `download_link`)
VALUES
	(1,100,'general','General Site Visit',NULL);

/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table components
# ------------------------------------------------------------

DROP TABLE IF EXISTS `components`;

CREATE TABLE `components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('model','method','view','content') NOT NULL DEFAULT 'content',
  `name` varchar(85) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  `model` varchar(255) DEFAULT NULL,
  `directory` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `vars` varchar(255) DEFAULT NULL,
  `language` tinyint(1) NOT NULL DEFAULT '1',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table creation_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creation_tags`;

CREATE TABLE `creation_tags` (
  `creation_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`creation_id`,`tag_id`),
  KEY `fk-tag-creations` (`tag_id`),
  CONSTRAINT `fk-creation-tags` FOREIGN KEY (`creation_id`) REFERENCES `creations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-tag-creations` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `creation_tags` WRITE;
/*!40000 ALTER TABLE `creation_tags` DISABLE KEYS */;

INSERT INTO `creation_tags` (`creation_id`, `tag_id`)
VALUES
	(1,1),
	(3,1),
	(2,2),
	(1,3),
	(3,3),
	(3,4),
	(3,5),
	(3,6),
	(1,7),
	(3,7),
	(1,8),
	(3,9),
	(1,10),
	(3,10),
	(2,11),
	(3,11),
	(1,12),
	(3,16),
	(1,17),
	(2,17);

/*!40000 ALTER TABLE `creation_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table creations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creations`;

CREATE TABLE `creations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('web','logo','print','font','multimedia','video','audio','photography') DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) DEFAULT NULL,
  `comment` text,
  `content` text NOT NULL,
  `thumbnail` varchar(55) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `download` varchar(255) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `creations` WRITE;
/*!40000 ALTER TABLE `creations` DISABLE KEYS */;

INSERT INTO `creations` (`id`, `type`, `title`, `subtitle`, `comment`, `content`, `thumbnail`, `url`, `download`, `creation_date`, `disabled`)
VALUES
	(1,'web','PixelTenchi Legacy','Original pixeltenchi web portfolio','As a senior project in school I created the original PixelTenchi 1.0 website as my portfolio circa 2001. It remained online for over 12 years. As a legacy project it was created completely in flash and used as a CD porfolio as well as an interactive flash website. Programmed using ActionScript it was meant to be a repository for my original portfolio until I replaced it in early 2013 with PixelTenchi 2.0.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/pixeltenchi-legacy-pres.jpg\" alt=\"PixelTenchi Legacy\" />\n</div><!-- creation-container -->','pixeltenchi-legacy-tn.jpg','http://www.pixeltenchi.com/legacy/',NULL,'2001-04-15 13:00:00',0),
	(2,'logo','Summit Mental Health','Brand and Logo development','A commision/freelance project to develop a brand for Summit Mental Health in Salt Lake City, UT. Included was a color sheet along with several version of the logo with different backgrounds.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/summit-mental-health.jpg\" alt=\"Summit Mental Health\" />\n</div><!-- creation-container -->','summit-mental-health-tn.jpg',NULL,NULL,'2012-10-15 16:22:58',0),
	(3,'web','AeroExhaust','AeroExhaust.com website','Built completely in raw php without the use of a framework. The site was designed and created from scratch using the existing logo created by me. The site contained a complete shopping cart and backend content managment system along with a dealer login system that allowed dealers to manage their own sales. The site was optimized for organic search and scored in the top five on all major keywords including the top spot for the primary keyword \"Performance Exhaust.\" The site was maintained while I worked at Aero for over 5 years. The site included features to promote Aero Exhaust\'s NASCAR sponsorship and their spokesman Rusty Wallace.','<div class=\"creation-container\">\n	<h3>Homepage:</h3>\n	<img src=\"/assets/img/uploads/creations/aerohome.jpg\" alt=\"Summit Mental Health\" />\n	<h3>Subpage:</h3>\n	<img src=\"/assets/img/uploads/creations/aerosub.jpg\" alt=\"Summit Mental Health\" />\n</div><!-- creation-container -->','aeroexhaust-tn.jpg',NULL,NULL,'2008-03-01 17:11:35',0);

/*!40000 ALTER TABLE `creations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table leads
# ------------------------------------------------------------

DROP TABLE IF EXISTS `leads`;

CREATE TABLE `leads` (
  `id` int(10) unsigned NOT NULL,
  `campaign_id` int(10) unsigned DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `inquiry_ip` varchar(20) DEFAULT NULL,
  `inquiry_date` datetime DEFAULT NULL,
  `contact_date` datetime DEFAULT NULL,
  `downloaded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk-campaign-leads` (`campaign_id`),
  CONSTRAINT `fk-campaign-leads` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-user-lead` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `description`, `color`, `class`, `icon`, `disabled`)
VALUES
	(1,'web','Web Design','9b040f',NULL,NULL,0),
	(2,'print','Print Design','33cc70',NULL,NULL,0),
	(3,'programming','Programming and Web Development','608da0',NULL,NULL,0),
	(4,'css','CSS','f05224',NULL,NULL,0),
	(5,'html','HTML','7b84a3',NULL,NULL,0),
	(6,'php','PHP','a19727',NULL,NULL,0),
	(7,'flash','Flash','e19b9b',NULL,NULL,0),
	(8,'actionscript','ActionScript','6f2dc1',NULL,NULL,0),
	(9,'mysql','MySQL','2dc1ae',NULL,NULL,0),
	(10,'photoshop','Adobe PhotoShop','2543fd',NULL,NULL,0),
	(11,'illustrator','Adobe Illustrator','fd8a25',NULL,NULL,0),
	(12,'multimedia','Multimedia such as interactives, CD','185562',NULL,NULL,0),
	(13,'git','Git Developments','6b6b6b',NULL,NULL,0),
	(14,'kohana','Kohana HMVC','105c10',NULL,NULL,0),
	(15,'photography','Photography','341862',NULL,NULL,0),
	(16,'api','Application Programming Interface','624018',NULL,NULL,0),
	(17,'logo','Logo Design','62182a',NULL,NULL,0),
	(18,'3d','3D Design',NULL,NULL,NULL,0);

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `first` varchar(255) CHARACTER SET latin1 DEFAULT '',
  `initial` char(2) CHARACTER SET latin1 DEFAULT NULL,
  `last` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `temp_password` char(10) CHARACTER SET latin1 DEFAULT NULL,
  `temp_password_date` datetime DEFAULT NULL,
  `role` enum('lead','partner','client','employee','admin','jedi','registrant') CHARACTER SET latin1 NOT NULL DEFAULT 'lead',
  `logins` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_activity_date` datetime DEFAULT NULL,
  `user_notes` text CHARACTER SET latin1,
  `token` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `last_ip` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `first`, `initial`, `last`, `password`, `temp_password`, `temp_password_date`, `role`, `logins`, `last_login`, `registration_date`, `last_activity_date`, `user_notes`, `token`, `email_confirmed`, `last_ip`, `disabled`)
VALUES
	(1,'jneslen@yahoo.com','Jeff','G','Neslen','257d65817a867489210bd292c83bc63dfa061147e960f925c7',NULL,NULL,'jedi',0,NULL,'2012-12-12 12:12:12',NULL,NULL,NULL,1,NULL,0);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
