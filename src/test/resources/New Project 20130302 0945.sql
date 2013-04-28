-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema uu152971
--

CREATE DATABASE IF NOT EXISTS uu152971;
USE uu152971;

--
-- Definition of table `taycms_ad`
--

DROP TABLE IF EXISTS `taycms_ad`;
CREATE TABLE `taycms_ad` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `classid` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `image_src` varchar(255) NOT NULL default '',
  `image_url` varchar(255) NOT NULL default '',
  `image_alt` varchar(100) NOT NULL default '',
  `order` smallint(4) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_ad`
--

/*!40000 ALTER TABLE `taycms_ad` DISABLE KEYS */;
INSERT INTO `taycms_ad` (`id`,`title`,`classid`,`hits`,`addtime`,`updatetime`,`image_src`,`image_url`,`image_alt`,`order`,`status`) VALUES 
 (9,'顶部banner轮播广告1',60,0,1320733962,1349682469,'/data/attached/image/20120719/20120719134719_40599.jpg','http://www.taygod.com','',1,1),
 (13,'顶部banner轮播广告2',60,0,1342757541,1349682446,'/data/attached/image/20120720/20120720040453_10184.jpg','http://demo2.taygod.com','',1,1),
 (14,'顶部banner轮播广告3',60,0,1342757537,1349682396,'/data/attached/image/20120720/20120720040525_31354.jpg','http://demo2.taygod.com','',2,1);
/*!40000 ALTER TABLE `taycms_ad` ENABLE KEYS */;


--
-- Definition of table `taycms_chips`
--

DROP TABLE IF EXISTS `taycms_chips`;
CREATE TABLE `taycms_chips` (
  `id` int(11) NOT NULL auto_increment,
  `classid` int(11) default NULL,
  `chipname` varchar(255) default NULL,
  `content` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_chips`
--

/*!40000 ALTER TABLE `taycms_chips` DISABLE KEYS */;
INSERT INTO `taycms_chips` (`id`,`classid`,`chipname`,`content`) VALUES 
 (1,NULL,'index_friendlink','<a href=\"http://www.xibu114.com/\" target=\"_blank\">西部114</a>  \r\n	 \r\n	       <a href=\"http://www.soxizi.com\" target=\"_blank\">西子院线</a>  \r\n	 \r\n	       <a href=\"http://www.cdlyh.com\" target=\"_blank\">柳叶湖畔</a>  '),
 (2,NULL,'contact','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td height=\"28\" colspan=\"2\" align=\"center\"><strong>TayGod v1.5</strong></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"18%\" height=\"24\" valign=\"top\">地址：</td>\r\n    <td valign=\"top\">陕西省西安市</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"24\" valign=\"top\">邮编：</td>\r\n    <td valign=\"top\">710000</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"24\" valign=\"top\">电话：</td>\r\n    <td valign=\"top\">18780487771 18075619591</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"24\" valign=\"top\">传真：</td>\r\n    <td valign=\"top\">18075619591</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"24\" valign=\"top\">邮箱：</td>\r\n    <td valign=\"top\">admin@taygod.com</td>\r\n  </tr>\r\n</table>');
/*!40000 ALTER TABLE `taycms_chips` ENABLE KEYS */;


--
-- Definition of table `taycms_flink`
--

DROP TABLE IF EXISTS `taycms_flink`;
CREATE TABLE `taycms_flink` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `url` varchar(60) NOT NULL default '#',
  `webname` varchar(30) NOT NULL default '',
  `weblogo` varchar(250) NOT NULL default '',
  `dayip` varchar(20) NOT NULL,
  `pr` smallint(1) NOT NULL,
  `msg` varchar(200) NOT NULL default '',
  `name` varchar(10) NOT NULL,
  `qq` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL default '',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `isshow` smallint(1) NOT NULL default '1',
  `order` int(8) NOT NULL,
  `addtime` int(10) NOT NULL,
  `updatetime` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_flink`
--

/*!40000 ALTER TABLE `taycms_flink` DISABLE KEYS */;
INSERT INTO `taycms_flink` (`id`,`url`,`webname`,`weblogo`,`dayip`,`pr`,`msg`,`name`,`qq`,`email`,`typeid`,`isshow`,`order`,`addtime`,`updatetime`) VALUES 
 (2,'http://www.taycms.com','TayCMS官网','/static/images/admin/admin_main_logo.gif','1000',5,'TayCMS官方网站','taygod','','madma@163.com',0,1,0,1305974073,1349263326),
 (4,'http://www.baidu.com','百度','/data/attached/image/20121003/20121003191329_28319.gif','10000',3,'百度你一下就知道！','web','22221','222@222.com',0,1,1,1349261485,1349263211);
/*!40000 ALTER TABLE `taycms_flink` ENABLE KEYS */;


--
-- Definition of table `taycms_job`
--

DROP TABLE IF EXISTS `taycms_job`;
CREATE TABLE `taycms_job` (
  `id` int(11) NOT NULL auto_increment,
  `position` varchar(255) default NULL,
  `number` varchar(255) default NULL,
  `sex` tinyint(4) default NULL,
  `area` varchar(255) default NULL,
  `wage` varchar(255) default NULL,
  `workinglife` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `department` varchar(255) default NULL,
  `resumelanguage` varchar(255) default NULL,
  `degree` varchar(255) default NULL,
  `age` varchar(255) default NULL,
  `addtime` varchar(255) default NULL,
  `endtime` varchar(255) default NULL,
  `description` text,
  `ability` text,
  `other` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_job`
--

/*!40000 ALTER TABLE `taycms_job` DISABLE KEYS */;
INSERT INTO `taycms_job` (`id`,`position`,`number`,`sex`,`area`,`wage`,`workinglife`,`category`,`department`,`resumelanguage`,`degree`,`age`,`addtime`,`endtime`,`description`,`ability`,`other`) VALUES 
 (3,'前台接待','4',2,'德阳市','2000-3000','1年','全职','行政部','中文','中专以上','20-30','2012-04-18','2012-04-26','前台接待<br />','前台接待<br />','前台接待<br />'),
 (2,'办公室文员','10',2,'四川成都','2000-3000','5年以上','全职','行政部','中文','大学专科以上','25-35岁','2012-04-12','2012-04-28','有一定的法律知识基础，有较强的写作能力和沟通能力，年龄在25-35岁之间，做事要坚持原则，工作要主动，符合以上要求者优先录用，待遇可根据自身能力协商<br />','有一定的法律知识基础，有较强的写作能力和沟通能力<br />','联系电话： 13877827726 <br> <span >联 系 人：</span>向敏<br /> <span  >联系地址：</span>四川成都文竹街文竹大厦4楼<br />');
/*!40000 ALTER TABLE `taycms_job` ENABLE KEYS */;


--
-- Definition of table `taycms_job_resume`
--

