-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 16, 2012 at 10:24 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zikula`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_category`
--

CREATE TABLE `admin_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `admin_category`
--

INSERT INTO `admin_category` VALUES(1, 'System', 'Core modules at the heart of operation of the site.', 0);
INSERT INTO `admin_category` VALUES(2, 'Layout', 'Layout modules for controlling the site''s look and feel.', 0);
INSERT INTO `admin_category` VALUES(3, 'Users', 'Modules for controlling user membership, access rights and profiles.', 0);
INSERT INTO `admin_category` VALUES(4, 'Content', 'Modules for providing content to your users.', 0);
INSERT INTO `admin_category` VALUES(5, 'Uncategorised', 'Newly-installed or uncategorized modules.', 0);
INSERT INTO `admin_category` VALUES(6, 'Security', 'Modules for managing the site''s security.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_module`
--

CREATE TABLE `admin_module` (
  `amid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`amid`),
  KEY `mid_cid` (`mid`,`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `admin_module`
--

INSERT INTO `admin_module` VALUES(1, 1, 1, 0);
INSERT INTO `admin_module` VALUES(2, 12, 1, 1);
INSERT INTO `admin_module` VALUES(3, 13, 2, 0);
INSERT INTO `admin_module` VALUES(4, 2, 1, 2);
INSERT INTO `admin_module` VALUES(5, 9, 3, 0);
INSERT INTO `admin_module` VALUES(6, 6, 3, 1);
INSERT INTO `admin_module` VALUES(7, 3, 2, 1);
INSERT INTO `admin_module` VALUES(8, 14, 3, 2);
INSERT INTO `admin_module` VALUES(9, 11, 6, 0);
INSERT INTO `admin_module` VALUES(10, 4, 4, 0);
INSERT INTO `admin_module` VALUES(11, 18, 4, 1);
INSERT INTO `admin_module` VALUES(12, 7, 1, 3);
INSERT INTO `admin_module` VALUES(13, 5, 1, 4);
INSERT INTO `admin_module` VALUES(14, 10, 4, 2);
INSERT INTO `admin_module` VALUES(15, 22, 4, 4);
INSERT INTO `admin_module` VALUES(16, 17, 4, 5);
INSERT INTO `admin_module` VALUES(17, 15, 6, 1);
INSERT INTO `admin_module` VALUES(18, 20, 2, 0);
INSERT INTO `admin_module` VALUES(19, 16, 4, 3);
INSERT INTO `admin_module` VALUES(20, 19, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bkey` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `content` longtext NOT NULL,
  `url` longtext NOT NULL,
  `mid` int(11) NOT NULL,
  `filter` longtext NOT NULL COMMENT '(DC2Type:array)',
  `active` int(11) NOT NULL,
  `collapsable` int(11) NOT NULL,
  `defaultstate` int(11) NOT NULL,
  `refresh` int(11) NOT NULL,
  `last_update` datetime NOT NULL,
  `language` varchar(30) NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `active_idx` (`active`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` VALUES(1, 'Extmenu', 'Main menu', 'Main menu', 'a:5:{s:14:"displaymodules";s:1:"0";s:10:"stylesheet";s:11:"extmenu.css";s:8:"template";s:24:"blocks_block_extmenu.tpl";s:11:"blocktitles";a:1:{s:2:"en";s:9:"Main menu";}s:5:"links";a:1:{s:2:"en";a:5:{i:0;a:7:{s:4:"name";s:4:"Home";s:3:"url";s:10:"{homepage}";s:5:"title";s:19:"Go to the home page";s:5:"level";i:0;s:8:"parentid";N;s:5:"image";s:0:"";s:6:"active";s:1:"1";}i:1;a:7:{s:4:"name";s:14:"Administration";s:3:"url";s:24:"{Admin:admin:adminpanel}";s:5:"title";s:29:"Go to the site administration";s:5:"level";i:0;s:8:"parentid";N;s:5:"image";s:0:"";s:6:"active";s:1:"1";}i:2;a:7:{s:4:"name";s:10:"My Account";s:3:"url";s:7:"{Users}";s:5:"title";s:24:"Go to your account panel";s:5:"level";i:0;s:8:"parentid";N;s:5:"image";s:0:"";s:6:"active";s:1:"1";}i:3;a:7:{s:4:"name";s:7:"Log out";s:3:"url";s:19:"{Users:user:logout}";s:5:"title";s:20:"Log out of this site";s:5:"level";i:0;s:8:"parentid";N;s:5:"image";s:0:"";s:6:"active";s:1:"1";}i:4;a:7:{s:4:"name";s:11:"Site search";s:3:"url";s:8:"{Search}";s:5:"title";s:16:"Search this site";s:5:"level";i:0;s:8:"parentid";N;s:5:"image";s:0:"";s:6:"active";s:1:"1";}}}}', '', 3, 'a:0:{}', 1, 1, 1, 3600, '2012-10-16 22:20:18', '');
INSERT INTO `blocks` VALUES(2, 'Search', 'Search box', 'Search block', 'a:2:{s:16:"displaySearchBtn";i:1;s:6:"active";a:4:{s:5:"Users";i:1;s:3:"Tag";i:1;s:10:"EZComments";i:1;s:4:"Clip";i:1;}}', '', 10, 'a:0:{}', 1, 1, 1, 3600, '2012-10-16 22:21:40', '');
INSERT INTO `blocks` VALUES(3, 'Html', 'This site is powered by Zikula!', 'HTML block', '<p><a href="http://zikula.org/">Zikula</a> is a content management system (CMS) and application framework. It is secure and stable, and is a good choice for sites with a large volume of traffic.</p><p>With Zikula:</p><ul><li>you can customise all aspects of the site''s appearance through themes, with support for CSS style sheets, JavaScript, Flash and all other modern web development technologies;</li><li>you can mark content as being suitable for either a single language or for all languages, and can control all aspects of localisation and internationalisation of your site;</li><li>you can be sure that your pages will display properly in all browsers, thanks to Zikula''s full compliance with W3C HTML standards;</li><li>you get a standard application-programming interface (API) that lets you easily augment your site''s functionality through modules, blocks and other extensions;</li><li>you can get help and support from the Zikula community of webmasters and developers at <a href="http://www.zikula.org">zikula.org</a>.</li></ul><p>Enjoy using Zikula!</p><p><strong>The Zikula team</strong></p><p><em>Note: Zikula is Free Open Source Software (FOSS) licensed under the GNU General Public License.</em></p>', '', 3, 'a:0:{}', 0, 1, 1, 3600, '2012-10-16 22:20:19', '');
INSERT INTO `blocks` VALUES(4, 'Login', 'User log-in', 'Login block', '', '', 14, 'a:0:{}', 1, 1, 1, 3600, '2012-10-16 22:20:19', '');
INSERT INTO `blocks` VALUES(5, 'Extmenu', 'Top navigation', 'Theme navigation', 'a:5:{s:14:"displaymodules";s:1:"0";s:10:"stylesheet";s:11:"extmenu.css";s:8:"template";s:31:"blocks_block_extmenu_topnav.tpl";s:11:"blocktitles";a:1:{s:2:"en";s:14:"Top navigation";}s:5:"links";a:1:{s:2:"en";a:3:{i:0;a:7:{s:4:"name";s:4:"Home";s:3:"url";s:10:"{homepage}";s:5:"title";s:26:"Go to the site''s home page";s:5:"level";i:0;s:8:"parentid";N;s:5:"image";s:0:"";s:6:"active";s:1:"1";}i:1;a:7:{s:4:"name";s:10:"My Account";s:3:"url";s:7:"{Users}";s:5:"title";s:24:"Go to your account panel";s:5:"level";i:0;s:8:"parentid";N;s:5:"image";s:0:"";s:6:"active";s:1:"1";}i:2;a:7:{s:4:"name";s:11:"Site search";s:3:"url";s:8:"{Search}";s:5:"title";s:16:"Search this site";s:5:"level";i:0;s:8:"parentid";N;s:5:"image";s:0:"";s:6:"active";s:1:"1";}}}}', '', 3, 'a:0:{}', 1, 1, 1, 3600, '2012-10-16 22:20:19', '');

-- --------------------------------------------------------

--
-- Table structure for table `block_placements`
--

CREATE TABLE `block_placements` (
  `pid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`pid`,`bid`),
  KEY `bid_pid_idx` (`bid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `block_placements`
--

INSERT INTO `block_placements` VALUES(1, 1, 0);
INSERT INTO `block_placements` VALUES(2, 4, 0);
INSERT INTO `block_placements` VALUES(3, 3, 0);
INSERT INTO `block_placements` VALUES(7, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `block_positions`
--

CREATE TABLE `block_positions` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `name_idx` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `block_positions`
--

INSERT INTO `block_positions` VALUES(1, 'left', 'Left blocks');
INSERT INTO `block_positions` VALUES(2, 'right', 'Right blocks');
INSERT INTO `block_positions` VALUES(3, 'center', 'Center blocks');
INSERT INTO `block_positions` VALUES(4, 'search', 'Search block');
INSERT INTO `block_positions` VALUES(5, 'header', 'Header block');
INSERT INTO `block_positions` VALUES(6, 'footer', 'Footer block');
INSERT INTO `block_positions` VALUES(7, 'topnav', 'Top navigation block');
INSERT INTO `block_positions` VALUES(8, 'bottomnav', 'Bottom navigation block');

-- --------------------------------------------------------

--
-- Table structure for table `categories_category`
--

CREATE TABLE `categories_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10005 ;

--
-- Dumping data for table `categories_category`
--

INSERT INTO `categories_category` VALUES(1, 0, 1, 0, '__SYSTEM__', '', 1, 'b:0;', 'b:0;', '/__SYSTEM__', '/1', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(2, 1, 0, 0, 'Modules', '', 2, 'a:1:{s:2:"en";s:7:"Modules";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules', '/1/2', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(3, 1, 0, 0, 'General', '', 3, 'a:1:{s:2:"en";s:7:"General";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General', '/1/3', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(4, 3, 0, 0, 'YesNo', '', 4, 'a:1:{s:2:"en";s:6:"Yes/No";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/YesNo', '/1/3/4', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(5, 4, 0, 1, '1 - Yes', 'Y', 5, 'b:0;', 'b:0;', '/__SYSTEM__/General/YesNo/1 - Yes', '/1/3/4/5', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(6, 4, 0, 1, '2 - No', 'N', 6, 'b:0;', 'b:0;', '/__SYSTEM__/General/YesNo/2 - No', '/1/3/4/6', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(10, 3, 0, 0, 'Publication Status (extended)', '', 10, 'a:1:{s:2:"en";s:29:"Publication status (extended)";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Publication Status Extended', '/1/3/10', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(11, 10, 0, 1, 'Pending', 'P', 11, 'a:1:{s:2:"en";s:7:"Pending";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Publication Status Extended/Pending', '/1/3/10/11', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(12, 10, 0, 1, 'Checked', 'C', 12, 'a:1:{s:2:"en";s:7:"Checked";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Publication Status Extended/Checked', '/1/3/10/12', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(13, 10, 0, 1, 'Approved', 'A', 13, 'a:1:{s:2:"en";s:8:"Approved";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Publication Status Extended/Approved', '/1/3/10/13', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `categories_category` VALUES(14, 10, 0, 1, 'On-line', 'O', 14, 'a:1:{s:2:"en";s:7:"On-line";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Publication Status Extended/Online', '/1/3/10/14', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(15, 10, 0, 1, 'Rejected', 'R', 15, 'a:1:{s:2:"en";s:8:"Rejected";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Publication Status Extended/Rejected', '/1/3/10/15', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(16, 3, 0, 0, 'Gender', '', 16, 'a:1:{s:2:"en";s:6:"Gender";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Gender', '/1/3/16', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(17, 16, 0, 1, 'Male', 'M', 17, 'a:1:{s:2:"en";s:4:"Male";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Gender/Male', '/1/3/16/17', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(18, 16, 0, 1, 'Female', 'F', 18, 'a:1:{s:2:"en";s:6:"Female";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Gender/Female', '/1/3/16/18', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(19, 3, 0, 0, 'Title', '', 19, 'a:1:{s:2:"en";s:5:"Title";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Title', '/1/3/19', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(20, 19, 0, 1, 'Mr', 'Mr', 20, 'a:1:{s:2:"en";s:3:"Mr.";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Title/Mr', '/1/3/19/20', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(21, 19, 0, 1, 'Mrs', 'Mrs', 21, 'a:1:{s:2:"en";s:4:"Mrs.";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Title/Mrs', '/1/3/19/21', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(22, 19, 0, 1, 'Ms', 'Ms', 22, 'a:1:{s:2:"en";s:3:"Ms.";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Title/Ms', '/1/3/19/22', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(23, 19, 0, 1, 'Miss', 'Miss', 23, 'a:1:{s:2:"en";s:4:"Miss";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Title/Miss', '/1/3/19/23', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(24, 19, 0, 1, 'Dr', 'Dr', 24, 'a:1:{s:2:"en";s:3:"Dr.";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Title/Dr', '/1/3/19/24', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(25, 3, 0, 0, 'ActiveStatus', '', 25, 'a:1:{s:2:"en";s:15:"Activity status";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/ActiveStatus', '/1/3/25', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(26, 25, 0, 1, 'Active', 'A', 26, 'a:1:{s:2:"en";s:6:"Active";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/ActiveStatus/Active', '/1/3/25/26', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(27, 25, 0, 1, 'Inactive', 'I', 27, 'a:1:{s:2:"en";s:8:"Inactive";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/ActiveStatus/Inactive', '/1/3/25/27', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(28, 3, 0, 0, 'Publication status (basic)', '', 28, 'a:1:{s:2:"en";s:26:"Publication status (basic)";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Publication Status Basic', '/1/3/28', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(29, 28, 0, 1, 'Pending', 'P', 29, 'a:1:{s:2:"en";s:7:"Pending";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Publication Status Basic/Pending', '/1/3/28/29', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(30, 28, 0, 1, 'Approved', 'A', 30, 'a:1:{s:2:"en";s:8:"Approved";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/General/Publication Status Basic/Approved', '/1/3/28/30', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(31, 1, 0, 0, 'Users', '', 31, 'a:1:{s:2:"en";s:5:"Users";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Users', '/1/31', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(32, 2, 0, 0, 'Global', '', 32, 'a:1:{s:2:"en";s:6:"Global";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global', '/1/2/32', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(33, 32, 0, 1, 'Blogging', '', 33, 'a:1:{s:2:"en";s:8:"Blogging";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global/Blogging', '/1/2/32/33', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(34, 32, 0, 1, 'Music and audio', '', 34, 'a:1:{s:2:"en";s:15:"Music and audio";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global/MusicAndAudio', '/1/2/32/34', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(35, 32, 0, 1, 'Art and photography', '', 35, 'a:1:{s:2:"en";s:19:"Art and photography";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global/ArtAndPhotography', '/1/2/32/35', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(36, 32, 0, 1, 'Writing and thinking', '', 36, 'a:1:{s:2:"en";s:20:"Writing and thinking";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global/WritingAndThinking', '/1/2/32/36', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(37, 32, 0, 1, 'Communications and media', '', 37, 'a:1:{s:2:"en";s:24:"Communications and media";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global/CommunicationsAndMedia', '/1/2/32/37', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(38, 32, 0, 1, 'Travel and culture', '', 38, 'a:1:{s:2:"en";s:18:"Travel and culture";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global/TravelAndCulture', '/1/2/32/38', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(39, 32, 0, 1, 'Science and technology', '', 39, 'a:1:{s:2:"en";s:22:"Science and technology";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global/ScienceAndTechnology', '/1/2/32/39', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(40, 32, 0, 1, 'Sport and activities', '', 40, 'a:1:{s:2:"en";s:20:"Sport and activities";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global/SportAndActivities', '/1/2/32/40', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(41, 32, 0, 1, 'Business and work', '', 41, 'a:1:{s:2:"en";s:17:"Business and work";}', 'a:1:{s:2:"en";s:0:"";}', '/__SYSTEM__/Modules/Global/BusinessAndWork', '/1/2/32/41', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `categories_category` VALUES(10000, 2, 0, 0, 'Clip', '', 2147483647, 'a:1:{s:2:"en";s:4:"Clip";}', 'a:1:{s:2:"en";s:18:"Clip root category";}', '/__SYSTEM__/Modules/Clip', '/1/2/10000', 'A', 'A', '2012-10-16 22:21:32', 2, '2012-10-16 22:21:32', 2);
INSERT INTO `categories_category` VALUES(10001, 10000, 0, 0, 'Topics', '', 2147483647, 'a:1:{s:2:"en";s:6:"Topics";}', 'a:1:{s:2:"en";s:32:"Clip topics for its publications";}', '/__SYSTEM__/Modules/Clip/Topics', '/1/2/10000/10001', 'A', 'A', '2012-10-16 22:21:32', 2, '2012-10-16 22:21:32', 2);
INSERT INTO `categories_category` VALUES(10002, 10001, 0, 1, 'Zikula', '', 2147483647, 'a:1:{s:2:"en";s:6:"Zikula";}', 'a:1:{s:2:"en";s:27:"Zikula related publications";}', '/__SYSTEM__/Modules/Clip/Topics/Zikula', '/1/2/10000/10001/10002', 'A', 'A', '2012-10-16 22:21:32', 2, '2012-10-16 22:21:32', 2);
INSERT INTO `categories_category` VALUES(10003, 10001, 0, 1, 'FreeSoftware', '', 2147483647, 'a:1:{s:2:"en";s:13:"Free Software";}', 'a:1:{s:2:"en";s:34:"Free software related publications";}', '/__SYSTEM__/Modules/Clip/Topics/FreeSoftware', '/1/2/10000/10001/10003', 'A', 'A', '2012-10-16 22:21:32', 2, '2012-10-16 22:21:32', 2);
INSERT INTO `categories_category` VALUES(10004, 10001, 0, 1, 'Community', '', 2147483647, 'a:1:{s:2:"en";s:9:"Community";}', 'a:1:{s:2:"en";s:30:"Community related publications";}', '/__SYSTEM__/Modules/Clip/Topics/Community', '/1/2/10000/10001/10004', 'A', 'A', '2012-10-16 22:21:33', 2, '2012-10-16 22:21:33', 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories_mapmeta`
--

CREATE TABLE `categories_mapmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `obj_status` varchar(1) NOT NULL DEFAULT 'A',
  `cr_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `cr_uid` int(11) NOT NULL DEFAULT '0',
  `lu_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `lu_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_categories_mapmeta` (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories_mapobj`
--

CREATE TABLE `categories_mapobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories_registry`
--

CREATE TABLE `categories_registry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories_registry`
--

INSERT INTO `categories_registry` VALUES(1, 'Clip', 'clip_pubtypes', 'Global', 32, 'A', '2012-10-16 22:21:32', 2, '2012-10-16 22:21:32', 2);
INSERT INTO `categories_registry` VALUES(2, 'Clip', 'clip_pubtypes', 'Topics', 10001, 'A', '2012-10-16 22:21:33', 2, '2012-10-16 22:21:33', 2);

-- --------------------------------------------------------

--
-- Table structure for table `clip_grouptypes`
--

CREATE TABLE `clip_grouptypes` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `sortorder` text NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clip_grouptypes`
--

INSERT INTO `clip_grouptypes` VALUES(1, 's:8:"__ROOT__";', 'a:0:{}', 'a:0:{}', 1, 4, 0);
INSERT INTO `clip_grouptypes` VALUES(2, 'a:1:{s:2:"en";s:8:"Contents";}', 'a:1:{s:2:"en";s:34:"Publication contents of this site.";}', 'a:0:{}', 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clip_pubdata1`
--

CREATE TABLE `clip_pubdata1` (
  `pid` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urltitle` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `hits` bigint(20) DEFAULT '0',
  `language` varchar(10) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `urltitle_index` (`urltitle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clip_pubdata1`
--

INSERT INTO `clip_pubdata1` VALUES(1, 1, 'hello-world', 2, 21, '', 3, 1, 0, 1, 0, '2011-01-01 00:00:00', NULL, 'A', '2012-10-16 22:21:36', 2, '2012-10-16 22:21:36', 2, 'Hello world!', '<p> This is an example of a Blog post, edit or delete it, and start to publish!\n</p>\n<p>You will find that with your customization of the autogenerated templates, Clip will be able to fulfil your expectatives. Enjoy\n</p>\n<p>(this is pre-release content, to be enriched with users’ feedback)\n</p>', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clip_pubdata2`
--

CREATE TABLE `clip_pubdata2` (
  `pid` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urltitle` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `hits` bigint(20) DEFAULT '0',
  `language` varchar(10) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `urltitle_index` (`urltitle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clip_pubdata2`
--

INSERT INTO `clip_pubdata2` VALUES(1, 1, 'about-clip-static-pages', 2, 17, '', 3, 1, 0, 1, 0, '2011-01-01 00:00:00', NULL, 'A', '2012-10-16 22:21:39', 2, '2012-10-16 22:21:39', 2, 'About Clip Static Pages', 0, '<p>As you may know, Clip can handle multiple purpose applications through its publication types. This default Pages publication type shows how it can be useful to manage the static pages of your site.\n</p>\n<p>The default fields defined are as follows:\n</p>\n<ul>\n  <li>a title (string),</li>\n  <li>the page''s content (text),</li>\n  <li>a category (list),</li>\n  <li>and even a config option (checkbox)</li>\n</ul>\n<p>The default templates are examples of how you can structure your publication type to fit your needs, in this case, a three step navigation: initially showing a list with the available categories (list.tpl), to present a list with the available pages inside one of them (list_category.tpl), and finally display the page (display.tpl).\n</p>\n<p> The list_category.tpl template has some logic on it to resolve the title depending on the filter used.\n  <br />\n</p>\n<p>The edit form is also customized to look pretty like the one of the Pages module.\n</p>\n<p>Hope that his example be useful to you.\n  <br /> Enjoy the possibilities!\n</p>\n<p>(this is pre-release content, to be enriched with users’ feedback)\n</p>', 1);
INSERT INTO `clip_pubdata2` VALUES(2, 2, 'about-us', 2, 3, '', 0, 1, 0, 1, 0, '2011-01-01 00:00:00', NULL, 'A', '2012-10-16 22:21:39', 2, '2012-10-16 22:21:39', 2, 'About Us', 0, '<p>This is a temptative About Us page for your site.</p>\n\n<p>You can enrich it easily with the help of Scribite and its WYSIWYG editors. By default, the content (a text field) have enabled the use of Scribite on its config, but it requires the module installed on the site to work.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clip_pubfields`
--

CREATE TABLE `clip_pubfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `clip_pubfields`
--

INSERT INTO `clip_pubfields` VALUES(1, 1, 'title', 'Title', 'Enter title here', 'String', '', 'C(255)', NULL, 1, 1, 1, 1, 1, 0, 0, 'A', '2012-10-16 22:21:34', 2, '2012-10-16 22:21:34', 2);
INSERT INTO `clip_pubfields` VALUES(2, 1, 'content', 'Content', '', 'Text', '1', 'C(65535)', NULL, 2, 0, 0, 1, 0, 0, 0, 'A', '2012-10-16 22:21:34', 2, '2012-10-16 22:21:34', 2);
INSERT INTO `clip_pubfields` VALUES(3, 1, 'summary', 'Summary', 'Optional hand-crafted summary of your content that can be used in your templates.', 'Text', '0', 'C(65535)', NULL, 3, 0, 0, 0, 0, 0, 0, 'A', '2012-10-16 22:21:34', 2, '2012-10-16 22:21:34', 2);
INSERT INTO `clip_pubfields` VALUES(4, 1, 'category', 'Category', '', 'List', ',1,0', 'I4', NULL, 4, 0, 0, 0, 1, 0, 0, 'A', '2012-10-16 22:21:34', 2, '2012-10-16 22:21:34', 2);
INSERT INTO `clip_pubfields` VALUES(5, 2, 'title', 'Title', '', 'String', '', 'C(255)', NULL, 1, 1, 1, 1, 1, 0, 0, 'A', '2012-10-16 22:21:37', 2, '2012-10-16 22:21:37', 2);
INSERT INTO `clip_pubfields` VALUES(6, 2, 'category', 'Category', '', 'List', ',1,0', 'I4', NULL, 2, 0, 0, 0, 1, 0, 0, 'A', '2012-10-16 22:21:37', 2, '2012-10-16 22:21:37', 2);
INSERT INTO `clip_pubfields` VALUES(7, 2, 'content', 'Content', '', 'Text', '1', 'C(65535)', NULL, 3, 0, 0, 1, 0, 0, 0, 'A', '2012-10-16 22:21:37', 2, '2012-10-16 22:21:37', 2);
INSERT INTO `clip_pubfields` VALUES(8, 2, 'displayinfo', 'Display page information', '', 'Checkbox', '', 'L', NULL, 4, 0, 0, 0, 0, 0, 0, 'A', '2012-10-16 22:21:37', 2, '2012-10-16 22:21:37', 2);

-- --------------------------------------------------------

--
-- Table structure for table `clip_pubtypes`
--

CREATE TABLE `clip_pubtypes` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clip_pubtypes`
--

INSERT INTO `clip_pubtypes` VALUES(1, 'Blog', 'blog', 'Express yourself!', NULL, '', 10, 0, '', 0, '', 0, '', 0, 0, 0, 'blog', 'standard.xml', 2, 'a:3:{s:4:"view";a:6:{s:4:"load";b:0;s:7:"onlyown";b:1;s:11:"processrefs";b:0;s:9:"checkperm";b:0;s:13:"handleplugins";b:0;s:12:"loadworkflow";b:0;}s:7:"display";a:6:{s:4:"load";b:1;s:7:"onlyown";b:1;s:11:"processrefs";b:1;s:9:"checkperm";b:1;s:13:"handleplugins";b:0;s:12:"loadworkflow";b:0;}s:4:"edit";a:1:{s:7:"onlyown";b:1;}}', 'A', '2012-10-16 22:21:33', 2, '2012-10-16 22:21:33', 2);
INSERT INTO `clip_pubtypes` VALUES(2, 'Pages', 'staticpages', 'Static pages of the site', NULL, '', 25, 0, '', 0, '', 0, '', 0, 0, 0, 'pages', 'none.xml', 2, 'a:3:{s:4:"view";a:6:{s:4:"load";b:0;s:7:"onlyown";b:1;s:11:"processrefs";b:0;s:9:"checkperm";b:0;s:13:"handleplugins";b:0;s:12:"loadworkflow";b:0;}s:7:"display";a:6:{s:4:"load";b:0;s:7:"onlyown";b:1;s:11:"processrefs";b:1;s:9:"checkperm";b:1;s:13:"handleplugins";b:0;s:12:"loadworkflow";b:0;}s:4:"edit";a:1:{s:7:"onlyown";b:1;}}', 'A', '2012-10-16 22:21:37', 2, '2012-10-16 22:21:37', 2);

-- --------------------------------------------------------

--
-- Table structure for table `clip_relations`
--

CREATE TABLE `clip_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `clip_workflowvars`
--

CREATE TABLE `clip_workflowvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL DEFAULT '0',
  `workflow` varchar(255) NOT NULL DEFAULT '',
  `setting` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ezcomments`
--

CREATE TABLE `ezcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` VALUES(1, 'Users', 0, 'By default, all users are made members of this group.', 'usr', 0, 0, 0, 0, 0);
INSERT INTO `groups` VALUES(2, 'Administrators', 0, 'Group of administrators of this site.', 'adm', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_applications`
--

CREATE TABLE `group_applications` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `application` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `group_membership`
--

CREATE TABLE `group_membership` (
  `gid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  KEY `gid_uid` (`uid`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_membership`
--

INSERT INTO `group_membership` VALUES(1, 1);
INSERT INTO `group_membership` VALUES(1, 2);
INSERT INTO `group_membership` VALUES(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `group_perms`
--

CREATE TABLE `group_perms` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL DEFAULT '0',
  `sequence` int(11) NOT NULL DEFAULT '0',
  `realm` int(11) NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `bond` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `group_perms`
--

INSERT INTO `group_perms` VALUES(1, 2, 1, 0, '.*', '.*', 800, 0);
INSERT INTO `group_perms` VALUES(2, -1, 2, 0, 'ExtendedMenublock::', '1:1:', 0, 0);
INSERT INTO `group_perms` VALUES(3, 1, 3, 0, '.*', '.*', 300, 0);
INSERT INTO `group_perms` VALUES(4, 0, 4, 0, 'ExtendedMenublock::', '1:(1|2|3):', 0, 0);
INSERT INTO `group_perms` VALUES(5, 0, 5, 0, '.*', '.*', 200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hooks`
--

CREATE TABLE `hooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hook_area`
--

CREATE TABLE `hook_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(40) NOT NULL,
  `subowner` varchar(40) DEFAULT NULL,
  `areatype` varchar(1) NOT NULL,
  `category` varchar(20) NOT NULL,
  `areaname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `areaidx` (`areaname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `hook_area`
--

INSERT INTO `hook_area` VALUES(1, 'Users', NULL, 's', 'ui_hooks', 'subscriber.users.ui_hooks.user');
INSERT INTO `hook_area` VALUES(2, 'Users', NULL, 's', 'ui_hooks', 'subscriber.users.ui_hooks.registration');
INSERT INTO `hook_area` VALUES(3, 'Users', NULL, 's', 'ui_hooks', 'subscriber.users.ui_hooks.login_screen');
INSERT INTO `hook_area` VALUES(4, 'Users', NULL, 's', 'ui_hooks', 'subscriber.users.ui_hooks.login_block');
INSERT INTO `hook_area` VALUES(5, 'Tag', NULL, 'p', 'ui_hooks', 'provider.tag.ui_hooks.service');
INSERT INTO `hook_area` VALUES(6, 'EZComments', NULL, 's', 'ui_hooks', 'subscriber.ezcomments.ui_hooks.comments');
INSERT INTO `hook_area` VALUES(7, 'EZComments', NULL, 's', 'filter_hooks', 'subscriber.ezcomments.filter_hooks.comments');
INSERT INTO `hook_area` VALUES(8, 'EZComments', NULL, 'p', 'ui_hooks', 'provider.ezcomments.ui_hooks.comments');
INSERT INTO `hook_area` VALUES(9, 'Captcha', NULL, 'p', 'ui_hooks', 'provider.captcha.ui_hooks.service');
INSERT INTO `hook_area` VALUES(10, 'Clip', NULL, 's', 'ui_hooks', 'subscriber.clip.ui_hooks.pubtype1');
INSERT INTO `hook_area` VALUES(11, 'Clip', NULL, 's', 'filter_hooks', 'subscriber.clip.filter_hooks.pubtype1');
INSERT INTO `hook_area` VALUES(12, 'Clip', NULL, 's', 'ui_hooks', 'subscriber.clip.ui_hooks.pubtype2');
INSERT INTO `hook_area` VALUES(13, 'Clip', NULL, 's', 'filter_hooks', 'subscriber.clip.filter_hooks.pubtype2');

-- --------------------------------------------------------

--
-- Table structure for table `hook_binding`
--

CREATE TABLE `hook_binding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hook_binding`
--

INSERT INTO `hook_binding` VALUES(1, 'Clip', NULL, 'EZComments', NULL, 10, 8, 'ui_hooks', 999);
INSERT INTO `hook_binding` VALUES(2, 'Clip', NULL, 'Tag', NULL, 10, 5, 'ui_hooks', 999);
INSERT INTO `hook_binding` VALUES(3, 'EZComments', NULL, 'Captcha', NULL, 6, 9, 'ui_hooks', 999);

-- --------------------------------------------------------

--
-- Table structure for table `hook_provider`
--

CREATE TABLE `hook_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hook_provider`
--

INSERT INTO `hook_provider` VALUES(1, 'Tag', NULL, 5, 'display_view', 'ui_hooks', 'Tag_HookHandlers', 'uiView', 'tag.service');
INSERT INTO `hook_provider` VALUES(2, 'Tag', NULL, 5, 'form_edit', 'ui_hooks', 'Tag_HookHandlers', 'uiEdit', 'tag.service');
INSERT INTO `hook_provider` VALUES(3, 'Tag', NULL, 5, 'validate_edit', 'ui_hooks', 'Tag_HookHandlers', 'validateEdit', 'tag.service');
INSERT INTO `hook_provider` VALUES(4, 'Tag', NULL, 5, 'process_edit', 'ui_hooks', 'Tag_HookHandlers', 'processEdit', 'tag.service');
INSERT INTO `hook_provider` VALUES(5, 'Tag', NULL, 5, 'process_delete', 'ui_hooks', 'Tag_HookHandlers', 'processDelete', 'tag.service');
INSERT INTO `hook_provider` VALUES(6, 'EZComments', NULL, 8, 'display_view', 'ui_hooks', 'EZComments_HookHandlers', 'uiView', 'ezcomments.hooks.comments');
INSERT INTO `hook_provider` VALUES(7, 'EZComments', NULL, 8, 'process_edit', 'ui_hooks', 'EZComments_HookHandlers', 'processEdit', 'ezcomments.hooks.comments');
INSERT INTO `hook_provider` VALUES(8, 'EZComments', NULL, 8, 'process_delete', 'ui_hooks', 'EZComments_HookHandlers', 'processDelete', 'ezcomments.hooks.comments');
INSERT INTO `hook_provider` VALUES(9, 'Captcha', NULL, 9, 'form_edit', 'ui_hooks', 'Captcha_HookHandlers', 'uiEdit', 'captcha.service');
INSERT INTO `hook_provider` VALUES(10, 'Captcha', NULL, 9, 'validate_edit', 'ui_hooks', 'Captcha_HookHandlers', 'validateEdit', 'captcha.service');

-- --------------------------------------------------------

--
-- Table structure for table `hook_runtime`
--

CREATE TABLE `hook_runtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `hook_runtime`
--

INSERT INTO `hook_runtime` VALUES(12, 'EZComments', NULL, 'Captcha', NULL, 6, 9, 'ezcomments.ui_hooks.comments.form_edit', 'Captcha_HookHandlers', 'uiEdit', 'captcha.service', 10);
INSERT INTO `hook_runtime` VALUES(13, 'EZComments', NULL, 'Captcha', NULL, 6, 9, 'ezcomments.ui_hooks.comments.validate_edit', 'Captcha_HookHandlers', 'validateEdit', 'captcha.service', 10);
INSERT INTO `hook_runtime` VALUES(14, 'Clip', NULL, 'EZComments', NULL, 10, 8, 'clip.ui_hooks.pubtype1.display_view', 'EZComments_HookHandlers', 'uiView', 'ezcomments.hooks.comments', 10);
INSERT INTO `hook_runtime` VALUES(15, 'Clip', NULL, 'EZComments', NULL, 10, 8, 'clip.ui_hooks.pubtype1.process_edit', 'EZComments_HookHandlers', 'processEdit', 'ezcomments.hooks.comments', 10);
INSERT INTO `hook_runtime` VALUES(16, 'Clip', NULL, 'EZComments', NULL, 10, 8, 'clip.ui_hooks.pubtype1.process_delete', 'EZComments_HookHandlers', 'processDelete', 'ezcomments.hooks.comments', 10);
INSERT INTO `hook_runtime` VALUES(17, 'Clip', NULL, 'Tag', NULL, 10, 5, 'clip.ui_hooks.pubtype1.display_view', 'Tag_HookHandlers', 'uiView', 'tag.service', 10);
INSERT INTO `hook_runtime` VALUES(18, 'Clip', NULL, 'Tag', NULL, 10, 5, 'clip.ui_hooks.pubtype1.form_edit', 'Tag_HookHandlers', 'uiEdit', 'tag.service', 10);
INSERT INTO `hook_runtime` VALUES(19, 'Clip', NULL, 'Tag', NULL, 10, 5, 'clip.ui_hooks.pubtype1.validate_edit', 'Tag_HookHandlers', 'validateEdit', 'tag.service', 10);
INSERT INTO `hook_runtime` VALUES(20, 'Clip', NULL, 'Tag', NULL, 10, 5, 'clip.ui_hooks.pubtype1.process_edit', 'Tag_HookHandlers', 'processEdit', 'tag.service', 10);
INSERT INTO `hook_runtime` VALUES(21, 'Clip', NULL, 'Tag', NULL, 10, 5, 'clip.ui_hooks.pubtype1.process_delete', 'Tag_HookHandlers', 'processDelete', 'tag.service', 10);

-- --------------------------------------------------------

--
-- Table structure for table `hook_subscriber`
--

CREATE TABLE `hook_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(40) NOT NULL,
  `subowner` varchar(40) DEFAULT NULL,
  `sareaid` int(11) NOT NULL,
  `hooktype` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `eventname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myindex` (`eventname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `hook_subscriber`
--

INSERT INTO `hook_subscriber` VALUES(1, 'Users', NULL, 1, 'display_view', 'ui_hooks', 'users.ui_hooks.user.display_view');
INSERT INTO `hook_subscriber` VALUES(2, 'Users', NULL, 1, 'form_edit', 'ui_hooks', 'users.ui_hooks.user.form_edit');
INSERT INTO `hook_subscriber` VALUES(3, 'Users', NULL, 1, 'validate_edit', 'ui_hooks', 'users.ui_hooks.user.validate_edit');
INSERT INTO `hook_subscriber` VALUES(4, 'Users', NULL, 1, 'process_edit', 'ui_hooks', 'users.ui_hooks.user.process_edit');
INSERT INTO `hook_subscriber` VALUES(5, 'Users', NULL, 1, 'form_delete', 'ui_hooks', 'users.ui_hooks.user.form_delete');
INSERT INTO `hook_subscriber` VALUES(6, 'Users', NULL, 1, 'validate_delete', 'ui_hooks', 'users.ui_hooks.user.validate_delete');
INSERT INTO `hook_subscriber` VALUES(7, 'Users', NULL, 1, 'process_delete', 'ui_hooks', 'users.ui_hooks.user.process_delete');
INSERT INTO `hook_subscriber` VALUES(8, 'Users', NULL, 2, 'display_view', 'ui_hooks', 'users.ui_hooks.registration.display_view');
INSERT INTO `hook_subscriber` VALUES(9, 'Users', NULL, 2, 'form_edit', 'ui_hooks', 'users.ui_hooks.registration.form_edit');
INSERT INTO `hook_subscriber` VALUES(10, 'Users', NULL, 2, 'validate_edit', 'ui_hooks', 'users.ui_hooks.registration.validate_edit');
INSERT INTO `hook_subscriber` VALUES(11, 'Users', NULL, 2, 'process_edit', 'ui_hooks', 'users.ui_hooks.registration.process_edit');
INSERT INTO `hook_subscriber` VALUES(12, 'Users', NULL, 2, 'form_delete', 'ui_hooks', 'users.ui_hooks.registration.form_delete');
INSERT INTO `hook_subscriber` VALUES(13, 'Users', NULL, 2, 'validate_delete', 'ui_hooks', 'users.ui_hooks.registration.validate_delete');
INSERT INTO `hook_subscriber` VALUES(14, 'Users', NULL, 2, 'process_delete', 'ui_hooks', 'users.ui_hooks.registration.process_delete');
INSERT INTO `hook_subscriber` VALUES(15, 'Users', NULL, 3, 'form_edit', 'ui_hooks', 'users.ui_hooks.login_screen.form_edit');
INSERT INTO `hook_subscriber` VALUES(16, 'Users', NULL, 3, 'validate_edit', 'ui_hooks', 'users.ui_hooks.login_screen.validate_edit');
INSERT INTO `hook_subscriber` VALUES(17, 'Users', NULL, 3, 'process_edit', 'ui_hooks', 'users.ui_hooks.login_screen.process_edit');
INSERT INTO `hook_subscriber` VALUES(18, 'Users', NULL, 4, 'form_edit', 'ui_hooks', 'users.ui_hooks.login_block.form_edit');
INSERT INTO `hook_subscriber` VALUES(19, 'Users', NULL, 4, 'validate_edit', 'ui_hooks', 'users.ui_hooks.login_block.validate_edit');
INSERT INTO `hook_subscriber` VALUES(20, 'Users', NULL, 4, 'process_edit', 'ui_hooks', 'users.ui_hooks.login_block.process_edit');
INSERT INTO `hook_subscriber` VALUES(21, 'EZComments', NULL, 6, 'display_view', 'ui_hooks', 'ezcomments.ui_hooks.comments.display_view');
INSERT INTO `hook_subscriber` VALUES(22, 'EZComments', NULL, 6, 'form_edit', 'ui_hooks', 'ezcomments.ui_hooks.comments.form_edit');
INSERT INTO `hook_subscriber` VALUES(23, 'EZComments', NULL, 6, 'form_delete', 'ui_hooks', 'ezcomments.ui_hooks.comments.form_delete');
INSERT INTO `hook_subscriber` VALUES(24, 'EZComments', NULL, 6, 'validate_edit', 'ui_hooks', 'ezcomments.ui_hooks.comments.validate_edit');
INSERT INTO `hook_subscriber` VALUES(25, 'EZComments', NULL, 6, 'validate_delete', 'ui_hooks', 'ezcomments.ui_hooks.comments.validate_delete');
INSERT INTO `hook_subscriber` VALUES(26, 'EZComments', NULL, 6, 'process_edit', 'ui_hooks', 'ezcomments.ui_hooks.comments.process_edit');
INSERT INTO `hook_subscriber` VALUES(27, 'EZComments', NULL, 6, 'process_delete', 'ui_hooks', 'ezcomments.ui_hooks.comments.process_delete');
INSERT INTO `hook_subscriber` VALUES(28, 'EZComments', NULL, 7, 'filter', 'filter_hooks', 'ezcomments.filter_hooks.comments.filter');
INSERT INTO `hook_subscriber` VALUES(29, 'Clip', NULL, 10, 'display_view', 'ui_hooks', 'clip.ui_hooks.pubtype1.display_view');
INSERT INTO `hook_subscriber` VALUES(30, 'Clip', NULL, 10, 'form_edit', 'ui_hooks', 'clip.ui_hooks.pubtype1.form_edit');
INSERT INTO `hook_subscriber` VALUES(31, 'Clip', NULL, 10, 'form_delete', 'ui_hooks', 'clip.ui_hooks.pubtype1.form_delete');
INSERT INTO `hook_subscriber` VALUES(32, 'Clip', NULL, 10, 'validate_edit', 'ui_hooks', 'clip.ui_hooks.pubtype1.validate_edit');
INSERT INTO `hook_subscriber` VALUES(33, 'Clip', NULL, 10, 'validate_delete', 'ui_hooks', 'clip.ui_hooks.pubtype1.validate_delete');
INSERT INTO `hook_subscriber` VALUES(34, 'Clip', NULL, 10, 'process_edit', 'ui_hooks', 'clip.ui_hooks.pubtype1.process_edit');
INSERT INTO `hook_subscriber` VALUES(35, 'Clip', NULL, 10, 'process_delete', 'ui_hooks', 'clip.ui_hooks.pubtype1.process_delete');
INSERT INTO `hook_subscriber` VALUES(36, 'Clip', NULL, 11, 'filter', 'filter_hooks', 'clip.filter_hooks.pubtype1.filter');
INSERT INTO `hook_subscriber` VALUES(37, 'Clip', NULL, 12, 'display_view', 'ui_hooks', 'clip.ui_hooks.pubtype2.display_view');
INSERT INTO `hook_subscriber` VALUES(38, 'Clip', NULL, 12, 'form_edit', 'ui_hooks', 'clip.ui_hooks.pubtype2.form_edit');
INSERT INTO `hook_subscriber` VALUES(39, 'Clip', NULL, 12, 'form_delete', 'ui_hooks', 'clip.ui_hooks.pubtype2.form_delete');
INSERT INTO `hook_subscriber` VALUES(40, 'Clip', NULL, 12, 'validate_edit', 'ui_hooks', 'clip.ui_hooks.pubtype2.validate_edit');
INSERT INTO `hook_subscriber` VALUES(41, 'Clip', NULL, 12, 'validate_delete', 'ui_hooks', 'clip.ui_hooks.pubtype2.validate_delete');
INSERT INTO `hook_subscriber` VALUES(42, 'Clip', NULL, 12, 'process_edit', 'ui_hooks', 'clip.ui_hooks.pubtype2.process_edit');
INSERT INTO `hook_subscriber` VALUES(43, 'Clip', NULL, 12, 'process_delete', 'ui_hooks', 'clip.ui_hooks.pubtype2.process_delete');
INSERT INTO `hook_subscriber` VALUES(44, 'Clip', NULL, 13, 'filter', 'filter_hooks', 'clip.filter_hooks.pubtype2.filter');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` VALUES(1, 'Extensions', 3, 'Extensions', 'extensions', 'Manage your modules and plugins.', 'Extensions', '3.7.10', 'a:1:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:12:"Extensions::";s:2:"::";}', '', '');
INSERT INTO `modules` VALUES(2, 'Admin', 3, 'Administration panel', 'adminpanel', 'Backend administration interface.', 'Admin', '1.9.1', 'a:1:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:7:"Admin::";s:38:"Admin Category name::Admin Category ID";}', '', '');
INSERT INTO `modules` VALUES(3, 'Blocks', 3, 'Blocks', 'blocks', 'Block administration module.', 'Blocks', '3.8.1', 'a:2:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:4:{s:8:"Blocks::";s:30:"Block key:Block title:Block ID";s:16:"Blocks::position";s:26:"Position name::Position ID";s:23:"Menutree:menutreeblock:";s:26:"Block ID:Link Name:Link ID";s:19:"ExtendedMenublock::";s:17:"Block ID:Link ID:";}', '', '');
INSERT INTO `modules` VALUES(4, 'Categories', 3, 'Categories', 'categories', 'Category administration.', 'Categories', '1.2.1', 'a:2:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:20:"Categories::Category";s:40:"Category ID:Category Path:Category IPath";}', '', '');
INSERT INTO `modules` VALUES(5, 'Errors', 3, 'Errors', 'errors', 'Error display module.', 'Errors', '1.1.1', 'a:1:{s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:8:"Errors::";s:2:"::";}', '', '');
INSERT INTO `modules` VALUES(6, 'Groups', 3, 'Groups', 'groups', 'User group administration module.', 'Groups', '2.3.2', 'a:2:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:8:"Groups::";s:10:"Group ID::";}', '', '');
INSERT INTO `modules` VALUES(7, 'Mailer', 3, 'Mailer', 'mailer', 'Mailer module, provides mail API and mail setting administration.', 'Mailer', '1.3.2', 'a:1:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:8:"Mailer::";s:2:"::";}', '', '');
INSERT INTO `modules` VALUES(8, 'PageLock', 3, 'Page lock', 'pagelock', 'Provides the ability to lock pages when they are in use, for content and access control.', 'PageLock', '1.1.1', 'a:0:{}', 1, 'a:1:{s:10:"PageLock::";s:2:"::";}', '', '');
INSERT INTO `modules` VALUES(9, 'Permissions', 3, 'Permissions', 'permissions', 'User permissions manager.', 'Permissions', '1.1.1', 'a:1:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:13:"Permissions::";s:2:"::";}', '', '');
INSERT INTO `modules` VALUES(10, 'Search', 3, 'Site search', 'search', 'Site search module.', 'Search', '1.5.2', 'a:2:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:8:"Search::";s:13:"Module name::";}', '', '');
INSERT INTO `modules` VALUES(11, 'SecurityCenter', 3, 'Security Center', 'securitycenter', 'Manage site security and settings.', 'SecurityCenter', '1.4.4', 'a:1:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:16:"SecurityCenter::";s:2:"::";}', '', '');
INSERT INTO `modules` VALUES(12, 'Settings', 3, 'General settings', 'settings', 'General site configuration interface.', 'Settings', '2.9.7', 'a:1:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:10:"Settings::";s:2:"::";}', '', '');
INSERT INTO `modules` VALUES(13, 'Theme', 3, 'Themes', 'theme', 'Themes module to manage site layout, render and cache settings.', 'Theme', '3.4.2', 'a:2:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:7:"Theme::";s:12:"Theme name::";}', '', '');
INSERT INTO `modules` VALUES(14, 'Users', 3, 'Users', 'users', 'Provides an interface for configuring and administering registered user accounts. Incorporates all needed functionality, but can work in close unison with the third party profile module configured in the general settings of the site.', 'Users', '2.2.0', 'a:4:{s:14:"authentication";a:1:{s:7:"version";s:3:"1.0";}s:15:"hook_subscriber";a:1:{s:7:"enabled";b:1;}s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:2:{s:7:"Users::";s:14:"Uname::User ID";s:16:"Users::MailUsers";s:2:"::";}', '1.3.0', '');
INSERT INTO `modules` VALUES(15, 'Captcha', 2, 'Captcha', 'captcha', 'Captcha hook module', 'Captcha', '1.0.0', 'a:2:{s:13:"hook_provider";a:1:{s:7:"enabled";b:1;}s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:9:"Captcha::";s:2:"::";}', '1.3.0', '');
INSERT INTO `modules` VALUES(16, 'Clip', 2, 'Clip', 'clip', 'Dynamic content publishing platform for Zikula.', 'Clip', '0.9.4', 'a:3:{s:15:"hook_subscriber";a:2:{s:7:"enabled";b:1;s:13:"subscribe_own";b:1;}s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:5:{s:6:"Clip::";s:2:"::";s:21:"Clip:grouptypeid:main";s:15:"tid::templateid";s:21:"Clip:grouptypeid:list";s:15:"tid::templateid";s:24:"Clip:grouptypeid:display";s:18:"tid:pid:templateid";s:21:"Clip:grouptypeid:edit";s:21:"tid:pid:workflowstate";}', '1.3.2', '1.3.99');
INSERT INTO `modules` VALUES(17, 'EZComments', 2, 'Comments', 'comments', 'Attach comments to every kind of content using hooks', 'EZComments', '3.0.1', 'a:4:{s:13:"hook_provider";a:1:{s:7:"enabled";b:1;}s:15:"hook_subscriber";a:1:{s:7:"enabled";b:1;}s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:3:{s:12:"EZComments::";s:25:"Module:Item ID:Comment ID";s:21:"EZComments::trackback";s:15:"Module:Item ID:";s:20:"EZComments::pingback";s:15:"Module:Item ID:";}', '1.3.0', '1.3.99');
INSERT INTO `modules` VALUES(18, 'Legal', 2, 'Legal info manager', 'legalmod', 'Provides an interface for managing the site''s legal documents.', 'Legal', '2.0.1', 'a:2:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:8:{s:7:"Legal::";s:2:"::";s:18:"Legal::legalnotice";s:2:"::";s:17:"Legal::termsofuse";s:2:"::";s:20:"Legal::privacypolicy";s:2:"::";s:16:"Legal::agepolicy";s:2:"::";s:29:"Legal::accessibilitystatement";s:2:"::";s:30:"Legal::cancellationrightpolicy";s:2:"::";s:22:"Legal::tradeconditions";s:2:"::";}', '1.3.0', '1.3.99');
INSERT INTO `modules` VALUES(19, 'Profile', 2, 'Profile', 'profile', 'Provides a personal account control panel for each registered user, an interface to administer the personal information items displayed within it, and a registered users list functionality. Works in close unison with the ''Users'' module.', 'Profile', '1.6.1', 'a:3:{s:7:"profile";a:1:{s:7:"version";s:3:"1.0";}s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:6:{s:9:"Profile::";s:2:"::";s:13:"Profile::view";s:2:"::";s:13:"Profile::item";s:56:"DynamicUserData PropertyName::DynamicUserData PropertyID";s:16:"Profile:Members:";s:2:"::";s:22:"Profile:Members:recent";s:2:"::";s:22:"Profile:Members:online";s:2:"::";}', '1.3.0', '1.3.99');
INSERT INTO `modules` VALUES(20, 'Scribite', 2, 'Scribite', 'scribite', 'WYSIWYG for Zikula', 'Scribite', '4.3.1', 'a:2:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:10:"Scribite::";s:12:"Modulename::";}', '1.3.0', '1.3.99');
INSERT INTO `modules` VALUES(21, 'Socialise', 2, 'Socialise!', 'socialise', 'Share content with social websites like Facebook and Twitter and handle your site Keys.', 'Socialise', '0.2.3', 'a:1:{s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}}', 1, 'a:1:{s:11:"Socialise::";s:2:"::";}', '', '');
INSERT INTO `modules` VALUES(22, 'Tag', 2, 'Tag', 'tag', 'Tagging module', 'Tag', '1.0.2', 'a:3:{s:13:"hook_provider";a:1:{s:7:"enabled";b:1;}s:5:"admin";a:1:{s:7:"version";s:3:"1.0";}s:4:"user";a:1:{s:7:"version";s:3:"1.0";}}', 3, 'a:1:{s:5:"Tag::";s:2:"::";}', '1.3.2', '1.3.99');

-- --------------------------------------------------------

--
-- Table structure for table `module_deps`
--

CREATE TABLE `module_deps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modid` int(11) NOT NULL DEFAULT '0',
  `modname` varchar(64) NOT NULL,
  `minversion` varchar(10) NOT NULL,
  `maxversion` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `module_deps`
--

INSERT INTO `module_deps` VALUES(17, 16, 'Scribite', '4.2.1', '', 2);
INSERT INTO `module_deps` VALUES(18, 17, 'Akismet', '2.0', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `module_vars`
--

CREATE TABLE `module_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modname` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `mod_var` (`modname`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=281 ;

--
-- Dumping data for table `module_vars`
--

INSERT INTO `module_vars` VALUES(1, '/EventHandlers', 'Extensions', 'a:2:{i:0;a:3:{s:9:"eventname";s:27:"controller.method_not_found";s:8:"callable";a:2:{i:0;s:17:"Extensions_HookUI";i:1;s:5:"hooks";}s:6:"weight";i:10;}i:1;a:3:{s:9:"eventname";s:27:"controller.method_not_found";s:8:"callable";a:2:{i:0;s:17:"Extensions_HookUI";i:1;s:14:"moduleservices";}s:6:"weight";i:10;}}');
INSERT INTO `module_vars` VALUES(2, 'Extensions', 'itemsperpage', 'i:25;');
INSERT INTO `module_vars` VALUES(3, 'ZConfig', 'debug', 's:1:"0";');
INSERT INTO `module_vars` VALUES(4, 'ZConfig', 'sitename', 's:9:"Site name";');
INSERT INTO `module_vars` VALUES(5, 'ZConfig', 'slogan', 's:16:"Site description";');
INSERT INTO `module_vars` VALUES(6, 'ZConfig', 'metakeywords', 's:237:"zikula, portal, portal web, open source, web site, website, weblog, blog, content management, content management system, web content management, web content management system, enterprise web content management, cms, application framework";');
INSERT INTO `module_vars` VALUES(7, 'ZConfig', 'defaultpagetitle', 's:9:"Site name";');
INSERT INTO `module_vars` VALUES(8, 'ZConfig', 'defaultmetadescription', 's:16:"Site description";');
INSERT INTO `module_vars` VALUES(9, 'ZConfig', 'startdate', 's:7:"10/2012";');
INSERT INTO `module_vars` VALUES(10, 'ZConfig', 'adminmail', 's:19:"example@example.com";');
INSERT INTO `module_vars` VALUES(11, 'ZConfig', 'Default_Theme', 's:9:"Andreas08";');
INSERT INTO `module_vars` VALUES(12, 'ZConfig', 'timezone_offset', 's:1:"0";');
INSERT INTO `module_vars` VALUES(13, 'ZConfig', 'timezone_server', 's:1:"0";');
INSERT INTO `module_vars` VALUES(14, 'ZConfig', 'funtext', 's:1:"1";');
INSERT INTO `module_vars` VALUES(15, 'ZConfig', 'reportlevel', 's:1:"0";');
INSERT INTO `module_vars` VALUES(16, 'ZConfig', 'startpage', 's:4:"Clip";');
INSERT INTO `module_vars` VALUES(17, 'ZConfig', 'Version_Num', 's:5:"1.3.4";');
INSERT INTO `module_vars` VALUES(18, 'ZConfig', 'Version_ID', 's:6:"Zikula";');
INSERT INTO `module_vars` VALUES(19, 'ZConfig', 'Version_Sub', 's:3:"vai";');
INSERT INTO `module_vars` VALUES(20, 'ZConfig', 'debug_sql', 's:1:"0";');
INSERT INTO `module_vars` VALUES(21, 'ZConfig', 'multilingual', 's:1:"1";');
INSERT INTO `module_vars` VALUES(22, 'ZConfig', 'useflags', 's:1:"0";');
INSERT INTO `module_vars` VALUES(23, 'ZConfig', 'theme_change', 's:1:"0";');
INSERT INTO `module_vars` VALUES(24, 'ZConfig', 'UseCompression', 's:1:"0";');
INSERT INTO `module_vars` VALUES(25, 'ZConfig', 'siteoff', 'i:0;');
INSERT INTO `module_vars` VALUES(26, 'ZConfig', 'siteoffreason', 's:0:"";');
INSERT INTO `module_vars` VALUES(27, 'ZConfig', 'starttype', 's:4:"user";');
INSERT INTO `module_vars` VALUES(28, 'ZConfig', 'startfunc', 's:4:"list";');
INSERT INTO `module_vars` VALUES(29, 'ZConfig', 'startargs', 's:5:"tid=1";');
INSERT INTO `module_vars` VALUES(30, 'ZConfig', 'entrypoint', 's:9:"index.php";');
INSERT INTO `module_vars` VALUES(31, 'ZConfig', 'language_detect', 'i:0;');
INSERT INTO `module_vars` VALUES(32, 'ZConfig', 'shorturls', 's:1:"1";');
INSERT INTO `module_vars` VALUES(33, 'ZConfig', 'shorturlstype', 's:1:"0";');
INSERT INTO `module_vars` VALUES(34, 'ZConfig', 'shorturlsseparator', 's:1:"-";');
INSERT INTO `module_vars` VALUES(35, 'ZConfig', 'shorturlsstripentrypoint', 's:1:"1";');
INSERT INTO `module_vars` VALUES(36, 'ZConfig', 'shorturlsdefaultmodule', 's:4:"Clip";');
INSERT INTO `module_vars` VALUES(37, 'ZConfig', 'profilemodule', 's:7:"Profile";');
INSERT INTO `module_vars` VALUES(38, 'ZConfig', 'messagemodule', 's:0:"";');
INSERT INTO `module_vars` VALUES(39, 'ZConfig', 'languageurl', 'i:0;');
INSERT INTO `module_vars` VALUES(40, 'ZConfig', 'ajaxtimeout', 'i:5000;');
INSERT INTO `module_vars` VALUES(41, 'ZConfig', 'permasearch', 's:161:"À,Á,Â,Ã,Å,à,á,â,ã,å,Ò,Ó,Ô,Õ,Ø,ò,ó,ô,õ,ø,È,É,Ê,Ë,è,é,ê,ë,Ç,ç,Ì,Í,Î,Ï,ì,í,î,ï,Ù,Ú,Û,ù,ú,û,ÿ,Ñ,ñ,ß,ä,Ä,ö,Ö,ü,Ü";');
INSERT INTO `module_vars` VALUES(42, 'ZConfig', 'permareplace', 's:114:"A,A,A,A,A,a,a,a,a,a,O,O,O,O,O,o,o,o,o,o,E,E,E,E,e,e,e,e,C,c,I,I,I,I,i,i,i,i,U,U,U,u,u,u,y,N,n,ss,ae,Ae,oe,Oe,ue,Ue";');
INSERT INTO `module_vars` VALUES(43, 'ZConfig', 'language', 's:3:"eng";');
INSERT INTO `module_vars` VALUES(44, 'ZConfig', 'locale', 's:2:"en";');
INSERT INTO `module_vars` VALUES(45, 'ZConfig', 'language_i18n', 's:2:"en";');
INSERT INTO `module_vars` VALUES(46, 'ZConfig', 'idnnames', 'i:1;');
INSERT INTO `module_vars` VALUES(47, 'Theme', 'modulesnocache', 's:0:"";');
INSERT INTO `module_vars` VALUES(48, 'Theme', 'enablecache', 'b:0;');
INSERT INTO `module_vars` VALUES(49, 'Theme', 'compile_check', 'b:1;');
INSERT INTO `module_vars` VALUES(50, 'Theme', 'cache_lifetime', 'i:1800;');
INSERT INTO `module_vars` VALUES(51, 'Theme', 'cache_lifetime_mods', 'i:1800;');
INSERT INTO `module_vars` VALUES(52, 'Theme', 'force_compile', 'b:0;');
INSERT INTO `module_vars` VALUES(53, 'Theme', 'trimwhitespace', 'b:0;');
INSERT INTO `module_vars` VALUES(54, 'Theme', 'maxsizeforlinks', 'i:30;');
INSERT INTO `module_vars` VALUES(55, 'Theme', 'itemsperpage', 'i:25;');
INSERT INTO `module_vars` VALUES(56, 'Theme', 'cssjscombine', 'b:0;');
INSERT INTO `module_vars` VALUES(57, 'Theme', 'cssjscompress', 'b:0;');
INSERT INTO `module_vars` VALUES(58, 'Theme', 'cssjsminify', 'b:0;');
INSERT INTO `module_vars` VALUES(59, 'Theme', 'cssjscombine_lifetime', 'i:3600;');
INSERT INTO `module_vars` VALUES(60, 'Theme', 'render_compile_check', 'b:1;');
INSERT INTO `module_vars` VALUES(61, 'Theme', 'render_force_compile', 'b:0;');
INSERT INTO `module_vars` VALUES(62, 'Theme', 'render_cache', 'b:1;');
INSERT INTO `module_vars` VALUES(63, 'Theme', 'render_expose_template', 'b:0;');
INSERT INTO `module_vars` VALUES(64, 'Theme', 'render_lifetime', 'i:3600;');
INSERT INTO `module_vars` VALUES(65, 'Admin', 'modulesperrow', 'i:3;');
INSERT INTO `module_vars` VALUES(66, 'Admin', 'itemsperpage', 'i:15;');
INSERT INTO `module_vars` VALUES(67, 'Admin', 'defaultcategory', 'i:5;');
INSERT INTO `module_vars` VALUES(68, 'Admin', 'admingraphic', 'i:1;');
INSERT INTO `module_vars` VALUES(69, 'Admin', 'startcategory', 'i:1;');
INSERT INTO `module_vars` VALUES(70, 'Admin', 'ignoreinstallercheck', 'i:0;');
INSERT INTO `module_vars` VALUES(71, 'Admin', 'admintheme', 's:0:"";');
INSERT INTO `module_vars` VALUES(72, 'Admin', 'displaynametype', 'i:1;');
INSERT INTO `module_vars` VALUES(73, 'Permissions', 'filter', 'i:1;');
INSERT INTO `module_vars` VALUES(74, 'Permissions', 'warnbar', 'i:1;');
INSERT INTO `module_vars` VALUES(75, 'Permissions', 'rowview', 'i:20;');
INSERT INTO `module_vars` VALUES(76, 'Permissions', 'rowedit', 'i:20;');
INSERT INTO `module_vars` VALUES(77, 'Permissions', 'lockadmin', 'i:1;');
INSERT INTO `module_vars` VALUES(78, 'Permissions', 'adminid', 'i:1;');
INSERT INTO `module_vars` VALUES(79, 'Groups', 'itemsperpage', 'i:25;');
INSERT INTO `module_vars` VALUES(80, 'Groups', 'defaultgroup', 'i:1;');
INSERT INTO `module_vars` VALUES(81, 'Groups', 'mailwarning', 'i:0;');
INSERT INTO `module_vars` VALUES(82, 'Groups', 'hideclosed', 'i:0;');
INSERT INTO `module_vars` VALUES(83, 'Groups', 'primaryadmingroup', 'i:2;');
INSERT INTO `module_vars` VALUES(84, 'Blocks', 'collapseable', 'i:0;');
INSERT INTO `module_vars` VALUES(85, 'Users', 'accountdisplaygraphics', 'b:1;');
INSERT INTO `module_vars` VALUES(86, 'Users', 'accountitemsperpage', 'i:25;');
INSERT INTO `module_vars` VALUES(87, 'Users', 'accountitemsperrow', 'i:5;');
INSERT INTO `module_vars` VALUES(88, 'Users', 'userimg', 's:11:"images/menu";');
INSERT INTO `module_vars` VALUES(89, 'Users', 'anonymous', 's:5:"Guest";');
INSERT INTO `module_vars` VALUES(90, 'Users', 'avatarpath', 's:13:"images/avatar";');
INSERT INTO `module_vars` VALUES(91, 'Users', 'chgemail_expiredays', 'i:0;');
INSERT INTO `module_vars` VALUES(92, 'Users', 'chgpass_expiredays', 'i:0;');
INSERT INTO `module_vars` VALUES(93, 'Users', 'reg_expiredays', 'i:0;');
INSERT INTO `module_vars` VALUES(94, 'Users', 'allowgravatars', 'b:1;');
INSERT INTO `module_vars` VALUES(95, 'Users', 'gravatarimage', 's:12:"gravatar.gif";');
INSERT INTO `module_vars` VALUES(96, 'Users', 'hash_method', 's:6:"sha256";');
INSERT INTO `module_vars` VALUES(97, 'Users', 'itemsperpage', 'i:25;');
INSERT INTO `module_vars` VALUES(98, 'Users', 'login_displayapproval', 'b:0;');
INSERT INTO `module_vars` VALUES(99, 'Users', 'login_displaydelete', 'b:0;');
INSERT INTO `module_vars` VALUES(100, 'Users', 'login_displayinactive', 'b:0;');
INSERT INTO `module_vars` VALUES(101, 'Users', 'login_displayverify', 'b:0;');
INSERT INTO `module_vars` VALUES(102, 'Users', 'loginviaoption', 'i:0;');
INSERT INTO `module_vars` VALUES(103, 'Users', 'login_redirect', 'b:1;');
INSERT INTO `module_vars` VALUES(104, 'Users', 'changeemail', 'b:1;');
INSERT INTO `module_vars` VALUES(105, 'Users', 'minpass', 'i:5;');
INSERT INTO `module_vars` VALUES(106, 'Users', 'use_password_strength_meter', 'b:0;');
INSERT INTO `module_vars` VALUES(107, 'Users', 'reg_notifyemail', 's:0:"";');
INSERT INTO `module_vars` VALUES(108, 'Users', 'reg_question', 's:0:"";');
INSERT INTO `module_vars` VALUES(109, 'Users', 'reg_answer', 's:0:"";');
INSERT INTO `module_vars` VALUES(110, 'Users', 'moderation', 'b:0;');
INSERT INTO `module_vars` VALUES(111, 'Users', 'moderation_order', 'i:0;');
INSERT INTO `module_vars` VALUES(112, 'Users', 'reg_autologin', 'b:0;');
INSERT INTO `module_vars` VALUES(113, 'Users', 'reg_noregreasons', 's:51:"Sorry! New user registration is currently disabled.";');
INSERT INTO `module_vars` VALUES(114, 'Users', 'reg_allowreg', 'b:1;');
INSERT INTO `module_vars` VALUES(115, 'Users', 'reg_Illegaluseragents', 's:0:"";');
INSERT INTO `module_vars` VALUES(116, 'Users', 'reg_Illegaldomains', 's:0:"";');
INSERT INTO `module_vars` VALUES(117, 'Users', 'reg_Illegalusername', 's:66:"root, webmaster, admin, administrator, nobody, anonymous, username";');
INSERT INTO `module_vars` VALUES(118, 'Users', 'reg_verifyemail', 'i:2;');
INSERT INTO `module_vars` VALUES(119, 'Users', 'reg_uniemail', 'b:1;');
INSERT INTO `module_vars` VALUES(120, '/EventHandlers', 'Users', 'a:4:{i:0;a:3:{s:9:"eventname";s:19:"get.pending_content";s:8:"callable";a:2:{i:0;s:29:"Users_Listener_PendingContent";i:1;s:22:"pendingContentListener";}s:6:"weight";i:10;}i:1;a:3:{s:9:"eventname";s:15:"user.login.veto";s:8:"callable";a:2:{i:0;s:35:"Users_Listener_ForcedPasswordChange";i:1;s:28:"forcedPasswordChangeListener";}s:6:"weight";i:10;}i:2;a:3:{s:9:"eventname";s:21:"user.logout.succeeded";s:8:"callable";a:2:{i:0;s:34:"Users_Listener_ClearUsersNamespace";i:1;s:27:"clearUsersNamespaceListener";}s:6:"weight";i:10;}i:3;a:3:{s:9:"eventname";s:25:"frontcontroller.exception";s:8:"callable";a:2:{i:0;s:34:"Users_Listener_ClearUsersNamespace";i:1;s:27:"clearUsersNamespaceListener";}s:6:"weight";i:10;}}');
INSERT INTO `module_vars` VALUES(121, 'SecurityCenter', 'itemsperpage', 'i:10;');
INSERT INTO `module_vars` VALUES(122, 'ZConfig', 'updatecheck', 'i:1;');
INSERT INTO `module_vars` VALUES(123, 'ZConfig', 'updatefrequency', 'i:7;');
INSERT INTO `module_vars` VALUES(124, 'ZConfig', 'updatelastchecked', 'i:1350418844;');
INSERT INTO `module_vars` VALUES(125, 'ZConfig', 'updateversion', 's:5:"1.3.4";');
INSERT INTO `module_vars` VALUES(126, 'ZConfig', 'keyexpiry', 'i:0;');
INSERT INTO `module_vars` VALUES(127, 'ZConfig', 'sessionauthkeyua', 'b:0;');
INSERT INTO `module_vars` VALUES(128, 'ZConfig', 'secure_domain', 's:0:"";');
INSERT INTO `module_vars` VALUES(129, 'ZConfig', 'signcookies', 'i:1;');
INSERT INTO `module_vars` VALUES(130, 'ZConfig', 'signingkey', 's:40:"e45f4e6ba245e8e28d087405e4374a81ddf62af8";');
INSERT INTO `module_vars` VALUES(131, 'ZConfig', 'seclevel', 's:6:"Medium";');
INSERT INTO `module_vars` VALUES(132, 'ZConfig', 'secmeddays', 'i:7;');
INSERT INTO `module_vars` VALUES(133, 'ZConfig', 'secinactivemins', 'i:20;');
INSERT INTO `module_vars` VALUES(134, 'ZConfig', 'sessionstoretofile', 'i:0;');
INSERT INTO `module_vars` VALUES(135, 'ZConfig', 'sessionsavepath', 's:0:"";');
INSERT INTO `module_vars` VALUES(136, 'ZConfig', 'gc_probability', 'i:100;');
INSERT INTO `module_vars` VALUES(137, 'ZConfig', 'anonymoussessions', 'i:1;');
INSERT INTO `module_vars` VALUES(138, 'ZConfig', 'sessionrandregenerate', 'b:1;');
INSERT INTO `module_vars` VALUES(139, 'ZConfig', 'sessionregenerate', 'b:1;');
INSERT INTO `module_vars` VALUES(140, 'ZConfig', 'sessionregeneratefreq', 'i:10;');
INSERT INTO `module_vars` VALUES(141, 'ZConfig', 'sessionipcheck', 'i:0;');
INSERT INTO `module_vars` VALUES(142, 'ZConfig', 'sessionname', 's:5:"_zsid";');
INSERT INTO `module_vars` VALUES(143, 'ZConfig', 'sessioncsrftokenonetime', 'i:0;');
INSERT INTO `module_vars` VALUES(144, 'ZConfig', 'filtergetvars', 'i:1;');
INSERT INTO `module_vars` VALUES(145, 'ZConfig', 'filterpostvars', 'i:1;');
INSERT INTO `module_vars` VALUES(146, 'ZConfig', 'filtercookievars', 'i:1;');
INSERT INTO `module_vars` VALUES(147, 'ZConfig', 'outputfilter', 'i:1;');
INSERT INTO `module_vars` VALUES(148, 'ZConfig', 'htmlpurifierlocation', 's:46:"system/SecurityCenter/lib/vendor/htmlpurifier/";');
INSERT INTO `module_vars` VALUES(149, 'SecurityCenter', 'htmlpurifierConfig', 's:3942:"a:10:{s:4:"Attr";a:15:{s:14:"AllowedClasses";N;s:19:"AllowedFrameTargets";a:0:{}s:10:"AllowedRel";a:3:{s:8:"nofollow";b:1;s:11:"imageviewer";b:1;s:8:"lightbox";b:1;}s:10:"AllowedRev";a:0:{}s:13:"ClassUseCDATA";N;s:15:"DefaultImageAlt";N;s:19:"DefaultInvalidImage";s:0:"";s:22:"DefaultInvalidImageAlt";s:13:"Invalid image";s:14:"DefaultTextDir";s:3:"ltr";s:8:"EnableID";b:0;s:16:"ForbiddenClasses";a:0:{}s:11:"IDBlacklist";a:0:{}s:17:"IDBlacklistRegexp";N;s:8:"IDPrefix";s:0:"";s:13:"IDPrefixLocal";s:0:"";}s:10:"AutoFormat";a:10:{s:13:"AutoParagraph";b:0;s:6:"Custom";a:0:{}s:14:"DisplayLinkURI";b:0;s:7:"Linkify";b:0;s:22:"PurifierLinkify.DocURL";s:3:"#%s";s:15:"PurifierLinkify";b:0;s:33:"RemoveEmpty.RemoveNbsp.Exceptions";a:2:{s:2:"td";b:1;s:2:"th";b:1;}s:22:"RemoveEmpty.RemoveNbsp";b:0;s:11:"RemoveEmpty";b:0;s:28:"RemoveSpansWithoutAttributes";b:0;}s:3:"CSS";a:9:{s:14:"AllowImportant";b:0;s:11:"AllowTricky";b:0;s:12:"AllowedFonts";N;s:17:"AllowedProperties";N;s:13:"DefinitionRev";i:1;s:19:"ForbiddenProperties";a:0:{}s:12:"MaxImgLength";s:6:"1200px";s:11:"Proprietary";b:0;s:7:"Trusted";b:0;}s:5:"Cache";a:3:{s:14:"DefinitionImpl";s:10:"Serializer";s:14:"SerializerPath";N;s:21:"SerializerPermissions";i:493;}s:4:"Core";a:17:{s:17:"AggressivelyFixLt";b:1;s:13:"CollectErrors";b:0;s:13:"ColorKeywords";a:17:{s:6:"maroon";s:7:"#800000";s:3:"red";s:7:"#FF0000";s:6:"orange";s:7:"#FFA500";s:6:"yellow";s:7:"#FFFF00";s:5:"olive";s:7:"#808000";s:6:"purple";s:7:"#800080";s:7:"fuchsia";s:7:"#FF00FF";s:5:"white";s:7:"#FFFFFF";s:4:"lime";s:7:"#00FF00";s:5:"green";s:7:"#008000";s:4:"navy";s:7:"#000080";s:4:"blue";s:7:"#0000FF";s:4:"aqua";s:7:"#00FFFF";s:4:"teal";s:7:"#008080";s:5:"black";s:7:"#000000";s:6:"silver";s:7:"#C0C0C0";s:4:"gray";s:7:"#808080";}s:25:"ConvertDocumentToFragment";b:1;s:31:"DirectLexLineNumberSyncInterval";i:0;s:8:"Encoding";s:5:"utf-8";s:21:"EscapeInvalidChildren";b:0;s:17:"EscapeInvalidTags";b:0;s:24:"EscapeNonASCIICharacters";b:0;s:14:"HiddenElements";a:2:{s:6:"script";b:1;s:5:"style";b:1;}s:8:"Language";s:2:"en";s:9:"LexerImpl";N;s:19:"MaintainLineNumbers";N;s:17:"NormalizeNewlines";b:1;s:16:"RemoveInvalidImg";b:1;s:28:"RemoveProcessingInstructions";b:0;s:20:"RemoveScriptContents";N;}s:6:"Filter";a:6:{s:6:"Custom";a:0:{}s:27:"ExtractStyleBlocks.Escaping";b:1;s:24:"ExtractStyleBlocks.Scope";N;s:27:"ExtractStyleBlocks.TidyImpl";N;s:18:"ExtractStyleBlocks";b:0;s:7:"YouTube";b:0;}s:4:"HTML";a:26:{s:7:"Allowed";N;s:17:"AllowedAttributes";N;s:15:"AllowedElements";N;s:14:"AllowedModules";N;s:18:"Attr.Name.UseCDATA";b:0;s:12:"BlockWrapper";s:1:"p";s:11:"CoreModules";a:7:{s:9:"Structure";b:1;s:4:"Text";b:1;s:9:"Hypertext";b:1;s:4:"List";b:1;s:22:"NonXMLCommonAttributes";b:1;s:19:"XMLCommonAttributes";b:1;s:16:"CommonAttributes";b:1;}s:13:"CustomDoctype";N;s:12:"DefinitionID";N;s:13:"DefinitionRev";i:1;s:7:"Doctype";s:22:"HTML 4.01 Transitional";s:20:"FlashAllowFullScreen";b:0;s:19:"ForbiddenAttributes";a:0:{}s:17:"ForbiddenElements";a:0:{}s:12:"MaxImgLength";i:1200;s:8:"Nofollow";b:0;s:6:"Parent";s:3:"div";s:11:"Proprietary";b:0;s:9:"SafeEmbed";b:1;s:10:"SafeObject";b:1;s:6:"Strict";b:0;s:7:"TidyAdd";a:0:{}s:9:"TidyLevel";s:6:"medium";s:10:"TidyRemove";a:0:{}s:7:"Trusted";b:0;s:5:"XHTML";b:1;}s:6:"Output";a:6:{s:21:"CommentScriptContents";b:1;s:12:"FixInnerHTML";b:1;s:11:"FlashCompat";b:1;s:7:"Newline";N;s:8:"SortAttr";b:0;s:10:"TidyFormat";b:0;}s:4:"Test";a:1:{s:12:"ForceNoIconv";b:0;}s:3:"URI";a:16:{s:14:"AllowedSchemes";a:6:{s:4:"http";b:1;s:5:"https";b:1;s:6:"mailto";b:1;s:3:"ftp";b:1;s:4:"nntp";b:1;s:4:"news";b:1;}s:4:"Base";N;s:13:"DefaultScheme";s:4:"http";s:12:"DefinitionID";N;s:13:"DefinitionRev";i:1;s:7:"Disable";b:0;s:15:"DisableExternal";b:0;s:24:"DisableExternalResources";b:0;s:16:"DisableResources";b:0;s:4:"Host";N;s:13:"HostBlacklist";a:0:{}s:12:"MakeAbsolute";b:0;s:5:"Munge";N;s:14:"MungeResources";b:0;s:14:"MungeSecretKey";N;s:22:"OverrideAllowedSchemes";b:1;}}";');
INSERT INTO `module_vars` VALUES(150, 'ZConfig', 'useids', 'i:0;');
INSERT INTO `module_vars` VALUES(151, 'ZConfig', 'idsmail', 'i:0;');
INSERT INTO `module_vars` VALUES(152, 'ZConfig', 'idsrulepath', 's:32:"config/phpids_zikula_default.xml";');
INSERT INTO `module_vars` VALUES(153, 'ZConfig', 'idssoftblock', 'i:1;');
INSERT INTO `module_vars` VALUES(154, 'ZConfig', 'idsfilter', 's:3:"xml";');
INSERT INTO `module_vars` VALUES(155, 'ZConfig', 'idsimpactthresholdone', 'i:1;');
INSERT INTO `module_vars` VALUES(156, 'ZConfig', 'idsimpactthresholdtwo', 'i:10;');
INSERT INTO `module_vars` VALUES(157, 'ZConfig', 'idsimpactthresholdthree', 'i:25;');
INSERT INTO `module_vars` VALUES(158, 'ZConfig', 'idsimpactthresholdfour', 'i:75;');
INSERT INTO `module_vars` VALUES(159, 'ZConfig', 'idsimpactmode', 'i:1;');
INSERT INTO `module_vars` VALUES(160, 'ZConfig', 'idshtmlfields', 'a:1:{i:0;s:14:"POST.__wysiwyg";}');
INSERT INTO `module_vars` VALUES(161, 'ZConfig', 'idsjsonfields', 'a:1:{i:0;s:15:"POST.__jsondata";}');
INSERT INTO `module_vars` VALUES(162, 'ZConfig', 'idsexceptions', 'a:12:{i:0;s:10:"GET.__utmz";i:1;s:10:"GET.__utmc";i:2;s:18:"REQUEST.linksorder";i:3;s:15:"POST.linksorder";i:4;s:19:"REQUEST.fullcontent";i:5;s:16:"POST.fullcontent";i:6;s:22:"REQUEST.summarycontent";i:7;s:19:"POST.summarycontent";i:8;s:19:"REQUEST.filter.page";i:9;s:16:"POST.filter.page";i:10;s:20:"REQUEST.filter.value";i:11;s:17:"POST.filter.value";}');
INSERT INTO `module_vars` VALUES(163, 'ZConfig', 'summarycontent', 's:1130:"For the attention of %sitename% administration staff:\n\nOn %date% at %time%, Zikula detected that somebody tried to interact with the site in a way that may have been intended compromise its security. This is not necessarily the case: it could have been caused by work you were doing on the site, or may have been due to some other reason. In any case, it was detected and blocked. \n\nThe suspicious activity was recognised in ''%filename%'' at line %linenumber%.\n\nType: %type%. \n\nAdditional information: %additionalinfo%.\n\nBelow is logged information that may help you identify what happened and who was responsible.\n\n=====================================\nInformation about the user:\n=====================================\nUser name:  %username%\nUser''s e-mail address: %useremail%\nUser''s real name: %userrealname%\n\n=====================================\nIP numbers (if this was a cracker, the IP numbers may not be the true point of origin)\n=====================================\nIP according to HTTP_CLIENT_IP: %httpclientip%\nIP according to REMOTE_ADDR: %remoteaddr%\nIP according to GetHostByName($REMOTE_ADDR): %gethostbyremoteaddr%\n";');
INSERT INTO `module_vars` VALUES(164, 'ZConfig', 'fullcontent', 's:1289:"=====================================\nInformation in the $_REQUEST array\n=====================================\n%requestarray%\n\n=====================================\nInformation in the $_GET array\n(variables that may have been in the URL string or in a ''GET''-type form)\n=====================================\n%getarray%\n\n=====================================\nInformation in the $_POST array\n(visible and invisible form elements)\n=====================================\n%postarray%\n\n=====================================\nBrowser information\n=====================================\n%browserinfo%\n\n=====================================\nInformation in the $_SERVER array\n=====================================\n%serverarray%\n\n=====================================\nInformation in the $_ENV array\n=====================================\n%envarray%\n\n=====================================\nInformation in the $_COOKIE array\n=====================================\n%cookiearray%\n\n=====================================\nInformation in the $_FILES array\n=====================================\n%filearray%\n\n=====================================\nInformation in the $_SESSION array\n(session information -- variables starting with PNSV are Zikula session variables)\n=====================================\n%sessionarray%\n";');
INSERT INTO `module_vars` VALUES(165, 'ZConfig', 'usehtaccessbans', 'i:0;');
INSERT INTO `module_vars` VALUES(166, 'ZConfig', 'extrapostprotection', 'i:0;');
INSERT INTO `module_vars` VALUES(167, 'ZConfig', 'extragetprotection', 'i:0;');
INSERT INTO `module_vars` VALUES(168, 'ZConfig', 'checkmultipost', 'i:0;');
INSERT INTO `module_vars` VALUES(169, 'ZConfig', 'maxmultipost', 'i:4;');
INSERT INTO `module_vars` VALUES(170, 'ZConfig', 'cpuloadmonitor', 'i:0;');
INSERT INTO `module_vars` VALUES(171, 'ZConfig', 'cpumaxload', 'd:10;');
INSERT INTO `module_vars` VALUES(172, 'ZConfig', 'ccisessionpath', 's:0:"";');
INSERT INTO `module_vars` VALUES(173, 'ZConfig', 'htaccessfilelocation', 's:9:".htaccess";');
INSERT INTO `module_vars` VALUES(174, 'ZConfig', 'nocookiebanthreshold', 'i:10;');
INSERT INTO `module_vars` VALUES(175, 'ZConfig', 'nocookiewarningthreshold', 'i:2;');
INSERT INTO `module_vars` VALUES(176, 'ZConfig', 'fastaccessbanthreshold', 'i:40;');
INSERT INTO `module_vars` VALUES(177, 'ZConfig', 'fastaccesswarnthreshold', 'i:10;');
INSERT INTO `module_vars` VALUES(178, 'ZConfig', 'javababble', 'i:0;');
INSERT INTO `module_vars` VALUES(179, 'ZConfig', 'javaencrypt', 'i:0;');
INSERT INTO `module_vars` VALUES(180, 'ZConfig', 'preservehead', 'i:0;');
INSERT INTO `module_vars` VALUES(181, 'ZConfig', 'filterarrays', 'i:1;');
INSERT INTO `module_vars` VALUES(182, 'ZConfig', 'htmlentities', 's:1:"1";');
INSERT INTO `module_vars` VALUES(183, 'ZConfig', 'AllowableHTML', 'a:110:{s:3:"!--";i:2;s:1:"a";i:2;s:4:"abbr";i:1;s:7:"acronym";i:1;s:7:"address";i:1;s:6:"applet";i:0;s:4:"area";i:0;s:7:"article";i:1;s:5:"aside";i:1;s:5:"audio";i:0;s:1:"b";i:1;s:4:"base";i:0;s:8:"basefont";i:0;s:3:"bdo";i:0;s:3:"big";i:0;s:10:"blockquote";i:2;s:2:"br";i:2;s:6:"button";i:0;s:6:"canvas";i:0;s:7:"caption";i:1;s:6:"center";i:2;s:4:"cite";i:1;s:4:"code";i:0;s:3:"col";i:1;s:8:"colgroup";i:1;s:7:"command";i:0;s:8:"datalist";i:0;s:2:"dd";i:1;s:3:"del";i:0;s:7:"details";i:1;s:3:"dfn";i:0;s:3:"dir";i:0;s:3:"div";i:2;s:2:"dl";i:1;s:2:"dt";i:1;s:2:"em";i:2;s:5:"embed";i:0;s:8:"fieldset";i:1;s:10:"figcaption";i:0;s:6:"figure";i:0;s:6:"footer";i:0;s:4:"font";i:0;s:4:"form";i:0;s:2:"h1";i:1;s:2:"h2";i:1;s:2:"h3";i:1;s:2:"h4";i:1;s:2:"h5";i:1;s:2:"h6";i:1;s:6:"header";i:0;s:6:"hgroup";i:0;s:2:"hr";i:2;s:1:"i";i:1;s:6:"iframe";i:0;s:3:"img";i:2;s:5:"input";i:0;s:3:"ins";i:0;s:6:"keygen";i:0;s:3:"kbd";i:0;s:5:"label";i:1;s:6:"legend";i:1;s:2:"li";i:2;s:3:"map";i:0;s:4:"mark";i:0;s:4:"menu";i:0;s:7:"marquee";i:0;s:5:"meter";i:0;s:3:"nav";i:0;s:4:"nobr";i:0;s:6:"object";i:0;s:2:"ol";i:2;s:8:"optgroup";i:0;s:6:"option";i:0;s:6:"output";i:0;s:1:"p";i:2;s:5:"param";i:0;s:3:"pre";i:2;s:8:"progress";i:0;s:1:"q";i:0;s:2:"rp";i:0;s:2:"rt";i:0;s:4:"ruby";i:0;s:1:"s";i:0;s:4:"samp";i:0;s:6:"script";i:0;s:7:"section";i:0;s:6:"select";i:0;s:5:"small";i:0;s:6:"source";i:0;s:4:"span";i:2;s:6:"strike";i:0;s:6:"strong";i:2;s:3:"sub";i:1;s:7:"summary";i:1;s:3:"sup";i:0;s:5:"table";i:2;s:5:"tbody";i:1;s:2:"td";i:2;s:8:"textarea";i:0;s:5:"tfoot";i:1;s:2:"th";i:2;s:5:"thead";i:0;s:4:"time";i:0;s:2:"tr";i:2;s:2:"tt";i:2;s:1:"u";i:0;s:2:"ul";i:2;s:3:"var";i:0;s:5:"video";i:0;s:3:"wbr";i:0;}');
INSERT INTO `module_vars` VALUES(184, 'Categories', 'userrootcat', 's:17:"/__SYSTEM__/Users";');
INSERT INTO `module_vars` VALUES(185, 'Categories', 'allowusercatedit', 'i:0;');
INSERT INTO `module_vars` VALUES(186, 'Categories', 'autocreateusercat', 'i:0;');
INSERT INTO `module_vars` VALUES(187, 'Categories', 'autocreateuserdefaultcat', 'i:0;');
INSERT INTO `module_vars` VALUES(188, 'Categories', 'userdefaultcatname', 's:7:"Default";');
INSERT INTO `module_vars` VALUES(189, 'Legal', 'legalNoticeActive', 'b:1;');
INSERT INTO `module_vars` VALUES(190, 'Legal', 'termsOfUseActive', 'b:1;');
INSERT INTO `module_vars` VALUES(191, 'Legal', 'privacyPolicyActive', 'b:1;');
INSERT INTO `module_vars` VALUES(192, 'Legal', 'accessibilityStatementActive', 'b:1;');
INSERT INTO `module_vars` VALUES(193, 'Legal', 'cancellationRightPolicyActive', 'b:0;');
INSERT INTO `module_vars` VALUES(194, 'Legal', 'tradeConditionsActive', 'b:0;');
INSERT INTO `module_vars` VALUES(195, 'Legal', 'legalNoticeUrl', 's:0:"";');
INSERT INTO `module_vars` VALUES(196, 'Legal', 'termsOfUseUrl', 's:0:"";');
INSERT INTO `module_vars` VALUES(197, 'Legal', 'privacyPolicyUrl', 's:0:"";');
INSERT INTO `module_vars` VALUES(198, 'Legal', 'accessibilityStatementUrl', 's:0:"";');
INSERT INTO `module_vars` VALUES(199, 'Legal', 'cancellationRightPolicyUrl', 's:0:"";');
INSERT INTO `module_vars` VALUES(200, 'Legal', 'tradeConditionsUrl', 's:0:"";');
INSERT INTO `module_vars` VALUES(201, 'Legal', 'minimumAge', 'i:13;');
INSERT INTO `module_vars` VALUES(202, '/EventHandlers', 'Legal', 'a:2:{i:0;a:3:{s:9:"eventname";s:15:"user.login.veto";s:8:"callable";a:2:{i:0;s:29:"Legal_Listener_UsersLoginVeto";i:1;s:22:"acceptPoliciesListener";}s:6:"weight";i:10;}i:1;a:1:{s:9:"classname";s:29:"Legal_Listener_UsersUiHandler";}}');
INSERT INTO `module_vars` VALUES(203, 'Mailer', 'mailertype', 'i:1;');
INSERT INTO `module_vars` VALUES(204, 'Mailer', 'charset', 's:5:"utf-8";');
INSERT INTO `module_vars` VALUES(205, 'Mailer', 'encoding', 's:4:"8bit";');
INSERT INTO `module_vars` VALUES(206, 'Mailer', 'html', 'b:0;');
INSERT INTO `module_vars` VALUES(207, 'Mailer', 'wordwrap', 'i:50;');
INSERT INTO `module_vars` VALUES(208, 'Mailer', 'msmailheaders', 'b:0;');
INSERT INTO `module_vars` VALUES(209, 'Mailer', 'sendmailpath', 's:18:"/usr/sbin/sendmail";');
INSERT INTO `module_vars` VALUES(210, 'Mailer', 'smtpauth', 'b:0;');
INSERT INTO `module_vars` VALUES(211, 'Mailer', 'smtpserver', 's:9:"localhost";');
INSERT INTO `module_vars` VALUES(212, 'Mailer', 'smtpport', 'i:25;');
INSERT INTO `module_vars` VALUES(213, 'Mailer', 'smtptimeout', 'i:10;');
INSERT INTO `module_vars` VALUES(214, 'Mailer', 'smtpusername', 's:0:"";');
INSERT INTO `module_vars` VALUES(215, 'Mailer', 'smtppassword', 's:0:"";');
INSERT INTO `module_vars` VALUES(216, 'Mailer', 'smtpsecuremethod', 's:3:"ssl";');
INSERT INTO `module_vars` VALUES(217, 'Search', 'itemsperpage', 'i:10;');
INSERT INTO `module_vars` VALUES(218, 'Search', 'limitsummary', 'i:255;');
INSERT INTO `module_vars` VALUES(219, '/EventHandlers', 'Search', 'a:1:{i:0;a:3:{s:9:"eventname";s:26:"installer.module.installed";s:8:"callable";a:2:{i:0;s:20:"Search_EventHandlers";i:1;s:13:"moduleInstall";}s:6:"weight";i:10;}}');
INSERT INTO `module_vars` VALUES(220, 'Tag', 'poptagsoneditform', 'i:10;');
INSERT INTO `module_vars` VALUES(221, 'Tag', 'crpTagMigrateComplete', 'b:0;');
INSERT INTO `module_vars` VALUES(222, '/EventHandlers', 'Tag', 'a:3:{i:0;a:3:{s:9:"eventname";s:28:"installer.module.uninstalled";s:8:"callable";a:2:{i:0;s:16:"Tag_HookHandlers";i:1;s:12:"moduleDelete";}s:6:"weight";i:10;}i:1;a:3:{s:9:"eventname";s:23:"module.content.gettypes";s:8:"callable";a:2:{i:0;s:12:"Tag_Handlers";i:1;s:8:"getTypes";}s:6:"weight";i:10;}i:2;a:3:{s:9:"eventname";s:9:"view.init";s:8:"callable";a:2:{i:0;s:12:"Tag_Handlers";i:1;s:17:"registerPluginDir";}s:6:"weight";i:10;}}');
INSERT INTO `module_vars` VALUES(223, '/EventHandlers', 'EZComments', 'a:2:{i:0;a:3:{s:9:"eventname";s:28:"installer.module.uninstalled";s:8:"callable";a:2:{i:0;s:24:"EZComments_EventHandlers";i:1;s:12:"moduleDelete";}s:6:"weight";i:10;}i:1;a:3:{s:9:"eventname";s:36:"installer.subscriberarea.uninstalled";s:8:"callable";a:2:{i:0;s:24:"EZComments_EventHandlers";i:1;s:14:"hookAreaDelete";}s:6:"weight";i:10;}}');
INSERT INTO `module_vars` VALUES(224, 'EZComments', 'template', 's:8:"Standard";');
INSERT INTO `module_vars` VALUES(225, 'EZComments', 'css', 's:9:"style.css";');
INSERT INTO `module_vars` VALUES(226, 'EZComments', 'anonusersinfo', 'b:0;');
INSERT INTO `module_vars` VALUES(227, 'EZComments', 'anonusersrequirename', 'b:0;');
INSERT INTO `module_vars` VALUES(228, 'EZComments', 'logip', 'b:0;');
INSERT INTO `module_vars` VALUES(229, 'EZComments', 'itemsperpage', 'i:25;');
INSERT INTO `module_vars` VALUES(230, 'EZComments', 'enablepager', 'b:0;');
INSERT INTO `module_vars` VALUES(231, 'EZComments', 'commentsperpage', 'i:25;');
INSERT INTO `module_vars` VALUES(232, 'EZComments', 'migrated', 'a:1:{s:5:"dummy";b:1;}');
INSERT INTO `module_vars` VALUES(233, 'EZComments', 'useaccountpage', 's:1:"1";');
INSERT INTO `module_vars` VALUES(234, 'EZComments', 'MailToAdmin', 'b:0;');
INSERT INTO `module_vars` VALUES(235, 'EZComments', 'moderationmail', 'b:0;');
INSERT INTO `module_vars` VALUES(236, 'EZComments', 'moderation', 'i:0;');
INSERT INTO `module_vars` VALUES(237, 'EZComments', 'alwaysmoderate', 'b:0;');
INSERT INTO `module_vars` VALUES(238, 'EZComments', 'dontmoderateifcommented', 'b:0;');
INSERT INTO `module_vars` VALUES(239, 'EZComments', 'modlinkcount', 'i:2;');
INSERT INTO `module_vars` VALUES(240, 'EZComments', 'modlist', 's:0:"";');
INSERT INTO `module_vars` VALUES(241, 'EZComments', 'blacklinkcount', 'i:5;');
INSERT INTO `module_vars` VALUES(242, 'EZComments', 'blacklist', 's:0:"";');
INSERT INTO `module_vars` VALUES(243, 'EZComments', 'proxyblacklist', 'b:0;');
INSERT INTO `module_vars` VALUES(244, 'EZComments', 'modifyowntime', 'i:6;');
INSERT INTO `module_vars` VALUES(245, 'EZComments', 'akismet', 'b:0;');
INSERT INTO `module_vars` VALUES(246, 'EZComments', 'akismetstatus', 'i:1;');
INSERT INTO `module_vars` VALUES(247, 'EZComments', 'feedtype', 's:3:"rss";');
INSERT INTO `module_vars` VALUES(248, 'EZComments', 'feedcount', 'i:10;');
INSERT INTO `module_vars` VALUES(249, 'Captcha', 'publickey', 's:0:"";');
INSERT INTO `module_vars` VALUES(250, 'Captcha', 'privatekey', 's:0:"";');
INSERT INTO `module_vars` VALUES(251, 'Captcha', 'exemptAdmin', 'i:0;');
INSERT INTO `module_vars` VALUES(252, 'Captcha', 'captchaTheme', 's:3:"red";');
INSERT INTO `module_vars` VALUES(253, '/EventHandlers', 'Scribite', 'a:1:{i:0;a:3:{s:9:"eventname";s:13:"core.postinit";s:8:"callable";a:2:{i:0;s:18:"Scribite_Listeners";i:1;s:8:"coreinit";}s:6:"weight";i:10;}}');
INSERT INTO `module_vars` VALUES(254, 'Scribite', 'DefaultEditor', 's:7:"TinyMCE";');
INSERT INTO `module_vars` VALUES(255, 'Scribite', 'upload_path', 's:17:"userdata/Scribite";');
INSERT INTO `module_vars` VALUES(256, 'Scribite', 'image_upload', 'b:0;');
INSERT INTO `module_vars` VALUES(257, 'moduleplugin.scribite.tinymce', 'language', 's:2:"en";');
INSERT INTO `module_vars` VALUES(258, 'moduleplugin.scribite.tinymce', 'style', 's:48:"modules/Scribite/plugins/TinyMCE/style/style.css";');
INSERT INTO `module_vars` VALUES(259, 'moduleplugin.scribite.tinymce', 'theme', 's:8:"advanced";');
INSERT INTO `module_vars` VALUES(260, 'moduleplugin.scribite.tinymce', 'width', 's:3:"65%";');
INSERT INTO `module_vars` VALUES(261, 'moduleplugin.scribite.tinymce', 'height', 's:5:"400px";');
INSERT INTO `module_vars` VALUES(262, 'moduleplugin.scribite.tinymce', 'dateformat', 's:8:"%Y-%m-%d";');
INSERT INTO `module_vars` VALUES(263, 'moduleplugin.scribite.tinymce', 'timeformat', 's:8:"%H:%M:%S";');
INSERT INTO `module_vars` VALUES(264, 'moduleplugin.scribite.tinymce', 'activeplugins', 's:0:"";');
INSERT INTO `module_vars` VALUES(265, '/Plugin', 'moduleplugin.scribite.tinymce', 'a:2:{s:5:"state";i:1;s:7:"version";s:5:"3.4.7";}');
INSERT INTO `module_vars` VALUES(266, 'Clip', 'uploadpath', 's:21:"userdata/Clip/uploads";');
INSERT INTO `module_vars` VALUES(267, 'Clip', 'modelspath', 's:16:"ztemp/ClipModels";');
INSERT INTO `module_vars` VALUES(268, 'Clip', 'pubtype', 'N;');
INSERT INTO `module_vars` VALUES(269, 'Clip', 'shorturls', 's:3:"htm";');
INSERT INTO `module_vars` VALUES(270, 'Clip', 'maxperpage', 'i:100;');
INSERT INTO `module_vars` VALUES(271, 'Clip', 'commontpls', 'b:0;');
INSERT INTO `module_vars` VALUES(272, 'Clip', 'devmode', 'b:1;');
INSERT INTO `module_vars` VALUES(273, '/EventHandlers', 'Clip', 'a:2:{i:0;a:3:{s:9:"eventname";s:36:"zikula.filterutil.get_plugin_classes";s:8:"callable";a:2:{i:0;s:27:"Clip_EventHandler_Listeners";i:1;s:16:"getFilterClasses";}s:6:"weight";i:10;}i:1;a:3:{s:9:"eventname";s:23:"module.content.gettypes";s:8:"callable";a:2:{i:0;s:27:"Clip_EventHandler_Listeners";i:1;s:15:"getContentTypes";}s:6:"weight";i:10;}}');
INSERT INTO `module_vars` VALUES(274, 'Profile', 'memberslistitemsperpage', 'i:20;');
INSERT INTO `module_vars` VALUES(275, 'Profile', 'onlinemembersitemsperpage', 'i:20;');
INSERT INTO `module_vars` VALUES(276, 'Profile', 'recentmembersitemsperpage', 'i:10;');
INSERT INTO `module_vars` VALUES(277, 'Profile', 'filterunverified', 'i:1;');
INSERT INTO `module_vars` VALUES(278, 'Profile', 'dudregshow', 'a:5:{i:0;i:1;i:1;i:3;i:2;i:4;i:3;i:10;i:4;i:11;}');
INSERT INTO `module_vars` VALUES(279, '/EventHandlers', 'Profile', 'a:1:{i:0;a:1:{s:9:"classname";s:31:"Profile_Listener_UsersUiHandler";}}');
INSERT INTO `module_vars` VALUES(280, 'ZConfig', 'pagetitle', 's:11:"%pagetitle%";');

-- --------------------------------------------------------

--
-- Table structure for table `objectdata_attributes`
--

CREATE TABLE `objectdata_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `objectdata_attributes`
--

INSERT INTO `objectdata_attributes` VALUES(1, 'code', 5, 'categories_category', 'Y', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `objectdata_attributes` VALUES(2, 'code', 6, 'categories_category', 'N', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `objectdata_attributes` VALUES(3, 'code', 11, 'categories_category', 'P', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `objectdata_attributes` VALUES(4, 'code', 12, 'categories_category', 'C', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `objectdata_attributes` VALUES(5, 'code', 13, 'categories_category', 'A', 'A', '2012-10-16 22:20:22', 0, '2012-10-16 22:20:22', 0);
INSERT INTO `objectdata_attributes` VALUES(6, 'code', 14, 'categories_category', 'O', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `objectdata_attributes` VALUES(7, 'code', 15, 'categories_category', 'R', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `objectdata_attributes` VALUES(8, 'code', 17, 'categories_category', 'M', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `objectdata_attributes` VALUES(9, 'code', 18, 'categories_category', 'F', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `objectdata_attributes` VALUES(10, 'code', 26, 'categories_category', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `objectdata_attributes` VALUES(11, 'code', 27, 'categories_category', 'I', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `objectdata_attributes` VALUES(12, 'code', 29, 'categories_category', 'P', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);
INSERT INTO `objectdata_attributes` VALUES(13, 'code', 30, 'categories_category', 'A', 'A', '2012-10-16 22:20:23', 0, '2012-10-16 22:20:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `objectdata_log`
--

CREATE TABLE `objectdata_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `objectdata_meta`
--

CREATE TABLE `objectdata_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `scribite`
--

CREATE TABLE `scribite` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `modname` varchar(64) DEFAULT NULL,
  `modfuncs` longtext,
  `modareas` longtext,
  `modeditor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `scribite`
--

INSERT INTO `scribite` VALUES(1, 'Blocks', 'a:1:{i:0;s:6:"modify";}', 'a:1:{i:0;s:14:"blocks_content";}', '-');
INSERT INTO `scribite` VALUES(2, 'Book', 'a:1:{i:0;s:3:"all";}', 'a:1:{i:0;s:7:"content";}', '-');
INSERT INTO `scribite` VALUES(3, 'ContentExpress', 'a:2:{i:0;s:10:"newcontent";i:1;s:11:"editcontent";}', 'a:1:{i:0;s:4:"text";}', '-');
INSERT INTO `scribite` VALUES(4, 'crpCalendar', 'a:2:{i:0;s:3:"new";i:1;s:6:"modify";}', 'a:1:{i:0;s:22:"crpcalendar_event_text";}', '-');
INSERT INTO `scribite` VALUES(5, 'crpVideo', 'a:2:{i:0;s:3:"new";i:1;s:6:"modify";}', 'a:1:{i:0;s:13:"video_content";}', '-');
INSERT INTO `scribite` VALUES(6, 'Downloads', 'a:1:{i:0;s:4:"edit";}', 'a:1:{i:0;s:11:"description";}', '-');
INSERT INTO `scribite` VALUES(7, 'FAQ', 'a:2:{i:0;s:6:"newfaq";i:1;s:6:"modify";}', 'a:1:{i:0;s:9:"faqanswer";}', '-');
INSERT INTO `scribite` VALUES(8, 'htmlpages', 'a:2:{i:0;s:3:"new";i:1;s:6:"modify";}', 'a:1:{i:0;s:17:"htmlpages_content";}', '-');
INSERT INTO `scribite` VALUES(9, 'Mailer', 'a:1:{i:0;s:10:"testconfig";}', 'a:1:{i:0;s:11:"mailer_body";}', '-');
INSERT INTO `scribite` VALUES(10, 'Mediashare', 'a:4:{i:0;s:8:"addmedia";i:1;s:8:"edititem";i:2;s:8:"addalbum";i:3;s:9:"editalbum";}', 'a:1:{i:0;s:3:"all";}', '-');
INSERT INTO `scribite` VALUES(11, 'News', 'a:2:{i:0;s:8:"newitem"";i:1;s:6:"modify";}', 'a:2:{i:0;s:13:"news_hometext";i:1;s:13:"news_bodytext";}', '-');
INSERT INTO `scribite` VALUES(12, 'Newsletter', 'a:1:{i:0;s:11:"add_message";}', 'a:1:{i:0;s:7:"message";}', '-');
INSERT INTO `scribite` VALUES(13, 'PagEd', 'a:1:{i:0;s:3:"all";}', 'a:1:{i:0;s:5:"PagEd";}', '-');
INSERT INTO `scribite` VALUES(14, 'Pages', 'a:2:{i:0;s:7:"newitem";i:1;s:7:"modify}";}', 'a:1:{i:0;s:13:"pages_content";}', '-');
INSERT INTO `scribite` VALUES(15, 'Clip', 'a:1:{i:0;s:4:"edit";}', 'a:1:{i:0;s:3:"all";}', '-');
INSERT INTO `scribite` VALUES(16, 'PhotoGallery', 'a:2:{i:0;s:11:"editgallery";i:1;s:9:"editphoto";}', 'a:1:{i:0;s:17:"photogallery_desc";}', '-');
INSERT INTO `scribite` VALUES(17, 'Profile', 'a:1:{i:0;s:6:"modify";}', 'a:3:{i:0;s:14:"prop_signature";i:1;s:14:"prop_extrainfo";i:2;s:15:"prop_yinterests";}', '-');
INSERT INTO `scribite` VALUES(18, 'PostCalendar', 'a:1:{i:0;s:3:"all";}', 'a:1:{i:0;s:11:"description";}', '-');
INSERT INTO `scribite` VALUES(19, 'Reviews', 'a:2:{i:0;s:3:"new";i:1;s:6:"modify";}', 'a:1:{i:0;s:14:"reviews_review";}', '-');
INSERT INTO `scribite` VALUES(20, 'ShoppingCart', 'a:1:{i:0;s:3:"all";}', 'a:1:{i:0;s:11:"description";}', '-');

-- --------------------------------------------------------

--
-- Table structure for table `sc_intrusion`
--

CREATE TABLE `sc_intrusion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `search_result`
--

CREATE TABLE `search_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `search_stat`
--

CREATE TABLE `search_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `search` varchar(50) NOT NULL,
  `scount` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `session_info`
--

CREATE TABLE `session_info` (
  `sessid` varchar(40) NOT NULL,
  `ipaddr` varchar(32) NOT NULL,
  `lastused` datetime DEFAULT '1970-01-01 00:00:00',
  `uid` int(11) DEFAULT '0',
  `remember` tinyint(4) NOT NULL DEFAULT '0',
  `vars` longtext NOT NULL,
  PRIMARY KEY (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session_info`
--

INSERT INTO `session_info` VALUES('onsnod6mrcd0adekp4qmq6cgds1q2a2s', 'f528764d624db129b32c21fbca0cb8d6', '2012-10-16 22:24:28', 2, 1, '/|a:8:{s:4:"rand";a:3:{s:5:"admin";s:32:"it3$zoD}1PSQy[E{e=OT-5HD+hQP_)SM";s:10:"extensions";s:38:"GlsO}0-dl4]QqJ~}D]0s%Tge5]}qI]~L1LI-oD";s:6:"blocks";s:34:"MyD#$rmGd^=|jj2gTkiUv#{G*E07il2H%B";}s:9:"useragent";s:40:"6ab18a2ea1d4b17d67713e416b07d46bf2f4d03b";s:3:"uid";s:1:"2";s:7:"_tokens";a:18:{s:23:"507dc198e731d4.73426390";a:2:{s:5:"token";s:92:"NTA3ZGMxOThlNzMxZDQuNzM0MjYzOTA6ZWJiNTNlMWMyMjVlMDQzNDdjMzY3YTcxYzQ2Y2E4Yzk6MTM1MDQxODg0MA==";s:9:"timestamp";i:1350418840;}s:23:"507dc1bc1e4617.56547772";a:2:{s:5:"token";s:92:"NTA3ZGMxYmMxZTQ2MTcuNTY1NDc3NzI6NDU5YWI1MzNhMzc4ZDAwN2Q3OTFkZTQxYTA0MTBlZjI6MTM1MDQxODg3Ng==";s:9:"timestamp";i:1350418876;}s:23:"507dc1de108f24.93887532";a:2:{s:5:"token";s:92:"NTA3ZGMxZGUxMDhmMjQuOTM4ODc1MzI6YWRjNTEzMzg2YTQzMThkOTdiY2M0OWY3NWY3ZTljYjU6MTM1MDQxODkxMA==";s:9:"timestamp";i:1350418910;}s:23:"507dc1ffcb25b5.37362689";a:2:{s:5:"token";s:92:"NTA3ZGMxZmZjYjI1YjUuMzczNjI2ODk6Y2I4ODdlMzVjNjUyOTE1MDhjNzBiMTExMTBlN2I5ODI6MTM1MDQxODk0Mw==";s:9:"timestamp";i:1350418943;}s:23:"507dc20bb08140.52290096";a:2:{s:5:"token";s:92:"NTA3ZGMyMGJiMDgxNDAuNTIyOTAwOTY6ZmZkZjNhNzQ1MGIxMzg2OWNhNWZiMzdjYWU3YTg4NGY6MTM1MDQxODk1NQ==";s:9:"timestamp";i:1350418955;}s:23:"507dc20ea1f272.28033470";a:2:{s:5:"token";s:92:"NTA3ZGMyMGVhMWYyNzIuMjgwMzM0NzA6ODA2ODUyYjNmYzUyYmU1OTY5ZmU1ZGY2ODljZDVkZTg6MTM1MDQxODk1OA==";s:9:"timestamp";i:1350418958;}s:23:"507dc211cba079.80275671";a:2:{s:5:"token";s:92:"NTA3ZGMyMTFjYmEwNzkuODAyNzU2NzE6OTlkZmZhZjNjMzJlMGQzZjBiMDA5MjllMDJmYjhjNmM6MTM1MDQxODk2MQ==";s:9:"timestamp";i:1350418961;}s:23:"507dc215651dd5.24324488";a:2:{s:5:"token";s:92:"NTA3ZGMyMTU2NTFkZDUuMjQzMjQ0ODg6ODljZWJlZjIwYjAwYTk1YWI0ODYzNzA3YTdlNWIyODU6MTM1MDQxODk2NQ==";s:9:"timestamp";i:1350418965;}s:23:"507dc21b353c20.55012068";a:2:{s:5:"token";s:92:"NTA3ZGMyMWIzNTNjMjAuNTUwMTIwNjg6ODYyMzM5MTA3ZjVhNGYwOTAxOGRhNDdlOGQzNTA1YjI6MTM1MDQxODk3MQ==";s:9:"timestamp";i:1350418971;}s:23:"507dc21e85ad69.95737700";a:2:{s:5:"token";s:92:"NTA3ZGMyMWU4NWFkNjkuOTU3Mzc3MDA6YzNiNzg1NWYwZjhiZjc1YTliNzdlMWZjZmNkZmU2MzU6MTM1MDQxODk3NA==";s:9:"timestamp";i:1350418974;}s:23:"507dc231803ab2.09727485";a:2:{s:5:"token";s:92:"NTA3ZGMyMzE4MDNhYjIuMDk3Mjc0ODU6MWMxZThiODQ3NTllYjRjMmQwZTczYTk4ZjljNzE0MGY6MTM1MDQxODk5Mw==";s:9:"timestamp";i:1350418993;}s:23:"507dc249328b78.35300138";a:2:{s:5:"token";s:92:"NTA3ZGMyNDkzMjhiNzguMzUzMDAxMzg6MzQ1NjY5YWRkOTZiMTg5MTZmNzFjY2Q5NzIyODYyZDA6MTM1MDQxOTAxNw==";s:9:"timestamp";i:1350419017;}s:23:"507dc24d114799.34315523";a:2:{s:5:"token";s:92:"NTA3ZGMyNGQxMTQ3OTkuMzQzMTU1MjM6ZWE5Y2I0N2ZlZTk4OGI1YmI2YWRmZWE1ZjBiNjgzODk6MTM1MDQxOTAyMQ==";s:9:"timestamp";i:1350419021;}s:23:"507dc255bec387.04046292";a:2:{s:5:"token";s:92:"NTA3ZGMyNTViZWMzODcuMDQwNDYyOTI6OWM5YTljYzZmYmFjYjNlYjY4Nzg5NjVjNzQ5Mjk2YzM6MTM1MDQxOTAyOQ==";s:9:"timestamp";i:1350419029;}s:23:"507dc25bd424b2.07445276";a:2:{s:5:"token";s:92:"NTA3ZGMyNWJkNDI0YjIuMDc0NDUyNzY6OWJhMTMzMTEwOTU5OTg5NjRhYjljMWUzOWY5ZWJjM2E6MTM1MDQxOTAzNQ==";s:9:"timestamp";i:1350419035;}s:23:"507dc2647a4db0.47859172";a:2:{s:5:"token";s:92:"NTA3ZGMyNjQ3YTRkYjAuNDc4NTkxNzI6ZTI0ODg5Yjg5NzVkNDNhMDU4ZTRlMGZlMWY2ZjQ2Nzc6MTM1MDQxOTA0NA==";s:9:"timestamp";i:1350419044;}s:23:"507dc26a2af2c8.61559802";a:2:{s:5:"token";s:92:"NTA3ZGMyNmEyYWYyYzguNjE1NTk4MDI6YzBhYTYwYTA0MzU2MjdmNzhjOTEwODdmNGEzN2QyY2M6MTM1MDQxOTA1MA==";s:9:"timestamp";i:1350419050;}s:23:"507dc276d15859.29171754";a:2:{s:5:"token";s:92:"NTA3ZGMyNzZkMTU4NTkuMjkxNzE3NTQ6ZTcyNjYzMTg0ZTMyMTZjNjNhOGI4ODk4ZTM4NjRmYzE6MTM1MDQxOTA2Mg==";s:9:"timestamp";i:1350419062;}}s:10:"rememberme";i:1;s:5:"state";s:1:"0";s:4:"sort";s:4:"name";s:7:"sortdir";s:3:"ASC";}_zikula_messages|a:1:{s:6:"status";a:0:{}}Zikula_Users|a:1:{s:21:"authentication_method";a:2:{s:7:"modname";s:5:"Users";s:6:"method";s:5:"uname";}}__forms|a:2:{s:14:"f507dc231534f2";a:3:{s:5:"state";a:1:{s:16:"Zikula_Form_View";a:1:{s:7:"plugins";a:20:{i:0;a:3:{i:0;s:36:"Zikula_Form_Plugin_ValidationSummary";i:1;a:9:{i:0;s:35:"z-form-validationSummary z-errormsg";i:1;s:4:"plg1";i:2;b:1;i:3;N;i:4;a:0:{}i:5;N;i:6;N;i:7;N;i:8;N;}i:2;a:0:{}}i:1;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:15:"Editor language";i:1;N;i:2;s:8:"language";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg2";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:2;a:3:{i:0;s:31:"Zikula_Form_Plugin_DropdownList";i:1;a:29:{i:0;s:2:"en";i:1;i:3;i:2;N;i:3;N;i:4;s:6:"single";i:5;N;i:6;N;i:7;s:26:"handleSelectedIndexChanged";i:8;b:0;i:9;N;i:10;s:8:"language";i:11;b:1;i:12;N;i:13;s:13:"languageItems";i:14;b:1;i:15;b:0;i:16;N;i:17;s:15:"Editor language";i:18;a:11:{i:0;a:2:{s:4:"text";s:2:"ca";s:5:"value";s:2:"ca";}i:1;a:2:{s:4:"text";s:2:"cn";s:5:"value";s:2:"cn";}i:2;a:2:{s:4:"text";s:2:"de";s:5:"value";s:2:"de";}i:3;a:2:{s:4:"text";s:2:"en";s:5:"value";s:2:"en";}i:4;a:2:{s:4:"text";s:2:"fi";s:5:"value";s:2:"fi";}i:5;a:2:{s:4:"text";s:2:"fr";s:5:"value";s:2:"fr";}i:6;a:2:{s:4:"text";s:2:"hu";s:5:"value";s:2:"hu";}i:7;a:2:{s:4:"text";s:2:"nl";s:5:"value";s:2:"nl";}i:8;a:2:{s:4:"text";s:2:"pl";s:5:"value";s:2:"pl";}i:9;a:2:{s:4:"text";s:2:"pt";s:5:"value";s:2:"pt";}i:10;a:2:{s:4:"text";s:2:"sv";s:5:"value";s:2:"sv";}}i:19;s:8:"language";i:20;a:0:{}i:21;s:8:"language";i:22;b:1;i:23;N;i:24;a:0:{}i:25;N;i:26;N;i:27;N;i:28;N;}i:2;a:0:{}}i:3;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:5:"Theme";i:1;N;i:2;s:5:"theme";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg3";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:4;a:3:{i:0;s:31:"Zikula_Form_Plugin_DropdownList";i:1;a:29:{i:0;s:8:"advanced";i:1;i:0;i:2;N;i:3;N;i:4;s:6:"single";i:5;N;i:6;N;i:7;s:26:"handleSelectedIndexChanged";i:8;b:0;i:9;N;i:10;s:5:"theme";i:11;b:1;i:12;N;i:13;s:10:"themeItems";i:14;b:1;i:15;b:0;i:16;N;i:17;s:5:"Theme";i:18;a:2:{i:0;a:2:{s:4:"text";s:8:"advanced";s:5:"value";s:8:"advanced";}i:1;a:2:{s:4:"text";s:6:"simple";s:5:"value";s:6:"simple";}}i:19;s:5:"theme";i:20;a:0:{}i:21;s:5:"theme";i:22;b:1;i:23;N;i:24;a:0:{}i:25;N;i:26;N;i:27;N;i:28;N;}i:2;a:0:{}}i:5;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:11:"Date format";i:1;N;i:2;s:10:"dateformat";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg4";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:6;a:3:{i:0;s:28:"Zikula_Form_Plugin_TextInput";i:1;a:30:{i:0;s:8:"%Y-%m-%d";i:1;s:10:"singleline";i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;s:10:"dateformat";i:8;b:1;i:9;N;i:10;b:1;i:11;N;i:12;N;i:13;N;i:14;s:11:"Date format";i:15;s:2:"40";i:16;i:0;i:17;s:2:"50";i:18;N;i:19;N;i:20;s:10:"dateformat";i:21;a:0:{}i:22;s:10:"dateformat";i:23;b:1;i:24;N;i:25;a:0:{}i:26;N;i:27;N;i:28;N;i:29;N;}i:2;a:0:{}}i:7;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:11:"Time format";i:1;N;i:2;s:10:"timeformat";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg5";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:8;a:3:{i:0;s:28:"Zikula_Form_Plugin_TextInput";i:1;a:30:{i:0;s:8:"%H:%M:%S";i:1;s:10:"singleline";i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;s:10:"timeformat";i:8;b:1;i:9;N;i:10;b:1;i:11;N;i:12;N;i:13;N;i:14;s:11:"Time format";i:15;s:2:"40";i:16;i:0;i:17;s:2:"50";i:18;N;i:19;N;i:20;s:10:"timeformat";i:21;a:0:{}i:22;s:10:"timeformat";i:23;b:1;i:24;N;i:25;a:0:{}i:26;N;i:27;N;i:28;N;i:29;N;}i:2;a:0:{}}i:9;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:23:"Editor width and height";i:1;N;i:2;N;i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg6";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:10;a:3:{i:0;s:28:"Zikula_Form_Plugin_TextInput";i:1;a:30:{i:0;s:3:"65%";i:1;s:10:"singleline";i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;s:5:"width";i:8;b:1;i:9;N;i:10;b:1;i:11;N;i:12;N;i:13;N;i:14;s:6:"px/(%)";i:15;s:1:"5";i:16;i:0;i:17;s:1:"6";i:18;N;i:19;N;i:20;s:5:"width";i:21;a:0:{}i:22;s:5:"width";i:23;b:1;i:24;N;i:25;a:0:{}i:26;N;i:27;N;i:28;N;i:29;N;}i:2;a:0:{}}i:11;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:6:"px/(%)";i:1;N;i:2;s:5:"width";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg7";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:12;a:3:{i:0;s:28:"Zikula_Form_Plugin_TextInput";i:1;a:30:{i:0;s:5:"400px";i:1;s:10:"singleline";i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;s:6:"height";i:8;b:1;i:9;N;i:10;b:1;i:11;N;i:12;N;i:13;N;i:14;s:6:"px/(%)";i:15;s:1:"5";i:16;i:0;i:17;s:1:"6";i:18;N;i:19;N;i:20;s:6:"height";i:21;a:0:{}i:22;s:6:"height";i:23;b:1;i:24;N;i:25;a:0:{}i:26;N;i:27;N;i:28;N;i:29;N;}i:2;a:0:{}}i:13;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:6:"px/(%)";i:1;N;i:2;s:6:"height";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg8";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:14;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:17:"Editor stylesheet";i:1;N;i:2;s:5:"style";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg9";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:15;a:3:{i:0;s:28:"Zikula_Form_Plugin_TextInput";i:1;a:30:{i:0;s:48:"modules/Scribite/plugins/TinyMCE/style/style.css";i:1;s:10:"singleline";i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;i:7;s:5:"style";i:8;b:1;i:9;N;i:10;b:1;i:11;N;i:12;N;i:13;N;i:14;s:17:"Editor stylesheet";i:15;s:2:"40";i:16;i:0;i:17;s:2:"50";i:18;N;i:19;N;i:20;s:5:"style";i:21;a:0:{}i:22;s:5:"style";i:23;b:1;i:24;N;i:25;a:0:{}i:26;N;i:27;N;i:28;N;i:29;N;}i:2;a:0:{}}i:16;a:3:{i:0;s:31:"Zikula_Form_Plugin_CheckboxList";i:1;a:25:{i:0;a:1:{i:0;s:0:"";}i:1;s:13:"activeplugins";i:2;N;i:3;N;i:4;N;i:5;b:0;i:6;N;i:7;s:13:"activeplugins";i:8;b:1;i:9;N;i:10;s:18:"activepluginsItems";i:11;b:1;i:12;b:0;i:13;N;i:14;N;i:15;a:39:{i:0;a:2:{s:4:"text";s:5:"advhr";s:5:"value";s:5:"advhr";}i:1;a:2:{s:4:"text";s:8:"advimage";s:5:"value";s:8:"advimage";}i:2;a:2:{s:4:"text";s:7:"advlink";s:5:"value";s:7:"advlink";}i:3;a:2:{s:4:"text";s:7:"advlist";s:5:"value";s:7:"advlist";}i:4;a:2:{s:4:"text";s:8:"autolink";s:5:"value";s:8:"autolink";}i:5;a:2:{s:4:"text";s:10:"autoresize";s:5:"value";s:10:"autoresize";}i:6;a:2:{s:4:"text";s:8:"autosave";s:5:"value";s:8:"autosave";}i:7;a:2:{s:4:"text";s:6:"bbcode";s:5:"value";s:6:"bbcode";}i:8;a:2:{s:4:"text";s:11:"contextmenu";s:5:"value";s:11:"contextmenu";}i:9;a:2:{s:4:"text";s:14:"directionality";s:5:"value";s:14:"directionality";}i:10;a:2:{s:4:"text";s:8:"emotions";s:5:"value";s:8:"emotions";}i:11;a:2:{s:4:"text";s:7:"example";s:5:"value";s:7:"example";}i:12;a:2:{s:4:"text";s:18:"example_dependency";s:5:"value";s:18:"example_dependency";}i:13;a:2:{s:4:"text";s:8:"fullpage";s:5:"value";s:8:"fullpage";}i:14;a:2:{s:4:"text";s:10:"fullscreen";s:5:"value";s:10:"fullscreen";}i:15;a:2:{s:4:"text";s:7:"iespell";s:5:"value";s:7:"iespell";}i:16;a:2:{s:4:"text";s:12:"inlinepopups";s:5:"value";s:12:"inlinepopups";}i:17;a:2:{s:4:"text";s:14:"insertdatetime";s:5:"value";s:14:"insertdatetime";}i:18;a:2:{s:4:"text";s:5:"layer";s:5:"value";s:5:"layer";}i:19;a:2:{s:4:"text";s:12:"legacyoutput";s:5:"value";s:12:"legacyoutput";}i:20;a:2:{s:4:"text";s:5:"lists";s:5:"value";s:5:"lists";}i:21;a:2:{s:4:"text";s:5:"media";s:5:"value";s:5:"media";}i:22;a:2:{s:4:"text";s:11:"nonbreaking";s:5:"value";s:11:"nonbreaking";}i:23;a:2:{s:4:"text";s:11:"noneditable";s:5:"value";s:11:"noneditable";}i:24;a:2:{s:4:"text";s:9:"pagebreak";s:5:"value";s:9:"pagebreak";}i:25;a:2:{s:4:"text";s:5:"paste";s:5:"value";s:5:"paste";}i:26;a:2:{s:4:"text";s:7:"preview";s:5:"value";s:7:"preview";}i:27;a:2:{s:4:"text";s:5:"print";s:5:"value";s:5:"print";}i:28;a:2:{s:4:"text";s:4:"save";s:5:"value";s:4:"save";}i:29;a:2:{s:4:"text";s:13:"searchreplace";s:5:"value";s:13:"searchreplace";}i:30;a:2:{s:4:"text";s:11:"simplemedia";s:5:"value";s:11:"simplemedia";}i:31;a:2:{s:4:"text";s:12:"spellchecker";s:5:"value";s:12:"spellchecker";}i:32;a:2:{s:4:"text";s:5:"style";s:5:"value";s:5:"style";}i:33;a:2:{s:4:"text";s:8:"tabfocus";s:5:"value";s:8:"tabfocus";}i:34;a:2:{s:4:"text";s:5:"table";s:5:"value";s:5:"table";}i:35;a:2:{s:4:"text";s:8:"template";s:5:"value";s:8:"template";}i:36;a:2:{s:4:"text";s:11:"visualchars";s:5:"value";s:11:"visualchars";}i:37;a:2:{s:4:"text";s:9:"wordcount";s:5:"value";s:9:"wordcount";}i:38;a:2:{s:4:"text";s:10:"xhtmlxtras";s:5:"value";s:10:"xhtmlxtras";}}i:16;a:0:{}i:17;s:13:"activeplugins";i:18;b:1;i:19;N;i:20;a:0:{}i:21;N;i:22;N;i:23;N;i:24;N;}i:2;a:0:{}}i:17;a:3:{i:0;s:25:"Zikula_Form_Plugin_Button";i:1;a:15:{i:0;s:4:"Save";i:1;s:13:"handleCommand";i:2;s:4:"save";i:3;N;i:4;N;i:5;N;i:6;a:0:{}i:7;s:5:"plg10";i:8;b:1;i:9;N;i:10;a:1:{s:5:"class";s:7:"z-bt-ok";}i:11;N;i:12;N;i:13;N;i:14;N;}i:2;a:0:{}}i:18;a:3:{i:0;s:25:"Zikula_Form_Plugin_Button";i:1;a:15:{i:0;s:16:"Restore defaults";i:1;s:13:"handleCommand";i:2;s:7:"restore";i:3;N;i:4;N;i:5;N;i:6;a:0:{}i:7;s:5:"plg11";i:8;b:1;i:9;N;i:10;a:1:{s:5:"class";s:12:"z-bt-archive";}i:11;N;i:12;N;i:13;N;i:14;N;}i:2;a:0:{}}i:19;a:3:{i:0;s:25:"Zikula_Form_Plugin_Button";i:1;a:15:{i:0;s:6:"Cancel";i:1;s:13:"handleCommand";i:2;s:6:"cancel";i:3;N;i:4;N;i:5;N;i:6;a:0:{}i:7;s:5:"plg12";i:8;b:1;i:9;N;i:10;a:1:{s:5:"class";s:11:"z-bt-cancel";}i:11;N;i:12;N;i:13;N;i:14;N;}i:2;a:0:{}}}}}s:4:"data";a:0:{}s:8:"includes";a:6:{s:33:"Form\\Plugin\\ValidationSummary.php";i:1;s:21:"Form\\Plugin\\Label.php";i:1;s:28:"Form\\Plugin\\DropdownList.php";i:1;s:25:"Form\\Plugin\\TextInput.php";i:1;s:28:"Form\\Plugin\\CheckboxList.php";i:1;s:22:"Form\\Plugin\\Button.php";i:1;}}s:14:"f507dc2768173f";a:3:{s:5:"state";a:1:{s:16:"Zikula_Form_View";a:1:{s:7:"plugins";a:23:{i:0;a:3:{i:0;s:36:"Zikula_Form_Plugin_ValidationSummary";i:1;a:9:{i:0;s:35:"z-form-validationSummary z-errormsg";i:1;s:4:"plg1";i:2;b:1;i:3;N;i:4;a:0:{}i:5;N;i:6;N;i:7;N;i:8;N;}i:2;a:0:{}}i:1;a:3:{i:0;s:23:"Clip_Form_Plugin_String";i:1;a:37:{i:0;s:6:"String";i:1;s:6:"C(255)";i:2;s:8:"clipmain";i:3;i:1;i:4;i:0;i:5;i:0;i:6;s:5:"title";i:7;s:0:"";i:8;s:10:"singleline";i:9;N;i:10;N;i:11;s:15:"z-form-text-big";i:12;N;i:13;N;i:14;s:25:"clip_clipmain_1_0_0_title";i:15;b:1;i:16;s:8:"clipdata";i:17;b:1;i:18;b:1;i:19;N;i:20;N;i:21;N;i:22;N;i:23;i:0;i:24;N;i:25;N;i:26;N;i:27;s:25:"clip_clipmain_1_0_0_title";i:28;a:0:{}i:29;s:25:"clip_clipmain_1_0_0_title";i:30;b:1;i:31;N;i:32;a:0:{}i:33;N;i:34;N;i:35;N;i:36;N;}i:2;a:0:{}}i:2;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:7:"Content";i:1;N;i:2;s:27:"clip_clipmain_1_0_0_content";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg2";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:3;a:3:{i:0;s:21:"Clip_Form_Plugin_Text";i:1;a:38:{i:0;s:4:"Text";i:1;s:8:"C(65535)";i:2;a:2:{s:11:"usescribite";b:1;s:6:"editor";s:1:"-";}i:3;s:8:"clipmain";i:4;i:1;i:5;i:0;i:6;i:0;i:7;s:7:"content";i:8;s:0:"";i:9;s:9:"multiline";i:10;N;i:11;N;i:12;N;i:13;s:2:"70";i:14;s:2:"25";i:15;s:27:"clip_clipmain_1_0_0_content";i:16;b:1;i:17;s:8:"clipdata";i:18;b:1;i:19;b:0;i:20;N;i:21;N;i:22;s:7:"Content";i:23;N;i:24;i:0;i:25;s:5:"65535";i:26;N;i:27;N;i:28;s:27:"clip_clipmain_1_0_0_content";i:29;a:0:{}i:30;s:27:"clip_clipmain_1_0_0_content";i:31;b:1;i:32;N;i:33;a:0:{}i:34;N;i:35;N;i:36;N;i:37;N;}i:2;a:0:{}}i:4;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:7:"Summary";i:1;N;i:2;s:27:"clip_clipmain_1_0_0_summary";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg3";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:5;a:3:{i:0;s:21:"Clip_Form_Plugin_Text";i:1;a:38:{i:0;s:4:"Text";i:1;s:8:"C(65535)";i:2;a:2:{s:11:"usescribite";b:0;s:6:"editor";s:1:"-";}i:3;s:8:"clipmain";i:4;i:1;i:5;i:0;i:6;i:0;i:7;s:7:"summary";i:8;s:0:"";i:9;s:9:"multiline";i:10;N;i:11;N;i:12;N;i:13;s:2:"70";i:14;s:1:"4";i:15;s:27:"clip_clipmain_1_0_0_summary";i:16;b:1;i:17;s:8:"clipdata";i:18;b:1;i:19;b:0;i:20;N;i:21;N;i:22;s:7:"Summary";i:23;N;i:24;i:0;i:25;s:5:"65535";i:26;N;i:27;N;i:28;s:27:"clip_clipmain_1_0_0_summary";i:29;a:0:{}i:30;s:27:"clip_clipmain_1_0_0_summary";i:31;b:1;i:32;N;i:33;a:0:{}i:34;N;i:35;N;i:36;N;i:37;N;}i:2;a:0:{}}i:6;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:8:"Category";i:1;N;i:2;s:28:"clip_clipmain_1_0_0_category";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg4";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:7;a:3:{i:0;s:21:"Clip_Form_Plugin_List";i:1;a:45:{i:0;s:4:"List";i:1;s:2:"I4";i:2;s:8:"cliplist";i:3;a:3:{i:0;i:32;i:1;b:1;i:2;b:0;}i:4;s:8:"clipmain";i:5;i:1;i:6;i:0;i:7;i:0;i:8;s:8:"category";i:9;b:0;i:10;a:17:{s:2:"id";s:2:"32";s:9:"parent_id";s:1:"2";s:9:"is_locked";s:1:"0";s:7:"is_leaf";s:1:"0";s:4:"name";s:6:"Global";s:5:"value";s:0:"";s:10:"sort_value";s:2:"32";s:12:"display_name";a:1:{s:2:"en";s:6:"Global";}s:12:"display_desc";a:1:{s:2:"en";s:0:"";}s:4:"path";s:26:"/__SYSTEM__/Modules/Global";s:5:"ipath";s:7:"/1/2/32";s:6:"status";s:1:"A";s:10:"obj_status";s:1:"A";s:7:"cr_date";s:19:"2012-10-16 22:20:23";s:6:"cr_uid";s:1:"0";s:7:"lu_date";s:19:"2012-10-16 22:20:23";s:6:"lu_uid";s:1:"0";}i:11;b:1;i:12;b:0;i:13;b:0;i:14;N;i:15;N;i:16;N;i:17;i:0;i:18;N;i:19;N;i:20;s:6:"single";i:21;N;i:22;N;i:23;s:26:"handleSelectedIndexChanged";i:24;b:0;i:25;N;i:26;s:28:"clip_clipmain_1_0_0_category";i:27;b:1;i:28;s:8:"clipdata";i:29;s:33:"clip_clipmain_1_0_0_categoryItems";i:30;b:1;i:31;b:0;i:32;N;i:33;s:8:"Category";i:34;a:10:{i:0;a:2:{s:4:"text";s:0:"";s:5:"value";N;}i:1;a:2:{s:4:"text";s:9:" Blogging";s:5:"value";s:2:"33";}i:2;a:2:{s:4:"text";s:16:" Music and audio";s:5:"value";s:2:"34";}i:3;a:2:{s:4:"text";s:20:" Art and photography";s:5:"value";s:2:"35";}i:4;a:2:{s:4:"text";s:21:" Writing and thinking";s:5:"value";s:2:"36";}i:5;a:2:{s:4:"text";s:25:" Communications and media";s:5:"value";s:2:"37";}i:6;a:2:{s:4:"text";s:19:" Travel and culture";s:5:"value";s:2:"38";}i:7;a:2:{s:4:"text";s:23:" Science and technology";s:5:"value";s:2:"39";}i:8;a:2:{s:4:"text";s:21:" Sport and activities";s:5:"value";s:2:"40";}i:9;a:2:{s:4:"text";s:18:" Business and work";s:5:"value";s:2:"41";}}i:35;s:28:"clip_clipmain_1_0_0_category";i:36;a:0:{}i:37;s:28:"clip_clipmain_1_0_0_category";i:38;b:1;i:39;N;i:40;a:0:{}i:41;N;i:42;N;i:43;N;i:44;N;}i:2;a:0:{}}i:8;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:8:"Language";i:1;N;i:2;s:33:"clip_clipmain_1_0_0_core_language";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg5";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:9;a:3:{i:0;s:25:"Clip_Form_Plugin_Language";i:1;a:37:{i:0;s:17:"Language Selector";i:1;s:5:"C(10)";i:2;a:2:{i:0;b:1;i:1;b:1;}i:3;s:8:"clipmain";i:4;i:1;i:5;i:0;i:6;i:0;i:7;s:13:"core_language";i:8;s:0:"";i:9;i:0;i:10;N;i:11;N;i:12;s:6:"single";i:13;N;i:14;N;i:15;s:26:"handleSelectedIndexChanged";i:16;b:0;i:17;N;i:18;s:33:"clip_clipmain_1_0_0_core_language";i:19;b:1;i:20;s:8:"clipdata";i:21;s:38:"clip_clipmain_1_0_0_core_languageItems";i:22;b:1;i:23;b:0;i:24;N;i:25;s:8:"Language";i:26;a:2:{i:0;a:2:{s:4:"text";s:3:"All";s:5:"value";s:0:"";}i:1;a:2:{s:4:"text";s:7:"English";s:5:"value";s:2:"en";}}i:27;s:33:"clip_clipmain_1_0_0_core_language";i:28;a:0:{}i:29;s:33:"clip_clipmain_1_0_0_core_language";i:30;b:1;i:31;N;i:32;a:0:{}i:33;N;i:34;N;i:35;N;i:36;N;}i:2;a:0:{}}i:10;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:15:"Permalink title";i:1;N;i:2;s:33:"clip_clipmain_1_0_0_core_urltitle";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg6";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:11;a:3:{i:0;s:23:"Clip_Form_Plugin_String";i:1;a:37:{i:0;s:6:"String";i:1;s:6:"C(255)";i:2;s:8:"clipmain";i:3;i:1;i:4;i:0;i:5;i:0;i:6;s:13:"core_urltitle";i:7;s:0:"";i:8;s:10:"singleline";i:9;N;i:10;N;i:11;N;i:12;N;i:13;N;i:14;s:33:"clip_clipmain_1_0_0_core_urltitle";i:15;b:1;i:16;s:8:"clipdata";i:17;b:1;i:18;b:0;i:19;N;i:20;N;i:21;s:15:"Permalink title";i:22;N;i:23;i:0;i:24;N;i:25;N;i:26;N;i:27;s:33:"clip_clipmain_1_0_0_core_urltitle";i:28;a:0:{}i:29;s:33:"clip_clipmain_1_0_0_core_urltitle";i:30;b:1;i:31;N;i:32;a:0:{}i:33;N;i:34;N;i:35;N;i:36;N;}i:2;a:0:{}}i:12;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:12:"Publish date";i:1;N;i:2;s:36:"clip_clipmain_1_0_0_core_publishdate";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg7";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:13;a:3:{i:0;s:21:"Clip_Form_Plugin_Date";i:1;a:44:{i:0;s:4:"Date";i:1;s:1:"T";i:2;s:4:"date";i:3;s:8:"clipmain";i:4;i:1;i:5;i:0;i:6;i:0;i:7;s:16:"core_publishdate";i:8;b:1;i:9;s:1:"0";i:10;s:14:"%Y-%m-%d %H:%M";i:11;s:24:"%A, %B %d, %Y - %I:%M %p";i:12;N;i:13;i:0;i:14;s:0:"";i:15;s:10:"singleline";i:16;N;i:17;N;i:18;s:12:" z-form-date";i:19;N;i:20;N;i:21;s:36:"clip_clipmain_1_0_0_core_publishdate";i:22;b:1;i:23;s:8:"clipdata";i:24;b:1;i:25;b:0;i:26;N;i:27;N;i:28;s:12:"Publish date";i:29;N;i:30;i:0;i:31;N;i:32;N;i:33;N;i:34;s:36:"clip_clipmain_1_0_0_core_publishdate";i:35;a:0:{}i:36;s:36:"clip_clipmain_1_0_0_core_publishdate";i:37;b:1;i:38;N;i:39;a:0:{}i:40;N;i:41;N;i:42;N;i:43;N;}i:2;a:0:{}}i:14;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:11:"Expire date";i:1;N;i:2;s:35:"clip_clipmain_1_0_0_core_expiredate";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg8";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:15;a:3:{i:0;s:21:"Clip_Form_Plugin_Date";i:1;a:44:{i:0;s:4:"Date";i:1;s:1:"T";i:2;s:4:"date";i:3;s:8:"clipmain";i:4;i:1;i:5;i:0;i:6;i:0;i:7;s:15:"core_expiredate";i:8;b:1;i:9;s:1:"0";i:10;s:14:"%Y-%m-%d %H:%M";i:11;s:24:"%A, %B %d, %Y - %I:%M %p";i:12;N;i:13;i:0;i:14;s:0:"";i:15;s:10:"singleline";i:16;N;i:17;N;i:18;s:12:" z-form-date";i:19;N;i:20;N;i:21;s:35:"clip_clipmain_1_0_0_core_expiredate";i:22;b:1;i:23;s:8:"clipdata";i:24;b:1;i:25;b:0;i:26;N;i:27;N;i:28;s:11:"Expire date";i:29;N;i:30;i:0;i:31;N;i:32;N;i:33;N;i:34;s:35:"clip_clipmain_1_0_0_core_expiredate";i:35;a:0:{}i:36;s:35:"clip_clipmain_1_0_0_core_expiredate";i:37;b:1;i:38;N;i:39;a:0:{}i:40;N;i:41;N;i:42;N;i:43;N;}i:2;a:0:{}}i:16;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:7:"Visible";i:1;N;i:2;s:32:"clip_clipmain_1_0_0_core_visible";i:3;N;i:4;N;i:5;a:0:{}i:6;s:4:"plg9";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:17;a:3:{i:0;s:25:"Clip_Form_Plugin_Checkbox";i:1;a:29:{i:0;s:8:"Checkbox";i:1;s:1:"L";i:2;s:8:"clipmain";i:3;i:1;i:4;i:0;i:5;i:0;i:6;s:12:"core_visible";i:7;s:1:"1";i:8;b:0;i:9;b:0;i:10;N;i:11;N;i:12;s:7:"Visible";i:13;N;i:14;b:1;i:15;N;i:16;s:32:"clip_clipmain_1_0_0_core_visible";i:17;b:1;i:18;s:8:"clipdata";i:19;s:32:"clip_clipmain_1_0_0_core_visible";i:20;a:0:{}i:21;s:32:"clip_clipmain_1_0_0_core_visible";i:22;b:1;i:23;N;i:24;a:0:{}i:25;N;i:26;N;i:27;N;i:28;N;}i:2;a:0:{}}i:18;a:3:{i:0;s:24:"Zikula_Form_Plugin_Label";i:1;a:14:{i:0;s:6:"Locked";i:1;N;i:2;s:31:"clip_clipmain_1_0_0_core_locked";i:3;N;i:4;N;i:5;a:0:{}i:6;s:5:"plg10";i:7;b:1;i:8;N;i:9;a:0:{}i:10;N;i:11;N;i:12;N;i:13;N;}i:2;a:0:{}}i:19;a:3:{i:0;s:25:"Clip_Form_Plugin_Checkbox";i:1;a:29:{i:0;s:8:"Checkbox";i:1;s:1:"L";i:2;s:8:"clipmain";i:3;i:1;i:4;i:0;i:5;i:0;i:6;s:11:"core_locked";i:7;s:1:"0";i:8;b:0;i:9;b:0;i:10;N;i:11;N;i:12;s:6:"Locked";i:13;N;i:14;b:1;i:15;N;i:16;s:31:"clip_clipmain_1_0_0_core_locked";i:17;b:1;i:18;s:8:"clipdata";i:19;s:31:"clip_clipmain_1_0_0_core_locked";i:20;a:0:{}i:21;s:31:"clip_clipmain_1_0_0_core_locked";i:22;b:1;i:23;N;i:24;a:0:{}i:25;N;i:26;N;i:27;N;i:28;N;}i:2;a:0:{}}i:20;a:3:{i:0;s:25:"Zikula_Form_Plugin_Button";i:1;a:15:{i:0;s:18:"Submit and Approve";i:1;s:13:"handleCommand";i:2;s:7:"approve";i:3;N;i:4;N;i:5;N;i:6;a:0:{}i:7;s:5:"plg11";i:8;b:1;i:9;N;i:10;a:2:{s:5:"class";s:7:"z-bt-ok";s:5:"title";s:44:"Submit a publication and approve immediately";}i:11;N;i:12;N;i:13;N;i:14;N;}i:2;a:0:{}}i:21;a:3:{i:0;s:25:"Zikula_Form_Plugin_Button";i:1;a:15:{i:0;s:6:"Submit";i:1;s:13:"handleCommand";i:2;s:12:"authorsubmit";i:3;N;i:4;N;i:5;N;i:6;a:0:{}i:7;s:5:"plg12";i:8;b:1;i:9;N;i:10;a:2:{s:5:"class";s:8:"z-bt-new";s:5:"title";s:50:"Submit a publication for acceptance by a moderator";}i:11;N;i:12;N;i:13;N;i:14;N;}i:2;a:0:{}}i:22;a:3:{i:0;s:25:"Zikula_Form_Plugin_Button";i:1;a:15:{i:0;s:6:"Cancel";i:1;s:13:"handleCommand";i:2;s:6:"cancel";i:3;N;i:4;N;i:5;N;i:6;a:0:{}i:7;s:5:"plg13";i:8;b:1;i:9;N;i:10;a:1:{s:5:"class";s:11:"z-bt-cancel";}i:11;N;i:12;N;i:13;N;i:14;N;}i:2;a:0:{}}}}}s:4:"data";a:3:{s:4:"pubs";a:0:{}s:5:"links";a:0:{}s:7:"referer";s:41:"http://localhost/Zikula_Standard-1.3.4-1/";}s:8:"includes";a:9:{s:33:"Form\\Plugin\\ValidationSummary.php";i:1;s:84:"C:\\xampp\\htdocs\\Zikula_Standard-1.3.4-1\\modules\\Clip\\lib\\Clip\\Form\\Plugin\\String.php";i:1;s:21:"Form\\Plugin\\Label.php";i:1;s:82:"C:\\xampp\\htdocs\\Zikula_Standard-1.3.4-1\\modules\\Clip\\lib\\Clip\\Form\\Plugin\\Text.php";i:1;s:82:"C:\\xampp\\htdocs\\Zikula_Standard-1.3.4-1\\modules\\Clip\\lib\\Clip\\Form\\Plugin\\List.php";i:1;s:86:"C:\\xampp\\htdocs\\Zikula_Standard-1.3.4-1\\modules\\Clip\\lib\\Clip\\Form\\Plugin\\Language.php";i:1;s:82:"C:\\xampp\\htdocs\\Zikula_Standard-1.3.4-1\\modules\\Clip\\lib\\Clip\\Form\\Plugin\\Date.php";i:1;s:86:"C:\\xampp\\htdocs\\Zikula_Standard-1.3.4-1\\modules\\Clip\\lib\\Clip\\Form\\Plugin\\Checkbox.php";i:1;s:22:"Form\\Plugin\\Button.php";i:1;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `tag_entity_object_tag_entity_tag`
--

CREATE TABLE `tag_entity_object_tag_entity_tag` (
  `tag_entity_object_id` int(11) NOT NULL,
  `tag_entity_tag_id` int(11) NOT NULL,
  PRIMARY KEY (`tag_entity_object_id`,`tag_entity_tag_id`),
  KEY `IDX_62EE9B1C10C94B2` (`tag_entity_object_id`),
  KEY `IDX_62EE9B1C90B1AA9B` (`tag_entity_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tag_object`
--

CREATE TABLE `tag_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) NOT NULL,
  `areaId` int(11) NOT NULL,
  `objectId` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `urlObject` longtext COMMENT '(DC2Type:object)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tag_tag`
--

CREATE TABLE `tag_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(36) NOT NULL,
  `slug` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tag_tag`
--

INSERT INTO `tag_tag` VALUES(1, 'Zikula', 'zikula');
INSERT INTO `tag_tag` VALUES(2, 'computer', 'computer');
INSERT INTO `tag_tag` VALUES(3, 'open source', 'open-source');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` VALUES(1, 'Andreas08', 3, 'Andreas08', 'Based on the theme Andreas08 by Andreas Viklund and extended for Zikula with the CSS Framework ''fluid960gs''.', 'Andreas08', '2.0', '', 1, 1, 0, 1, 1);
INSERT INTO `themes` VALUES(2, 'Atom', 3, 'Atom', 'The Atom theme is an auxiliary theme specially designed for rendering pages in Atom mark-up.', 'Atom', '1.0', '', 0, 0, 1, 1, 0);
INSERT INTO `themes` VALUES(3, 'Mobile', 3, 'Mobile', 'The mobile theme is an auxiliary theme designed specially for outputting pages in a mobile-friendly format.', 'Mobile', '1.0', '', 0, 0, 1, 1, 1);
INSERT INTO `themes` VALUES(4, 'Printer', 3, 'Printer', 'The Printer theme is an auxiliary theme designed specially for outputting pages in a printer-friendly format.', 'Printer', '2.0', '', 0, 0, 1, 1, 1);
INSERT INTO `themes` VALUES(5, 'RSS', 3, 'RSS', 'The RSS theme is an auxiliary theme designed specially for outputting pages as an RSS feed.', 'RSS', '1.0', '', 0, 0, 1, 1, 0);
INSERT INTO `themes` VALUES(6, 'SeaBreeze', 3, 'SeaBreeze', 'The SeaBreeze theme is a browser-oriented theme, and was updated for the release of Zikula 1.0, with revised colours and new graphics.', 'SeaBreeze', '3.2', '', 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userblocks`
--

CREATE TABLE `userblocks` (
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`uid`,`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'guest', '', '', '', 1, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '', 0, '', '', '');
INSERT INTO `users` VALUES(2, 'admin', 'example@example.com', '8$YZ~e5$234a1c7eee0bca27c1a81df970d1058109455fae40b08d9ab76ba0c227827530', '', 1, '2012-10-16 20:20:14', 2, '2012-10-16 20:20:26', '2012-10-16 20:20:41', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_verifychg`
--

CREATE TABLE `users_verifychg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changetype` tinyint(4) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `newemail` varchar(60) NOT NULL,
  `verifycode` varchar(138) NOT NULL,
  `created_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_property`
--

CREATE TABLE `user_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `dtype` int(11) NOT NULL DEFAULT '0',
  `modname` varchar(64) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `validation` longtext,
  `attributename` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prop_label` (`label`),
  KEY `prop_attr` (`attributename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `user_property`
--

INSERT INTO `user_property` VALUES(1, '_UREALNAME', 1, '', 1, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:0;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'realname');
INSERT INTO `user_property` VALUES(2, '_UFAKEMAIL', 1, '', 2, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:0;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'publicemail');
INSERT INTO `user_property` VALUES(3, '_YOURHOMEPAGE', 1, '', 3, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:0;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'url');
INSERT INTO `user_property` VALUES(4, '_TIMEZONEOFFSET', 1, '', 4, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:4;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'tzoffset');
INSERT INTO `user_property` VALUES(5, '_YOURAVATAR', 1, '', 5, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:4;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'avatar');
INSERT INTO `user_property` VALUES(6, '_YICQ', 1, '', 6, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:0;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'icq');
INSERT INTO `user_property` VALUES(7, '_YAIM', 1, '', 7, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:0;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'aim');
INSERT INTO `user_property` VALUES(8, '_YYIM', 1, '', 8, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:0;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'yim');
INSERT INTO `user_property` VALUES(9, '_YMSNM', 1, '', 9, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:0;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'msnm');
INSERT INTO `user_property` VALUES(10, '_YLOCATION', 1, '', 10, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:0;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'city');
INSERT INTO `user_property` VALUES(11, '_YOCCUPATION', 1, '', 11, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:0;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'occupation');
INSERT INTO `user_property` VALUES(12, '_SIGNATURE', 1, '', 12, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:1;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'signature');
INSERT INTO `user_property` VALUES(13, '_EXTRAINFO', 1, '', 13, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:1;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'extrainfo');
INSERT INTO `user_property` VALUES(14, '_YINTERESTS', 1, '', 14, 'a:5:{s:8:"required";i:0;s:6:"viewby";i:0;s:11:"displaytype";i:1;s:11:"listoptions";s:0:"";s:4:"note";s:0:"";}', 'interests');

-- --------------------------------------------------------

--
-- Table structure for table `workflows`
--

CREATE TABLE `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `workflows`
--

INSERT INTO `workflows` VALUES(1, 0, 'Clip', 'standard', 'approved', 1, 'clip_pubdata1', 'id', 1, 0, '');
INSERT INTO `workflows` VALUES(2, 0, 'Clip', 'none', 'approved', 1, 'clip_pubdata2', 'id', 1, 0, '');
INSERT INTO `workflows` VALUES(3, 0, 'Clip', 'none', 'approved', 1, 'clip_pubdata2', 'id', 2, 0, '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tag_entity_object_tag_entity_tag`
--
ALTER TABLE `tag_entity_object_tag_entity_tag`
  ADD CONSTRAINT `FK_62EE9B1C90B1AA9B` FOREIGN KEY (`tag_entity_tag_id`) REFERENCES `tag_tag` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_62EE9B1C10C94B2` FOREIGN KEY (`tag_entity_object_id`) REFERENCES `tag_object` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
