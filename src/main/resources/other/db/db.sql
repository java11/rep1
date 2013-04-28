-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.15


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema privilege
--


USE privilege;

--
-- Definition of table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `priid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `priname` varchar(64) NOT NULL,
  `parentCode` varchar(10) NOT NULL,
  `type` varchar(3) NOT NULL DEFAULT '1',
  `url` varchar(300) DEFAULT NULL,
  `ordernum` int(4) unsigned DEFAULT '1',
  `tag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`priid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `privilege`
--

/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` (`priid`,`priname`,`parentCode`,`type`,`url`,`ordernum`,`tag`) VALUES 
 (1,'中国','0','1','http://www.baidu.com',1,NULL),
 (2,'美国','0','1','',4,NULL),
 (3,'浙江','1','1','http://www.baidu.com',1,NULL),
 (4,'河南','1','1','http://www.baidu.com',1,NULL),
 (5,'纽约','2','1','http://www.baidu.com',1,NULL),
 (6,'杭州','3','1','http://www.baidu.com',1,NULL),
 (7,'洛杉矶','2','1','http://www.baidu.com',1,NULL),
 (8,'西湖区','6','1','http://www.baidu.com',1,NULL),
 (9,'周口','4','1','http://www.baidu.com',1,NULL),
 (10,'系统管理','0','1','',4,NULL),
 (11,'权限管理','10','1','/app/privilege/pri_manager.jsp',2,'privilegeManager'),
 (12,'公共资源','0','1','',3,NULL),
 (13,'邮件发送','12','2','/app/comres/sendmail.jsp',1,NULL),
 (14,'资源管理','10','1','/app/privilege/res_manager.jsp',3,'privilegeManager,user,common'),
 (30,'沈丘','9','2','http://www.hao123.com',1,NULL),
 (31,'界面UI','0','1','',5,NULL),
 (32,'jquery ui','31','2','/ignore/jquery-easyui/index-api.html',6,NULL);
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;


--
-- Definition of table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `roleid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(64) NOT NULL,
  `roledesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`roleid`,`rolename`,`roledesc`) VALUES 
 (1,'管理员组',NULL),
 (2,'项目研发部',NULL),
 (3,'1234r','3'),
 (5,'1234','5ee'),
 (14,'aaa','aa');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Definition of table `roles_privilege`
--

DROP TABLE IF EXISTS `roles_privilege`;
CREATE TABLE `roles_privilege` (
  `roleid` int(11) unsigned NOT NULL,
  `priid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`roleid`,`priid`),
  KEY `FK_rp_ref_privilege` (`priid`),
  CONSTRAINT `FK_rp_ref_privilege` FOREIGN KEY (`priid`) REFERENCES `privilege` (`priid`),
  CONSTRAINT `FK_rp_ref_roles` FOREIGN KEY (`roleid`) REFERENCES `roles` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_privilege`
--

/*!40000 ALTER TABLE `roles_privilege` DISABLE KEYS */;
INSERT INTO `roles_privilege` (`roleid`,`priid`) VALUES 
 (1,1),
 (2,1),
 (3,1),
 (1,2),
 (2,2),
 (3,2),
 (1,4),
 (2,4),
 (3,4),
 (1,5),
 (1,7),
 (2,7),
 (3,7),
 (1,9),
 (2,9),
 (3,9),
 (1,10),
 (3,10),
 (5,10),
 (1,11),
 (3,11),
 (5,11),
 (1,12),
 (2,12),
 (3,12),
 (5,12),
 (1,13),
 (2,13),
 (3,13),
 (5,13),
 (1,14),
 (3,14),
 (5,14),
 (1,30),
 (2,30),
 (3,30),
 (1,31),
 (1,32);
/*!40000 ALTER TABLE `roles_privilege` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(120) NOT NULL DEFAULT '123456',
  `status` varchar(3) DEFAULT NULL,
  `usertype` varchar(3) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userid`,`username`,`password`,`status`,`usertype`,`createtime`) VALUES 
 (1,'admin','1',NULL,NULL,NULL),
 (2,'user1','1',NULL,NULL,NULL),
 (3,'user2','1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `userid` int(11) unsigned NOT NULL,
  `roleid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`userid`,`roleid`),
  KEY `FK_ur_ref_roles` (`roleid`),
  CONSTRAINT `FK_ur_ref_roles` FOREIGN KEY (`roleid`) REFERENCES `roles` (`roleid`),
  CONSTRAINT `FK_ur_ref_users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_roles`
--

/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` (`userid`,`roleid`) VALUES 
 (1,1),
 (1,2),
 (2,2);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
