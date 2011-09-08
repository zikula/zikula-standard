-- MySQL dump 10.11
--
-- Host: localhost    Database: zikula
-- ------------------------------------------------------
-- Server version   5.5.8
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_category`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `admin_category` (
  `cid` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(254) NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `admin_category`
--

INSERT INTO `admin_category` VALUES (1,'System','Core modules at the heart of operation of the site.',0);
INSERT INTO `admin_category` VALUES (2,'Layout','Layout modules for controlling the site\'s look and feel.',0);
INSERT INTO `admin_category` VALUES (3,'Users','Modules for controlling user membership, access rights and profiles.',0);
INSERT INTO `admin_category` VALUES (4,'Content','Modules for providing content to your users.',0);
INSERT INTO `admin_category` VALUES (5,'Uncategorised','Newly-installed or uncategorized modules.',0);
INSERT INTO `admin_category` VALUES (6,'Security','Modules for managing the site\'s security.',0);

--
-- Table structure for table `admin_module`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `admin_module` (
  `amid` int(11) NOT NULL,
  `mid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`amid`),
  KEY `mid_cid` (`mid`,`cid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `admin_module`
--

INSERT INTO `admin_module` VALUES (1,1,1,0);
INSERT INTO `admin_module` VALUES (2,12,1,1);
INSERT INTO `admin_module` VALUES (3,13,2,0);
INSERT INTO `admin_module` VALUES (4,2,1,2);
INSERT INTO `admin_module` VALUES (5,9,3,0);
INSERT INTO `admin_module` VALUES (6,6,3,1);
INSERT INTO `admin_module` VALUES (7,3,2,1);
INSERT INTO `admin_module` VALUES (8,14,3,2);
INSERT INTO `admin_module` VALUES (9,11,6,0);
INSERT INTO `admin_module` VALUES (10,4,4,0);
INSERT INTO `admin_module` VALUES (11,18,4,1);
INSERT INTO `admin_module` VALUES (12,7,1,3);
INSERT INTO `admin_module` VALUES (13,5,1,4);
INSERT INTO `admin_module` VALUES (14,10,4,2);
INSERT INTO `admin_module` VALUES (25,23,4,5);
INSERT INTO `admin_module` VALUES (26,20,2,2);
INSERT INTO `admin_module` VALUES (21,16,4,1);
INSERT INTO `admin_module` VALUES (22,17,4,1);
INSERT INTO `admin_module` VALUES (24,19,3,1);
INSERT INTO `admin_module` VALUES (23,15,6,0);

--
-- Table structure for table `block_placements`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `block_placements` (
  `pid` int(11) NOT NULL DEFAULT '0',
  `bid` int(11) NOT NULL DEFAULT '0',
  `sortorder` int(11) NOT NULL DEFAULT '0',
  KEY `bid_pid_idx` (`bid`,`pid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `block_placements`
--

INSERT INTO `block_placements` VALUES (1,1,0);
INSERT INTO `block_placements` VALUES (4,2,0);
INSERT INTO `block_placements` VALUES (3,3,0);
INSERT INTO `block_placements` VALUES (2,4,0);
INSERT INTO `block_placements` VALUES (7,5,0);

--
-- Table structure for table `block_positions`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `block_positions` (
  `pid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `name_idx` (`name`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `block_positions`
--

INSERT INTO `block_positions` VALUES (1,'left','Left blocks');
INSERT INTO `block_positions` VALUES (2,'right','Right blocks');
INSERT INTO `block_positions` VALUES (3,'center','Center blocks');
INSERT INTO `block_positions` VALUES (4,'search','Search block');
INSERT INTO `block_positions` VALUES (5,'header','Header block');
INSERT INTO `block_positions` VALUES (6,'footer','Footer block');
INSERT INTO `block_positions` VALUES (7,'topnav','Top navigation block');
INSERT INTO `block_positions` VALUES (8,'bottomnav','Bottom navigation block');

--
-- Table structure for table `blocks`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `blocks` (
  `bid` int(11) NOT NULL,
  `bkey` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `content` longtext NOT NULL,
  `url` longtext NOT NULL,
  `mid` int(11) NOT NULL DEFAULT '0',
  `filter` longtext NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `collapsable` int(11) NOT NULL DEFAULT '1',
  `defaultstate` int(11) NOT NULL DEFAULT '1',
  `refresh` int(11) NOT NULL DEFAULT '0',
  `last_update` datetime NOT NULL,
  `language` varchar(30) NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `active_idx` (`active`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` VALUES (1,'Extmenu','Main menu','Main menu','a:5:{s:14:\"displaymodules\";s:1:\"0\";s:10:\"stylesheet\";s:11:\"extmenu.css\";s:8:\"template\";s:24:\"blocks_block_extmenu.tpl\";s:11:\"blocktitles\";a:1:{s:2:\"en\";s:9:\"Main menu\";}s:5:\"links\";a:1:{s:2:\"en\";a:5:{i:0;a:7:{s:4:\"name\";s:4:\"Home\";s:3:\"url\";s:10:\"{homepage}\";s:5:\"title\";s:19:\"Go to the home page\";s:5:\"level\";i:0;s:8:\"parentid\";N;s:5:\"image\";s:0:\"\";s:6:\"active\";s:1:\"1\";}i:1;a:7:{s:4:\"name\";s:14:\"Administration\";s:3:\"url\";s:24:\"{Admin:admin:adminpanel}\";s:5:\"title\";s:29:\"Go to the site administration\";s:5:\"level\";i:0;s:8:\"parentid\";N;s:5:\"image\";s:0:\"\";s:6:\"active\";s:1:\"1\";}i:2;a:7:{s:4:\"name\";s:10:\"My Account\";s:3:\"url\";s:7:\"{Users}\";s:5:\"title\";s:24:\"Go to your account panel\";s:5:\"level\";i:0;s:8:\"parentid\";N;s:5:\"image\";s:0:\"\";s:6:\"active\";s:1:\"1\";}i:3;a:7:{s:4:\"name\";s:7:\"Log out\";s:3:\"url\";s:19:\"{Users:user:logout}\";s:5:\"title\";s:20:\"Log out of this site\";s:5:\"level\";i:0;s:8:\"parentid\";N;s:5:\"image\";s:0:\"\";s:6:\"active\";s:1:\"1\";}i:4;a:7:{s:4:\"name\";s:11:\"Site search\";s:3:\"url\";s:8:\"{Search}\";s:5:\"title\";s:16:\"Search this site\";s:5:\"level\";i:0;s:8:\"parentid\";N;s:5:\"image\";s:0:\"\";s:6:\"active\";s:1:\"1\";}}}}','',3,'',1,1,1,3600,'2011-09-08 11:32:47','');
INSERT INTO `blocks` VALUES (2,'Search','Search box','Search block','a:2:{s:16:\"displaySearchBtn\";i:1;s:6:\"active\";a:3:{s:5:\"Users\";i:1;s:4:\"Clip\";i:1;s:10:\"EZComments\";i:1;}}','',10,'s:7:\"s:0:\"\";\";',1,1,1,3600,'2011-09-08 11:32:47','');
INSERT INTO `blocks` VALUES (3,'Html','This site is powered by Zikula!','HTML block','<p><a href=\"http://zikula.org/\">Zikula</a> is a content management system (CMS) and application framework. It is secure and stable, and is a good choice for sites with a large volume of traffic.</p><p>With Zikula:</p><ul><li>you can customise all aspects of the site\'s appearance through themes, with support for CSS style sheets, JavaScript, Flash and all other modern web development technologies;</li><li>you can mark content as being suitable for either a single language or for all languages, and can control all aspects of localisation and internationalisation of your site;</li><li>you can be sure that your pages will display properly in all browsers, thanks to Zikula\'s full compliance with W3C HTML standards;</li><li>you get a standard application-programming interface (API) that lets you easily augment your site\'s functionality through modules, blocks and other extensions;</li><li>you can get help and support from the Zikula community of webmasters and developers at <a href=\"http://www.zikula.org\">zikula.org</a>.</li></ul><p>Enjoy using Zikula!</p><p><strong>The Zikula team</strong></p><p><em>Note: Zikula is Free Open Source Software (FOSS) licensed under the GNU General Public License.</em></p>','',3,'',0,1,1,3600,'2011-09-08 11:32:47','');
INSERT INTO `blocks` VALUES (4,'Login','User log-in','Login block','','',14,'',1,1,1,3600,'2011-09-08 11:32:47','');
INSERT INTO `blocks` VALUES (5,'Extmenu','Top navigation','Theme navigation','a:5:{s:14:\"displaymodules\";s:1:\"0\";s:10:\"stylesheet\";s:11:\"extmenu.css\";s:8:\"template\";s:31:\"blocks_block_extmenu_topnav.tpl\";s:11:\"blocktitles\";a:1:{s:2:\"en\";s:14:\"Top navigation\";}s:5:\"links\";a:1:{s:2:\"en\";a:3:{i:0;a:7:{s:4:\"name\";s:4:\"Home\";s:3:\"url\";s:10:\"{homepage}\";s:5:\"title\";s:26:\"Go to the site\'s home page\";s:5:\"level\";i:0;s:8:\"parentid\";N;s:5:\"image\";s:0:\"\";s:6:\"active\";s:1:\"1\";}i:1;a:7:{s:4:\"name\";s:10:\"My Account\";s:3:\"url\";s:7:\"{Users}\";s:5:\"title\";s:24:\"Go to your account panel\";s:5:\"level\";i:0;s:8:\"parentid\";N;s:5:\"image\";s:0:\"\";s:6:\"active\";s:1:\"1\";}i:2;a:7:{s:4:\"name\";s:11:\"Site search\";s:3:\"url\";s:8:\"{Search}\";s:5:\"title\";s:16:\"Search this site\";s:5:\"level\";i:0;s:8:\"parentid\";N;s:5:\"image\";s:0:\"\";s:6:\"active\";s:1:\"1\";}}}}','',3,'',1,1,1,3600,'2011-09-08 11:32:47','');

--
-- Table structure for table `categories_category`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '1',
  `is_locked` tinyint(4) NOT NULL DEFAULT '0',
  `is_leaf` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `sort_value` int(11) NOT NULL DEFAULT '2147483647',
  `display_name` longtext NOT NULL,
  `display_desc` longtext NOT NULL,
  `path` longtext NOT NULL,
  `ipath` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_categories_parent` (`parent_id`),
  KEY `idx_categories_is_leaf` (`is_leaf`),
  KEY `idx_categories_name` (`name`),
  KEY `idx_categories_ipath` (`ipath`,`is_leaf`,`status`),
  KEY `idx_categories_status` (`status`),
  KEY `idx_categories_ipath_status` (`ipath`,`status`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories_category`
--

INSERT INTO `categories_category` VALUES (1,0,1,0,'__SYSTEM__','',1,'b:0;','b:0;','/__SYSTEM__','/1','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (2,1,0,0,'Modules','',2,'a:1:{s:2:\"en\";s:7:\"Modules\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules','/1/2','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (3,1,0,0,'General','',3,'a:1:{s:2:\"en\";s:7:\"General\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General','/1/3','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (4,3,0,0,'YesNo','',4,'a:1:{s:2:\"en\";s:6:\"Yes/No\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/YesNo','/1/3/4','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (5,4,0,1,'1 - Yes','Y',5,'b:0;','b:0;','/__SYSTEM__/General/YesNo/1 - Yes','/1/3/4/5','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (6,4,0,1,'2 - No','N',6,'b:0;','b:0;','/__SYSTEM__/General/YesNo/2 - No','/1/3/4/6','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (10,3,0,0,'Publication Status (extended)','',10,'a:1:{s:2:\"en\";s:29:\"Publication status (extended)\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Publication Status Extended','/1/3/10','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (11,10,0,1,'Pending','P',11,'a:1:{s:2:\"en\";s:7:\"Pending\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Publication Status Extended/Pending','/1/3/10/11','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (12,10,0,1,'Checked','C',12,'a:1:{s:2:\"en\";s:7:\"Checked\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Publication Status Extended/Checked','/1/3/10/12','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (13,10,0,1,'Approved','A',13,'a:1:{s:2:\"en\";s:8:\"Approved\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Publication Status Extended/Approved','/1/3/10/13','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (14,10,0,1,'On-line','O',14,'a:1:{s:2:\"en\";s:7:\"On-line\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Publication Status Extended/Online','/1/3/10/14','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (15,10,0,1,'Rejected','R',15,'a:1:{s:2:\"en\";s:8:\"Rejected\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Publication Status Extended/Rejected','/1/3/10/15','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (16,3,0,0,'Gender','',16,'a:1:{s:2:\"en\";s:6:\"Gender\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Gender','/1/3/16','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (17,16,0,1,'Male','M',17,'a:1:{s:2:\"en\";s:4:\"Male\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Gender/Male','/1/3/16/17','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (18,16,0,1,'Female','F',18,'a:1:{s:2:\"en\";s:6:\"Female\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Gender/Female','/1/3/16/18','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (19,3,0,0,'Title','',19,'a:1:{s:2:\"en\";s:5:\"Title\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Title','/1/3/19','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (20,19,0,1,'Mr','Mr',20,'a:1:{s:2:\"en\";s:3:\"Mr.\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Title/Mr','/1/3/19/20','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (21,19,0,1,'Mrs','Mrs',21,'a:1:{s:2:\"en\";s:4:\"Mrs.\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Title/Mrs','/1/3/19/21','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (22,19,0,1,'Ms','Ms',22,'a:1:{s:2:\"en\";s:3:\"Ms.\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Title/Ms','/1/3/19/22','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (23,19,0,1,'Miss','Miss',23,'a:1:{s:2:\"en\";s:4:\"Miss\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Title/Miss','/1/3/19/23','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (24,19,0,1,'Dr','Dr',24,'a:1:{s:2:\"en\";s:3:\"Dr.\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Title/Dr','/1/3/19/24','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (25,3,0,0,'ActiveStatus','',25,'a:1:{s:2:\"en\";s:15:\"Activity status\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/ActiveStatus','/1/3/25','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (26,25,0,1,'Active','A',26,'a:1:{s:2:\"en\";s:6:\"Active\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/ActiveStatus/Active','/1/3/25/26','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (27,25,0,1,'Inactive','I',27,'a:1:{s:2:\"en\";s:8:\"Inactive\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/ActiveStatus/Inactive','/1/3/25/27','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (28,3,0,0,'Publication status (basic)','',28,'a:1:{s:2:\"en\";s:26:\"Publication status (basic)\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Publication Status Basic','/1/3/28','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (29,28,0,1,'Pending','P',29,'a:1:{s:2:\"en\";s:7:\"Pending\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Publication Status Basic/Pending','/1/3/28/29','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (30,28,0,1,'Approved','A',30,'a:1:{s:2:\"en\";s:8:\"Approved\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/General/Publication Status Basic/Approved','/1/3/28/30','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (31,1,0,0,'Users','',31,'a:1:{s:2:\"en\";s:5:\"Users\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Users','/1/31','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (32,2,0,0,'Global','',32,'a:1:{s:2:\"en\";s:6:\"Global\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global','/1/2/32','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (33,32,0,1,'Blogging','',33,'a:1:{s:2:\"en\";s:8:\"Blogging\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global/Blogging','/1/2/32/33','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (34,32,0,1,'Music and audio','',34,'a:1:{s:2:\"en\";s:15:\"Music and audio\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global/MusicAndAudio','/1/2/32/34','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (35,32,0,1,'Art and photography','',35,'a:1:{s:2:\"en\";s:19:\"Art and photography\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global/ArtAndPhotography','/1/2/32/35','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (36,32,0,1,'Writing and thinking','',36,'a:1:{s:2:\"en\";s:20:\"Writing and thinking\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global/WritingAndThinking','/1/2/32/36','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (37,32,0,1,'Communications and media','',37,'a:1:{s:2:\"en\";s:24:\"Communications and media\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global/CommunicationsAndMedia','/1/2/32/37','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (38,32,0,1,'Travel and culture','',38,'a:1:{s:2:\"en\";s:18:\"Travel and culture\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global/TravelAndCulture','/1/2/32/38','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (39,32,0,1,'Science and technology','',39,'a:1:{s:2:\"en\";s:22:\"Science and technology\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global/ScienceAndTechnology','/1/2/32/39','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (40,32,0,1,'Sport and activities','',40,'a:1:{s:2:\"en\";s:20:\"Sport and activities\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global/SportAndActivities','/1/2/32/40','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (41,32,0,1,'Business and work','',41,'a:1:{s:2:\"en\";s:17:\"Business and work\";}','a:1:{s:2:\"en\";s:0:\"\";}','/__SYSTEM__/Modules/Global/BusinessAndWork','/1/2/32/41','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `categories_category` VALUES (10000,2,0,0,'Clip','',2147483647,'a:1:{s:2:\"en\";s:4:\"Clip\";}','a:1:{s:2:\"en\";s:18:\"Clip root category\";}','/__SYSTEM__/Modules/Clip','/1/2/10000','A','A','2011-09-08 11:41:27',2,'2011-09-08 11:41:27',2);
INSERT INTO `categories_category` VALUES (10001,10000,0,0,'Topics','',2147483647,'a:1:{s:2:\"en\";s:6:\"Topics\";}','a:1:{s:2:\"en\";s:32:\"Clip topics for its publications\";}','/__SYSTEM__/Modules/Clip/Topics','/1/2/10000/10001','A','A','2011-09-08 11:41:27',2,'2011-09-08 11:41:27',2);
INSERT INTO `categories_category` VALUES (10002,10001,0,1,'Zikula','',2147483647,'a:1:{s:2:\"en\";s:6:\"Zikula\";}','a:1:{s:2:\"en\";s:27:\"Zikula related publications\";}','/__SYSTEM__/Modules/Clip/Topics/Zikula','/1/2/10000/10001/10002','A','A','2011-09-08 11:41:27',2,'2011-09-08 11:41:27',2);
INSERT INTO `categories_category` VALUES (10003,10001,0,1,'FreeSoftware','',2147483647,'a:1:{s:2:\"en\";s:13:\"Free Software\";}','a:1:{s:2:\"en\";s:34:\"Free software related publications\";}','/__SYSTEM__/Modules/Clip/Topics/FreeSoftware','/1/2/10000/10001/10003','A','A','2011-09-08 11:41:27',2,'2011-09-08 11:41:27',2);
INSERT INTO `categories_category` VALUES (10004,10001,0,1,'Community','',2147483647,'a:1:{s:2:\"en\";s:9:\"Community\";}','a:1:{s:2:\"en\";s:30:\"Community related publications\";}','/__SYSTEM__/Modules/Clip/Topics/Community','/1/2/10000/10001/10004','A','A','2011-09-08 11:41:27',2,'2011-09-08 11:41:27',2);
INSERT INTO `categories_category` VALUES (10005,10001,0,1,'Zikula','',2147483647,'a:1:{s:2:\"en\";s:6:\"Zikula\";}','a:1:{s:2:\"en\";s:27:\"Zikula related publications\";}','/__SYSTEM__/Modules/Clip/Topics/Zikula','/1/2/10000/10001/10005','A','A','2011-09-08 11:41:45',2,'2011-09-08 11:41:45',2);
INSERT INTO `categories_category` VALUES (10006,10001,0,1,'FreeSoftware','',2147483647,'a:1:{s:2:\"en\";s:13:\"Free Software\";}','a:1:{s:2:\"en\";s:34:\"Free software related publications\";}','/__SYSTEM__/Modules/Clip/Topics/FreeSoftware','/1/2/10000/10001/10006','A','A','2011-09-08 11:41:45',2,'2011-09-08 11:41:45',2);
INSERT INTO `categories_category` VALUES (10007,10001,0,1,'Community','',2147483647,'a:1:{s:2:\"en\";s:9:\"Community\";}','a:1:{s:2:\"en\";s:30:\"Community related publications\";}','/__SYSTEM__/Modules/Clip/Topics/Community','/1/2/10000/10001/10007','A','A','2011-09-08 11:41:45',2,'2011-09-08 11:41:45',2);

--
-- Table structure for table `categories_mapmeta`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories_mapmeta` (
  `id` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_categories_mapmeta` (`meta_id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories_mapmeta`
--


--
-- Table structure for table `categories_mapobj`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories_mapobj` (
  `id` int(11) NOT NULL,
  `modname` varchar(60) NOT NULL,
  `tablename` varchar(60) NOT NULL,
  `obj_id` int(11) NOT NULL DEFAULT '0',
  `obj_idcolumn` varchar(60) NOT NULL DEFAULT 'id',
  `reg_id` int(11) NOT NULL DEFAULT '0',
  `reg_property` varchar(60) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_categories_mapobj` (`modname`,`tablename`,`obj_id`,`obj_idcolumn`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories_mapobj`
--


--
-- Table structure for table `categories_registry`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories_registry` (
  `id` int(11) NOT NULL,
  `modname` varchar(60) NOT NULL,
  `tablename` varchar(60) NOT NULL,
  `property` varchar(60) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_categories_registry` (`modname`,`tablename`,`property`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories_registry`
--

INSERT INTO `categories_registry` VALUES (1,'Clip','clip_pubtypes','Global',32,'A','2011-09-08 11:41:27',2,'2011-09-08 11:41:27',2);
INSERT INTO `categories_registry` VALUES (2,'Clip','clip_pubtypes','Topics',10001,'A','2011-09-08 11:41:27',2,'2011-09-08 11:41:27',2);

--
-- Table structure for table `clip_grouptypes`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `clip_grouptypes` (
  `gid` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `sortorder` text NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`gid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `clip_grouptypes`
--

INSERT INTO `clip_grouptypes` VALUES (1,'s:8:\"__ROOT__\";','a:0:{}','a:0:{}',1,6,0);
INSERT INTO `clip_grouptypes` VALUES (2,'a:1:{s:2:\"en\";s:8:\"Contents\";}','a:1:{s:2:\"en\";s:34:\"Publication contents of this site.\";}','a:0:{}',4,5,1);
INSERT INTO `clip_grouptypes` VALUES (3,'s:8:\"__ROOT__\";','a:0:{}','a:0:{}',1,4,0);
INSERT INTO `clip_grouptypes` VALUES (4,'a:1:{s:2:\"en\";s:8:\"Contents\";}','a:1:{s:2:\"en\";s:34:\"Publication contents of this site.\";}','a:0:{}',2,3,1);

--
-- Table structure for table `clip_pubdata1`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `clip_pubdata1` (
  `pid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `hits` bigint(20) DEFAULT '0',
  `language` varchar(10) NOT NULL,
  `revision` int(11) NOT NULL DEFAULT '1',
  `online` tinyint(1) DEFAULT '0',
  `intrash` tinyint(1) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `locked` tinyint(1) DEFAULT '0',
  `publishdate` datetime DEFAULT NULL,
  `expiredate` datetime DEFAULT NULL,
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  `field1` varchar(255) DEFAULT NULL,
  `field2` text,
  `field3` text,
  `field4` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `clip_pubdata1`
--

INSERT INTO `clip_pubdata1` VALUES (1,1,2,9,'',1,1,0,1,0,'2011-09-08 11:54:41',NULL,'A','2011-09-08 11:54:41',2,'2011-09-08 11:54:41',2,'Hello world!','This is your first blog post.','',33);

--
-- Table structure for table `clip_pubdata2`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `clip_pubdata2` (
  `pid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `hits` bigint(20) DEFAULT '0',
  `language` varchar(10) NOT NULL,
  `revision` int(11) NOT NULL DEFAULT '1',
  `online` tinyint(1) DEFAULT '0',
  `intrash` tinyint(1) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `locked` tinyint(1) DEFAULT '0',
  `publishdate` datetime DEFAULT NULL,
  `expiredate` datetime DEFAULT NULL,
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  `field5` varchar(255) DEFAULT NULL,
  `field6` int(11) DEFAULT NULL,
  `field7` text,
  `field8` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `clip_pubdata2`
--

INSERT INTO `clip_pubdata2` VALUES (1,1,2,21,'',3,1,0,1,0,'2011-01-01 00:00:00',NULL,'A','2011-09-08 11:41:46',2,'2011-09-08 11:41:46',2,'About Clip Static Pages',0,'<p>As you may know, Clip can handle multiple purpose applications through its publication types. This default Pages publication type shows how it can be useful to manage the static pages of your site.\n</p>\n<p>The default fields defined are as follows:\n</p>\n<ul>\n  <li>a title (string),</li>\n  <li>the page\'s content (text),</li>\n  <li>a category (list),</li>\n  <li>and even a config option (checkbox)</li>\n</ul>\n<p>The default templates are examples of how you can structure your publication type to fit your needs, in this case, a three step navigation: initially showing a list with the available categories (list.tpl), to present a list with the available pages inside one of them (list_category.tpl), and finally display the page (display.tpl).\n</p>\n<p> The list_category.tpl template has some logic on it to resolve the title depending on the filter used.\n  <br />\n</p>\n<p>The edit form is also customized to look pretty like the one of the Pages module.\n</p>\n<p>Hope that his example be useful to you.\n  <br /> Enjoy the possibilities!\n</p>\n<p>(this is pre-release content, to be enriched with users’ feedback)\n</p>',1);
INSERT INTO `clip_pubdata2` VALUES (2,2,2,4,'',0,1,0,1,0,'2011-01-01 00:00:00',NULL,'A','2011-09-08 11:41:46',2,'2011-09-08 11:41:46',2,'About Us',0,'<p>This is a temptative About Us page for your site.</p>\n\n<p>You can enrich it easily with the help of Scribite and its WYSIWYG editors. By default, the content (a text field) have enabled the use of Scribite on its config, but it requires the module installed on the site to work.</p>',1);

--
-- Table structure for table `clip_pubfields`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `clip_pubfields` (
  `id` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `plugin` varchar(50) NOT NULL DEFAULT '',
  `config` text,
  `fielddbtype` varchar(50) NOT NULL DEFAULT '',
  `fieldmaxlength` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_title` tinyint(1) NOT NULL DEFAULT '0',
  `is_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `is_searchable` tinyint(1) NOT NULL DEFAULT '0',
  `is_filterable` tinyint(1) NOT NULL DEFAULT '0',
  `is_pageable` tinyint(1) NOT NULL DEFAULT '0',
  `is_counter` tinyint(1) NOT NULL DEFAULT '0',
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `clip_pubfields`
--

INSERT INTO `clip_pubfields` VALUES (1,1,'title','Title','Enter title here','String','','C(255)',NULL,1,1,1,1,1,0,0,'A','2011-09-08 11:41:28',2,'2011-09-08 11:41:28',2);
INSERT INTO `clip_pubfields` VALUES (2,1,'content','Content','','Text','1','C(65535)',NULL,2,0,0,1,0,0,0,'A','2011-09-08 11:41:28',2,'2011-09-08 11:41:28',2);
INSERT INTO `clip_pubfields` VALUES (3,1,'summary','Summary','Optional hand-crafted summary of your content that can be used in your templates.','Text','0','C(65535)',NULL,3,0,0,0,0,0,0,'A','2011-09-08 11:41:28',2,'2011-09-08 11:41:28',2);
INSERT INTO `clip_pubfields` VALUES (4,1,'category','Category','','List',',1,0','I4',NULL,4,0,0,0,1,0,0,'A','2011-09-08 11:41:28',2,'2011-09-08 11:41:28',2);
INSERT INTO `clip_pubfields` VALUES (5,2,'title','Title','','String','','C(255)',NULL,1,1,1,1,1,0,0,'A','2011-09-08 11:41:45',2,'2011-09-08 11:41:45',2);
INSERT INTO `clip_pubfields` VALUES (6,2,'category','Category','','List',',1,0','I4',NULL,2,0,0,0,1,0,0,'A','2011-09-08 11:41:46',2,'2011-09-08 11:41:46',2);
INSERT INTO `clip_pubfields` VALUES (7,2,'content','Content','','Text','1','C(65535)',NULL,3,0,0,1,0,0,0,'A','2011-09-08 11:41:46',2,'2011-09-08 11:41:46',2);
INSERT INTO `clip_pubfields` VALUES (8,2,'displayinfo','Display page information','','Checkbox','','L',NULL,4,0,0,0,0,0,0,'A','2011-09-08 11:41:46',2,'2011-09-08 11:41:46',2);

--
-- Table structure for table `clip_pubtypes`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `clip_pubtypes` (
  `tid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `urltitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `fixedfilter` varchar(255) DEFAULT NULL,
  `defaultfilter` varchar(255) DEFAULT NULL,
  `itemsperpage` int(11) NOT NULL DEFAULT '15',
  `cachelifetime` bigint(20) NOT NULL DEFAULT '0',
  `sortfield1` varchar(255) DEFAULT NULL,
  `sortdesc1` tinyint(1) DEFAULT NULL,
  `sortfield2` varchar(255) DEFAULT NULL,
  `sortdesc2` tinyint(1) DEFAULT NULL,
  `sortfield3` varchar(255) DEFAULT NULL,
  `sortdesc3` tinyint(1) DEFAULT NULL,
  `enableeditown` tinyint(1) NOT NULL DEFAULT '0',
  `enablerevisions` tinyint(1) NOT NULL DEFAULT '0',
  `folder` varchar(255) NOT NULL DEFAULT '',
  `workflow` varchar(255) NOT NULL DEFAULT '',
  `grouptype` int(11) DEFAULT NULL,
  `config` text,
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `clip_pubtypes`
--

INSERT INTO `clip_pubtypes` VALUES (1,'Blog','blog','Express yourself!',NULL,'',10,0,'',0,'',0,'',0,0,0,'blog','standard.xml',4,'a:3:{s:4:\"view\";a:6:{s:4:\"load\";b:0;s:7:\"onlyown\";b:1;s:11:\"processrefs\";b:0;s:9:\"checkperm\";b:0;s:13:\"handleplugins\";b:0;s:12:\"loadworkflow\";b:0;}s:7:\"display\";a:6:{s:4:\"load\";b:1;s:7:\"onlyown\";b:1;s:11:\"processrefs\";b:1;s:9:\"checkperm\";b:1;s:13:\"handleplugins\";b:0;s:12:\"loadworkflow\";b:0;}s:4:\"edit\";a:2:{s:4:\"load\";b:1;s:7:\"onlyown\";b:1;}}','A','2011-09-08 11:41:28',2,'2011-09-08 11:41:45',2);
INSERT INTO `clip_pubtypes` VALUES (2,'Pages','staticpages','Static pages of the site',NULL,'',25,0,'',0,'',0,'',0,0,0,'pages','none.xml',2,'a:3:{s:4:\"view\";a:6:{s:4:\"load\";b:0;s:7:\"onlyown\";b:1;s:11:\"processrefs\";b:0;s:9:\"checkperm\";b:0;s:13:\"handleplugins\";b:0;s:12:\"loadworkflow\";b:0;}s:7:\"display\";a:6:{s:4:\"load\";b:0;s:7:\"onlyown\";b:1;s:11:\"processrefs\";b:1;s:9:\"checkperm\";b:1;s:13:\"handleplugins\";b:0;s:12:\"loadworkflow\";b:0;}s:4:\"edit\";a:1:{s:7:\"onlyown\";b:1;}}','A','2011-09-08 11:41:45',2,'2011-09-08 11:41:45',2);

--
-- Table structure for table `clip_relations`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `clip_relations` (
  `id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT '1',
  `tid1` int(11) DEFAULT NULL,
  `alias1` varchar(100) DEFAULT NULL,
  `title1` varchar(100) DEFAULT NULL,
  `desc1` text,
  `tid2` int(11) DEFAULT NULL,
  `alias2` varchar(100) DEFAULT NULL,
  `title2` varchar(100) DEFAULT NULL,
  `desc2` text,
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `clip_relations`
--


--
-- Table structure for table `clip_workflowvars`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `clip_workflowvars` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL DEFAULT '0',
  `workflow` varchar(255) NOT NULL DEFAULT '',
  `setting` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `clip_workflowvars`
--


--
-- Table structure for table `ezcomments`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ezcomments` (
  `id` int(11) NOT NULL,
  `modname` varchar(64) NOT NULL,
  `objectid` varchar(255) NOT NULL,
  `areaid` int(11) NOT NULL DEFAULT '0',
  `url` longtext NOT NULL,
  `date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `uid` int(11) NOT NULL DEFAULT '0',
  `owneruid` int(11) NOT NULL DEFAULT '0',
  `comment` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `replyto` int(11) NOT NULL DEFAULT '0',
  `anonname` varchar(255) NOT NULL,
  `anonmail` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `ipaddr` varchar(85) NOT NULL,
  `type` varchar(64) NOT NULL,
  `anonwebsite` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modobj` (`modname`,`objectid`),
  KEY `modname` (`modname`),
  KEY `objectid` (`objectid`),
  KEY `uid` (`uid`),
  KEY `ownerid` (`owneruid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ezcomments`
--


--
-- Table structure for table `group_applications`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `group_applications` (
  `app_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `application` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`app_id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `group_applications`
--


--
-- Table structure for table `group_membership`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `group_membership` (
  `gid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  KEY `gid_uid` (`uid`,`gid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `group_membership`
--

INSERT INTO `group_membership` VALUES (1,1);
INSERT INTO `group_membership` VALUES (1,2);
INSERT INTO `group_membership` VALUES (2,2);

--
-- Table structure for table `group_perms`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `group_perms` (
  `pid` int(11) NOT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `sequence` int(11) NOT NULL DEFAULT '0',
  `realm` int(11) NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `bond` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `group_perms`
--

INSERT INTO `group_perms` VALUES (1,2,1,0,'.*','.*',800,0);
INSERT INTO `group_perms` VALUES (2,-1,2,0,'ExtendedMenublock::','1:1:',0,0);
INSERT INTO `group_perms` VALUES (3,1,3,0,'.*','.*',300,0);
INSERT INTO `group_perms` VALUES (4,0,4,0,'ExtendedMenublock::','1:(1|2|3):',0,0);
INSERT INTO `group_perms` VALUES (5,0,5,0,'.*','.*',200,0);

--
-- Table structure for table `groups`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `groups` (
  `gid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gtype` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL,
  `prefix` varchar(25) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `nbuser` int(11) NOT NULL DEFAULT '0',
  `nbumax` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `uidmaster` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` VALUES (1,'Users',0,'By default, all users are made members of this group.','usr',0,0,0,0,0);
INSERT INTO `groups` VALUES (2,'Administrators',0,'Group of administrators of this site.','adm',0,0,0,0,0);

--
-- Table structure for table `hook_area`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hook_area` (
  `id` int(11) NOT NULL,
  `owner` varchar(40) NOT NULL,
  `subowner` varchar(40) DEFAULT NULL,
  `areatype` varchar(1) NOT NULL,
  `category` varchar(20) NOT NULL,
  `areaname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `areaidx` (`areaname`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hook_area`
--

INSERT INTO `hook_area` VALUES (1,'Users',NULL,'s','ui_hooks','subscriber.users.ui_hooks.user');
INSERT INTO `hook_area` VALUES (2,'Users',NULL,'s','ui_hooks','subscriber.users.ui_hooks.registration');
INSERT INTO `hook_area` VALUES (3,'Users',NULL,'s','ui_hooks','subscriber.users.ui_hooks.login_screen');
INSERT INTO `hook_area` VALUES (4,'Users',NULL,'s','ui_hooks','subscriber.users.ui_hooks.login_block');
INSERT INTO `hook_area` VALUES (5,'Clip',NULL,'s','ui_hooks','subscriber.ui_hooks.clip.pubtype1');
INSERT INTO `hook_area` VALUES (6,'Clip',NULL,'s','filter_hooks','subscriber.filter_hooks.clip.pubtype1');
INSERT INTO `hook_area` VALUES (7,'Clip',NULL,'s','ui_hooks','subscriber.ui_hooks.clip.pubtype2');
INSERT INTO `hook_area` VALUES (8,'Clip',NULL,'s','filter_hooks','subscriber.filter_hooks.clip.pubtype2');
INSERT INTO `hook_area` VALUES (9,'EZComments',NULL,'s','ui_hooks','subscriber.ezcomments.ui_hooks.comments');
INSERT INTO `hook_area` VALUES (10,'EZComments',NULL,'s','filter_hooks','subscriber.ezcomments.filter_hooks.comments');
INSERT INTO `hook_area` VALUES (11,'EZComments',NULL,'p','ui_hooks','provider.ezcomments.ui_hooks.comments');
INSERT INTO `hook_area` VALUES (12,'Captcha',NULL,'p','ui_hooks','provider.captcha.ui_hooks.service');

--
-- Table structure for table `hook_binding`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hook_binding` (
  `id` int(11) NOT NULL,
  `sowner` varchar(40) NOT NULL,
  `subsowner` varchar(40) DEFAULT NULL,
  `powner` varchar(40) NOT NULL,
  `subpowner` varchar(40) DEFAULT NULL,
  `sareaid` int(11) NOT NULL,
  `pareaid` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `sortorder` smallint(6) NOT NULL DEFAULT '999',
  PRIMARY KEY (`id`),
  KEY `sortidx` (`sareaid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hook_binding`
--

INSERT INTO `hook_binding` VALUES (2,'Clip',NULL,'EZComments',NULL,5,11,'ui_hooks',999);

--
-- Table structure for table `hook_provider`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hook_provider` (
  `id` int(11) NOT NULL,
  `owner` varchar(40) NOT NULL,
  `subowner` varchar(40) DEFAULT NULL,
  `pareaid` int(11) NOT NULL,
  `hooktype` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `method` varchar(20) NOT NULL,
  `serviceid` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nameidx` (`pareaid`,`hooktype`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hook_provider`
--

INSERT INTO `hook_provider` VALUES (1,'EZComments',NULL,11,'display_view','ui_hooks','EZComments_HookHandlers','uiView','ezcomments.hooks.comments');
INSERT INTO `hook_provider` VALUES (2,'EZComments',NULL,11,'process_edit','ui_hooks','EZComments_HookHandlers','processEdit','ezcomments.hooks.comments');
INSERT INTO `hook_provider` VALUES (3,'EZComments',NULL,11,'process_delete','ui_hooks','EZComments_HookHandlers','processDelete','ezcomments.hooks.comments');
INSERT INTO `hook_provider` VALUES (4,'Captcha',NULL,12,'form_edit','ui_hooks','Captcha_HookHandlers','uiEdit','captcha.service');
INSERT INTO `hook_provider` VALUES (5,'Captcha',NULL,12,'validate_edit','ui_hooks','Captcha_HookHandlers','validateEdit','captcha.service');

--
-- Table structure for table `hook_runtime`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hook_runtime` (
  `id` int(11) NOT NULL,
  `sowner` varchar(40) NOT NULL,
  `subsowner` varchar(40) DEFAULT NULL,
  `powner` varchar(40) NOT NULL,
  `subpowner` varchar(40) DEFAULT NULL,
  `sareaid` int(11) NOT NULL,
  `pareaid` int(11) NOT NULL,
  `eventname` varchar(100) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `method` varchar(20) NOT NULL,
  `serviceid` varchar(60) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hook_runtime`
--

INSERT INTO `hook_runtime` VALUES (2,'Clip',NULL,'EZComments',NULL,5,11,'clip.ui_hooks.pubtype1.display_view','EZComments_HookHandlers','uiView','ezcomments.hooks.comments',10);
INSERT INTO `hook_runtime` VALUES (3,'Clip',NULL,'EZComments',NULL,5,11,'clip.ui_hooks.pubtype1.process_edit','EZComments_HookHandlers','processEdit','ezcomments.hooks.comments',10);
INSERT INTO `hook_runtime` VALUES (4,'Clip',NULL,'EZComments',NULL,5,11,'clip.ui_hooks.pubtype1.process_delete','EZComments_HookHandlers','processDelete','ezcomments.hooks.comments',10);

--
-- Table structure for table `hook_subscriber`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hook_subscriber` (
  `id` int(11) NOT NULL,
  `owner` varchar(40) NOT NULL,
  `subowner` varchar(40) DEFAULT NULL,
  `sareaid` int(11) NOT NULL,
  `hooktype` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `eventname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myindex` (`eventname`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hook_subscriber`
--

INSERT INTO `hook_subscriber` VALUES (1,'Users',NULL,1,'display_view','ui_hooks','users.ui_hooks.user.display_view');
INSERT INTO `hook_subscriber` VALUES (2,'Users',NULL,1,'form_edit','ui_hooks','users.ui_hooks.user.form_edit');
INSERT INTO `hook_subscriber` VALUES (3,'Users',NULL,1,'validate_edit','ui_hooks','users.ui_hooks.user.validate_edit');
INSERT INTO `hook_subscriber` VALUES (4,'Users',NULL,1,'process_edit','ui_hooks','users.ui_hooks.user.process_edit');
INSERT INTO `hook_subscriber` VALUES (5,'Users',NULL,1,'form_delete','ui_hooks','users.ui_hooks.user.form_delete');
INSERT INTO `hook_subscriber` VALUES (6,'Users',NULL,1,'validate_delete','ui_hooks','users.ui_hooks.user.validate_delete');
INSERT INTO `hook_subscriber` VALUES (7,'Users',NULL,1,'process_delete','ui_hooks','users.ui_hooks.user.process_delete');
INSERT INTO `hook_subscriber` VALUES (8,'Users',NULL,2,'display_view','ui_hooks','users.ui_hooks.registration.display_view');
INSERT INTO `hook_subscriber` VALUES (9,'Users',NULL,2,'form_edit','ui_hooks','users.ui_hooks.registration.form_edit');
INSERT INTO `hook_subscriber` VALUES (10,'Users',NULL,2,'validate_edit','ui_hooks','users.ui_hooks.registration.validate_edit');
INSERT INTO `hook_subscriber` VALUES (11,'Users',NULL,2,'process_edit','ui_hooks','users.ui_hooks.registration.process_edit');
INSERT INTO `hook_subscriber` VALUES (12,'Users',NULL,2,'form_delete','ui_hooks','users.ui_hooks.registration.form_delete');
INSERT INTO `hook_subscriber` VALUES (13,'Users',NULL,2,'validate_delete','ui_hooks','users.ui_hooks.registration.validate_delete');
INSERT INTO `hook_subscriber` VALUES (14,'Users',NULL,2,'process_delete','ui_hooks','users.ui_hooks.registration.process_delete');
INSERT INTO `hook_subscriber` VALUES (15,'Users',NULL,3,'form_edit','ui_hooks','users.ui_hooks.login_screen.form_edit');
INSERT INTO `hook_subscriber` VALUES (16,'Users',NULL,3,'validate_edit','ui_hooks','users.ui_hooks.login_screen.validate_edit');
INSERT INTO `hook_subscriber` VALUES (17,'Users',NULL,3,'process_edit','ui_hooks','users.ui_hooks.login_screen.process_edit');
INSERT INTO `hook_subscriber` VALUES (18,'Users',NULL,4,'form_edit','ui_hooks','users.ui_hooks.login_block.form_edit');
INSERT INTO `hook_subscriber` VALUES (19,'Users',NULL,4,'validate_edit','ui_hooks','users.ui_hooks.login_block.validate_edit');
INSERT INTO `hook_subscriber` VALUES (20,'Users',NULL,4,'process_edit','ui_hooks','users.ui_hooks.login_block.process_edit');
INSERT INTO `hook_subscriber` VALUES (21,'Clip',NULL,5,'display_view','ui_hooks','clip.ui_hooks.pubtype1.display_view');
INSERT INTO `hook_subscriber` VALUES (22,'Clip',NULL,5,'form_edit','ui_hooks','clip.ui_hooks.pubtype1.form_edit');
INSERT INTO `hook_subscriber` VALUES (23,'Clip',NULL,5,'form_delete','ui_hooks','clip.ui_hooks.pubtype1.form_delete');
INSERT INTO `hook_subscriber` VALUES (24,'Clip',NULL,5,'validate_edit','ui_hooks','clip.ui_hooks.pubtype1.validate_edit');
INSERT INTO `hook_subscriber` VALUES (25,'Clip',NULL,5,'validate_delete','ui_hooks','clip.ui_hooks.pubtype1.validate_delete');
INSERT INTO `hook_subscriber` VALUES (26,'Clip',NULL,5,'process_edit','ui_hooks','clip.ui_hooks.pubtype1.process_edit');
INSERT INTO `hook_subscriber` VALUES (27,'Clip',NULL,5,'process_delete','ui_hooks','clip.ui_hooks.pubtype1.process_delete');
INSERT INTO `hook_subscriber` VALUES (28,'Clip',NULL,6,'filter','filter_hooks','clip.filter_hooks.pubtype1.filter');
INSERT INTO `hook_subscriber` VALUES (29,'Clip',NULL,7,'display_view','ui_hooks','clip.ui_hooks.pubtype2.display_view');
INSERT INTO `hook_subscriber` VALUES (30,'Clip',NULL,7,'form_edit','ui_hooks','clip.ui_hooks.pubtype2.form_edit');
INSERT INTO `hook_subscriber` VALUES (31,'Clip',NULL,7,'form_delete','ui_hooks','clip.ui_hooks.pubtype2.form_delete');
INSERT INTO `hook_subscriber` VALUES (32,'Clip',NULL,7,'validate_edit','ui_hooks','clip.ui_hooks.pubtype2.validate_edit');
INSERT INTO `hook_subscriber` VALUES (33,'Clip',NULL,7,'validate_delete','ui_hooks','clip.ui_hooks.pubtype2.validate_delete');
INSERT INTO `hook_subscriber` VALUES (34,'Clip',NULL,7,'process_edit','ui_hooks','clip.ui_hooks.pubtype2.process_edit');
INSERT INTO `hook_subscriber` VALUES (35,'Clip',NULL,7,'process_delete','ui_hooks','clip.ui_hooks.pubtype2.process_delete');
INSERT INTO `hook_subscriber` VALUES (36,'Clip',NULL,8,'filter','filter_hooks','clip.filter_hooks.pubtype2.filter');
INSERT INTO `hook_subscriber` VALUES (37,'EZComments',NULL,9,'ui_view','ui_hooks','ezcomments.ui_hooks.comments.ui_view');
INSERT INTO `hook_subscriber` VALUES (38,'EZComments',NULL,9,'ui_edit','ui_hooks','ezcomments.ui_hooks.comments.ui_edit');
INSERT INTO `hook_subscriber` VALUES (39,'EZComments',NULL,9,'validate_edit','ui_hooks','ezcomments.ui_hooks.comments.validate_edit');
INSERT INTO `hook_subscriber` VALUES (40,'EZComments',NULL,9,'validate_delete','ui_hooks','ezcomments.ui_hooks.comments.validate_delete');
INSERT INTO `hook_subscriber` VALUES (41,'EZComments',NULL,9,'process_edit','ui_hooks','ezcomments.ui_hooks.comments.process_edit');
INSERT INTO `hook_subscriber` VALUES (42,'EZComments',NULL,9,'process_delete','ui_hooks','ezcomments.ui_hooks.comments.process_delete');
INSERT INTO `hook_subscriber` VALUES (43,'EZComments',NULL,10,'filter','filter_hooks','ezcomments.filter_hooks.comments.filter');

--
-- Table structure for table `hooks`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hooks` (
  `id` int(11) NOT NULL,
  `object` varchar(64) NOT NULL,
  `action` varchar(64) NOT NULL,
  `smodule` varchar(64) NOT NULL,
  `stype` varchar(64) NOT NULL,
  `tarea` varchar(64) NOT NULL,
  `tmodule` varchar(64) NOT NULL,
  `ttype` varchar(64) NOT NULL,
  `tfunc` varchar(64) NOT NULL,
  `sequence` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `smodule` (`smodule`),
  KEY `smodule_tmodule` (`smodule`,`tmodule`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hooks`
--


--
-- Table structure for table `module_deps`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `module_deps` (
  `id` int(11) NOT NULL,
  `modid` int(11) NOT NULL DEFAULT '0',
  `modname` varchar(64) NOT NULL,
  `minversion` varchar(10) NOT NULL,
  `maxversion` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `module_deps`
--

INSERT INTO `module_deps` VALUES (31,16,'Scribite','4.2.1','',2);
INSERT INTO `module_deps` VALUES (32,16,'Thumbnail','1.4.0','',2);
INSERT INTO `module_deps` VALUES (33,17,'Akismet','2.0','',2);

--
-- Table structure for table `module_vars`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `module_vars` (
  `id` int(11) NOT NULL,
  `modname` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `mod_var` (`modname`,`name`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `module_vars`
--

INSERT INTO `module_vars` VALUES (1,'/EventHandlers','Extensions','a:2:{i:0;a:3:{s:9:\"eventname\";s:27:\"controller.method_not_found\";s:8:\"callable\";a:2:{i:0;s:17:\"Extensions_HookUI\";i:1;s:5:\"hooks\";}s:6:\"weight\";i:10;}i:1;a:3:{s:9:\"eventname\";s:27:\"controller.method_not_found\";s:8:\"callable\";a:2:{i:0;s:17:\"Extensions_HookUI\";i:1;s:14:\"moduleservices\";}s:6:\"weight\";i:10;}}');
INSERT INTO `module_vars` VALUES (2,'Extensions','itemsperpage','i:25;');
INSERT INTO `module_vars` VALUES (3,'ZConfig','debug','s:1:\"0\";');
INSERT INTO `module_vars` VALUES (4,'ZConfig','sitename','s:9:\"Site name\";');
INSERT INTO `module_vars` VALUES (5,'ZConfig','slogan','s:16:\"Site description\";');
INSERT INTO `module_vars` VALUES (6,'ZConfig','metakeywords','s:237:\"zikula, portal, portal web, open source, web site, website, weblog, blog, content management, content management system, web content management, web content management system, enterprise web content management, cms, application framework\";');
INSERT INTO `module_vars` VALUES (7,'ZConfig','defaultpagetitle','s:9:\"Site name\";');
INSERT INTO `module_vars` VALUES (8,'ZConfig','defaultmetadescription','s:16:\"Site description\";');
INSERT INTO `module_vars` VALUES (9,'ZConfig','startdate','s:7:\"09/2011\";');
INSERT INTO `module_vars` VALUES (10,'ZConfig','adminmail','s:19:\"example@example.com\";');
INSERT INTO `module_vars` VALUES (11,'ZConfig','Default_Theme','s:9:\"Andreas08\";');
INSERT INTO `module_vars` VALUES (12,'ZConfig','timezone_offset','s:1:\"0\";');
INSERT INTO `module_vars` VALUES (13,'ZConfig','timezone_server','s:1:\"0\";');
INSERT INTO `module_vars` VALUES (14,'ZConfig','funtext','s:1:\"1\";');
INSERT INTO `module_vars` VALUES (15,'ZConfig','reportlevel','s:1:\"0\";');
INSERT INTO `module_vars` VALUES (16,'ZConfig','startpage','s:4:\"Clip\";');
INSERT INTO `module_vars` VALUES (17,'ZConfig','Version_Num','s:9:\"1.3.1-dev\";');
INSERT INTO `module_vars` VALUES (18,'ZConfig','Version_ID','s:6:\"Zikula\";');
INSERT INTO `module_vars` VALUES (19,'ZConfig','Version_Sub','s:3:\"vai\";');
INSERT INTO `module_vars` VALUES (20,'ZConfig','debug_sql','s:1:\"0\";');
INSERT INTO `module_vars` VALUES (21,'ZConfig','multilingual','s:1:\"1\";');
INSERT INTO `module_vars` VALUES (22,'ZConfig','useflags','s:1:\"0\";');
INSERT INTO `module_vars` VALUES (23,'ZConfig','theme_change','s:1:\"0\";');
INSERT INTO `module_vars` VALUES (24,'ZConfig','UseCompression','s:1:\"0\";');
INSERT INTO `module_vars` VALUES (25,'ZConfig','siteoff','i:0;');
INSERT INTO `module_vars` VALUES (26,'ZConfig','siteoffreason','s:0:\"\";');
INSERT INTO `module_vars` VALUES (27,'ZConfig','starttype','s:4:\"user\";');
INSERT INTO `module_vars` VALUES (28,'ZConfig','startfunc','s:7:\"display\";');
INSERT INTO `module_vars` VALUES (29,'ZConfig','startargs','s:11:\"tid=1,pid=1\";');
INSERT INTO `module_vars` VALUES (30,'ZConfig','entrypoint','s:9:\"index.php\";');
INSERT INTO `module_vars` VALUES (31,'ZConfig','language_detect','i:0;');
INSERT INTO `module_vars` VALUES (32,'ZConfig','shorturls','s:1:\"1\";');
INSERT INTO `module_vars` VALUES (33,'ZConfig','shorturlstype','s:1:\"0\";');
INSERT INTO `module_vars` VALUES (34,'ZConfig','shorturlsseparator','s:1:\"-\";');
INSERT INTO `module_vars` VALUES (35,'ZConfig','shorturlsstripentrypoint','s:1:\"1\";');
INSERT INTO `module_vars` VALUES (36,'ZConfig','shorturlsdefaultmodule','s:4:\"Clip\";');
INSERT INTO `module_vars` VALUES (37,'ZConfig','profilemodule','s:0:\"\";');
INSERT INTO `module_vars` VALUES (38,'ZConfig','messagemodule','s:0:\"\";');
INSERT INTO `module_vars` VALUES (39,'ZConfig','languageurl','i:0;');
INSERT INTO `module_vars` VALUES (40,'ZConfig','ajaxtimeout','i:5000;');
INSERT INTO `module_vars` VALUES (41,'ZConfig','permasearch','s:161:\"À,Á,Â,Ã,Å,à,á,â,ã,å,Ò,Ó,Ô,Õ,Ø,ò,ó,ô,õ,ø,È,É,Ê,Ë,è,é,ê,ë,Ç,ç,Ì,Í,Î,Ï,ì,í,î,ï,Ù,Ú,Û,ù,ú,û,ÿ,Ñ,ñ,ß,ä,Ä,ö,Ö,ü,Ü\";');
INSERT INTO `module_vars` VALUES (42,'ZConfig','permareplace','s:114:\"A,A,A,A,A,a,a,a,a,a,O,O,O,O,O,o,o,o,o,o,E,E,E,E,e,e,e,e,C,c,I,I,I,I,i,i,i,i,U,U,U,u,u,u,y,N,n,ss,ae,Ae,oe,Oe,ue,Ue\";');
INSERT INTO `module_vars` VALUES (43,'ZConfig','language','s:3:\"eng\";');
INSERT INTO `module_vars` VALUES (44,'ZConfig','locale','s:2:\"en\";');
INSERT INTO `module_vars` VALUES (45,'ZConfig','language_i18n','s:2:\"en\";');
INSERT INTO `module_vars` VALUES (46,'ZConfig','idnnames','i:1;');
INSERT INTO `module_vars` VALUES (47,'Theme','modulesnocache','s:0:\"\";');
INSERT INTO `module_vars` VALUES (48,'Theme','enablecache','b:0;');
INSERT INTO `module_vars` VALUES (49,'Theme','compile_check','b:1;');
INSERT INTO `module_vars` VALUES (50,'Theme','cache_lifetime','i:1800;');
INSERT INTO `module_vars` VALUES (51,'Theme','force_compile','b:0;');
INSERT INTO `module_vars` VALUES (52,'Theme','trimwhitespace','b:0;');
INSERT INTO `module_vars` VALUES (53,'Theme','maxsizeforlinks','i:30;');
INSERT INTO `module_vars` VALUES (54,'Theme','itemsperpage','i:25;');
INSERT INTO `module_vars` VALUES (55,'Theme','cssjscombine','b:0;');
INSERT INTO `module_vars` VALUES (56,'Theme','cssjscompress','b:0;');
INSERT INTO `module_vars` VALUES (57,'Theme','cssjsminify','b:0;');
INSERT INTO `module_vars` VALUES (58,'Theme','cssjscombine_lifetime','i:3600;');
INSERT INTO `module_vars` VALUES (59,'Theme','render_compile_check','b:1;');
INSERT INTO `module_vars` VALUES (60,'Theme','render_force_compile','b:1;');
INSERT INTO `module_vars` VALUES (61,'Theme','render_cache','b:0;');
INSERT INTO `module_vars` VALUES (62,'Theme','render_expose_template','b:0;');
INSERT INTO `module_vars` VALUES (63,'Theme','render_lifetime','i:3600;');
INSERT INTO `module_vars` VALUES (64,'Admin','modulesperrow','i:3;');
INSERT INTO `module_vars` VALUES (65,'Admin','itemsperpage','i:15;');
INSERT INTO `module_vars` VALUES (66,'Admin','defaultcategory','i:5;');
INSERT INTO `module_vars` VALUES (67,'Admin','modulestylesheet','s:11:\"navtabs.css\";');
INSERT INTO `module_vars` VALUES (68,'Admin','admingraphic','i:1;');
INSERT INTO `module_vars` VALUES (69,'Admin','startcategory','i:1;');
INSERT INTO `module_vars` VALUES (70,'Admin','ignoreinstallercheck','i:0;');
INSERT INTO `module_vars` VALUES (71,'Admin','admintheme','s:0:\"\";');
INSERT INTO `module_vars` VALUES (72,'Admin','displaynametype','i:1;');
INSERT INTO `module_vars` VALUES (73,'Permissions','filter','i:1;');
INSERT INTO `module_vars` VALUES (74,'Permissions','warnbar','i:1;');
INSERT INTO `module_vars` VALUES (75,'Permissions','rowview','i:20;');
INSERT INTO `module_vars` VALUES (76,'Permissions','rowedit','i:20;');
INSERT INTO `module_vars` VALUES (77,'Permissions','lockadmin','i:1;');
INSERT INTO `module_vars` VALUES (78,'Permissions','adminid','i:1;');
INSERT INTO `module_vars` VALUES (79,'Groups','itemsperpage','i:25;');
INSERT INTO `module_vars` VALUES (80,'Groups','defaultgroup','i:1;');
INSERT INTO `module_vars` VALUES (81,'Groups','mailwarning','i:0;');
INSERT INTO `module_vars` VALUES (82,'Groups','hideclosed','i:0;');
INSERT INTO `module_vars` VALUES (83,'Groups','primaryadmingroup','i:2;');
INSERT INTO `module_vars` VALUES (84,'Blocks','collapseable','i:0;');
INSERT INTO `module_vars` VALUES (85,'Users','accountdisplaygraphics','b:1;');
INSERT INTO `module_vars` VALUES (86,'Users','accountitemsperpage','i:25;');
INSERT INTO `module_vars` VALUES (87,'Users','accountitemsperrow','i:5;');
INSERT INTO `module_vars` VALUES (88,'Users','userimg','s:11:\"images/menu\";');
INSERT INTO `module_vars` VALUES (89,'Users','anonymous','s:5:\"Guest\";');
INSERT INTO `module_vars` VALUES (90,'Users','avatarpath','s:13:\"images/avatar\";');
INSERT INTO `module_vars` VALUES (91,'Users','chgemail_expiredays','i:0;');
INSERT INTO `module_vars` VALUES (92,'Users','chgpass_expiredays','i:0;');
INSERT INTO `module_vars` VALUES (93,'Users','reg_expiredays','i:0;');
INSERT INTO `module_vars` VALUES (94,'Users','allowgravatars','b:1;');
INSERT INTO `module_vars` VALUES (95,'Users','gravatarimage','s:12:\"gravatar.gif\";');
INSERT INTO `module_vars` VALUES (96,'Users','hash_method','s:6:\"sha256\";');
INSERT INTO `module_vars` VALUES (97,'Users','itemsperpage','i:25;');
INSERT INTO `module_vars` VALUES (98,'Users','login_displayapproval','b:0;');
INSERT INTO `module_vars` VALUES (99,'Users','login_displaydelete','b:0;');
INSERT INTO `module_vars` VALUES (100,'Users','login_displayinactive','b:0;');
INSERT INTO `module_vars` VALUES (101,'Users','login_displayverify','b:0;');
INSERT INTO `module_vars` VALUES (102,'Users','loginviaoption','i:0;');
INSERT INTO `module_vars` VALUES (103,'Users','login_redirect','b:1;');
INSERT INTO `module_vars` VALUES (104,'Users','changeemail','b:1;');
INSERT INTO `module_vars` VALUES (105,'Users','minpass','i:5;');
INSERT INTO `module_vars` VALUES (106,'Users','use_password_strength_meter','b:0;');
INSERT INTO `module_vars` VALUES (107,'Users','reg_notifyemail','s:0:\"\";');
INSERT INTO `module_vars` VALUES (108,'Users','reg_question','s:0:\"\";');
INSERT INTO `module_vars` VALUES (109,'Users','reg_answer','s:0:\"\";');
INSERT INTO `module_vars` VALUES (110,'Users','moderation','b:0;');
INSERT INTO `module_vars` VALUES (111,'Users','moderation_order','i:0;');
INSERT INTO `module_vars` VALUES (112,'Users','reg_autologin','b:0;');
INSERT INTO `module_vars` VALUES (113,'Users','reg_noregreasons','s:51:\"Sorry! New user registration is currently disabled.\";');
INSERT INTO `module_vars` VALUES (114,'Users','reg_allowreg','b:1;');
INSERT INTO `module_vars` VALUES (115,'Users','reg_Illegaluseragents','s:0:\"\";');
INSERT INTO `module_vars` VALUES (116,'Users','reg_Illegaldomains','s:0:\"\";');
INSERT INTO `module_vars` VALUES (117,'Users','reg_Illegalusername','s:66:\"root, webmaster, admin, administrator, nobody, anonymous, username\";');
INSERT INTO `module_vars` VALUES (118,'Users','reg_verifyemail','i:2;');
INSERT INTO `module_vars` VALUES (119,'Users','reg_uniemail','b:1;');
INSERT INTO `module_vars` VALUES (120,'/EventHandlers','Users','a:4:{i:0;a:3:{s:9:\"eventname\";s:19:\"get.pending_content\";s:8:\"callable\";a:2:{i:0;s:29:\"Users_Listener_PendingContent\";i:1;s:22:\"pendingContentListener\";}s:6:\"weight\";i:10;}i:1;a:3:{s:9:\"eventname\";s:15:\"user.login.veto\";s:8:\"callable\";a:2:{i:0;s:35:\"Users_Listener_ForcedPasswordChange\";i:1;s:28:\"forcedPasswordChangeListener\";}s:6:\"weight\";i:10;}i:2;a:3:{s:9:\"eventname\";s:21:\"user.logout.succeeded\";s:8:\"callable\";a:2:{i:0;s:34:\"Users_Listener_ClearUsersNamespace\";i:1;s:27:\"clearUsersNamespaceListener\";}s:6:\"weight\";i:10;}i:3;a:3:{s:9:\"eventname\";s:25:\"frontcontroller.exception\";s:8:\"callable\";a:2:{i:0;s:34:\"Users_Listener_ClearUsersNamespace\";i:1;s:27:\"clearUsersNamespaceListener\";}s:6:\"weight\";i:10;}}');
INSERT INTO `module_vars` VALUES (121,'SecurityCenter','itemsperpage','i:10;');
INSERT INTO `module_vars` VALUES (122,'ZConfig','updatecheck','i:1;');
INSERT INTO `module_vars` VALUES (123,'ZConfig','updatefrequency','i:7;');
INSERT INTO `module_vars` VALUES (124,'ZConfig','updatelastchecked','i:1315474371;');
INSERT INTO `module_vars` VALUES (125,'ZConfig','updateversion','s:234:\"<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>404 Not Found</title>\n</head><body>\n<h1>Not Found</h1>\n<p>The requested URL /cgi-bin/engine/checkcoreversion13.cgi was not found on this server.</p>\n</body></html>\";');
INSERT INTO `module_vars` VALUES (126,'ZConfig','keyexpiry','i:0;');
INSERT INTO `module_vars` VALUES (127,'ZConfig','sessionauthkeyua','b:0;');
INSERT INTO `module_vars` VALUES (128,'ZConfig','secure_domain','s:0:\"\";');
INSERT INTO `module_vars` VALUES (129,'ZConfig','signcookies','i:1;');
INSERT INTO `module_vars` VALUES (130,'ZConfig','signingkey','s:40:\"2ef46bff917254a20ac1716391cb743ba663a1ec\";');
INSERT INTO `module_vars` VALUES (131,'ZConfig','seclevel','s:6:\"Medium\";');
INSERT INTO `module_vars` VALUES (132,'ZConfig','secmeddays','i:7;');
INSERT INTO `module_vars` VALUES (133,'ZConfig','secinactivemins','i:20;');
INSERT INTO `module_vars` VALUES (134,'ZConfig','sessionstoretofile','i:0;');
INSERT INTO `module_vars` VALUES (135,'ZConfig','sessionsavepath','s:0:\"\";');
INSERT INTO `module_vars` VALUES (136,'ZConfig','gc_probability','i:100;');
INSERT INTO `module_vars` VALUES (137,'ZConfig','anonymoussessions','i:1;');
INSERT INTO `module_vars` VALUES (138,'ZConfig','sessionrandregenerate','b:1;');
INSERT INTO `module_vars` VALUES (139,'ZConfig','sessionregenerate','b:1;');
INSERT INTO `module_vars` VALUES (140,'ZConfig','sessionregeneratefreq','i:10;');
INSERT INTO `module_vars` VALUES (141,'ZConfig','sessionipcheck','i:0;');
INSERT INTO `module_vars` VALUES (142,'ZConfig','sessionname','s:5:\"_zsid\";');
INSERT INTO `module_vars` VALUES (143,'ZConfig','sessioncsrftokenonetime','i:0;');
INSERT INTO `module_vars` VALUES (144,'ZConfig','filtergetvars','i:1;');
INSERT INTO `module_vars` VALUES (145,'ZConfig','filterpostvars','i:1;');
INSERT INTO `module_vars` VALUES (146,'ZConfig','filtercookievars','i:1;');
INSERT INTO `module_vars` VALUES (147,'ZConfig','outputfilter','i:1;');
INSERT INTO `module_vars` VALUES (148,'ZConfig','htmlpurifierlocation','s:46:\"system/SecurityCenter/lib/vendor/htmlpurifier/\";');
INSERT INTO `module_vars` VALUES (149,'SecurityCenter','htmlpurifierConfig','s:3923:\"a:10:{s:4:\"Attr\";a:15:{s:14:\"AllowedClasses\";N;s:19:\"AllowedFrameTargets\";a:0:{}s:10:\"AllowedRel\";a:2:{s:8:\"nofollow\";b:1;s:11:\"imageviewer\";b:1;}s:10:\"AllowedRev\";a:0:{}s:13:\"ClassUseCDATA\";N;s:15:\"DefaultImageAlt\";N;s:19:\"DefaultInvalidImage\";s:0:\"\";s:22:\"DefaultInvalidImageAlt\";s:13:\"Invalid image\";s:14:\"DefaultTextDir\";s:3:\"ltr\";s:8:\"EnableID\";b:0;s:16:\"ForbiddenClasses\";a:0:{}s:11:\"IDBlacklist\";a:0:{}s:17:\"IDBlacklistRegexp\";N;s:8:\"IDPrefix\";s:0:\"\";s:13:\"IDPrefixLocal\";s:0:\"\";}s:10:\"AutoFormat\";a:10:{s:13:\"AutoParagraph\";b:0;s:6:\"Custom\";a:0:{}s:14:\"DisplayLinkURI\";b:0;s:7:\"Linkify\";b:0;s:22:\"PurifierLinkify.DocURL\";s:3:\"#%s\";s:15:\"PurifierLinkify\";b:0;s:33:\"RemoveEmpty.RemoveNbsp.Exceptions\";a:2:{s:2:\"td\";b:1;s:2:\"th\";b:1;}s:22:\"RemoveEmpty.RemoveNbsp\";b:0;s:11:\"RemoveEmpty\";b:0;s:28:\"RemoveSpansWithoutAttributes\";b:0;}s:3:\"CSS\";a:9:{s:14:\"AllowImportant\";b:0;s:11:\"AllowTricky\";b:0;s:12:\"AllowedFonts\";N;s:17:\"AllowedProperties\";N;s:13:\"DefinitionRev\";i:1;s:19:\"ForbiddenProperties\";a:0:{}s:12:\"MaxImgLength\";s:6:\"1200px\";s:11:\"Proprietary\";b:0;s:7:\"Trusted\";b:0;}s:5:\"Cache\";a:3:{s:14:\"DefinitionImpl\";s:10:\"Serializer\";s:14:\"SerializerPath\";N;s:21:\"SerializerPermissions\";i:493;}s:4:\"Core\";a:17:{s:17:\"AggressivelyFixLt\";b:1;s:13:\"CollectErrors\";b:0;s:13:\"ColorKeywords\";a:17:{s:6:\"maroon\";s:7:\"#800000\";s:3:\"red\";s:7:\"#FF0000\";s:6:\"orange\";s:7:\"#FFA500\";s:6:\"yellow\";s:7:\"#FFFF00\";s:5:\"olive\";s:7:\"#808000\";s:6:\"purple\";s:7:\"#800080\";s:7:\"fuchsia\";s:7:\"#FF00FF\";s:5:\"white\";s:7:\"#FFFFFF\";s:4:\"lime\";s:7:\"#00FF00\";s:5:\"green\";s:7:\"#008000\";s:4:\"navy\";s:7:\"#000080\";s:4:\"blue\";s:7:\"#0000FF\";s:4:\"aqua\";s:7:\"#00FFFF\";s:4:\"teal\";s:7:\"#008080\";s:5:\"black\";s:7:\"#000000\";s:6:\"silver\";s:7:\"#C0C0C0\";s:4:\"gray\";s:7:\"#808080\";}s:25:\"ConvertDocumentToFragment\";b:1;s:31:\"DirectLexLineNumberSyncInterval\";i:0;s:8:\"Encoding\";s:5:\"utf-8\";s:21:\"EscapeInvalidChildren\";b:0;s:17:\"EscapeInvalidTags\";b:0;s:24:\"EscapeNonASCIICharacters\";b:0;s:14:\"HiddenElements\";a:2:{s:6:\"script\";b:1;s:5:\"style\";b:1;}s:8:\"Language\";s:2:\"en\";s:9:\"LexerImpl\";N;s:19:\"MaintainLineNumbers\";N;s:17:\"NormalizeNewlines\";b:1;s:16:\"RemoveInvalidImg\";b:1;s:28:\"RemoveProcessingInstructions\";b:0;s:20:\"RemoveScriptContents\";N;}s:6:\"Filter\";a:6:{s:6:\"Custom\";a:0:{}s:27:\"ExtractStyleBlocks.Escaping\";b:1;s:24:\"ExtractStyleBlocks.Scope\";N;s:27:\"ExtractStyleBlocks.TidyImpl\";N;s:18:\"ExtractStyleBlocks\";b:0;s:7:\"YouTube\";b:0;}s:4:\"HTML\";a:26:{s:7:\"Allowed\";N;s:17:\"AllowedAttributes\";N;s:15:\"AllowedElements\";N;s:14:\"AllowedModules\";N;s:18:\"Attr.Name.UseCDATA\";b:0;s:12:\"BlockWrapper\";s:1:\"p\";s:11:\"CoreModules\";a:7:{s:9:\"Structure\";b:1;s:4:\"Text\";b:1;s:9:\"Hypertext\";b:1;s:4:\"List\";b:1;s:22:\"NonXMLCommonAttributes\";b:1;s:19:\"XMLCommonAttributes\";b:1;s:16:\"CommonAttributes\";b:1;}s:13:\"CustomDoctype\";N;s:12:\"DefinitionID\";N;s:13:\"DefinitionRev\";i:1;s:7:\"Doctype\";s:22:\"HTML 4.01 Transitional\";s:20:\"FlashAllowFullScreen\";b:0;s:19:\"ForbiddenAttributes\";a:0:{}s:17:\"ForbiddenElements\";a:0:{}s:12:\"MaxImgLength\";i:1200;s:8:\"Nofollow\";b:0;s:6:\"Parent\";s:3:\"div\";s:11:\"Proprietary\";b:0;s:9:\"SafeEmbed\";b:1;s:10:\"SafeObject\";b:1;s:6:\"Strict\";b:0;s:7:\"TidyAdd\";a:0:{}s:9:\"TidyLevel\";s:6:\"medium\";s:10:\"TidyRemove\";a:0:{}s:7:\"Trusted\";b:0;s:5:\"XHTML\";b:1;}s:6:\"Output\";a:6:{s:21:\"CommentScriptContents\";b:1;s:12:\"FixInnerHTML\";b:1;s:11:\"FlashCompat\";b:1;s:7:\"Newline\";N;s:8:\"SortAttr\";b:0;s:10:\"TidyFormat\";b:0;}s:4:\"Test\";a:1:{s:12:\"ForceNoIconv\";b:0;}s:3:\"URI\";a:16:{s:14:\"AllowedSchemes\";a:6:{s:4:\"http\";b:1;s:5:\"https\";b:1;s:6:\"mailto\";b:1;s:3:\"ftp\";b:1;s:4:\"nntp\";b:1;s:4:\"news\";b:1;}s:4:\"Base\";N;s:13:\"DefaultScheme\";s:4:\"http\";s:12:\"DefinitionID\";N;s:13:\"DefinitionRev\";i:1;s:7:\"Disable\";b:0;s:15:\"DisableExternal\";b:0;s:24:\"DisableExternalResources\";b:0;s:16:\"DisableResources\";b:0;s:4:\"Host\";N;s:13:\"HostBlacklist\";a:0:{}s:12:\"MakeAbsolute\";b:0;s:5:\"Munge\";N;s:14:\"MungeResources\";b:0;s:14:\"MungeSecretKey\";N;s:22:\"OverrideAllowedSchemes\";b:1;}}\";');
INSERT INTO `module_vars` VALUES (150,'ZConfig','useids','i:0;');
INSERT INTO `module_vars` VALUES (151,'ZConfig','idsmail','i:0;');
INSERT INTO `module_vars` VALUES (152,'ZConfig','idsrulepath','s:32:\"config/phpids_zikula_default.xml\";');
INSERT INTO `module_vars` VALUES (153,'ZConfig','idssoftblock','i:1;');
INSERT INTO `module_vars` VALUES (154,'ZConfig','idsfilter','s:3:\"xml\";');
INSERT INTO `module_vars` VALUES (155,'ZConfig','idsimpactthresholdone','i:1;');
INSERT INTO `module_vars` VALUES (156,'ZConfig','idsimpactthresholdtwo','i:10;');
INSERT INTO `module_vars` VALUES (157,'ZConfig','idsimpactthresholdthree','i:25;');
INSERT INTO `module_vars` VALUES (158,'ZConfig','idsimpactthresholdfour','i:75;');
INSERT INTO `module_vars` VALUES (159,'ZConfig','idsimpactmode','i:1;');
INSERT INTO `module_vars` VALUES (160,'ZConfig','idshtmlfields','a:1:{i:0;s:14:\"POST.__wysiwyg\";}');
INSERT INTO `module_vars` VALUES (161,'ZConfig','idsjsonfields','a:1:{i:0;s:15:\"POST.__jsondata\";}');
INSERT INTO `module_vars` VALUES (162,'ZConfig','idsexceptions','a:12:{i:0;s:10:\"GET.__utmz\";i:1;s:10:\"GET.__utmc\";i:2;s:18:\"REQUEST.linksorder\";i:3;s:15:\"POST.linksorder\";i:4;s:19:\"REQUEST.fullcontent\";i:5;s:16:\"POST.fullcontent\";i:6;s:22:\"REQUEST.summarycontent\";i:7;s:19:\"POST.summarycontent\";i:8;s:19:\"REQUEST.filter.page\";i:9;s:16:\"POST.filter.page\";i:10;s:20:\"REQUEST.filter.value\";i:11;s:17:\"POST.filter.value\";}');
INSERT INTO `module_vars` VALUES (163,'ZConfig','summarycontent','s:1130:\"For the attention of %sitename% administration staff:\n\nOn %date% at %time%, Zikula detected that somebody tried to interact with the site in a way that may have been intended compromise its security. This is not necessarily the case: it could have been caused by work you were doing on the site, or may have been due to some other reason. In any case, it was detected and blocked. \n\nThe suspicious activity was recognised in \'%filename%\' at line %linenumber%.\n\nType: %type%. \n\nAdditional information: %additionalinfo%.\n\nBelow is logged information that may help you identify what happened and who was responsible.\n\n=====================================\nInformation about the user:\n=====================================\nUser name:  %username%\nUser\'s e-mail address: %useremail%\nUser\'s real name: %userrealname%\n\n=====================================\nIP numbers (if this was a cracker, the IP numbers may not be the true point of origin)\n=====================================\nIP according to HTTP_CLIENT_IP: %httpclientip%\nIP according to REMOTE_ADDR: %remoteaddr%\nIP according to GetHostByName($REMOTE_ADDR): %gethostbyremoteaddr%\n\";');
INSERT INTO `module_vars` VALUES (164,'ZConfig','fullcontent','s:1289:\"=====================================\nInformation in the $_REQUEST array\n=====================================\n%requestarray%\n\n=====================================\nInformation in the $_GET array\n(variables that may have been in the URL string or in a \'GET\'-type form)\n=====================================\n%getarray%\n\n=====================================\nInformation in the $_POST array\n(visible and invisible form elements)\n=====================================\n%postarray%\n\n=====================================\nBrowser information\n=====================================\n%browserinfo%\n\n=====================================\nInformation in the $_SERVER array\n=====================================\n%serverarray%\n\n=====================================\nInformation in the $_ENV array\n=====================================\n%envarray%\n\n=====================================\nInformation in the $_COOKIE array\n=====================================\n%cookiearray%\n\n=====================================\nInformation in the $_FILES array\n=====================================\n%filearray%\n\n=====================================\nInformation in the $_SESSION array\n(session information -- variables starting with PNSV are Zikula session variables)\n=====================================\n%sessionarray%\n\";');
INSERT INTO `module_vars` VALUES (165,'ZConfig','usehtaccessbans','i:0;');
INSERT INTO `module_vars` VALUES (166,'ZConfig','extrapostprotection','i:0;');
INSERT INTO `module_vars` VALUES (167,'ZConfig','extragetprotection','i:0;');
INSERT INTO `module_vars` VALUES (168,'ZConfig','checkmultipost','i:0;');
INSERT INTO `module_vars` VALUES (169,'ZConfig','maxmultipost','i:4;');
INSERT INTO `module_vars` VALUES (170,'ZConfig','cpuloadmonitor','i:0;');
INSERT INTO `module_vars` VALUES (171,'ZConfig','cpumaxload','d:10;');
INSERT INTO `module_vars` VALUES (172,'ZConfig','ccisessionpath','s:0:\"\";');
INSERT INTO `module_vars` VALUES (173,'ZConfig','htaccessfilelocation','s:9:\".htaccess\";');
INSERT INTO `module_vars` VALUES (174,'ZConfig','nocookiebanthreshold','i:10;');
INSERT INTO `module_vars` VALUES (175,'ZConfig','nocookiewarningthreshold','i:2;');
INSERT INTO `module_vars` VALUES (176,'ZConfig','fastaccessbanthreshold','i:40;');
INSERT INTO `module_vars` VALUES (177,'ZConfig','fastaccesswarnthreshold','i:10;');
INSERT INTO `module_vars` VALUES (178,'ZConfig','javababble','i:0;');
INSERT INTO `module_vars` VALUES (179,'ZConfig','javaencrypt','i:0;');
INSERT INTO `module_vars` VALUES (180,'ZConfig','preservehead','i:0;');
INSERT INTO `module_vars` VALUES (181,'ZConfig','filterarrays','i:1;');
INSERT INTO `module_vars` VALUES (182,'ZConfig','htmlentities','s:1:\"1\";');
INSERT INTO `module_vars` VALUES (183,'ZConfig','AllowableHTML','a:110:{s:3:\"!--\";i:2;s:1:\"a\";i:2;s:4:\"abbr\";i:1;s:7:\"acronym\";i:1;s:7:\"address\";i:1;s:6:\"applet\";i:0;s:4:\"area\";i:0;s:7:\"article\";i:1;s:5:\"aside\";i:1;s:5:\"audio\";i:0;s:1:\"b\";i:1;s:4:\"base\";i:0;s:8:\"basefont\";i:0;s:3:\"bdo\";i:0;s:3:\"big\";i:0;s:10:\"blockquote\";i:2;s:2:\"br\";i:2;s:6:\"button\";i:0;s:6:\"canvas\";i:0;s:7:\"caption\";i:1;s:6:\"center\";i:2;s:4:\"cite\";i:1;s:4:\"code\";i:0;s:3:\"col\";i:1;s:8:\"colgroup\";i:1;s:7:\"command\";i:0;s:8:\"datalist\";i:0;s:2:\"dd\";i:1;s:3:\"del\";i:0;s:7:\"details\";i:1;s:3:\"dfn\";i:0;s:3:\"dir\";i:0;s:3:\"div\";i:2;s:2:\"dl\";i:1;s:2:\"dt\";i:1;s:2:\"em\";i:2;s:5:\"embed\";i:0;s:8:\"fieldset\";i:1;s:10:\"figcaption\";i:0;s:6:\"figure\";i:0;s:6:\"footer\";i:0;s:4:\"font\";i:0;s:4:\"form\";i:0;s:2:\"h1\";i:1;s:2:\"h2\";i:1;s:2:\"h3\";i:1;s:2:\"h4\";i:1;s:2:\"h5\";i:1;s:2:\"h6\";i:1;s:6:\"header\";i:0;s:6:\"hgroup\";i:0;s:2:\"hr\";i:2;s:1:\"i\";i:1;s:6:\"iframe\";i:0;s:3:\"img\";i:2;s:5:\"input\";i:0;s:3:\"ins\";i:0;s:6:\"keygen\";i:0;s:3:\"kbd\";i:0;s:5:\"label\";i:1;s:6:\"legend\";i:1;s:2:\"li\";i:2;s:3:\"map\";i:0;s:4:\"mark\";i:0;s:4:\"menu\";i:0;s:7:\"marquee\";i:0;s:5:\"meter\";i:0;s:3:\"nav\";i:0;s:4:\"nobr\";i:0;s:6:\"object\";i:0;s:2:\"ol\";i:2;s:8:\"optgroup\";i:0;s:6:\"option\";i:0;s:6:\"output\";i:0;s:1:\"p\";i:2;s:5:\"param\";i:0;s:3:\"pre\";i:2;s:8:\"progress\";i:0;s:1:\"q\";i:0;s:2:\"rp\";i:0;s:2:\"rt\";i:0;s:4:\"ruby\";i:0;s:1:\"s\";i:0;s:4:\"samp\";i:0;s:6:\"script\";i:0;s:7:\"section\";i:0;s:6:\"select\";i:0;s:5:\"small\";i:0;s:6:\"source\";i:0;s:4:\"span\";i:2;s:6:\"strike\";i:0;s:6:\"strong\";i:2;s:3:\"sub\";i:1;s:7:\"summary\";i:1;s:3:\"sup\";i:0;s:5:\"table\";i:2;s:5:\"tbody\";i:1;s:2:\"td\";i:2;s:8:\"textarea\";i:0;s:5:\"tfoot\";i:1;s:2:\"th\";i:2;s:5:\"thead\";i:0;s:4:\"time\";i:0;s:2:\"tr\";i:2;s:2:\"tt\";i:2;s:1:\"u\";i:0;s:2:\"ul\";i:2;s:3:\"var\";i:0;s:5:\"video\";i:0;s:3:\"wbr\";i:0;}');
INSERT INTO `module_vars` VALUES (184,'Categories','userrootcat','s:17:\"/__SYSTEM__/Users\";');
INSERT INTO `module_vars` VALUES (185,'Categories','allowusercatedit','i:0;');
INSERT INTO `module_vars` VALUES (186,'Categories','autocreateusercat','i:0;');
INSERT INTO `module_vars` VALUES (187,'Categories','autocreateuserdefaultcat','i:0;');
INSERT INTO `module_vars` VALUES (188,'Categories','userdefaultcatname','s:7:\"Default\";');
INSERT INTO `module_vars` VALUES (189,'Legal','termsOfUseActive','b:1;');
INSERT INTO `module_vars` VALUES (190,'Legal','privacyPolicyActive','b:1;');
INSERT INTO `module_vars` VALUES (191,'Legal','accessibilityStatementActive','b:1;');
INSERT INTO `module_vars` VALUES (192,'Legal','minimumAge','i:13;');
INSERT INTO `module_vars` VALUES (193,'/EventHandlers','Legal','a:2:{i:0;a:3:{s:9:\"eventname\";s:15:\"user.login.veto\";s:8:\"callable\";a:2:{i:0;s:29:\"Legal_Listener_UsersLoginVeto\";i:1;s:22:\"acceptPoliciesListener\";}s:6:\"weight\";i:10;}i:1;a:1:{s:9:\"classname\";s:29:\"Legal_Listener_UsersUiHandler\";}}');
INSERT INTO `module_vars` VALUES (194,'Mailer','mailertype','i:1;');
INSERT INTO `module_vars` VALUES (195,'Mailer','charset','s:5:\"utf-8\";');
INSERT INTO `module_vars` VALUES (196,'Mailer','encoding','s:4:\"8bit\";');
INSERT INTO `module_vars` VALUES (197,'Mailer','html','b:0;');
INSERT INTO `module_vars` VALUES (198,'Mailer','wordwrap','i:50;');
INSERT INTO `module_vars` VALUES (199,'Mailer','msmailheaders','b:0;');
INSERT INTO `module_vars` VALUES (200,'Mailer','sendmailpath','s:18:\"/usr/sbin/sendmail\";');
INSERT INTO `module_vars` VALUES (201,'Mailer','smtpauth','b:0;');
INSERT INTO `module_vars` VALUES (202,'Mailer','smtpserver','s:9:\"localhost\";');
INSERT INTO `module_vars` VALUES (203,'Mailer','smtpport','i:25;');
INSERT INTO `module_vars` VALUES (204,'Mailer','smtptimeout','i:10;');
INSERT INTO `module_vars` VALUES (205,'Mailer','smtpusername','s:0:\"\";');
INSERT INTO `module_vars` VALUES (206,'Mailer','smtppassword','s:0:\"\";');
INSERT INTO `module_vars` VALUES (207,'Mailer','smtpsecuremethod','s:3:\"ssl\";');
INSERT INTO `module_vars` VALUES (208,'Search','itemsperpage','i:10;');
INSERT INTO `module_vars` VALUES (209,'Search','limitsummary','i:255;');
INSERT INTO `module_vars` VALUES (210,'/EventHandlers','Search','a:1:{i:0;a:3:{s:9:\"eventname\";s:26:\"installer.module.installed\";s:8:\"callable\";a:2:{i:0;s:20:\"Search_EventHandlers\";i:1;s:13:\"moduleInstall\";}s:6:\"weight\";i:10;}}');
INSERT INTO `module_vars` VALUES (211,'Thumbnail','std_image_size_x','i:100;');
INSERT INTO `module_vars` VALUES (212,'Thumbnail','std_image_size_y','i:100;');
INSERT INTO `module_vars` VALUES (213,'Thumbnail','allow_size_override','b:1;');
INSERT INTO `module_vars` VALUES (214,'Thumbnail','cache_directory','s:62:\"C:\\xampp\\htdocs\\z1\\modules\\Thumbnail\\lib\\vendor\\phpThumb\\cache\";');
INSERT INTO `module_vars` VALUES (215,'Thumbnail','cache_disable_warning','b:1;');
INSERT INTO `module_vars` VALUES (216,'Thumbnail','cache_directory_depth','i:4;');
INSERT INTO `module_vars` VALUES (217,'Thumbnail','cache_maxage','i:2592000;');
INSERT INTO `module_vars` VALUES (218,'Thumbnail','cache_maxsize','i:10485760;');
INSERT INTO `module_vars` VALUES (219,'Thumbnail','cache_maxfiles','i:200;');
INSERT INTO `module_vars` VALUES (220,'Thumbnail','cache_source_enabled','b:0;');
INSERT INTO `module_vars` VALUES (221,'Thumbnail','cache_source_directory','s:69:\"C:\\xampp\\htdocs\\z1\\modules\\Thumbnail\\lib\\vendor\\phpThumb\\cache\\source\";');
INSERT INTO `module_vars` VALUES (222,'Thumbnail','cache_source_filemtime_ignore_local','b:0;');
INSERT INTO `module_vars` VALUES (223,'Thumbnail','cache_source_filemtime_ignore_remote','b:1;');
INSERT INTO `module_vars` VALUES (224,'Thumbnail','cache_default_only_suffix','s:0:\"\";');
INSERT INTO `module_vars` VALUES (225,'Thumbnail','cache_force_passthru','b:1;');
INSERT INTO `module_vars` VALUES (226,'Thumbnail','temp_directory','s:5:\"ztemp\";');
INSERT INTO `module_vars` VALUES (227,'Thumbnail','ttf_directory','s:23:\"modules/Thumbnail/fonts\";');
INSERT INTO `module_vars` VALUES (228,'Thumbnail','max_source_pixels','i:0;');
INSERT INTO `module_vars` VALUES (229,'Thumbnail','imagemagick_path','s:26:\"C:/ImageMagick/convert.exe\";');
INSERT INTO `module_vars` VALUES (230,'Thumbnail','prefer_imagemagick','b:1;');
INSERT INTO `module_vars` VALUES (231,'Thumbnail','use_exif_thumbnail_for_speed','b:0;');
INSERT INTO `module_vars` VALUES (232,'Thumbnail','output_format','s:4:\"jpeg\";');
INSERT INTO `module_vars` VALUES (233,'Thumbnail','output_maxwidth','i:0;');
INSERT INTO `module_vars` VALUES (234,'Thumbnail','output_maxheight','i:0;');
INSERT INTO `module_vars` VALUES (235,'Thumbnail','output_interlace','b:1;');
INSERT INTO `module_vars` VALUES (236,'Thumbnail','error_image_width','i:400;');
INSERT INTO `module_vars` VALUES (237,'Thumbnail','error_image_height','i:100;');
INSERT INTO `module_vars` VALUES (238,'Thumbnail','error_message_image_default','s:0:\"\";');
INSERT INTO `module_vars` VALUES (239,'Thumbnail','error_bgcolor','s:6:\"CCCCFF\";');
INSERT INTO `module_vars` VALUES (240,'Thumbnail','error_textcolor','s:6:\"FF0000\";');
INSERT INTO `module_vars` VALUES (241,'Thumbnail','error_fontsize','i:1;');
INSERT INTO `module_vars` VALUES (242,'Thumbnail','error_die_on_error','b:0;');
INSERT INTO `module_vars` VALUES (243,'Thumbnail','error_silent_die_on_error','b:0;');
INSERT INTO `module_vars` VALUES (244,'Thumbnail','error_die_on_source_failure','b:1;');
INSERT INTO `module_vars` VALUES (245,'Thumbnail','nohotlink_enabled','b:0;');
INSERT INTO `module_vars` VALUES (246,'Thumbnail','nohotlink_valid_domains','a:1:{i:0;N;}');
INSERT INTO `module_vars` VALUES (247,'Thumbnail','nohotlink_fill_color','s:6:\"FFFFFF\";');
INSERT INTO `module_vars` VALUES (248,'Thumbnail','nohotlink_erase_image','b:0;');
INSERT INTO `module_vars` VALUES (249,'Thumbnail','nohotlink_text_message','s:38:\"Off-server thumbnailing is not allowed\";');
INSERT INTO `module_vars` VALUES (250,'Thumbnail','nooffsitelink_enabled','b:1;');
INSERT INTO `module_vars` VALUES (251,'Thumbnail','nooffsitelink_valid_domains','a:1:{i:0;N;}');
INSERT INTO `module_vars` VALUES (252,'Thumbnail','nooffsitelink_require_refer','b:0;');
INSERT INTO `module_vars` VALUES (253,'Thumbnail','nooffsitelink_erase_image','b:1;');
INSERT INTO `module_vars` VALUES (254,'Thumbnail','nooffsitelink_watermark_src','s:16:\"/images/logo.gif\";');
INSERT INTO `module_vars` VALUES (255,'Thumbnail','nooffsitelink_text_message','s:17:\"Image taken from \";');
INSERT INTO `module_vars` VALUES (256,'Thumbnail','border_hexcolor','s:6:\"000000\";');
INSERT INTO `module_vars` VALUES (257,'Thumbnail','background_hexcolor','s:6:\"FFFFFF\";');
INSERT INTO `module_vars` VALUES (258,'Thumbnail','high_security_enabled','b:0;');
INSERT INTO `module_vars` VALUES (259,'Thumbnail','high_security_password','s:0:\"\";');
INSERT INTO `module_vars` VALUES (260,'Thumbnail','allow_src_above_docroot','b:0;');
INSERT INTO `module_vars` VALUES (261,'Thumbnail','allow_src_above_phpthumb','b:1;');
INSERT INTO `module_vars` VALUES (262,'Thumbnail','allow_parameter_file','b:0;');
INSERT INTO `module_vars` VALUES (263,'Thumbnail','allow_parameter_goto','b:0;');
INSERT INTO `module_vars` VALUES (264,'Thumbnail','disable_debug','b:0;');
INSERT INTO `module_vars` VALUES (265,'Thumbnail','disable_pathinfo_parsing','b:0;');
INSERT INTO `module_vars` VALUES (266,'Thumbnail','disable_imagecopyresampled','b:0;');
INSERT INTO `module_vars` VALUES (267,'Thumbnail','disable_onlycreateable_passthru','b:1;');
INSERT INTO `module_vars` VALUES (268,'/EventHandlers','Scribite','a:1:{i:0;a:3:{s:9:\"eventname\";s:13:\"core.postinit\";s:8:\"callable\";a:2:{i:0;s:18:\"Scribite_Listeners\";i:1;s:8:\"coreinit\";}s:6:\"weight\";i:10;}}');
INSERT INTO `module_vars` VALUES (269,'Scribite','editors_path','s:25:\"modules/Scribite/includes\";');
INSERT INTO `module_vars` VALUES (270,'Scribite','xinha_language','s:2:\"en\";');
INSERT INTO `module_vars` VALUES (271,'Scribite','xinha_skin','s:9:\"blue-look\";');
INSERT INTO `module_vars` VALUES (272,'Scribite','xinha_barmode','s:7:\"reduced\";');
INSERT INTO `module_vars` VALUES (273,'Scribite','xinha_width','s:4:\"auto\";');
INSERT INTO `module_vars` VALUES (274,'Scribite','xinha_height','s:4:\"auto\";');
INSERT INTO `module_vars` VALUES (275,'Scribite','xinha_style','s:39:\"modules/Scribite/style/xinha/editor.css\";');
INSERT INTO `module_vars` VALUES (276,'Scribite','xinha_statusbar','i:1;');
INSERT INTO `module_vars` VALUES (277,'Scribite','xinha_converturls','i:1;');
INSERT INTO `module_vars` VALUES (278,'Scribite','xinha_showloading','i:1;');
INSERT INTO `module_vars` VALUES (279,'Scribite','xinha_activeplugins','s:48:\"a:2:{i:0;s:7:\"GetHtml\";i:1;s:12:\"SmartReplace\";}\";');
INSERT INTO `module_vars` VALUES (280,'Scribite','nicedit_xhtml','i:0;');
INSERT INTO `module_vars` VALUES (281,'Scribite','yui_type','s:6:\"Simple\";');
INSERT INTO `module_vars` VALUES (282,'Scribite','yui_width','s:4:\"auto\";');
INSERT INTO `module_vars` VALUES (283,'Scribite','yui_height','s:3:\"300\";');
INSERT INTO `module_vars` VALUES (284,'Scribite','yui_dombar','b:1;');
INSERT INTO `module_vars` VALUES (285,'Scribite','yui_animate','b:1;');
INSERT INTO `module_vars` VALUES (286,'Scribite','yui_collapse','b:1;');
INSERT INTO `module_vars` VALUES (287,'Scribite','ckeditor_language','s:2:\"en\";');
INSERT INTO `module_vars` VALUES (288,'Scribite','ckeditor_barmode','s:4:\"Full\";');
INSERT INTO `module_vars` VALUES (289,'Scribite','ckeditor_width','s:5:\"\"70%\"\";');
INSERT INTO `module_vars` VALUES (290,'Scribite','ckeditor_height','s:3:\"300\";');
INSERT INTO `module_vars` VALUES (291,'Clip','uploadpath','s:21:\"userdata/Clip/uploads\";');
INSERT INTO `module_vars` VALUES (292,'Clip','modelspath','s:16:\"ztemp/ClipModels\";');
INSERT INTO `module_vars` VALUES (293,'Clip','shorturls','s:3:\"htm\";');
INSERT INTO `module_vars` VALUES (294,'Clip','maxperpage','i:100;');
INSERT INTO `module_vars` VALUES (295,'Clip','devmode','b:1;');
INSERT INTO `module_vars` VALUES (296,'/EventHandlers','Clip','a:1:{i:0;a:3:{s:9:\"eventname\";s:36:\"zikula.filterutil.get_plugin_classes\";s:8:\"callable\";a:2:{i:0;s:27:\"Clip_EventHandler_Listeners\";i:1;s:16:\"getFilterClasses\";}s:6:\"weight\";i:10;}}');
INSERT INTO `module_vars` VALUES (297,'/EventHandlers','EZComments','a:2:{i:0;a:3:{s:9:\"eventname\";s:28:\"installer.module.uninstalled\";s:8:\"callable\";a:2:{i:0;s:24:\"EZComments_EventHandlers\";i:1;s:12:\"moduleDelete\";}s:6:\"weight\";i:10;}i:1;a:3:{s:9:\"eventname\";s:36:\"installer.subscriberarea.uninstalled\";s:8:\"callable\";a:2:{i:0;s:24:\"EZComments_EventHandlers\";i:1;s:14:\"hookAreaDelete\";}s:6:\"weight\";i:10;}}');
INSERT INTO `module_vars` VALUES (298,'EZComments','template','s:8:\"Standard\";');
INSERT INTO `module_vars` VALUES (299,'EZComments','css','s:9:\"style.css\";');
INSERT INTO `module_vars` VALUES (300,'EZComments','anonusersinfo','b:0;');
INSERT INTO `module_vars` VALUES (301,'EZComments','anonusersrequirename','b:0;');
INSERT INTO `module_vars` VALUES (302,'EZComments','logip','b:0;');
INSERT INTO `module_vars` VALUES (303,'EZComments','itemsperpage','i:25;');
INSERT INTO `module_vars` VALUES (304,'EZComments','enablepager','b:0;');
INSERT INTO `module_vars` VALUES (305,'EZComments','commentsperpage','i:25;');
INSERT INTO `module_vars` VALUES (306,'EZComments','migrated','a:1:{s:5:\"dummy\";b:1;}');
INSERT INTO `module_vars` VALUES (307,'EZComments','useaccountpage','s:1:\"1\";');
INSERT INTO `module_vars` VALUES (308,'EZComments','MailToAdmin','b:0;');
INSERT INTO `module_vars` VALUES (309,'EZComments','moderationmail','b:0;');
INSERT INTO `module_vars` VALUES (310,'EZComments','moderation','i:0;');
INSERT INTO `module_vars` VALUES (311,'EZComments','alwaysmoderate','b:0;');
INSERT INTO `module_vars` VALUES (312,'EZComments','dontmoderateifcommented','b:0;');
INSERT INTO `module_vars` VALUES (313,'EZComments','modlinkcount','i:2;');
INSERT INTO `module_vars` VALUES (314,'EZComments','modlist','s:0:\"\";');
INSERT INTO `module_vars` VALUES (315,'EZComments','blacklinkcount','i:5;');
INSERT INTO `module_vars` VALUES (316,'EZComments','blacklist','s:0:\"\";');
INSERT INTO `module_vars` VALUES (317,'EZComments','proxyblacklist','b:0;');
INSERT INTO `module_vars` VALUES (318,'EZComments','modifyowntime','i:6;');
INSERT INTO `module_vars` VALUES (319,'EZComments','akismet','b:0;');
INSERT INTO `module_vars` VALUES (320,'EZComments','akismetstatus','i:1;');
INSERT INTO `module_vars` VALUES (321,'EZComments','feedtype','s:3:\"rss\";');
INSERT INTO `module_vars` VALUES (322,'EZComments','feedcount','i:10;');
INSERT INTO `module_vars` VALUES (323,'Profile','memberslistitemsperpage','i:20;');
INSERT INTO `module_vars` VALUES (324,'Profile','onlinemembersitemsperpage','i:20;');
INSERT INTO `module_vars` VALUES (325,'Profile','recentmembersitemsperpage','i:10;');
INSERT INTO `module_vars` VALUES (326,'Profile','filterunverified','i:1;');
INSERT INTO `module_vars` VALUES (327,'Profile','dudregshow','a:5:{i:0;i:1;i:1;i:3;i:2;i:4;i:3;i:10;i:4;i:11;}');
INSERT INTO `module_vars` VALUES (328,'/EventHandlers','Profile','a:1:{i:0;a:1:{s:9:\"classname\";s:31:\"Profile_Listener_UsersUiHandler\";}}');
INSERT INTO `module_vars` VALUES (329,'Captcha','publickey','s:0:\"\";');
INSERT INTO `module_vars` VALUES (330,'Captcha','privatekey','s:0:\"\";');
INSERT INTO `module_vars` VALUES (331,'Captcha','exemptAdmin','i:0;');
INSERT INTO `module_vars` VALUES (332,'Captcha','captchaTheme','s:3:\"red\";');
INSERT INTO `module_vars` VALUES (333,'Scribite','DefaultEditor','s:5:\"xinha\";');

--
-- Table structure for table `modules`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `displayname` varchar(64) NOT NULL,
  `url` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `directory` varchar(64) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '0',
  `capabilities` longtext NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `securityschema` longtext NOT NULL,
  `core_min` varchar(9) NOT NULL,
  `core_max` varchar(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `mod_state` (`name`,`state`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` VALUES (1,'Extensions',3,'Extensions','extensions','Manage your modules and plugins.','Extensions','3.7.10','a:1:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:12:\"Extensions::\";s:2:\"::\";}','','');
INSERT INTO `modules` VALUES (2,'Admin',3,'Administration panel','adminpanel','Backend administration interface.','Admin','1.9.0','a:1:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:7:\"Admin::\";s:38:\"Admin Category name::Admin Category ID\";}','','');
INSERT INTO `modules` VALUES (3,'Blocks',3,'Blocks','blocks','Block administration module.','Blocks','3.8.0','a:2:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:2:{s:8:\"Blocks::\";s:30:\"Block key:Block title:Block ID\";s:16:\"Blocks::position\";s:26:\"Position name::Position ID\";}','','');
INSERT INTO `modules` VALUES (4,'Categories',3,'Categories','categories','Category administration.','Categories','1.2.1','a:2:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:20:\"Categories::Category\";s:40:\"Category ID:Category Path:Category IPath\";}','','');
INSERT INTO `modules` VALUES (5,'Errors',3,'Errors','errors','Error display module.','Errors','1.1.1','a:1:{s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:8:\"Errors::\";s:2:\"::\";}','','');
INSERT INTO `modules` VALUES (6,'Groups',3,'Groups','groups','User group administration module.','Groups','2.3.2','a:2:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:8:\"Groups::\";s:10:\"Group ID::\";}','','');
INSERT INTO `modules` VALUES (7,'Mailer',3,'Mailer','mailer','Mailer module, provides mail API and mail setting administration.','Mailer','1.3.2','a:1:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:8:\"Mailer::\";s:2:\"::\";}','','');
INSERT INTO `modules` VALUES (8,'PageLock',3,'Page lock','pagelock','Provides the ability to lock pages when they are in use, for content and access control.','PageLock','1.1.1','a:0:{}',1,'a:1:{s:10:\"PageLock::\";s:2:\"::\";}','','');
INSERT INTO `modules` VALUES (9,'Permissions',3,'Permissions','permissions','User permissions manager.','Permissions','1.1.1','a:1:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:13:\"Permissions::\";s:2:\"::\";}','','');
INSERT INTO `modules` VALUES (10,'Search',3,'Site search','search','Site search module.','Search','1.5.2','a:2:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:8:\"Search::\";s:13:\"Module name::\";}','','');
INSERT INTO `modules` VALUES (11,'SecurityCenter',3,'Security Center','securitycenter','Manage site security and settings.','SecurityCenter','1.4.4','a:1:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:16:\"SecurityCenter::\";s:2:\"::\";}','','');
INSERT INTO `modules` VALUES (12,'Settings',3,'General settings','settings','General site configuration interface.','Settings','2.9.7','a:1:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:10:\"Settings::\";s:2:\"::\";}','','');
INSERT INTO `modules` VALUES (13,'Theme',3,'Themes','theme','Themes module to manage site layout, render and cache settings.','Theme','3.4.1','a:2:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:7:\"Theme::\";s:12:\"Theme name::\";}','','');
INSERT INTO `modules` VALUES (14,'Users',3,'Users','users','Provides an interface for configuring and administering registered user accounts. Incorporates all needed functionality, but can work in close unison with the third party profile module configured in the general settings of the site.','Users','2.2.0','a:4:{s:14:\"authentication\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:15:\"hook_subscriber\";a:1:{s:7:\"enabled\";b:1;}s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:2:{s:7:\"Users::\";s:14:\"Uname::User ID\";s:16:\"Users::MailUsers\";s:2:\"::\";}','1.3.0','');
INSERT INTO `modules` VALUES (15,'Captcha',2,'Captcha','captcha','Captcha hook module','Captcha','1.0.0','a:2:{s:13:\"hook_provider\";a:1:{s:7:\"enabled\";b:1;}s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:9:\"Captcha::\";s:2:\"::\";}','1.3.0','');
INSERT INTO `modules` VALUES (16,'Clip',2,'Clip','clip','Dynamic content publishing platform for Zikula.','Clip','0.4.19','a:3:{s:15:\"hook_subscriber\";a:2:{s:7:\"enabled\";b:1;s:13:\"subscribe_own\";b:1;}s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:5:{s:6:\"Clip::\";s:2:\"::\";s:21:\"Clip:grouptypeid:main\";s:15:\"tid::templateid\";s:21:\"Clip:grouptypeid:list\";s:15:\"tid::templateid\";s:24:\"Clip:grouptypeid:display\";s:18:\"tid:pid:templateid\";s:21:\"Clip:grouptypeid:edit\";s:21:\"tid:pid:workflowstate\";}','1.3.1','1.3.99');
INSERT INTO `modules` VALUES (17,'EZComments',2,'Comments','comments','Attach comments to every kind of content using hooks','EZComments','3.0.0','a:4:{s:13:\"hook_provider\";a:1:{s:7:\"enabled\";b:1;}s:15:\"hook_subscriber\";a:1:{s:7:\"enabled\";b:1;}s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:3:{s:12:\"EZComments::\";s:25:\"Module:Item ID:Comment ID\";s:21:\"EZComments::trackback\";s:15:\"Module:Item ID:\";s:20:\"EZComments::pingback\";s:15:\"Module:Item ID:\";}','1.3.0','');
INSERT INTO `modules` VALUES (18,'Legal',2,'Legal info manager','legalmod','Provides an interface for managing the site\'s \'Terms of use\', \'Privacy statement\' and \'Accessibility statement\'.','Legal','2.0.0','a:2:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:5:{s:7:\"Legal::\";s:2:\"::\";s:17:\"Legal::termsofuse\";s:2:\"::\";s:20:\"Legal::privacypolicy\";s:2:\"::\";s:16:\"Legal::agepolicy\";s:2:\"::\";s:29:\"Legal::accessibilitystatement\";s:2:\"::\";}','1.3.0','');
INSERT INTO `modules` VALUES (19,'Profile',2,'Profile','profile','Provides a personal account control panel for each registered user, an interface to administer the personal information items displayed within it, and a registered users list functionality. Works in close unison with the \'Users\' module.','Profile','1.6.0','a:3:{s:7:\"profile\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:6:{s:9:\"Profile::\";s:2:\"::\";s:13:\"Profile::view\";s:2:\"::\";s:13:\"Profile::item\";s:56:\"DynamicUserData PropertyName::DynamicUserData PropertyID\";s:16:\"Profile:Members:\";s:2:\"::\";s:22:\"Profile:Members:recent\";s:2:\"::\";s:22:\"Profile:Members:online\";s:2:\"::\";}','1.3.0','');
INSERT INTO `modules` VALUES (20,'Scribite',2,'Scribite!','scribite','WYSIWYG for Zikula','Scribite','4.3.0','a:1:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:10:\"Scribite::\";s:12:\"Modulename::\";}','1.3.0','');
INSERT INTO `modules` VALUES (21,'Socialise',2,'Socialise!','socialise','Share content with social websites like Facebook and Twitter and handle your site Keys.','Socialise','0.2.0','a:1:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',1,'a:1:{s:11:\"Socialise::\";s:2:\"::\";}','','');
INSERT INTO `modules` VALUES (22,'Tag',2,'Tag','tag','Tagging module','Tag','1.0.0','a:3:{s:13:\"hook_provider\";a:1:{s:7:\"enabled\";b:1;}s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',1,'a:1:{s:5:\"Tag::\";s:2:\"::\";}','','');
INSERT INTO `modules` VALUES (23,'Thumbnail',2,'Thumbnail','thumbnail','Provides thumbnail generation facilities via user API functions.','Thumbnail','1.4.0','a:2:{s:5:\"admin\";a:1:{s:7:\"version\";s:3:\"1.0\";}s:4:\"user\";a:1:{s:7:\"version\";s:3:\"1.0\";}}',3,'a:1:{s:11:\"Thumbnail::\";s:2:\"::\";}','','');

--
-- Table structure for table `objectdata_attributes`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `objectdata_attributes` (
  `id` int(11) NOT NULL,
  `attribute_name` varchar(80) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `object_type` varchar(80) NOT NULL,
  `value` longtext NOT NULL,
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `object_type` (`object_type`),
  KEY `object_id` (`object_id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `objectdata_attributes`
--

INSERT INTO `objectdata_attributes` VALUES (1,'code',5,'categories_category','Y','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (2,'code',6,'categories_category','N','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (3,'code',11,'categories_category','P','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (4,'code',12,'categories_category','C','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (5,'code',13,'categories_category','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (6,'code',14,'categories_category','O','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (7,'code',15,'categories_category','R','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (8,'code',17,'categories_category','M','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (9,'code',18,'categories_category','F','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (10,'code',26,'categories_category','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (11,'code',27,'categories_category','I','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (12,'code',29,'categories_category','P','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);
INSERT INTO `objectdata_attributes` VALUES (13,'code',30,'categories_category','A','A','2011-09-08 11:32:48',0,'2011-09-08 11:32:48',0);

--
-- Table structure for table `objectdata_log`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `objectdata_log` (
  `id` int(11) NOT NULL,
  `object_type` varchar(80) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `op` varchar(16) NOT NULL,
  `diff` longtext,
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `objectdata_log`
--


--
-- Table structure for table `objectdata_meta`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `objectdata_meta` (
  `id` int(11) NOT NULL,
  `module` varchar(40) NOT NULL,
  `tablename` varchar(40) NOT NULL,
  `idcolumn` varchar(40) NOT NULL,
  `obj_id` int(11) NOT NULL DEFAULT '0',
  `permissions` varchar(255) DEFAULT NULL,
  `dc_title` varchar(80) DEFAULT NULL,
  `dc_author` varchar(80) DEFAULT NULL,
  `dc_subject` varchar(255) DEFAULT NULL,
  `dc_keywords` varchar(128) DEFAULT NULL,
  `dc_description` varchar(255) DEFAULT NULL,
  `dc_publisher` varchar(128) DEFAULT NULL,
  `dc_contributor` varchar(128) DEFAULT NULL,
  `dc_startdate` datetime DEFAULT '1970-01-01 00:00:00',
  `dc_enddate` datetime DEFAULT '1970-01-01 00:00:00',
  `dc_type` varchar(128) DEFAULT NULL,
  `dc_format` varchar(128) DEFAULT NULL,
  `dc_uri` varchar(255) DEFAULT NULL,
  `dc_source` varchar(128) DEFAULT NULL,
  `dc_language` varchar(32) DEFAULT NULL,
  `dc_relation` varchar(255) DEFAULT NULL,
  `dc_coverage` varchar(64) DEFAULT NULL,
  `dc_entity` varchar(64) DEFAULT NULL,
  `dc_comment` varchar(255) DEFAULT NULL,
  `dc_extra` varchar(255) DEFAULT NULL,
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `objectdata_meta`
--


--
-- Table structure for table `sc_intrusion`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sc_intrusion` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `tag` varchar(40) DEFAULT NULL,
  `value` longtext NOT NULL,
  `page` longtext NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip` varchar(40) NOT NULL,
  `impact` int(11) NOT NULL DEFAULT '0',
  `filters` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sc_intrusion`
--


--
-- Table structure for table `scribite`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `scribite` (
  `mid` int(11) NOT NULL,
  `modname` varchar(64) NOT NULL,
  `modfuncs` longtext NOT NULL,
  `modareas` longtext NOT NULL,
  `modeditor` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `scribite`
--

INSERT INTO `scribite` VALUES (1,'Blocks','a:1:{i:0;s:6:\"modify\";}','a:1:{i:0;s:14:\"blocks_content\";}','-');
INSERT INTO `scribite` VALUES (2,'Book','a:1:{i:0;s:3:\"all\";}','a:1:{i:0;s:7:\"content\";}','-');
INSERT INTO `scribite` VALUES (3,'ContentExpress','a:2:{i:0;s:10:\"newcontent\";i:1;s:11:\"editcontent\";}','a:1:{i:0;s:4:\"text\";}','-');
INSERT INTO `scribite` VALUES (4,'crpCalendar','a:2:{i:0;s:3:\"new\";i:1;s:6:\"modify\";}','a:1:{i:0;s:22:\"crpcalendar_event_text\";}','-');
INSERT INTO `scribite` VALUES (5,'crpVideo','a:2:{i:0;s:3:\"new\";i:1;s:6:\"modify\";}','a:1:{i:0;s:13:\"video_content\";}','-');
INSERT INTO `scribite` VALUES (6,'FAQ','a:2:{i:0;s:3:\"new\";i:1;s:6:\"modify\";}','a:1:{i:0;s:9:\"faqanswer\";}','-');
INSERT INTO `scribite` VALUES (7,'htmlpages','a:2:{i:0;s:3:\"new\";i:1;s:6:\"modify\";}','a:1:{i:0;s:17:\"htmlpages_content\";}','-');
INSERT INTO `scribite` VALUES (8,'Mailer','a:1:{i:0;s:10:\"testconfig\";}','a:1:{i:0;s:11:\"mailer_body\";}','-');
INSERT INTO `scribite` VALUES (9,'Mediashare','a:4:{i:0;s:8:\"addmedia\";i:1;s:8:\"edititem\";i:2;s:8:\"addalbum\";i:3;s:9:\"editalbum\";}','a:1:{i:0;s:3:\"all\";}','-');
INSERT INTO `scribite` VALUES (10,'News','a:2:{i:0;s:7:\"newitem\";i:1;s:6:\"modify\";}','a:2:{i:0;s:13:\"news_hometext\";i:1;s:13:\"news_bodytext\";}','-');
INSERT INTO `scribite` VALUES (11,'Newsletter','a:1:{i:0;s:11:\"add_message\";}','a:1:{i:0;s:7:\"message\";}','-');
INSERT INTO `scribite` VALUES (12,'PagEd','a:1:{i:0;s:3:\"all\";}','a:1:{i:0;s:5:\"PagEd\";}','-');
INSERT INTO `scribite` VALUES (13,'Pages','a:2:{i:0;s:7:\"newitem\";i:1;s:6:\"modify\";}','a:1:{i:0;s:13:\"pages_content\";}','-');
INSERT INTO `scribite` VALUES (14,'Clip','a:1:{i:0;s:7:\"pubedit\";}','a:1:{i:0;s:3:\"all\";}','-');
INSERT INTO `scribite` VALUES (15,'PhotoGallery','a:2:{i:0;s:11:\"editgallery\";i:1;s:9:\"editphoto\";}','a:1:{i:0;s:17:\"photogallery_desc\";}','-');
INSERT INTO `scribite` VALUES (16,'Profile','a:1:{i:0;s:6:\"modify\";}','a:3:{i:0;s:14:\"prop_signature\";i:1;s:14:\"prop_extrainfo\";i:2;s:15:\"prop_yinterests\";}','-');
INSERT INTO `scribite` VALUES (17,'PostCalendar','a:1:{i:0;s:3:\"all\";}','a:1:{i:0;s:11:\"description\";}','-');
INSERT INTO `scribite` VALUES (18,'Reviews','a:2:{i:0;s:3:\"new\";i:1;s:6:\"modify\";}','a:1:{i:0;s:14:\"reviews_review\";}','-');
INSERT INTO `scribite` VALUES (19,'ShoppingCart','a:1:{i:0;s:3:\"all\";}','a:1:{i:0;s:11:\"description\";}','-');

--
-- Table structure for table `search_result`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `search_result` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` longtext,
  `module` varchar(100) DEFAULT NULL,
  `extra` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `found` datetime DEFAULT NULL,
  `sesid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `module` (`module`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `search_result`
--


--
-- Table structure for table `search_stat`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `search_stat` (
  `id` int(11) NOT NULL,
  `search` varchar(50) NOT NULL,
  `scount` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `search_stat`
--


--
-- Table structure for table `session_info`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `session_info` (
  `sessid` varchar(40) NOT NULL,
  `ipaddr` varchar(32) NOT NULL,
  `lastused` datetime DEFAULT '1970-01-01 00:00:00',
  `uid` int(11) DEFAULT '0',
  `remember` tinyint(4) NOT NULL DEFAULT '0',
  `vars` longtext NOT NULL,
  PRIMARY KEY (`sessid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `session_info`
--

INSERT INTO `session_info` VALUES ('a950mntsmpbv9p774cvsspi92c0o8dgs','f528764d624db129b32c21fbca0cb8d6','2011-09-08 12:42:46',2,0,'/|a:7:{s:4:\"rand\";a:2:{s:6:\"blocks\";s:37:\"-xR0}zGtfD}Y23b@r~i4(4QtvEE57joKISBeD\";s:10:\"extensions\";s:35:\"*IEZ}ET|iK{Z6{i0YR{U*b[73i*6^BC7oJ%\";}s:9:\"useragent\";s:40:\"792b5dac8ee7f58834d7b8192585054dca6ac7cf\";s:3:\"uid\";s:1:\"2\";s:7:\"_tokens\";a:11:{s:23:\"4e6897aa5df717.75123899\";a:2:{s:5:\"token\";s:92:\"NGU2ODk3YWE1ZGY3MTcuNzUxMjM4OTk6ZGE0MzMzODBkMGYwMGY3NmVjOTk1Y2FkMGZhMzA0ODE6MTMxNTQ3NzQxOA==\";s:9:\"timestamp\";i:1315477418;}s:23:\"4e689a336e47d0.87422318\";a:2:{s:5:\"token\";s:92:\"NGU2ODlhMzM2ZTQ3ZDAuODc0MjIzMTg6YjYyYzk2YjM3NjY1YzQxY2Y3MWEyYmM2ZGM1MjAwMjA6MTMxNTQ3ODA2Nw==\";s:9:\"timestamp\";i:1315478067;}s:23:\"4e689aa88166f9.17850114\";a:2:{s:5:\"token\";s:92:\"NGU2ODlhYTg4MTY2ZjkuMTc4NTAxMTQ6ZTg4MmRkYjQwM2MzZjI5YzE4MjJlZDhmMDlmYmY1NWQ6MTMxNTQ3ODE4NA==\";s:9:\"timestamp\";i:1315478184;}s:23:\"4e689b119c6d64.46100269\";a:2:{s:5:\"token\";s:92:\"NGU2ODliMTE5YzZkNjQuNDYxMDAyNjk6OWRmZGQ5M2QwODUyNmJmYmU5ZmY3ODI0MGVhZDM1OGM6MTMxNTQ3ODI4OQ==\";s:9:\"timestamp\";i:1315478289;}s:23:\"4e689b1ead9d14.09431440\";a:2:{s:5:\"token\";s:92:\"NGU2ODliMWVhZDlkMTQuMDk0MzE0NDA6ZGFkMzZkMGI4ZDM5OTBjYWU2OTBmM2M1NmZlOTIwMjg6MTMxNTQ3ODMwMg==\";s:9:\"timestamp\";i:1315478302;}s:23:\"4e689b27ad8892.32960366\";a:2:{s:5:\"token\";s:92:\"NGU2ODliMjdhZDg4OTIuMzI5NjAzNjY6ZWEwNDY1MGRhYWZhZGMyMGE5Yjg4NTI4YTYxNTI1MmE6MTMxNTQ3ODMxMQ==\";s:9:\"timestamp\";i:1315478311;}s:23:\"4e689bf630ee07.00148629\";a:2:{s:5:\"token\";s:92:\"NGU2ODliZjYzMGVlMDcuMDAxNDg2Mjk6MzI3NDFmN2RlODU5YWYxOTI5MDkxNDBmZGU1OWI2NzM6MTMxNTQ3ODUxOA==\";s:9:\"timestamp\";i:1315478518;}s:23:\"4e689c046bd3a7.15719711\";a:2:{s:5:\"token\";s:92:\"NGU2ODljMDQ2YmQzYTcuMTU3MTk3MTE6NWNkMjg3NDJhODE3ZmQzNDZkOGYyZTM5YzY2Nzg1Y2I6MTMxNTQ3ODUzMg==\";s:9:\"timestamp\";i:1315478532;}s:23:\"4e689c084f4d33.00486311\";a:2:{s:5:\"token\";s:92:\"NGU2ODljMDg0ZjRkMzMuMDA0ODYzMTE6ZGFlNmRhZTgwMmU4NjZkZGFlMGRjYWYzYThkZjc3OTM6MTMxNTQ3ODUzNg==\";s:9:\"timestamp\";i:1315478536;}s:23:\"4e689c1e738772.41270348\";a:2:{s:5:\"token\";s:92:\"NGU2ODljMWU3Mzg3NzIuNDEyNzAzNDg6MGI1MDllZjA5ZDhjNWQzZjRjNGVlYWJmN2Q4ZmNmODk6MTMxNTQ3ODU1OA==\";s:9:\"timestamp\";i:1315478558;}s:23:\"4e689c26b60766.22581863\";a:2:{s:5:\"token\";s:92:\"NGU2ODljMjZiNjA3NjYuMjI1ODE4NjM6ODU2OGZjYjAwNDg4ZDRhOTc0MGRkYzZhMTI4ZWVkY2Q6MTMxNTQ3ODU2Ng==\";s:9:\"timestamp\";i:1315478566;}}s:5:\"state\";N;s:4:\"sort\";s:4:\"name\";s:7:\"sortdir\";s:3:\"ASC\";}_zikula_messages|a:2:{s:5:\"error\";a:0:{}s:6:\"status\";a:0:{}}Zikula_Users|a:1:{s:21:\"authentication_method\";a:2:{s:7:\"modname\";s:5:\"Users\";s:6:\"method\";s:5:\"uname\";}}');

--
-- Table structure for table `themes`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `displayname` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `directory` varchar(64) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '0',
  `contact` varchar(255) NOT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `user` tinyint(4) NOT NULL DEFAULT '0',
  `system` tinyint(4) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `xhtml` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` VALUES (1,'Andreas08',3,'Andreas08','Based on the theme Andreas08 by Andreas Viklund and extended for Zikula with the CSS Framework \'fluid960gs\'.','Andreas08','2.0','',1,1,0,1,1);
INSERT INTO `themes` VALUES (2,'Atom',3,'Atom','The Atom theme is an auxiliary theme specially designed for rendering pages in Atom mark-up.','Atom','1.0','',0,0,1,1,0);
INSERT INTO `themes` VALUES (3,'Printer',3,'Printer','The Printer theme is an auxiliary theme designed specially for outputting pages in a printer-friendly format.','Printer','2.0','',0,0,1,1,1);
INSERT INTO `themes` VALUES (4,'RSS',3,'RSS','The RSS theme is an auxiliary theme designed specially for outputting pages as an RSS feed.','RSS','1.0','',0,0,1,1,0);
INSERT INTO `themes` VALUES (5,'SeaBreeze',3,'SeaBreeze','The SeaBreeze theme is a browser-oriented theme, and was updated for the release of Zikula 1.0, with revised colours and new graphics.','SeaBreeze','3.2','',0,1,0,1,1);

--
-- Table structure for table `user_property`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_property` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `dtype` int(11) NOT NULL DEFAULT '0',
  `modname` varchar(64) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `validation` longtext,
  `attributename` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prop_label` (`label`),
  KEY `prop_attr` (`attributename`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_property`
--

INSERT INTO `user_property` VALUES (1,'_UREALNAME',1,'',1,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:0;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','realname');
INSERT INTO `user_property` VALUES (2,'_UFAKEMAIL',1,'',2,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:0;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','publicemail');
INSERT INTO `user_property` VALUES (3,'_YOURHOMEPAGE',1,'',3,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:0;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','url');
INSERT INTO `user_property` VALUES (4,'_TIMEZONEOFFSET',1,'',4,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:4;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','tzoffset');
INSERT INTO `user_property` VALUES (5,'_YOURAVATAR',1,'',5,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:4;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','avatar');
INSERT INTO `user_property` VALUES (6,'_YICQ',1,'',6,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:0;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','icq');
INSERT INTO `user_property` VALUES (7,'_YAIM',1,'',7,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:0;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','aim');
INSERT INTO `user_property` VALUES (8,'_YYIM',1,'',8,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:0;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','yim');
INSERT INTO `user_property` VALUES (9,'_YMSNM',1,'',9,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:0;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','msnm');
INSERT INTO `user_property` VALUES (10,'_YLOCATION',1,'',10,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:0;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','city');
INSERT INTO `user_property` VALUES (11,'_YOCCUPATION',1,'',11,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:0;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','occupation');
INSERT INTO `user_property` VALUES (12,'_SIGNATURE',1,'',12,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:1;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','signature');
INSERT INTO `user_property` VALUES (13,'_EXTRAINFO',1,'',13,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:1;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','extrainfo');
INSERT INTO `user_property` VALUES (14,'_YINTERESTS',1,'',14,'a:5:{s:8:\"required\";i:0;s:6:\"viewby\";i:0;s:11:\"displaytype\";i:1;s:11:\"listoptions\";s:0:\"\";s:4:\"note\";s:0:\"\";}','interests');

--
-- Table structure for table `userblocks`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `userblocks` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `bid` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `last_update` datetime DEFAULT NULL,
  KEY `bid_uid_idx` (`uid`,`bid`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `userblocks`
--


--
-- Table structure for table `users`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pass` varchar(138) NOT NULL,
  `passreminder` varchar(255) NOT NULL,
  `activated` smallint(6) NOT NULL DEFAULT '0',
  `approved_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `user_regdate` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lastlogin` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `theme` varchar(255) NOT NULL,
  `ublockon` tinyint(4) NOT NULL DEFAULT '0',
  `ublock` longtext NOT NULL,
  `tz` varchar(30) NOT NULL,
  `locale` varchar(5) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `uname` (`uname`),
  KEY `email` (`email`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES (1,'guest','','','',1,'1970-01-01 00:00:00',0,'1970-01-01 00:00:00','1970-01-01 00:00:00','',0,'','','');
INSERT INTO `users` VALUES (2,'admin','example@example.com','8$lhnlG$48885fa74809424fc4576383a33ccdddcccdc4f4615d7de7e6313bf7e4a4ed1f','',1,'2011-09-08 09:32:44',2,'2011-09-08 09:32:49','2011-09-08 10:34:27','',0,'','','');

--
-- Table structure for table `users_verifychg`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_verifychg` (
  `id` int(11) NOT NULL,
  `changetype` tinyint(4) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `newemail` varchar(60) NOT NULL,
  `verifycode` varchar(138) NOT NULL,
  `created_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_verifychg`
--


--
-- Table structure for table `workflows`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `workflows` (
  `id` int(11) NOT NULL,
  `metaid` int(11) NOT NULL DEFAULT '0',
  `module` varchar(255) NOT NULL,
  `schemaname` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT '1',
  `obj_table` varchar(40) NOT NULL,
  `obj_idcolumn` varchar(40) NOT NULL,
  `obj_id` int(11) NOT NULL DEFAULT '0',
  `busy` int(11) NOT NULL DEFAULT '0',
  `debug` longtext,
  PRIMARY KEY (`id`),
  KEY `obj_table` (`obj_table`),
  KEY `obj_idcolumn` (`obj_idcolumn`),
  KEY `obj_id` (`obj_id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `workflows`
--

INSERT INTO `workflows` VALUES (1,0,'Clip','none','approved',1,'clip_pubdata2','id',1,0,'');
INSERT INTO `workflows` VALUES (2,0,'Clip','none','approved',1,'clip_pubdata2','id',2,0,'');
INSERT INTO `workflows` VALUES (3,0,'Clip','standard','approved',1,'clip_pubdata1','id',1,0,NULL);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-08 10:43:54
