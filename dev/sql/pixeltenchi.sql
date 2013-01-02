# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.21)
# Database: pixeltenchi
# Generation Time: 2013-01-02 17:13:49 +0000
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
	(5,1),
	(6,1),
	(7,1),
	(15,1),
	(2,2),
	(11,2),
	(12,2),
	(13,2),
	(1,3),
	(3,3),
	(5,3),
	(6,3),
	(7,3),
	(15,3),
	(3,4),
	(5,4),
	(6,4),
	(7,4),
	(15,4),
	(3,5),
	(5,5),
	(6,5),
	(7,5),
	(15,5),
	(3,6),
	(5,6),
	(7,6),
	(15,6),
	(1,7),
	(3,7),
	(1,8),
	(3,9),
	(5,9),
	(6,9),
	(7,9),
	(15,9),
	(1,10),
	(3,10),
	(5,10),
	(13,10),
	(15,10),
	(2,11),
	(3,11),
	(11,11),
	(12,11),
	(13,11),
	(1,12),
	(15,12),
	(5,13),
	(6,13),
	(7,13),
	(15,13),
	(5,14),
	(6,14),
	(7,14),
	(15,14),
	(8,15),
	(9,15),
	(10,15),
	(3,16),
	(7,16),
	(15,16),
	(1,17),
	(2,17),
	(12,18),
	(4,19),
	(13,19),
	(14,20);