DROP TABLE IF EXISTS `taycms_job_resume`;
CREATE TABLE `taycms_job_resume` (
  `id` int(11) NOT NULL auto_increment,
  `jobid` int(11) default NULL,
  `name` varchar(255) default NULL,
  `sex` tinyint(4) default NULL,
  `birthday` int(10) default NULL,
  `address` varchar(255) default NULL,
  `postcode` smallint(6) default NULL,
  `telephone` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `marriage` tinyint(4) default NULL,
  `height` varchar(255) default NULL,
  `homeplace` varchar(255) default NULL,
  `nativeplace` varchar(50) default NULL,
  `certificatetype` tinyint(4) default NULL,
  `certificatenum` varchar(18) default NULL,
  `photo` varchar(255) default NULL,
  `degree` tinyint(4) default NULL,
  `major` varchar(255) default NULL,
  `schoolname` varchar(255) default NULL,
  `firstlanguage` varchar(255) default NULL,
  `firstLanguagelevel` tinyint(4) default NULL,
  `secondlanguage` varchar(255) default NULL,
  `workage` tinyint(4) default NULL,
  `worktype` tinyint(4) default NULL,
  `toworkplace` varchar(255) default NULL,
  `expectsalary` int(11) default NULL,
  `resumecontent` text,
  `attachmentID` int(11) default NULL,
  `addtime` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_job_resume`
--

/*!40000 ALTER TABLE `taycms_job_resume` DISABLE KEYS */;
INSERT INTO `taycms_job_resume` (`id`,`jobid`,`name`,`sex`,`birthday`,`address`,`postcode`,`telephone`,`mobile`,`email`,`marriage`,`height`,`homeplace`,`nativeplace`,`certificatetype`,`certificatenum`,`photo`,`degree`,`major`,`schoolname`,`firstlanguage`,`firstLanguagelevel`,`secondlanguage`,`workage`,`worktype`,`toworkplace`,`expectsalary`,`resumecontent`,`attachmentID`,`addtime`) VALUES 
 (2,2,'小明',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `taycms_job_resume` ENABLE KEYS */;


--
-- Definition of table `taycms_member`
--

DROP TABLE IF EXISTS `taycms_member`;
CREATE TABLE `taycms_member` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `flag` int(11) default '0',
  `logintime` int(10) default NULL,
  `lastlogintime` int(10) default NULL,
  `logins` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_member`
--

/*!40000 ALTER TABLE `taycms_member` DISABLE KEYS */;
INSERT INTO `taycms_member` (`id`,`username`,`password`,`flag`,`logintime`,`lastlogintime`,`logins`) VALUES 
 (1,'admin','d033e22ae348aeb5660fc2140aec35850c4da997',999,1350123374,1350103464,34);
/*!40000 ALTER TABLE `taycms_member` ENABLE KEYS */;


--
-- Definition of table `taycms_message`
--

DROP TABLE IF EXISTS `taycms_message`;
CREATE TABLE `taycms_message` (
  `id` int(11) NOT NULL auto_increment,
  `txt_Name` varchar(100) default NULL,
  `dropSex` varchar(10) default NULL,
  `txt_Position_Name` varchar(255) default NULL,
  `txt_Company_Name` varchar(255) default NULL,
  `txt_Email` varchar(255) default NULL,
  `txt_Phone` varchar(255) default NULL,
  `txt_Fax` varchar(255) default NULL,
  `txt_Title` varchar(255) default NULL,
  `txt_Content` text,
  `isshow` tinyint(4) default '0',
  `reply` text,
  `replytime` int(10) default NULL,
  `addtime` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_message`
--

/*!40000 ALTER TABLE `taycms_message` DISABLE KEYS */;
INSERT INTO `taycms_message` (`id`,`txt_Name`,`dropSex`,`txt_Position_Name`,`txt_Company_Name`,`txt_Email`,`txt_Phone`,`txt_Fax`,`txt_Title`,`txt_Content`,`isshow`,`reply`,`replytime`,`addtime`) VALUES 
 (18,'刘莉莉','F','销售总监','上海明日服饰有限公司','jerry@163.com','021-5245774','021-5245774','想咨询一下贵公司lafee品牌服装价格','想咨询一下贵公司lafee品牌服装价格',1,'您好，感谢您的留言，我们客户人员已经通过电话与您取得联系。',NULL,1334670806),
 (19,'刘德华','M','','深圳光明公司','admin@173.com','1364431122','0722-23211','咨询公司产品价格','咨询公司产品价格  请问一下贵公司产品价格',0,NULL,NULL,1350119267),
 (20,'刘德华','M','','深圳光明公司','admin@173.com','1364431122','0722-23211','咨询公司产品价格','咨询公司产品价格  请问一下贵公司产品价格',0,NULL,NULL,1350120593),
 (21,'刘德华','M','','深圳光明公司','admin@173.com','1364431122','0722-23211','咨询公司产品价格','咨询公司产品价格  请问一下贵公司产品价格',0,NULL,NULL,1350120617),
 (22,'刘德华','M','','深圳光明公司','admin@173.com','1364431122','0722-23211','咨询公司产品价格','咨询公司产品价格  请问一下贵公司产品价格',0,NULL,NULL,1350120627),
 (23,'刘德华','M','','深圳光明公司','admin@173.com','1364431122','0722-23211','咨询公司产品价格','咨询公司产品价格  请问一下贵公司产品价格',0,NULL,NULL,1350120656),
 (24,'刘德华','M','','深圳光明公司','admin@173.com','1364431122','0722-23211','咨询公司产品价格','咨询公司产品价格  请问一下贵公司产品价格',1,NULL,NULL,1350120849);
/*!40000 ALTER TABLE `taycms_message` ENABLE KEYS */;


--
-- Definition of table `taycms_nav`
--

DROP TABLE IF EXISTS `taycms_nav`;
CREATE TABLE `taycms_nav` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `parentid` smallint(6) unsigned NOT NULL default '0',
  `name` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `url` varchar(255) default NULL COMMENT '#',
  `target` tinyint(1) default '0',
  `type` tinyint(1) default '0',
  `available` tinyint(1) default '0',
  `displayorder` tinyint(3) default NULL,
  `highlight` varchar(10) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_nav`
--

/*!40000 ALTER TABLE `taycms_nav` DISABLE KEYS */;
INSERT INTO `taycms_nav` (`id`,`parentid`,`name`,`title`,`url`,`target`,`type`,`available`,`displayorder`,`highlight`) VALUES 
 (1,0,'网站首页','','/',0,1,1,1,'0'),
 (2,0,'关于我们','','page/27',0,1,0,1,'0'),
 (3,0,'服务项目','111111','page/32',0,1,0,2,'#FF9900'),
 (4,0,'产品展示','','product',0,1,1,3,'0'),
 (5,0,'公司新闻','','list/39',0,1,1,4,'0'),
 (6,0,'行业动态','','list/43',0,1,1,5,'0'),
 (7,0,'技术文章','','list/44',0,1,1,6,'0'),
 (8,0,'敬请留言','','message',0,1,1,7,'0'),
 (9,0,'人才招聘','','page/47',0,1,1,8,'0'),
 (10,0,'联系我们','','page/31',0,1,0,9,'0'),
 (11,0,'ASP版演示','','http://demo.taygod.com/',1,1,1,10,''),
 (15,0,'中文版','中文版','/en',1,2,1,0,''),
 (16,0,'英文版','英文版','/',1,2,1,0,''),
 (17,0,'关于我们','关于我们','page/27',1,3,1,0,''),
 (18,0,'版权声明','版权声明','page/46',1,3,1,0,''),
 (19,0,'设为首页','设为首页','[removed]this.style.behavior=\'url(#default#homepage)\';this.setHomePage(\'/\');',1,2,1,0,''),
 (20,0,'添加收藏','添加收藏','[removed]window.external.AddFavorite(\'/\', \'taycms免费企业建站系统\')',1,2,1,0,'');
/*!40000 ALTER TABLE `taycms_nav` ENABLE KEYS */;


--
-- Definition of table `taycms_news`
--

DROP TABLE IF EXISTS `taycms_news`;
CREATE TABLE `taycms_news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` text,
  `notice` text,
  `classid` int(11) default NULL,
  `from` varchar(255) default NULL,
  `showpic` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `hits` int(11) default '0',
  `keyboard` varchar(255) default NULL,
  `isgood` tinyint(4) default NULL,
  `author` varchar(255) default NULL,
  `order` int(11) default '0',
  `addtime` int(10) default NULL,
  `updatetime` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_news`
--

/*!40000 ALTER TABLE `taycms_news` DISABLE KEYS */;
INSERT INTO `taycms_news` (`id`,`title`,`content`,`notice`,`classid`,`from`,`showpic`,`url`,`hits`,`keyboard`,`isgood`,`author`,`order`,`addtime`,`updatetime`) VALUES 
 (12,'您的微笑 我的荣耀',NULL,NULL,39,NULL,NULL,NULL,3,NULL,1,NULL,0,1333873751,1349755607),
 (13,'2011中国男装春夏流行趋势ROM',NULL,NULL,39,NULL,NULL,NULL,4,NULL,1,NULL,0,1333873751,1349755588),
 (14,'1月份，实现销售产值3.27亿元','1月份，实现销售产值3.27亿元<br />','',43,'',NULL,'',15,'',1,'',0,1334501668,1349755577),
 (21,'Louis Vuitton 2012 帆船杯系列作品型录 Lookbook','<img    /></p><p style=text-align:center>','',39,'','','',2,'',1,'',0,1334674214,1349755567),
 (22,'Mulberry2012秋冬系列手袋继续英伦复古风','<p>\r\n	众多名流艺人钟爱的英国老牌Mulberry每一季的新款总能让时尚达人们趋之若鹜。近日最新推出的2012秋冬系列手袋又是兼具优雅气质与造型感的\r\n力作。翻盖设计的链条包相对以往更多了一份率性;手提的款式则采用了侧面突出的设计增加廓形美感。此外，设计师将Mulberry经典的Alexa手袋作\r\n了新的尝试，选择以跳跃的橘红色、质感的动物纹皮革或者民族风情的刺绣钉珠来点缀，更具可看性。\r\n</p>\r\n \r\n</p>\r\n<p >\r\n	淡色铆钉复古包\r\n</p>\r\n<p >\r\n	 \r\n</p>\r\n<p >\r\n	黑色彩色波纹铆钉别致复古包\r\n</p>\r\n<p  ></p><p  >	橘红皮质两色复古包</p><p >	蓝色蛇纹大气复古包</p><br />','',39,'','','',5,'',0,'',0,1334674246,1349755543),
 (23,'德国：阿迪达斯集团股票获“跑赢大盘”评级','<p style=\"text-indent:2em;\">\r\n	巴黎盛富证券(CACheuvreux)分析师JürgenKolb近日给予德国服装制造商阿迪达斯(adidas)集团股票“跑赢大盘(outperform)”评级。该集团股票的目标价格为66.00欧元。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	阿迪达斯集团首席执行官HerbertHainer在接受媒体的采访时表示该集团致力于减少产品组合。产品的数量将减少25%。此外该集团将在未来的18个月内借助3D广告屏推行促销计划，并减少分店产品存量。预计该集团的产品生产成本将节约数千万欧元。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	Hainer上述的表态是阿迪达斯集团的战略更新，此集团将借助这些战略达到11%的税前利润率。该集团的一位发言人表示，阿迪达斯集团将借助上述措\r\n施在2015年将利润率从目前的7.6%提高至11%。与此同时，该集团还致力于在本世纪前十年中期将销售额提高至170亿欧元，集团2011财年的销售\r\n额约为130亿欧元。未来销售中一半的增长都将出现在中国、俄罗斯以及美国地区，青少年、跑步运动员以及篮球爱好者的运动服装的销售也将增加。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	由此，巴黎盛富证券(CACheuvreux)的分析师给予阿迪达斯集团股票“跑赢大盘”评级。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>','',43,'','','',1,'',1,'',0,1334674426,1349755523),
 (24,'“永不衰落的产业”需要什么样的信息化？','<p style=\"text-indent:2em;\">\r\n	服装产业，由于与人们的日常生活极为贴近，市场需求每时每刻都不曾间断，故一直被称为“永不衰落的产业”，拥有极为广阔的发展前景。作为“世界\r\n工厂”的中国早在2000多年前就开辟了丝绸之路，拥有极为悠久的服装出口历史。时至今日，中国已经年产服装百亿件，掌握全球服装产业总量超过60%的市\r\n场份额，是不折不扣的“服装大国”。随着20世纪末期和21世纪信息技术的突飞猛进，现代社会已从工业化迈入了信息化，进而促使各行各业都走了上信息化管\r\n理的康庄大道，服装产业更是如此。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n我国服装行业信息化发展现状不容乐观\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n20世纪中旬，服装产业经历了从产品产量、产品质量到生产成本的竞争，进入21世纪，服装行业的市场竞争已转变为服装企业对市场的响应速度、服装产品品牌以及服装企业技术创新能力的竞争，进而促使信息化的开展是否能赶得上时代的步伐，成了服装企业成败的重要支撑。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n在西方发达国家，自动化的管理体系和智能化的决策支持，以及电子商务的应用已经十分广泛，信息化管理软件的发展及应用已经非常成熟。一些服装行业的知\r\n名企业早就在ERP的基础上构建了先进的物流供应链管理、商业智能、全面预算管理等一系列更为先进的信息化管理系统，而我国在这方面还有着比较大的差距。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n据统计，我国比较大型的服装企业对财务软件、CAD设计软件、ERP软件的应用已经比较普遍，但这并不足以应对当今激烈的市场竞争。对于大型服装制造\r\n企业来说，采购、生产、分销等流程对供应链管理与物流有着越来越大的依靠和越来越高的要求，企业仅有ERP系统已经不能满足企业发展和竞争的需要。所以，\r\n我国服装企业大多选择走上自己开发的道路。刚开始，往往是因为急需管理居高不下的库存，而不得不花很长时间去开发库存管理系统，接下去，进货有了问题，再\r\n开始编写采购系统……越来越多的独立模块形成了信息的孤岛，整个企业的运转受到了各种各样的阻碍。试问，这些孤立的、不成熟的系统如何帮助企业面临21世\r\n纪巨大的市场竞争？\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n而那些数量更多的小型服装企业，部分更是连财务软件为何物都不清楚，更别说其他管理软件了！\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n物流供应链管理成我国服装行业信息化突破口\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n据全国服装科技信息中心预测，随着政府对国有大中型企业信息化的大力推进，特别是加入WTO以后，我国的服装行业信息化水平相比以前有了比较大的提\r\n升。为了应对来自全球的挑战，我国服装企业必须进一步降低自身的运营成本，只有这样才能保证“中国制造”在低价的基础上进行质量的提升。而如何降低运营成\r\n本呢？国外一些机构为我们指明了出路。综合分析认为，在某个商品的整个供应链体系中，非生产的成本已经超过了80%。其中，商品的物流成本占到40%以\r\n上，时间成本占到整个供应链的90%以上。可见，物流供应链成了我国服装企业最好的出路！\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n我国的服装企业大多属于劳动密集型企业，自动化程度还比较低，这给服装行业信息化的实现带来了很大的难度。而服装企业的业务流程非常复杂、繁琐，许多\r\n服装企业每天需要处理成百上千的库存单位，并要管理无数的款式、结构、客户标识甚至更多的数据。在这种复杂性极高的经营管理中，以精确预测、采购管理、生\r\n产计划和分销管理为特点的供应链管理就显得尤为重要。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n同时，我国服装行业多以OEM为主要业务。按订单准时交货成为我国服装厂商一个必备要素。如果交货不及时或者在无货可供的情况下答应交货等现象的出\r\n现，必将会丧失客户满意度，进而造成客户流失。而建立了高效、一体化的供应链体系，就如同在企业与供应商、分销商和客户之间建立了一条畅通的高速公路一\r\n样，可以减小每一步之间的时间，将这个转接的时间压缩至接近为零。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n我国最大的物流供应链管理软件供应商博科资讯总裁沈国康指出：“一个企业要做强做大，品牌建设是非常重要的。虽然近年来我国服装产业自有品牌企业逐渐\r\n多了起来，但与西方发达国家的服装生产商还有着比较大的差距。服装企业经营其品牌，四个因素是必不可少的：价格、产品质量、营销和渠道。这四个因素中，大\r\n多数服装企业前三个都没什么问题，而最后的渠道管理则需要信息技术的支持，特别是供应链的管理。对于服装企业渠道经营方面，采购和库存控制十分重要。供应\r\n链管理可以有效的减少一方面专卖店断码缺货，而另一方面分公司和工厂的仓库又积压着如山的库存现象的出现。实践已经证明，对市场需求和供应链的有效控制可\r\n以帮助企业简化复杂程度、监控现金流、避免过度扩张及开工不足，进而得到高的资产回报率。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n不论是已经有一定信息化基础的大中型服装企业，还是信息化建设仍处于初级阶段的小型服装企业，为了应对激烈的市场竞争，它们制造成本的降低几乎走到了\r\n极限，销售额的增加也难有大的突破，对物流供应链的优化和细化成为企业的一个新出路。更重要的是，对物流供应链的优化和细化，并不仅仅是一个与效率和成本\r\n相关的话题，对那些希望加快自己的市场反应速度，更好地满足客户需求的公司来说，选择合适的供应链，就等于选择一个全新的腾飞机遇。只有借助物流供应链管\r\n理软件，把企业自身和它后端的供应商、前端的客户有机联系在一起，形成一条完整的供应链，服装企业才能冲出重围，再铸辉煌。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>','',44,'','','',4,'',0,'',0,1334674511,1349755508),
 (25,'TEENIE WEENIE 爱丽丝主题活动','<p align=\"center\">\r\n	<img alt=\"\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/04357dd3-984c-483d-9aca-6ddc68ad65df.jpg\" />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	TEENIE WEENIE品牌（以下简称TT品牌）是著名服饰集团-“衣恋时装”旗下的核心品牌。该品牌以独特的熊家族故事为背景，以可爱的熊宝宝作为主要故事人物，推出颜色亮丽、款式多样，富含时尚和浪漫气息的休闲服饰，适合追求时尚而又有气质的年轻人穿着。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	这一以小熊为标志的品牌登陆中国后，实现了中国市场上以人偶为形象代表的服装品牌的零的突破。该品牌在竞争品牌层出不穷的服装流通领域，很好地把握了休\r\n闲服饰市场的特点及发展趋势，短短八年间在全国A级百货店中开店700余家，并以此为基础，形成了一批自称为“熊迷”的忠实顾客及拥护者。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	通过将小熊兄妹的品牌故事与形象标志的活用，及与服装款式的结合，TT品牌成功地营造出一种全新的穿着体验。与此同时，该品牌通过中国官方网站的运营，\r\n搭造出顾客与品牌亲密接触的平台，并多次以熊迷俱乐部的形式组织活动，如每月选拔顾客模特进行画报拍摄，提供俱乐部会员一起海外旅行的机会,每年组织主题\r\n派对等等，使顾客与顾客之间也有了更多的联系，趣味性十足。这种为了能更快更准确地掌握顾客的需求而构成的市场营销方式，也成为市场营销中的一个特别的成\r\n功案例。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	继TT品牌在女装市场的成功推行后，自2010年起，这一经典的可爱小熊形象又逐步扩张到了童装及男装。至此，该品牌打破了传统服装品牌对受众、年龄的限制，成功提供了从儿童到大学生、上班族乃至整个家庭的服饰需求。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	爱丽丝漫游仙境 主题活动简介\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	4月14日，为了答谢广大顾客对品牌的厚爱，小熊家族在上海虹桥花园再次为大家精心准备了一场以“爱丽丝漫游仙境”为主题的派对活动。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	活动当天，将有百名VIP顾客受邀参加。品牌将以fashion show的形式进行2012SS \r\n花园系列的新品发布。同时，也专门为此次活动准备了精彩的趣味影片，让Kate带领大家一起感受如爱丽丝漫游仙境般的充满浪漫淑女风情的奇幻体验。此外，\r\n还有丰富的游戏环节供VIP顾客们轻松互动。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2012年TT GARDEN系列商品风格\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	正值春夏交集之时，2012年TEENIE WEENIE夏季商品全新上架，让我们从浪漫情怀中感受着这一季的甜美柔情。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	此次爱丽丝主题的新品紧跟当下春夏流行趋势的灵感来源，轻薄的印花连衣裙，飘逸的面料，加上点缀的蕾丝和小圆领，都渗透着60年代特有的浪漫情调。本季\r\nGARDEN系列新品以碎花、蕾丝等元素装饰，通过小圆领、荷叶边、蛋糕裙等女性化的剪裁、设计，营造出休闲、浪漫的美式田园风格，传达的是年轻女性对自\r\n己，乃至生活的热爱。 颜色上，以柔和的米色、粉色、绿色等为主，迎合春末夏初的温暖气息，面料上也专门选取真丝、雪纺等轻薄、舒适的精品， 贴合肌肤、\r\n 给穿着者带来温和、健康的享受。让我们一起来感受TEENIE WEENIE时装的神奇魅力。\r\n</p>\r\n<p>\r\n	<p align=\"center\">\r\n		<img alt=\"\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/76a50b72-5cbb-4561-aa19-4fb4bb269d44.jpg\" />\r\n	</p>\r\n	<p align=\"center\">\r\n		<img alt=\"\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/abb96bcf-3e5c-491f-a617-c841f620c06b.jpg\" />\r\n	</p>\r\n	<p align=\"center\">\r\n		<img alt=\"\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/98f8188e-ee29-41c1-b12b-bbcd50a6b2e3.jpg\" />\r\n	</p>\r\n	<p align=\"center\">\r\n		<img alt=\"\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/9cd8e046-5cc0-4109-9321-39261f6638e7.jpg\" />\r\n	</p>\r\n	<p align=\"center\">\r\n		<img alt=\"\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/3a083f22-3fd7-4b77-b245-7d41f3c8aea8.jpg\" />\r\n	</p>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>','',43,'','','',3,'',0,'',0,1334674591,1349755452),
 (26,'太和品牌女装：创造性的将职业与休闲完美统一','　　“太和” —— “太”为极致，“和”为谐调，“太和”衣寓意一种极致完美的生活方式。<br />\r\n<p align=\"center\">\r\n	<img alt=\"太和\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/jyr_th1.jpg\" />\r\n</p>\r\n“TAHAN” —— “太和”的法语发音，源自时尚之都的中国高级女装品牌，在吸引外来精华之后，以中国人自己的审美观营造着独立自信的新女性形象，五个挺拔的字母诠释着新女人的独立生活。<br />\r\n<p align=\"center\">\r\n	<img alt=\"太和\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/jyr_th2.jpg\" />\r\n</p>\r\n太和品牌成立于1989年。1998年，太和TAHAN被《工商时报》评为“中国女装第一品牌”， \r\n同时收购了《中外服饰》杂志，将其变成为《TAHAN》，以全方位的时尚生活介绍，营造属于太和的现代生活方式，在品牌文化中与消费者进行沟通，将时髦变\r\n为时尚。进入21世纪，TAHAN在浪漫风格与传统典雅中寻求结合，力图营造全新的、中国化的时尚女性形象，成为中国人自己的高级女装代言人。<br />\r\n<p align=\"center\">\r\n	<img alt=\"太和\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/jyr_th3.jpg\" />\r\n</p>\r\n<br />','',43,'','','',5,'',1,'',0,1334678067,1349755442),
 (27,'山本耀司：不想被称为时装设计师','<div style=\"text-indent:2em;\" id=\"news-text\">\r\n	<p>\r\n		不可否认的是，68岁的山本耀司是如意·2012中国服装论坛的明星嘉宾，是企业和媒体追逐的大师，有人形容他“气场强大到无以复加”。人们希望靠近他、了解他的近况，更想从他四十年的服装设计生涯中寻找到一些能够给中国服装设计师们带来启发的故事和点拨。\r\n	</p>\r\n	<p>\r\n		今年3月2日，山本耀司的2012秋冬女装展结束后，一位说着流利英语的年轻记者拿着记录本闯到化妆室找到山本耀司，采访结束后这位记者问了一句：“您今年高寿？”\r\n	</p>\r\n	<p>\r\n		68岁的山本耀司露出孩子般调皮的笑容回答说：“我到巴黎参加时装周的时候是38岁，现在已经过了30年了，你算算我有多大了呀？”\r\n	</p>\r\n	<p>\r\n		倘若从1972年建立工作室开始算起，山本耀司已经在服装设计这个行当工作了40年。为什么能这么长时间持续设计师工作呢？他也经常这样问自己。\r\n	</p>\r\n	<p>\r\n		“其实我本人是一个非常懒的人，懒极了。如果你不给一个发布日期的话，我可能一辈子都不去做这项工作。”山本耀司认为，服装设计师的工作和他极懒的性格\r\n十分吻合。因为每个服装节、服装周的日期是确定的，就像学校的作业一样，必须在规定的日期之前完成，所以他过去40年一直过着这样的日子。\r\n	</p>\r\n	<p>\r\n		<strong>“拥有太多财富对设计师而言并非好事” </strong>\r\n	</p>\r\n	<p>\r\n		“我姑且把服装设计师称作艺术家。艺术家的任务是什么？就是要对大众认为美的、好的东西提出异议。艺术家要对现实存有疑问，并在此基础上去创作自己的作\r\n品。通过叛逆来推动社会的发展，正是艺术家的宿命。”山本耀司以这样的判断划定了艺术家的职责，同时也划定了自己的职责。\r\n	</p>\r\n	<p>\r\n		山本耀司很反\r\n感自己被称作时装设计师，因为在他看来，时装就等同于普通人眼中的流行时尚，代表的正是大多数公众认为或者正在追随的美——而这种美，正是他要击得粉碎的\r\n东西：“优秀的服装设计师总是能将隐藏在流行风潮背后、尚未被他人发现的魅力元素挖掘出来，将之不断放大并且有创意地呈现出来，这无疑需要非常敏锐的观察\r\n力和十分丰富的创作经验。”\r\n	</p>\r\n	<p>\r\n		一度，山本耀司在某些需要填写职业的场合时不是写“时装设计师”而是“服装服饰设计师”，或是“公司高管”、“法人代表”来糊弄。\r\n	</p>\r\n	<p>\r\n		在山本耀司眼中，“时装”这个词特别容易让人产生误会。“大多数人都认为时尚等同于流行，在2012年夏天流行的服装款式或者某些元素就是时尚的，这纯\r\n粹是一种误解。”山本耀司说，“如果以流行与否的标尺来衡量，那么可以说我从来没有创作过哪怕一件流行的衣服。流行的‘阳关道’我从来没走过，踩在我脚下\r\n的永远都是反流行的‘独木桥’。”\r\n	</p>\r\n	<p>\r\n		山本耀司对时尚与美的理解总是那么与众不同，以至于当他在2009年因金融海啸宣布破产的时候，并没\r\n有让太多人感到惊愕。的确，与可可·香奈儿、乔治·阿玛尼这样商业成功的时尚界巨头相比，习惯于逆潮流而行的山本耀司更像是一个特立独行的艺术家，公司从\r\n来不是他工作的重心，在大多数时间里，他都是一个躲在工作室里创作的设计师，像个刚学会画画的孩子般痴迷。\r\n	</p>\r\n	<p>\r\n		“美国的一位记者曾经对我\r\n说，山本耀司你根本没有获得成功，因为你从来没发过财。我回应他说，我觉得自己很成功，因为我们判断成功的标准不一样。我通过我的服装表达了自己的创意和\r\n想法，这就足够了。”山本耀司回忆道，“如果你拥有太多的财富，就可能反而会被这些东西所掌握。这对于一个设计师而言，并不是件好事。”\r\n	</p>\r\n	<p>\r\n		在山本耀司看来，在作品中表达自己真实的想法的确要比获得金钱重要得多，因此他设计的作品都是自己情感的延伸。“如果一个设计师为了市场而妥协，那么他\r\n就会逐渐习惯于此，最后变成一个服装生产机器链中的一环——固定而毫无创造力的一环，这样的人只能被称作裁缝而不是设计师。”山本耀司说。\r\n	</p>\r\n	<p>\r\n		<strong>“我常常被女性的背影所感动” </strong>\r\n	</p>\r\n	<p>\r\n		一个将服装设计作为表达思想的工具的设计师，注定不会甘于平凡。出身于单亲家庭的山本耀司由母亲抚养长大，作为一个贫苦裁缝的儿子，他从小就领略了服装基础制造行业的艰辛和无趣。\r\n	</p>\r\n	<p>\r\n		“那时东京的裁缝地位低下，必须走家串户才能做到生意，而且只能走小门。而在服装的裁剪上，更是完全没有自己的主张，只能小心翼翼地照着西方流行的式样为雇主效力。”山本耀司回忆道。\r\n	</p>\r\n	<p>\r\n		浸淫在如此环境中的山本耀司，非但没有把服装看成是一门毫无出路的行当，反而萌生了像绘画一样有创造性地设计服装的念头。1968年，从东京文化服装学院时装设计专业毕业的山本耀司前往时尚之都法国巴黎留学，并于1970年回到了日本。\r\n	</p>\r\n	<p>\r\n		两年的留学时光，让山本耀司汲取了足够的养分，更让他树立了足够的信心。1972年，山本耀司建立了自己的工作室，并很快就成为日本时装设计界的先锋派\r\n人物之一。1981年，山本耀司与日本另一位时装设计师川久保铃在巴黎举行了一次震惊世界的时装展示会，他们以一系列黑色、奔放、宽松的服装，引发了西方\r\n国家对于传统美、优雅和性别的争论。那时的山本耀司，将浮世绘、歌舞伎与禅文化融入到设计作品当中，向西方人尽情展示着日本的哲学与美学。不过，西方认为\r\n他带来了最经典的日式传统服装，日本却认为他太过前卫叛逆。\r\n	</p>\r\n	<p>\r\n		其实这种前卫与叛逆的基础正在于山本耀司对日本传统文化的精通。与很多东方\r\n设计师习惯于通过西方式的设计创作来博得来自巴黎和米兰的掌声不同，山本耀司的美学基础是纯粹东方式的。西方的着装观念一般是以紧身的衣裙来体现女性优美\r\n的曲线，但山本耀司却将和服作为创作基础，他的设计作品大多以黑色为主调，借以披挂、悬垂、包缠等手段形成一种非固定、不对称结构的着装概念。他还善于从\r\n传统日本服饰中吸取灵感，通过色彩与质材的丰富组合来传达时尚理念。\r\n	</p>\r\n	<p>\r\n		除了浓郁的日本民族风情，山本耀司设计的女装作品还有另一个特色，那就是能为你留下一个“美丽的背影”。\r\n	</p>\r\n	<p>\r\n		“我从小就是在母亲的呵护下长大的，这种强烈的关爱让我在感激之余，也产生了一种心理上的扭曲——对于内心深处的女性形象，我是爱与恨并存的，这种感情\r\n非常复杂。”山本耀司说，“比如说，当一位女性从正面向我走来时，我常常不敢正视，但当她转身离去的时候，我却非常想让她留下来。”正是因为常常被女性的\r\n背影所感动，山本耀司在设计女装的时会非常重视它的背面。\r\n	</p>\r\n	<p>\r\n		<strong>“成功的设计师要善于耐心等待” </strong>\r\n	</p>\r\n	<p>\r\n		整整40年的服装设计生涯，让山本耀司从当年的时装界新星变成了如今功成名就的大师，2011年，他获得了由法国文化部颁发的法国艺术文化最高勋章——\r\n司令勋位，让破产已两年的山本耀司到达了荣誉的巅峰。有人说服装设计师就如同明星，吃的是青春饭，变幻莫测的时装潮流会让他们如流星般转瞬即逝。这话的确\r\n适用于大多数设计师，当年日本的时装设计界三巨头中，川久保玲已将衣钵传给渡边淳弥，三宅一生也选定泷泽直己做接班人，只有山本耀司至今仍奋战在设计与经\r\n营的第一线。山本耀司与运动服饰巨头阿迪达斯合作的品牌Y-3，自2002年诞生之日起就成为时尚运动服装的指向标，就是他创造力依旧惊人的明证。\r\n	</p>\r\n	<p>\r\n		“观众的喝采和掌声是我创作力量的源泉。”山本耀司说，“如果我给大家放一段时装展的视频，那么你能感受到的氛围绝对不及现场的十分之一。在时装展现\r\n场，设计师、模特和观众之间会形成一种非常棒的互动与沟通，这让我感到无比兴奋，也是我在40年后的今天仍在不断创作的原因。”\r\n	</p>\r\n	<p>\r\n		而让山\r\n本耀司执著于服装设计领域40年的另一个重要原因，竟然是他一直在等待某种“偶然之力”的降临。“在设计的过程中，你有时会产生一些非常天才、超出自己想\r\n象的创意，其实这些创意并不是你自己的，而是上帝给予的，它会让你在一瞬间异常地感动。”山本耀司说，“偶然之力是需要等待的，一名成功的设计师一定要善\r\n于耐心地等待——等待天才灵光的突然降临。”\r\n	</p>\r\n	<p>\r\n		在2009年遭遇破产时，山本耀司曾道出一段令人难忘的声明：“某种程度上，我就跟《皇帝的新衣》里那个裸体的皇帝一样。但为了让日本时尚文化不输给世界，持续现在的工作是我的宿命。我将继续为服装设计事业鞠躬尽瘁。”\r\n	</p>\r\n	<p>\r\n		的确，公司的破产让作为商人的山本耀司暂时倒下了，但这根本不重要，因为他从没有把自己当成过商人。值得我们庆幸的是，作为艺术家的山本耀司依旧坚硬地活着，年近七旬的他，至今仍在为寻找创意、灵感以及美之本质而不停地思索着。\r\n	</p>\r\n	<p>\r\n		<strong>对话山本耀司 </strong>\r\n	</p>\r\n	<p>\r\n		Q：在你最开始的时候国际媒体会把您的设计定义为日本风格，或者是日本设计师，但是慢慢的大家都会把你定义成国际大师，现在中国的许多设计师也面临同样的遭遇，这个过程是怎么转化的？\r\n	</p>\r\n	<p>\r\n		A：日本的年轻人现在实际上还是面临同样的问题，首先日本的百货店，他们不会把日本的设计师的作品进行销售，这些精品店，他不会去采购日本设计师的作\r\n品，他是通过委托设计的方式，来采购其他的一些商品。如果百货店不买你的，精品店不买你的，那年轻的设计人到哪儿去做生意呢？他们就必须要组成一个组合，\r\n比如说8个人、10个人，到巴黎、到米兰，把自己的作品集中起来去进行参展，并且获得订单。但是现在欧洲呢？因为欧元贬值，所以他们现在买不起了，问题是\r\n现在的全球范围之内进行服装的批发销售，它的结构出现了问题，并不是说你拿到订单把货发出去就完了，把货上架之后，能够把货卖出去，并且把费用回收回来，\r\n年轻的设计师很难做到这点。比如说很多是通过使用证来交易的，从这个意义上日本的年轻设计师，比如说30多岁，他们其实很有能力的，但是他们没有工作，每\r\n年他们的销售额只有1亿日元左右，发展一段时间之后就不行了，如果没有人给予资助，就不能够获得成功。现在年轻的设计师如果在巴黎举行时装展的话，一定是\r\n有大的赞助商的，现在整个的时装系统出现了问题，我想中国的年轻时装设计师也遇到了同样的困境。\r\n	</p>\r\n	<p>\r\n		Q：设计师是很矛盾的，他希望自己的设计有叛逆的方面，也希望能有自己的想法，能去表达一些不太一样的想法。那么，企业管理层该怎样去平衡设计师，使得设计师一方面有激情，同时也能让消费者产生共鸣？\r\n	</p>\r\n	<p>\r\n		A：我今天用汉字写了“不可价值”这几个字。简单说是什么呢？一般人把它认为是附加价值，加上这些价值以后是附加价值，但是我觉得价值已经成为一个不可能的时代，所以写了不可价值这四个字。之所以这么说，因为现在已经进入品牌的时代，品牌的能力已经有些夸张。\r\n	</p>\r\n	<p>\r\n		美国耐克和与我合作的阿迪达斯，这两家企业竞争什么东西？比如说某次比赛上，一个选手是跑200米的，一个选手是跑100米的，耐克和阿迪就商量，我们\r\n干脆推出一个150米的比赛吧。这就是说全球的世界锦标赛里，品牌会创造出新的体育竞赛的项目。最终获得胜利的是100米的选手在150米短跑当中获胜\r\n了，也就是说这个品牌不光是创造文化，而且创造出了体育项目。\r\n	</p>\r\n	<p>\r\n		作为一个企业的企业家，对设计师他们想要表达的东西，是如何让它变成一种\r\n畅销的商品，如何让它能够成为时尚，这需要有非常高明、非常巧妙的广告宣传。实际上现在广告在全球范围之内是泛滥的，我们可以在互联网上搜一下，有无数的\r\n广告，随便翻看一个网页都是广告，现在广告充斥着整个世界。在这种情况下，你要真正的提出自己的价值，说这是有意思的、新的，能够让年轻人理解的，我觉得\r\n可能这种口口相传的口碑更为重要，大家都知道口碑吧，口碑包括像互联网，还有博客、微博，通过这种方式来使口碑得以宣传。我觉得通过这种做法，企业建立口\r\n碑是十分重要的。\r\n	</p>\r\n	<p>\r\n		Q：当今的中国很多新人坚持着梦想，在努力前进，但前进的路上已经有很多精英人士占据了大半江山，他们应该怎么去坚持梦想和面对现实，怎么选择？\r\n	</p>\r\n	<p>\r\n		A：这个问题太难了。现在已经有一些强有力的势力，新生力量如何能够崛起？用一句简单的话来说，你必须要出奇，需要有一些与现在畅销的东西不同的地方。\r\n不去模仿他，不是亦步亦趋地去追随他，而是把后面隐藏的但没有被发现的魅力找出来，并且放大呈现出来，这个可能需要有敏锐的观察力和经验。我一直认为市场\r\n营销工作比设计师的更为困难。因为他能通过自己的力量把一件没有魅力的作品、产品变得有魅力。从这个意义上说，新生力量要做那种创造性的市场营销工作，比\r\n如说这儿有一个小的缝隙，这儿有一些未被发现的细分市场，这样的情况应该是很多的。\r\n	</p>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>','',43,'','','',1,'',0,'',0,1334678121,1349755392),
 (28,'新疆纤检机构助力创建棉花名牌','<p style=\"text-indent:2em;\">\r\n	2012年度新疆专业纤维检验工作会议近日在乌鲁木齐召开。会议提出，全区各级纤检机构要紧紧围绕国家将把新疆建设成为国家级优质棉生产加工基地的发\r\n展主线，要在新疆棉花名牌创建上、纤维产业发展上挤进主战场，充当主力军，促进新疆纤维产业经济和纺织行业经济实现跨越式发展。 <br />\r\n<br />\r\n<p style=\"text-indent:2em;\">据了解，2011年，新疆各级纤检机构棉花仪器化公检近330万吨，占全国公检量的近70%,达历史最高值。同时，监督检查羊毛5357吨，检验羊毛\r\n8008吨，监督检查亚麻（原茎）4300吨。中国纤检局和新疆纤检局对全区各实验室抽验棉花公正检验数据平均相符率均在90%以上。 <br />\r\n<br />\r\n<p style=\"text-indent:2em;\">2012年，新疆纤检工作将加强棉花收购、加工、销售、仓储、流通全过程的监督检查，加大力度治理货证不同行现象，提高棉花公检证书有效性；要继续保持棉花打假高压态势，重点查处企业收购加工中存在的异性纤维、混等混级等质量问题，严厉打击掺杂使假、以次充好等质量违法行为。同时将在阿克苏建立国家棉纺\r\n织品质量监督检验中心，加快毛绒、麻类、化学纤维检测能力建设的步伐，逐步建立起覆盖全疆的纤维、纺织、服装产品为主的检测网络，最大限度地发挥纤检机构为产业服务的作用。新疆纤检将在巩固棉花质检体制改革和仪器化公证检验成果的基础上认真落实羊绒纤维公证检验计划，扩大检验数量，努力推动实施羊毛公检工\r\n作。\r\n</p>','',43,'','','',4,'',0,'',0,1334678248,1349755386),
 (29,'意大利的小作坊','<div id=\"news-text\">\r\n	<p align=\"center\">\r\n		<img src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/0c81f014-728b-46b9-bc14-56913c9c8f67.jpg\" alt=\"\" /> \r\n	</p>\r\n	<p align=\"center\">\r\n		<img src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/992af84b-bbcb-4a0f-a841-3161abfce936.jpg\" alt=\"\" /> \r\n	</p>\r\n	<p align=\"center\">\r\n		<img src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/4e5de92c-fe15-41c8-aa81-f37ceebf310f.jpg\" alt=\"\" /> \r\n	</p>\r\n	<p>\r\n		意大利是一个购物的天堂，满眼的奢侈品能让“爱购物”的人们为之疯狂。但是在奢侈品横行的意大利，有一类独特的店铺隐藏在街头巷尾。这些店铺里的衣服价\r\n格不似国际大牌般奢侈但也不平价，款式不至于走在时尚尖端，但绝对有品位、高品质。这类自主设计、手工制作的小作坊吸引了有品位、会享受的人们。\r\n	</p>\r\n	<p>\r\n		有人会觉得这类小作坊能经营下来很不可思议，特别是在众多奢侈品牌的发祥地。这就要从意大利特殊环境讲起了。意大利是一个浪漫的国度，到处散发着艺术的\r\n气息，在这种自由开放的环境下，不会出现创意匮乏，每个人都能成为设计师。意大利人也是最会享受的一个民族，他们追求的不仅仅是物质，“享受精神”已经是\r\n意大利人一种根深蒂固的生活态度，他们不屑于粗制滥造，手工制作的传统手艺被完美地承传下来。所以，意大利的独特社会文化孕育了这类小作坊，当然，除了这\r\n些客观条件，小作坊也有自己的一套经营之道，让人慕名前往，并让其在激烈竞争中的市场上占有一席之位。\r\n	</p>\r\n	<p>\r\n		这些小作坊虽然风格各异，但走进\r\n去都会有一种很“舒服”的感觉。店主的态度热情洋溢，因为每件衣服都里都蕴含了他们的思想，就像他们自己的孩子一样，所以他们会为衣服找到真正适合的主\r\n人。在为客人介绍时，会聊聊衣服背后的故事，就像老朋友聊天一样，对顾客来说，这种感觉比当一个“上帝顾客”轻松得多。\r\n	</p>\r\n	<p>\r\n		有故事的作品更能引起人的共鸣，衣服也是一样，许多衣服都是一时光鲜，一旦过季就被收进衣橱，再无用武之地。而这些手工制作的衣服，每针每线都饱含感情，每一件都是唯一的，这是流水线上做出来的衣服所不能比拟的，这股生命力会让衣服随着时间的推移越发的有韵味。\r\n	</p>\r\n	<p>\r\n		在挑选衣服时老板会主动地把衣服做各种搭配，方便顾客选择，而且并不是粗劣地比划一下，老板会把衣服套好，连领子和袖子这些细节都会仔细整理一遍，完美\r\n地呈现在顾客面前，无论尝试多少种搭配，老板都会这样做。这种在细节之处的执著，正是最令人感动的。在衣服的包装上，周到的服务也展现无遗，老板会把选购\r\n好的衣服叠好并用细软的白纸包裹起来，然后询问衣服的用途，无论是自己穿还是赠送他人，老板都会做出最合适并且精美的包装，这种细致到呵护的用心让顾客觉\r\n得自己买到的是件“珍宝”，而不是简单的衣服。\r\n	</p>\r\n	<p>\r\n		从踏入第一步到离开的最后一刻，整个购物过程都是愉悦的，每个细节的服务都深得人心，可以说这种服务让顾客切实地感受到“宾至如归”，这样的购物经历才是真正的享受。\r\n	</p>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>','',43,'','','',3,'',0,'',0,1334678343,1349755379),
 (30,'日本专家30年后重访神马帘子布','<p style=\"text-indent:2em;\">\r\n	&nbsp;\r\n</p>\r\n<div id=\"news-text\">\r\n	<p align=\"center\">\r\n		<img src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-16/4c8d5435-f1ac-4775-92f6-41ddc818003c.jpg\" alt=\"\" /> \r\n	</p>\r\n	<p>\r\n		平煤神马集团帘子布公司是改革开放初期国家确定的9个庆祝建国30周年大型建设项目之一。30多年来，从最初引进日本全套技术，到2010年设备国产化\r\n率达90%以上的万吨中低旦丝项目投产，先后进行了6期改扩建，产品在国际市场占有率达到25%。今年4月11日，30年前指导建设帘子布项目的近30名\r\n日本专家再次来到当年曾经工作、生活过的地方，看到神马帘子布公司30多年引进、消化、再创新先进技术取得的成就，感叹不已。\r\n	</p>\r\n	<p>\r\n		图为日本专家在帘子布公司生产现场参观。\r\n	</p>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>','',43,'','','',7,'',0,'',0,1334678433,1349755373),
 (31,'宁波装迈向“时装时代”','<span style=\"font-family:KaiTi_GB2312;\">一个月内举行新款服装秀20多场</span>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/167c0ad2-c5ea-4e81-bc21-66b6bc6932b1.jpg\" />\r\n</p>\r\n<p>\r\n	这几天，宁波帅帅虎儿童用品有限公司举行了一次儿童服装订货会，并举行了最新款秋冬季儿童时尚服装的走秀活动，吸引了各路经销商的浓厚兴趣。\r\n</p>\r\n<p>\r\n	不仅是童装、新款的男装、女装，甚至看上去一成不变的西服生产企业都开始采用时尚走秀的方式来为自己的品牌造势。从3月中旬以来，宁波服装企业已举行了20多场新款服装发布会。\r\n</p>\r\n<p>\r\n	“这说明宁波服装企业正走在转型升级的道路上，开始由传统时代走向时装时代，这将推动城市走向时尚化，宁波有望成为国内时尚发布城市之一。”宁波市服装协会副会长兼秘书长张晓峰如此判断。\r\n</p>\r\n<p>\r\n	<strong>西服大佬也玩起“快时尚”</strong>\r\n</p>\r\n<p>\r\n	在人们的传统印象中，宁波服装是由几乎一成不变的男装唱主角，时尚新潮的休闲装、时装等则是凤毛麟角。但如今时代巨变，宁波装正越来越时尚。西服大佬也玩起了“快时尚”。\r\n</p>\r\n<p>\r\n	3月份，罗蒙集团举行“2012秋冬款MASTER服饰流行趋势发布会”，以“雕刻时光”为主题，罗蒙演绎出了其全新的品牌形象。在场的所有人都发现，\r\n以传统西服起家的罗蒙，融合了时装的设计风格，把丝绒面料和蓝色、酒红色等新元素引入西服之中，让西服显得风格多变而时尚。罗蒙集团执行总经理杜友昌表\r\n示，西服也有“快时尚”，不能一成不变，罗蒙集团将深挖红帮裁缝的传统技艺并进行不断创新，在东西方文化的交融中大胆创新，让西服更加适合时尚个性化的需\r\n求。\r\n</p>\r\n<p>\r\n	与罗蒙相似，杉杉、雅戈尔也走上了时装之路。在刚刚结束的北京中国国际服装服饰博览会上，杉杉、雅戈尔这两家宁波服装业的巨头同时\r\n亮相，并同时以“多品牌”为展示要素，展示两家企业在推动宁波装时尚化方面所作出的努力。杉杉将其展馆命名为“Inn.Fashion”，含义是“时尚驿\r\n站”，展出了smalto、乐卡克、RENOMA等来自法国、意大利等国的国际品牌以及杉杉自己的原创品牌。在展示手法上，杉杉以“融合多元文化，纷享全\r\n球时尚”为主题，通过别出心裁地搭建的生动的城市街景，静中有动，把观众带到了全球各大时尚之都如法国巴黎、意大利米兰……带领观众跨越多重时空，体验到\r\n流行的最前线。\r\n</p>\r\n<p>\r\n	除了这些传统的宁波装巨头大玩“快时尚”之外，瞄准年轻人势力的品牌太平鸟、GXG、唐狮、steve &amp; vivian等品牌也在最近举行新款时装走秀活动，发布最新款的秋冬新款服装。\r\n</p>\r\n<p>\r\n	“最近这一个月来，我们这里几乎每天都收到服装企业举行新款服装发布会的邀请或者信息，像太平鸟旗下的四个品牌，都搞了好几次时尚发布活动了，这比往年\r\n一年走秀活动总量还要多。”据宁波服装协会外联部部长仇琦超粗略统计，最近一个月宁波服装企业至少举行了20场新款服装秀。不过，令市民遗憾的是，这些美\r\n丽的活动基本上都是在大酒店中举行的，并未向普通市民开放。\r\n</p>\r\n<p>\r\n	<strong> 宁波装走向“时装时代”</strong>\r\n</p>\r\n<p>\r\n	如此众多的新款服装发布活动集中地举行，印证着宁波服装业正走在与以往不同的发展之路上。宁波服装协会副会长兼秘书长张晓峰认为，宁波服装业如今正迈向时装时代，这是符合服装产业发展方向的。\r\n</p>\r\n<p>\r\n	据业内人士分析，自改革开放以来，宁波装的发展大致经历了三个阶段，上个世纪70年代末是宁波装发展初期，伴随着改革开放政策的实施，宁波逐步兴起了一\r\n批服装企业，并陆续在鄞县与奉化之间形成一个L型的服装产业聚集区，这一时期的宁波服装产业基本处于自发阶段，以西服、衬衫、西裤等传统服装为主；第二个\r\n发展阶段以“杉杉提出打造服装品牌”为标志，宁波服装产业发展进入品牌阶段，这个阶段的品牌以工厂品牌为主，或者叫工业品牌，涌现了杉杉、雅戈尔、罗蒙、\r\n培罗成、太平鸟、洛兹等一大批品牌，这个阶段配合宁波服装节的滚动循环，使“宁波装”进入了快速发展期，并与外贸对接，出口业务快速发展。但这个阶段的宁\r\n波装基本上是以承接订单为主，缺乏自主设计，自主品牌的发展也以工厂品牌形象为主；当前，宁波装的发展已经进入“时装时代”，这是第三阶段。\r\n</p>\r\n<p>\r\n	“时装需要自我设计，需要款式发布、需要加盟店和经销商，需要完善的产品线和不断变化的款式，需要跟上全球的潮流。对于宁波传统服装的运作模式来说，这\r\n是一种颠覆式的运营方式，它注重的是服装品牌的运营，而不是服装的制作技艺。”张晓峰表示，“这也是符合产业发展方向的，符合转型升级的需要的。”\r\n</p>\r\n<p>\r\n	现在宁波服装企业中，男装、女装、童装企业都走上了“时装之路”，并走向品牌化经营，太平鸟、GXG已经成功走上了这条发展道路，而无论是雅戈尔的品牌策略，还是杉杉的“多品牌、国际化”战略，或者是罗蒙的“西服也有快时尚”口号，都显示出宁波装正走向“时装时代”。\r\n</p>\r\n<p>\r\n	<strong>推动宁波成为国内时尚发布之城</strong>\r\n</p>\r\n<p>\r\n	一大批服装企业不约而同地召开新款服饰发布会，但宁波并没有因此而显得新潮而浪漫。宁波还远远不是时尚之城，或是时尚发布之城。这一令人感到无法理解的话题也困扰着宁波的时尚服装产业。\r\n</p>\r\n<p>\r\n	对此，杉杉集团副总裁李启明认为，一个城市要成为时尚发布之城，首先要有相当数量的有影响力的品牌，可以吸引周边乃至全国、全球关注的目光，这个城市的\r\n服装品牌发布的新款时装能够吸引其他地区的同行、采购商、经销商前来观看、品鉴并认同这种款式能够成为未来潮流。在此基础上，时尚发布之城还应有一批有影\r\n响力的设计师、有权威的高校、有成熟发达的时尚制造产业。\r\n</p>\r\n<p>\r\n	结合这些条件对比分析，宁波服装协会秘书长张晓峰认为，从目前国内的几个服装\r\n主产地城市来看，广东深圳、福建晋江、浙江的杭州、温州、宁波以及上海等都有服装企业向时装发展的态势，都有一定的时装品牌涌现，这些城市都有望成为国内\r\n的时尚发布之城。宁波现在有GXG、太平鸟、唐狮及F4、steve &amp; \r\nvivian、杉杉旗下有smalto、S2等都市时尚品牌、雅戈尔旗下有GY，尤其是GXG、太平鸟目前在全国各大商场的销量占据了前5名，发展势头非\r\n常不错。应该说，宁波也有希望成为时尚发布之城，不过这还有赖于新品牌的涌现，以及时装运营团队的持续努力。\r\n</p>\r\n<p>\r\n	“要有一个品牌梯队，实现男装、女装、童装的全覆盖，不断推出新的品牌和新款的时装，造成越来越大的影响，这样才能造就时尚发布之城。”张晓峰说。\r\n</p>\r\n<p>\r\n	不过，在国际时尚之都米兰、巴黎等，露天时装秀也经常可以遇到。但在宁波街头却鲜有亮相。对此，张晓峰表示，露天搞时装秀完全是可行的，宁波服装协会已\r\n对此有所考虑。或许在不久的将来，天一广场、和义大道、老外滩、三江口以及国际会展中心等，或许将成为宁波普通市民领略时尚的好去处。这对于宁波市民来\r\n说，无疑是一次“如何让穿衣打扮更时尚”的免费学堂。\r\n</p>\r\n<p>\r\n	<strong> 时装经营人才匮乏成软肋</strong>\r\n</p>\r\n<p>\r\n	人才永远是一个行业发展的瓶颈。宁波服装业在走向时装时代中，也遭遇到了人才匮乏的困扰。\r\n</p>\r\n<p>\r\n	“我们旗下懂时尚设计、懂潮流款式、懂采购供销的人真是不多，有时候就是花高价也请不来一位时装的品牌运营经理人。”杉杉集团副总裁李启明也曾为此烦恼。而时装品牌GXG即将推出女装和童装，其经营人还是从宁波其他服装企业挖过来的。\r\n</p>\r\n<p>\r\n	“宁波精通时装品牌运营的人，加起来可能不到50个人。真正能够挑起大梁的，估计只有一桌人。这类人才的年薪在50万~100万元之间，但能胜任的人非\r\n常少。”张晓峰表示，“学校里是培养不出这种复合型人才的，企业只有在实践中注重对人才的发掘，这样才能让这种既有时尚嗅觉，又懂得整合调度的人才脱颖而\r\n出。”\r\n</p>\r\n<br />','',43,'','','',12,'',0,'',0,1334678498,1349687621),
 (32,'Oasis亮相2012秋冬上海时装周','<p align=\"center\">\r\n	<img alt=\"\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/69ace95a-1e42-4181-a7ad-39cf12ea9e17.jpg\" />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	英国著名女装品牌OASIS 2012秋冬发布会 日前在上海新天地湖隆重举行；现场嘉宾云集，共同见证了这场时尚盛宴。本季Oasis 2012秋冬璀璨，以大片印花和闪亮元素为灵感，将丰富的色彩溶入极具创意的裁剪中，使人犹如穿行梦境，享受绿枝渐成的惬意轻松。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	OASIS的鲜亮色彩拥有超高人气，令人愉悦的撞色洋溢出独特的自信魅力。浪漫的印花处处浸润着令人向往的神秘与个性，幽幽散发着静若清池、动如涟漪的非凡女人味。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	独具英伦气质的OASIS时尚是充满趣味的，饱含女人味的，绚烂多彩的，自信而散发光芒的，它将耀眼的时尚光芒撒进臃懒的冬季，开启一季流光溢彩的乐趣之旅。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	OASIS \r\n12秋冬发布会灵感源自60年代甜美复古风和70年代的感性摩登的纽约风格，同时秉承了印花和色彩两大要素，在此基础上，揉入五彩宝石点缀细节，给人以独\r\n具一格，清新、活力 \r\n的感受，激发女性对亮丽色彩和浪漫印花发自内心的渴望。单品包括夸张的大幅印花长裙，各种色彩的靓丽皮草，彩色手工编织提花毛衣，复古甜美毛呢大衣等。\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"http://img1.efu.com.cn/upfile/news/commonly/2012/2012-04-17/9801cf66-8845-4819-9f70-03c8fe361ea2.jpg\" />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	媒体Q&amp;A\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	Gilbert:\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	Q1：这次OASIS作为上海时装周首发亮相的女装品牌，您作为品牌的CEO有何感想告诉我们？\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	A1:首先，我深感荣幸。OASIS来自英国，能作为本届上海时装周的首发品牌亮相，一定程度上是说明英国时尚的形象深入人心。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	很高兴上海时装周能给我们提供这样一个优秀的平台，通过今天的走秀，能让更多的人认识和了解OASIS品牌，让更多的人关注时尚、参与时尚。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	在此，祝本届上海时装周取得圆满成功！\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	Q2：您能为我们介绍一下OASIS的品牌理念吗？\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	A2：作为英国第二大时装集团——Aurora集团旗下的一个著名的时尚品牌，OASIS有它独立的文化和个性。在20多年的发展过程中，OASIS极\r\n富创意的设计一直受到消费者的亲睐和喜爱。丰富的印花、绚丽的色彩、上乘的质量，都是OASIS品牌的灵感元素，对OASIS而言，时尚就是要让女性穿着\r\n得体、并享受我们品牌带来的乐趣，能够展示女性的自信。\r\n</p>','',39,'','','',2,'',0,'',0,1334679349,1349687609),
 (33,'沙特基础中国建设技术中心','<p style=\"text-indent:2em;\">\r\n	4月6日，沙特基础工业公司(Sabic)宣布，将投资1亿美元在上海浦东康桥工业区，建设总建筑面积达6万平方米的新技术中心，专注于研发可替代能源以及汽车、建筑及基础设施等领域的新材料。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	以市值计，Sabic为全球最大的石化产品生产商，沙特政府拥有其70%的股份。在同行业中，该公司的实力仅次于德国的巴斯夫、美国陶氏化学、荷兰利安得巴塞尔工业公司。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	按计划，除了预计于2013年完工的新技术中心，Sabic还将在浦东新区建北亚区总部大楼。据了解，新技术中心建成后，Sabic将把其在化工研发与生产方面的技术和经验带到中国。\r\n</p>','',39,'','20120419/5931c83b0b9ac01fd6ec39bb12da214b.jpg','',10,'',0,'',0,1334817467,1349687599),
 (34,'一中学禁“差生”中考 不发毕业证逼其上职中','人民网讯 一年一度的中考马上就要到来，大多数考生们都在积极的备考中。可丹凤棣花中学的几名初三学生，想回学校上课却受到了学校领导的“威胁”。近日，华商网友“胡必整”在华商论坛发帖称：“丹凤县棣花中学禁止差生中考，让他们去县城上职中，不然就不发毕业证。”<br />\r\n提高升学率 禁止“差生”中考上职中<br />\r\n“胡必整”在帖子里说道：“孩子向学校老师“自愿”报名上职中，老师威胁说是不去不发毕业证，孩子称这是老师要求写的。陕西省丹凤县棣花初级中学为了提高\r\n中考升学率，将很多成绩差的初三学生“逼”着上职中，不让其参加行将进行的中考。眼下，这些孩子在职中不习惯，想回学校上课，学校领导却告知学生，如果不\r\n去上职中，将不发初中毕业证。<br />\r\n我亲戚家就有小孩在丹凤县棣花初级中学上初三，该校整个初三年级共有4个班。因学校顾及“考生素质”，便在每个班威逼利诱成绩不好的学生去县城上职中，不让其参加6月份举行的中考。此做法是从3月份开始的。”<br />\r\n学校领导称学生是自愿上职中的<br />\r\n网友“胡必整”认为，学校的这种做法严重违反《义务教育法》和未成年人保护法，棣花中学的领导声称，学生是自愿去上职中的，他们现在不上也可以，棣花中学\r\n不发给初中毕业证。学生在初中完成自己的学业，学校就有给学生颁发初中毕业证的责任和义务，学校是没有资格剥夺学生这最基本的权利。<br />\r\n科教任务、评比是罪魁祸首<br />\r\n据了解，在一个县城每年县教育局都会对自己管辖的初中，根据往年的上榜人数规定今年的任务目标。一些学校为了完成任务、获评优秀，会利用各种方法提高学校的升学率。<br />\r\n网友“法治中国”表示：“孤陋寡闻呀!十数年前就有这事:各县教育局下达的有任务!完不成,嘿嘿...”<br />\r\n网友“哥哥你真好”说，这学校胡成哩，领导们只顾政绩，良知都泯灭了，是有任务，但不能强迫。<br />\r\n网友“我超越”认为：“当然每年县教育局会给每个学校下达任务，每个学校至少得有多少人上榜，完不成学校要受到处罚，学校就会不顾一切的提高升学率，也是造成孩子们不能参加中考的一个原因。”<br />\r\n<br />\r\n网友质疑：学校让学生去上职中藏猫腻<br />\r\n网友“孤儿怨”表示：“我想不单单是为提高升学率吧，提高升学率，学校完全可以让学生留级，第二年再考，这样升学率会更好。再说没有必要让去念职中啊，这不明摆着有猫腻吗?职中估计会给学校一个学生多少钱的“提成”吧，现在的学校真是坏良心啊!!!”<br />\r\n网友“晓月斜雨”同样称，局里给各校下的有职教招生任务，另外介绍学生上职中有好处。<br />\r\n网友“街角等流氓”调侃道：“难道职中招生国家给补贴要不谁敢冒乌纱不保的危险违反《义务教育法》呢?看来银子的诱惑是巨大的。”<br />\r\n(本文来源：人民网 )<br />','',40,'','','',12,'',0,'',0,1342710074,1349687538),
 (35,'2011年度全市党史方志工作满意单位','<img src=\"/data/attached/image/20120719/20120719231122_37710.jpg\" alt=\"\" /><br />','',39,'','/data/attached/image/20120719/20120719231122_37710.jpg','',3,'',1,'',0,1342710802,1349687522),
 (36,'php分布式缓存系统 Memcached 入门','Memcached 是一个分布式的缓存系统， 但是 Memcachd\r\n到底是什么意思，有什么作用呢？缓存一般用来保存一些经常被存取的数据和资源（例如：浏览器会将访问过的网页会话缓存起来），因为通过缓存来存取数据要比从磁盘存取同样的数据要快得多。所以&nbsp;\r\n<div id=\"sina_keyword_ad_area2\" class=\"articalContent  \">\r\n	<wbr>Memcached&nbsp;<wbr>顾名思义，意味着\r\n“内存缓存”，所有缓存的内容都在服务器的内存中。内存中的这些缓存数据可以通过 API 的方式被存取。数据是以 key/value\r\n的配对方式存在的，就像一像大的 Hash 表。\r\n	<p>\r\n		分布式是 Memcached 的主要特性，所以你可以在多台服务器上来安装 Memcached\r\n来组建一个更大的缓存服务器。这样一来，Memcached 可以帮助我们使数据库的压力降到最低， 从而我们可以构建出更快的、更具扩展性的\r\nWEB 应用。图一展示了 Memcache 如何与数据库端协同工作的情况。\r\n	</p>\r\n	<div>\r\n		<img alt=\"\" src=\"http://www.itzsk.com/kindeditor/attached/20110507/20110507223042_54303.jpg\" title=\"php分布式缓存系统&nbsp;&lt;wbr&gt;Memcached&nbsp;&lt;wbr&gt;入门\" border=\"0\" /><br />\r\n	</div>\r\n<br />\r\n	<h2>\r\n		Memcache 如何工作?\r\n	</h2>\r\n图一展示的流程，相信有开发过数据库应用的同学都不会陌生。我们来一步步的说明图中发生了什么事情：\r\n	<ol>\r\n		<li>\r\n			检查用户请求的数据是缓存中是否有存在，如果有存在的话，只需要直接把请求的数据返回，这时候跟数据库就完全扯不上关系了。\r\n		</li>\r\n		<li>\r\n			如果请求的数据在缓存中找不到，这时候再去查询数据库。返回请求数据的同时，把数据存储到缓存中一份。\r\n		</li>\r\n		<li>\r\n			保持缓存的“新鲜性”，每当数据发生变化的时候（比如，数据有被修改，或被删除的情况下），要同步的更新缓存信息，确保用户不会在缓存取到旧的数据。\r\n		</li>\r\n	</ol>\r\n	<p>\r\n		显而易见，Memcached 在高并发的数据查询和海量数据输出的情况下，可以起到很大的作用。因为访问 Memcached\r\n中的内存数据，要比数据库的磁盘数据快的多。\r\n	</p>\r\n	<h2>\r\n		如何安装 Memcache?\r\n	</h2>\r\n	<p>\r\n		如果你想在自己的服务器上尝试使用 Memcached，第一步就是要在你的服务器上安装 Memcached\r\n的相关组件。好在Memcached 在很多服务器的发行版软件上都已经被预安装了。你可以通过在 Shell\r\n下执行下面的命令，来检查你的服务器上有没有被预安装了 Memcached：\r\n	</p>\r\n	<p>\r\n		memcached&nbsp;<wbr>-h\r\n	</p>\r\n	<p>\r\n		如果 Memcached 有被安装过，上面的命令会输出已经安装的版本号信息及一些帮助信息，否则则会返回一个错误。\r\n	</p>\r\n	<p>\r\n		下面以 CentOs 发行版为例，简单介绍一下如何安装 Memcached。\r\n	</p>\r\nyum&nbsp;<wbr><strong>install</strong>&nbsp;<wbr>memcached\r\n上面的命令会在线搜索并安装最新的 Memcached 包。\r\n	<h2>\r\n		Memcache 在什么情况下被使用，什么情况下不要使用?\r\n	</h2>\r\n<br />\r\n	<p>\r\n		你在何时应该使用 Memcache，又要在何时避免使用它？现在你已经知道了，Memcahced\r\n是被设计为减轻数据库端压力的。但是你最好能制定一个良好的策略，来想办法让 Memcached\r\n来尽可能的缓存那些最影响性能的查询。你可以试着为应用中的所有查询做一些执行时间日志，可以帮助你来分析哪些内容是要重点被缓存的。\r\n	</p>\r\n	<p>\r\n		现在假设你正在运营一个电子商务网站。 你可以在 Memcached\r\n中缓存产品的简介、运送信息，或者其它一些需要复杂查询的数据，等等。当一个产品页被加载的时候，上面提到的数据将会跳过数据库查询，直接从缓存中取得。\r\n缓存可以大大的改变你的网站整体性能表现，你只需要记得在后台更新产品的时候，把这些缓存一并更新就行了。\r\n	</p>\r\n	<p>\r\n		还有一些情况下，缓存数据并不是一个好主意，比如在一个数据被频繁更新的时候，每一次数据的更新，我们都需要去同时更新缓存，缓存的命中率不高，会导致一些额外的性能牺牲。这种情况下，或许直接查数据库会更好一些。\r\n	</p>\r\n	<h2>\r\n		Memcached 的安全性\r\n	</h2>\r\n<br />\r\n	<p>\r\n		如果你了解了 Memcached 的工作流程，\r\n你可能已经注意到了，在访问缓存的过程中，没有任何权限控制的相关流程。如果你的数据不是非常重要的，你大可不必担心这方面的安全问题。如果你需要的话，以下几点可以协助你更完全的使用它:\r\n	</p>\r\n	<ol>\r\n		<li>\r\n			<strong>使用唯一的 Key：</strong>因为在 Memcached\r\n中的数据是以一个大的数组形式存在的，所以你应该使用唯一的 key。访问你的数据的唯一办法就是通过你保存数据时的\r\nkey，除此之外再没有其它可查询的办法。\r\n		</li>\r\n		<li>\r\n			<strong>保证你的 Memcached 器安全:</strong>&nbsp;<wbr>因为\r\nMemcached 本身并没有身份验证机制，所以对 Memcached\r\n的服务器查询，都应该通过防火墙进行。你可以在防火墙上设定规则，哪些服务器是允许被访问的，哪些是不允许被访问的。\r\n		</li>\r\n		<li>\r\n			<strong>加密你的数据：</strong>&nbsp;<wbr>你可以将数据和 Key\r\n通过加密的方式保存在 Memcached 中。 这需要花费一些额外的 CPU\r\n时间，但是为了你的数据安全，在情况允许的情况下，这个方法值得你去尝试。Memcached 代码实例\r\n		</li>\r\n	</ol>\r\n<br />\r\n	<h2>\r\n		Memcached 代码实例\r\n	</h2>\r\n	<p>\r\n		让我们来看一个实际的 PHP\r\n例子。下面的代码展示了如何从缓存中取得数据，如果数据不存在，则自动从数据库中查询需要的数据，并将查询到的数据保存到缓存中的过程。\r\n	</p>\r\n	<div>\r\n		<div>\r\n			<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n							<div>\r\n								1\r\n							</div>\r\n							<div>\r\n								2\r\n							</div>\r\n							<div>\r\n								3\r\n							</div>\r\n							<div>\r\n								4\r\n							</div>\r\n							<div>\r\n								5\r\n							</div>\r\n							<div>\r\n								6\r\n							</div>\r\n							<div>\r\n								7\r\n							</div>\r\n							<div>\r\n								8\r\n							</div>\r\n							<div>\r\n								9\r\n							</div>\r\n							<div>\r\n								10\r\n							</div>\r\n							<div>\r\n								11\r\n							</div>\r\n							<div>\r\n								12\r\n							</div>\r\n							<div>\r\n								13\r\n							</div>\r\n							<div>\r\n								14\r\n							</div>\r\n							<div>\r\n								15\r\n							</div>\r\n							<div>\r\n								16\r\n							</div>\r\n							<div>\r\n								17\r\n							</div>\r\n							<div>\r\n								18\r\n							</div>\r\n							<div>\r\n								19\r\n							</div>\r\n							<div>\r\n								20\r\n							</div>\r\n							<div>\r\n								21\r\n							</div>\r\n							<div>\r\n								22\r\n							</div>\r\n							<div>\r\n								23\r\n							</div>\r\n							<div>\r\n								24\r\n							</div>\r\n							<div>\r\n								25\r\n							</div>\r\n							<div>\r\n								26\r\n							</div>\r\n							<div>\r\n								27\r\n							</div>\r\n							<div>\r\n								28\r\n							</div>\r\n							<div>\r\n								29\r\n							</div>\r\n							<div>\r\n								30\r\n							</div>\r\n							<div>\r\n								31\r\n							</div>\r\n							<div>\r\n								32\r\n							</div>\r\n							<div>\r\n								33\r\n							</div>\r\n							<div>\r\n								34\r\n							</div>\r\n							<div>\r\n								35\r\n							</div>\r\n							<div>\r\n								36\r\n							</div>\r\n						</td>\r\n						<td>\r\n							<div>\r\n								<div>\r\n									&lt;?php\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>\r\n								</div>\r\n								<div>\r\n									class MyCache\r\n								</div>\r\n								<div>\r\n									{\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>private $cache;\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>function&nbsp;<wbr>\r\n__construct()\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>{\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>$this-&gt;cache\r\n= new Memcache();\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>//\r\nyou can replace localhost by Memcached server IP addr and port\r\nno.\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>$this-&gt;cache-&gt;connect(\'localhost\',\r\n10987);\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>}\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>function\r\nget_data($key)\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>{\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>$data\r\n= $this-&gt;cache-&gt;get($key);\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>if($data\r\n!= null)\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>return\r\n$data;\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>else\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>{\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>if($this-&gt;cache-&gt;getResultCode()\r\n== Memcached::RES_NOTFOUND)\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>{\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>//do\r\nthe databse query here and fetch data\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>$this-&gt;cache-&gt;set($key,$data_returned_from_database);\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>}\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>else\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>{\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>error_log(\'No\r\ndata for key \'.$key);\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>}\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>}\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>}\r\n								</div>\r\n								<div>\r\n									}\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>\r\n								</div>\r\n								<div>\r\n									$cache = MyCache();\r\n								</div>\r\n								<div>\r\n									$cache-&gt;get_data(\'foo\');\r\n								</div>\r\n								<div>\r\n									&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>\r\n								</div>\r\n								<div>\r\n									?&gt;\r\n								</div>\r\n							</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<p>\r\n		要在你的网站使用上面的代码，请先确认你有安装 Memcached 的 PHP 扩展。你可以通过 PECL\r\n来安装对应的开发包。\r\n	</p>\r\n	<h2>\r\n		总结\r\n	</h2>\r\n	<p>\r\n		Memcached 是一个强大的工具，帮忙你建立像 Wikipedia、Flickr、Digg 这样的大型 WEB\r\n应用。只要通过 Memcached 就可以轻松提高你的站点性能，你还等什么？\r\n	</p>\r\n</div>\r\n<br />','',44,'','','',2,'',0,'',0,1342710921,1349687513),
 (38,'俄媒称巴基斯坦使用中国歼-7做核武器载机','<p style=\"text-align:center;\">\r\n	<img src=\"/data/attached/image/20120720/20120720000758_60627.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	　　资料图：巴基斯坦购自中国的F-7战机（即歼-7出口型）\r\n</p>\r\n<p>\r\n	<br />\r\n　　【环球网综合报道】据俄罗斯《军工信使》周刊7月18日报道，在印度持续增加核潜力的同时，巴基斯坦也在全力追赶，确保不落后于对手，甚至还希望能在中国和朝鲜的帮助下赶超印度。\r\n</p>\r\n<p>\r\n	<br />\r\n　　俄军事科学院教授、退役上将叶辛撰文指出，巴基斯坦军事核项目是在1972年1月启动的，促使巴方做出研制原子弹政治决策的因素主要有两个：一是\r\n1971年巴基斯坦在对印度的战争中败北，丧失大片领土，从而意识到仅靠常规力量不足以保障国家军事安全，必须拥有核武器以遏制印方攻击；二是巴领导人确\r\n信印度已经通过了制造核武器的决策，巴方绝对不能落后于对手。不久后，印度于1974年5月首次进行核试验。巴基斯坦随即加紧核武器研制步伐，在此方面巴\r\n方先后得到了利比亚、沙特、阿联酋、法国、加拿大、中国和朝鲜的帮助，并于1987年制造出第一枚1-2万吨级铀弹样品。在印度于1998年5月11日和\r\n13日进行核试验成为核大国之后，巴方迅速在5月28日和30日进行了核试验，宣布正式拥有核武器。\r\n</p>\r\n<p>\r\n	<br />\r\n　　俄专家称，目前巴基斯坦已在旁遮普省建成3个核武研发中心，其中卡胡塔中心由铀浓缩厂、武器实验室和核弹组装生产设施组成，主要使用浓缩铀制造核弹\r\n药，每年可加工40-60千克武器级铀；内洛拉中心有秘密科研设施和实验室，主要研究武器级钚提炼和钚弹生产技术；胡沙布中心从1998年4月起主要负责\r\n研制工业重水核反应堆，每年可提炼12千克武器级。根据美国2012年4月公布的研究报告，巴基斯坦每年可提炼150千克武器级钚，目前储量已达2750\r\n千克，足以生产550核弹。但是巴方不会把所有核材料全部用于制造核弹，而且巴核武企业生产能力有限。至于武器级铀的储备可能为1200-1400千克储\r\n备，能够制造48-56枚核弹。\r\n</p>\r\n<p>\r\n	<br />\r\n　　叶辛指出，巴基斯坦和中国、印度一样对核武库数据严格保密，国外专家估测数量差别较大，但他们一致认为，近年来来巴方正在积极研发核武器，大幅增强核\r\n潜力。美国科学家协会核信息项目主任克里斯滕森认为，现在巴军已有90-110枚核弹，其数量仍在增加。俄科学院世界经济和国际关系研究所副所长丘夫林认\r\n为，巴军核弹数量已经超过250枚，不仅超过了印度和英国，而且接近了法国的水平，在此指标上已经成为世界第5核大国。实际上巴基斯坦核弹生产能力相当有\r\n限，其核弹储备总数最有可能在140至160枚之间，可能还会稍多一点。这些核弹平时与载体分开，单独存放在特别仓库内。多数是航空炸弹，主要是内向爆炸\r\n型钚弹，与铀弹更轻更小。\r\n</p>\r\n<p>\r\n	<br />\r\n　　俄专家称，巴基斯坦现代化核力量主要由空基和陆基两个部分组成，海基核力量正处于孕育阶段。空基核力量主要是3个中队共32架F-16A/B战术歼击\r\n机，巴空军从中国进口的F-7飞机，以及从法国引进的“幻影III”和“幻影V”飞机，也可用作核弹载体。上述飞机携带一枚核弹时的作战半径在750至\r\n1900公里之间。现在巴军还在研制“哈特夫-8”空基巡航导弹，射程可达350公里，能配备常规或核弹头。2007年8月首次试射，最近一次试验是在今\r\n年5月，预计在2013年服役，首先配备F-16A/B飞机。巴空军曾在90年代考虑过使用C-130运输机投掷核弹的方案。有关巴军空基核力量进一步发\r\n展的准确信息较少，前景不明。\r\n</p>\r\n<p>\r\n	<br />\r\n　　陆基核力量由多种中短程弹道导弹家族组成，全部是在中国和朝鲜大力支持下研制而成的。其中短程导弹包括“哈特夫-2”、“哈特夫-3”和“哈特夫\r\n-4”，都能同时配备常规和核弹头。“哈特夫-2”一级固体燃料导弹使用自行发射装置，于2005年服役，射程180-190公里，战斗部重\r\n450-500千克；“哈特夫-3”公路机动式一级固体燃料导弹2004年服役，射程400公里，战斗部重500千克；“哈特夫-4”公路机动或铁路式一\r\n级固体燃料导弹2003年服役，射程750公里，战斗部重500千克。中程弹道导弹包括“哈特夫-5”和“哈特夫-6”，既可配备常规装药的爆破杀伤弹或\r\n子母弹，也可携载核弹头，其中前者为公路机动式一级液体燃料导弹，2003年服役，射程1200-1300公里，战斗部重700-800千克，后者是公路\r\n机动式两级固体燃料导弹，2008年服役，射程2400-2500公里，战斗部重约1000千克。\r\n</p>\r\n<p>\r\n	<br />\r\n　　俄专家称，有关巴基斯坦舰载弹道导弹系统研制的情况较少，表明巴军在海基核力量建设和发展方面远远落后于印度。为了巩固国防实力，提高核威慑力，巴军\r\n在放弃研制“高里-II”液体燃料中程弹道导弹后，重点发展固体燃料导弹。今年4月25日首次成功试射“沙欣-1A”中程弹道导弹，射程\r\n2500-3000公里。目前巴军核武库的发展较为迅速，很快将会导致印巴核力量的平衡发生变化。尽管国际社会对此较为关注，呼吁美国和中国对巴方施加影\r\n响，但是巴方只会在主要对手印度冻结核导项目的情况下放慢脚步，而印度却在建设和发展核力量时把中国，而不是巴基斯坦当作首要目标，因此南亚地区核军备竞\r\n赛未必能迅速结束。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<br />','',39,'','/data/attached/image/20120720/20120720000758_60627.jpg','',17,'',1,'',0,1342714138,1349687505);
INSERT INTO `taycms_news` (`id`,`title`,`content`,`notice`,`classid`,`from`,`showpic`,`url`,`hits`,`keyboard`,`isgood`,`author`,`order`,`addtime`,`updatetime`) VALUES 
 (39,'关注处理器技术 苹果聘用前AMD系统架构师','<p class=\"detailPic\">\r\n	<img alt=\"\" src=\"http://y2.ifengimg.com/tech_spider/dci_2012/07/3807ffa1a4d1d17a9150383c7e0b8d37.jpg\" />\r\n</p>\r\n<p>\r\n	苹果方面或将进一步增加旗下处理器的开发生产的力度。据国外媒体SemiAccurate报道，苹果已经聘用前AMD芯片专家John Bruno作为旗下新的系统架构师。这名前AMD前员工在2011年11月份的一次“大洗牌”中被AMD炒鱿鱼了。\r\n</p>\r\n<p>\r\n	报道指出Bruno可是有一定“历史”的人物。他曾是AMD某开发小组的成员，帮助AMD将第二代APU（代号Trinity）带到市场。他设计了硬件规格，并详细规定了全球PC芯片的软件。\r\n</p>\r\n<p>\r\n	他也曾参与过ATI的Radeon和Rage显卡的开发，2006年7月AMD以54亿美元的高价收购ATI时，他也就顺理成章地成为了一名AMD员工。Bruno在他自己的LinkedIn个人资料上添加了他在苹果的职位，资料显示他从7月份起开始进入苹果工作。\r\n</p>\r\n<p class=\"detailPic\">\r\n	<img alt=\"\" src=\"http://y1.ifengimg.com/tech_spider/dci_2012/07/41816c58cba2735396ebb8a8a464f51c.jpg\" />\r\n</p>\r\n苹果的iOS设备目前还是用旗下的A系列ARM处理器，但是其Mac电脑目前仍然运行英特尔处理器。本次聘用Bruno说明他们或许考虑开发其他新的处理图形芯片。<br />','',44,'','/data/attached/image/20120720/20120720001400_49160.jpg','',9,'',1,'',0,1342714443,1349755670),
 (40,'微软Windows 8将10月26日发售 零售价70美元','<p style=\"text-align:center;\">\r\n	<img src=\"/data/attached/image/20120720/20120720001454_30385.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	凤凰科技讯 北京时间7月19日消息，据MSNBC报道，<a href=\"http://app.tech.ifeng.com/enterprise/index.php?name=%E5%BE%AE%E8%BD%AF\" target=\"_blank\">微软</a>Windows部门总裁史蒂芬•辛诺夫斯基(Steven Sinofsky)在公司年度销售会议上宣布，Windows 8操作系统将于10月26日正式发售。\r\n</p>\r\n<p>\r\n	此前曾有报道称微软将在今年10月份推出Windows 8操作系统，但之前的报道并未提及其具体上市日期。\r\n</p>\r\n<p>\r\n	微软宣布其Windows 8平台将于10月26日正式发布，或许意味着搭载Windows 8 RT系统的Surface平板将随后发布。微软在今年6月份时曾透露出上述信息，但有待于进一步证实。\r\n</p>\r\n<p>\r\n	有传闻暗示，对于当前使用Windows系统的电脑用户升级到Windows 8操作系统，仅需40美元，而购买Windows 8系统DVD版本的用户，需要花费70美元。\r\n</p>\r\nWindows 8操作系统给用户带来的最大益处是其强大的触摸界面功能，可以预见，未来使用Windows 8系统的用户，比如使用Surface平板的用户，一定会因其触摸功能而被搞得“手忙脚乱”。(编译/若水)<br />','',44,'','','',2,'',0,'',0,1342714496,1349687493),
 (41,'Win 8揭示用户界面设计新趋势：一切都是触控','北京时间7月17日消息，微软将\r\n于今年10月发布最新的用户界面。开始菜单、桌面图标去除了，取而代之的是以马赛克图标形式显示的应用程序、小工具和社交网络更新。所有的触摸屏，轻轻滑\r\n过屏幕就能点击图标。这个最新的用户界面设计是为了配合10月发布的Windows8操作系统。Windows用户可能为这些改变感到遗憾，但微软认为这\r\n正是未来的发展趋势，一切都是触控。\r\n<p class=\"detailPic\">\r\n	<img alt=\"\" src=\"http://y1.ifengimg.com/09797f35d68425f8/2012/0717/rdn_5004be2fe0591.jpg\" height=\"281\" width=\"500\" />\r\n</p>\r\n<p class=\"picIntro\">\r\n	<span>桌面菜单消失了。最新的Windows界面将会与以前的版本有所不同</span>\r\n</p>\r\n<p class=\"detailPic\">\r\n	<img alt=\"\" src=\"http://y1.ifengimg.com/09797f35d68425f8/2012/0717/rdn_5004be4808fb7.jpg\" height=\"261\" width=\"500\" />\r\n</p>\r\n<p class=\"picIntro\">\r\n	<span>最新的Windows网络商店从安卓和苹果的手机app store获得灵感，用户可以通过从右至左的滑过屏幕实现更多操作。</span>\r\n</p>\r\n<p>\r\n	7月9日在加拿大多伦多召开的公司会议上，微软正式宣布Windows8市场发布的时间。基本每3年微软要发布新版本的Windows，但是这次更新是最大的一次改革，对自1995年起使用的某些软件进行了大革新。\r\n</p>\r\n<p>\r\n	位于华盛顿雷蒙德的微软已经设计好了能够在个人电脑和基于触摸屏的平板电脑使用的操作系统。桌面爱好者对这次基于触摸的革新可能要失望了，新的界面将如何在旧的、非触摸屏电脑上如何运行？批评家也对触摸屏是否是键盘和鼠标何时的取代物而持怀疑态度。\r\n</p>\r\n<p>\r\n	幸运的是，喜欢旧界面的用户还能找到以前的桌面，但是后者将更类似于一个程序，例如Office或者Photoshop这样的程序。\r\n</p>\r\n<p>\r\n	微软也对这次新版本的Windows制定特别的价格——升级到最新操作系统只需要40美元，也就是约25英镑，这个优惠将会持续到2013年1月，将适用于Windows之前所有的版本—XP,Vista和Windows7。\r\n</p>\r\n<p>\r\n	微软目前还没证实在英国具体的价格，但预计升级价格在25至40英镑之间。微软还将发布媒体中心，用户可以远距离免费浏览图片、音乐和视频文件。\r\n</p>\r\n<p class=\"detailPic\">\r\n	<img alt=\"\" src=\"http://y1.ifengimg.com/09797f35d68425f8/2012/0717/rdn_5004be7741905.jpg\" height=\"281\" width=\"500\" />\r\n</p>\r\n<p class=\"picIntro\">\r\n	<span>最新的用户界面增添了某些新图标，例如天气小图标和社交网络更新.</span>\r\n</p>\r\n<p>\r\n	面对日益流行的安卓和苹果平板电脑, 微软迫不及待想发布最新的Windows新操作系统,谷歌和苹果以及其他公司也在逐渐瓜分以微软为主的PC市场.\r\n</p>\r\n<p>\r\n	Windows8将会是个革新,核心的Windows概念自20年前起并没有太大的变化,只是首次微软颠覆性的彻底更改用户界面,使得更适合触摸技术.\r\n</p>\r\n<p>\r\n	开始菜单和桌面已经消失,取而代之的是Metro界面,后者使用”Live Tiles”进行程序更新,类似于Windows Phone7,以及即将到来的微软Surface平板.\r\n</p>\r\n<p>\r\n	基于Windows7的升级将会保持原来的设置、程序和文件,而旧的操作系统将会出现一些警告,诸如无法运行Vista操作系统中某些程序,或者基于XP的某些设置.\r\n</p>\r\n发言人称:”我们相信你的Windows8升级体验将会通过一个更快更简单的渠道,升级后也将与之前的Windows版本相兼容.我们已经积极听取\r\n用户的意见,将程序下载扩展到100多个国家,37种语言.我们利用了Windows8升级助手简化了Windows升级体验,前者将为你在升级过程中提\r\n供一切支持,从选择语言到暂停下载,到内置兼容性检查等.即使你是个爱好者,也能够自由下载灵活控制升级.如果你选在在当地商店购买,包装好的DVD版本\r\n的Windows8升级包在促销期间只需要69.99美元.这次Windows8升级促销在线和实体店同时进行,将于2013年1月31日结束.有关通用\r\n的可适用性细节将随后发布.”<br />','',44,'','','',3,'',0,'',0,1342714635,1349687489),
 (42,'微信成抢劫、强奸工具 律师：腾讯要承担部分责任','微信作为具有发送语音短信、视频、图片和文字的新型手机聊天软件，由腾讯公司在2011年年初推出后，短短一年多便拥有了超一亿的注册用户。由于微信有“摇一摇”“查看附近的人”等功能，可以迅速认识周围的陌生人，被很多年轻人视为“交友利器”。\r\n<p>\r\n	然而，这个“交友利器”却频频被不法分子利用，成为诈骗、盗窃和强奸等案件的工具。多地警方发出预警，提醒微信用户，尤其是年轻女性，提高警惕，切勿轻信陌生“微友”，以免造成不必要的伤害。\r\n</p>\r\n<p>\r\n	<strong>微信搭讪变身劫色工具</strong>\r\n</p>\r\n<p>\r\n	拥有大学文凭的曹某，今年32岁，是宁波某汽配公司的部门经理。从去年11月起他通过微信搭讪女性，先后强奸了7人。曹某近日以强奸罪被判处有期徒刑8年6个月。\r\n</p>\r\n<p>\r\n	据法院查明，曹某常常用手机微信“查找附近的人”功能，寻找并搭讪当地高教园区附近的女性。取得对方信任后，他以看电影、聊天等名义想方设法把对方约出来，然后开车带到偏僻的公园实施强奸，同时还拍裸照威胁受害者不许报警。曹某最后一次作案后，受害女性因为在QQ空间里，发现了曹某在强奸她时拍的裸照，才选择了报警。\r\n</p>\r\n<p>\r\n	由于报警女生只知道曹某的微信号，为了抓到他，警方也用上了微信。他们注册了一个女性化的微信名，加了曹某为好友，然后约他到某大学门口见面。当曹某兴冲冲地前去赴约时，被守候的民警逮了正着。\r\n</p>\r\n<p>\r\n	曹某共交代了6起强奸案，涉及7名女性，其中多名为大学生。警方根据曹某的交代找到受害人，但只有3人愿意报案，因此曹某被认定的强奸事实只有3起。\r\n</p>\r\n<p>\r\n	<strong>微信成“危信”　公安拉响预警</strong>\r\n</p>\r\n<p>\r\n	事实上，曹某的案子只是冰山一角，近来各地频频曝出不法分子利用微信的“摇一摇”或“查看附近的人”功能寻找受害者，进行诈骗、抢劫和强奸的案件。就在几天前，山西和江西又相继曝出两起类似的强奸案，引起网民关注。\r\n</p>\r\n<p>\r\n	据杭州市公安局指挥中心介绍，去年12月以来，杭州警方共接到与“微信”有关的诈骗、盗窃案件近20起。\r\n</p>\r\n<p>\r\n	浙江省东阳市吴宁派出所副所长包志兵说，前几天又有一个妇女来报案，称刚刚通过微信认识的朋友趁她不备偷走了她的手机、电脑。包志兵介绍说，此类案\r\n件的作案人多为青壮年男性，他们先利用“微信”寻找目标，骗取信任后邀请受害人见面，伺机对受害人实施犯罪，大多为侵财类案件，有少数猥亵、强奸等违法犯\r\n罪案件。\r\n</p>\r\n<p>\r\n	“这类案件正在呈蔓延趋势，受害者多为女性。且这类案件在侦破上有一定难度，给社会管理带来挑战。”包志兵说。\r\n</p>\r\n<p>\r\n	最近，杭州、南京和\r\n北京等多地警方通过媒体和微博发出预警，告诫手机用户尤其是女性不要轻信通过微信认识的陌生人。“这一摇一晃可能会摇来诈骗、强奸等不法侵害，特别是女童\r\n鞋千万不要在微信即时接受陌生人见面邀请，给不法分子可乘之机，以免造成不必要的侵害——即被骗财又骗色。”南京一位刑警发出的这条微博被很多网民转发。\r\n</p>\r\n<p>\r\n	微信成“危信”，引起很多人的担忧。一些网友认为，微信比QQ等网络聊天工具更可怕，因为微信交友更迅速，见面也更容易，一些警惕性不高尤其是不谙世事的未成年人很容易受骗。“微信微信，只可微微一信，不可全信。”\r\n</p>\r\n<p>\r\n	<strong>案件频发　谁为“微信之痛”买单？</strong>\r\n</p>\r\n<p>\r\n	是微信之恶，还是人之恶？面对微信这两个时髦功能引起的多起犯罪案件，网民陷入激辩。部分网民认为，微信只是一种交流工具，无所谓好坏，原本无辜。“如果每个人都自尊自爱，就不会发生诈骗、强奸的悲剧，所以不能怪微信。”\r\n</p>\r\n<p>\r\n	另一部分网民则认为，微信的“摇一摇”等功能本身带有很强的诱导性，尤其容易对青少年造成不良影响，诱发社会不良交友风气，轻则会交到不好的朋友，\r\n重则被诈骗甚至侵害到生命。“这两个功能完全没有存在的必要，他们只会被不法分子利用来干坏事。”不少网民认为，腾讯应该取消微信的这些功能。\r\n</p>\r\n<p>\r\n	浙江金道律师事务所律师夏家品说，类似场景也曾出现在QQ等即时交友工具兴起的时候，网络交友不慎造成的悲剧一次次被媒体曝光，引起很多争论。“这\r\n就是科技的双刃剑性质，人类只有善用它，它才会善待人类。”夏家品说，微信作为新兴沟通工具，造成的诸多不良影响不可小觑，警方、政府管理部门和全社会都\r\n需要重视，通过宣传、预警等方式营造良好氛围。\r\n</p>\r\n同时，夏家品认为，微信软件的开发商腾讯也需要承担部分社会责任，比如至少在手机用户开启这两个功能时，发出一些提醒，告知可能存在的诈骗等风险。<br />','',44,'','','',6,'',0,'',0,1342714753,1349755721),
 (43,'不买二代小米的六大理由：硬件配置提升有限','<p>\r\n	2011年8月16日，在北京798艺术中心D·PARK会所举行的一场发布会上，小米公司创始人<a href=\"http://app.tech.ifeng.com/person/index.php?name=%E9%9B%B7%E5%86%9B\" target=\"_blank\">雷军</a>以<a href=\"http://app.tech.ifeng.com/person/index.php?name=%E4%B9%94%E5%B8%83%E6%96%AF\" target=\"_blank\">乔布斯</a>式的装扮登场，面向媒体和米粉正式发布了第一款小米手机——M1，同时1.5GHz双核处理器、1GB RAM+4GB ROM、4英寸夏普屏和1930mAh大容量电池，配合1999元的价格也赚足了性价比噱头。\r\n</p>\r\n<p align=\"center\">\r\n	<img style=\"cursor:pointer;\" alt=\"点击进入下一页\" src=\"http://y1.ifengimg.com/d66aeec403c1a687/2012/0717/ori_5004b887071d1.jpeg\" />\r\n</p>\r\n<p>\r\n	转眼将近一年过去，面对市场上层出不穷的低价新机，小米M1去年的配置在目前看来性价比已然不再。所以，小米二代机型M2的推出显得日益迫切，只是\r\n关于该机的消息很少泄漏，小米官方在面对媒体时也是竭力回避该机具体信息。目前已知的是，小米M2将于今年下半年发布，上市时间未定。\r\n</p>\r\n<p align=\"center\">\r\n	<img style=\"cursor:pointer;\" alt=\"点击进入下一页\" src=\"http://y1.ifengimg.com/d66aeec403c1a687/2012/0717/ori_5004b88730d66.jpeg\" />\r\n</p>\r\n<p class=\"pictext\" align=\"center\">\r\n	高通S4产能不足\r\n</p>\r\n<p>\r\n	小编认为，小米M2之所以难产，应该与高通最新28纳米级的骁龙S4处理器产能不足有关系。即便是HTC这样与高通有长久合作关系的客户都能难保证\r\n供货，因此不得不在国内上市的HTC \r\nOneS手机采用上一代的S3处理器。预计到年底，高通的S4处理器产能才能满足市场需求，这也与小米M2下半年发布的消息相印证。\r\n</p>\r\n<br />','',44,'','','',14,'',1,'',0,1342714786,1349755695);
/*!40000 ALTER TABLE `taycms_news` ENABLE KEYS */;


--
-- Definition of table `taycms_products`
--

DROP TABLE IF EXISTS `taycms_products`;
CREATE TABLE `taycms_products` (
  `id` int(11) NOT NULL auto_increment,
  `classid` int(11) default NULL,
  `brandid` int(11) default NULL,
  `proname` varchar(255) default NULL,
  `notice` blob,
  `showpic` varchar(255) default NULL,
  `showpic2` varchar(255) default NULL,
  `showpic3` varchar(255) default NULL,
  `pic` blob COMMENT '图集 备用',
  `content` text,
  `keyboard` varchar(255) default NULL,
  `isgood` tinyint(4) default NULL,
  `order` int(11) default '0',
  `url` varchar(255) default NULL,
  `hits` int(11) default '0',
  `addtime` int(10) default NULL,
  `updatetime` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_products`
--

/*!40000 ALTER TABLE `taycms_products` DISABLE KEYS */;
INSERT INTO `taycms_products` (`id`,`classid`,`brandid`,`proname`,`notice`,`showpic`,`showpic2`,`showpic3`,`pic`,`content`,`keyboard`,`isgood`,`order`,`url`,`hits`,`addtime`,`updatetime`) VALUES 
 (41,58,1,'EP雅宝 精品女装',0x4550E99B85E5AE9D20E7B2BEE59381E5A5B3E8A385,'20120419/8e16cd4bddc1c62cad0e58e08a21784b.jpg',NULL,NULL,NULL,'<p>\r\n	<img src=\"/data/attached/image/20120419/20120419004320_94770.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/data/attached/image/20120419/20120419004327_81391.jpg\" alt=\"\" />\r\n</p>\r\n<br />',NULL,0,0,NULL,1,1334767360,1349768321),
 (42,56,1,'EP雅宝 精品女装',0x4550E99B85E5AE9D20E7B2BEE59381E5A5B3E8A385,'20120419/7dd3c632890769b8fa1d1937bbc72f44.jpg',NULL,NULL,NULL,'<img src=\"/data/attached/image/20120419/20120419004436_68702.jpg\" alt=\"\" /><br />','',1,0,NULL,1,1342754910,1349768308),
 (43,58,1,'EP雅宝 精品女装',0x4550E99B85E5AE9D20E7B2BEE59381E5A5B3E8A385,'20120419/08e51a8a5c1e0b9b93e5356a34c516ef.jpg',NULL,NULL,NULL,'<img src=\"/data/attached/image/20120419/20120419004511_87198.jpg\" alt=\"\" /><br />',NULL,0,0,NULL,1,1334767495,1349768303),
 (44,59,1,'EP雅宝 精品女装',0x4550E99B85E5AE9D20E7B2BEE59381E5A5B3E8A385,'20120419/bab8799520f77735a09b3cc28dad1083.jpg',NULL,NULL,NULL,'<img src=\"/data/attached/image/20120419/20120419004555_29443.jpg\" alt=\"\" /><br />',NULL,0,0,NULL,1,1334767530,1349768294),
 (45,58,1,'EP雅宝 精品女装',0x4550E99B85E5AE9D20E7B2BEE59381E5A5B3E8A385,'20120419/8876bd561c5c5793944731d5af0b68c2.jpg',NULL,NULL,NULL,'<img src=\"/data/attached/image/20120419/20120419004704_93603.jpg\" alt=\"\" /><br />',NULL,0,0,NULL,3,1335430465,1349768287),
 (47,58,NULL,'测试公司产品1','','/data/attached/image/20120720/20120720041946_12114.jpg',NULL,NULL,NULL,'测试公司产品1','',1,0,NULL,4,1342757807,1349768283),
 (48,56,NULL,'测试公司产品2','','/data/attached/image/20120720/20120720042140_14438.jpg',NULL,NULL,NULL,'测试公司产品2','',1,0,NULL,2,1342758091,1349768279),
 (49,56,NULL,'测试公司产品3','','/data/attached/image/20120720/20120720042215_95113.jpg',NULL,NULL,NULL,'测试公司产品3','',1,0,NULL,8,1342758120,1349768275),
 (50,55,NULL,'测试公司产品4','','/data/attached/image/20120720/20120720042253_76398.jpg',NULL,NULL,NULL,'测试公司产品4','',1,0,NULL,8,1342758162,1349768271),
 (51,55,NULL,'测试公司产品5','','/data/attached/image/20120720/20120720042327_90538.jpg',NULL,NULL,NULL,'测试公司产品5','',1,0,NULL,11,1342758196,1349768267),
 (52,55,NULL,'测试公司产品6','','/data/attached/image/20120720/20120720042439_62075.jpg',NULL,NULL,NULL,'测试公司产品6','',1,0,NULL,8,1342758268,1349768262),
 (53,58,NULL,'轴承厂家现货供应MR63ZZ 3*6*2.5mm轴承',0xE58F8CE88194E8BDB4E689BFE698AFE99B86E7949FE4BAA7E4B88EE99480E594AEE4B880E4BD93E58C96E79A84E4BC81E4B89AE38082E69CACE585ACE58FB8E68BA5E69C89E5AE8CE695B449534F393030313A32303030E79A84E8B4A8E9878FE7AEA1E79086E4BD93E7B3BBE38082E4BAA7E59381E58E9FE69D90E69699E5928CE99BB6E983A8E4BBB6E5B7B2E9809AE8BF87E7BE8EE59BBD534753E585B3E4BA8EE6ACA7E79B9F524F4853E68C87E4BBA4E5928CE6ACA7E79B9F5245414348E6B395E8A784E79A84E6B58BE8AF95E38082,'/data/attached/image/20121013/20121013130043_14306.jpg','/data/attached/image/20121013/20121013130043_73012.jpg','/data/attached/image/20121013/20121013130043_18330.jpg',NULL,'<p>\r\n	<img src=\"/data/attached/image/20121013/20121013130043_14306.jpg\" alt=\"\" height=\"480\" width=\"640\" /><img src=\"/data/attached/image/20121013/20121013130043_18330.jpg\" alt=\"\" height=\"480\" width=\"640\" /><img src=\"/data/attached/image/20121013/20121013130043_73012.jpg\" alt=\"\" height=\"480\" width=\"640\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<span>品牌：</span> \r\n				</td>\r\n				<td>\r\n					<span>CAI</span> \r\n				</td>\r\n				<td>\r\n					<span>型号：</span> \r\n				</td>\r\n				<td>\r\n					<span>MR63ZZ</span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<span>旧型号：</span> \r\n				</td>\r\n				<td>\r\n					<span>673ZZ</span> \r\n				</td>\r\n				<td>\r\n					<span>类型：</span> \r\n				</td>\r\n				<td>\r\n					<span>深沟球轴承</span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<span>内径：</span> \r\n				</td>\r\n				<td>\r\n					<span>3（mm） </span> \r\n				</td>\r\n				<td>\r\n					<span>外径：</span> \r\n				</td>\r\n				<td>\r\n					<span>6（mm） </span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<span>厚度：</span> \r\n				</td>\r\n				<td>\r\n					<span>2（mm） </span> \r\n				</td>\r\n				<td>\r\n					<span>重量：</span> \r\n				</td>\r\n				<td>\r\n					<span>0.0002（kg） </span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<span>保持架及其材料：</span> \r\n				</td>\r\n				<td>\r\n					<span>J钢板冲压</span> \r\n				</td>\r\n				<td>\r\n					<span>使用特性：</span> \r\n				</td>\r\n				<td>\r\n					<span>高速</span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<span>用途：</span> \r\n				</td>\r\n				<td>\r\n					<span>仪器仪表</span> \r\n				</td>\r\n				<td>\r\n					<span>滚动体列数：</span> \r\n				</td>\r\n				<td>\r\n					<span>单列</span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<span>滚道类型：</span> \r\n				</td>\r\n				<td>\r\n					<span>深沟滚道</span> \r\n				</td>\r\n				<td>\r\n					<span>样品或现货：</span> \r\n				</td>\r\n				<td>\r\n					<span>现货</span> \r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<span>轴承材质：</span> \r\n				</td>\r\n				<td>\r\n					<span>高碳铬轴承钢（全淬透型)(GCr15)</span> \r\n				</td>\r\n				<td>\r\n					<span>是否提供加工定制：</span> \r\n				</td>\r\n				<td>\r\n					<span>否</span> \r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:12pt;font-family:\'宋体\';\">双联轴承是集生产与\r\n销售一体化的企业。本公司拥有完整ISO9001:2000的质量管理体系。产品原材料和零部件已通过美国SGS关于欧盟ROHS指令和欧盟REACH法\r\n规的测试。公司的诚信、实力和产品质量获得业界一致的认可。公司本着“以质量求生存，以信誉求发展”的原则和“以人为本，客户至上”的宗旨，受到广大客户\r\n的一致好评。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:12pt;font-family:\'宋体\';\">&nbsp;&nbsp;</span><span style=\"font-size:12pt;font-family:\'宋体\';\">公司主要生产销售高质量、高精度,低噪音的</span><span style=\"font-size:12pt;color:#0000FF;font-family:\'宋体\';\">微型深沟</span><span style=\"font-size:12pt;color:#0000FF;font-family:\'宋体\';\">球轴承</span><span style=\"font-size:12pt;font-family:\'宋体\';\">，产品等级分:Z2组.Z3组.Z4组,精度达到:P4级,P5级,P6级,广泛运用于电机、碎纸机、电脑风扇、点钞机、玩具，娱乐工具、电动工具、水泵、运动机械，机器设备等等。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','双联轴承,低噪音,微型,轴承',1,0,'',0,1350104629,1350104855),
 (54,58,NULL,'无边防静电地板',0xE59CB0E69DBFE4B8BAE585A8E992A2E7BB84E4BBB6EFBC8CE4B88BE69DBFE98787E794A8E6B7B1E7BAA7E68B89E4BCB8E992A2E69DBFEFBC8CE4B88AE69DBFE98787E794A8E7A1ACE8B4A8E992A2E69DBFEFBC8CE4B88AE4B88BE992A2E69DBFE586B2E58E8BE68890E59E8BEFBC8C0D0AE4B8ADE997B4E5A1ABE58585E58F91E6B3A1E6B0B4E6B3A5E38082E689BFE8BDBDE58A9BE5A4A7EFBC8CE68A97E586B2E587BBE680A7E5BCBAEFBC8CE4BA92E68DA2E680A7E883BDE5A5BDEFBC8CE993BAE8A385E69588E69E9CE7BE8EE8A782EFBC8CE998B2E6B0B4EFBC8CE998B2,'/data/attached/image/20121013/20121013130629_96220.jpg','','',NULL,'<p>\r\n	<img src=\"/data/attached/image/20121013/20121013130629_96220.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;无边防静电地板 <br />\r\n<br />\r\n规格：600x600x35<br />\r\n<br />\r\n产品特点<br />\r\n地板为全钢组件，下板采用深级拉伸钢板，上板采用硬质钢板，上下钢板冲压成型，<br />\r\n中间填充发泡水泥。承载力大，抗冲击性强，互换性能好，铺装效果美观，防水，防火，防静电。<br />\r\n<br />\r\n使用范围<br />\r\n广泛应用已各种机房，特别是多媒体教室，计算机教室等学校机房。<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 无边防静电地板由于没有边条所以对钢板的厚度要求很严格，所以无边防静电地板不仅外观漂亮而且承载能力强，贴面超耐磨，属于中高档防静电地板。<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 材料基本和全钢pvc防静电地板一样，只是属于普通全钢地板的加强型。比普通地板耐用三年左右。<br />\r\n<br />\r\n</p>','无边,防静电,地板',1,0,'',0,1350104837,1350104837),
 (55,58,NULL,'PTC-413偏光应力仪',0x20E98082E59088E4BA8EE6A380E6B58BE781AFE7AD89E69C89E5A48DE69D82E69E84E980A0E79A84E4BAA7E59381E380820D0AE6A380E6B58BE9AB98E5AF86E5BAA6E79A84E5A191E69699E4BAA7E59381EFBC8CE5A682E99A90E5BDA2E79CBCE9959CE7AD89E380820D0AE6A380E6B58BE58589E5ADA6E699B6E4BD93EFBC8CE5A682E6B09FE58C96E99299E7AD89,'/data/attached/image/20121013/20121013130939_57565.jpg','','',NULL,'<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<table style=\"border-collapse:collapse;\" align=\"center\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"110\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">型号</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"288\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'宋体\';font-size:10.5pt;\">PTC-413</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"110\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">尺寸</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"288\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">W295×D375×H460mm</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"110\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">重量</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"288\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">13.5KG</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"110\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">测样有效长度</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"288\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">W200×D200mm</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"110\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'宋体\';font-size:10.5pt;\">测定空间高度</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"288\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'宋体\';font-size:10.5pt;\">31-250mm</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"110\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">光源</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"288\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'宋体\';font-size:10.5pt;\">LED<span>灯</span></span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"110\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">电源</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"288\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">交流</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\">22</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">0V</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"110\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">附件</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n				<td style=\"border:#000000 0.5pt solid;\" valign=\"center\" width=\"288\">\r\n					<p style=\"text-align:center;\">\r\n						<span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">应力方向确认棒</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\">清洁液<span>1</span><span>瓶</span></span><span style=\"font-family:\'Times New Roman\';font-size:10.5pt;\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'宋体\';font-size:12pt;font-weight:bold;\">规格</span><span style=\"font-family:\'宋体\';font-size:12pt;font-weight:bold;\">:</span><span style=\"font-family:\'宋体\';font-size:12pt;font-weight:bold;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">1、偏光应力仪光场亮度≥120cd/m2&nbsp;&nbsp;&nbsp;（荧光灯30W）</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">2、偏光应力仪偏振元件任何一点的偏振度大于等于百分之九十九</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">3、该款应力仪偏振场200*200mm</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p style=\"text-indent:-15.75pt;margin-left:15.75pt;\">\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">4、偏光应力仪构造：检偏镜和起偏镜之间分别置入1/4波片及全波片（波长为565nm），波片的慢轴与起偏镜的偏振平面成90度</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">5、检偏镜最上面有旋转角度的测量装置（刻度值为1度，最大测量范围为180度）</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p style=\"text-indent:-18pt;margin-left:29.925pt;\">\r\n	<span style=\"font-family:\'宋体\';font-size:12pt;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'宋体\';font-size:12pt;font-weight:bold;\">检测方法</span><span style=\"font-family:\'宋体\';font-size:12pt;\">：</span><span style=\"font-family:\'宋体\';font-size:12pt;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">1.</span><span style=\"font-family:\'Times New Roman\';font-size:12pt;\">&nbsp;Sensitive-Color</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\">感光色方法检测</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">&nbsp;&nbsp;感光色方法测量，整个视野呈微红<span>-</span><span>紫色，这种彩色分为被成为感光色。</span></span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p style=\"text-align:left;text-indent:10.5pt;\">\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">放进样品，存在应力的部位呈绿<span>-</span><span>蓝色或橙黄</span><span>-</span><span>黄色。并确定应力性质是压力或张力。</span></span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p style=\"text-indent:10.5pt;\">\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">不存在应力的样品部位则呈微红<span>-</span><span>紫色。</span></span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">2.</span><span style=\"font-family:\'Times New Roman\';font-size:12pt;\">&nbsp;</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\">SenarmonMethod</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\">&nbsp;补偿法</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<p style=\"text-indent:-10.5pt;margin-left:10.5pt;\">\r\n	<span style=\"font-family:\'宋体\';font-size:10.5pt;\">&nbsp;&nbsp;</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\">&nbsp;</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\">Senarmont</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\">补偿法可以进行应力定量分析检测。打开电源，未放样品整个视野范围是黑褐色的，放入样品，不旋转检偏镜，观测出最亮点即为应力最大点。旋转检偏镜上的刻度盘，直至最亮点变成黑褐色，记录此时刻度盘旋转的角度及该点的厚度，即可用公式换算出应力值。</span><span style=\"font-family:\'宋体\';font-size:10.5pt;\"></span> \r\n</p>\r\n<span style=\"font-family:\'宋体\';font-size:10.5pt;\">计算公式：应力nm/mm＝（3.14nm*检偏镜旋转角度）/被测点的光路长mm</span> \r\n<p>\r\n	<br />\r\n</p>','偏光,应力仪',1,0,'',0,1350105033,1350115775),
 (56,58,NULL,'供应低频电磁辐射检测仪1HZ-30MHZ',0x41474E462D35303335E9AB98E7B2BEE5BAA6E695B0E5AD97E5BC8FE4BD8EE9A291E794B5E7A381E59CBAE5BCBAE5BAA6E58886E69E90E4BBAAE698AFE4B880E6ACBEE794A8E4BA8EE6A380E6B58BE38081E58886E69E90E4BD8EE9A2916D61676E657469632FE7A381E59CBA2028482920E5928C20656C656374726963202FE794B5E59CBA284529E79A84E9AB98E7B2BEE5BAA6E4BBAAE599A8EFBC8CE98787E794A8E5889BE696B0E4B893E588A9E68A80E69CAFEFBC8CE58685E7BDAEE8B685E9AB98E781B5E6958FE5BAA633E8BDB4E794B52FE7A381E59CBAE5A48DE59088E4BCA0E6849FE599A8EFBC8CE585B7E69C89E69BB4E9AB98E79A84E7B2BEE5BAA6E5928CE794B5E59CBAE781B5E6958FE5BAA6EFBC8C,'/data/attached/image/20121013/20121013131130_81375.jpg','/data/attached/image/20121013/20121013131146_68359.jpg','/data/attached/image/20121013/20121013131157_15078.jpg',NULL,'<p>\r\n	<span style=\"font-size:14pt;\">AGNF-5035高精度数字\r\n式低频电磁场强度分析仪是一款用于检测、分析低频magnetic/磁场 (H) 和 electric \r\n/电场(E)的高精度仪器，采用创新专利技术，内置超高灵敏度3轴电/磁场复合传感器，具有更高的精度和电场灵敏度，可对各种低频环境中存在电、磁场辐射\r\n进行全方向高精度检测，内置高性能DSP（数字信号处理器）芯片不仅能精确显示电场强度、磁场强度、功率密度、电压；同时还可显示所测到的电磁辐射绝对值\r\n与国际标准限值相比较的百分比，测量结果清晰、直观。可用于测量电器、工业设备、感应炉、变压器、电力系统设备等低频领域电磁辐射。 </span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14pt;\">&nbsp;<img alt=\"\" src=\"http://www.extreme-china.com/uploadfile/201111/20111115023930899.jpg\" border=\"0\" /><br />\r\n<strong><span>特点：</span></strong> <br />\r\n1. 便携式设计，重量轻，可轻松单手操作，便于移动或现场测量 <br />\r\n2. 快速FFT/DFT频谱分析功能 <br />\r\n3. 高精度单轴电场探测器及3D各向同性电磁场探测器，灵敏度高，响应快速，可实现全方向精确检测 <br />\r\n4. 高精度、大尺寸液晶显示屏，清晰、直观的显示多种检测结果 <br />\r\n5. 多种显示模式：实时、最大值保持、暴露极限计算和显示（DIN/VDE 0848）等，可同时显示频率和信号强度。 <br />\r\n6. 内置USB数据通讯端口，配合专用数据分析软件可与电脑联接甚至组建电磁辐射实时监测系统，实现电磁辐射的连续多点监测</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14pt;\">&nbsp;<img alt=\"\" src=\"http://www.extreme-china.com/uploadfile/201111/20111115023944959.jpg\" border=\"0\" /></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span>内置高精度3D传感器</span></strong>&nbsp;</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14pt;\">&nbsp;<img alt=\"\" src=\"http://www.extreme-china.com/uploadfile/201111/20111115024009897.jpg\" border=\"0\" /></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:14pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span>顶部扩展升级接口</span></strong></span></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:12px;\"><strong><span style=\"font-size:14pt;\">&nbsp;<img alt=\"\" src=\"http://www.extreme-china.com/uploadfile/201111/20111115024047507.jpg\" border=\"0\" /></span></strong></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:14pt;\"><strong><span style=\"color:#ff0000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 专用橡胶保护套（选配）</span></strong><br />\r\n<span>应用：</span> <br />\r\n1. 环境电磁辐射监测 <br />\r\n2. 工作场所的电磁场安全监测 <br />\r\n3. 国防电子设备的电磁安全检测 <br />\r\n4. 航空航天设备电磁环境监测 <br />\r\n5. Traction power（牵引电力） <br />\r\n6. 电源线及电缆 <br />\r\n7. 变压器 <br />\r\n8. 电力系统及谐波 <br />\r\n9. 节能灯泡 <br />\r\n10. 开关电源 <br />\r\n11. TFT、LCD液晶显示器及电视机 <br />\r\n12. 135kHz RFID <br />\r\n13. DSL <br />\r\n14. 各种工作频率达1MHz附近的家用、办公室、工业用电器电磁检测 <br />\r\n。。。。。。 <br />\r\n<span>规格：</span> <br />\r\n频率范围：1Hz~1MHz <br />\r\nMagnetic field/磁场 (Tesla):1nT~100µT (典型) <br />\r\nMagnetic field/磁场(Gauss):10µG ~1G (典型) <br />\r\nElectric field/电场: 1V/m ~ 5.000V/m (典型) <br />\r\n模拟输入：2µV ~ 200mV (typ.) <br />\r\nResolution/分辨率(RBW): 1Hz~300kHz(1-3-10 step) <br />\r\n显示单位：V, V/m, T, G, A/m <br />\r\n探测器：RMS, Min/Max <br />\r\n解调器：AM、FM <br />\r\n输入：High impedance（高抗阻） SMA input (f) <br />\r\n音频：内置扬声器（具音量控制和标准2.5mm插孔） <br />\r\n精度：3% (typ.) <br />\r\n内置数据记录器：64K,可扩充至1MB（选配） <br />\r\n尺寸：250x86x27mm <br />\r\n重量：420g</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:12px;\"><strong><span style=\"font-size:14pt;\">应用：</span></strong></span>\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:14pt;\">&nbsp;<img alt=\"\" src=\"http://www.extreme-china.com/uploadfile/201111/20111118105724787.jpg\" border=\"0\" /></span></strong>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14pt;\"><strong><span style=\"color:#ff0000;\">&nbsp;高压电力系统电磁辐射检测</span></strong>&nbsp;</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14pt;\">&nbsp;<img alt=\"\" src=\"http://www.extreme-china.com/uploadfile/201111/20111115024130633.jpg\" border=\"0\" /></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14pt;\">&nbsp;<span><strong>方便的手持式操作</strong></span></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14pt;\">&nbsp;<img alt=\"\" src=\"http://www.extreme-china.com/uploadfile/201111/20111115024148880.jpg\" border=\"0\" /></span>\r\n</p>','低频,电磁辐射,检测仪',1,0,'',0,1350105151,1350105151);
/*!40000 ALTER TABLE `taycms_products` ENABLE KEYS */;


--
-- Definition of table `taycms_setting`
--

DROP TABLE IF EXISTS `taycms_setting`;
CREATE TABLE `taycms_setting` (
  `skey` varchar(255) character set gbk NOT NULL default '',
  `svalue` text NOT NULL,
  PRIMARY KEY  (`skey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_setting`
--

/*!40000 ALTER TABLE `taycms_setting` DISABLE KEYS */;
INSERT INTO `taycms_setting` (`skey`,`svalue`) VALUES 
 ('sitename','TayCMS 免费企业建站系统'),
 ('siteallurl','http://www.taygod.com/'),
 ('sitelogo','static/images/common/logo.gif'),
 ('adminemail','admin@taygod.com'),
 ('licensed','0'),
 ('debuginfo','1'),
 ('miibeian','蜀ICP备3763622号'),
 ('close','0'),
 ('closereason',''),
 ('maxpage','100'),
 ('dateformat','Y-m-d'),
 ('maildefault','admin@taygod.com'),
 ('mailsend','1'),
 ('mailserver','smtp.21cn.com'),
 ('mailport','25'),
 ('mailauth','1'),
 ('mailfrom','TAYGOD <taygod@21cn.com>'),
 ('mailauth_username','username@21cn.com'),
 ('mailauth_password','password'),
 ('maildelimiter','0'),
 ('mailusername','1'),
 ('mailsilent','1'),
 ('version','1.0.0'),
 ('censor','器=***\n汽车爆炸案现场=***\n解码器=***\n干扰器=***\n雷达测速器=***\n代开=***\n代办=***'),
 ('theme','default'),
 ('key','encryptMJMMQUTY*&0121212'),
 ('upload_path','./data/attached/'),
 ('allowed_types','gif|jpg|png'),
 ('max_size','1000'),
 ('max_width','0'),
 ('max_height','0'),
 ('encrypt_name','1'),
 ('upload_path_format','Ymd'),
 ('indexpagedt','0'),
 ('rewritetype',''),
 ('sitekey','TayCMS,TAYGOD,企业建站,企业网站,建站代码,php企业建站,php开源,企业模版,网站模版'),
 ('siteintro','TayCMS免费企业建站系统是一个开源的为更大企业提供网站建设方案的PHP系统。致力于打造快速建站，低成本建站的PHP建站平台。'),
 ('admin_point','admin');
/*!40000 ALTER TABLE `taycms_setting` ENABLE KEYS */;


--
-- Definition of table `taycms_static`
--

DROP TABLE IF EXISTS `taycms_static`;
CREATE TABLE `taycms_static` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `classid` int(11) default NULL,
  `content` text,
  `url` varchar(255) default NULL,
  `hits` int(11) default NULL,
  `order` int(255) default NULL,
  `addtime` int(10) default NULL,
  `updatetime` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_static`
--

/*!40000 ALTER TABLE `taycms_static` DISABLE KEYS */;
INSERT INTO `taycms_static` (`id`,`title`,`classid`,`content`,`url`,`hits`,`order`,`addtime`,`updatetime`) VALUES 
 (27,'企业简介',45,'&nbsp;&nbsp; 你的公司简介<br />','',NULL,1,1342755697,1349684370),
 (28,'品牌简介',45,'<p style=\"text-indent:24pt;\">\r\n	<span style=\"font-family:宋体;\">卡恩服饰是香港卡恩国际实业有限公司旗下一家专业从事高端女装及相关产品研发、设计、生产、</span><span style=\"font-family:宋体;\">销售、代理为一体的服饰公司，公司在四川德阳市注册并拥有上千平米的大型综合卖场</span><span style=\"font-size:12pt;\">----</span><span style=\"font-family:宋体;\">卡恩名店，获得“雅莹”、“声雨竹”法国“拉菲”、“</span><span>PESARO</span><span style=\"font-family:宋体;\">”、“芭蒂娜”“影儿”、“诗篇”、“箩伦诗”等高端一线品牌地区独家销售权，“</span><span style=\"font-size:12pt;\">EP</span><span style=\"font-family:宋体;\">雅莹”、“声雨竹”专卖店获得全国</span><span>AAA</span><span style=\"font-family:宋体;\">级形象店称号。</span><span></span> \r\n</p>\r\n<br />','',NULL,2,1334716449,1349684363),
 (29,'企业荣誉',45,'','',NULL,3,1334579960,1349684355),
 (30,'企业文化',45,'<span style=\"line-height:2.5;font-family:SimHei;font-size:24px;\">企业使命：引领时尚、自信，精致女人衣橱首选</span><br />\r\n<span style=\"line-height:2.5;font-family:SimHei;font-size:24px;\">服务理念：专业、敬业、礼敬、创新，用心成就未来；</span><br />\r\n<span style=\"line-height:2.5;font-family:SimHei;font-size:24px;\">企业核心价值观：和谐共赢，真、善、美；</span><br />\r\n<span style=\"line-height:2.5;font-family:SimHei;font-size:24px;\">企业道德观：感恩、利他自利；</span><br />\r\n<span style=\"line-height:2.5;font-family:SimHei;font-size:24px;\">企业人才观：信任人、培养人、善用人、成就人</span>','',NULL,4,1335102310,1349684351),
 (31,'联系方式',51,'<span >这里是您的联系方式</span><a href=\"mailto:dykaen@163.com\"></a>','',0,3,1373186505,1349684346),
 (32,'服务项目',45,'这里可以放比如服务项目之类的内容。1<br />','',13,6,1339237970,1349684341),
 (46,'版权声明',45,'版权声明','',0,0,1349844985,1349844985),
 (47,'人才招聘',50,'人才招聘<br />','',0,0,1350126062,1350126062);
/*!40000 ALTER TABLE `taycms_static` ENABLE KEYS */;


--
-- Definition of table `taycms_tclass`
--

DROP TABLE IF EXISTS `taycms_tclass`;
CREATE TABLE `taycms_tclass` (
  `classid` smallint(6) NOT NULL auto_increment,
  `bclassid` smallint(6) NOT NULL default '0',
  `classname` varchar(50) NOT NULL default '',
  `sonclass` mediumtext,
  `is_zt` tinyint(1) NOT NULL default '0',
  `featherclass` mediumtext,
  `islast` tinyint(1) NOT NULL default '0',
  `checked` tinyint(1) NOT NULL default '0',
  `bname` varchar(50) NOT NULL default '',
  `islist` tinyint(1) NOT NULL default '0',
  `tbname` varchar(60) NOT NULL default '',
  `checkpl` tinyint(1) NOT NULL default '0',
  `order` smallint(6) default '0',
  PRIMARY KEY  (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taycms_tclass`
--

/*!40000 ALTER TABLE `taycms_tclass` DISABLE KEYS */;
INSERT INTO `taycms_tclass` (`classid`,`bclassid`,`classname`,`sonclass`,`is_zt`,`featherclass`,`islast`,`checked`,`bname`,`islist`,`tbname`,`checkpl`,`order`) VALUES 
 (38,0,'新闻中心','|39|40|41|',0,'',1,0,'新闻中心',0,'news',1,0),
 (39,38,'公司新闻','',0,'38|',1,0,'公司新闻',0,'news',1,0),
 (40,38,'公司活动','',0,'38|',1,0,'公司活动',0,'news',1,0),
 (41,38,'通知公告','',0,'38|',1,0,'通知公告',0,'news',1,0),
 (42,0,'资讯中心','|43|44|',0,'',1,0,'资讯中心',0,'news',1,0),
 (43,42,'行业动态','',0,'42|',1,0,'行业动态',0,'news',1,0),
 (44,42,'技术文章','',0,'42|',1,0,'技术文章',0,'news',1,0),
 (45,0,'关于我们','',0,'',1,0,'关于我们',0,'info',1,0),
 (50,0,'人才招聘','|',0,'',1,0,'人才招聘',0,'info',1,1),
 (51,0,'联系我们','|',0,'',1,0,'联系我们',0,'info',1,0),
 (54,0,'案例展示','|55|56|',0,'',1,0,'案例展示',0,'product',1,0),
 (55,54,'企业网站','',0,'54|',1,0,'企业网站',0,'product',1,0),
 (56,54,'行业网站','',0,'54|',1,0,'行业网站',0,'product',1,0),
 (57,0,'公司产品','|58|59|',0,'',1,0,'公司产品',0,'product',1,0),
 (58,57,'公司产品1','',0,'57|',1,0,'公司产品1',0,'product',1,0),
 (59,57,'公司产品2','',0,'57|',1,0,'公司产品2',0,'product',1,0),
 (60,0,'网站通栏切换广告','|',0,'',1,0,'网站通栏切换广告',0,'ad',1,0),
 (61,0,'首页焦点图片','|',0,'',1,0,'首页焦点图片',0,'ad',1,0);
/*!40000 ALTER TABLE `taycms_tclass` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