/*!40000 ALTER TABLE `creation_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table creations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creations`;

CREATE TABLE `creations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('web','logo','print','font','multimedia','video','audio','photography','art') DEFAULT NULL,
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
	(3,'web','AeroExhaust.com','AeroExhaust.com website','Built completely in raw php without the use of a framework. The site was designed and created from scratch using the existing logo created by me. The site contained a complete shopping cart and backend content managment system along with a dealer login system that allowed dealers to manage their own sales. The site was optimized for organic search and scored in the top five on all major keywords including the top spot for the primary keyword \"Performance Exhaust.\" The site was maintained while I worked at Aero for over 5 years. The site included features to promote Aero Exhaust\'s NASCAR sponsorship and their spokesman Rusty Wallace.','<div class=\"creation-container\">\n	<h3>Homepage:</h3>\n	<img src=\"/assets/img/uploads/creations/aerohome.jpg\" alt=\"AeroExhaust Homepage\" />\n	<h3>Subpage:</h3>\n	<img src=\"/assets/img/uploads/creations/aerosub.jpg\" alt=\"AeroExhaust Subpages\" />\n</div><!-- creation-container -->','aeroexhaust-tn.jpg',NULL,NULL,'2008-03-01 17:11:35',0),
	(4,'font','Trinh Hand Script Font','Regular True Type Font','Trinh Hand Scrpt Regular Font is an open source true type font created as a font for use for designs that include and elegant feel. Feel free to download this font for use.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/trinh-hand-font.jpg\" alt=\"Trihn Hand Script Regular\" />\n</div><!-- creation-container -->','trinh-hand-font-tn.jpg',NULL,'/assets/uploads/trinh_hand.ttf','2012-12-20 21:44:59',0),
	(5,'web','Matrix42.com','Matrix42.com redesign','Matrix42.com is a multi-language (English/German) website developed for lead production and optimization for user experience. The site was developed using responsive css design for display on all devices. The site broke some common rules in the display for large format devices for new technical users. The backend of the site is built on a proprietary content management system developed in Kohana HMVC framework. Currently in beta testing the site is set to be released in mid 2013.','<div class=\"creation-container\">\n	<h3>Homepage:</h3>\n	<img src=\"/assets/img/uploads/creations/matrix42-home.jpg\" alt=\"Matrix42 Homepage\" />\n	<h3>Subpage:</h3>\n	<img src=\"/assets/img/uploads/creations/matrix42-sub.jpg\" alt=\"Matrix42 Subpage\" />\n</div><!-- creation-container -->','matrix42-com-tn.jpg','http://beta.matrix42.com','https://github.com/jneslen/matrix42','2013-01-01 22:00:55',0),
	(6,'web','Matrix42 Promo','Promotional Microsite','A promotional microsite for Matrix42 created in both English and German to promote sales for September 2012 to existing Matrix42 customers to upgrade to new services. The site was developed for lead flow using Kohana framework and twitter bootstrap responsive interface.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/matrix42-promo.jpg\" alt=\"Matrix42 Promo\" />\n</div><!-- creation-container -->','matrix42-promo-tn.jpg','http://promo.matrix42.com/september',NULL,'2012-09-01 22:32:54',0),
	(7,'web','ServiceNow microsite','Matrix42 \\ ServiceNow Partnership','With the coming partnership between Matrix42 and ServiceNow, this microsite was made to promote the partnership and allow a landing page for ServiceNow users to find Matrix42 to handle their IT services. The site is being promoted through Google AdWords and is designed as a lead capture site. The site is a Twitter Bootstrap Responsive interface with a Kohana framework backend. The site is developed on a LAMP stack and interfaces with Matrix42\'s Web Services with an API push to their CRM.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/matrix42-servicenow.jpg\" alt=\"Matrix42 ServiceNow\" />\n</div><!-- creation-container -->','matrix42-servicenow-tn.jpg','http://servicenow.matrix42.com',NULL,'2012-05-01 22:46:16',0),
	(8,'photography','Fubuki','Edith Fubuki 4 years old','Spontaneous photoshoot with Fubuki (my daughter). The lighting was done with natural light using the Fuji S1 Pro SLR. There was no post processing done on these photos.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/edith001.jpg\" alt=\"Edith Fubuki Neslen\" />\n	<hr />\n	<img src=\"/assets/img/uploads/creations/edith001-2.jpg\" alt=\"Edith Fubuki Neslen\" />\n</div><!-- creation-container -->','edith001-tn.jpg',NULL,NULL,'2010-09-11 23:09:26',0),
	(9,'photography','Yumi','Yumi Kamisasanuki Wedding','A commissioned wedding photo project at the Kamisasanuki wedding. Taken in San Diego with a Fuji S1 Pro SLR in natural lighting and light disk. Post processing done in Adobe Lightroom.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/yumi-1.jpg\" alt=\"Yumi Kamisasanuki\" />\n	<hr />\n	<img src=\"/assets/img/uploads/creations/yumi-2.jpg\" alt=\"Yumi Kamisasanuki Wedding\" />\n</div><!-- creation-container -->','yumi-tn.jpg',NULL,NULL,'2006-09-17 23:20:50',0),
	(10,'photography','Amy','Amy Ennis Wedding','Photos taken by the request of Amy and Nick Ennis at their wedding in Salt Lake City at Red Butte Gardens. Photos taken using the Fuji S1 Pro SLR in natural light with some post processing in Adobe Lightroom.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/amyennis-1.jpg\" alt=\"Amy Ennis\" />\n	<hr />\n	<img src=\"/assets/img/uploads/creations/amyennis-2.jpg\" alt=\"Amy Ennis Wedding\" />\n</div><!-- creation-container -->','amyennis-tn.jpg',NULL,NULL,'2007-06-27 23:29:04',0),
	(11,'print','AeroExhaust NASCAR','Team Morgan-Mclure #4','First Generation design of the AeroExhaust NASCAR 2006 Nextel Cup Morgan-McClure racing team #4 car. This design was designed in vector using Illustrator and printed as a wrap for the car. This car was driven by Scott Wimmer during the 2006 Nextel Cup season.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/aero-nascar-martinsville.jpg\" alt=\"Morgan McClure number 4\" />\n	<hr />\n	<img src=\"/assets/img/uploads/creations/aero-nascar-template.jpg\" alt=\"AeroExhaust 4 Nascar\" />\n</div><!-- creation-container -->','aero-nascar-templ-tn.jpg',NULL,NULL,'2006-01-10 23:41:21',0),
	(12,'print','360 OTC NASCAR','Team 360 OTC','This was the consistant design of the first number 36 360 OTC NASCAR teams in both the 2007 Nextel Cup and Truck teams. This team was the first Toyota Nextel Cup Team. The design was used for both divisions for the entire 2007 season. The design was rendered for display using Maya 3D.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/team-360otc.jpg\" alt=\"Team 360 OTC\" />\n</div><!-- creation-container -->','team-360otc-tn.jpg',NULL,NULL,'2006-12-01 23:52:10',0),
	(13,'print','Matrix42 Booth','ServiceNow Booth San Francisco','Matrix42 booth design for the 2012 ServiceNow Convention in San Francisco California. The booth was designed using a combination of Photoshop and Illustrator using a large format for Print of the 8+ feet panels.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/servicenow-booth.jpg\" alt=\"ServiceNow Booth\" />\n	<hr />\n	<img src=\"/assets/img/uploads/creations/servicenow-booth2.jpg\" alt=\"ServiceNow Booth Photo\" />\n</div><!-- creation-container -->','servicenow-booth-tn.jpg',NULL,NULL,'2012-04-25 00:15:05',0),
	(14,'art','Michael Jackson','Pencil Scetch','Michael Jackson Bad cover Pencil on artboard. My High School Senior art project. Approximately 90 hours.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/michael-jackson.jpg\" alt=\"Michael Jackson\" />\n</div><!-- creation-container -->','michael-jackson-tn.jpg',NULL,NULL,'1993-04-02 00:28:53',0),
	(15,'web','Lendio','Backend B2B Matching','As a web developer for lendio.com I had primary responsibility to develop Lendio\'s backend website on the development team, including UI development and aplication development using SCRUM rapid development. I maintained, updated and debugged the online system software, including financial, client gateway, and product areas using the Kohana framework in a WAMP/LAMP/MAMP environment. The development of Lendio\'s propriatory matching software was a constant job and new developments were always rapidely developed in 2 week sprints.','<div class=\"creation-container\">\n	<img src=\"/assets/img/uploads/creations/lendio-homepage.jpg\" alt=\"Lendio\" />\n</div><!-- creation-container -->','lendio-tn.jpg','http://www.lendio.com',NULL,'2012-01-02 00:49:00',0);

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



# Dump of table notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent note_id',
  `type` enum('general','sales','response','inquiry','request') NOT NULL DEFAULT 'general',
  `note` text NOT NULL,
  `note_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk-user-notes` (`user_id`),
  KEY `fk-author-notes` (`author_id`),
  KEY `fk-parent-notes` (`parent_id`),
  CONSTRAINT `fk-author-notes` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-parent-notes` FOREIGN KEY (`parent_id`) REFERENCES `notes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-user-notes` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table phones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `phones`;

CREATE TABLE `phones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('primary','alternate','mobile') DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `address_id` int(10) unsigned DEFAULT NULL,
  `number` varchar(20) NOT NULL DEFAULT '',
  `format` enum('north_america','europe','world','england','spain') NOT NULL DEFAULT 'north_america',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk-user-phones` (`user_id`),
  CONSTRAINT `fk-user-phones` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
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
	(18,'3d','3D Design','7A000C',NULL,NULL,0),
	(19,'typography','Typography','7C373F',NULL,NULL,0),
	(20,'scretch','Pencil Scetch','999999',NULL,NULL,0);

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



--
-- Dumping routines (PROCEDURE) for database 'pixeltenchi'
--
DELIMITER ;;

# Dump of PROCEDURE sp_belongs_to
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `sp_belongs_to` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_belongs_to`(IN schemaName VARCHAR(100), IN tableName VARCHAR(100))
BEGIN
		SELECT TABLE_NAME AS keyTable, GROUP_CONCAT(COLUMN_NAME) AS keyColumns, REFERENCED_TABLE_NAME AS refTable, GROUP_CONCAT(REFERENCED_COLUMN_NAME) AS refColumns, CONSTRAINT_NAME AS constraintName
		FROM INFORMATION_SCHEMA.key_column_usage
		WHERE TABLE_SCHEMA = schemaName
		AND TABLE_NAME = tableName
		AND REFERENCED_TABLE_NAME IS NOT NULL
		GROUP BY constraintName;
	END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE sp_has_many
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `sp_has_many` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_has_many`(IN schemaName VARCHAR(100), IN tableName VARCHAR(100))
BEGIN
	  SELECT REFERENCED_TABLE_NAME AS keyTable, GROUP_CONCAT(REFERENCED_COLUMN_NAME) AS keyColumns, TABLE_NAME AS refTable, GROUP_CONCAT(COLUMN_NAME) AS refColumns, CONSTRAINT_NAME AS constraintName
	  FROM INFORMATION_SCHEMA.key_column_usage
	  WHERE TABLE_SCHEMA = schemaName
	  AND REFERENCED_TABLE_NAME = tableName
	  GROUP BY constraintName;
	END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
